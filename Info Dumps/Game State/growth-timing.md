# Growth timing — scan (Sept 12 2026, place version 818)

How fast a dino grows, why the last stage never reaches Monster, and what that means for Auto Switch.
All read-only: decompiled client code, DinosaurData, our own replica, other players' character
attributes. No server calls.

## 1. The growth tick
- The server adds mass once every **30 s** (measured on our dino and on 14 other players: 26-30.3 s).
- Gain per tick ≈ **2.05 × MassGainStages[stage].MassGain × Multipliers.MassGain**
  (Ceratosaurus Adult, 4 ticks: 2.03 / 2.04 / 2.09 / 2.10). The ×2 might be FoodConsumeTick (2 there) —
  not confirmed on another species.
- `Growth.Mass` = kg gained inside the current stage. `Growth.Delta = Mass / (nextWeight - stageWeight)`.
  On the top stage "next" = topWeight × `Shared.Growth.Monster.WeightMultiplier` (1.2; Spinosaurus 1.4).
  (WellbeingGui getTotalGrowthProgress: CoreStats.Weight + Mass.)
- Character attribute `Weight` = stage weight + Mass, updated every tick — also on other players, so
  anyone's growth can be watched without their replica.

## 2. What the multiplier is made of (`CharacterState.Replica.Data.Multipliers.MassGain`)
- **State** (Shared.Growth.StateMultipliers, live in the value): standing 1.0, moving/walking 1.5,
  running 0.2, sprint 0.1, combat 0.1. Seen live: 0.0225 standing → 0.0338 moving → 0.0045 running.
  **Running costs ~87% of growth while it lasts; walking beats standing by 50%.**
- **Nutrition** (WellbeingData.NutritionSettings.MassGainMultiplier, by average nutrition %):
  0%→0.5, 10→0.6, 20→0.7, 30→0.8, 40→0.9, 50-80→1.0, 90→1.25, 100→1.5. Nutrition is the diet
  categories in WellbeingData_<Species>_<Gender>_4 (default 75 each), not the Food bar.
- **Pack**: PackData megapack restriction at 40 members halves it.
- **Top stage only**: × (1 − Delta)^2.5 — `Shared.Growth.Monster.DecayCurveRate` = 2.5 on all 82 species.
  Fitted on Ceratosaurus Adult: standing = 0.446 × (1 − D)^2.5 (0.4461 at D 0.702, 0.4463 at D 0.713).
  The 0.446 is some other factor not yet identified. Non-top stages show no decay (Diplodocus SubAdult
  at 52% and Apatosaurus Adult grew at full rate).
- Boosts: DataController.BoostData.GrowthBoost / FasterMonsterBoost (all 0 for us).

## 3. Consequence: Monster is an asymptote
On the top stage, dD/tick = A·(1 − D)^2.5 with A = 2.05·MG·(0.446·state·nutrition)/range. Solving:
ticks(D0→D1) = [(1−D1)^−1.5 − (1−D0)^−1.5] / (1.5·A). 100% is never reached in finite time; each
step near the top is slower than the last (the rate at 95% is 1/1800 of the rate at 0%).
Checked against live data: our Ceratosaurus went 60.8% → 72.0% in 15 min; the model says 14.3 min.
Across 126 players nobody was on Monster; the highest was a Kentrosaurus at 83.5%.

Monster milestones: `DinosaurData[sp].MonsterMilestones.Rewards` keyed "20","40","60","80","95" =
% Monster growth ("You have reached X% Monster growth as <dino>! Choose one reward"). Rewards:
DNA, revival tokens, eggs. Claimed with MonsterMilestonesService:ClaimMilestone (server call).

## 4. Growth pause
Wellbeing menu GrowthPauseButton → `Replica:FireServer("SetGrowthPaused", not Paused)`, no client
checks. `Growth.Paused` shows it. 16 of 18 top-stage players gained 0 kg in 270 s: most people park
their dino paused. A paused dino never counts as "done" in Auto Switch today (currentDone bails on
Paused) — it would sit there forever.

## 5. Stage times (×1 = standing, nutrition 50-80%; walking ÷1.5, 100% nutrition ÷1.5, running ×5)
Non-top stages checked against real players: Apatosaurus Adult 8.8 h at their 0.89 multiplier (table
7.8 h at 1.0); Diplodocus SubAdult 0.8 h at 0.51 (table 23 min at 1.0).

Top stage columns: time from 0% to 20 / 40 / 60 / 80 / 95% Monster, then time per 1% at 80% and 95%.

