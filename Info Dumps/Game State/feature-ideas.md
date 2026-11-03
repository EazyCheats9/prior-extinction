# Feature Ideas — From Scanner Data (Sept 7 2026)

## COMPLETED
- [x] Jaw Hitbox Group — added Jaw to all hitbox/silent/reach group tables + save/load
- [x] Pack Leader ESP — gold LEADER tag on pack leaders, scans PackWorld replica every 3s
- [x] Pack ESP — light blue pack name/count on all pack members, separate toggle from leader
- [x] Clay Deposit ESP — marks clay deposits (immunity boost) in world ESP, watches Baths/ClayDeposits folder
- [x] Immunity Tracker — shows immunity % on stats card with color coding (red <40%, yellow <70%, green 70%+), warns to eat clay when low

## HIGH PRIORITY (Easy to implement, high impact)

### 3. Fracture ESP [PREMIUM]
Show fractured bones on other players. CharacterState.Fractures has Arm/Jaw/Leg booleans.
If replicated via character attributes, we can show "FRACTURED JAW" etc on the ESP billboard.
**Impact**: Know when a target has a broken jaw (can't bite), broken leg (can't run), etc.

### 4. Combat State ESP [PREMIUM]
Show combat state on ESP: Resting, Sleeping, Consuming, SpawnInvincible, Stunned, IsInCombat.
Player attributes: IsInCombat, Stunned, SpawnInvincible. CharacterState.Actions: Rest, Sleep, Consuming.
**Impact**: Find vulnerable targets (sleeping/resting players), avoid invincible ones.

### 5. Size Category ESP [FREE]
Show size category (Small/Medium/Large/Huge) on ESP from CombatData.SizeCategories.
CharacterState.SizeCategory holds the local value. Other players need CombatData lookup by dino+stage.
**Impact**: Quick threat assessment — Huge dinos are stun-immune sauropods, Small ones are easy picks.

### 6. Infection Tracker [PREMIUM]
CharacterStats.Infection tracks infection level (0-100). Show infection status on stats card.
CombatData has 4 infection variants: AntiCoagulant (bleed), Fever (water drain), Neurological (controls), Respiratory (damage nerf + reversed controls).
**Impact**: Know when you're infected, what type, and how bad.

## MEDIUM PRIORITY (Proven data source, moderate effort)

### 7. Pack Threat Indicator [PREMIUM]
Color-code ESP based on pack membership (same pack=green, different pack=orange, solo=default).
Already have PX.packLeaders scanning PackWorld — extend to track all pack members not just leaders.
Add megapack indicator (IsMegapacking attribute, gold color).

### 8. Megapack Alert [FREE]
Players with `IsMegapacking = true` attribute are in a megapack. Flash warning when approaching.
CombatData.Megapack: DamageInput=true, DamageOutput=true, FriendlyFire=true, SharedDamage=true.
Megapacks are dangerous — they can hurt allies but deal shared damage.

### 9. Stun Immunity Indicator [PREMIUM]
CombatData.StunImmune lists 7 sauropods that can't be stunned.
Show "STUN IMMUNE" on ESP for these dinos. Already have dino type from ESP.

### 10. Healing State ESP [PREMIUM]
CombatData has healing multipliers: Rest gives 1.1x-6x heal, Sleep gives 1.2x-20x.
Show "RESTING (1.8x heal)" or "SLEEPING (4x heal)" on target ESP.
Combined with Actions.Rest/Actions.Sleep detection.

### 11. Weather Controller Exploits [PREMIUM]
WeatherController methods: SetNightVisionTierPreview, SetSelectionTimePreview, ClearSelectionTimePreview.
Force daylight, toggle night vision tier, disable rain effects.
**Note**: These are client-side preview methods — may only affect local visuals, not server time.

