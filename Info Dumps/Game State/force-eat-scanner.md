# Force Eat Scanner Results — Sept 8 2026

## Game's Own Bite Flow (Consume.lua decompiled)

The actual client bite handler at `Players.*.PlayerScripts.Client.Classes.Character.Consume`:

1. **Check ConsumableData buffer exists** — `ConsumableData[consumableId][actionIndex]`
2. **SPAWN check** — `buffer.readu8(buf, ConsumableBuffer.SPAWN) == 1` (plant alive)
3. **CanUseActions()** — moving or turning interrupts eating
4. **Food full gate** — `MaxStats.Food <= Stats.Food` → stop eating
5. **Rate limit** — `tick() - lastBit < 0.8` (0.8s minimum between client-side bites)
6. **Food+Water check** — `buffer.readu32(buf, FOOD)/100 + buffer.readu32(buf, WATER)/100 > 0`
7. **Stall detection** — tracks `lastBiteReserves`. If food doesn't decrease 5 times → cancel target

### Timer vs Rate
- Timer fires OnBite every **1 second** (Timer(1, OnBite))
- OnBite rate-limits at **0.8 seconds** — so effective rate = 1 bite/sec
- Force Eat at 4/sec (0.25s) is 4x the game's pace, confirmed working at 88% credit

## ConsumableBuffer Layout (19 bytes)

| Offset | Name | Type | Notes |
|--------|------|------|-------|
| 0 | START | u32 | Start time? |
| 4 | DECAY | u8 | Decay state |
| 5 | REQ | u32? | Requirements |
| 9 | FOOD | u32 | Food remaining ÷ 100 |
| 13 | WATER | u32 | Water remaining ÷ 100 |
| 17 | SPAWN | u8 | 1 = alive/spawned |
| 18 | TYPE | u8 | 1=Foliage, 2=Corpse |

## ConsumptionData Settings

| Key | Value |
|-----|-------|
| DetectionRangeMultiplier | 1 |
| HealthDrainDuration | 300 |
| RotStart | 75 |
| DrainTweenDuration | 180 |
| FoliageConsumables | 279 types |
| CorpseConsumables | 12 types |
| CorpseTypes | 87 entries |

### GetConsumeRange()
```lua
math.max(22, Mesh.Size.X, Mesh.Size.Y, Mesh.Size.Z) * DetectionRangeMultiplier
```
- DetectionRangeMultiplier = 1, so just `max(22, largest mesh dimension)`
- Hatchling: 22 studs (mesh < 22)
- Adult: scales with dino size (40-60+ for large dinos)

## ConsumptionController Methods

| Method | Purpose |
|--------|---------|
| GetConsumeRange() | Dynamic eat range based on mesh size |
| IsRestricted(name, typeId) | Diet + season check (CLIENT-ONLY) |
| FindNearestSimilarConsumable(name, type, pos, range, excludeId) | Chain to next same-type plant |
| FindNearestCorpseInRange() | Uses self.Range (=22 base), NOT GetConsumeRange |
| DetectConsumption(position) | Proximity prompt creation |
| PromptConsumption(id, name, visualName) | Activate eating via ConsumableBuffer TYPE lookup |
| RegisterFoliage(instance) | Register tagged plant, checks SPAWN byte |

### Live State
- 31,574 consumables tracked in ConsumableData
- 12 corpses on server
- Range = 22 (base property)
- dietName = Herbivore
- Season = Wet, Month = April

## Force Eat Gaps Found

### 1. No SPAWN byte check
Force Eat picks targets from CollectionService tags without checking if the plant's SPAWN byte is 1. Despawned plants waste bites.

### 2. No food+water buffer check  
pickBite() doesn't read the ConsumableBuffer to check remaining food. The game reads `FOOD/100 + WATER/100 > 0` before every bite. Force Eat targets stripped plants.

### 3. No stall detection
The game tracks `lastBiteReserves` and cancels after 5 bites that don't reduce the plant's food. Force Eat keeps biting the same target indefinitely if the server rejects.

### 4. Hardcoded RANGE = 100
Preference tiers 1-2 use 100 studs regardless of dino size. Should scale with GetConsumeRange() so a hatchling doesn't prefer food 90 studs away it can't reach.

### 5. No action-level food check
actionsFor() returns all actions but doesn't check which action slot still has food in its buffer.

### 6. Expensive scan
31,574 ConsumableData entries + full CollectionService walk every 0.5s. Buffer checks add per-item cost but skip empties early.

