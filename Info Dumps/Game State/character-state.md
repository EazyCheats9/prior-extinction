# CharacterState — Prior Extinction (Sept 7 2026)

## Access
```lua
local CharState = require(ReplicatedStorage.Common.CharacterState)
```
Live client-side state for the local player's current character. Updates every frame.

## Direct Values
| Key | Value | Type | Notes |
|-----|-------|------|-------|
| Speed | 13 | number | Current move speed |
| MaxTurnSpeed | 1.996 | number | Max turn speed (radians/s) |
| CurrentTurnSpeed | 1.977 | number | Current turn speed |
| SizeCategory | "Large" | string | Small/Medium/Large/Huge |
| MovementState | "Land" | string | Land/Swimming/Flying |
| Falling | false | boolean | Currently falling |
| IsInWater | false | boolean | In water |
| BenthicWalking | false | boolean | Walking on sea floor |
| FoundWater | false | boolean | Water nearby |
| Scent | false | boolean | Scent active |
| JawBone | Jaw (Instance) | Instance | Jaw bone reference |

## Movement Sub-table
| Key | Value | Notes |
|-----|-------|-------|
| MoveSpeed | 13 | Current speed |
| TargetSpeed | 13 | Target speed (server wants) |
| _speed | 13 | Internal speed value |
| BaseAcceleration | 2 | Acceleration rate |
| BaseDeceleration | 1 | Deceleration rate |
| BaseForce | 25 | Base movement force |
| MaxForce | 221.36 | Maximum movement force |
| BaseTurnSpeed | 1.977 | Base turn speed |
| Scale | 1.017 | Character scale multiplier |
| MoveDirection | Vector3 | Movement direction vector |
| MoveVelocity | 12.96 | Current velocity magnitude |
| StrafeVelocity | 0 | Strafe speed |
| isMoving | true/false | Currently moving |
| RunBlocked | false | Running disabled |
| MoveActionsBlocked | false | All movement disabled |
| SwimDivingEnabled | false | Can dive underwater |
| TouchedDown | false | On ground |
| Reversing | false | Walking backwards |
| Body | Body (Instance) | Root part |
| RootPart | RootPart (Instance) | Physics root |
| HitBox | HitBox (Instance) | Hit detection part |
| Mesh, MeshModel | Instances | Visual mesh |
| Step | function | Movement step function |
| States | {BaseState, Flying, Swimming, Walking} | State machines |
| TurnMultipliers | {} | Turn speed modifiers (empty = no modifiers) |

## Growth Sub-table
| Key | Value | Notes |
|-----|-------|-------|
| Replica | {Token="Character", Id=25825, ...} | **Direct replica access!** |
| GrowthData | table | Current growth stage data |
| attackCooldownMultiplier | 0 | **Attack cooldown multiplier** |
| maxTurnSpeed | 113.27 | Max turn speed (degrees?) |
| maxCameraZoom | 40.69 | Max camera zoom distance |
| baseValues | table | Base multiplier tables |

### Growth.GrowthData sub-keys
- CoreStats (10 entries) — base HP, speed, etc. for current stage
- Attacks (2 entries) — attack definitions
- Movement (7 entries) — movement speeds per gait
- Balancing (2 entries)
- Diet (1 entry) — diet type
- Animations (4 entries)
- Bones (3 entries)
- Camera (1 entry)
- Model (2 entries)
- Sounds (4 entries)

### Growth.Replica (Character Replica)
- Token = "Character"
- Id = 25825 (matches ReplicaBind.Value)
- BoundInstance = Player instance
- Data = table with 27 keys (full character data)
- Tags = table with 5 keys
- Has listeners: changed_listeners, set_listeners (21!)

## CharacterStats Sub-table
### characterStats (current values)
| Stat | Value |
|------|-------|
| Health | 7279.68 |
| Food | 2207.75 |
| Water | 209.47 |
| Stamina | 108.27 |
| Oxygen | 10 |
| Infection | 2.25 |
| BleedForecast | 0 |

### characterMaxStats
| Stat | Max |
|------|-----|
| Health | 7279.68 |
| Food | 2207.75 |
| Water | 209.47 |
| Stamina | 108.27 |
| Oxygen | 10 |

### HUD References
- bleedOverlay, combatIcon, statsFrame, gui (MainHUD)
- displayAsPercentage = false
- hoverInfoFrame, hoverInfoText

## Actions Sub-table (live input states)
| Action | Type | Notes |
|--------|------|-------|
| Forward | boolean | W key |
| Backward | boolean | S key |
| Left | boolean | A key |
| Right | boolean | D key |
| Run | boolean | Shift (run) |
| Sprint | boolean | Sprint ability |
| Trot | boolean | Trot gait |
| Crouch | boolean | Crouch |
| Rest | boolean | Resting |
| Sleep | boolean | Sleeping |
| Consuming | boolean | Eating/drinking |
| CameraLock | boolean | Camera locked |
| MouseLock | boolean | Mouse locked |

## Fractures Sub-table
| Bone | Fractured | Notes |
|------|-----------|-------|
| Arm | false | Front limb fracture |
| Jaw | false | **Jaw fracture!** |
| Leg | false | Hind limb fracture |

## PVP Sub-table
- attacking = false (currently attacking)
- Trove with 50 objects (combat connections)

## Abilities Sub-table
- Abilities = {} (empty when no ability active)
- TargetTrove, Trove for cleanup

## Remotes
ALL game communication goes through ReplicaSet remotes:
- ReplicaBind, ReplicaCreate, ReplicaDestroy
- ReplicaParent, ReplicaRequestData
- ReplicaSet, ReplicaSetValues
- ReplicaSignal, ReplicaSignalUnreliable
- ReplicaTableInsert, ReplicaTableRemove, ReplicaWrite

No direct combat/movement RemoteEvents — everything is replica-based.

## Feature Potential
1. **Speed hack**: Modify `CharState.Movement._speed` / `TargetSpeed` / `MoveSpeed`
2. **Turn speed hack**: Modify `CharState.Movement.BaseTurnSpeed` or `TurnMultipliers`
3. **Attack cooldown**: `CharState.Growth.attackCooldownMultiplier` can be set
4. **Fracture ESP**: Show fracture states on other players (if replicated)
5. **Action ESP**: Show if player is Resting/Sleeping/Consuming
6. **Infection tracker**: `characterStats.Infection` tracks infection level
7. **Movement state ESP**: Show if Flying/Swimming/Land per player
8. **Run block bypass**: `CharState.Movement.RunBlocked` could be forced false
9. **Instant acceleration**: Modify `BaseAcceleration` / `BaseDeceleration`
