# Gender, Skin & Variant Selection — Prior Extinction

## Gender
- Options: "Male" or "Female"
- UI path: `DinosaurSelectionGui.LeftFrame.Customizer.Frame.Gender.Frame`
  - `MaleButton` (TextButton) — blue theme (0.18, 0.53, 0.82)
  - `FemaleButton` (TextButton) — pink theme (0.96, 0.21, 0.82)
- **Selected indicator**: UIStroke color changes to green (RGB ~107, 255, 124) when selected; white (1,1,1) when not
- Detection: check `UIStroke.Color.G > 0.8` on MaleButton — if true, Male is selected

## Skin
- Skins are selected in `RightFrame.SkinsMenu`
- Default skin is typically "Default" or the first available skin
- Unique playables have special skins tied to `SkinParent`
- The `currentSkin` and `activeUniquePlayable` are upvalues in the DinosaurSelectionGui module — not directly accessible from outside

## Variant
- Model variant selection in `LeftFrame.Customizer.Frame.ModelVariant`
- Default is "Default"
- Some dinos have alternate model variants

## Customizer Frame Children
- Animations — animation preview
- PerkTree — perk selection
- ModelVariant — model variant picker
- Customize — skin customization
- Revive — revival options
- Gender — male/female selection
- TimeOfDay — preview time setting
- PreviewNightVision — night vision toggle
