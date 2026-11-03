# Spawn Flow — Prior Extinction

## Overview
The full chain from clicking Play to being in-game as a dinosaur.

## Flow
1. **DinosaurSelectionGui** — Player selects dino, clicks ControlButton
   - Stage "Selection" → click → stage becomes "Continue", button text → "Play"
   - Stage "Continue" → click Play → triggers spawn attempt

2. **Apex Check** (if apex dino)
   - Calls `ApexController:RequestSlot(dinoName)` (server remote)
   - Returns: `success` (bool), `reason` (string), `info` (table)
   - If `reason == "Full"` → notification: "No slots available"
   - If success → proceeds to step 3

3. **StartPlaying()**
   - Builds config: `{Species, Gender, Skin, SkinParent, Variant}`
   - Fires `onFinishSignal:Fire("Play", config)`

4. **InterfaceController** receives "Play" signal
   - Fades DinosaurSelectionGui (`FadeIn()` = fade to black)
   - Waits 1 second
   - Creates `LoadingGui.new("Spawning")`
   - Starts loading animation
   - On loading finish → calls `CharacterService:InitiateSpawning(config)` (server remote)
   - Fades in loading screen, waits 1.5s
   - Destroys DinosaurSelectionGui and MainMenuGui

5. **Server** receives `InitiateSpawning(config)` → spawns character

## Config Table
```lua
{
    Species = "Saurophaganax",   -- Instance.Name of the dino
    Gender = "Male",             -- "Male" or "Female"
    Skin = "Default",            -- Skin name
    SkinParent = nil,            -- Only for unique playables
    Variant = "Default",         -- "Default" for standard
}
```

## Direct Spawn (bypass UI)
Can call `Knit.GetService("CharacterService"):InitiateSpawning(config)` directly.
Skips loading animation but spawns the character. GUI cleanup may not happen automatically.