| Dino (map / ours) | Stages before the top | Top stage | 20 / 40 / 60 / 80 / 95% | 1% at 80% / 95% |
|---|---|---|---|---|
| Ceratosaurus (J, ours) | Ado 1m | Adult MG10 | 3m / 9m / 24m / 1.4h / 11.8h | 7m / 3.6h |
| Kentrosaurus (J, ours) | <1m | Adult MG10 | 4m / 12m / 30m / 1.7h / 15h | 9m / 4.6h |
| Saurophaganax (J, ours) | Sub 12m, Adu 1.1h | Elder MG1 | 4.2h / 12.3h / 31.5h / 5d / 39d | 9h / 12d |
| Allosaurus (J) | Sub 3m | Adult MG7 | 9m / 26m / 1.1h / 3.9h / 34h | 19m / 10h |
| Torvosaurus (J) | Sub 10m, Adu 1.3h | Elder MG1 | 3.9h / 11.2h / 28.6h / 4d / 36d | 8h / 11d |
| Stegosaurus (J) | Sub 10m, Adu 1.2h | Elder MG1.5 | 3.6h / 10.3h / 26.5h / 4d / 33d | 7.5h / 10d |
| Machimosaurus (J) | Adu 56m | Elder MG1.5 | 1.7h / 5.1h / 13h / 45h / 16d | 3.7h / 5d |
| Yangchuanosaurus (J) | Sub 4m | Adult MG7 | 16m / 48m / 2h / 7h / 3d | 35m / 18.5h |
| Yunnanosaurus (J) | Sub 6m | Adult MG10 | 13m / 38m / 1.6h / 5.6h / 2d | 28m / 14.7h |
| Dilophosaurus (J) | <1m | Adult MG10 | 2m / 6m / 16m / 56m / 8h | 5m / 2.4h |
| Guanlong (J) | <1m | Adult MG10 | 0m / 1m / 3m / 11m / 1.6h | 1m / 29m |
| Camptosaurus (J) | Sub 1m | Adult MG10 | 4m / 13m / 32m / 1.9h / 16h | 9m / 4.9h |
| Scelidosaurus (J) | <1m | Adult MG10 | 1m / 3m / 8m / 27m / 3.9h | 2m / 1.2h |
| Diplodocus (J) | Sub 23m, Adu 2.8h | Elder MG1 | 10.7h / 31h / 3d / 11d / 99d | 22.5h / 30d |
| Apatosaurus (J) | Sub 1.5h, Adu 7.8h | Elder MG0.75 | 30h / 4d / 9d / 32d / 279d | 3d / 85d |
| Brachiosaurus (J) | Sub 3.3h, Adu 16.8h | Elder MG0.5 | 3d / 8d / 20d / 68d / 594d | 6d / 180d |
| Deinocheirus (ours) | Sub 9m, Adu 1.1h | Elder MG1.5 | 3.2h / 9.3h / 23.8h / 3d / 30d | 6.8h / 9d |
| Parasaurolophus (ours) | Sub 10m, Adu 1.2h | Elder MG1.5 | 3.6h / 10.6h / 27h / 4d / 34d | 7.7h / 10d |
| Sauropelta (ours) | Sub 2m | Adult MG10 | 7m / 21m / 54m / 3.1h / 27h | 15m / 8.2h |
| Sauroposeidon (ours) | Sub 1.7h, Adu 8.5h | Elder MG0.75 | 32h / 4d / 10d / 35d / 300d | 3d / 91d |
| Styracosaurus (ours) | Sub 2m | Adult MG10 | 5m / 14m / 37m / 2.1h / 18h | 10m / 5.5h |
| Tarbosaurus (ours) | Sub 10m | Adult MG7 | 22m / 1.1h / 2.7h / 9.3h / 3d | 46m / 24.6h |
| Therizinosaurus (ours) | Sub 7m, Adu 49m | Elder MG1.5 | 2.6h / 7.5h / 19h / 3d / 24d | 5.5h / 7d |

Every species (82) was computed by the eval in this session; recompute from DinosaurData with the
formulas above (weights: GrowthStages[st][Gender].CoreStats.Weight; MG: Shared.Growth.MassGainStages).

## 6. What this means for Auto Switch (proposals — NOT implemented)
1. "MassGain ≤ 1 on the top stage = done" (doneByData) is wrong: MassGain sets the speed, the
   (1 − D)^2.5 curve sets the wall. Saurophaganax Elder at 6% gains 1% about every 11 min; it is the
   80%+ region that takes days. Replace with the curve: hours per 1% at the saved Delta, same rule for
   saved and live dinos.
2. Offer "switch at X% Monster" (20/40/60/80/95 = the milestone thresholds) next to "slower than N
   hours per 1%".
3. A paused dino (Growth.Paused) should be reported, not silently waited on forever.
4. Legit Farm: running is 0.2× growth vs 1.5× walking. A walk-only option (or only run when far
   further out) grows faster.
5. The live-rate watch can drop from 20 min to ~5 min (10 ticks) — ticks are 30 s.

