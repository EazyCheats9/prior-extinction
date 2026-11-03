# Immunity & Infection System — Prior Extinction (Sept 7 2026)

## Infection = a meter YOU charge, then spend on an attack (re-scanned Sept 12 2026, v3.7.1)
Added in the "Wildlife Day" update (3.7.1, 2026-09-04). Game's own text: *"Build infection by eating
certain food types or rotten corpses. At 100%, an infection attack can infect another dinosaur."*

- **Meter**: `Replica.Data.Stats.Infection` (0-100). Full = `CombatData.Infection.InfectionAmount` = 100.
  Shown on the Wellbeing UI only for dinos that have an infection attack.
- **No decay**: held flat at 80.25 for 20s of watching.
- **Gain per bite** (`Modules.Consumption.GetRottenSettings.GetInfectionGain`, applied server-side):
  `gain = Rotten.InfectionGainTick (1 if not rotten) x DinosaurData...Diet.Categories[cat].InfectionGain`
  - Saurophaganax (Adult + Elder): `Meat.InfectionGain = 1.5`; no other category gains.
  - Rotten corpse `InfectionGainTick`: 1.5 for every dino corpse type, 0.5 Fish, none for "Meat" chunks / bones.
  - So Saurophaganax: fresh meat **+1.5**, rotten dino corpse **+2.25** per bite. (The old 2.25 reading
    below = exactly one rotten bite.)
- **Rot**: corpses turn rotten at `StateChange = 50` (50% of their lifespan). Rotten food gives half the
  food (`RottenFoodCapacityNerf = 2`).
- **Spending it**: `BreakSkinRequirement = true` — break the target's skin first (skin HP 5 per group),
  then hit that open wound with the infection attack at 100%. Saurophaganax's infection attack is its
  **Secondary** (`Attacks.Secondary.Infection = {Type = "Fever"}`). Whether the meter resets after a
  successful infection is server-side (unverified).
- **Other infection dinos**: Carcharodontosaurus, Giganotosaurus, Saurophaganax, Torvosaurus, Suchomimus,
  Acrocanthosaurus, Therodontosaurus, Concavenator, Arbovenator, Austroraptor, Guanlong. Fish-eaters
  (Suchomimus, Austroraptor) gain from Fish instead of Meat. Class "Infectionist" exists.

### Infection Variants (what the victim gets)
| Variant | Cooldown | Duration | Effect | Species rule |
|---------|----------|----------|--------|--------------|
| **Anti Coagulant** | 600s | 240s | BleedNerf=3, Blur | Immune: Brachio, Sauroposeidon, Apatosaurus, Acanthocaudia, Diplodocus, Stegosaurus |
| **Fever** | 1200s | 600s | WaterDrain=5, Blur | **WorksOn ONLY**: Dreadnoughtus, Argentinosaurus, Brachiosaurus, Sauroposeidon, Apatosaurus, Acanthocaudia, Diplodocus |
| **Neurological** | 600s | 120s | DamageNerf=20, ReverseControls, Blur | Immune: those 7 sauropods |
| **Respiratory** | 600s | 120s | StaminaRegenNerf=2, Blur | Immune: those 7 sauropods |

`GetInfectionSettings.CanInfect(variant, species)`: blocked if species is in `Immunity`; if `WorksOn`
exists, species must be in it. **Saurophaganax's Fever only lands on sauropods.**

### Old notes (Sept 7)
- **Current infection** then: CharacterStats.characterStats.Infection = 2.25

## Immunity System (Wellbeing)
- **Immunity** is one of 7 SavableStats in the Wellbeing system
- Current value: 28.4/100 (low!)
- BufferTimer: 0 (no buffer, actively draining)
- High immunity prevents disease, slows infection, reduces bleed severity
- Lost from: bad diet, being attacked while dirty

### All Wellbeing SavableStats (current values)
| Stat | Value | BufferTimer |
|------|-------|-------------|
| Activity | 100 | 0 |
| Calcium | 100 | 69 |
| Cleanliness | 100 | 1200 |
| Comfort | 100 | 0 |
| Fats | 100 | 69 |
| **Immunity** | **28.4** | **0** |
| Proteins | 100 | 67 |

### Wellbeing Replica
- Token = "Wellbeing", Id = 25827
- Data.SavableStats.Stats = the 7 values
- Data.SavableStats.BufferTimers = buffer timers
- Data.Stats.FeltTemperature = 24.26

## Character Replica Data (full dump)
The character replica (Token="Character") contains ALL replicated combat data:

### Stats (replicated to all clients)
| Stat | Current | Max |
|------|---------|-----|
| Health | 5311 | 7317 |
| Food | 2189 | 2209 |
| Water | 210 | 210 |
| Stamina | 80 | 108 |
| Oxygen | 10 | 10 |
| Infection | 2.25 | - |
| BleedForecast | 0 | - |

