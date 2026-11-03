# Prior fall damage scan

Started 2026-11-01. Scans only: script reads, attribute reads and one passive recorder. No remotes, no movement, no
hooks, no tests. Live scans are place 77911437721987, version 737, 530 client scripts, 0 failed to decompile.

**Evidence rule (user, 2026-11-01): trust the live game and in-game logs. The July and August dumps show the old fall
system, the one a toggle used to beat. They are history, not evidence of how it works now.**

## In-game runs 2026-11-02 (user OK, ivanorbit149, Adult Styracosaurus, FallMultiplier 3, no hub, version 737)

| Run | What | Server's answer | Landed | Health |
|---|---|---|---|---|
| 1 | Climb from the ground at 150/s | Teleport at server +478 | Fixed spot (418.17, -70.95, 3175.55), 220 studs away | No loss |
| 2 | Same, then rise 30 and let go inside the window | Teleport at server +440 | Dropped 31 studs in the window | No loss (normal charge about 90%) |
| 3 | Sideways 13/s at walking gait, by accident | Teleport after 3.4 s | Where the walk began, 40 studs back | No loss |
| 4 | Climb at 260/s after moving 56 studs | Teleport after 2.55 s | The same fixed spot, not the takeoff | No loss |
| 5 | Hover +32 for 6 s, sideways 13/s | Teleport after 2.8 s, to the hover spot, in the air | Fell 32 studs straight down to the takeoff point | No loss (normal charge about 90%) |
| 6 | Hover +150 for 6 s, sideways 13/s | **No teleport. Client disconnected** (reason 278 at 00:38:54 UTC, no kick message logged), first misread as a freeze | Client kept running, hanging in the air, 0 of 38 parts owned | No loss, needed a rejoin |
| 7 | Juvenile, multiplier 1.5: hover +150, down to +30, sideways push | Teleport to the hover spot | Fell 30 studs to the takeoff point | No loss |
| 8 | Repeats of run 7 | Two more teleports, then **kicked: "Speeding"** at 00:45:47 UTC (error 267) | Client kept running after the kick | No loss |

- Every teleport opened the window: `TeleportFallImmunity` and `FallDamageImmunity` true for 10.0 s. With no hub loaded the server clearly writes both.
- `FallDamageImmunity` reads nil on a fresh body, then false after the first window closes.
- Two teleport kinds: a vertical climb goes to a fixed spot that has not changed since Nov 1, a sideways speed correction goes to where the overspeed began.
- Inside the window a real drop is free: 31 and 32 studs measured. Bigger drops untested.
- User, 2026-11-02: teleports may not work. Plan fixes without them; Save Dino may be reworked.
- Deliberate teleports got this account kicked for Speeding. Treat the teleport landing as unsafe. It is not going in the hub, and this testing has stopped.
- A kicked or disconnected client keeps running and Real still answers it. Check the Roblox log before calling anything a freeze.

## Where we stand

- A server teleport cancels the height a fall would be charged from. Seen by the user, logged once: 479 studs, no hit.
- The one server teleport we caught came with a 10 second immunity window: `TeleportFallImmunity` on, then off on a timer.
- The server also owns `FallDamageImmunity`, and our hub's local copy hides its real value.
- Snap-backs are not only about speed. A 150 studs/s climb, under the speed limit, snapped at about +440, which fits
  the user's idea of a distance limit. Speed checks exist as well.
- A snap-back does not put you back where you left the ground. It landed 19 studs away.

## Confidence

| Claim | Status | Source |
|---|---|---|
| Server charges highest point since last ground touch, at the next touch | Measured | memory `project_prior-fall-rule` |
| A server teleport cancels that height | User, plus 1 log | `evidence/prior-fallscan-snapback1.log` |
| `TeleportFallImmunity` is server-only | Strong: 0 of 530 client scripts, 0 in hub, Tools, Real scripts | live grep, file search |
| It turns on with a server teleport | 1 log, same tick as `TeleportId` | first capture |
| It lasts 10 s on a timer | 1 log, 9.99 s, ended about 5 s after the dino settled | first capture |
| The server writes `FallDamageImmunity` | 1 log for the clear; the hub only writes `true` or `nil`, the log shows `false` | first capture, hub source |
| The client does not tell the server it is falling | Live code: no `Falling` is sent | live grep of `SetProperty` |
| There is a height limit between +387 and +440 | Fits the logs, different dinos, not proven | see Distance |
| The window wipes the stored height | **Not known.** Only the old dumps suggested it | see Old dumps |

## First capture

Log: `evidence/prior-fallscan-snapback1.log`. Styracosaurus SubAdult, user flying with the hub, 22:16 UTC.

