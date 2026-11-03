# Hitbox Groups — Prior Extinction

## Overview
Each dino character has a "Hitbox" Model containing many BaseParts for hit detection.
Every part has a `Group` attribute that categorizes it.

## Discovered Groups
| Group | Parts (Saurophaganax) | Parts (Brachiosaurus) | Description |
|-------|----------------------|----------------------|-------------|
| Head | 5 (Tongue x4, Skull) | 5 (Tongue x4, Skull) | Skull + tongue parts |
| **Jaw** | **1 (Jaw)** | **1 (Jaw)** | **Lower jaw — SEPARATE from Head** |
| Neck | 6 | 13 | Neck vertebrae |
| Body | 6 | 5 | Torso/spine sections |
| Arm | 4 (Hand, RadiUlna) | 4 | Front limbs |
| Leg | 10 (Hip, TiFibula, Ankle, Toe) | 8 | Hind limbs + feet |
| Tail | 23 | 20 | All tail sections |

## Jaw Group Details
- Every dino has exactly 1 "Jaw" part with `Group = "Jaw"`
- BestName attribute: "Jaw" (capitalized) or "jaw" (lowercase on some dinos like Machimosaurus)
- The Jaw is the BITE hitbox — it's what the game checks for bite attacks
- **CRITICAL: The current hub's `PX.HITBOX_GROUPS` does NOT include "Jaw"!**
  - Current groups: Head, Neck, Body, Arm, Leg, TailBase, TailMid, TailTip, Thagomizer
  - The jaw is completely missed by the hitbox expander

## Jaw Sizes (sampled)
| Dino | Jaw Size (X, Y, Z) |
|------|-------------------|
| Saurophaganax (adult) | 4.56, 0.73, 1.34 |
| Brachiosaurus (adult) | 3.41, 0.93, 1.86 |
| Machimosaurus | 2.74, 0.22, 0.33 |

## Other Special Parts
- `MouthPart` — Part under character (NOT in Hitbox model), parent is the character model
  - Size: 0.61 x 0.61 x 0.61 (small, cube)
  - Used for eating/consumption detection, NOT hit detection
- `HitBox` (MeshPart) — separate from the "Hitbox" Model
  - Very small (0.001 x 3.26 x 0.001), has animation-related attributes
  - NOT used for PvP detection; the "Hitbox" Model parts are
- `CameraPart` — camera anchor, excluded from hit detection

## Hitbox Model Attributes
- `Condensed = true` — flag indicating the model is set up
- `INITIALIZED_CLIENT = true`
- `INITIALIZED_SERVER = true`

## Part Attributes
Each part in the Hitbox model has:
- `BestName` (string) — human-readable name (e.g., "Skull", "Jaw", "Tail.008")
- `Group` (string) — the group for hit detection categorization
- Some parts have `Link` attribute — connects to other parts for joint behavior
