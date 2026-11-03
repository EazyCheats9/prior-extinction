# AFK Farm — System Map & Redesign Plan (Sept 10 2026)

Goal: fly between food at a steady speed, never get stuck, eat reliably on every dino size.

> **Status: section 3 is implemented** in `Testing/Prior Extinction.lua`, AFK Farm block L3814–4189.
> **Not yet tested in-game.** The file parses cleanly and the analyzer finds no unknown names.
> Section 1 describes the **old** farm, kept for reference.
>
> Also changed: `afkPickFood(rootPos, exclude)` skips given-up plants for 30s ·
> Force Eat's bite loop pauses while AFK Farm is on · **AFK Farm has priority over Save Dino:**
> while the farm and its Safety are both on, Save Dino and Auto-Save are blocked (a manual flip
> snaps back with a notice) and an already-active save is released. With the farm's Safety off,
> Save Dino still works and the farm pauses while it hides you · hub unload restores collision and clears
> `Teleporting` · the old "turn off while resting leaves the dino anchored" bug is fixed (cleanup
> referenced an undefined `root`).
>
> Tunables at the top of the block: `HOLD_FRAC 0.5` (hold within half the eat range) ·
> `MISS_CREEP 2` · `STALL_LIMIT 5` · `EXCLUDE_TIME 30` · `BITE_RATE 4`.
>
> Still to do after the farm is confirmed working: the same `Teleporting = true` fix in Fly, Auto Fly,
> Auto Clay and the other movers listed in section 0.

---

## 0. ROOT CAUSE (confirmed): our own `Teleporting = true`

The game's alignment script (`PlayerScripts.Client.Classes.Character.Alignment`) owns a
`BodyPosition` on `Body`: vertical only, `MaxForce = (0, inf, 0)`, `P = 150000`, `D = 2250`.
It treats the character's `Teleporting` attribute as **a number: the height to hold the body at**.

```lua
-- Alignment L909-912
local Attribute = Instance_2:GetAttribute("Teleporting")
if Attribute then
    u123.Position = new(0, Attribute, 0)      -- u123 = the BodyPosition
end
-- L1005/1012/1022/1029: while Teleporting is set, MaxForce = (0, inf, 0)
```

The hub sets `Teleporting = true`. `Vector3.new(0, true, 0)` = **(0, 0, 0)** (verified live).
So every hub mover tells the game "**drag my body to Y = 0 with infinite force**", then fights it
with CFrame writes every frame.

**Measured while farming (sauropod, 90 frames ≈ 1.5s):**
- Body travelled **4,490 studs** back and forth but got **136 studs** anywhere.
- Per-frame moves 0–232 studs; **44 of 90 frames went backwards**.
- Body Y bounced 396 ↔ 457 while the BodyPosition target sat at 0.
- Feet went from 16 above the terrain to **61 underground**.

That tug-of-war is the "dragging against the ground / inching in spurts". It very likely also
trips the governor: the yanks make Body jump >50 studs from where we commanded it, the governor
reads that as a server revert, and it permanently cuts the speed (150→90→54→32→20).

On top of that, the game's walk/side `LinearVelocity`s scale with mass (`MaxForce = mass × BaseForce`,
side = 212k on this dino), so they push harder on bigger dinos.

**Side note:** client-set attributes don't replicate to the server. So `Teleporting` was almost
certainly never a server-side leniency flag. Its only real effect is this local height hold.
Switching it to a number doesn't change what the server sees.

**Same bug, other features** (all set `Teleporting = true`): Fly L3530, Auto Fly L3685,
AFK Farm L3845/3886/3899/4068, Auto Clay L4205/4222/4252/4268/4274, L5321, L5745, L6397/6421,
L6861, L7136. Fix the farm first, then apply the same pattern to these.

---

## 1. How the farm works today

| Loop | Where | Runs on | Job |
|------|-------|---------|-----|
| `PX.afkFarmAdvance` | ~L3796 | RenderStepped | scan, pick target, bite, step toward it, write CFrame |
| `PX.afkFarmPin` | ~L4056 | Heartbeat | re-write the same CFrame, zero velocity, keep `Teleporting=true` |
| Governor revert watcher | L3478 | `PX.addStep(1)` | Body >50 studs from the commanded position → cut GOV_SPEED ×0.6, never recovers |
| Force Eat loop | L3170 | own thread | separately picks a target and bites (if Force Eat is on) |
| Auto Clay | L4162 | RenderStepped | pauses the farm (`AFK_FARM=false`) for clay trips, then resumes it |
| Game Alignment | game | Heartbeat | the height hold above, plus `Movement.Step` |

