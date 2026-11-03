# Combat System — Prior Extinction (Sept 7 2026)

## CombatData Module (ReplicatedStorage.Shared.CombatData)

### Damage Types & Multipliers
| Type | Subtype | damageMultiplier | enabled |
|------|---------|-----------------|---------|
| Bleed | Bite | 0.25 | true |
| Bleed | Heavy | 1.0 | true |
| Blunt | Fever | 0 | false |
| Blunt | Normal | 0 | false |
| Crush | Bite | 0 | false |
| Crush | Pierce | 0.125 | false |
| Crush | Scratch | 0 | false |
| Infection | Bite | 0 | false |
| Infection | Fracture | 0.375 | false |
| Infection | Raw | 0.05 | false |

### Bone Damage Per Group
| Group | BoneHP | SkinHP | BoneHealRate | SkinHealRate |
|-------|--------|--------|-------------|-------------|
| Head | 15 | 5 | 1200 | 1200 |
| **Jaw** | **15** | **5** | 1200 | 1200 |
| Neck | 15 | 5 | 1200 | 1200 |
| Body | 15 | 5 | 1200 | 1200 |
| Arm | 10 | 5 | 1200 | 1200 |
| Leg | 15 | 5 | 1200 | 1200 |
| Tail | 20 | 5 | 1200 | 1200 |

### Size Categories
Dinos are categorized Small/Medium/Large/Huge per growth stage.
- Hatchlings/Juveniles are always Small
- Adults range from Small (Protoceratops) to Huge (Argentinosaurus, Dreadnoughtus, Brachiosaurus)
- Saurophaganax: Adolescent=Medium, Adult=Large, Elder=Large

### Combat Settings
- **Combat Distance**: 150 (studs? — distance for combat detection)
- **Combat Log Timeout**: 30 seconds
- **Spawn Invincibility**: 0.5 multiplier, 20 second duration
- **Swim Attack**: enabled (SwimStaminaDrain section exists)

### Stun Immune Dinos (Sauropods)
Acanthocaudia, Apatosaurus, Argentinosaurus, Brachiosaurus, Diplodocus, Dreadnoughtus, Sauroposeidon

### Friendly Fire (same species without megapack)
Acanthocaudia=false, Apatosaurus=false, Argentinosaurus=false, Brachiosaurus=false, Diplodocus=false, Dreadnoughtus=false, Sauroposeidon=false
(sauropods can't friendly fire each other)

### Megapack Combat
- DamageInput = true (take damage from megapack)
- DamageOutput = true (deal damage in megapack)
- FriendlyFire = true (can hurt allies in megapack)
- SharedDamage = true (damage shared across megapack)

### Infection System
- BreakSkinRequirement = true (must break skin to infect)
- InfectionAmount = 100 (total infection HP)
- **4 Infection Variants:**
  1. **Anti Coagulant**: Cooldown=600, Duration=120, BleedNerf=3, Blur=true, works on select sauropods
  2. **Fever**: Cooldown=1200, Duration=600, WaterDrain=5, Blur=true, works on all 7 sauropods
  3. **Neurological**: Cooldown=600, Duration=240, Blur=true, works on 6 species (incl. Stegosaurus)
  4. **Respiratory**: Cooldown=600, Duration=120, DamageNerf=20, ReverseControls=true, Blur=true, works on all 7 sauropods

### Healing Multipliers
| Condition | Time(s) | Multiplier |
|-----------|---------|-----------|
| Rest 5 | 1.1 | Rest 10 | 1.2 |
| Rest 30 | 1.8 | Rest 60 | 2.7 |
| Rest 120 | 3.55 | Rest 300 | 6.0 |
| Sleep 5 | 1.2 | Sleep 10 | 1.4 |
| Sleep 30 | 2.5 | Sleep 60 | 4.0 |
| Sleep 120 | 7.5 | Sleep 300 | 20.0 |

### Bleed Resistance (by difficulty)
| Difficulty | Threshold | LossSpeed | ResistanceSpeed |
|-----------|-----------|-----------|----------------|
| Easy | 90 | 2.5 | 30 |
| Medium | 50 | 0.5 | 12 |
| Extreme | 70 | 1.0 | 20 |

### Death Messages
- BloodLoss: "You died from internal bleeding!"
- BrokenBody: "You died from a broken neck!"
- Dehydrate: "You died from dehydration!"
- Drown: "You died from drowning!"
- Fall: "You died from falling!"
- FlightCrash: "You died from crash-landing!"
- Lava: "You died from fire!"
- Other: "You died from unknown causes."
- PVP: "You died from fighting!"
- Smite: "You died due to being naughty!"
- Starve: "You died from starvation!"
- WaterDive: "You died from bleeding out!"

## Fall Damage (FallData)
- DamageStarts at 10 (studs of fall height)
- Scales linearly: 10%→0.1, 25%→0.25, 50%→0.5, 100%→1.0

## Player Combat Attributes
- `IsInCombat` (boolean) — whether currently in combat
- `Stunned` (boolean) — whether stunned
- `SpawnInvincible` (boolean) — spawn protection active
- `AbilityPVPLock` (boolean) — PVP ability lock
- `IsGuarded` (boolean) — on character, guard state

## Feature Potential
- **Smart target selection**: Use size categories to avoid Huge dinos, prefer Small
- **Bleed calculator**: Show predicted bleed damage from CombatData multipliers
- **Infection indicator**: Track infection type and remaining duration
- **Stun immunity indicator**: Flag stun-immune sauropods in ESP
- **Heal timer**: Show healing multiplier based on rest/sleep state