## 7. Re-scan 2026-09-29 (Iguanodon Adult, Idrisrelay, Real; read-only)
Read with Scanner/growth-scan.lua (snapshot) and Scanner/growth-logger.lua (tick log), plus Roblox's own log.

**Confirmed**
- **Ticks:** every 30.0 s (29.5-30.5 s across 77 ticks in the 2026-09-28 logs).
- **Roblox logs every tick:** the client prints `Warning: New Additional Mass: <Growth.Mass>` to
  `%LOCALAPPDATA%\Roblox\logs\*_last.log`, so a session's growth history can be read back with no script.
- **Stage weights and progress are exact.** Iguanodon GrowthStages weights (no male/female split): Hatchling 5,
  Juvenile 90, Adolescent 747, SubAdult 3730, Adult 6131, Elder 10291. Live Mass 298.734 / (10291 - 6131) =
  Delta 0.071811, to six decimals. SubAdult -> Adult flipped at Mass ~2401 = 6131 - 3730.
- **The live multiplier contains the gait.** `Multipliers.MassGain` read 0.2534 walking and dropped to exactly
  1/6 (0.0422) for a moment of running, which is Run 0.2 / Walk 1.2. So the gait is already inside it, and
  Stage Timer v2 counted it twice.
- **Iguanodon tables:**
  - MassGainStages (MassGain / FoodConsumeTick): Hatchling 3500/10, Juvenile 1100/2.5, Adolescent 450/1.5,
    SubAdult 100/1.2, Adult 10/1, Elder 1.5/1, Monster 0/1.
  - StateMultipliers: Walk 1.2, Trot 1.2, Rest 1, Sleep 1, Run 0.2, Sprint 0.1, Combat 0.1.
  - Monster: WeightMultiplier 1.2, DecayCurveRate 2.5, plus 1.2x damage/health/food-drain and similar.
- **Nutrition:** NutritionCategories are Proteins, Fats, Calcium, Fiber, Carbohydrates (each default 75,
  TotalDrainRate 7200, BufferTime 1200). A herbivore's SavableStats carry only the ones it eats (Iguanodon:
  Calcium, Carbohydrates, Fiber; no Proteins or Fats).
- **Boosts:** DataController.BoostData.<Name> = { Amount, TimeLeft } for GrowthBoost, FasterMonsterBoost,
  AmberBoost, PartyBoost and others (all 0 on this account). The BoostData module has Gamepasses.FasterGrowth = 20.
  The player attribute EmptyMultiplier was 1.
- **The wellbeing replica reaches the client.** ReplicaSet events for SavableStats.BufferTimers.<nutrient> and
  SavableStats.Stats.Cleanliness arrive with a replica id that is not the character's. That is a way to read
  cleanliness and nutrition without CharacterState (for Xeno).

**One tick measured, not yet a rule.** +3.603 kg in 29.9 s. The multiplier averaged 0.2393 over that interval
(walking, nutrition 100%). That is 10 (Adult MassGain) x 0.2393 x 1.506. The 1.5 matches either the
100%-nutrition multiplier (if `Multipliers.MassGain` excludes nutrition) or a per-tick constant (30 s / 20). The
Sept 12 note had 2.05 on Ceratosaurus. It needs more ticks at other nutrition levels and on other stages.

**Open**
- With walking (1.2) and full nutrition (1.5) the multiplier should be 1.8, but it reads 0.2534. That leaves an
  unexplained ~x0.14.
- The same Iguanodon in Adult gained ~14.5 kg per tick on 2026-09-28 18:55 but 3.6 on 2026-09-29, about four
  times less. Suspects: day/night (Shared.Night, Shared.Activity), season, Immunity 50, the "Health Drain"
  multiplier. Read those as single small tables. Do NOT walk whole data modules on a live client: that froze it
  (2026-09-29).

## 8. Re-scan 2026-10-01 (Iguanodon Adult M, Idrisrelay, Real, place version 1737; read-only)
Why the Stage Timer was ~12x too short: the card said "Progress to Elder 22% (~13m left)"; the real time
walking at 100% nutrition (already the best case) was ~2h33m (3211 kg left at ~21 kg/min).