### Speed Data
| Key | Value | Notes |
|-----|-------|-------|
| BaseWalkSpeed | 4.5 | Walking speed |
| ServerSpeed | 13 | Current server-validated speed |
| BaseServerSpeed | 13 | Base server speed |
| RunSpeed | 21.3 | Running speed |
| SprintSpeed | 26.6 | Sprint speed |
| BaseSprintSpeed | 26.6 | Base sprint speed |
| TurnSpeed | 1.974 | Turn speed |
| HealthRegenRate | 4 | HP regen per tick |

### SpeedMultipliers (per hitbox group)
```
{Arm=1, Body=1, Head=1, Jaw=1, Leg=1, Neck=1, Tail=1}
```
When a group is fractured, its multiplier drops below 1 → speed penalty!

### Multipliers
| Multiplier | Value | Notes |
|-----------|-------|-------|
| Amber Gain | 1.4 | Amber earning rate |
| Armor | 0.1 | Damage reduction |
| Food Drain | 3.2 | Food consumption rate |
| Health Regeneration | 1 | Heal rate multiplier |
| MassGain | 0.011 | Growth rate |
| Scent Range | 1.2 | Scent detection range |
| Stamina Regeneration | 1 | Stamina regen rate |
| Water Drain | 1 | Water consumption rate |

### Growth
| Key | Value |
|-----|-------|
| Delta | 0.189 (growth progress within stage) |
| Mass | 414.38 |
| NextStage | Elder |
| Paused | false |
| SizeCategory | Large |
| Stage | Adult |

### Other Replica Fields
- Biome = "Sequoia Forest"
- Location = "Smoldering Island"
- Cleaning = true (currently cleaning in water/mud)
- IsGrabbing = false
- IsInShadows = true
- IsInWater = false
- AmbushTransparency = 0
- State = "Land"
- Jaw = {1=table[3]} (jaw combat state?)
- HeadAngles = {-0.042, -0.001} (head look direction)

## Bone Damage System (GroupHP)
| Group | BoneHP | SkinHP | HealRate |
|-------|--------|--------|----------|
| Head | 15 | 5 | 1200 |
| Jaw | 15 | 5 | 1200 |
| Neck | 15 | 5 | 1200 |
| Body | 20 | 5 | 1200 |
| Arm | 15 | 5 | 1200 |
| Leg | 15 | 5 | 1200 |
| Tail | 10 | 5 | 1200 |

### BoneDamageMultipliers (bone damage per attack type)
| Category | Subtype | Multiplier |
|----------|---------|-----------|
| Bleed | Bite | 0 |
| Bleed | Pierce | 0.125 |
| Bleed | Scratch | 0 |
| Blunt | Bite | 0.1 |
| Blunt | Fracture | 0.375 |
| Blunt | Raw | 0.05 |
| Crush | Bite | 0.25 |
| Crush | Heavy | 1.0 |

## Combat Constants
- **Combat Distance**: 150 studs
- **Combat Log Timeout**: 30 seconds (60 for sauropods)
- **Spawn Invincibility**: 20 seconds
- **FriendlyFire Amount**: 0.5 (50% damage)
- **Swim Stamina Drain**: 1 per tick
- **HealInCombat**: false for all 7 sauropods (can't regen in combat)
- **StunImmune**: 7 sauropods (Dreadnoughtus, Diplodocus, Acanthocaudia, Sauroposeidon, Apatosaurus, Argentinosaurus, Brachiosaurus)

## Live Grab Game (minigame when grabbed)
| Difficulty | Threshold | LossSpeed | ResistanceSpeed |
|-----------|-----------|-----------|----------------|
| Easy | 50 | 0.5 | 12 |
| Medium | 70 | 1.0 | 20 |
| Extreme | 90 | 2.5 | 30 |

## Saurophaganax Dino Data
- Class = "Bleeder" (specializes in bleed damage)
- Diet = Carnivore
- Activity = Diurnal
- Cannibal = false
- SpawnWeight = 60
- Has 4 AttackTypeMultipliers and 4 DamageMultipliers

## Feature Potential
1. **Immunity tracker**: Show immunity % on stats card (currently 28.4 — dangerously low!)
2. **Infection type indicator**: Detect which variant and show countdown
3. **Fracture indicator via SpeedMultipliers**: If Arm<1 → fractured arm → show on ESP
4. **Growth tracker**: Delta, Mass, NextStage all available from replica
5. **Biome/Location display**: Show where each player is on map
6. **Speed analysis**: Compare ServerSpeed vs RunSpeed vs SprintSpeed
7. **Armor display**: Show Armor multiplier (damage reduction %)
8. **Cleaning state**: Know when a player is cleaning (vulnerable)
