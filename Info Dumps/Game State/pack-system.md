# Pack System — Prior Extinction

## Overview
Packs are the game's party/group system. Players form packs by species, with a leader and members.
All pack data is replicated client-side via ReplicaSet (Token: "PackWorld").

## Data Access

### PackController (Client Controller)
`Knit.GetController("PackController")`

Key methods:
- `GetMyPack()` — returns your pack replica (or nil). The `.Parent` is the PackWorld containing ALL packs.
- `GetMobbingLimit()` — pack mobbing limit (errors if not in a pack)
- `IsAtCapacity()` — whether your pack is full (errors if not in a pack)
- `GetLimitState()` — limit state (errors if not in a pack)
- `FormatGenderLimits()` — gender-based limits
- `EnsureMateTag(player)` / `UpdateMateTag(player)` / `DestroyMateTag(player)` — mate tag management
- `PlaceNest()` / `StartPlacement()` — nest placement
- `ObservePairToast()` / `RefreshPairToast()` / `ShowMobbingToast()` — UI toasts

### PackService (Server Service)
`Knit.GetService("PackService")`
- `Create()` — create a new pack
- `GetInvitable()` — get invitable players

### Shared Modules (ReplicatedStorage.Common)
- `PackRankToRole` — function, converts rank to role name
- `IsPackOfficer` — function, checks officer status
- `GetPackMembers` — function, gets pack members
- `ResolvePackLimit` — function, resolves pack size limit
- `PackData` — shared pack configuration (ReplicatedStorage.Shared.PackData)

## Pack Replica Structure
Each pack is a replica with:
```lua
{
    Id = 26058,                    -- unique pack ID
    Token = "Pack",
    Tags = {
        Name = "KINGS",            -- pack display name
        Species = "Saurophaganax", -- pack species
        Invites = {},              -- pending invites
    },
    Data = {
        Leader = <Player Instance>, -- Instance ref to leader
        InviteOnly = false,
        Members = {
            {3934832022, 255},     -- {userId, rank}  255 = leader
            {11324762215, 1},      --                  1 = member
        },
    },
    Parent = <PackWorld replica>,  -- contains ALL server packs as Children
}
```

## Rank System
- Rank 255 = Pack Leader (a pack can have multiple rank 255 co-leaders)
- Rank 1 = Member
- `PackRankToRole` function exists but returned empty for numeric inputs

## Player Attributes (on Player object, NOT character)
- `IsInPack` (number) — pack ID, present only if in a pack
- `GroupRank` (number) — Roblox group rank (0 = not in group, 1+ = ranked)
- `IsMegapacking` (boolean) — whether currently megapacking
- `MegapackFriendlyFire` (boolean) — whether friendly fire is on during megapack

## Scanning All Packs
```lua
local myPack = PackController:GetMyPack()
if myPack then
    local packWorld = myPack.Parent
    for ref, _ in packWorld.Children do
        -- ref.Id, ref.Tags.Name, ref.Data.Leader.Name, ref.Data.Members
    end
end
```
Note: requires being in a pack to access PackWorld. Without a pack, GetMyPack() returns nil.

## Server Sample (24 packs observed)
- Pack sizes range from 1 to 7 members
- Species: Saurophaganax, Brachiosaurus, Ceratosaurus, Machimosaurus, Torvosaurus, etc.
- Most packs are small (1-3 members)
- Co-leaders possible (pack 15054 had 2 rank-255 members)