| Time (s) | Event |
|---|---|
| 242.5 | Climb starts at (408.69, -75.8, 3158.76) |
| 243.69, 244.7, 245.69 | `ServerPosition` Y 63.8, 215.4, 363.8: about 150 studs/s, one update a second |
| 245.70 | Client at Y 403.7, 479 studs up |
| 245.71 | Same tick: `TeleportId` 1 -> 2, `TeleportFallImmunity` on, dino at Y -71.0 |
| 247.71 | `ServerPosition` (418.17, -72.08, 3175.55) |
| 250 | Settled at Y -77.0 |
| 255.70 | Same tick: `TeleportFallImmunity` off, `FallDamageImmunity` true -> false |
| 255.74 | `FallDamageImmunity` false -> true, the hub restoring its local value |

No health drop of 1% or more. Health read full at 22:17:20.

- **The snap came 0.02 s after the 245.69 `ServerPosition` update**, so the decision was made on that once-a-second
  sample, at server Y 363.8. That is 439.6 studs above the start, on a 148 studs/s step.
- **The window ended on a timer.** The dino was already settled, and `BreathingPoint` had been free to send.
- **`FallDamageImmunity` turning on at the teleport could not show:** the local value was already `true`, so nothing
  changed. Inferred only. The server sends changes, so the hub's upkeep hides the window.
- **The landing could not be charged either way.** About 6 studs, under the 10 stud minimum. So this does not show
  whether the window deletes the height, or the teleport just counts as a ground touch.

## Distance: is the snap-back a distance check?

User's idea: normal players snap back when they clip through the ground, and the same check works upward.

All in-game results, climbing:

| Climb | Result | Height |
|---|---|---|
| 6, 25, 75 studs/s | clean | +36, +150, +300 |
| 125 studs/s | clean | +312 |
| 155 studs/s | clean | +387 |
| About 130 studs/s, hub Fly | clean | not recorded |
| **About 150 studs/s, today** | **snapped** | **about +440 on the server** |
| 175, 190 studs/s | snapped after 2 samples | about +380 at most |
| 250 studs/s | snapped after 1 sample | about +250 |
| 250 studs/s to +1000 (Save Dino) | snapped 3 times, then frozen at Y 925, about 500 over the ground | kicked 45 min later |

What this says:
- **Speed alone does not explain today.** 150 is under the 165-175 limit, and 155 was clean to +387.
- **Distance alone does not explain the rest.** 250 and 175 snapped at about +250 and +380, below today's height.
- **So two rules fit: a speed rule and a height limit between +387 and +440.** The older rows were other dinos, so a
  per-dino speed limit is the other possible reading.
- Unknown whether the height counts from the ground, the last ground touch, or the climb's start.
- It is not plain distance travelled. Farms cross thousands of studs sideways with no snap.

Downward, same pattern:
- `evidence/prior-fallwatch.log`, 2026-10-31: two falls of about 560 studs to Y -574, then back at Y -60 within 2 s,
  no hit. That recorder did not log `TeleportId`, so these are likely snap-backs, not proven ones.
- Going under the ground has kicked before.
- Patch notes list "Fixed falling through the map".
- The kick text "Playable outside of bounds" is in **0 of 530 client scripts**, so that check is on the server, and it
  fired at Y 925, too high and not only too low.

## Placement: where a snap-back puts you

- **Target:** (418.17, -70.95, 3175.55). **Left the ground at:** (408.69, -75.8, 3158.76). 19.3 studs apart, about 5 up.
- `Replica.Data.CFrame` read (418.1658, -70.9517, 3175.5547), matching to 0.001 sideways.
- But that value then stayed put while the dino walked 256 studs. So it is probably a **record of the last teleport**,
  not a predictor of the next. How the server picks the spot is still unknown.
- The dino had been nearby just before the climb, so the spot is probably a slightly old position.
- `CharacterService:UpdateLastPosition` is sent by the client every 0.5 s when it has moved over 1 stud (Alignment,
  line 1544). Whether the server uses it for snap-backs is unknown. Its name suggests rejoin saving.
- The next snap-back settles this: the recorder keeps 5 minutes of path and logs how old the landing spot is.

## Teleport No Fall idea

The user's idea: use a server teleport to cancel a fall, accepting rough placement.

Why it could work: a teleport cancelled 479 studs of height, and the 10 s window follows it.

What stands in the way:
1. **It needs a trigger.** The ones we know are speed, height and possibly going under the ground. Near a landing
   there is no height left to use, so it would have to be speed or something new.
2. **It sends you backward.** The target is an old spot, so it undoes travel. That suits a rescue from a bad fall, not
   reaching a place.
