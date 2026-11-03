# Switching Dinos / Logging Out — scan (Sept 12 2026, place version 818)

For an AFK-farm "Auto Switch": when the current dino reaches a growth stage, log out and grow the next.
All findings below are from decompiled client code and live read-only data. **Nothing here has been
fired against the server yet.**

## 1. Return to Main Menu (the game's "Menu" action)
Source: `PlayerScripts.Client.Gui.GameMenuGui`, action `Menu` (docId 2007, ~L256-347).

Refused when (client checks, each shows a notice):
- `CharacterState.UsingTimedAction` already true
- in water as a terrestrial: `CharacterState.FoundWater and not Classifications.IsSemiAquatic`
- `LocalPlayer:GetAttribute("IsInCombat")`
- `CharacterState.MovementState == "Flying"`
- apex dinos (`Classifications.IsApex`) while `Movement:IsMoving()`

Sequence:
1. `CharacterState.UsingTimedAction = true`
2. `LocalPlayer:SetAttribute("ReturningToMenu", true)`
3. `CharacterService:BeginReturnToMenu()` (server)
4. `duration = CharacterService:GetReturnToMenuDuration()` (server) → timer notification
5. Interrupted (every 0.1s check) by: `Actions.Run`, entering water, `IsInCombat`, apex moving.
   Walking is allowed for non-apex dinos.
6. On finish: `CharacterService:Despawn()` → `InterfaceController:StartMainMenu()` →
   `ReturningToMenu = false`, `UsingTimedAction = false`.

Also: `CharacterService.ReturnToMenu` (server → client signal) makes InterfaceController run
`StartMainMenu()` on its own. Player attribute `OnMenu` marks being on the menu.
`Knit.Testing` skips the timer (Despawn + StartMainMenu directly) — test builds only.

## 2. Saved dinos (per species + gender)
`Knit.GetController("DataController").Replica.Data`:
- `CharacterData_<Species>_<Gender>_1` = { Growth {Stage, Mass, Paused}, Stats, MaxStats, FractureData,
  ToughnessData, LastState, PX, PY, PZ (last position) }
- `PreviousCharacterData_<Species>_<Gender>_1` = the last dead life (has `Dead.Time`)
- `WellbeingData_<Species>_<Gender>_4`, `MonsterMilestones_<Species>_<Gender>_1`
- `LastCharacter_<Ecosystem>` = { species, gender, timestamp } per map; `Knit.Ecosystem` = current map
- `SkinInventory[Species].LastSelected` = the skin to spawn with
So switching away keeps each dino's growth, and spawning it again resumes it.

Live (2026-09-12): Saurophaganax Elder, Parasaurolophus Elder, Kentrosaurus Adult (current, Adult is its
top stage), Deinocheirus / Sauroposeidon / Styracosaurus / Tarbosaurus Adult, Sauropelta / Therizinosaurus
SubAdult.

## 3. Growth order
`ReplicatedStorage.Common.GetGrowthIndex.Array` = Hatchling, Juvenile, Adolescent, SubAdult, Adult, Elder
(then "Monster" via milestones). Not every dino has every stage: `GetHighestGrowthStage(GrowthStages)`.
Live stage: `CharacterState.Replica.Data.Growth.Stage` / `.NextStage` / `.Delta`.

## 4. Spawning
Menu → `DinosaurSelectionButton` → DinosaurSelectionGui → `OnFinish("Play", config)` → LoadingGui →
`CharacterService:InitiateSpawning({Species, Gender, Skin, SkinParent, Variant})`.
Apex: `ApexController:RequestSlot(species)` first. The hub's Auto Spawn already does both directly.
Unverified: whether `InitiateSpawning` is accepted from the main menu without the selection screen open
(Auto Spawn only ever fired it with DinosaurSelectionGui present).

## 5. Auto Switch — implemented (`PX.asSetup`), NOT tested in-game

**When a dino is done** (Growth data: `DinosaurData[sp].Shared.Growth.MassGainStages[stage].MassGain`,
e.g. Saurophaganax Adult 8 / Elder 1 / Monster 0, Kentrosaurus Adult 10 / Monster 0):
- reached `Monster` (MassGain 0 there — growth stops), or
- on its last stage (`NextStage == "Monster"`) and that stage's MassGain <= `PX.AS_MIN_GAIN` (1), or
- on its last stage and the live rate, watched for 20 min, is slower than `PX.AS_MAX_HOURS` per 1%.
Saved dinos not being played are judged by the first two rules only.

**Changed (2026-09-13):** all six slots on "(none)" = every unlocked dino on this map, smallest first
(before, an empty list finished and kicked at once). The finish notice / kick message now lists the dinos
at their final stage and the locked count. Only Knit.Roster (this map) is ever used; diet does not matter.

**Changed (user, 2026-09-12):** done = reached the last real stage (Growth.NextStage == "Monster"; saves:
stage == GetHighestGrowthStage) or Monster. The MassGain rule, the 20-min rate watch and the
"Slower Than (hours per 1%)" slider were removed.

**Correction (later scan, see growth-timing.md):** the top stage slows as (1 − Delta)^2.5
(Monster.DecayCurveRate) — Monster is an asymptote for every dino, and MassGain only sets the speed.
Rule 2 ("MassGain ≤ 1 = done") therefore skips Elders that still grow fast at low % (Saurophaganax
Elder at 6%: ~1% per 11 min). Growth ticks every 30 s; a paused dino (Growth.Paused, player button)
never counts as done.

Growth also scales with what the dino is doing (`Shared.Growth.StateMultipliers`): Walk/Trot 1.2,
Rest/Sleep 1, Run 0.2, Sprint 0.1, Combat 0.1. Running to far food costs growth.

**Map list:** `Knit.Roster` (the map's roster, e.g. 16 dinos on Jurassic) filtered by
`DataController.Dinosaurs[name]` (owned), the same rule as the selection screen's `getDinosaurData`.

**Menu:** Auto Switch Dino (toggle) → Switch Slot 1-6 (dropdowns), Switch Gender, Slower Than (hours per 1%).
Farms stand down while `PX.AS_BUSY`. When no slot is left: return to menu, unload, Kick (leave).

To verify in the first test: the server accepts `InitiateSpawning` straight from the main menu;
`GetReturnToMenuDuration` value; apex slot path; the farm resumes on the new body.

### Flow as designed
1. Growth.Stage reaches the target → pause the farm (release keys, clear Teleporting, restore collision).
2. Wait until safe: on land, `IsInCombat` false, not flying; stand still.
3. Run the Menu sequence exactly (full server duration), then `Despawn` + `StartMainMenu`.
4. Wait for `OnMenu`, pick the next dino in the rotation whose saved stage is below target.
5. `RequestSlot` if apex → `InitiateSpawning` with its last skin → clean up menu GUIs.
6. Farm re-seeds on the new character.
