# Knit Services & Controllers — Full Scan (Sept 7 2026)

## Services (Server, via Knit.GetService)

### CharacterService
InitiateSpawning, SpawnCharacter, Despawn, BeginReturnToMenu, RevivalScreenClosed,
UpdateLastPosition, GetReturnToMenuDuration, ApplySkinCustomisation, GetLastCharacterData,
GetCurrentGrowth, GetWeight, GetRevivableDeath, Unstuck, SetMenuReplicationFocus

### ApexService
GetApexInfo, RequestSlot, Release, BeginDeathGrace, EndDeathGrace, GetDeathGraceStatus

### PackService
Create, GetInvitable

### FossilService
StartCollection, EndCollection

### MarathonService
Start, Continue, GetRun, Finish

### DataService
SetSetting

### AbilityService
(methods exist but returned empty — likely signal-based)

### FishService
(methods exist but returned empty)

### WeatherService
(methods exist but returned empty)

## Controllers (Client, via Knit.GetController)

### PackController
GetMyPack, GetMobbingLimit, IsAtCapacity, GetLimitState, FormatGenderLimits,
ObservePairToast, RefreshPairToast, ShowMobbingToast, UpdateMateTags, UpdateMateTag,
DestroyMateTag, EnsureMateTag, PlaceNest, StartPlacement

### ApexController
GetInfo, RequestSlot, Release, BeginDeathGrace, EndDeathGrace, GetDeathGraceStatus

### InterfaceController
SendNotification, RelayAction, ShowUI, HideUI, IsUIHidden, StartMainMenu,
FormatNumber, AbbreviateNumber, RoundNumber, ConvertToHMS, ConvertToDHM,
PageRadial, GetRadialPages, ClearCells, CloseEmoteWheel, StartConsoleCursor,
PromptNotificationsOptIn, GetAbbreviation

### WeatherController
GetRaining, GetRenderClockTime, GetSimulationClockTime, IsArtificialNight,
IsScentDisabled, GetNightVisionTier, SetNightVisionTierPreview,
SetSelectionTimePreview, ClearSelectionTimePreview, RefreshSelectionPreview,
EnableWeather, DisableWeather, ChangeWeather, ChangeWind, ChangeTransition,
PlayBlackScreenTransition, PlayDayClockTransition, PlayNightClockTransition,
TransitionToCurrent, SkipToCurrent, ApplyRenderClockTime, ApplyLightingTransition,
UpdateAllObjectSettings, UpdateObjectSettings, UpdateNightSkybox, SyncNightVisuals,
CancelNightSkyboxTween, GetDesiredTransitionType, GetNightSkyTarget,
StartEffects, CleanupEffects, StrikeAtPosition, SpawnBolt, GenerateRandomBolt,
RefreshWindLines, SetupBlackScreenGui, tweenFullEffect, tweenResetEffect,
SetButterflyParticlesEnabled, SyncButterflyParticles, WatchButterflyParticles

### FishController
KnitInit, KnitStart (minimal public API)

## Character Attributes (on character Model)
Type, Gender, Health, MaxHealth, Scale, Weight, Stage, Skin,
ConsumptionRange, FallDamageImmunity, IsGuarded, IsSwimming, Swimming, _refreshId

## Player Attributes (on Player object)
IsInPack (number — pack ID), GroupRank (number — Roblox group rank),
IsMegapacking (boolean), MegapackFriendlyFire (boolean)