3. **Placement is unknown,** see above.
4. **Repeated teleports did end in a Speeding kick (2026-11-02, table above), so the note below is out of date.** No log shows a count. Snap-backs without a kick: 7 on one dino, 6 on
   another, 5 on a third, and 26 minutes logged clean after the first capture. Kicks did not follow a count: Speeding hit
   once with no snap-back at all (27 studs/s against a 3.8 walking limit), once on a farm fighting its corrections at 50
   studs/s, and "Playable outside of bounds" came 45 minutes into being held at Y 925. Whether a slow counter exists was
   never tested, so it stays unknown, not ruled out.
5. **Risk to accounts.** The game's rules promise bans with no pardon for exploiting, and a test account has already
   had a Roblox warning.

Comparison: the ground route already makes cliffs and flyTo landings free with no snap-backs at all, in game. A teleport
fits best for what it cannot cover: open air, such as Fly, Auto Fly and Legit Farm's flights.

`CharacterService:Unstuck()` is the game's own teleport, but it needs 15 s standing still, refuses in combat, frozen or
flying, and goes to the nearest spawn. Not useful for a fall, and it is a server call. Whether it opens the window is
unknown.

## Live code, version 737

- **Teleport:** `CharacterController` line 258, `CharacterService.Teleport` runs `Character:PivotTo(CFrame.new(a1))`
  and stops jumping. The client carries out the move.
- **`TeleportId`:** one reader, line 1054, in the `BreathingPoint` loop, which sends it to the server. That loop stops
  while `Teleporting` is set, so hub flight sends no `BreathingPoint`.
- **What the client reports about movement:** `SetProperty` for `State`, `Jumping`, `IsInWater`, `TakingOff`,
  `IsGroundLocked`, `Lunging`, plus `SetAction Run` and `WaterThreat`.
- **Fall code:** `Movement.Plugins` holds Stabilization and Turn only. `FallData` has 0 client readers, but the table
  is live: 10 starts it, rows 10 to 100.
- **Fall multiplier:** this SubAdult Styracosaurus is **3**, so if the formula holds a 35 stud fall is over 100%.
- **Patch notes:** "Added immunity to all damage during spawn immunity. (fall damage, bleed, etc)", "Every death,
  regardless of cause, will now be logged", "Fixed state replication to the server". Undated.
- `SpawnInvincible` is on the Player. `FallDamageImmunity` and `TeleportFallImmunity` are on the character.

## Old dumps (history only)

`evidence/2026-07-23-*` and `evidence/2026-08-08-*` are the old client fall plugin. Kept for reference, not relied on.

- They are the source of the idea that immunity deletes the stored height, and of the list of other possible
  immunities (water, drinking, resting, cleaning, lunging, abilities). **None of that is confirmed on the live server.**
- The rounding in them does not match what the server charges, so the server's version is not a straight copy.
- The one thing that carried over: the attribute names they mention are still on the live character.

## Open questions

1. **Delete or touch:** does the window delete the stored height, or does the teleport count as a ground touch?
2. **Where does the count restart:** at the teleport point, or where you are when the 10 s end?
3. **How does the server pick the landing spot?** The recorder will answer this.
4. **The height limit:** what number, measured from what, and does it change by dino?
5. **Does 10 s repeat?** One capture so far.
6. **Do other teleports open the window?** Spawn placement also bumps `TeleportId`. Unseen.
7. **Table rounding:** 19.4 studs charged the 15 row, 22 studs about 25-27% on a 1.8 multiplier. Not settled.

Scans cannot read the server's code. Questions 1, 2 and 4 need the game to do something, so they wait for a flight
the user chooses to run.

## Recorder

`fall-attr-watch.lua`, reloaded 22:29 UTC, stops itself after 90 minutes, writes `prior-fallscan.log` in the Real
workspace. Logs `TeleportFallImmunity`, `FallDamageImmunity`, `TeleportId`, `Attached`, on and off of `Teleporting`,
player `SpawnInvincible`, `DeathType`, `QueuedForTeleport`, `Replica.Data.CFrame` changes and health drops of 1% or
more. On a snap-back it also logs full positions and where the landing spot sits on the last 5 minutes of path.

## Rules for this work

- Snap-backs have not been shown to add up toward a kick; the kick logs point at how far over the limit a dino stays.
  Treat the count as unknown and keep them rare.
- Never send `SetProperty State` (kick 2026-10-31). `TakingOff` and `Lunging` are also `SetProperty` calls: remotes,
  which need the user's OK.
- Moving the character on purpose stays off the table in test scripts (memory `feedback_no-teleport`) until the user
  says otherwise.
