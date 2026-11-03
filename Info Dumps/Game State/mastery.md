# Mastery: how it works, rewards, fastest route (scan 2026-10-01, place version 1737)

Read-only: decompiled client code (QuestData, GetMasteryLevel, MasteriesGui, QuestsGui, DinosaurData), the account's
DataController.Masteries and the live CharacterState.Quests replica on Idrisrelay. No server calls.

## 1. Levels
- Mastery is **per species**: `DataController.Masteries[<species>].TotalExp` (+ `Claimed.LevelRewards / RankRewards /
  UnlockRewards`).
- `Common.GetMasteryLevel(BaseXP, CompoundRate, TotalExp)`: level n costs `BaseXP x CompoundRate^n`.
  Iguanodon: BaseXP 2000, CompoundRate 1.04 (`DinosaurData.<sp>.Masteries`). Cumulative XP needed:

  | Level | 20 | 40 | 60 | 80 | 100 |
  |---|---|---|---|---|---|
  | Total XP (Iguanodon) | 59.6k | 190k | 476k | 1.10M | 2.48M |

- Idrisrelay's Iguanodon: 75,192.6 XP = level 23 (2026-10-01 ~14:30 UTC). Edmontosaurus 81.7k, Deinocheirus 81.4k,
  Therizinosaurus 66.0k, the rest under 16k.

## 2. Rewards (Iguanodon table; other species follow the same pattern)
- **Every 5 levels:** +5% Passive Amber Gain (AmberGainEfficiency 5 ... 100).
- **Perk Token:** levels 5, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100.
- **Passive Growth boost (GrowthEfficiency):** +10% at 20, 20% at 40, 30% at 60, 40% at 80, 50% at 100.
  (Likely part of the per-account growth difference seen on 2026-10-01: Jami grew ~1.3x Idris; Jami's level unread.)
- **Revival Tokens:** Uncommon 25; Rare 40, 45, 50, 55; Fabled 60-85; Legendary 90, 95; Mythic 100.
- **Random Eggs:** 5 at 10, 15 at 30, 25 at 50, 35 at 70, 45 at 90.
- **Level 100:** "Master <dino>" achievement.
- **APEX progression** (to related dinos; Iguanodon -> Parasaurolophus and Edmontosaurus): 25 Scent +10%,
  50 FoodDrain (UI says water) 10% slower, 75 Wellbeing drain 10% slower, 100 Mastery Exp +10%.
- Some species also have SkinUnlock / SpecialUnlock / DinosaurUnlock entries (MasteriesGui reads them).
- Separate from mastery: MonsterMilestones (20/40/60/80/95% Monster: DNA 1k-50k, revival tokens, Garden eggs 5-250).

## 3. Where XP comes from: Mastery Tasks (`ReplicatedStorage.Shared.QuestData.MasteryTasks`)
Progress lives on the CHARACTER (`CharacterState.Quests.Replica.Data.MasteryTasks[name] = {Goal, Current, ...}`), so
it belongs to one dino life. Reward = MasteryExp x the live `Multipliers["Mastery Exp"]` (1.505 on Idris).

| Task | Goal | XP (base) | Repeats? (from live progress) |
|---|---|---|---|
| Reach Adult | grow to Adult | by size: Small 500, Medium 1750, **Large 4000** (Iguanodon), Huge 10000 | once per life |
| Reach Elder | grow to Elder | Small 1250, Medium 4250, **Large 10000**, Huge 25000 | once per life |
| Day Survival | a whole day cycle (goal 50 min live) | 1250 | per cycle |
| Night Survival | a whole night (goal 30 min live) | 1750 | per cycle |
| Spring / Summer / Autumn / Winter Survival | whole 240 min season | 15000 / 10000 / 15000 / 20000 | per season (all 0 live) |
| **Wet / Dry Survival** | whole 480 min season | **50000 each** | per season (Dry 53/480 live) |
| Wellbeing Novice / Adept / Master | >= 80 total wellbeing without dropping, 120 s / 1800 s / 7200 s | 10 / 300 / 3000 | Novice was at 50/120 while Adept was at 1370: repeats |
| Traveler / Wanderer / Nomad | 250 / 750 / 2500 m "naturally, without circles" | 100 / 400 / 2000 base; live 40 / 163 / 818 (x0.41) | yes |
| Glutton | eat ~25 x max weight in g (308,000 g live) | 100 | yes |
| Fossil Collector / Jeweler | 1 fossil / 1 gemstone | 100 / 50 | yes |
| Relic Collector | a rare skull fossil | 25000 | yes |

## 4. Multipliers on XP
- Live `Multipliers["Mastery Exp"]` (1.505 on Idris; parts not identified).
- Monster stage: `Shared.Growth.Monster.MasteryMultiplier` 1.2.
- APEX 100 of a related dino: +10%.
- Boosts: `MoreMasteryBoost` ("x% more Mastery Points for 1 hour", shop/Prismatic event), New Player Boost
  (+100% for the first 24 h of the account).

## 5. Fastest route (estimate, base XP before the x1.5)
- **One long life beats restarting.** A dino alive through a whole Wet or Dry season (8 h) earns 50k from that alone,
  plus Wellbeing ~2.4k/h (Novice+Adept+Master on repeat while wellbeing stays >= 80: Legit Farm keeps it at 100), Day+Night
  ~3k per ~80 min, Reach Adult 4k, Reach Elder 10k (Iguanodon Adult took ~8 h). About 100k base = ~150k per 8 h, ~19k/h.
- Restarting a fresh Iguanodon to Adult every ~35 min: ~4k + bits per run, ~9k/h base (~14k/h), and loses the season
  bonus. Only worth it for a Huge species (10k per Adult) or when a season can't be caught from its start.
- The season tasks need the dino alive from the season's START: spawn/stay alive before it begins, and don't die.
- Relic Collector (25k) is luck: collect fossils on the way.
- At ~19k/h with x1.5: Iguanodon 23 -> 40 in ~6 h, -> 60 in ~21 h, -> 80 in ~54 h, -> 100 in ~126 h of play.

Open: what makes up the x1.5 Mastery Exp multiplier; whether XP also comes passively (TotalExp is being re-read later to
check); Jami's levels (client was too busy to read).

## 6. Watch log
- 14:15 -> 14:41 UTC (Idris, Iguanodon Elder, Legit Farm): TotalExp 75,192.6 -> 79,881.3 (+4,689). Explained by tasks
  ~2,820 (Day Survival 1,881, Wellbeing Adept 451, ~12x Novice 180, Wanderer 245, Traveler 60). ~1,870 unexplained:
  passive XP or an unseen completion. Travel counters advanced unevenly (Traveler +430 m, Wanderer +712, Nomad +1,471)
  - "without going in circles" is measured per task.
- 14:41 -> 15:07 UTC: 79,881.3 -> 86,884.1 (+7,003). Completions ~4,970 (Night Survival 2,634, Nomad 1,231, Adept 451,
  Wanderer 245, ~13x Novice 196, Glutton 150, Traveler 60). ~2,030 unexplained again.
- **Conclusion:** ~2k XP per 25 min arrives on top of the tasks in both intervals (~4.5-4.7k/h incl. the x1.5), so the
  game pays passive XP (by time or by growth; not split yet). Measured total on Legit Farm: ~16k XP/h, before the
  8 h Wet/Dry season bonus (50k x 1.5 = 75k, ~9.4k/h more) -> ~25k/h for a long life. Iguanodon level 40 (190k) from
  87k in ~4 h at that pace.

