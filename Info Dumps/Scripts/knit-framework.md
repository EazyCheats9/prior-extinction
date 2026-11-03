# Knit Framework — Prior Extinction

## Location
`ReplicatedStorage.Packages.Knit`

## Loading
```lua
local Knit = require(game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"))
```

## Controllers (Client-side)
Access: `Knit.GetController("Name")`

| Controller | Key Methods |
|---|---|
| ApexController | GetInfo, RequestSlot, Release, GetDeathGraceStatus, BeginDeathGrace, EndDeathGrace |
| InterfaceController | SendNotification, RelayAction, manages all GUI transitions |

## Services (Server remotes via client)
Access: `Knit.GetService("Name")`

| Service | Key Methods |
|---|---|
| CharacterService | InitiateSpawning(config) |
| ApexService | GetApexInfo, RequestSlot, Release (wrapped by ApexController) |

## Architecture
- **Controllers** = client-side singletons, initialized in KnitStart
- **Services** = server-side, accessed from client via `Knit.GetService` which returns a proxy that fires remotes
- Game uses Knit for nearly all client-server communication
- Controllers live under `PlayerScripts.Client.Controllers`
- Gui modules under `PlayerScripts.Client.Gui` (e.g., DinosaurSelectionGui)
- Components under `PlayerScripts.Client.Components`

## Sandbox Mode
`Knit.IsSandbox` — when true, some controllers skip service connections (used in studio/testing)