### 12. Wellbeing Overlay [PREMIUM]
CharacterState.Wellbeing table + CharacterStats has all nutrition sub-stats.
Show Proteins/Fats/Carbs/Fiber/Calcium levels, Comfort, Activity, Cleanliness, Immunity.
WellbeingData describes what each stat does and optimal values.

### 13. Temperature Warning [FREE]
Player attribute EnvironmentTemperature (currently 19.1). WellbeingData has per-dino temperature tolerances.
Alert when entering extreme temperature zones. TemperatureSettings: CaveTemp=18, Sun=1.1x, Shadow=0.9x.

### 14. Smart Combat Targeting [PREMIUM]
Combine multiple signals for target priority in silent aim:
- Prefer Small/Medium over Large/Huge (size categories from CombatData)
- Prefer solo players (no IsInPack attribute)
- Prefer sleeping/resting targets (Actions state)
- Avoid stun-immune sauropods
- Avoid megapacking players (many hidden allies)
- Prefer fractured targets (broken jaw = can't bite back)

## LOWER PRIORITY (Nice to have, more effort)

### 15. Speed/Movement Manipulation
CharacterState.Movement has _speed, TargetSpeed, MoveSpeed, BaseAcceleration, BaseForce, MaxForce.
Could modify for speed boost, instant acceleration, no deceleration.
**Risk**: Server validates position via ServerPosition attribute — needs governor.

### 16. Character Growth Tracker [FREE]
CharacterState.Growth.GrowthData.CoreStats has base stats per stage.
Show growth %, predict time to next stage, display stat changes at next stage.

### 17. Marathon Service Integration [PREMIUM]
MarathonService has Start, Continue, GetRun, Finish methods.
Auto-marathon: start, navigate course, continue checkpoints, finish.

### 18. Cave Finder ESP [FREE]
WellbeingData.Caves lists 16 cave names. Could create waypoints to known cave locations.
Caves have stable temperatures (18°C) — useful shelter.

### 19. Biome Identifier [FREE]
31 biomes mapped in WellbeingData.Biomes. Show current biome name on HUD.
Combined with temperature data for each biome.

### 20. Corpse Quality Indicator [PREMIUM]
ConsumptionData: RotStart=75, 12 corpse consumable types (organs), nutrition ratios.
Show corpse freshness %, organ availability, nutrition value on corpse ESP.

### 21. Pack Roster Overlay [PREMIUM]
Drawing-based overlay showing all server packs: name, species, member count, leader, size.
PackData.NewPackLimits has per-dino pack size limits.
AntiMixpacking and AntiMegapacking system details available.

### 22. Unstuck Exploit
CharacterService.Unstuck — might teleport to safe position. Test if exploitable.

### 23. Safe Despawn Timer [FREE]
CharacterService.BeginReturnToMenu + GetReturnToMenuDuration.
Show countdown overlay. Player attribute ReturningToMenu tracks state.

## DATA MODULES DISCOVERED
| Module | Location | Contents |
|--------|----------|----------|
| CombatData | Shared | Damage types, bone HP, size categories, healing, infection, stun immunity |
| WellbeingData | Shared | Nutrition, temperature, biomes, caves, cleanliness |
| ConsumptionData | Shared | 279 foliage, 87 corpse types, decay, grab settings |
| PackData | Shared | Pack limits per dino, anti-mixpack, anti-megapack |
| DinosaursData | Shared | Apex list (22), SemiAquatic (14), SwimAngle per dino |
| FallData | Shared | Damage starts at 10 studs, linear scaling |
| CharacterState | Common | Live state: speed, turn, fractures, actions, replica |
| CharacterIds | Common | Dino name → numeric ID mapping (16 entries) |
| GrowthIds | Common | Growth stage IDs |
| CreateHitbox | Common | Hitbox creation logic |
| IsInCombatAbility | Common | Combat ability checker |
| FlightCollisions | Common | Flight collision logic |
| PackRankToRole | Common | Rank number → role name |
| IsPackOfficer | Common | Officer check function |
