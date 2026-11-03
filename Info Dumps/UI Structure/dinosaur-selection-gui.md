# DinosaurSelectionGui Structure

## Path
`Players.<user>.PlayerGui.DinosaurSelectionGui`

## Script
`PlayerScripts.Client.Gui.DinosaurSelectionGui` (docId 127, ~4996 lines)

## Main Frames
- **TopFrame** — Growth bar, details (GrowthStage label, DinosaurName label)
- **LeftFrame** — Dino selection list
  - `DinosaurSelection.Tabs` — Search bar, Type (AI/Playables), Category (Diet/Activity/Class)
  - `DinosaurSelection.DinosaurCells` — One TextButton per dino (Diplodocus, Brachiosaurus, etc.)
- **RightFrame** — Info panel
  - `StatsFrame` — Basic facts, core statistics, Help Menu, Advanced buttons
  - `DescriptionFrame` — Dino description text
  - `SkinsMenu` — Skin selection with content scroll
  - `AnimationsMenu` — Animation preview with Play/controls
  - `Currencies` — Amber/currency display
- **BottomFrame** — Action buttons
  - `ControlFrame` — BackButton, Buttons (ControlButton="View Skins", LastStatsButton="Last Stats")
  - `PurchaseFrame` — AmberButton (600,000), RobuxButton (749), FossilButtons (ApplyFossils)
  - `SkinPurchaseFrame` — SkinAmberButton, SkinRobuxButton, BundleFrame
  - `VariantPurchaseFrame` — VariantRobuxButton
  - `PresetFrame` — CustomiseBackButton, ApplySkinButton
- **ApexBottomFrame** — Apex-specific controls
  - `ControlFrame.ApexLimitFrame` — SlotCount, SlotBreakdown, PurchaseButton
- **MidFrame** — Additional purchase options (RPPoints, Amber, Robux, FossilsFrame)
- **LastStatsWindow** — Previous life stats

## GUI Stages
- `"Selection"` — Browsing dinos, clicking selects and moves to Continue
- `"Continue"` — Customization, button says "Play", clicking attempts spawn

## Key Methods (on u162 / DinosaurSelectionGui class)
- `StartPlaying()` — Fires play signal with Species/Gender/Skin/Variant
- `GetApexInfo(dino)` — Gets apex slot info via ApexController
- `SetLeftView(view)` — Switches left panel (e.g., "Customizer")
- `IsUniquePlayableSelected()` — Checks if selected dino is unique playable
- `selectDinosaurCell(cell)` — Handles dino cell click
