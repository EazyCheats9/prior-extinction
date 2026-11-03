# Wellbeing System — Prior Extinction (Sept 7 2026)

## WellbeingData Module (ReplicatedStorage.Shared.WellbeingData)

### Default Saved State
- Comfort = 100
- Activity = 100
- Cleanliness = 75

### Wellbeing Stats
1. **Nutrition** — Keep high to grow faster, increases total HP
   - Sub-stats: Proteins, Fats, Carbohydrates, Fiber, Calcium
   - MassGainMultiplier exists (per-dino)
2. **Activity** — Depletes from sitting still, high = less stamina drain
   - TotalDrainRate = 3,000,000 | TotalGainRate = 180 | BufferTime = 1200
3. **Comfort** — Affected by temperature, bad food, dirty water, injuries
   - TotalDrainRate = 3,000,000 | TotalGainRate = 180 | BufferTime = 1200
4. **Cleanliness** — Clean in mud/water/dust, prevents immunity loss
   - TotalDrainRate = 3,000 | TotalGainRate = 180 | BufferTime = 1200
   - NOTE: CleanlinessSettings drains 1000x faster than Activity/Comfort!
5. **Immunity** — Prevents disease, slows infection/bleed. Lost from bad diet + dirty attacks
6. **Toxins** — From toxic food/creatures. Die at 100%. Eat clay to reduce.
7. **Felt Temperature** — Overheating/freezing drains food/water + stamina debuff

### Nutrition Sub-stats
- **Proteins**: Most food has them. Higher = stronger attacks, carry heavier corpses
- **Fats**: Highest in fresh corpse organs, eggs, certain fish. High = less food drain after 25% full
- **Carbohydrates**: Most plants, highest in roots/seeds/fruit. High = less energy drain
- **Fiber**: Highest in fibrous/woody plants. High = stronger attacks + less food drain after 75% full
- **Calcium**: (description was a table reference, likely bone-related)

### Temperature System
- CaveTemperature = 18
- SunLightMultiplier = 1.1
- ShadowsMultiplier = 0.9
- FeltInterval = 1 second
- FeltStep = 0.1
- Per-dino temperature tolerances exist (Temperatures table)
- Seasonal variance per map region

### Diet Types (18 categories)
Seeds & Nuts, Ferns, Fruits & Berries, Fish, Insects, Fibrous Plants, Mushrooms, Eggs,
Woody Plants, Shellfish, Algae, Bones & Chitin, Organs, Meat, Honey & Nectar,
Arborescent Plants, Roots, Horsetails

### Map Biomes (31)
Sequoia Plateau, The Coast, Coastal Scrubland, Dry Woodland, Coniferous Plains,
Karstlands, Scrubland, Tropical Forest, Marshland, Sandy Shores, Meadow, Upland Forest,
The Deltas, Mixed Woodland, Floodplains, Seashore, Fern Prairie, Mangroves,
Fluvial Forest, Coastal Woodland, Lagoon, Coniferous Forest, Volcanic Highlands,
Redwoods, Salt Flats, Coastal Prairie, Riparian Woodland, Fern Savannah,
Sequoia Forest, Coniferous Scrubland, Coastal Swamp

### Caves (16)
Dripstone Grotto, Springwater Pass, Kopje Burrows, Salt Karst Maze, Cragridge Depths,
Cracklerock Retreat, Rooted Maze, Sandstone Alcove, Coastal Grotto, Lush Basin,
Senticephale Nesting Grounds, Rooted Hollow, Tenontosaurus Nesting Grounds,
Luminous Hollow, The Lava Tubes, Crystal Caverns

### Seasonal Temperature Maps
- Cretaceous Upland
- Jurassic
- Sandbox
- Cretaceous Lowland
- Cretaceous Archipelago

## ConsumptionData Module
- 279 foliage consumables
- 12 corpse consumables (types: organ types)
- 87 corpse dino types
- RotStart = 75 (corpses start rotting at this threshold)
- HealthDrainDuration = 300 seconds (starvation/dehydration)
- DetectionRangeMultiplier = 1
- MovementDrainMultiplier table (movement speed affects drain)
- FoodCapacityDrainMultiplier per-dino

## Player Attributes Discovered
- `EnvironmentTemperature` = 19.1 (current ambient temp)
- `CurrentPlayable` = "Saurophaganax" (current dino name)
- `CurrentPlayableDiet` = "Carnivore" (diet type)
- `EmptyMultiplier` = 1 (unknown multiplier)
- `QueuedForTeleport` (boolean)
- `ReturningToMenu` (boolean)
- `OnMenu` (boolean)
- `ServerPosition` (Vector3 — server-authoritative position)
- `Gender` on Player = "Male" (string, not "M" like on character)

## Feature Potential
- **Wellbeing overlay**: Show all nutrition sub-stats, temperature, immunity in real-time
- **Temperature warning**: Alert when entering extreme temperature zones
- **Nutrition optimizer**: Suggest what to eat based on deficient stats
- **Cleanliness timer**: Track when to clean (drains fast!)
- **Cave finder**: ESP for cave entrances (16 known caves)