**Measured (4 min tick log + this session's Roblox log, 70 ticks)**
- Mass per tick follows the live `Multipliers.MassGain` **at the tick**, not an average over the 30 s:
  walking 0.147 -> ~10.2 kg; running 0.0245 (exactly 1/6 = Run 0.2 / Walk 1.2) -> ~1.4 kg; standing mix
  0.123 -> 8.2 kg. dm / mg ~ 66-73 kg per tick (MassGain 10), noise = replica lag.
- Steady walking this session: 9.7-12 kg per tick, creeping up slowly. Every running stretch = a ~1.6 kg tick.
- **Join ramp:** the first 10 ticks after joining rose almost linearly 4.4 -> 13.1 kg, then settled at ~10.
  The 2026-09-29 single tick (3.6 kg, "x1.506") was probably taken inside such a ramp.
- Walking at 100% nutrition the live multiplier reads 0.147, where Walk 1.2 x nutrition 1.5 = 1.8: a hidden
  factor h ~ 0.08 is inside it (0.14 on 2026-09-29). Not a stat (Food/Water/Health/Stamina all at max,
  wellbeing 100, Immunity 50, EmptyMultiplier 1). Iguanodon is Activity "Crepuscular"; the client only uses
  Activity as a label (LabelingData), so any day/night effect is server-side. Still unidentified.
- kg per unit of live multiplier is NOT the same across days (~68 per tick today vs ~15 on 09-29), so neither
  the data tables nor one saved constant can give the absolute rate; it has to be measured from recent ticks.

**Why v2's number is wrong (code: stageEta / the effort integral in the Stats Card block)**
- constant c = mass / integral(gait x liveMG x MassGain). liveMG already holds gait x nutrition x h, so
  c = K / gait, and the answer = c x MassGain x bestGait x 1.5 = K x MassGain x 1.8. The true best case is
  K x MassGain x 1.8 x h. The hidden h falls out -> too short by 1/h (~12x today), and by more or less as h
  and the gait mix change. That is the "seems off" the user saw.
- Fix direction (v3, approach B): measure K from recent ticks as dm / (MassGain x liveMG at the tick) over a
  short rolling window (reset per dino, skip the join ramp), then best rate = K x MassGain x liveMG x
  (bestGait / gaitNow) x (1.5 / nutritionMultNow). h and boosts ride along inside liveMG.

**Other bug found:** the card's "Nutrition: 0%" on herbivores. avg3 uses ipairs over {Proteins, Fats, Calcium};
ipairs stops at the first nil, so a dino without Proteins averages to 0. It also only lists carnivore
nutrients (no Fiber / Carbohydrates).

## 9. Two Legit-Farming Iguanodon Adults, 8 h of ticks (2026-10-01, Idrisrelay + Jami3_scarr3d)
From each client's Roblox log (`New Additional Mass`) plus a 6 min live tick log on Idris.
- **The rate falls in a straight line across the stage.** Idris, typical tick: ~10 kg at 12-20%, 7.5 at 47%,
  5 at 75%, 3.2-4 at 90-96%. The gait-free multiplier part: 0.0817 @ 21%, 0.0771 @ 27%, 0.0751 @ 30%, 0.029 @ 95%,
  i.e. rate ~ 1 - 0.72..0.80 x Delta (zero near Delta 1.3). Jami's log shows the same shape (~0.77). Contradicts the
  Sept 12 note "non-top stages show no decay" (place version 818 then, 1737 now).
- **Per-account factor:** at the same progress and the same clock time, Jami ticked ~1.3x Idris (both Iguanodon M
  Adult). Mastery "Passive Growth boost" (MasteriesGui GrowthEfficiency) is the suspect, not checked.
- **The client gait read can be wrong:** GetGaitKey said Run while the live multiplier was the walking value. Do not
  build growth maths on the client's gait.
- Legit Farm grows at ~80% of pure walking (515 real ticks for 30% -> 94% vs 410 at walking).
- Real's "Limit client memory" (2048 MB) had both clients at their cap in a 139-player server; Jami's VM froze.
- **Elder (top stage), first 50 min (13:53-14:41 UTC):** after a ~4-tick settle (4.4 -> 2.5 kg), Jami eased 2.5 -> 2.35 kg
  per walking tick from 3% to 11% Monster (x0.94: the linear 0.75 fall predicts 0.94, (1 - D)^2.5 predicts 0.81).
  Idris 3.0 -> 2.7 from 3% to 7% (between the two). If Elder follows the linear fall, Monster is reachable
  (~12-13 h from Elder start at ~2.5 kg/tick, span 2058 kg); under (1 - D)^2.5 it never is.
  **Settled by 15:06 (73 min of Elder): it IS (1 - D)^2.5.** Walking (p80) ticks: Jami 2.86 @ 1.8% -> 1.99 @ 15.2% (x0.696;
  the curve predicts x0.693, the linear fall x0.5 at most); Idris 2.98 @ 1.8% -> 2.23 @ 12.8% (x0.748; curve x0.744).
  The early "linear" reading was the post-stage-change settle. So: non-top stages fall ~linearly (~0.75 over the stage),
  the top stage follows (1 - D)^2.5 from its start. Example (Jami, ~2.0 kg/tick at 15%): 20% in ~27 min, 40% ~3.3 h,
  60% ~10 h, 80% ~37 h, 95% ~14 days.
