# Legit Farm — walk to food, eat through Force Eat (Sept 11 2026)

A second farm next to AFK Farm. It walks on foot using the game's own walk/run, steers by turning the
camera, passes through rocks/logs/bushes but never the ground, and only targets food it can actually
eat from standing height. Force Eat does the eating, and only on the farm's target.

Decisions (user, 2026-09-11): separate toggle alongside AFK Farm · run when the food is more than
100 studs away, walk the last 100 · the farm owns the target and Force Eat only bites that target ·
noclip Body+HitBox and hold height with `Teleporting = number` every frame.

> Status: implemented in `Testing/Prior Extinction.lua` (`PX.lfSetup`). Parses and compiles at -O0.
> **Not yet tested in-game.** Items marked (unverified) below are what the first test must check.

---

## 1. Measured facts (client 15664, Saurophaganax Adult, place version 818)

**Eating range — where it is measured**
- `GetConsumeRange() = max(22, Mesh.X, Mesh.Y, Mesh.Z) * DetectionRangeMultiplier` → 42.5 here.
- Origin is the dino's **Mesh** (`CharacterState.Instances.Mesh.Position`), 22.3 above the ground
  (8.2 above Body). `FindNearestCorpseInRange` uses Mesh; prompt detection uses the CameraPart.
- Target point is the food's **PrimaryPart / pivot** — the same point for all 210 foliage checked.
  Not the closest part of the model.
- Within 500 studs: 210 foliage, **167 reachable from standing height** (|eat point − mesh| < 0.9×range).
  The 43 misses are big trees whose pivot is 60+ above their base. With noclip the dino can stand at
  the trunk, so only the vertical gap matters.
- Server-side origin still unverified — Force Eat's stall counter is the real judge.

**Ground**
- Game ride-height ray = `RayParams.AlignmentParams`: Exclude {Characters, CharacterIgnore, every
  Biomes/*/Foliage and Biomes/*/Trees, anything tagged `AlignmentIgnore`}. It stands on terrain,
  rocks, trunks, stumps and `World.Mountains` (25 MountainMesh models). We reuse that params object.
- The game's ray starts at the body top. A rock lower than that is stepped onto; a taller one is
  started inside, missed, and you stand on what is below it. Same rule here: ray from feet + step.
- Rays that START inside terrain miss it in both directions. Needs a fallback (start higher, then hold).
- Terrain continues under mountain meshes (terrain 360–540, mesh tops 580–845), so walking through a
  mountain keeps real ground underneath.
- Overhangs/caves exist: a ray from the sky at one spot hit terrain 156 studs above the dino. Never cast
  ground rays from the sky — start relative to the feet.

**Obstacles within 200 studs**: CharacterIgnore meshes (207, 20 solid) · Biomes rocks (Rock, solid) ·
TreeStumps tagged `DestructibleLog` (solid) · Mirabills trees · shrubs (not solid). All group `Default`,
same as Terrain, so collision groups cannot separate ground from obstacles.

**Map edges**: `BarrierController` treats any BasePart under a folder named `Barrier` (below a Biomes
child) as a wall. None streamed in near the test spot — they only appear near edges. (unverified:
behaviour when a noclipped body reaches one)

**Movement**
- Movement runs on Heartbeat. `MoveDirection` = input (W/A/S/D) rotated by `CurrentCamera.CFrame` yaw.
  The dino turns toward MoveDirection at its own turn rate (~108°/s here).
- The game's Camera class never sets the view rotation; Roblox's default camera does, and continues
  from the current CFrame. Writing the yaw at `RenderPriority.Camera + 2` steers movement.
- Keys: `CharacterState.Controls:HandleAction(name, bool)` — the game's own input path. Sets
  `Actions[name]`, runs the callback (`Forward` → `MovementDirections.Forward = -1`), and queues
  replication for replicated actions (Run, Sprint, Crouch). Works without window focus.
- Speeds (Land): Normal 4.5 · Trot 13 · Run 21.6 (LeftShift, hold) · Sprint 27 (Tab, toggle, needs Water).
  Run needs Stamina > 0. Stamina 102/102 here.
- `workspace.UnstuckPoints`: 325 CFrameValues, ~10 above terrain. Nearest 66, second 343 — too sparse
  to be the only landing choice.

## 2. Design

| Piece | How |
|---|---|
| Height | Every frame `Teleporting = bodyY`. `bodyY` follows `ground + RideHeight`, ground from AlignmentParams ray at feet + step (0.75 × stand). Miss → retry from feet + 90 → miss → hold. Climb ≤ 30 studs/s, drop ≤ 45 studs/s. |
| Noclip | CanCollide off on Body, HitBox and any collidable character part while on; restored on stop (Body/HitBox always back to true). |
| Steering | Heading = flat vector to the target. Camera yaw eased toward it at 150°/s, orbiting the camera focus so pitch/zoom stay. |
| Gait | `Forward` held while travelling. `Run` while more than Run Distance (100) away and stamina above 20%; resume at 60%. |
| Targeting | `PX.afkPickFood` with options: own avoid radius, own meat flag, search distance, and a reach check (ground at the food + stand + mesh offset vs eat point, within 0.85 × range). Reach is only computed for a candidate that would beat the current best. |
| Stop point | Horizontal reach = √((0.9R)² − dy²). Stop at 70% of it; resume only 6 studs past the stop point. |
| Eating | Farm publishes `PX.lfEat = {id, idx}` once in range. The Force Eat loop, while Legit Farm is on, bites only that (no picker), and hands its stall count back in `PX.lfStallCount`. Force Eat's settings (Fast Eat, Eat Only When Hungry, Leave Scraps) apply. |
| Stalls | 3 stalls while holding → walk to the trunk. 5 at the trunk → exclude 45s, next target. Stalls ignored while Food is full. |
| Unstuck | Walking, keys held, < 3 studs of progress in 4s → rise 60 above ground, glide 60 along the heading, descend, land, resume. Second fly-out on one target → exclude it. |
| Flee | Player inside the avoid radius → run away until 1.5× clear. |
| Rest To Heal | HP < 50% → release keys, clear Teleporting, rest (R) until 99%. |
| Barriers | Track Barrier parts as they stream in. Reject targets whose straight path passes within 30 of one; while walking, a wall within 30 ahead drops the target. |
| Yields to | AFK Farm, Fly, Auto Fly, Fossil Farm, Save Dino. Turning Legit Farm on switches the first four off. |
| Side duties | Same as AFK Farm: Auto Water, Auto Cleanliness, fall immunity, Admin Kick (own toggle). |

## 3. First in-game test (only the farm itself moves or bites)

1. Turn on beside a fern: walks, stops, Force Eat bites land (food buffer drops).
2. Walk across a rock field and a log: passes through, feet stay on terrain (log Body Y − ground ≈ ride).
3. Walk up a hill and into a mountain mesh: follows terrain, never sinks.
4. Tall tree out of reach is never picked (status line shows the skip).
5. Run switches off inside 100 studs; stops at low stamina.
6. Turn off mid-walk: keys released, collision restored, Teleporting cleared, dino lands normally.
7. Near a map edge: wall detected, target dropped. (unverified until it happens)
8. Lake crossing: swimming, no height fight. (unverified)