## Foliage Samples

| Plant | Category | Food | Water | Nutrition |
|-------|----------|------|-------|-----------|
| Brachyphyllum Sapling | Woody Plants | 40 | 0.5 | Carbs 0.3, Fiber 0.8, Calcium 0.7 |
| Ginkgo (Medium) | Arborescent Plants | 800 | 0.5 | Carbs 1, Fiber 0.5, Calcium 0.2 |
| Ptilophyllum (Small) | Woody Plants | 25 | 0.5 | Carbs 0.7, Fiber 0.4, Calcium 0.2 |

## Corpse Samples

| Type | Category | Nutrition | Notes |
|------|----------|-----------|-------|
| Dinosaur Bones | Bones & Chitin | Proteins 0.05, Calcium 0.8, Fats 0.05 | CustomReserves |
| Ankylosaur | Meat | Proteins 1.5, Calcium 0.7, Fats 0.9 | Has Rotten settings |

## Improvements Implemented (Session 2)

1. **Buffer-aware pickBite** — reads ConsumableData[id][action] buffer, checks SPAWN==1 and food+water>0 ✅
2. **Dynamic RANGE** — `math.max(EAT * 3, 60)` scales with dino size ✅
3. **Stall detection** — tracks food deltas, switches targets after 5 stalled bites ✅
4. **Best action selection** — picks the action slot with the most food remaining ✅
5. **Game's rate = 1 bite/sec** — current 4/sec is 4x the game, 0.8s is the floor within 1s timer

---

## Wave 5-7 Scanner Results

### ClayDeposit System (decompiled)

Path: `ReplicatedStorage.Modules.Consumption.ClayDeposit` (136 lines)

**Detection method**: Vertical raycast downward from FrontAttachment.WorldPosition
- Ray length = `FrontAttachment.Y - RootAttachment.Y + 1.15` (head height + offset)
- Filter: Include only `workspace.Baths.ClayDeposits` descendants
- Returns hit Instance or nil — must be **standing on/above** clay

**Map clay deposits**: Only 2 exist:
- `workspace.Baths.ClayDeposits.ClaySlope4` (MeshPart)
- `workspace.Baths.ClayDeposits.ClaySlope2` (MeshPart)

**Lick flow** (from Consume.lua):
1. Check not already licking, not prompted
2. `MovementState == "Land"` required
3. `CanLick()` = `IsSurvival AND Immunity < 100`
4. `FoundClayToLick()` = ClayDeposit.Find(FrontAttachment, RootAttachment) non-nil
5. Cancel any active drink/consume
6. `SetLick(true)` → sets CharacterState.Actions.Licking, fires "SetAction" replica
7. Play "ClayLick" animation
8. Timer fires `OnLick()` which = `ConsumptionController.Replica:FireServer("Lick")`

**Force Lick** = just fire `Replica:FireServer("Lick")` — same pattern as Bite/Sip.

### CanUseActions (full decompile)

```
Bucket:Get("ActionsBlocked", {"Drinking","Licking","Consuming"}) → block
ActiveAbility or Grab.grabbed → false
p2=true → bypass movement check
MovementState == "Flying" → false
TakingOff → false
```

### Consume.Activate (land eating, full flow)

- CanUseActions check
- Swimming has separate branch with SwimEat animation
- Food full gate: `MaxStats.Food <= Stats.Food`
- Cancel any active drink/lick first
- Get ConsumableBuffer, verify it exists
- Check `FOOD/100 + WATER/100 > 0`
- SetConsume(id, true), init stalledBites=0, lastBiteReserves=nil

### FoodWaterCapacity (per diet per stage)

| Diet | Hatch | Juv | Adol | SubAdult | Adult | Elder |
|------|-------|-----|------|----------|-------|-------|
| Herb Food | 1.0 | 0.75 | 0.3 | 0.2 | 0.15 | 0.12 |
| Carn Food | 1.0 | 0.8 | 0.6 | 0.4 | 0.33 | 0.25 |
| All Water | 0.03 | 0.03 | 0.03 | 0.03 | 0.03 | 0.03 |

Carnivores get ~2x food capacity. Water is flat across all.

### MovementDrainMultiplier (food drain by gait + mass)