Per frame: cleanup if off → root = `Body` → resync if >50 off → `Teleporting=true` + hold W →
Safety (HP<50%: dive, rest, rise) → scan every 1.5s (`afkPickFood`: alive trees, not near players,
score nutrient/diet/distance) → bite if within `GetConsumeRange()` of the pivot (4/s, buffer
check, stall 5) → `govNext` straight at the pivot → face it, write CFrame.

**Untested edits from this session (to be replaced):** noclip on every part with no restore
when the farm stops, and flying all the way to the pivot (the stop-at-range hold was removed).

---

## 2. Game facts that matter

**Movement**
- Kicks are on displacement between ~20 Hz replication samples. ~100 studs/s clean, 400 kicked.
  Governor: 25 studs per write, ceiling `min(150, sprint×4)`.
- Game's standing height: `CharacterState.Alignment.RideHeight` (+ `BodyHeightIncrease`).
  23.1 on this dino.
- Only **2 solid parts**: `Body` (5×3.8×16 torso box) and `HitBox` (thin part near the neck),
  collision group `Characters`.

**Food**
- Targets are **whole tree models**, 70–140 studs tall. Pivot is usually 20–70 above the base,
  but varies (one burned tree's pivot is below ground).
- Within 200 studs: 58 trees, 19 alive.
- Eat range `GetConsumeRange()` = 86 on this dino. Client measures from the food's
  pivot/PrimaryPart to `RootAttachment`/`Body`. **Server origin not verified**, which is why the stop
  point below goes by whether bites actually land, not by a distance guess.

**Ground**
- Raycasts that hit everything are useless in forest: they land on canopies and overhangs.
- **Terrain-only raycasts** (`Include = {workspace.Terrain}`) are reliable. Tree bases sit
  4–6 studs below the terrain surface every time.

---

## 3. Final design (your decisions + root cause)

1. **Height:** every frame set `Teleporting = targetY` (a number). The game's own
   infinite-force BodyPosition then holds the body exactly at our height. We cooperate
   with it instead of fighting it. X/Z stay on our governed CFrame writes (the BodyPosition
   only acts vertically).
2. **Path:** straight line toward the tree's pivot. Y never below
   `terrainY + RideHeight + BodyHeightIncrease`, so the legs never go underground. Not
   higher than that unless the food needs it.
3. **Stop point = wherever the bites land.** Approach the pivot. As soon as the target's
   buffer food drops after a bite, hold there. If bites stop landing, move closer. At the
   pivot and still 5 misses → next target. Works for any tree and any dino size.
   Exception: when our Food is full, bites can't land. Hold, don't creep.
4. **Noclip:** `CanCollide=false` on `Body` + `HitBox` only while farming. Save and restore
   their exact values on stop.
5. **Eating:** AFK Farm gets its own eater (buffer check, best action, stall detection,
   4/s, one bite per frame). Force Eat's loop pauses while the farm runs, so there's one
   target and one rate.
6. **No target:** hold the current height through `Teleporting`, rescan. No mid-air wobble.
7. **Turning off:** clear `Teleporting` (game re-grounds the dino), restore CanCollide,
   release W, keep the existing 10s landing immunity.
8. **Governor:** unchanged. With the tug-of-war gone, false reverts should stop. Verify in the test.

---

## 4. Test plan (scans read only; only the farm itself bites)

1. **Height hold:** log BodyPosition target vs Body Y for 3s. Gap should be ~0, no 20–60 stud bounce.
2. **Speed:** log per-frame move + `PX.GOV_SPEED` for 5 minutes. Steady ≈ speed×dt, no cuts.
3. **Stop point:** for 10 trees, log where it held (height above terrain, distance to pivot)
   and bites landed per second.
4. **Small dino:** repeat 3 on a hatchling.
5. **Turn-off mid-air:** CanCollide restored, dino lands, no fall damage.

---

## Appendix — live numbers (sauropod, ~43,500 kg Adult)

| Item | Value |
|------|-------|
| `GetConsumeRange()` | 86.28 |
| RideHeight | 23.1 |
| RootAttachment | 35.9 below Body |
| BodyPosition | target (0,0,0) while `Teleporting=true`; MaxForce (0,inf,0), P 150000, D 2250 |
| Walk / side force | ForwardVelocity 4,246 · SideVelocity 212,288 (scale with mass) |
| Solid parts | Body, HitBox (group `Characters`) |
