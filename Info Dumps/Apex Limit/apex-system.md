# Apex Limit System — Prior Extinction

## Overview
Apex dinosaurs have a per-server slot limit. When all slots are full, players cannot spawn as that dino until a slot frees up (someone dies or leaves).

## Knit Architecture
- **ApexController** (client): `PlayerScripts.Client.Controllers.ApexController`
- **ApexService** (server): accessed via `Knit.GetService("ApexService")`

## ApexController API
```lua
ApexController:GetInfo(dinoName)
-- Returns: { Unlimited, Slots, ZenithSlots, UsedZenith, UsedNormal, UsedTotal, Dinosaur }

ApexController:RequestSlot(dinoName)
-- Returns: success (bool), reason (string), info (table)
-- reason = "Full" when no slots available

ApexController:Release(dinoName)
-- Releases your slot

ApexController:GetDeathGraceStatus(dinoName)
-- Returns: { InGrace, RemainingSeconds, HoldingSlot, Snapshot }

ApexController:BeginDeathGrace(dinoName)
ApexController:EndDeathGrace(dinoName)
```

## Tiers (from DinosaurSelectionGui line 90)
```lua
{ APEX = 1, MERIDIAN = 2, ZENITH = 3 }
```

## Play Flow (DinosaurSelectionGui)
1. `guiStage = "Selection"` → click dino cell → stage becomes `"Continue"`, button text → "Play"
2. `guiStage = "Continue"` → click Play →
   - If unique playable or sandbox → `StartPlaying()` directly
   - Else → `ApexController:RequestSlot(Name)`
     - Success → `StartPlaying()`
     - Fail ("Full") → notification: "No slots available for **Name** right now. Used X/Y (Zenith X/Y)"

## StartPlaying()
Fires `self.onFinishSignal:Fire("Play", config)` where config = {Species, Gender, Skin, SkinParent, Variant}

## UI Elements
- `DinosaurSelectionGui.ApexBottomFrame.ControlFrame.ApexLimitFrame` — shows slot counts
  - `SlotCount` (TextLabel) — current slot count
  - `SlotBreakdown` (TextLabel) — breakdown text
  - `PurchaseButton` (TextButton) — buy more slots
- Dino cells: `DinosaurSelectionGui.LeftFrame.DinosaurSelection.DinosaurCells.<DinoName>`

## DinosaursData.Apex
A table listing which dinos are classified as apex (checked via `table.find(DinosaursData.Apex, Character)`).