| Mass | Walk | Trot | Run | Sprint |
|------|------|------|-----|--------|
| 1 | 1.0 | 1.0 | 1.0 | 1.0 |
| 750 | 1.08 | 1.13 | 1.20 | 1.40 |
| 1500 | 1.13 | 1.20 | 1.25 | 1.50 |
| 5000 | 1.25 | 1.40 | 1.50 | 2.00 |
| 14000 | 1.38 | 1.63 | 3.50 | 6.00 |
| 100000 | 3.00 | 4.50 | 25.0 | 50.0 |

Sprint drain scales exponentially — large dinos burn food 50x faster sprinting.

### Current Dino Stats (live)

| Stat | Current | Max | % |
|------|---------|-----|---|
| Food | 924 | 1022 | 90% |
| Health | 5899 | 6538 | 90% |
| Water | 167 | 167 | 100% |
| Stamina | 117 | 117 | 100% |
| Immunity | 40% | 100% | lick-eligible |

### MeatController (215 lines)

Meat chunks via Replica `Client.OnNew("Meat")`. Tags: Template, Scale, CFrame, MinWeight, ConsumableId, CorpseName. Grab fires `FireServer("Grab", true/false)`. No special eating logic — goes through Consume.

### DamageController (29 lines)

Just pipes `PVPService.VisualizeDamage` to floating damage popups. All damage is server-side.

### Healing Multipliers

| Type | 5s | 30s | 60s | 120s | 180s | 300s |
|------|-----|------|------|------|------|------|
| Rest | 1.1x | 1.5x | 2.0x | 3.0x | 4.0x | 6.0x |
| Sleep | 1.2x | 2.0x | 3.5x | 8.0x | 12.0x | 20.0x |

### Nutrition System

- 5 categories: Proteins, Fats, Calcium, Fiber, Carbohydrates
- Each: TotalDrainRate=7200s (2h), BufferTime=1200s (20min)
- Current dino: Herbivore, 7 diet categories
- Immunity at 31% (dropping) → clay licking eligible

### OnBite Full Flow (decompiled L490-L580)

1. Get consumableId + actionIndex, cancel if missing
2. Get ConsumableBuffer from ConsumableData[consumableId][actionIndex]
3. No buffer → `_tryChainToNext()` → `_finishAndStop()`
4. SPAWN != 1 → chain
5. CanUseActions → hard interrupt if moving, else graceful stop
6. Food full → same
7. **Rate limit**: `tick() - lastBit < 0.8` → SKIP (not cancel)
8. Read food+water → chain if empty
9. **Stall**: lastBiteReserves nil OR food decreased → reset stalls, fire bite
10. Food didn't decrease → stalledBites++, if >= 5 → Cancel, else fire anyway

**Bite payload**: `buffer.create(5)`, `writeu32(0, consumableId)`, `writeu8(4, actionIndex)` → `Replica:FireServer("Bite", buf)`

### _tryChainToNext (L640-L673)

Auto-chains to next same-type plant when current runs out:
```
ConsumeRange = ConsumptionController:GetConsumeRange()
pos = RootAttachment.WorldPosition or Body.Position
newId, v2, v3 = FindNearestSimilarConsumable(name, type, pos, range, excludeId)
```
Our Force Eat's pickBite() rescan handles this equivalent.

### Growth System (81 lines)

- Growth.Delta = 0.0-1.0 progress through current stage
- UpdateMaxValues lerps camera zoom, turn speed, attack cooldown between stages
- Monster stage has special multipliers (ZoomDistanceMultiplier, TurnSpeedMultiplier)
- Nutrition directly controls growth speed via MassGainMultiplier (0%→0.5x, 50%→1x, 100%→1.5x)

**Current growth**: SubAdult → Adult, Delta=0.442 (44.2%), Mass=1746.6, SizeCategory=Large

### Wellbeing Live Snapshot

| Stat | Value | Buffer Timer |
|------|-------|-------------|
| Immunity | 31% | 0s (draining!) |
| Cleanliness | 100% | 1198s |
| Activity | 100% | 0s |
| Comfort | 100% | 0s |
| Carbohydrates | 100% | 662s |
| Fiber | 100% | 592s |
| Calcium | 100% | 543s |

### Wellbeing Drain Rates

| Stat | TotalDrainRate | GainRate | BufferTime |
|------|---------------|----------|-----------|
| Activity | 3,000,000s | 180s | 1200s |
| Comfort | 3,000,000s | 180s | 1200s |
| Cleanliness | 3,000s | 180s | 1200s |

Cleanliness drains 1000x faster than Activity/Comfort.
