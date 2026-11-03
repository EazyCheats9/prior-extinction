-- Prior Extinction Auto-Player
-- Spams RequestSlot to grab a slot the instant one opens
-- Locks target dino on start, stops after successful spawn
-- Deploy with live-reload

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer

local Knit = require(ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"))
local ApexController = Knit.GetController("ApexController")
local CharacterService = Knit.GetService("CharacterService")

local SPAM_INTERVAL = 0.5
local INFO_REFRESH = 3

-----------------------------------------------------------------------
-- Drawing HUD
-----------------------------------------------------------------------
local draws = {}

local function newText(props)
    local d = Drawing.new("Text")
    d.Visible = true
    d.Color = props.Color or Color3.fromRGB(255, 255, 255)
    d.Size = props.Size or 16
    d.Position = props.Position or Vector2.new(0, 0)
    d.Text = props.Text or ""
    d.Font = 2
    d.Outline = true
    d.OutlineColor = Color3.fromRGB(0, 0, 0)
    table.insert(draws, d)
    return d
end

local function newRect(props)
    local d = Drawing.new("Square")
    d.Visible = true
    d.Color = props.Color or Color3.fromRGB(15, 15, 15)
    d.Size = props.Size or Vector2.new(100, 100)
    d.Position = props.Position or Vector2.new(0, 0)
    d.Filled = props.Filled ~= false
    d.Transparency = props.Transparency or 0.35
    if props.Thickness then d.Thickness = props.Thickness end
    table.insert(draws, d)
    return d
end

local X, Y = 12, 12

local bg = newRect({
    Position = Vector2.new(X - 2, Y - 2),
    Size = Vector2.new(310, 150),
    Color = Color3.fromRGB(10, 10, 10),
    Transparency = 0.3,
})

local border = newRect({
    Position = Vector2.new(X - 2, Y - 2),
    Size = Vector2.new(310, 150),
    Filled = false,
    Transparency = 1,
    Color = Color3.fromRGB(0, 200, 80),
    Thickness = 2,
})

local hdrText = newText({
    Text = "AUTO-PLAYER [SPAM]",
    Position = Vector2.new(X + 4, Y + 2),
    Size = 20,
    Color = Color3.fromRGB(0, 220, 80),
})

local dinoText = newText({
    Text = "Dino: ...",
    Position = Vector2.new(X + 4, Y + 28),
})

local slotText = newText({
    Text = "Slots: --/--",
    Position = Vector2.new(X + 4, Y + 48),
})

local attText = newText({
    Text = "Attempts: 0",
    Position = Vector2.new(X + 4, Y + 68),
})

local statText = newText({
    Text = "Initializing...",
    Position = Vector2.new(X + 4, Y + 88),
    Color = Color3.fromRGB(255, 200, 0),
})

local rateText = newText({
    Text = "",
    Position = Vector2.new(X + 4, Y + 108),
    Size = 14,
    Color = Color3.fromRGB(180, 180, 180),
})

local timeText = newText({
    Text = "",
    Position = Vector2.new(X + 4, Y + 126),
    Size = 14,
    Color = Color3.fromRGB(140, 140, 140),
})

STATE.onCleanup = function()
    for _, d in draws do
        d:Remove()
    end
end

-----------------------------------------------------------------------
-- Helpers
-----------------------------------------------------------------------
local function setStatus(msg, col)
    statText.Text = msg
    if col then statText.Color = col end
end

local function getDinoName()
    local gui = player.PlayerGui:FindFirstChild("DinosaurSelectionGui")
    if not gui then return nil end
    local tf = gui:FindFirstChild("TopFrame")
    if not tf then return nil end
    local det = tf:FindFirstChild("Details")
    if not det then return nil end
    local nl = det:FindFirstChild("DinosaurName")
    if nl and nl.Text ~= "" then return nl.Text end
    return nil
end

local function getGender()
    local gui = player.PlayerGui:FindFirstChild("DinosaurSelectionGui")
    if not gui then return "Male" end
    local ok, result = pcall(function()
        local inner = gui.LeftFrame.Customizer.Frame.Gender.Frame
        local male = inner:FindFirstChild("MaleButton")
        if male then
            local stroke = male:FindFirstChild("UIStroke")
            if stroke and stroke.Color.G > 0.8 then
                return "Male"
            end
        end
        return "Female"
    end)
    return ok and result or "Male"
end

local function isAlive()
    local char = player.Character
    if not char then return false end
    local hum = char:FindFirstChildOfClass("Humanoid")
    if not hum then return false end
    return hum.Health > 0
end

local function onSelectionScreen()
    return player.PlayerGui:FindFirstChild("DinosaurSelectionGui") ~= nil
        and not isAlive()
end

local function cleanupSpawnGUI()
    local pg = player.PlayerGui
    pcall(function() local g = pg:FindFirstChild("DinosaurSelectionGui") if g then g:Destroy() end end)
    pcall(function() local g = pg:FindFirstChild("MainMenuGui") if g then g:Destroy() end end)
    pcall(function() local g = pg:FindFirstChild("LoadingGui") if g then g:Destroy() end end)
end

-----------------------------------------------------------------------
-- Wait for selection screen and lock target dino
-----------------------------------------------------------------------
local targetDino = nil
local targetGender = nil
local spawned = false

task.spawn(function()
    task.wait(0.5)

    -- Phase 1: wait for dino selection and lock target
    while STATE.alive() and not targetDino do
        timeText.Text = "Waiting for dino selection..."
        if onSelectionScreen() then
            local name = getDinoName()
            if name then
                targetDino = name
                targetGender = getGender()
                dinoText.Text = "Dino: " .. targetDino .. " (LOCKED)"
                dinoText.Color = Color3.fromRGB(0, 255, 200)
                setStatus("Target locked — starting spam", Color3.fromRGB(0, 220, 80))
            end
        end
        task.wait(0.5)
    end

    if not targetDino then return end

    -- Background: refresh slot display
    task.spawn(function()
        while STATE.alive() and not spawned do
            local ok, info = pcall(function()
                return ApexController:GetInfo(targetDino)
            end)
            if ok and info then
                slotText.Text = string.format("Slots: %d/%d  (Zenith %d/%d)",
                    info.UsedTotal or 0, info.Slots or 0,
                    info.UsedZenith or 0, info.ZenithSlots or 0)
            end
            task.wait(INFO_REFRESH)
        end
    end)

    -- Phase 2: spam RequestSlot until success
    local attempts = 0
    local t0 = os.clock()

    while STATE.alive() and not spawned do
        local el = os.clock() - t0
        timeText.Text = string.format("Running %dm %ds", math.floor(el / 60), math.floor(el % 60))

        -- Stop if player is already alive in-game
        if isAlive() then
            cleanupSpawnGUI()
            setStatus("Already spawned — stopping", Color3.fromRGB(0, 255, 0))
            hdrText.Text = "AUTO-PLAYER  DONE"
            hdrText.Color = Color3.fromRGB(0, 255, 0)
            border.Color = Color3.fromRGB(0, 255, 0)
            spawned = true
            break
        end

        -- Only attempt on the selection screen
        if not onSelectionScreen() then
            setStatus("Not on selection screen — paused", Color3.fromRGB(255, 200, 0))
            task.wait(1)
            continue
        end

        attempts += 1
        attText.Text = "Attempts: " .. attempts
        rateText.Text = string.format("Rate: ~%.0f req/min", attempts / math.max(el, 1) * 60)

        local success, reason, info = nil, nil, nil
        local ok, err = pcall(function()
            success, reason, info = ApexController:RequestSlot(targetDino)
        end)

        if not ok then
            -- Not apex or service error — try direct spawn once
            setStatus("Not apex — spawning direct", Color3.fromRGB(200, 200, 200))
            pcall(function()
                CharacterService:InitiateSpawning({
                    Species = targetDino,
                    Gender = targetGender,
                    Skin = "Default",
                    Variant = "Default",
                })
            end)
            cleanupSpawnGUI()
            spawned = true
            setStatus("Spawn sent — waiting...", Color3.fromRGB(0, 255, 100))
            hdrText.Text = "AUTO-PLAYER  DONE"
            hdrText.Color = Color3.fromRGB(0, 255, 0)
            border.Color = Color3.fromRGB(0, 255, 0)
            break
        end

        if success then
            -- GOT A SLOT
            setStatus("SLOT GRABBED! Spawning " .. targetDino, Color3.fromRGB(0, 255, 0))
            hdrText.Color = Color3.fromRGB(0, 255, 0)
            border.Color = Color3.fromRGB(0, 255, 0)

            pcall(function()
                CharacterService:InitiateSpawning({
                    Species = targetDino,
                    Gender = targetGender,
                    Skin = "Default",
                    Variant = "Default",
                })
            end)

            cleanupSpawnGUI()
            spawned = true
            hdrText.Text = "AUTO-PLAYER  SUCCESS"
            break
        else
            -- Failed — update display, keep spamming
            if reason == "Full" and info then
                slotText.Text = string.format("Slots: %d/%d  (Zenith %d/%d)",
                    info.UsedTotal or 0, info.Slots or 0,
                    info.UsedZenith or 0, info.ZenithSlots or 0)
            end
            setStatus("FULL — spamming...", Color3.fromRGB(255, 80, 80))
            border.Color = Color3.fromRGB(200, 60, 60)
        end

        task.wait(SPAM_INTERVAL)
    end

    -- Keep HUD visible for a bit then fade
    task.wait(8)
    for _, d in draws do
        d.Visible = false
    end
end)
