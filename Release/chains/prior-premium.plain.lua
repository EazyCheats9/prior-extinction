--EZ:__EZ_WM__
-- EazyCheats | Prior Extinction Hub | PREMIUM
-- Custom ESP + Combat + Settings, built for Prior Extinction using BillboardGuis
-- Uses data structure: character:GetAttribute("Type"), "Health", etc.
--
-- ============================================================================
--  READ THIS BEFORE ADDING FEATURES  (several chats edit this file)
-- ============================================================================
--  1. LUAU 200-LOCAL LIMIT — the #1 way to break this script.
--     Luau allows only 200 local variables per function, and the "Real"
--     executor compiles at -O0 (no register reuse), so this one big chunk
--     hits the cap exactly. Going over gives:
--         ":<line>: Out of local registers ... exceeded limit 200"
--     and the script SILENTLY FAILS TO RUN — it says "executed", but there is
--     no menu and NO runtime error in game (it never got past compile).
--
--  2. DO NOT declare feature flags / config / state as top-level `local X`.
--     Put them on the shared PX table (declared just below):  PX.MY_FLAG = false
--     Table fields cost ZERO registers. Read & write them as PX.MY_FLAG
--     everywhere. (All the old ESP/combat/save/fossil/fly flags already live
--     on PX for this reason.)
--
--  3. If a flag is saved in config: in getConfigData write it as
--         MY_FLAG = PX.MY_FLAG,          -- bare key, PX value
--     and in applyConfigData read it as `cfg.MY_FLAG` (NOT `cfg.PX.MY_FLAG`).
--
--  4. VERIFY before shipping — compile with the executor's real flags:
--         luau-compile.exe --null -O0 "Prior Extinction.lua"
--     Must print "Compiled ... bytecode" with NO "exceeded limit 200".
--     Default -O1 reuses registers and HIDES the problem — always test -O0.
--
--  5. Game/executor safety: never scan workspace:GetDescendants() (the map is
--     huge — it crashes); wrap work in pcall; game uses Knit + ReplicaService.
--     Game-data notes: Products/Roblox/Prior Extinction/Info Dumps/ (Game State/*.md).
-- ============================================================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera


local PX = {}          -- shared state table (keeps us under Luau's 200-local limit)
PX.BUILD_TAG = "__EZ_WM__"

-- ============================================================================
--  EXECUTOR COMPATIBILITY — Xeno's workarounds run on Xeno ONLY.
--  Xeno is the one executor that has had problems (requiring CharacterState
--  freezes it), so every workaround for it is keyed to its name (PX.IS_XENO and
--  PX.CS_DENY below) and runs there alone. Every other executor runs the hub as
--  it was written: nothing is timed or switched off behind its back. The only
--  thing all executors share is a plain existence check - a missing API (no
--  Drawing, no filtergc) turns that one feature off instead of raising errors.
--  (State lives on PX, never as top-level locals — see the 200-local note above.)
-- ============================================================================
-- The executor's name is read once at load (pcall'd), by the CharacterState gate below; the beacon thread
-- reads it again for its report.
PX.EXECUTOR = nil
PX.CAP = { filtergc = type(filtergc) == "function" }
-- Drawing: TYPE CHECK ONLY at load. We must NOT create a Drawing object here — on Xeno the first
-- Drawing.new spins up the Drawing subsystem and can hang the main thread during execution, freezing
-- the whole client on load. So we assume it's usable if the API exists. On Xeno only, PX.safeDraw then
-- TIMES the very first REAL object (lazy, and tracers/HUD are off by default anyway) and disables Drawing
-- from there on if it was slow. Every other executor just uses Drawing. Nothing touches Drawing at load.
PX.CAP.drawing = (type(Drawing) == "table" and type(Drawing.new) == "function") or false
PX.CAP.drawingTimed = false
-- No-op stand-in so Drawing feature code can keep doing d.Field = x and d:Remove()
-- unchanged when Drawing is unavailable: writes and method calls fall through to nothing.
PX.DRAW_STUB = setmetatable({}, {
    __index = function() return function() end end,
    __newindex = function() end,
})
function PX.safeDraw(kind)
    if not PX.CAP.drawing then return PX.DRAW_STUB end
    if not PX.IS_XENO then                  -- every other executor: Drawing as it always was, no timing
        local ok, d = pcall(Drawing.new, kind)
        return (ok and d) or PX.DRAW_STUB
    end
    local t0 = os.clock()
    local ok, d = pcall(Drawing.new, kind)
    if not ok or not d then PX.CAP.drawing = false; return PX.DRAW_STUB end
    if not PX.CAP.drawingTimed then
        PX.CAP.drawingTimed = true
        if os.clock() - t0 > 0.02 then     -- first real object was slow: stop using Drawing entirely
            PX.CAP.drawing = false
            pcall(function() d:Remove() end)
            return PX.DRAW_STUB
        end
    end
    return d
end

-- ── CharacterState support gate (executor compatibility) ─────────────────────────────────────────
-- Requiring this game's CharacterState ModuleScript FREEZES THE WHOLE CLIENT on some executors (Xeno):
-- the hang is inside require() and never yields, so Luau (single-threaded, cooperative) freezes even if
-- the require runs on a task.spawn thread — it can't be pcall'd, timed out, or isolated. The only safe
-- move is to NOT require it there at all. So we detect the executor by name and, for known-incompatible
-- ones, mark CharacterState unsupported: every feature that needs it (Stats Card, No Attack Cooldown,
-- meat-diet detection) hides its menu toggle and never runs — on THAT executor only. Real and every other
-- executor keep charstate=true → identical behaviour, nothing changes for them. Add names to CS_DENY if
-- another executor turns out to freeze the same way.
PX.CS_DENY = { xeno = true }
do
    local name = ""
    pcall(function()
        name = tostring((identifyexecutor and select(1, identifyexecutor()))
            or (getexecutorname and getexecutorname()) or "")
    end)
    if name ~= "" then PX.EXECUTOR = name end
    local ln = string.lower(name)
    local deny = false
    for k in pairs(PX.CS_DENY) do if ln ~= "" and string.find(ln, k, 1, true) then deny = true break end end
    PX.CAP.charstate = not deny
    -- Xeno's other workarounds (timing Drawing's first object, dropping a slow filtergc) key off this, so they
    -- never touch any other executor.
    PX.IS_XENO = string.find(ln, "xeno", 1, true) ~= nil
end

-- CharacterState (ReplicatedStorage.Common.CharacterState), required once and cached on PX.csCache (cleared
-- per character; PX.getCS() below shares the cache). Returns nil on an executor where CharacterState is
-- unsupported (the gate above: Xeno, where the require freezes the client), so the require is never even
-- attempted there. Everywhere else it is the plain require the hub always did, dino or not (before the Xeno
-- work it ran on the load thread and the hub still loaded at the deploy menu). Callers keep their task.spawn.
function PX.requireCS()
    if PX.csCache then return PX.csCache end
    if not PX.CAP.charstate then return nil end   -- Xeno: attempting the require would freeze
    pcall(function() PX.csCache = require(game:GetService("ReplicatedStorage").Common.CharacterState) end)
    return PX.csCache
end

-- Requiring the game's own modules. On Xeno require() does not hand back the game's module: it runs a FRESH
-- COPY of it in Xeno's own VM (research 2026-09-28), and every require is a round trip to Xeno's local server.
-- For a pure data table that is harmless - the same numbers - but a module that needs the running game either
-- freezes or answers wrong there: Knit (the copy is never started), CharacterState (its setup busy-waits and
-- freezes the client) and the game's client classes (they pull CharacterState in). So on Xeno only the data
-- modules below are required, each ONCE (the module or the failure is remembered), and anything else raises
-- like a failed require - every caller already pcalls and falls back or stays off. Every other executor gets
-- the plain require it always had.
PX.XENO_REQ_OK = {   -- under ReplicatedStorage: data only, nothing that needs the game running
    "DinosaurData.", "Shared.ConsumptionData", "Shared.WellbeingData", "Shared.SkinData", "Shared.LobbyData",
    "Shared.CombatData", "Modules.Consumption.GetRottenSettings", "Modules.Consumption.GetCorpseLifetime",
    "Modules.Combat.GetInfectionSettings", "Common.GetGrowthIndex", "Common.Buffers.ConsumableBuffer",
}
PX.reqCache = setmetatable({}, { __mode = "k" })
function PX.req(mod)
    if not PX.IS_XENO then return require(mod) end
    local hit = PX.reqCache[mod]
    if hit == false then error("not available on this executor", 2) end
    if hit ~= nil then return hit end
    local allowed, full = false, "?"
    pcall(function()
        full = mod:GetFullName()
        local rel = string.match(full, "^ReplicatedStorage%.(.+)$")
        for _, pre in ipairs(PX.XENO_REQ_OK) do
            if rel and string.sub(rel, 1, #pre) == pre then allowed = true break end
        end
    end)
    if not allowed then
        PX.reqCache[mod] = false
        if PX.xlog then PX.xlog("require skipped (not data): " .. tostring(full)) end
        error("not available on this executor", 2)
    end
    local ok, res = pcall(require, mod)
    PX.reqCache[mod] = ok and res or false
    if not ok then error(res, 2) end
    return res
end

-- Xeno diagnostics: a plain-text log of the session, on Xeno ONLY (other executors never write it), so a Xeno
-- player's "it broke" arrives with what broke: the load steps, every error and warning that reached the
-- console, spawns and despawns, the modules the hub declined to require, and a heartbeat every 10 s (a frozen
-- client shows as a gap) with where the menu window is and whether it is enabled. Written in batches every 5 s
-- to <Xeno workspace>/EazyCheats/xeno-log.txt, because every file call is a round trip to Xeno's local server.
-- Sessions are appended (a reload after a dino swap keeps the earlier one); the file restarts past ~800 KB.
PX.xlogBuf, PX.xlogBytes = {}, 0
function PX.xlog(msg)
    if not PX.IS_XENO or PX.xlogBytes > 400000 then return end
    PX.xlogBuf[#PX.xlogBuf + 1] = os.date("%H:%M:%S") .. string.format(" +%.1fs  ", os.clock()) .. tostring(msg) .. "\n"
end
if PX.IS_XENO then
    task.spawn(function()
        local path = "EazyCheats/xeno-log.txt"
        pcall(function() if not isfolder("EazyCheats") then makefolder("EazyCheats") end end)
        pcall(function() if isfile(path) and #readfile(path) > 800000 then writefile(path, "") end end)
        while true do
            task.wait(5)
            if #PX.xlogBuf > 0 then
                local chunk = table.concat(PX.xlogBuf)
                PX.xlogBuf = {}
                PX.xlogBytes = PX.xlogBytes + #chunk
                if not pcall(function() appendfile(path, chunk) end) then
                    pcall(function() writefile(path, ((isfile(path) and readfile(path)) or "") .. chunk) end)
                end
            elseif PX.UNLOADED then
                break
            end
        end
    end)
    task.spawn(function()
        local ch = LocalPlayer.Character
        PX.xlog(("=== EazyCheats load | executor %s | place %s | job %s | dino %s | stage %s"):format(
            tostring(PX.EXECUTOR), tostring(game.PlaceId), string.sub(tostring(game.JobId), 1, 8),
            tostring(ch and ch:GetAttribute("Type")), tostring(ch and ch:GetAttribute("Stage"))))
        local conns = {}
        local function on(sig, fn) local ok, c = pcall(function() return sig:Connect(fn) end) if ok then conns[#conns + 1] = c end end
        on(game:GetService("LogService").MessageOut, function(m, t)
            if t == Enum.MessageType.MessageError then PX.xlog("ERROR " .. string.sub(tostring(m), 1, 500))
            elseif t == Enum.MessageType.MessageWarning then PX.xlog("warn  " .. string.sub(tostring(m), 1, 300)) end
        end)
        on(LocalPlayer.CharacterRemoving, function() PX.xlog("despawn (character removed)") end)
        on(LocalPlayer.CharacterAdded, function(c)
            task.wait(1)
            PX.xlog(("spawn: %s %s"):format(tostring(c:GetAttribute("Type")), tostring(c:GetAttribute("Stage"))))
        end)
        local frames = 0
        on(RunService.Heartbeat, function() frames = frames + 1 end)
        local last = os.clock()
        while not PX.UNLOADED do
            task.wait(10)
            local now = os.clock()
            local where, enabled = "none", "?"
            pcall(function()
                local w = getgenv().__PX_EZ_WIN
                local g = w and (w._gui or w.gui)
                if g then where = g.Parent and g.Parent:GetFullName() or "nil parent"; enabled = tostring(g.Enabled) end
            end)
            PX.xlog(("alive | %.0f fps | gap %.1fs | dino %s | menu in %s, enabled %s"):format(
                frames / math.max(now - last, 0.1), now - last, tostring(LocalPlayer.Character ~= nil), where, enabled))
            frames, last = 0, now
        end
        PX.xlog("=== unloaded")
        for _, c in ipairs(conns) do pcall(function() c:Disconnect() end) end
    end)
end

-- ============================================================================
--  HWID + PRESENCE BEACON
--  Reports who is running the hub (HWID + Roblox id + server) so the owner's admin
--  tools can see script users in-game (the purple "EZ" tags) and in the website HWID
--  tracker. NO admin code lives in this build — admin is a separate script the loader
--  fetches only when the admin key is present. (All on PX — 200-local cap.)
-- ============================================================================
PX.CAP.hwid = type(gethwid) == "function"
PX.HWID = nil   -- resolved lazily inside the beacon THREAD below: gethwid reads hardware and can hang
                -- on some executors, so it must never run on the main load path.
-- request() is the standard; fall back to the older spellings so this works on any executor.
PX.httpReq = (type(request) == "function" and request)
    or (type(http_request) == "function" and http_request)
    or (type(syn) == "table" and type(syn.request) == "function" and syn.request)
    or nil
PX.CAP.http = PX.httpReq ~= nil
PX.REPORT_URL = "https://eazycheats.com/api/hwid-report"

-- Presence + HWID heartbeat. Reports us AND reads back this server's protected-admin list (the admins
-- who toggled "script users can't hit me"), which drives the hidden anti-hit above. Loops on its own
-- thread (~every 20s) so a slow network never blocks the hub, and so a toggle propagates within a cycle.
function PX.reportPresence()
    if not (PX.CAP.http and PX.httpReq) then return end
    while not PX.UNLOADED do
        if PX.HWID == nil then   -- resolve HWID + executor name here (off the load path), once
            PX.HWID = "unknown"
            pcall(function() if PX.CAP.hwid then PX.HWID = tostring(gethwid()) end end)
            pcall(function()
                PX.EXECUTOR = (identifyexecutor and select(1, identifyexecutor()))
                    or (getexecutorname and getexecutorname()) or "?"
            end)
        end
        pcall(function()
            local HttpService = game:GetService("HttpService")
            local body = HttpService:JSONEncode({
                hwid = PX.HWID,
                userId = LocalPlayer.UserId,
                name = LocalPlayer.Name,
                display = LocalPlayer.DisplayName,
                placeId = game.PlaceId,
                jobId = game.JobId,
                executor = PX.EXECUTOR,
                game = "Prior Extinction",
            })
            local resp = PX.httpReq({
                Url = PX.REPORT_URL,
                Method = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body = body,
            })
            if type(resp) == "table" and type(resp.Body) == "string" then
                local ok, decoded = pcall(function() return HttpService:JSONDecode(resp.Body) end)
                if ok and type(decoded) == "table" and type(decoded.m) == "table" then
                    local set = {}
                    for _, id in ipairs(decoded.m) do
                        local n = tonumber(id)
                        if n then set[n] = true end
                    end
                    PX.hbMask = set
                end
            end
        end)
        -- Jittered 25-45s, not a fixed tick, so the periodic call doesn't read as an obvious beacon.
        local n = 25 + math.random(0, 20)
        for _ = 1, n do
            if PX.UNLOADED then break end
            task.wait(1)
        end
    end
end

-- === STATE ===
PX.ESP_ENABLED = false
PX.CHAMS_ENABLED = false
PX.TRACERS_ENABLED = false
PX.SHOW_NAME = true
PX.SHOW_DINO = true
PX.SHOW_STAGE = true
PX.SHOW_GENDER = true
PX.SHOW_HEALTH = true
PX.SHOW_STAMINA = true
PX.SHOW_WEIGHT = true
PX.SHOW_DISTANCE = true
PX.ESP_DISTANCE = 5000
PX.ESP_COLOR = Color3.fromRGB(0, 255, 100)
PX.HEALTH_COLOR_FULL = Color3.fromRGB(0, 255, 0)
PX.HEALTH_COLOR_MID = Color3.fromRGB(255, 255, 0)
PX.HEALTH_COLOR_LOW = Color3.fromRGB(255, 0, 0)
PX.STAMINA_COLOR = Color3.fromRGB(70, 170, 255)    -- blue stamina bar
PX.WEIGHT_COLOR = Color3.fromRGB(255, 210, 70)     -- yellow weight text
PX.staminaCur = {}   -- [replicaId] = current Stamina (from ReplicaSet)
PX.staminaMax = {}   -- [replicaId] = max Stamina
PX.SHOW_FOOD_BAR, PX.SHOW_FOOD_NUM = false, false
PX.SHOW_WATER_BAR, PX.SHOW_WATER_NUM = false, false
PX.SHOW_INFECT_BAR, PX.SHOW_INFECT_NUM = false, false
PX.SHOW_INFECTED = false  -- Infected Tag: flag any dino whose infection meter is above zero
PX.FOOD_COLOR = Color3.fromRGB(230, 140, 50)
PX.WATER_COLOR = Color3.fromRGB(40, 210, 230)
PX.INFECT_COLOR = Color3.fromRGB(175, 90, 230)
PX.ROT_COLOR = Color3.fromRGB(150, 190, 70)  -- the corpse/meat line once it has rotted
PX.INFECT_MAX = 100       -- CombatData.Infection.InfectionAmount
PX.infectCur = {}         -- [replicaId] = Stats.Infection
PX.foodSeenMax, PX.waterSeenMax = {}, {}   -- others' MaxStats rarely arrive; scale bars to the highest value seen
-- fill/text are the cached bar children (see updateESP's ref cache), passed in so this stays
-- FindFirstChild-free on the per-player hot path.
function PX.espVital(bg, fill, text, vitals, label, cur, fillMax, textMax, color, showBar, showNum)
    local known = type(cur) == "number"
    local barOn = showBar and known
    if bg then
        bg.Visible = barOn
        if barOn then
            if fill then fill.Size = UDim2.new(math.clamp(cur / math.max(fillMax or cur, 1), 0, 1), 0, 1, 0) end
            if text then text.Text = label .. " " .. math.floor(cur) .. (textMax and ("/" .. math.floor(textMax)) or "") end
        end
    end
    if showNum and not barOn and known then
        vitals[#vitals + 1] = string.format('<font color="#%s">%s %d</font>', color:ToHex(), label, math.floor(cur))
    end
end
-- Bleed ESP: the server replicates each dino's pending bleed as Stats.BleedForecast via
-- ReplicaSet. We mirror that here (keyed by replica id) and draw it as a red segment on the
-- health bar — the portion of current health that will bleed out. Hook is set up further down.
PX.BLEED_ESP = false
PX.BLEED_COLOR = Color3.fromRGB(190, 30, 30)
PX.bleedForecast = {}   -- [replicaId] = pending bleed amount (0/absent = not bleeding)
PX.PACK_ESP = false
PX.PACK_ESP_COLOR = Color3.fromRGB(180, 220, 255)
PX.PACK_LEADER_ESP = false
PX.PACK_LEADER_COLOR = Color3.fromRGB(255, 215, 0)
PX.packMembers = {}     -- [Player] = {name=packName, count=memberCount, isLeader=bool}
PX.packLeaders = {}     -- [Player] = packName (string) for leaders only (compat)
PX.CHAMS_FILL_TRANSPARENCY = 0.7
PX.CHAMS_OUTLINE_TRANSPARENCY = 0
PX.TEXT_SIZE = 14
PX.HEALTH_BAR_HEIGHT = 6
PX.HEALTH_BAR_WIDTH = 0.8
PX.STAM_BAR_HEIGHT = 6
PX.STAM_BAR_WIDTH = 0.8

-- Corpse/World ESP state
PX.CORPSE_ESP = false
-- 5000 to MATCH the "Corpse Distance" slider's Default. It was 500 while the slider read 5000, and
-- since the slider only writes PX on drag, the menu advertised ten times the range the code
-- actually used — corpses past 500 studs were silently never labelled. That is the whole of
-- "Corpse ESP shows nothing": the folder, the sweep and the billboard were all fine, the range was
-- a tenth of what the UI claimed. Every other ESP distance (ESP, Fossil, Gemstone, Meat) already
-- pairs 5000 with 5000; corpse was the only mismatched one.
PX.CORPSE_DISTANCE = 5000
PX.CORPSE_COLOR = Color3.fromRGB(255, 100, 100)
PX.CORPSE_INF_ESP = true    -- infection line under corpse/meat labels (only for dinos that build infection)
PX.FOSSIL_SMALL = false
PX.FOSSIL_MEDIUM = false
PX.FOSSIL_LARGE = false
PX.FOSSIL_DIST_SMALL = 1500      -- each size has its own label range, scaled to how easy it is to spot
PX.FOSSIL_DIST_MEDIUM = 3000
PX.FOSSIL_DIST_LARGE = 5000
PX.FOSSIL_COLOR_S = Color3.fromRGB(200, 180, 80)
PX.FOSSIL_COLOR_M = Color3.fromRGB(255, 200, 50)
PX.FOSSIL_COLOR_L = Color3.fromRGB(255, 160, 0)
PX.MEAT_ESP = false
PX.MEAT_DISTANCE = 5000
PX.MEAT_COLOR = Color3.fromRGB(255, 150, 50)
PX.CLAY_ESP = false
PX.CLAY_DISTANCE = 5000
PX.CLAY_COLOR = Color3.fromRGB(210, 160, 100)

-- Text highlight
PX.TEXT_HIGHLIGHT = false

-- World ESP text scale (corpse/meat)
PX.WORLD_TEXT_SIZE = 12

-- Anti black screen
PX.ANTI_BLACKSCREEN = false
PX.SHOW_INDICATORS = false       -- show the enabled-modules list (top-right) (off on a fresh start)

-- Auto grow
PX.AUTO_GROW = false

-- Auto Water: drinks for you whenever the dino's head is over water. Since 2026-10-12 the server only credits a
-- sip at real water (it used to fill the bar from anywhere), so the farms walk / fly to a shore to drink.
PX.AUTO_WATER = false
-- Water Anywhere (TEST, 2026-10-12, unproven): away from water, tell the server the dino is in water (the client's own
-- SetProperty "IsInWater" report) right before each sip, in case its sip check trusts that flag. The game's Water class
-- puts the real value back on its next frame. Off by default, never saved in a config, premium only.
PX.WATER_ANYWHERE = false
PX.DRINK_AT = 0.4                -- the farms go to drink when Water falls under this share of the bar
PX.LF_WATER_CRITICAL = 0.2       -- Legit Farm flies to the water instead of walking once Water is under this
PX.DRINK_SEARCH = 1500           -- how far out the farms look for water to drink (studs)
-- Sip pacing, for the same reason as PX.FAST_EAT_RATE: Bite at 40/sec credited nothing while 1.25/sec
-- credited. 2026-10-12 at a lake: the game's own drink (1/sec) plus the old loop's 4/sec landed one sip a
-- second at best (+20 of a 2705 bar each), and for 20 s near the top landed nothing at all - the same
-- "too fast, credit nothing" pattern. So 1/sec, the game's own drink and skim rate, until a rate test says
-- more is safe.
-- 2026-10-14 at a lake: one sip a second (the game's own drink pace) landed every time, +4 to +6 water each, but
-- only while the game itself sees water under the head (PX.headOverWater). The 10/s loop, and its halving to 5/s,
-- landed nothing at all. Fixed at the game's pace - no adapting.
-- 2026-10-15 interval sweep in the shallows: a second sip 0.5-0.8 s after the first was not credited, 0.9 s was
-- (but only 4 of 5 in a row), so one a second is the fastest reliable rate - a refill can't be made "instant".
PX.SIP_RATE = 1                  -- sips/sec while drinking at water
PX.FORCE_EAT = false             -- eat the nearest consumable regardless of diet
PX.LEAVE_SCRAPS = false          -- stop eating a source before fully depleting it
-- Leave Scraps: how much food one bite (or the bites still in flight between two reads) takes on
-- this dino, learned from each drop seen on a plant's buffer. A plant counts as scraps once what is
-- left would not survive about two more of those, so the last bite never empties it (an emptied
-- plant decays). A flat 5-food cut-off let bigger dinos, or fast bites landing before the buffer
-- updated, take the plant straight to zero.
PX.scrapBite, PX.scrapBiteType = nil, nil
function PX.noteBiteDrop(drop)
    local sp
    pcall(function() sp = LocalPlayer.Character:GetAttribute("Type") end)
    if sp ~= PX.scrapBiteType then PX.scrapBite, PX.scrapBiteType = nil, sp end
    if type(drop) == "number" and drop > 0 and drop < 1e6 then
        PX.scrapBite = math.max(drop, (PX.scrapBite or 0) * 0.9)
    end
end
function PX.isScraps(food)
    if type(food) ~= "number" then return false end
    local sp
    pcall(function() sp = LocalPlayer.Character:GetAttribute("Type") end)
    local bite = (sp == PX.scrapBiteType) and PX.scrapBite or nil
    return food <= math.max(5, (bite or 0) * 2.2)
end
-- Scraps mode for the shared food pickers: Force Eat's Leave Scraps, or Legit Farm's own.
function PX.scrapsWanted()
    return PX.LEAVE_SCRAPS or (PX.LEGIT_FARM and PX.LF_SCRAPS) or false
end
-- Fast Eat: ON = bite faster than the game's own pace. OFF = the game's pace, one bite per 0.8s.
--
-- IT USED TO SEND 4 BITES EVERY 0.1s (40/sec) AND THAT IS WHY IT "DID NOTHING WITH FORCE EAT ON".
-- Measured 2026-08-08 by PriorDiagScan over two 20-second windows against the same target:
--     1 bite / 0.8s  (1.25/sec)  -> 22 of 25 sends credited (88%),  +4.80 food
--     4 bites / 0.1s (40/sec)    -> 22 of 588 sends credited (3.7%), +0.00 food
-- The server does not throttle the excess and keep the rest — once tripped it credits NOTHING, so
-- the burst was strictly worse than leaving the feature off. Both windows used a valid target
-- 57 studs away, so this is a rate limit, not a range or targeting problem.
--
-- One bite per tick now, with the rate as an explicit number. 4/sec is ~3x the game's pace and far
-- under the 40/sec that is proven dead — but it is a SAFE GUESS, not a measured ceiling. The real
-- limit is somewhere between 1.25 and 40; run PriorDiagScan's rate bisect before raising this.
-- 2026-10-14 (after the game's October update), next to a plant: one bite every 0.8 s landed 6 of 6, one a second
-- landed, while 2/sec and 4/sec landed NOTHING - every bite thrown away. So 4/sec is why Force Eat "did nothing".
-- Fast Eat is now the game's own pace (the fastest that lands); off is half that.
-- 2026-10-15 bite traces on full plants (the 10-14 "2/sec landed nothing" plant was likely empty): every landed
-- bite takes the same amount (75.9 on a Juvenile Dreadnoughtus, ~1.2% of its Food bar, whatever the plant), the
-- cooldown is the dino's, not the plant's (two plants alternated 0.42 s apart landed 5 of 10), and a refused bite
-- does not reset it. 0.80 s apart landed 5 of 8 (network jitter puts some under the server's 0.8 s), 0.85 s
-- landed 8 of 8 - so 0.85 s eats about half as fast again as 0.80 s.
PX.FAST_EAT = true
PX.FAST_EAT_RATE = 1 / 0.85      -- bites/sec with Fast Eat on: one every 0.85 s
-- (Freeze Food / Freeze Water were removed 2026-10-12: the server now drains Food and Water while the
--  "Consuming" / "Drinking" action state is held, so holding it froze nothing.)
-- Eat Only When Hungry: OFF (default) = bite constantly, holding Food at the cap and discarding the
-- surplus. ON = start eating once Food is 1 below max, stop again at full. A flat food amount, not
-- a percentage, so it behaves identically at every growth stage.
PX.EAT_WHEN_HUNGRY = false
-- Food-absorbed counter. Food is pinned at max while Force Eat runs, so the HUD bar shows no
-- movement — the real intake is only visible in the replica stream, where every server-side Food
-- update arrives. We sum the positive deltas on OUR dino to get the total actually absorbed.
PX.foodCur = {}          -- [replicaId] = live Stats.Food
PX.foodMax = {}          -- [replicaId] = live MaxStats.Food (capacity; scales with growth)
-- Stats ID card (purple, top-centre-right) + per-section toggles
PX.STATS_CARD = false
PX.SC_GROWTH, PX.SC_MASS, PX.SC_WEIGHT, PX.SC_TIMER, PX.SC_NUTRITION, PX.SC_WELLBEING = true, true, true, true, true, true
PX.SC_STAGE_TIMER = true        -- roughly how long this stage takes at its best rate (walking, kept fed)
PX.SC_NAME = true               -- Stats Card title shows the dino being played
-- Stats Card placement. SC_DRAG arms dragging (while off the card ignores clicks entirely, so it
-- can't steal input from the game); the four SC_POS_* fields are the card's UDim2 position and are
-- written on drag-release so the spot survives a config save/load.
PX.SC_DRAG = false
PX.SC_HIDE_WITH_MENU = true   -- hide the Stats Card while the menu is open
PX.SC_POS_XS, PX.SC_POS_XO, PX.SC_POS_YS, PX.SC_POS_YO = 0.62, 0, 0, 16
-- Skin changer (client-side): currently-applied skin name
PX.SKIN_SELECTED = "Default"
-- Fish ESP (highlight nearby fish) + fish hitbox expander (enlarge fish Hitbox parts to catch easier)
PX.FISH_ESP = false
PX.FLY = false                   -- client-driven 3D fly through the shared mover (no speed setting: it goes at the mover's caps)
-- Auto Fly: hands-free travel-XP farming. Built on MEASURED server behaviour, not guesses
-- (see "Travel / Mastery Quests" in the Game Data Reference): the server credits travel on a
-- 10s tick capped at 56 units, and that cap saturates at ~5.6 studs/s — so speed above walking
-- pace buys NOTHING, while a sharp turn collapses that tick from 56 to ~6. A wide slow circle
-- therefore holds full credit indefinitely and never turns sharply. The circle CENTRE drifts so
-- the path isn't pinned to one spot, and the drift turns back at the map edge.
PX.AUTO_FLY = false
PX.AUTO_FLY_SPEED = 25           -- studs/s. Cap saturates at 5.6, so 25 is pure turn-slack margin.
PX.AUTO_FLY_RADIUS = 1000        -- circle radius; 1000 @ 25 studs/s turns only ~14 deg per tick
PX.AUTO_FLY_DRIFT = 10           -- studs/s the circle centre wanders across the map
PX.AUTO_FLY_ALT = 150            -- studs held above the ground below (never more: ~500 up the server froze a dino)
PX.ANTI_AFK = false             -- defeat Roblox's ~20min idle disconnect (Auto Fly needs this)

-- AFK Farm: fly to food, eat it, fly to the next. Plants first (the order is in PX.afkPickFood), player avoidance.
PX.AFK_FARM = false
PX.AFK_FARM_AVOID = 200         -- skip food within this many studs of another player
PX.AFK_FARM_WALK = true         -- press W via VIM to signal walking for Activity gain
-- AFK Farm goes for corpses / meat chunks on its own when the dino being played can eat Meat
-- (its live Diet.Categories, the same list the game checks), never for a herbivore.
function PX.dinoEatsMeat()
    if not PX.CAP.charstate then return false end   -- unsupported executor: don't require (would freeze)
    local ok, yes = pcall(function()
        return require(game:GetService("ReplicatedStorage").Common.CharacterState).Data.Diet.Categories.Meat ~= nil
    end)
    return ok and yes == true
end
-- Food that is neither a plant nor meat (ConsumptionData categories). Both farms leave it alone unless
-- nothing else is left, or it is the source of a nutrient that has run low - see PX.afkPickFood.
PX.OTHER_FOOD = { ["Bones & Chitin"] = true, Shellfish = true, Eggs = true, Insects = true }
-- Every nutrient the game has. CharacterState.Data.Shared.Nutrition (the list a dino tracks) came back
-- EMPTY for a Saurophaganax (2026-09-13), which switched off every "a nutrient is low" rule; then the
-- tracked ones are the ones its stats carry.
PX.NUTRIENTS = { "Proteins", "Fats", "Calcium", "Carbohydrates", "Fiber" }
PX.AFK_FARM_SAFETY = true       -- fly underground and rest when health < 50%, resume at 100%
PX.AFK_FARM_ADMIN_KICK = true   -- leave the server if an admin joins (or is already here) while AFK Farm runs
PX.AFK_FARM_FLEE = true         -- fly away when another player comes within the avoid radius
PX.AFK_FARM_UNSTUCK = false     -- if the body wedges and stops moving, drop the target and pop free
PX.UNSTUCK_EAT_SECS = 25        -- Unstuck (both farms): at the food and hungry but nothing eaten this long -> other food
-- No gain (both farms, always on): in biting range and hungry with bites going out, but our own Food
-- has not gone up for NO_GAIN_SECS -> that food is left alone for NO_GAIN_SKIP. Catches the glitched
-- corpses that only feed once someone picks them up ("??? Investigate"), and bites the server refuses.
PX.NO_GAIN_SECS = 12
PX.NO_GAIN_SKIP = 1200
-- A Food margin of n on a bar of 20 or more, the same share of a smaller bar. A Sinopterus's whole
-- bar is 0.28, so "cur <= max - 1" never came true: once full it never ate again and starved at 0.
function PX.foodGap(fm, n)
    return math.min(n, fm * n / 20)
end
function PX.foodNoGain(tgt, now)
    local fc, fm = PX.myFood()
    if not (fc and fm and fm > 0) or fc >= fm - PX.foodGap(fm, 1) then   -- full (bites cannot land) or unreadable
        tgt.gainT, tgt.gainFood = nil, nil
        return false
    end
    if not tgt.gainT or (tgt.gainFood and fc > tgt.gainFood + 0.001) then tgt.gainT = now end
    tgt.gainFood = fc
    return now - tgt.gainT > PX.NO_GAIN_SECS
end
-- Damage check for both farms: true once each time our health goes down (a hit, a bleed tick, a fall).
-- It follows one body; a new one starts fresh.
function PX.tookDamage(ch, hp)
    if type(hp) ~= "number" then return false end
    local last, lastCh = PX.hurtHp, PX.hurtChar
    PX.hurtHp, PX.hurtChar = hp, ch
    return lastCh == ch and last ~= nil and hp < last - 0.5
end
-- Legit Farm's Rest To Heal: below half health, or healing up to full after damage - but never while
-- starving (Food at or near 0): starvation outpaces resting and nothing seeks food lying down, so it died
-- there. Returns rest?, starving? (starving drops the heal-up and ends a rest already going).
function PX.lfWantRest(pct, healUp, food, foodMax)
    if type(food) == "number" and type(foodMax) == "number" and foodMax > 0 and food <= PX.foodGap(foodMax, 1) then
        return false, true
    end
    return pct < 0.5 or (healUp and pct < 0.99) or false, false
end

-- Legit Farm: walk to food on foot and eat it through Force Eat. Design: Info Dumps/AFK Farm/legit-farm-plan.md
PX.LEGIT_FARM = false
PX.LF_AVOID = 200               -- skip food within this many studs of another player
PX.LF_MAX_DIST = 1000           -- furthest food it will walk to
PX.LF_SCRAPS = false            -- leave a little food on each plant (it never decays) and move on
PX.LF_CIRCLE = false            -- never stand still: walk a small circle on the spot instead
PX.LF_FLEE = false              -- run away from players inside the avoid radius
PX.LF_TABOUT = true             -- keep farming while the window is not focused (walks the dino itself)
PX.AUTO_GAIT = nil              -- "Walk" / "Trot" / "Run" / "Sprint": hold that gait, hands off (Auto Walk & co.)
PX.LF_UNSTUCK = true            -- no progress for a few seconds: lift up, move over, land
PX.LF_REST = true               -- lie down in place below half health, get up when healed
PX.LF_ADMIN_KICK = true         -- leave the server if an admin joins while it runs
PX.LF_FLYAWAY = true            -- a player inside the fly-away radius: lift off, fly away, land, carry on
PX.LF_FLYAWAY_RADIUS = 150

-- Auto Switch Dino: when the played dino is done growing, log out and grow the next one in the list.
-- Design: Info Dumps/Game State/switch-dino-flow.md
PX.AUTO_SWITCH = false
PX.AS_BUSY = false              -- true while a switch is in progress; both farms stand down
PX.AS_SLOTS = {}                -- [1..6] = species name or "(none)"
PX.AS_GENDER = "Male"           -- which save (CharacterData_<Species>_<Gender>_1) to grow
-- Save slots are CharacterData_<Species>_<Male|Female>_1. The game's own selection screen only ever sends
-- "Male" or "Female" (currentGender starts at "Male"; its tooltip: "Each gender has a separate save-file!"),
-- and the account's 33 real saves and every LastCharacter record use those names. A character's Gender
-- attribute says "M"/"F", and a spawn asked for that way makes the server start a separate save
-- (CharacterData_<Species>_M_1): a relog came back as a Juvenile Carcharodontosaurus while its Adult save
-- sat untouched under _Male_1. Every spawn goes through spawnDino, which passes the gender through this,
-- so only the game's own names ever reach the server.
function PX.saveGender(g)
    if g == "Male" or g == "Female" then return g end
    local c = type(g) == "string" and g:sub(1, 1):upper() or nil
    if c == "M" then return "Male" end
    if c == "F" then return "Female" end
    return nil
end
PX.AS_AUTOBUY = false           -- "Allow Unlocking New Dinos": buy a locked dino with Amber (never Robux) if affordable
PX.AS_AUTO_ORDER = false        -- "Smallest To Biggest": ignore the slots, grow every map dino, unlocked first, small to big

-- Farm Timer: after this many minutes of AFK Farm / Legit Farm, turn the farms off, log out and leave.
PX.FARM_TIMER = false
PX.FT_MINUTES = 120

-- Rejoin: back on the start screen (left, kicked, crashed) the hub joins Survival on the chosen map,
-- one of its three fullest servers, spawns your dino and turns the farms back on. The script has to
-- load in every server by itself (EZ Auto Launcher does that). Start-screen side: PX.lobbyJoin just
-- below; map side: PX.rejoinSetup. Both read PX.REJOIN_FILE - the start screen has no menu or config.
PX.REJOIN = false
PX.REJOIN_MAP = "Last Played"
PX.REJOIN_OK = true             -- build-free.js turns this off: Rejoin is premium
PX.LOW_POP_LEAVE = false        -- auto-leave a dying server (hop to a fuller one) while farming
PX.LOW_POP_MIN = 80             -- leave when the server drops below this many players
PX.FARM_DINO = nil              -- forced dino for Rejoin/resume (EXE Farm "auto-farm this one dino"); nil/"Last Played" = last-played
PX.REJOIN_FILE = "EazyCheats_Configs/rejoin.json"
-- One file per account: every Roblox window shares the executor's workspace, and one account's
-- rejoin must never make another account spawn or farm.
pcall(function() PX.REJOIN_FILE = "EazyCheats_Configs/rejoin-" .. LocalPlayer.UserId .. ".json" end)
PX.LOBBY_PLACE = 6698800091     -- ServersData.LobbyServer.Public: the start screen


-- Teleport to Corpse. Moves the PLAYER to the meat, not the meat to the player — see the
-- long note above PX.warpToCorpse for why the obvious direction is impossible.
PX.TP_CORPSE = false
PX.TP_SOLID = true               -- plant feet on the ground + brief pin on arrival
PX.TP_CHAIN = false              -- hop to the next corpse once this one is stripped
PX.TP_OFFSET = 8                 -- stand this far to the side, so we don't land inside the ragdoll
PX.tpBusy = false                -- a warp is in flight (guards against toggle/keybind spam)
PX.tpTargetId = nil              -- corpse id we are currently parked on
PX.tpDone = false                -- one-shot latch: warp finished and chaining is off
PX.AUTO_CLEAN = false            -- keep cleanliness topped up (no water/mud source, no animation)
-- Infinite Oxygen: holds the game's own "Cleaning" action state permanently. Same trick as Freeze
-- Food/Water — holding an action state suppresses that stat's drain tick — applied to Oxygen after
-- noticing oxygen climbing while Auto Cleanliness was running. UNVERIFIED: the oxygen link has not
-- been confirmed under a controlled test, only observed. Watch the Oxygen HUD number, not the bar.
PX.INF_OXYGEN = false
PX.NO_BLUR = false               -- kill the "broken head" concussion screen blur
PX.NO_FALL_DAMAGE = false
PX.FOSSIL_FARM = false          -- declared early so No Fall Damage can run during the farm
PX.UNLIMITED_ZOOM = false

-- Auto Spawn: spam RequestSlot to grab an apex slot the instant one frees up
PX.AUTO_SPAWN = false
PX.AUTO_SPAWN_TARGET = nil       -- locked dino name (set on toggle-on)
PX.AUTO_SPAWN_GENDER = nil       -- locked gender
PX.AUTO_SPAWN_ATTEMPTS = 0
PX.AUTO_SPAWN_DRAWS = {}         -- Drawing objects for HUD overlay

-- Mod Check: detect admins/mods by group rank
PX.MOD_CHECK = false             -- show admin alert in top-right when a mod is in the server
PX.MOD_KICK = false              -- auto-disconnect when a mod joins
PX.MOD_ADMIN_KEYWORDS = {"moderator", "admin", "developer", "owner", "staff", "manager", "lead"}             -- group rank >= this = admin (devs/mods are typically 100+)
PX.modAdmins = {}                -- [Player] = true for detected admins (weak-keyed below)

-- Tracer storage
 PX.tracerLines = {}

-- Unload flag + tracked connections
PX.UNLOADED = false
local allConnections = {}

-- ═══════════════════════════════════════
-- KILL ANY PREVIOUS INSTANCE  (must run before we connect anything)
-- ═══════════════════════════════════════
-- Re-executing the script without rejoining used to leave the OLD copy running forever. Its
-- Heartbeat and RenderStepped connections belong to a different PX table with its own UNLOADED
-- flag, so nothing in the new copy could ever stop them. That produced two things that look like
-- separate bugs but are the same one:
--   * drawing objects redrawing constantly with every toggle switched OFF — the toggles you were
--     looking at belonged to the NEW copy; the OLD one still had features on and kept running.
--   * unloading not stopping it — you unloaded the menu you could see, which was again the new
--     copy, while the old one carried on untouched.
-- The fix is a handle in the executor's shared global environment: every instance publishes its
-- own unload function there, and the next one to load calls it before building anything.
--
-- Every ScreenGui this hub (and its loader) makes, by name, wherever it ended up: gethui(), CoreGui,
-- PlayerGui. Unload runs it FIRST: a later unload step calls into the game's weather controller, which
-- leaves the thread unable to reach gethui() or destroy CoreGui objects - every menu then stayed on
-- screen, dead ("stuck open"), one more per reload. A new copy runs it too, BEFORE the old copy's
-- unload (an older build's unload still breaks the thread it runs in), sparing the loader's own
-- EazyCheats / EazyCheatsKey.
PX.OWN_GUIS = {
    EazyCheats = true, EazyCheatsIndicator = true, EazyCheatsModAlert = true, EazyCheatsVegESP = true,
    PD_StatsCard = true, EZGuiV1 = true, EazyCheatsTouch = true, EazyCheatsKey = true,
}
function PX.sweepOwnGuis(startup)
    local locations, seen = {}, {}
    local function addLoc(w) if w and not seen[w] then seen[w] = true; locations[#locations + 1] = w end end
    pcall(function() if gethui then addLoc(gethui()) end end)   -- gethui may BE CoreGui
    pcall(function() addLoc(game:GetService("CoreGui")) end)
    pcall(function() addLoc(LocalPlayer:FindFirstChild("PlayerGui")) end)
    for _, where in ipairs(locations) do
        for _, gui in ipairs(where:GetChildren()) do
            local n = gui.Name
            if PX.OWN_GUIS[n] and not (startup and (n == "EazyCheats" or n == "EazyCheatsKey")) then
                pcall(function() gui:Destroy() end)
            end
        end
    end
end
pcall(PX.sweepOwnGuis, true)
pcall(function()
    local g = getgenv and getgenv()
    if g and type(g.EazyCheats_Unload) == "function" then
        local prev = g.EazyCheats_Unload
        -- Reloaded in the same server (the old copy's handle carries this server's JobId): Rejoin turns
        -- back on the farms the old copy was running (PX.rejoinSetup).
        PX.rjReloaded = g.EazyCheats_Unload_Job == game.JobId
        g.EazyCheats_Unload = nil
        g.EazyCheats_Handoff = true   -- a reload, not you stopping: Rejoin keeps what it would resume
        -- Tears down the previous instance completely - in a thread of its own: an older build's
        -- unload calls the weather controller inline, which left THIS thread unable to reach gethui()
        -- or CoreGui, so the new menu and indicator failed to appear. It does not yield; if it ever
        -- does, wait for it (not forever).
        local done = false
        task.spawn(function() pcall(prev) done = true end)
        local t0 = os.clock()
        while not done and os.clock() - t0 < 10 do task.wait() end
        g.EazyCheats_Handoff = nil
    end
end)
-- Belt and braces: an instance killed by a script error (rather than a clean unload) can leave its
-- world folders behind with nothing left alive to clean them up.
pcall(function()
    for _, obj in ipairs(workspace:GetChildren()) do
        if obj.Name == "EazyCheatsCircle" or obj.Name == "EazyCheatsPath" then obj:Destroy() end
    end
end)

-- ═══════════════════════════════════════
-- REJOIN, START SCREEN SIDE  (no menu is built there)
-- ═══════════════════════════════════════
-- Loaded on the start screen with Rejoin on, the hub skips the menu: it picks Survival and the map
-- set under Rejoin and joins one of that map's three fullest servers that still has room, through
-- the same ServerManagementService calls the server list's own buttons make (LobbyController ->
-- ServersListGui: GetAllServersForGamemode, RequestJoinServer, RequestJoinRandomServer). It marks
-- the file "pending" so the hub loaded in the server spawns your dino and resumes (PX.rejoinSetup).
function PX.rejoinRead()
    local ok, t = pcall(function()
        return game:GetService("HttpService"):JSONDecode(readfile(PX.REJOIN_FILE))
    end)
    return (ok and type(t) == "table") and t or {}
end
function PX.rejoinWrite(t)
    pcall(function()
        if not isfolder("EazyCheats_Configs") then makefolder("EazyCheats_Configs") end
        writefile(PX.REJOIN_FILE, game:GetService("HttpService"):JSONEncode(t))
    end)
end
-- The game's own deploy / dino-selection screen is up and you have not deployed: most likely a person
-- who just ran the hub at the menu and is choosing a dino themselves. Rejoin's auto-spawn holds off while
-- this is true so it never tears a manual selection down (see the grace in resume()).
function PX.atDeployMenu()
    local at = false
    pcall(function()
        if LocalPlayer:GetAttribute("OnMenu") == true then at = true return end
        local pg = LocalPlayer.PlayerGui
        if pg:FindFirstChild("DinosaurSelectionGui") or pg:FindFirstChild("MainMenuGui") then at = true end
    end)
    return at
end
-- Written just before the hub kicks itself. Real cannot run anything in a window that is on a kick
-- screen, so EZ Auto Launcher reads this note to tell "finished, stay out" from "dropped, bring it back".
function PX.leaveNote(reason, finished)
    if not PX.REJOIN_OK then return end   -- launcher support rides on Rejoin
    pcall(function()
        if not isfolder("EazyCheats_Configs") then makefolder("EazyCheats_Configs") end
        writefile("EazyCheats_Configs/left-" .. LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode({
            reason = reason, finished = finished and true or false, t = os.time() }))
    end)
    -- Finished on purpose: nothing for Rejoin to bring back, whichever way this window comes back.
    if finished then
        PX.rjFinished = true
        pcall(function()
            local st = PX.rejoinRead()
            st.farms, st.pending = {}, nil
            PX.rejoinWrite(st)
        end)
    end
end
-- Rejoin and its map persist on their own (not in a config slot), so they carry into every server.
pcall(function()
    local st = PX.rejoinRead()
    PX.REJOIN = PX.REJOIN_OK and st.on == true
    if type(st.map) == "string" then PX.REJOIN_MAP = st.map end
    if type(st.lowPopLeave) == "boolean" then PX.LOW_POP_LEAVE = st.lowPopLeave end
    if tonumber(st.lowPopMin) then PX.LOW_POP_MIN = tonumber(st.lowPopMin) end
    if type(st.farmDino) == "string" then PX.FARM_DINO = st.farmDino end
end)

-- The order map rotation moves through (Auto Switch finished every dino on a map). Maps not listed here
-- come after, alphabetically; maps under maintenance are skipped wherever they are.
PX.MAP_ORDER = { "Jurassic", "Cretaceous Upland", "Cretaceous Lowland", "Cretaceous Archipelago" }

-- Which map the start screen joins. `maps` is the open ones (name -> true). Map rotation's next map first
-- (Auto Switch finished its last one), then the Rejoin Map setting, then Last Played - skipping every map
-- rotation recorded as finished, so a crash or a kick never lands back on one. If every map is marked
-- finished (an old record), it picks as it always did.
function PX.pickRejoinMap(st, maps)
    local done = type(st.doneMaps) == "table" and st.doneMaps or {}
    local function usable(m) return m ~= nil and maps[m] and not done[m] end
    local map = st.nextMap
    if not usable(map) then map = st.map end
    if not usable(map) then map = st.lastMap end            -- "Last Played"
    if not usable(map) then
        map = nil
        for _, m in ipairs(PX.MAP_ORDER) do if usable(m) then map = m break end end
        if not map then for m in pairs(maps) do if usable(m) then map = m break end end end
    end
    if not maps[map] then map = st.map end
    if not maps[map] then map = st.lastMap end
    if not maps[map] then map = maps.Jurassic and "Jurassic" or next(maps) end
    return map
end

function PX.lobbyJoin(st)
    local RS = game:GetService("ReplicatedStorage")
    local function notify(text, secs, button, cb)
        pcall(function()
            local n = { Title = "EazyCheats Rejoin", Text = text, Duration = secs or 6 }
            if button then n.Button1, n.Callback = button, cb end
            game:GetService("StarterGui"):SetCore("SendNotification", n)
        end)
    end
    -- What EZ Auto Launcher sees: "joining" while trying, "gave up", or "cancelled" (you backed out).
    local function state(s)
        pcall(function() getgenv().EazyCheats_Unload_State = s end)
    end
    local K = PX.req(RS:WaitForChild("Packages"):WaitForChild("Knit"))
    pcall(function() K.OnStart():await() end)
    local SMS = K.GetService("ServerManagementService")
    local version = "Recode"
    pcall(function() version = K.GetController("LobbyController").ChosenVersion or version end)
    -- Survival's maps, minus any under maintenance (the lobby's own card list).
    local maps = {}
    pcall(function()
        for name, m in pairs(PX.req(RS.Shared.LobbyData).Gamemodes[version].Survival.Ecosystems) do
            if not m.Maintenance then maps[name] = true end
        end
    end)
    local map = PX.pickRejoinMap(st, maps)
    if not map then state("gave up") notify("could not read the map list - pick a server yourself", 10) return end

    local cancelled = false
    local bf = Instance.new("BindableFunction")
    bf.OnInvoke = function() cancelled = true end
    notify("joining Survival - " .. map .. " in 8s", 8, "Cancel", bf)
    for _ = 1, 80 do
        if cancelled or PX.UNLOADED then
            if cancelled then state("cancelled") end   -- (unloaded = a reload; the new copy says "joining")
            notify("cancelled - pick a server yourself", 6)
            return
        end
        task.wait(0.1)
    end

    local tried = {}
    for _ = 1, 8 do
        if cancelled or PX.UNLOADED then return end
        local servers
        pcall(function() servers = SMS:GetAllServersForGamemode("Survival", map) end)
        -- Servers with people in them and at least 2 free slots, fullest first; never the one just left.
        local list = {}
        for id, s in pairs(type(servers) == "table" and servers or {}) do
            local n = 0
            for _ in pairs(type(s.Players) == "table" and s.Players or {}) do n = n + 1 end
            local cap = tonumber(s.MaxPlayerCount) or 150
            if n > 0 and n <= cap - 2 and not tried[id] and id ~= st.lastJob then
                list[#list + 1] = { id = id, n = n, cap = cap }
            end
        end
        table.sort(list, function(a, b) return a.n > b.n end)
        local pick = list[math.random(1, math.max(1, math.min(3, #list)))]
        st.pending = os.time()
        PX.rejoinWrite(st)
        local ok, res
        if pick then
            tried[pick.id] = true
            notify("joining a " .. map .. " server (" .. pick.n .. "/" .. pick.cap .. " players)", 6)
            ok, res = pcall(function() return SMS:RequestJoinServer(version, "Survival", map, pick.id) end)
        else
            notify("no open " .. map .. " server listed - joining a random one", 6)
            ok, res = pcall(function() return SMS:RequestJoinRandomServer(version, "Survival", map) end)
        end
        if not ok then
            notify("join failed: " .. tostring(res), 6)
        elseif type(res) == "table" and res.Success == false then
            notify("server said no: " .. tostring(res.Message), 6)
        else
            local t0 = os.clock()   -- asked; the teleport takes a while. Still here after 45s: next one.
            while os.clock() - t0 < 45 do
                if cancelled or PX.UNLOADED then return end
                task.wait(0.5)
            end
        end
        task.wait(3)
    end
    if not PX.UNLOADED then state("gave up") end
    notify("could not get into a server - try again from the start screen", 10)
end

if PX.REJOIN and (function()
    local ok, id = pcall(function() return game.PlaceId end)
    return ok and id == PX.LOBBY_PLACE
end)() then
    -- EZ Auto Launcher reads this handle to see the script is running; loading again cancels us.
    pcall(function()
        local g = getgenv and getgenv()
        if g then
            if type(g.EazyCheats_Unload) == "function" then
                g.EazyCheats_Handoff = true
                pcall(g.EazyCheats_Unload)
                g.EazyCheats_Handoff = nil
            end
            g.EazyCheats_Unload = function() PX.UNLOADED = true end
            g.EazyCheats_Unload_Job = game.JobId   -- the launcher ignores a handle left from another server
            g.EazyCheats_Unload_State = "joining"  -- EZ Auto Launcher's start-screen watchdog reads this
        end
    end)
    task.spawn(function()
        local ok, err = pcall(PX.lobbyJoin, PX.rejoinRead())
        if not ok then warn("[EazyCheats] Rejoin: " .. tostring(err)) end
    end)
    return
end

-- ═══════════════════════════════════════
-- FRAME SCHEDULER
-- ═══════════════════════════════════════
-- Every per-frame system used to own a separate Heartbeat connection (10+ of them), and each
-- connection costs dispatch overhead whether or not its feature is on. They all register here
-- instead, and the single Heartbeat below runs them. `interval` is the old "counter % N"
-- throttle, now handled centrally: 1 = every frame, 3 = every third, etc.
--
-- Each step is pcall'd so one system erroring can't starve the ones registered after it
-- (10 pcalls/frame is nothing next to what this replaces). RenderStepped is deliberately NOT
-- merged in — Insta Turn / Quick Turn / the Save Dino pin need to run before the frame draws,
-- and folding them into Heartbeat would make them visibly jitter.
PX.steps = {}
function PX.addStep(interval, fn)
    PX.steps[#PX.steps + 1] = { interval = interval or 1, fn = fn }
end

-- The one Heartbeat. Connected here rather than at the bottom of the file on purpose: the
-- registry is re-read every frame, so steps added later are picked up automatically, and
-- connecting up front means the auto-load config's `task.wait(0.5)` (which yields the main
-- chunk) can't hold every per-frame system offline while it runs.
PX.frameN = 0
table.insert(allConnections, RunService.Heartbeat:Connect(function(dt)
    if PX.UNLOADED then return end
    local frameN = PX.frameN + 1
    if frameN >= 2147483000 then frameN = 0 end   -- keep the counter well inside integer range
    PX.frameN = frameN
    local steps = PX.steps
    for i = 1, #steps do
        local s = steps[i]
        if s.interval == 1 or frameN % s.interval == 0 then
            pcall(s.fn, dt)
        end
    end
end))

-- allConnections only exists so unload can cut everything. Connections the game already cut (a blur effect or a
-- camera that was destroyed, a one-shot that disconnected itself) stayed in it for the whole session; they are
-- dropped here once a minute. Unload still cuts every live one.
PX.connSweepT = os.clock()
PX.addStep(300, function()
    if os.clock() - PX.connSweepT < 60 then return end
    PX.connSweepT = os.clock()
    local keep = {}
    for _, c in ipairs(allConnections) do
        local live = true
        pcall(function() live = c.Connected ~= false end)
        if live then keep[#keep + 1] = c end
    end
    if #keep < #allConnections then
        table.clear(allConnections)
        for i, c in ipairs(keep) do allConnections[i] = c end
    end
end)

-- Presence + HWID beacon. Here (past the lobby-rejoin branch's early return) so it fires once for
-- the real in-game hub, not for a start-screen join. Detached so a slow network never delays load.
task.spawn(PX.reportPresence)

-- ═══════════════════════════════════════
-- ROOT PART CACHE
-- ═══════════════════════════════════════
-- Finding a dino's root meant walking a 6-step fallback chain (including a GetDescendants()
-- call) for every player, every update. The answer almost never changes, so we resolve it once
-- and reuse it. Two things invalidate a cached root: the character being swapped (CharacterAdded)
-- and the part itself being removed (streaming) — the second is caught by the .Parent check on
-- read, so a streamed-out root re-resolves on the next frame instead of going stale.
-- Two orders, deliberately kept apart. ESP wants Body first (it's the visual centre, so the
-- billboard sits right); the movement/physics code (Auto Grow, Save Dino, Insta Turn, Quick
-- Turn) wants HumanoidRootPart first, because that's the part it anchors and CFrames. On a
-- dino that has both these resolve to DIFFERENT parts, so collapsing them into one order would
-- quietly change what Save Dino pins and what Insta Turn rotates.
PX.rootCacheVisual  = setmetatable({}, { __mode = "k" })   -- weak keys: old characters drop out
PX.rootCachePhysics = setmetatable({}, { __mode = "k" })

-- Hung off PX rather than declared as more top-level locals: this chunk sits close to Luau's
-- 200-local ceiling, which is what PX exists for.
function PX.resolveRoot(character, preferHRP)
    if not character then return nil end

    local body = character:FindFirstChild("Body")
    local hrp  = character:FindFirstChild("HumanoidRootPart")
    local first, second
    if preferHRP then first, second = hrp, body else first, second = body, hrp end
    if first and first:IsA("BasePart") then return first end
    if second and second:IsA("BasePart") then return second end

    local pp = character.PrimaryPart
    if pp and pp:IsA("BasePart") then return pp end

    local hitboxModel = character:FindFirstChild("Hitbox")
    if hitboxModel then
        local h = hitboxModel:FindFirstChild("HumanoidRootPart")
        if h and h:IsA("BasePart") then return h end
    end

    -- Last resorts: the expensive scans, only reached when nothing standard exists.
    for _, part in character:GetChildren() do
        if part:IsA("BasePart") and part.Name ~= "MouthPart" and part.Name ~= "HitBox" and part.Name ~= "CameraPart" then
            return part
        end
    end

    local hb = character:FindFirstChild("HitBox")
    if hb and hb:IsA("BasePart") then return hb end

    for _, part in character:GetDescendants() do
        if part:IsA("BasePart") and part.Name ~= "MouthPart" and part.Name ~= "CameraPart" then
            return part
        end
    end

    return nil
end

-- Cached lookup. Re-resolves only when the cache is empty, the character was swapped, or the
-- cached part left the world (streaming) — so a stream-out costs one frame, not a stale root.
function PX.getRootOf(character, preferHRP)
    if not character then return nil end
    local cache = preferHRP and PX.rootCachePhysics or PX.rootCacheVisual
    local entry = cache[character]
    if entry and entry.Parent then return entry end
    local root = PX.resolveRoot(character, preferHRP)
    cache[character] = root
    return root
end

-- These stay locals: they're the hot accessors, hit many times per frame.
 function PX.getLocalRoot()
    return PX.getRootOf(LocalPlayer.Character, false)
end

 function PX.getLocalPhysicsRoot()
    return PX.getRootOf(LocalPlayer.Character, true)
end

-- Hitbox expander state
PX.HITBOX_EXPANDER = false
PX.HITBOX_VISUALIZE = false
PX.HITBOX_MULTIPLIER = 1
PX.HITBOX_VIS_COLOR = Color3.fromRGB(255, 0, 0)
PX.HITBOX_VIS_TRANSPARENCY = 0.5 -- transparency for the visualizer (0 = solid, 1 = invisible)
-- part -> original Vector3 size.
--
-- MUST be a strong table. This was briefly weak-keyed to stop dead parts accumulating, which
-- broke hitboxes outright: a Roblox Instance is kept alive by the DataModel, not by Lua, so a
-- weak entry could be collected while the part was still in the world AND still expanded. The
-- next frame then re-captured "original" from the already-expanded size and multiplied it
-- again, and a reset restored a bogus size — hitboxes drifting huge and then never working.
-- The leak this was trying to fix is trivial by comparison; do not make this weak again.
local hitboxOrigSizes = {}

-- Visualiser bookkeeping.
--   hitboxOrigLook — part -> its ORIGINAL {Transparency, Material, Color}, captured the first time
--     we recolour it. Hiding used to just slam Transparency = 1 and leave Material = Neon behind
--     forever, so a part the game later made visible again came back glowing red.
--   PX.hbShown — player -> true while we currently have boxes drawn on them. Lets the loop tell
--     "already hidden, nothing to do" from "still needs hiding", so enforcing costs nothing.
-- Strong table for the look (same reasoning as hitboxOrigSizes: a weak entry can be collected
-- while the part is still in the world and still recoloured). Weak keys for hbShown is fine —
-- it's keyed by Player, and a Player leaving should simply drop the entry.
local hitboxOrigLook = {}
PX.hbShown = setmetatable({}, { __mode = "k" })

PX.HITBOX_GROUPS = {
    Head = true,
    Jaw = false,
    Neck = false,
    Body = false,
    Arm = false,
    Leg = false,
    TailBase = false,
    TailMid = false,
    TailTip = false,
    Thagomizer = false,
}

-- Silent Aim is purely a TARGETING FILTER — it never resizes anything (that's the Hitbox
-- Expander's job, and the two work together). Hits are client-side and the game's detection
-- SKIPS parts with CanQuery=false, so we simply make ONLY your chosen parts queryable and
-- everything else unqueryable: you physically cannot hit anything but the parts you picked.
PX.SILENT_AIM = false
PX.SILENT_GROUPS = {
    Head = true,
    Jaw = false,
    Neck = false,
    Body = false,
    Arm = false,
    Leg = false,
    TailBase = false,
    TailMid = false,
    TailTip = false,
    Thagomizer = false,
}

-- Reach state (expands YOUR OWN attack hitbox parts so your bites/tail/claws reach further)
PX.REACH_ENABLED = false
PX.REACH_MULTIPLIER = 1
PX.REACH_VISUALIZE = false            -- draw YOUR OWN reach hitbox parts (like the expander's visualizer)
PX.REACH_VIS_TRANSPARENCY = 0.5
local reachOrigSizes = {} -- part -> original size. Strong, for the same reason as hitboxOrigSizes.

-- The three tables above stay strong (see hitboxOrigSizes), so every part of every player who left or respawned
-- stayed in them for the session. A part is dropped once it has been out of the game on two sweeps in a row, 30 s
-- apart: one that is only unparented for a moment keeps its entry, so its original size is never re-read from an
-- expanded one, which is the bug the strong tables exist to prevent.
PX.hbGoneMark = setmetatable({}, { __mode = "k" })
PX.hbSweepT = os.clock()
PX.addStep(300, function()
    if os.clock() - PX.hbSweepT < 30 then return end
    PX.hbSweepT = os.clock()
    local tables = { hitboxOrigSizes, hitboxOrigLook, reachOrigSizes }
    local checked = {}
    for _, t in ipairs(tables) do
        for part in pairs(t) do
            if checked[part] == nil then
                local inGame = false
                pcall(function() inGame = part:IsDescendantOf(game) end)
                checked[part] = inGame
            end
        end
    end
    for part, inGame in pairs(checked) do
        if inGame then
            PX.hbGoneMark[part] = nil
        elseif PX.hbGoneMark[part] then
            PX.hbGoneMark[part] = nil
            for _, t in ipairs(tables) do t[part] = nil end
        else
            PX.hbGoneMark[part] = true
        end
    end
end)
PX.REACH_GROUPS = {
    Head = true,        -- Skull + tongue -> bite reach
    Jaw = true,         -- Lower jaw — its own Group, separate from Head
    Arm = false,        -- Claws (only meaningful if the dino has arm hitboxes)
    Leg = false,        -- Kicks / stomps; the game tags these Group="Leg" like any other part

    -- The tail is split into the same sections the Hitbox Expander uses (via PX.getTailSubGroup).
    -- It used to be one switch for the whole tail, so extending the tip meant inflating the base
    -- along with it — a huge blob around the dino's hips for reach you only wanted at the end.
    TailBase = false,
    TailMid = false,
    TailTip = false,
    Thagomizer = false, -- spikes; getTailSubGroup reports these separately from the tail segments
}

-- Display metadata for the group tables above. ORDER fixes the list order in the
-- UI; LABELS is presentation only — the tables stay keyed by group name.
PX.PART_GROUP_ORDER  = {"Head","Jaw","Neck","Body","Arm","Leg","TailBase","TailMid","TailTip","Thagomizer"}
PX.REACH_GROUP_ORDER = {"Head","Jaw","Arm","Leg","TailBase","TailMid","TailTip","Thagomizer"}
PX.GROUP_LABELS = {
    Head = "Head", Jaw = "Jaw", Neck = "Neck", Body = "Body", Arm = "Arm", Leg = "Leg",
    TailBase = "Tail Base", TailMid = "Tail Mid", TailTip = "Tail Tip",
    Thagomizer = "Thagomizer", Tail = "Tail",
}

-- Builds a multi-select dropdown bound to one of the group tables above.
-- Nine separate toggles per feature took up most of the Combat tab; this is one
-- collapsed row instead. Hung off PX rather than declared as another top-level
-- local, since this chunk is already carrying a lot of them.
--
-- The returned object gains Refill(), which pushes the table's current booleans
-- back into the dropdown — that's how loading a config refreshes the display.
-- onChange (optional) runs after the table is updated — Reach uses it to drop
-- the old sizes so de-selected parts shrink back instead of staying expanded.
function PX.groupDropdown(tab, name, groupTable, order, onChange)
    local labelToKey, items, default = {}, {}, {}
    for _, key in ipairs(order) do
        local label = PX.GROUP_LABELS[key] or key
        labelToKey[label] = key
        items[#items + 1] = label
        if groupTable[key] then default[#default + 1] = label end
    end

    local dd = tab:AddDropdown({
        Name = name,
        Items = items,
        Multi = true,
        Default = default,
        Callback = function(selected)
            for _, key in ipairs(order) do groupTable[key] = false end
            if type(selected) == "table" then
                for label, on in pairs(selected) do
                    local key = labelToKey[label]
                    if on and key then groupTable[key] = true end
                end
            end
            if onChange then onChange() end
        end,
    })

    dd.Refill = function()
        local sel = {}
        for _, key in ipairs(order) do
            if groupTable[key] then sel[PX.GROUP_LABELS[key] or key] = true end
        end
        dd:Set(sel, true)   -- silent: the group table is already correct
    end

    return dd
end

 function PX.getTailSubGroup(partName)
    local name = partName:lower()
    if name:find("thagomizer") then return "Thagomizer" end
    local num = tonumber(partName:match("Tail%.(%d+)"))
    if not num then return "TailBase" end
    if num <= 4 then return "TailBase"
    elseif num <= 9 then return "TailMid"
    else return "TailTip"
    end
end

-- World ESP storage
local worldESPCache = {} -- object -> BillboardGui

-- === ESP OBJECTS ===
PX.espCache = {} -- player -> {billboard, highlight, connections}

 function PX.getHealthColor(pct)
    if pct > 0.5 then return PX.HEALTH_COLOR_FULL
    elseif pct > 0.25 then return PX.HEALTH_COLOR_MID
    else return PX.HEALTH_COLOR_LOW end
end

 function PX.createESP(player)
    if player == LocalPlayer then return end
    if PX.espCache[player] then return end

    local data = {
        billboard = nil,
        highlight = nil,
        connections = {},
        tracer = nil,
    }
    PX.espCache[player] = data
end

 function PX.destroyESP(player)
    local data = PX.espCache[player]
    if not data then return end

    if data.billboard then
        pcall(function() data.billboard:Destroy() end)
    end
    if data.highlight then
        pcall(function() data.highlight:Destroy() end)
    end
    if data.tracer then
        pcall(function() data.tracer:Remove() end)
    end
    for _, conn in pairs(data.connections) do
        pcall(function() conn:Disconnect() end)
    end
    PX.espCache[player] = nil
end

 function PX.updateESP(player)
    local data = PX.espCache[player]
    if not data then return end

    local character = player.Character
    if not character then
        if data.billboard then data.billboard.Enabled = false end
        if data.highlight then data.highlight.Enabled = false end
        return
    end

    -- Prior Extinction has no Humanoid - health is an attribute
    local health = character:GetAttribute("Health") or 0
    if health <= 0 then
        if data.billboard then data.billboard.Enabled = false end
        if data.highlight then data.highlight.Enabled = false end
        return
    end

    -- Root part - MUST be a BasePart for BillboardGui to render. Cached (see PX.getRootOf):
    -- this used to re-walk a 6-step fallback chain, GetDescendants() included, for every
    -- player on every update. Body-first order, matching what this always used.
    local root = PX.getRootOf(character, false)
    if not root then return end

    local myRoot = PX.getLocalRoot()
    local dist = myRoot and (myRoot.Position - root.Position).Magnitude or 0

    if dist > PX.ESP_DISTANCE then
        if data.billboard then data.billboard.Enabled = false end
        if data.highlight then data.highlight.Enabled = false end
        return
    end

    -- === BILLBOARD GUI ===
    if PX.ESP_ENABLED then
        -- Re-parent billboard if root part changed (streaming)
        if data.billboard and data.billboard.Parent ~= root then
            pcall(function()
                data.billboard.Adornee = root
                data.billboard.Parent = root
            end)
        end
        if not data.billboard or not data.billboard.Parent then
            local bb = Instance.new("BillboardGui")
            bb.Name = "DinoESP"
            bb.Size = UDim2.new(0, 240, 0, 122)
            bb.StudsOffset = Vector3.new(0, 5, 0)
            bb.AlwaysOnTop = true
            bb.LightInfluence = 0
            bb.MaxDistance = PX.ESP_DISTANCE

            local container = Instance.new("Frame")
            container.Name = "Container"
            container.Size = UDim2.new(1, 0, 1, 0)
            container.BackgroundTransparency = 1
            container.Parent = bb

            local layout = Instance.new("UIListLayout")
            layout.FillDirection = Enum.FillDirection.Vertical
            layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
            layout.SortOrder = Enum.SortOrder.LayoutOrder
            layout.Padding = UDim.new(0, 2)
            layout.Parent = container

            -- helper: a plain text line
            local function newLine(nm, order, size, font, color)
                local l = Instance.new("TextLabel")
                l.Name = nm; l.LayoutOrder = order
                l.Size = UDim2.new(1, 0, 0, size + 3)
                l.BackgroundTransparency = 1
                l.TextColor3 = color
                l.TextStrokeTransparency = 0; l.TextStrokeColor3 = Color3.new(0, 0, 0)
                l.Font = font; l.TextSize = size; l.TextScaled = false
                l.Parent = container
                return l
            end
            -- helper: a rounded bar (bg + Fill + centered Text on top)
            local function newBar(nm, order, fillColor)
                local bg = Instance.new("Frame")
                bg.Name = nm; bg.LayoutOrder = order
                bg.Size = UDim2.new(0.92, 0, 0, 15)
                bg.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                bg.BorderSizePixel = 0; bg.Parent = container
                Instance.new("UICorner", bg).CornerRadius = UDim.new(1, 0)
                local fill = Instance.new("Frame")
                fill.Name = "Fill"; fill.Size = UDim2.new(1, 0, 1, 0)
                fill.BackgroundColor3 = fillColor; fill.BorderSizePixel = 0; fill.Parent = bg
                Instance.new("UICorner", fill).CornerRadius = UDim.new(1, 0)
                local txt = Instance.new("TextLabel")
                txt.Name = "Text"; txt.Size = UDim2.new(1, 0, 1, 0)
                txt.BackgroundTransparency = 1; txt.TextColor3 = Color3.new(1, 1, 1)
                txt.TextStrokeTransparency = 0.3; txt.TextStrokeColor3 = Color3.new(0, 0, 0)
                txt.Font = Enum.Font.GothamBold; txt.TextSize = PX.TEXT_SIZE - 4
                txt.ZIndex = 3; txt.Parent = bg
                return bg
            end

            newLine("NameLabel", 1, PX.TEXT_SIZE, Enum.Font.GothamBold, Color3.new(1, 1, 1))
            newLine("InfoLabel", 2, PX.TEXT_SIZE - 2, Enum.Font.GothamSemibold, Color3.fromRGB(235, 235, 235))
            local healthBG = newBar("HealthBG", 3, PX.HEALTH_COLOR_FULL)   -- HP bar (green)
            local bleedFill = Instance.new("Frame")                        -- red bleed overlay on it
            bleedFill.Name = "BleedFill"; bleedFill.Size = UDim2.new(0, 0, 1, 0)
            bleedFill.Position = UDim2.new(1, 0, 0, 0); bleedFill.BackgroundColor3 = PX.BLEED_COLOR
            bleedFill.BorderSizePixel = 0; bleedFill.ZIndex = 2; bleedFill.Visible = false
            bleedFill.Parent = healthBG
            newBar("StamBG", 4, PX.STAMINA_COLOR)                          -- Stamina bar (blue)
            newBar("FoodBG", 5, PX.FOOD_COLOR)
            newBar("WaterBG", 6, PX.WATER_COLOR)
            newBar("InfectBG", 7, PX.INFECT_COLOR)
            newLine("VitalsLabel", 8, PX.TEXT_SIZE - 3, Enum.Font.GothamBold, Color3.new(1, 1, 1)).RichText = true
            newLine("WeightLabel", 9, PX.TEXT_SIZE - 3, Enum.Font.GothamSemibold, PX.WEIGHT_COLOR)
            newLine("BleedLabel", 10, PX.TEXT_SIZE - 3, Enum.Font.GothamBold, PX.BLEED_COLOR)

            bb.Adornee = root
            bb.Parent = root
            data.billboard = bb
        end

        local bb = data.billboard
        bb.Enabled = true
        local container = bb:FindFirstChild("Container")
        if container then
            -- Child-reference cache. The billboard's fixed labels are built once and never move,
            -- but this refresh used to re-resolve ~20 of them with FindFirstChild every pass, per
            -- player, several times a second — the single biggest ESP cost. Resolve them once per
            -- container and reuse. Rebuilt only if the container instance changes (a respawn
            -- rebuilds the billboard), so the values are always identical to a live lookup.
            local R = data.refs
            if not R or R._c ~= container then
                R = { _c = container }
                R.nameLabel   = container:FindFirstChild("NameLabel")
                R.infoLabel   = container:FindFirstChild("InfoLabel")
                R.healthBG    = container:FindFirstChild("HealthBG")
                R.stamBG      = container:FindFirstChild("StamBG")
                R.weightLabel = container:FindFirstChild("WeightLabel")
                R.bleedLabel  = container:FindFirstChild("BleedLabel")
                R.vitalsLabel = container:FindFirstChild("VitalsLabel")
                R.foodBG      = container:FindFirstChild("FoodBG")
                R.waterBG     = container:FindFirstChild("WaterBG")
                R.infectBG    = container:FindFirstChild("InfectBG")
                R.listLayout  = container:FindFirstChildOfClass("UIListLayout")
                if R.healthBG then
                    R.hpFill  = R.healthBG:FindFirstChild("Fill")
                    R.hpBleed = R.healthBG:FindFirstChild("BleedFill")
                    R.hpText  = R.healthBG:FindFirstChild("Text")
                end
                if R.stamBG then
                    R.stFill = R.stamBG:FindFirstChild("Fill")
                    R.stText = R.stamBG:FindFirstChild("Text")
                end
                if R.foodBG   then R.foodText   = R.foodBG:FindFirstChild("Text");   R.foodFill   = R.foodBG:FindFirstChild("Fill")   end
                if R.waterBG  then R.waterText  = R.waterBG:FindFirstChild("Text");  R.waterFill  = R.waterBG:FindFirstChild("Fill")  end
                if R.infectBG then R.infectText = R.infectBG:FindFirstChild("Text"); R.infectFill = R.infectBG:FindFirstChild("Fill") end
                data.refs = R
            end
            local nameLabel   = R.nameLabel
            local infoLabel   = R.infoLabel
            local healthBG    = R.healthBG
            local stamBG      = R.stamBG
            local weightLabel = R.weightLabel
            local bleedLabel  = R.bleedLabel

            -- Live size adjustment (Text Size / Health Bar / Stamina Bar sliders) — applied every
            -- frame so slider changes take effect on existing billboards, not just newly-built ones.
            if nameLabel then nameLabel.TextSize = PX.TEXT_SIZE; nameLabel.Size = UDim2.new(1, 0, 0, PX.TEXT_SIZE + 3) end
            if infoLabel then infoLabel.TextSize = math.max(6, PX.TEXT_SIZE - 2); infoLabel.Size = UDim2.new(1, 0, 0, PX.TEXT_SIZE + 1) end
            if weightLabel then weightLabel.TextSize = math.max(6, PX.TEXT_SIZE - 3); weightLabel.Size = UDim2.new(1, 0, 0, PX.TEXT_SIZE) end
            if bleedLabel then bleedLabel.TextSize = math.max(6, PX.TEXT_SIZE - 3); bleedLabel.Size = UDim2.new(1, 0, 0, PX.TEXT_SIZE) end
            if healthBG then
                healthBG.Size = UDim2.new(PX.HEALTH_BAR_WIDTH, 0, 0, PX.HEALTH_BAR_HEIGHT)
                local ht = R.hpText; if ht then ht.TextSize = math.clamp(PX.HEALTH_BAR_HEIGHT + 2, 7, 18) end
            end
            if stamBG then
                stamBG.Size = UDim2.new(PX.STAM_BAR_WIDTH, 0, 0, PX.STAM_BAR_HEIGHT)
                local st = R.stText; if st then st.TextSize = math.clamp(PX.STAM_BAR_HEIGHT + 2, 7, 18) end
            end

            -- this dino's replica id (stamina + bleed are keyed by it)
            local rid
            do local bind = character:FindFirstChild("ReplicaBind"); rid = bind and bind.Value end

            -- Name line: "<Name>  <Member/Guest>  [<dist>m]". Distance is DECOUPLED from the
            -- name toggle: if Show Name is off but Show Distance is on, the line shows just
            -- "[<dist>m]", so distance ESP works on its own (was previously invisible whenever
            -- Show Name was off, because the distance was only appended to the name text).
            local isModFlagged = PX.MOD_CHECK and PX.modAdmins[player]
            if nameLabel then
                local txt = ""
                if PX.SHOW_NAME then
                    local member = (player.MembershipType == Enum.MembershipType.Premium) and "Member" or "Guest"
                    txt = player.DisplayName .. "  " .. member
                end
                if PX.SHOW_DISTANCE then
                    txt = (txt ~= "" and (txt .. "  ") or "") .. "[" .. math.floor(dist) .. "m]"
                end
                nameLabel.Visible = txt ~= ""
                nameLabel.Text = txt
                nameLabel.TextColor3 = isModFlagged and Color3.fromRGB(255, 50, 50) or Color3.new(1, 1, 1)
            end

            local adminLabel = container:FindFirstChild("AdminLabel")
            if isModFlagged then
                if not adminLabel then
                    adminLabel = Instance.new("TextLabel")
                    adminLabel.Name = "AdminLabel"; adminLabel.LayoutOrder = 0
                    adminLabel.Size = UDim2.new(1, 0, 0, 26)
                    adminLabel.BackgroundTransparency = 1
                    adminLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                    adminLabel.TextStrokeTransparency = 0
                    adminLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                    adminLabel.Font = Enum.Font.GothamBold
                    adminLabel.TextSize = 22; adminLabel.TextScaled = false
                    adminLabel.Parent = container
                end
                local roleStr = PX.modAdmins[player]
                adminLabel.Text = (type(roleStr) == "string") and string.upper(roleStr) or "ADMIN"
                adminLabel.Visible = true
            elseif adminLabel then
                adminLabel.Visible = false
            end

            local packLeaderLabel = container:FindFirstChild("PackLeaderLabel")
            local leaderPack = PX.PACK_LEADER_ESP and PX.packLeaders[player]
            if leaderPack then
                if not packLeaderLabel then
                    packLeaderLabel = Instance.new("TextLabel")
                    packLeaderLabel.Name = "PackLeaderLabel"; packLeaderLabel.LayoutOrder = 0
                    packLeaderLabel.Size = UDim2.new(1, 0, 0, 20)
                    packLeaderLabel.BackgroundTransparency = 1
                    packLeaderLabel.TextColor3 = PX.PACK_LEADER_COLOR
                    packLeaderLabel.TextStrokeTransparency = 0
                    packLeaderLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                    packLeaderLabel.Font = Enum.Font.GothamBold
                    packLeaderLabel.TextSize = PX.TEXT_SIZE; packLeaderLabel.TextScaled = false
                    packLeaderLabel.Parent = container
                end
                packLeaderLabel.Text = leaderPack ~= "" and ("LEADER [" .. leaderPack .. "]") or "PACK LEADER"
                packLeaderLabel.Visible = true
            elseif packLeaderLabel then
                packLeaderLabel.Visible = false
            end

            local packLabel = container:FindFirstChild("PackLabel")
            local packInfo = PX.PACK_ESP and PX.packMembers[player]
            if packInfo then
                if not packLabel then
                    packLabel = Instance.new("TextLabel")
                    packLabel.Name = "PackLabel"; packLabel.LayoutOrder = 1
                    packLabel.Size = UDim2.new(1, 0, 0, 18)
                    packLabel.BackgroundTransparency = 1
                    packLabel.TextColor3 = PX.PACK_ESP_COLOR
                    packLabel.TextStrokeTransparency = 0
                    packLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
                    packLabel.Font = Enum.Font.GothamMedium
                    packLabel.TextSize = PX.TEXT_SIZE; packLabel.TextScaled = false
                    packLabel.Parent = container
                end
                local txt = packInfo.name ~= "" and packInfo.name or "In Pack"
                if packInfo.count > 0 then txt = txt .. " [" .. packInfo.count .. "]" end
                packLabel.Text = txt
                packLabel.Visible = true
            elseif packLabel then
                packLabel.Visible = false
            end

            -- Info line: "<Species> | <Stage> (<growth%>) | <Gender>"
            if infoLabel then
                local parts = {}
                if PX.SHOW_DINO then table.insert(parts, character:GetAttribute("Type") or "Unknown") end
                if PX.SHOW_STAGE then
                    local stage = character:GetAttribute("Stage") or ""
                    if stage ~= "" then
                        local g = character:GetAttribute("Growth") or character:GetAttribute("GrowthPercent")
                            or character:GetAttribute("GrowthProgress")
                        if type(g) == "number" then
                            stage = stage .. " (" .. math.floor((g <= 1 and g * 100 or g) + 0.5) .. "%)"
                        end
                        table.insert(parts, stage)
                    end
                end
                if PX.SHOW_GENDER then
                    local gd = character:GetAttribute("Gender") or ""
                    if gd ~= "" then table.insert(parts, gd) end
                end
                infoLabel.Visible = #parts > 0
                if #parts > 0 then infoLabel.Text = table.concat(parts, " | ") end
            end

            -- HP bar (green) + "HP cur/max"
            local health = character:GetAttribute("Health") or 0
            local maxHealth = character:GetAttribute("MaxHealth") or 1
            if maxHealth <= 0 then maxHealth = 1 end
            local healthPct = math.clamp(health / maxHealth, 0, 1)
            local hColor = PX.getHealthColor(healthPct)
            local bleeding, bleedAmt = false, 0
            if rid then
                local bf = PX.bleedForecast[rid]
                if bf and bf > 0 then bleeding = true; bleedAmt = math.min(bf, health) end
            end
            local bleedPct = bleeding and math.clamp(bleedAmt / maxHealth, 0, healthPct) or 0
            if healthBG then
                healthBG.Visible = PX.SHOW_HEALTH
                local fill = R.hpFill
                if fill then fill.Size = UDim2.new(healthPct, 0, 1, 0); fill.BackgroundColor3 = hColor end
                local bFill = R.hpBleed
                if bFill then
                    if PX.BLEED_ESP and bleeding and PX.SHOW_HEALTH and bleedPct > 0 then
                        bFill.Position = UDim2.new(math.max(0, healthPct - bleedPct), 0, 0, 0)
                        bFill.Size = UDim2.new(bleedPct, 0, 1, 0); bFill.Visible = true
                    else bFill.Visible = false end
                end
                local ht = R.hpText
                if ht then ht.Text = "HP " .. math.floor(health) .. "/" .. math.floor(maxHealth) end
            end

            -- Stamina bar (blue) + "Stamina cur/max"
            if stamBG then
                local sc = rid and PX.staminaCur[rid]
                local show = PX.SHOW_STAMINA and type(sc) == "number"
                stamBG.Visible = show
                if show then
                    local sm = rid and PX.staminaMax[rid]
                    local maxv = (type(sm) == "number" and sm > 0) and sm or math.max(sc, 1)
                    local sFill = R.stFill
                    if sFill then sFill.Size = UDim2.new(math.clamp(sc / maxv, 0, 1), 0, 1, 0) end
                    local st = R.stText
                    if st then st.Text = "Stamina " .. math.floor(sc) ..
                        ((type(sm) == "number") and ("/" .. math.floor(maxv)) or "") end
                end
            end

            -- Food / Water / Infection: bar (sized like stamina) or just the number on the vitals line
            do
                local foodBG, waterBG, infectBG = R.foodBG, R.waterBG, R.infectBG
                local barSize = UDim2.new(PX.STAM_BAR_WIDTH, 0, 0, PX.STAM_BAR_HEIGHT)
                local barText = math.clamp(PX.STAM_BAR_HEIGHT + 2, 7, 18)
                if foodBG   then foodBG.Size   = barSize; if R.foodText   then R.foodText.TextSize   = barText end end
                if waterBG  then waterBG.Size  = barSize; if R.waterText  then R.waterText.TextSize  = barText end end
                if infectBG then infectBG.Size = barSize; if R.infectText then R.infectText.TextSize = barText end end
                local vitals = {}
                local fc, fm = rid and PX.foodCur[rid], rid and PX.foodMax[rid]
                local wc, wm = rid and PX.waterCur[rid], rid and PX.waterMax[rid]
                fm = type(fm) == "number" and fm or nil
                wm = type(wm) == "number" and wm or nil
                if type(fc) == "number" then PX.foodSeenMax[rid] = math.max(PX.foodSeenMax[rid] or 0, fc) end
                if type(wc) == "number" then PX.waterSeenMax[rid] = math.max(PX.waterSeenMax[rid] or 0, wc) end
                PX.espVital(foodBG, R.foodFill, R.foodText, vitals, "Food", fc, fm or (rid and PX.foodSeenMax[rid]), fm,
                    PX.FOOD_COLOR, PX.SHOW_FOOD_BAR, PX.SHOW_FOOD_NUM)
                PX.espVital(waterBG, R.waterFill, R.waterText, vitals, "Water", wc, wm or (rid and PX.waterSeenMax[rid]), wm,
                    PX.WATER_COLOR, PX.SHOW_WATER_BAR, PX.SHOW_WATER_NUM)
                PX.espVital(infectBG, R.infectFill, R.infectText, vitals, "Infection", rid and PX.infectCur[rid], PX.INFECT_MAX, PX.INFECT_MAX,
                    PX.INFECT_COLOR, PX.SHOW_INFECT_BAR, PX.SHOW_INFECT_NUM)
                -- Infected Tag: a dino another dino's infection attack has infected. The game marks the
                -- victim's character with an "Infection" attribute (its own client module InfectionEffect
                -- watches it to blur the screen), and attributes replicate to every client, so this is live
                -- for every dino in range. Its value names the infection (Fever, Neurological...) when it is
                -- a string. Stats.Infection is something else: the dino's own charge (Infection Bar/Number).
                if PX.SHOW_INFECTED then
                    local inf
                    pcall(function() inf = character:GetAttribute("Infection") end)
                    if inf ~= nil and inf ~= false and inf ~= "" then
                        vitals[#vitals + 1] = string.format('<font color="#%s"><b>INFECTED%s</b></font>', PX.INFECT_COLOR:ToHex(),
                            (type(inf) == "string") and (": " .. inf) or "")
                    end
                end
                local vl = R.vitalsLabel
                if vl then
                    vl.Visible = #vitals > 0
                    vl.TextSize = math.max(6, PX.TEXT_SIZE - 3); vl.Size = UDim2.new(1, 0, 0, PX.TEXT_SIZE)
                    if #vitals > 0 then vl.Text = table.concat(vitals, "  ") end
                end
                local lay = R.listLayout
                local h = lay and math.max(122, math.ceil(lay.AbsoluteContentSize.Y) + 4)
                if h and bb.Size.Y.Offset ~= h then bb.Size = UDim2.new(0, 240, 0, h) end
            end

            -- Weight: "<N> kg"
            if weightLabel then
                local wv = character:GetAttribute("Weight")
                local show = PX.SHOW_WEIGHT and type(wv) == "number"
                weightLabel.Visible = show
                if show then weightLabel.Text = math.floor(wv) .. " kg" end
            end

            -- Bleed line: "Bleed <N>" (shown while Bleed ESP is on)
            if bleedLabel then
                bleedLabel.Visible = PX.BLEED_ESP
                if PX.BLEED_ESP then bleedLabel.Text = "Bleed " .. math.floor(bleedAmt) end
            end
        end

        -- Adjust billboard height based on dino scale
        local scale = character:GetAttribute("Scale") or 1
        bb.StudsOffset = Vector3.new(0, 3 + (scale * 3), 0)
    else
        if data.billboard then
            data.billboard.Enabled = false
        end
    end

    -- === CHAMS (Highlight) ===
    if PX.CHAMS_ENABLED then
        if not data.highlight or not data.highlight.Parent then
            local hl = Instance.new("Highlight")
            hl.Name = "DinoChams"
            hl.FillColor = PX.ESP_COLOR
            hl.OutlineColor = Color3.new(1, 1, 1)
            hl.FillTransparency = PX.CHAMS_FILL_TRANSPARENCY
            hl.OutlineTransparency = PX.CHAMS_OUTLINE_TRANSPARENCY
            hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            hl.Adornee = character
            hl.Parent = character
            data.highlight = hl
        end
        data.highlight.Enabled = true
        data.highlight.FillColor = PX.ESP_COLOR
        data.highlight.FillTransparency = PX.CHAMS_FILL_TRANSPARENCY
        data.highlight.OutlineTransparency = PX.CHAMS_OUTLINE_TRANSPARENCY
    else
        if data.highlight then
            data.highlight.Enabled = false
        end
    end

    -- === TRACERS ===
    -- Drawing-only feature: on an executor without a usable Drawing library this stays
    -- off and the BillboardGui ESP (pure Instances) carries on. No freeze, no error.
    if PX.TRACERS_ENABLED and myRoot and PX.CAP.drawing then
        pcall(function()
            if not data.tracer then
                data.tracer = PX.safeDraw("Line")
                data.tracer.Thickness = 1
                data.tracer.Transparency = 1
            end
            local screenPos, onScreen = Camera:WorldToViewportPoint(root.Position)
            data.tracer.Visible = onScreen
            data.tracer.Color = PX.ESP_COLOR
            data.tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
            data.tracer.To = Vector2.new(screenPos.X, screenPos.Y)
        end)
    else
        if data.tracer then
            pcall(function() data.tracer.Visible = false end)
        end
    end
end

-- === UPDATE LOOP ===
-- One pcall around the whole sweep instead of one per player. A player erroring now costs the
-- rest of that single frame's updates rather than being isolated — but the next frame starts
-- clean, so in practice it's a frame of staleness at most.
-- A full pass costs about 0.11ms per player - fine in a small server, 15ms in a busy one (144
-- players measured), which is a 15ms hitch every third frame and the single most expensive thing
-- the hub does. The billboards are Instances parented to each dino, so they follow it on their own:
-- only their TEXT and visibility need refreshing, and that does not have to happen every frame.
-- So the sweep is spread - PX.ESP_SLICE players per run, round robin - which bounds the cost per
-- frame no matter how full the server is (each player still refreshes several times a second).
-- Tracers are the exception: those are drawn lines that must be repositioned every frame or they
-- visibly lag behind, so with tracers on the sweep stays whole.
PX.ESP_SLICE = 32
PX.espCursor = 0
PX.addStep(3, function()
    if not PX.ESP_ENABLED and not PX.CHAMS_ENABLED and not PX.TRACERS_ENABLED then return end
    local players = Players:GetPlayers()
    local n = #players
    if n == 0 then return end
    if (PX.TRACERS_ENABLED and PX.CAP.drawing) or n <= (PX.ESP_SLICE or 32) then
        for _, player in players do
            if player == LocalPlayer then continue end
            if not PX.espCache[player] then PX.createESP(player) end
            PX.updateESP(player)
        end
        return
    end
    local cursor = PX.espCursor or 0
    for _ = 1, PX.ESP_SLICE do
        cursor = cursor % n + 1
        local player = players[cursor]
        if player and player ~= LocalPlayer and player.Parent then
            if not PX.espCache[player] then PX.createESP(player) end
            PX.updateESP(player)
        end
    end
    PX.espCursor = cursor
end)

-- === CLEANUP ===
table.insert(allConnections, Players.PlayerRemoving:Connect(function(player)
    PX.destroyESP(player)
end))

-- Nothing is built here on purpose. This used to create a billboard for EVERY player the moment
-- the hub loaded - in a 144-player server that is 140+ GUIs built in one frame, a visible freeze
-- on load, and it happened even with every ESP feature switched off. The sweep above builds one
-- lazily the first time it actually updates a player, so the work only happens when ESP is on and
-- is spread across frames with the rest of the sweep.

-- === WORLD ESP SYSTEM ===
 PX.getMyRoot = PX.getLocalRoot   -- shared cache; was its own uncached lookup chain

local function createWorldBillboard(obj, labelText, color, maxDist)
    if worldESPCache[obj] then
        pcall(function() worldESPCache[obj]:Destroy() end)
    end

    local part = nil
    if obj:IsA("BasePart") then
        part = obj
    elseif obj:IsA("Model") then
        part = obj:FindFirstChild("Body")
            or obj.PrimaryPart
            or obj:FindFirstChild("HumanoidRootPart")
        if not part then
            for _, child in obj:GetChildren() do
                if child:IsA("BasePart") and child.Name ~= "MouthPart" and child.Name ~= "HitBox" and child.Name ~= "CameraPart" then
                    part = child
                    break
                end
            end
        end
        if not part then
            part = obj:FindFirstChildWhichIsA("BasePart", true)
        end
    end
    if not part then return end

    local bb = Instance.new("BillboardGui")
    bb.Name = "WorldESP"
    bb.Size = UDim2.new(0, 150, 0, 40)
    bb.StudsOffset = Vector3.new(0, 3, 0)
    bb.AlwaysOnTop = true
    bb.LightInfluence = 0
    bb.MaxDistance = maxDist

    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(1, 0, 0, PX.WORLD_TEXT_SIZE + 2)
    label.Position = UDim2.new(0, 0, 0, 0)
    label.BackgroundColor3 = Color3.new(0, 0, 0)
    label.BackgroundTransparency = 1
    label.TextColor3 = color
    label.TextStrokeTransparency = 0
    label.TextStrokeColor3 = Color3.new(0, 0, 0)
    label.Font = Enum.Font.GothamBold
    label.TextSize = PX.WORLD_TEXT_SIZE
    label.TextScaled = false
    label.Text = labelText
    label.Parent = bb

    local distLabel = Instance.new("TextLabel")
    distLabel.Name = "DistLabel"
    distLabel.Size = UDim2.new(1, 0, 0, PX.WORLD_TEXT_SIZE)
    distLabel.Position = UDim2.new(0, 0, 0, PX.WORLD_TEXT_SIZE + 2)
    distLabel.BackgroundColor3 = Color3.new(0, 0, 0)
    distLabel.BackgroundTransparency = 1
    distLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    distLabel.TextStrokeTransparency = 0
    distLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    distLabel.Font = Enum.Font.Gotham
    distLabel.TextSize = PX.WORLD_TEXT_SIZE - 2
    distLabel.TextScaled = false
    distLabel.Text = "0 studs"
    distLabel.Parent = bb

    bb.Parent = part
    worldESPCache[obj] = bb
    return bb
end

 function PX.destroyWorldESP(obj)
    local bb = worldESPCache[obj]
    if bb then
        pcall(function() bb:Destroy() end)
        worldESPCache[obj] = nil
    end
end

 function PX.clearWorldESPByParent(parent)
    for obj, bb in pairs(worldESPCache) do
        if obj:IsDescendantOf(parent) or obj == parent then
            pcall(function() bb:Destroy() end)
            worldESPCache[obj] = nil
        end
    end
end

 function PX.getFossilSize(fossilModel)
    for _, child in fossilModel:GetChildren() do
        if child:IsA("BasePart") then
            local n = child.Name
            if n == "FossilS" then return "S"
            elseif n == "FossilM" then return "M"
            elseif n == "FossilL" then return "L"
            elseif n == "Sphere" then return "Rare"
            end
        end
    end
    return "?"
end

 function PX.getFossilColor(size)
    if size == "S" then return PX.FOSSIL_COLOR_S
    elseif size == "M" then return PX.FOSSIL_COLOR_M
    elseif size == "L" then return PX.FOSSIL_COLOR_L
    end
    return PX.FOSSIL_COLOR_M
end

 function PX.isFossilEnabled(size)
    if size == "S" then return PX.FOSSIL_SMALL
    elseif size == "M" then return PX.FOSSIL_MEDIUM
    elseif size == "L" then return PX.FOSSIL_LARGE
    end
    return false
end

function PX.fossilDistance(size)
    if size == "S" then return PX.FOSSIL_DIST_SMALL end
    if size == "L" then return PX.FOSSIL_DIST_LARGE end
    return PX.FOSSIL_DIST_MEDIUM
end

local function getCorpseInfo(corpseModel)
    local dinoType, stage, gender, weight
    for _, childName in ipairs({"MeshModel", "Visual"}) do
        local child = corpseModel:FindFirstChild(childName)
        if child then
            dinoType = dinoType or child:GetAttribute("Type")
            stage = stage or child:GetAttribute("Stage")
            gender = gender or child:GetAttribute("Gender")
            weight = weight or child:GetAttribute("Weight")
        end
    end
    dinoType = dinoType or corpseModel:GetAttribute("Species") or corpseModel:GetAttribute("Type")
    stage = stage or corpseModel:GetAttribute("DinoStage") or corpseModel:GetAttribute("Stage")
    gender = gender or corpseModel:GetAttribute("Gender")
    weight = weight or corpseModel:GetAttribute("Weight")
    if not weight then
        local physics = corpseModel:FindFirstChild("Physics")
        if physics then weight = physics:GetAttribute("Weight") end
    end
    -- This used to gather all four fields and then `return "Corpse"`, discarding every one of them —
    -- so the label was a constant and the lookup above was dead code. Corpses live as models named
    -- "Host" under CharacterIgnore.Ragdolls, which makes an unlabelled marker genuinely useless:
    -- you cannot tell a picked-clean adult from a fresh one without the weight.
    local label = "Corpse"
    if dinoType then label = tostring(dinoType) end
    if stage then label = label .. " [" .. tostring(stage) .. "]" end
    if gender then label = label .. " " .. (tostring(gender):sub(1, 1)) end
    local wnum = tonumber(weight)
    if wnum then label = label .. "  " .. string.format("%.0f", wnum) .. "kg" end
    return label
end

 function PX.getMeatWeight(meatObj)
    local weight = nil
    pcall(function()
        weight = meatObj:GetAttribute("Weight") or meatObj:GetAttribute("Meat") or meatObj:GetAttribute("Food")
    end)
    if not weight then
        for _, child in meatObj:GetChildren() do
            pcall(function()
                if child:IsA("NumberValue") and (child.Name:lower():find("weight") or child.Name:lower():find("meat") or child.Name:lower():find("food")) then
                    weight = child.Value
                end
            end)
        end
    end
    return weight
end

 function PX.processFolder(folder, labelPrefix, color, maxDist)
    if not folder then return end
    for _, child in folder:GetChildren() do
        if worldESPCache[child] then continue end
        local name = labelPrefix
        if child:IsA("Model") then
            local dinoType = child:GetAttribute("Type")
            if dinoType then
                name = labelPrefix .. " [" .. dinoType .. "]"
            else
                name = labelPrefix .. " [" .. child.Name .. "]"
            end
        elseif child:IsA("BasePart") then
            name = labelPrefix .. " [" .. child.Name .. "]"
        end
        createWorldBillboard(child, name, color, maxDist)
    end
end

-- The per-object anchor part is stable for the lifetime of the billboard, so it's resolved once
-- at creation and stored alongside it instead of being re-derived (FindFirstChild chain +
-- a recursive FindFirstChildWhichIsA) for every tracked object, every update.
PX.worldESPPart = setmetatable({}, { __mode = "k" })

function PX.worldESPAnchor(obj)
    local cached = PX.worldESPPart[obj]
    if cached and cached.Parent then return cached end
    local part
    if obj:IsA("BasePart") then
        part = obj
    elseif obj:IsA("Model") then
        part = obj:FindFirstChild("Body")
            or obj.PrimaryPart
            or obj:FindFirstChild("HumanoidRootPart")
            or obj:FindFirstChildWhichIsA("BasePart", true)
    end
    PX.worldESPPart[obj] = part
    return part
end

-- ── Corpse rot / infection line ──
-- When a corpse or meat chunk rots, and once it has, how much infection one bite gives YOUR dino.
-- Fresh corpses and meat give NO infection: without rotten settings GetInfectionGain returns only the
-- diet's own multiplier, which never applies in play. Rotten ones give the game's own formula
-- (GetRottenSettings.GetInfectionGain = rotten InfectionGainTick x your diet category's InfectionGain).
-- Only corpses and meat rot; plants, eggs, nests and bones never do. Dino corpses rot at half their
-- lifetime, timed from CreatedAt the way the game's investigation panel does it.
-- Details: Info Dumps/Game State/immunity-infection.md
function PX.infectionMods()
    if PX.infMods == nil then
        PX.infMods = false
        pcall(function()
            local rs = game:GetService("ReplicatedStorage")
            PX.infMods = {
                rotten = PX.req(rs.Modules.Consumption.GetRottenSettings),
                life = PX.req(rs.Modules.Consumption.GetCorpseLifetime),
                infect = PX.req(rs.Modules.Combat.GetInfectionSettings),
                data = PX.req(rs.Shared.ConsumptionData),
            }
        end)
    end
    return PX.infMods or nil
end

-- ESP labels sit on the corpse "Host" model or the meat part; CorpseData knows them by their Root.
function PX.infectionIndex()
    local now = os.clock()
    if PX.infIndex and now - (PX.infIndexT or 0) < 2 then return PX.infIndex end
    local idx = {}
    pcall(function()
        for _, data in pairs(PX.getCC().CorpseData) do
            local r = data and data.Root
            if r then
                idx[r] = data
                local p = r.Parent
                if p and p:IsA("Model") then
                    idx[p] = data
                    if p.Parent and p.Parent:IsA("Model") then idx[p.Parent] = data end
                end
            end
        end
    end)
    PX.infIndex, PX.infIndexT = idx, now
    return idx
end

-- Rot settings for a corpse or meat chunk. Dino corpses carry them on their consumable action. Meat
-- chunks do not (CorpseConsumables.Meat has no Rotten table), but they are named "Meat" + the dino's
-- species or corpse type ("MeatSauropod", "MeatApatosaurus"), and the game's own GetRottenSettings
-- resolves that once the prefix is off: FromCorpseName for a species, FromCorpseType for a type.
-- Both return nil for "Meat" itself. Cached per name.
function PX.rotSettingsFor(M, name, ctype, action)
    if action and action.Rotten then return action.Rotten end
    PX.rotSet = PX.rotSet or {}
    local hit = PX.rotSet[name]
    if hit ~= nil then return hit or nil end
    local base = (name:sub(1, 4) == "Meat") and name:sub(5) or name
    local s
    pcall(function() s = M.rotten.FromCorpseName(base) end)
    if not s then pcall(function() s = M.rotten.FromCorpseType(base) end) end
    if not s and ctype and ctype ~= "Meat" then pcall(function() s = M.rotten.FromCorpseType(ctype) end) end
    PX.rotSet[name] = s or false
    return s
end

-- The server's own verdict, which the game recolours rotten meat by: a Rotting attribute on the meat
-- part itself, or on a dino corpse's Host model two levels above its Root. nil when there is none.
function PX.rottingFlag(r)
    local node = r
    for _ = 1, 3 do
        if not node then return nil end
        local v = node:GetAttribute("Rotting")
        if type(v) == "boolean" then return v end
        node = node.Parent
    end
    return nil
end

-- "2:30" under ten minutes, "35m" under an hour, "1h05m" beyond.
function PX.rotClock(secs)
    secs = math.max(0, math.floor(secs))
    if secs >= 3600 then return math.floor(secs / 3600) .. "h" .. string.format("%02d", math.floor(secs % 3600 / 60)) .. "m" end
    if secs >= 600 then return math.floor(secs / 60) .. "m" end
    return math.floor(secs / 60) .. ":" .. string.format("%02d", secs % 60)
end

-- The line's text, and whether it has rotted (the caller colours it by that).
function PX.infectionLine(obj)
    local data = PX.infectionIndex()[obj]
    local M = data and PX.infectionMods()
    if not M then return nil end
    local name = tostring(data.Name or "")
    local ctype = (name:sub(1, 4) == "Meat") and "Meat" or (M.data.CorpseTypes and M.data.CorpseTypes[name])
    local entry = ctype and M.data.CorpseConsumables and M.data.CorpseConsumables[ctype]
    local action = entry and entry.Actions and entry.Actions[1]
    if not action then return nil end
    local rotSettings = PX.rotSettingsFor(M, name, ctype, action)
    local r = data.Root
    local rotten = PX.rottingFlag(r)
    local rotIn
    local holder = r and ((r:GetAttribute("CreatedAt") ~= nil and r) or r.Parent)
    local created = holder and holder:GetAttribute("CreatedAt")
    local weight = tonumber(data.Weight) or (holder and tonumber(holder:GetAttribute("Weight")))
    if rotSettings and type(created) == "number" and weight and weight > 0 then
        -- Rotten at ConsumptionData.RotStart % of the lifetime (75): the moment the game's own "Decomposes
        -- in" counts down to. GetRotTime answers the rot settings' StateChange point (50 %), which ran out
        -- well before the game's timer and read "rotting now" on meat that was still fresh.
        local life = M.life.FromWeight(weight)
        local rotAt = (tonumber(M.data.RotStart) and life * tonumber(M.data.RotStart) / 100)
            or M.rotten.GetRotTime(rotSettings, life)
        local age = tick() - created
        if rotten == nil then rotten = age >= rotAt end
        if not rotten then
            rotIn = rotAt - age
            if rotIn <= 0 then rotten = true end   -- the countdown ran out: rotten, not "rotting now"
        end
    end
    if rotten == nil then return nil end   -- nothing says whether it rots (bones, and the like)
    local myType = LocalPlayer.Character and LocalPlayer.Character:GetAttribute("Type")
    local own = myType and name == tostring(myType)
    if not rotten then
        -- Fresh: no infection yet, so the countdown to rotten is the whole story.
        local text = rotIn and ("rotten in " .. PX.rotClock(rotIn)) or "fresh"
        return own and (text .. " | own species, can't eat") or text, false
    end
    local text = "ROTTEN"
    if own then return text .. " | own species, can't eat", true end
    local CS = PX.getCS()
    if rotSettings and CS and CS.Data and CS.Data.Diet and CS.Replica then
        local gain = M.rotten.GetInfectionGain(rotSettings, CS.Data.Diet, action.Category)
        if type(gain) == "number" and gain > 0 then   -- a diet that cannot eat this gets none
            local need = tonumber(M.infect.GetRequiredAmount()) or 100
            local meter = tonumber(CS.Replica.Data.Stats.Infection) or 0
            text = text .. " | +" .. (math.floor(gain / need * 10000 + 0.5) / 100) .. "% infection/bite"
            if meter >= need then
                text = text .. " | meter full"
            else
                text = text .. " | " .. math.ceil((need - meter) / gain) .. " to full"
            end
        end
    end
    return text, true
end

 function PX.updateWorldESPDistances()
    local myRoot = PX.getMyRoot()
    if not myRoot then return end
    local myPos = myRoot.Position
    -- One pcall for the whole sweep rather than one per tracked object.
    pcall(function()
        for obj, bb in pairs(worldESPCache) do
            if not obj.Parent then
                PX.destroyWorldESP(obj)
                continue
            end
            local part = PX.worldESPAnchor(obj)
            if not part then continue end
            local dist = (myPos - part.Position).Magnitude
            local lbl = bb:FindFirstChild("Label")
            local distLabel = bb:FindFirstChild("DistLabel")
            if lbl then
                lbl.BackgroundTransparency = 1
                lbl.TextSize = PX.WORLD_TEXT_SIZE
                lbl.Size = UDim2.new(1, 0, 0, PX.WORLD_TEXT_SIZE + 2)
                if PX.TEXT_HIGHLIGHT then
                    lbl.TextColor3 = Color3.new(1, 1, 1)
                    lbl.TextStrokeTransparency = 0
                end
            end
            if distLabel then
                distLabel.Text = math.floor(dist) .. " studs"
                distLabel.BackgroundTransparency = 1
                distLabel.TextSize = PX.WORLD_TEXT_SIZE - 2
                distLabel.Size = UDim2.new(1, 0, 0, PX.WORLD_TEXT_SIZE)
                distLabel.Position = UDim2.new(0, 0, 0, PX.WORLD_TEXT_SIZE + 2)
                if PX.TEXT_HIGHLIGHT then
                    distLabel.TextColor3 = Color3.new(1, 1, 1)
                    distLabel.TextStrokeTransparency = 0
                end
            end
            -- Rot / infection line: only on corpses and meat. A countdown while fresh, then ROTTEN in
            -- its own colour, with the infection per bite for dinos that build it.
            local inf = bb:FindFirstChild("InfLabel")
            local okInf, infText, infRotten = false, nil, false
            if PX.CORPSE_INF_ESP then okInf, infText, infRotten = pcall(PX.infectionLine, obj) end
            if okInf and infText then
                if not inf then
                    inf = Instance.new("TextLabel")
                    inf.Name = "InfLabel"
                    inf.BackgroundTransparency = 1
                    inf.TextStrokeTransparency = 0
                    inf.TextStrokeColor3 = Color3.new(0, 0, 0)
                    inf.Font = Enum.Font.GothamBold
                    inf.Parent = bb
                end
                inf.Text = infText
                inf.TextColor3 = PX.TEXT_HIGHLIGHT and Color3.new(1, 1, 1) or (infRotten and PX.ROT_COLOR or PX.INFECT_COLOR)
                inf.TextSize = PX.WORLD_TEXT_SIZE - 2
                inf.Size = UDim2.new(1, 0, 0, PX.WORLD_TEXT_SIZE)
                inf.Position = UDim2.new(0, 0, 0, PX.WORLD_TEXT_SIZE * 2 + 2)
                bb.Size = UDim2.new(0, 260, 0, PX.WORLD_TEXT_SIZE * 3 + 4)
            elseif inf then
                inf:Destroy()
                bb.Size = UDim2.new(0, 150, 0, 40)
            end
        end
    end)
end

local function refreshWorldESP()
    -- Clear all world ESP first
    for obj, bb in pairs(worldESPCache) do
        pcall(function() bb:Destroy() end)
    end
    worldESPCache = {}

    -- Corpses: dead players + ragdolls
    if PX.CORPSE_ESP then
        pcall(function()
            local leftChars = workspace:FindFirstChild("CharacterIgnore") and workspace.CharacterIgnore:FindFirstChild("LeftCharacters")
            if leftChars then
                for _, child in leftChars:GetChildren() do
                    if worldESPCache[child] then continue end
                    local info = getCorpseInfo(child)
                    createWorldBillboard(child, info, PX.CORPSE_COLOR, PX.CORPSE_DISTANCE)
                end
            end
        end)
        pcall(function()
            local ragdolls = workspace:FindFirstChild("DinosaurRagdolls")
            if ragdolls then
                for _, child in ragdolls:GetChildren() do
                    if worldESPCache[child] then continue end
                    local info = getCorpseInfo(child)
                    createWorldBillboard(child, info, PX.CORPSE_COLOR, PX.CORPSE_DISTANCE)
                end
            end
        end)
        pcall(function()
            local ragdolls2 = workspace:FindFirstChild("Ragdolls")
            if ragdolls2 then
                for _, child in ragdolls2:GetChildren() do
                    if worldESPCache[child] then continue end
                    local info = getCorpseInfo(child)
                    createWorldBillboard(child, info, PX.CORPSE_COLOR, PX.CORPSE_DISTANCE)
                end
            end
        end)
        pcall(function()
            local aiRagdolls = workspace:FindFirstChild("AIRagdolls")
            if aiRagdolls then
                for _, child in aiRagdolls:GetChildren() do
                    if worldESPCache[child] then continue end
                    local info = getCorpseInfo(child)
                    createWorldBillboard(child, info, PX.CORPSE_COLOR, PX.CORPSE_DISTANCE)
                end
            end
        end)
        pcall(function()
            local ragStore = workspace:FindFirstChild("RagdollStorage")
            if ragStore then
                for _, child in ragStore:GetChildren() do
                    if worldESPCache[child] then continue end
                    local info = getCorpseInfo(child)
                    createWorldBillboard(child, info, PX.CORPSE_COLOR, PX.CORPSE_DISTANCE)
                end
            end
        end)
        pcall(function()
            local grabbed = workspace:FindFirstChild("GrabbedRagdolls")
            if grabbed then
                for _, child in grabbed:GetChildren() do
                    if worldESPCache[child] then continue end
                    local info = getCorpseInfo(child)
                    createWorldBillboard(child, info, PX.CORPSE_COLOR, PX.CORPSE_DISTANCE)
                end
            end
        end)
        pcall(function()
            local charIgnore = workspace:FindFirstChild("CharacterIgnore")
            if charIgnore then
                local ciRagdolls = charIgnore:FindFirstChild("Ragdolls")
                if ciRagdolls then
                    for _, child in ciRagdolls:GetChildren() do
                        if worldESPCache[child] then continue end
                        local info = getCorpseInfo(child)
                        createWorldBillboard(child, info, PX.CORPSE_COLOR, PX.CORPSE_DISTANCE)
                    end
                end
            end
        end)
    end

    -- Fossils (by size)
    pcall(function()
        local fossils = workspace:FindFirstChild("SpawnedFossils")
        if fossils then
            for _, child in fossils:GetChildren() do
                if worldESPCache[child] then continue end
                local size = PX.getFossilSize(child)
                if PX.isFossilEnabled(size) then
                    local sizeNames = {S = "Small", M = "Medium", L = "Large"}
                    local label = "Fossil (" .. (sizeNames[size] or size) .. ")"
                    createWorldBillboard(child, label, PX.getFossilColor(size), PX.fossilDistance(size))
                end
            end
        end
    end)


    -- Meat/Food
    if PX.MEAT_ESP then
        pcall(function()
            local spawnedMeat = workspace:FindFirstChild("CharacterIgnore") and workspace.CharacterIgnore:FindFirstChild("SpawnedMeat")
            if spawnedMeat then
                for _, child in spawnedMeat:GetChildren() do
                    if worldESPCache[child] then continue end
                    local label = "Meat"
                    createWorldBillboard(child, label, PX.MEAT_COLOR, PX.MEAT_DISTANCE)
                end
            end
        end)
        pcall(function()
            local food = workspace:FindFirstChild("Food")
            if food then
                local meat = food:FindFirstChild("Meat")
                if meat then
                    for _, child in meat:GetChildren() do
                        if worldESPCache[child] then continue end
                        local label = "Meat"
                        createWorldBillboard(child, label, PX.MEAT_COLOR, PX.MEAT_DISTANCE)
                    end
                end
                local collected = food:FindFirstChild("CollectedMeat")
                if collected then
                    for _, child in collected:GetChildren() do
                        if worldESPCache[child] then continue end
                        local label = "Meat"
                        createWorldBillboard(child, label, PX.MEAT_COLOR, PX.MEAT_DISTANCE)
                    end
                end
            end
        end)
    end

    -- Clay deposits (immunity boost)
    if PX.CLAY_ESP then
        pcall(function()
            local baths = workspace:FindFirstChild("Baths")
            local clay = baths and baths:FindFirstChild("ClayDeposits")
            if clay then
                for _, child in clay:GetChildren() do
                    if worldESPCache[child] then continue end
                    createWorldBillboard(child, "Clay Deposit", PX.CLAY_COLOR, PX.CLAY_DISTANCE)
                end
            end
        end)
    end
end

-- Watch for new world objects spawning in key folders
local function watchFolder(folderName, parentPath)
    pcall(function()
        local parent = workspace
        if parentPath then
            for _, name in ipairs(parentPath) do
                parent = parent:FindFirstChild(name)
                if not parent then return end
            end
        end
        local folder = parent:FindFirstChild(folderName)
        if not folder then return end

        table.insert(allConnections, folder.ChildAdded:Connect(function(child)
            task.wait(0.5)
            local corpseFolders = {LeftCharacters=true, DinosaurRagdolls=true, Ragdolls=true, AIRagdolls=true, RagdollStorage=true, GrabbedRagdolls=true}
            if PX.CORPSE_ESP and corpseFolders[folderName] then
                local info = getCorpseInfo(child)
                createWorldBillboard(child, info, PX.CORPSE_COLOR, PX.CORPSE_DISTANCE)
            end
            if folderName == "SpawnedFossils" then
                local size = PX.getFossilSize(child)
                if PX.isFossilEnabled(size) then
                    local sizeNames = {S = "Small", M = "Medium", L = "Large"}
                    local label = "Fossil (" .. (sizeNames[size] or size) .. ")"
                    createWorldBillboard(child, label, PX.getFossilColor(size), PX.fossilDistance(size))
                end
            end
            if PX.MEAT_ESP and (folderName == "SpawnedMeat" or folderName == "Meat" or folderName == "CollectedMeat") then
                local label = "Meat"
                createWorldBillboard(child, label, PX.MEAT_COLOR, PX.MEAT_DISTANCE)
            end
            if PX.CLAY_ESP and folderName == "ClayDeposits" then
                createWorldBillboard(child, "Clay Deposit", PX.CLAY_COLOR, PX.CLAY_DISTANCE)
            end
        end))

        table.insert(allConnections, folder.ChildRemoved:Connect(function(child)
            PX.destroyWorldESP(child)
        end))
    end)
end

watchFolder("LeftCharacters", {"CharacterIgnore"})
watchFolder("DinosaurRagdolls")
watchFolder("Ragdolls")
watchFolder("AIRagdolls")
watchFolder("RagdollStorage")
watchFolder("GrabbedRagdolls")
watchFolder("Ragdolls", {"CharacterIgnore"})
watchFolder("SpawnedFossils")
watchFolder("SpawnedMeat", {"CharacterIgnore"})
watchFolder("Meat", {"Food"})
watchFolder("CollectedMeat", {"Food"})
watchFolder("ClayDeposits", {"Baths"})

-- Update world ESP distances (throttled)
PX.addStep(5, function()
    if not PX.CORPSE_ESP and not PX.FOSSIL_SMALL and not PX.FOSSIL_MEDIUM and not PX.FOSSIL_LARGE and not PX.MEAT_ESP and not PX.CLAY_ESP then return end
    PX.updateWorldESPDistances()
end)

-- ═══════════════════════════════════════
-- MINIMAP MARKERS  (dots on the game's own map)
-- ═══════════════════════════════════════
-- Draws players / corpses / fossils onto the in-game minimap AND the expanded map.
--
-- WHY THIS DOES NO PROJECTION MATHS OF ITS OWN. The map is not an image — it is
-- MapGui.Mini.ViewportFrame, a live 3D render (a Camera over a MapParts model), with a separate
-- 2D marker layer at Mini.Tags.CanvasGroup. Reverse-engineering a world->pixel transform for that
-- was possible (a least-squares fit against the Location_* labels lands inside 1px), but
-- unnecessary: PlayerScripts.Client.Gui.MapGui already exposes the two functions the game itself
-- uses to place its markers —
--     mapObj:GetTagPosition(worldPos)    -> pixel offset inside the mini viewport
--     mapObj:TransformPosition(worldPos) -> UDim2 inside the expanded map
--     mapObj:GetDistanceFromCenter(px)   -> used to cull markers outside the circle
-- Calling those instead of re-deriving them means ZOOM, HEADING ROTATION, DRAGGING THE MAP AROUND
-- THE SCREEN, and EXPAND/COLLAPSE all need no handling here at all. None of them are events we
-- detect; the game's own functions simply return different numbers and the dots follow.
--
-- The dots are parented INTO the map's own containers (TagsFrame / ExpandedDetails) and positioned
-- with relative offsets, exactly as the game positions its Location labels. That is what makes
-- dragging the map free: the dots are children of the thing being dragged.
--
-- Deliberately NOT reusing worldESPCache: that table is only populated while the matching ESP
-- toggle is on, so minimap fossils would silently depend on Fossil ESP being enabled. This walks
-- the same specific folders the ESP watchers use — never a workspace-wide descendant scan.
PX.MMAP_ON = false               -- master switch; the three below choose which dots it draws
PX.MMAP_PLAYERS = true
PX.MMAP_CORPSES = true
PX.MMAP_FOSSILS = true
PX.MMAP_COLOR_PLAYER = Color3.fromRGB(60, 255, 90)
PX.MMAP_COLOR_CORPSE = Color3.fromRGB(255, 60, 60)
PX.MMAP_COLOR_FOSSIL = Color3.fromRGB(190, 190, 190)
PX.MMAP_DOT = 7                  -- dot diameter in pixels
PX.MMAP_MAX = 120                -- pool ceiling; nearest N are drawn, the rest are dropped
PX.mmapPool = {}
PX.mmapShown = 0

-- Same folders the world-ESP watchers cover, in the same order.
PX.MMAP_CORPSE_FOLDERS = {
    { "CharacterIgnore", "LeftCharacters" },
    { "DinosaurRagdolls" },
    { "Ragdolls" },
    { "AIRagdolls" },
    { "RagdollStorage" },
    { "GrabbedRagdolls" },
    { "CharacterIgnore", "Ragdolls" },
}

function PX.mmapFolder(path)
    local cur = workspace
    for _, n in ipairs(path) do
        cur = cur:FindFirstChild(n)
        if not cur then return nil end
    end
    return cur
end

-- Locate the live MapGui object. It is a plain class instance, not a Knit controller, so there is
-- no clean accessor — getgc is the way in. That walks ~1M objects, so the result is cached and a
-- failed search backs off for a few seconds rather than retrying every frame.
--
-- rawget for the field test on purpose: it cannot fire a metamethod, so it is safe to run against
-- a million unknown tables without a pcall around each one. Only the handful that pass all three
-- field checks pay for the method probe.
function PX.mmapFind()
    local m = PX.mmapCache
    if m then
        local ok, alive = pcall(function()
            local tf = rawget(m, "TagsFrame")
            return tf ~= nil and tf.Parent ~= nil
        end)
        if ok and alive then return m end
        PX.mmapCache = nil        -- map GUI was rebuilt (respawn) — our dots died with it
    end

    local now = os.clock()
    if PX.mmapNextScan and now < PX.mmapNextScan then return nil end
    PX.mmapNextScan = now + 3
    if not PX.CAP.filtergc then return nil end

    -- On Xeno only: time the call and, if it is slow (a Lua-side walk of ~1M objects freezes
    -- the main thread for seconds every time), disable the GC route for good - the minimap then
    -- simply never finds its GUI and stays off, instead of hitching the whole game every 3s.
    -- Every other executor keeps scanning, however long one scan took.
    local found
    local t0 = os.clock()
    pcall(function()
        found = filtergc("table", {Keys = {"TagsFrame", "Tags", "Viewport"}}, true)
    end)
    if PX.IS_XENO and os.clock() - t0 > 0.05 then PX.CAP.filtergc = false end
    PX.mmapCache = found
    return found
end

-- AnchorPoint 0.5 so the dot's CENTRE lands on the projected point. The game's own markers use
-- the default (0,0) anchor, which puts their top-left corner on the point and leaves them sitting
-- half an icon down-and-right of where they claim to be. Matching that would import the error.
function PX.mmapMakeDot(parent)
    local d = Instance.new("Frame")
    d.Name = "EZ_Dot"
    d.AnchorPoint = Vector2.new(0.5, 0.5)
    d.BorderSizePixel = 0
    d.BackgroundColor3 = Color3.new(1, 1, 1)
    d.Size = UDim2.fromOffset(PX.MMAP_DOT, PX.MMAP_DOT)
    d.ZIndex = 9                 -- the game's marker templates sit at 8
    d.Visible = false
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(1, 0)
    c.Parent = d
    d.Parent = parent
    return d
end

function PX.mmapDestroyPool()
    for _, e in ipairs(PX.mmapPool) do
        pcall(function() if e.mini then e.mini:Destroy() end end)
        pcall(function() if e.exp then e.exp:Destroy() end end)
    end
    PX.mmapPool = {}
    PX.mmapShown = 0
end

function PX.mmapHideAll()
    for _, e in ipairs(PX.mmapPool) do
        if e.mini then e.mini.Visible = false end
        if e.exp then e.exp.Visible = false end
    end
    PX.mmapShown = 0
end

function PX.mmapEnsure(n, mapObj)
    local pool = PX.mmapPool
    local tagsFrame = rawget(mapObj, "TagsFrame")
    local expDetails = rawget(mapObj, "ExpandedDetails")
    while #pool < n do
        local e = {}
        if tagsFrame then e.mini = PX.mmapMakeDot(tagsFrame) end
        if expDetails then e.exp = PX.mmapMakeDot(expDetails) end
        pool[#pool + 1] = e
    end
end

-- Rebuild the draw list. Throttled by the caller — object positions do not need re-reading at the
-- rate the dots are repositioned.
function PX.mmapCollect()
    local list = {}
    local myRoot = PX.getLocalRoot()
    local myPos = myRoot and myRoot.Position or Vector3.zero

    local function add(pos, color)
        list[#list + 1] = { pos = pos, color = color, d = (pos - myPos).Magnitude }
    end

    if PX.MMAP_PLAYERS then
        pcall(function()
            for _, plr in ipairs(Players:GetPlayers()) do
                if plr ~= LocalPlayer then
                    local ch = plr.Character
                    local r = ch and PX.getRootOf(ch, false)
                    if r then add(r.Position, PX.MMAP_COLOR_PLAYER) end
                end
            end
        end)
    end

    if PX.MMAP_CORPSES then
        for _, path in ipairs(PX.MMAP_CORPSE_FOLDERS) do
            pcall(function()
                local f = PX.mmapFolder(path)
                if not f then return end
                for _, c in ipairs(f:GetChildren()) do
                    local p = PX.worldESPAnchor(c)
                    if p then add(p.Position, PX.MMAP_COLOR_CORPSE) end
                end
            end)
        end
    end

    if PX.MMAP_FOSSILS then
        pcall(function()
            local f = workspace:FindFirstChild("SpawnedFossils")
            if not f then return end
            for _, c in ipairs(f:GetChildren()) do
                local p = PX.worldESPAnchor(c)
                if p then add(p.Position, PX.MMAP_COLOR_FOSSIL) end
            end
        end)
    end

    -- Nearest-first, so the pool ceiling drops the far ones rather than an arbitrary slice.
    -- Distance is precomputed above; sorting on a stored field avoids recomputing magnitudes
    -- inside the comparator, which is where a naive sort of a few hundred entries gets expensive.
    if #list > PX.MMAP_MAX then
        table.sort(list, function(a, b) return a.d < b.d end)
    end
    PX.mmapList = list
end

function PX.mmapStep()
    if PX.UNLOADED then return end
    if not PX.MMAP_ON or not (PX.MMAP_PLAYERS or PX.MMAP_CORPSES or PX.MMAP_FOSSILS) then
        if PX.mmapShown > 0 then PX.mmapHideAll() end
        return
    end

    local mapObj = PX.mmapFind()
    if not mapObj then return end
    -- A different instance means the map GUI was rebuilt; the old dots are already gone with it.
    if PX.mmapBoundTo ~= mapObj then
        PX.mmapPool = {}
        PX.mmapShown = 0
        PX.mmapBoundTo = mapObj
    end

    PX.mmapTick = (PX.mmapTick or 0) + 1
    if not PX.mmapList or PX.mmapTick % 5 == 1 then PX.mmapCollect() end

    local list = PX.mmapList
    if not list then return end
    local n = math.min(#list, PX.MMAP_MAX)
    PX.mmapEnsure(n, mapObj)

    local mini     = rawget(mapObj, "Mini")
    local expanded = rawget(mapObj, "Expanded")
    local vp       = rawget(mapObj, "Viewport")
    local miniOn   = mini and mini.Visible
    -- The expanded map is not laid out while hidden, so its projection returns nonsense until it
    -- is actually open. Gate on Visible rather than trusting the numbers.
    local expOn    = expanded and expanded.Visible
    local radius   = 0
    pcall(function() if vp then radius = vp.AbsoluteSize.X * 0.5 end end)

    -- Resolve the three projection methods ONCE per frame. The old form allocated a fresh closure
    -- for every dot every frame (up to MMAP_MAX dots at ~20Hz) just to make the pcall — pure GC
    -- churn. Passing the method value + args to pcall is closure-free and keeps multi-return.
    local mGetTag, mGetDist, mTransform
    pcall(function()
        mGetTag = mapObj.GetTagPosition
        mGetDist = mapObj.GetDistanceFromCenter
        mTransform = mapObj.TransformPosition
    end)

    for i = 1, n do
        local item = list[i]
        local e = PX.mmapPool[i]
        if e then
            if e.mini then
                if miniOn then
                    local ok, tp
                    if mGetTag then ok, tp = pcall(mGetTag, mapObj, item.pos) end
                    if ok and tp then
                        e.mini.Position = UDim2.fromOffset(tp.X, tp.Y)
                        e.mini.BackgroundColor3 = item.color
                        local okd, dist
                        if mGetDist then okd, dist = pcall(mGetDist, mapObj, tp) end
                        -- Radial cull, not a rectangular clip: the minimap is a circle, and
                        -- ClipsDescendants would leave dots visible in the corners.
                        e.mini.Visible = (not okd) or (dist <= radius)
                    else
                        e.mini.Visible = false
                    end
                else
                    e.mini.Visible = false
                end
            end
            if e.exp then
                if expOn then
                    local ok, ep
                    if mTransform then ok, ep = pcall(mTransform, mapObj, item.pos) end
                    if ok and ep then
                        e.exp.Position = ep
                        e.exp.BackgroundColor3 = item.color
                        e.exp.Visible = true
                    else
                        e.exp.Visible = false
                    end
                else
                    e.exp.Visible = false
                end
            end
        end
    end

    for i = n + 1, #PX.mmapPool do
        local e = PX.mmapPool[i]
        if e.mini then e.mini.Visible = false end
        if e.exp then e.exp.Visible = false end
    end
    PX.mmapShown = n
end

-- Every third frame (~20Hz) is smooth for a map this size, and the collect pass inside runs at a
-- fifth of that again.
PX.addStep(3, PX.mmapStep)

-- === HITBOX EXPANDER SYSTEM ===
-- How the game detects hits (confirmed by decompiling PVP + CreateHitbox):
--   Each attack frame, YOUR client runs workspace:GetPartsInPart(yourAttackHitbox, ...) and
--   for every overlapping part calls hitDetected, which:
--     * ignores parts with NO "Group" attribute
--     * ignores parts that HAVE a "Link" attribute
--     * then fires the hit to the server via the victim's ReplicaService replica.
--   Detection only sees parts with CanQuery = true.
-- So to force hits, we enlarge the VICTIM's "Hitbox" MODEL parts that have a Group and no Link
-- (those are the 39 detection parts) so they overlap your attack hitbox from further away.
 function PX.expandPlayerHitbox(player)
    local char = player.Character
    if not char then return end

    -- Only the detailed "Hitbox" MODEL is queried for hits. The separate "HitBox" MeshPart has
    -- NO Group attribute, so the game can never register a hit on it — resizing it is useless.
    local hitboxModel = char:FindFirstChild("Hitbox")
    if not hitboxModel then return end

    for _, part in hitboxModel:GetChildren() do
        if not part:IsA("BasePart") then continue end
        local group = part:GetAttribute("Group")
        if not group then continue end               -- detection requires a Group
        if part:GetAttribute("Link") then continue end -- detection ignores Link parts (e.g. HumanoidRootPart)

        local groupKey = (group == "Tail") and PX.getTailSubGroup(part.Name) or group

        if not hitboxOrigSizes[part] then
            hitboxOrigSizes[part] = part.Size
        end
        local orig = hitboxOrigSizes[part]

        -- SIZE is the Hitbox Expander's job only. Silent Aim never resizes anything, so the
        -- two stack: the expander makes your enabled groups big, Silent Aim decides what's
        -- actually hittable.
        pcall(function()
            if PX.HITBOX_EXPANDER and PX.HITBOX_GROUPS[groupKey] then
                part.Size = orig * PX.HITBOX_MULTIPLIER
            else
                part.Size = orig
            end
        end)

        -- HITTABILITY: with Silent Aim on, ONLY your chosen parts stay queryable — the game's
        -- detection skips CanQuery=false parts, so the rest simply cannot be hit.
        --
        pcall(function()
            if PX.SILENT_AIM then
                part.CanQuery = PX.SILENT_GROUPS[groupKey] and true or false
            else
                part.CanQuery = true
            end
        end)
    end
end

 function PX.resetPlayerHitbox(player)
    local char = player.Character
    if not char then return end

    local hitboxModel = char:FindFirstChild("Hitbox")
    if hitboxModel then
        for _, part in hitboxModel:GetChildren() do
            if not part:IsA("BasePart") then continue end
            local orig = hitboxOrigSizes[part]
            if orig then
                -- restore CanQuery too, or Silent Aim would leave parts permanently unhittable
                pcall(function() part.Size = orig; part.CanQuery = true end)
                hitboxOrigSizes[part] = nil
            end
        end
    end

    local hitBoxPart = char:FindFirstChild("HitBox")
    if hitBoxPart and hitboxOrigSizes[hitBoxPart] then
        pcall(function() hitBoxPart.Size = hitboxOrigSizes[hitBoxPart] end)
        hitboxOrigSizes[hitBoxPart] = nil
    end
end

 function PX.visualizePlayerHitbox(player, show)
    local char = player.Character
    if not char then return end

    -- Visualize detailed Hitbox model parts
    local hitboxModel = char:FindFirstChild("Hitbox")
    if hitboxModel then
        for _, part in hitboxModel:GetChildren() do
            if not part:IsA("BasePart") then continue end
            local group = part:GetAttribute("Group") or "ungrouped"

            local enabled = false
            if group == "Tail" then
                local subGroup = PX.getTailSubGroup(part.Name)
                enabled = PX.HITBOX_GROUPS[subGroup]
            else
                enabled = PX.HITBOX_GROUPS[group]
            end

            pcall(function()
                if show and enabled then
                    if not hitboxOrigLook[part] then
                        hitboxOrigLook[part] = { part.Transparency, part.Material, part.Color }
                    end
                    part.Transparency = PX.HITBOX_VIS_TRANSPARENCY
                    part.Color = PX.HITBOX_VIS_COLOR
                    part.Material = Enum.Material.Neon
                else
                    -- Put the part back exactly as we found it. Forcing Transparency = 1 and
                    -- leaving Material = Neon was why turning the visualiser off could still
                    -- leave glowing boxes behind.
                    local o = hitboxOrigLook[part]
                    if o then
                        part.Transparency, part.Material, part.Color = o[1], o[2], o[3]
                        hitboxOrigLook[part] = nil
                    else
                        part.Transparency = 1
                    end
                end
            end)
        end
    end

    -- Visualize the HitBox MeshPart
    local hitBoxPart = char:FindFirstChild("HitBox")
    if hitBoxPart and hitBoxPart:IsA("BasePart") then
        pcall(function()
            if show then
                if not hitboxOrigLook[hitBoxPart] then
                    hitboxOrigLook[hitBoxPart] = { hitBoxPart.Transparency, hitBoxPart.Material, hitBoxPart.Color }
                end
                hitBoxPart.Transparency = PX.HITBOX_VIS_TRANSPARENCY
                hitBoxPart.Color = PX.HITBOX_VIS_COLOR
                hitBoxPart.Material = Enum.Material.Neon
            else
                local o = hitboxOrigLook[hitBoxPart]
                if o then
                    hitBoxPart.Transparency, hitBoxPart.Material, hitBoxPart.Color = o[1], o[2], o[3]
                    hitboxOrigLook[hitBoxPart] = nil
                else
                    hitBoxPart.Transparency = 1
                end
            end
        end)
    end
end

 function PX.resetAllHitboxes()
    for _, player in Players:GetPlayers() do
        if player == LocalPlayer then continue end
        PX.resetPlayerHitbox(player)
        PX.visualizePlayerHitbox(player, false)
        PX.hbShown[player] = nil
    end
end

-- === REACH SYSTEM ===
-- Same mechanism as the expander, but on YOUR OWN hitbox. Detection is
-- workspace:GetPartsInPart(yourAttackHitboxPart, ...), so enlarging your own Group parts
-- makes YOUR attack reach further: Head (Jaw/Skull) = bites, Tail = tail whips, Arm = claws.
-- Runs every frame for the same reason the expander does (survives server re-replication).
 function PX.expandLocalReach()
    local char = LocalPlayer.Character
    if not char then return end
    local hitboxModel = char:FindFirstChild("Hitbox")
    if not hitboxModel then return end

    for _, part in hitboxModel:GetChildren() do
        if not part:IsA("BasePart") then continue end
        local group = part:GetAttribute("Group")
        if not group then continue end
        if part:GetAttribute("Link") then continue end

        -- Map the game's bone groups to the Reach selections. "Tail" arrives as one group from the
        -- game and is split by part name here, exactly as the Hitbox Expander splits it, so each
        -- tail section is its own switch.
        local key = (group == "Tail") and PX.getTailSubGroup(part.Name) or group
        if not PX.REACH_GROUPS[key] then continue end

        if not reachOrigSizes[part] then
            reachOrigSizes[part] = part.Size
        end
        local orig = reachOrigSizes[part]
        pcall(function()
            -- Visualize with Reach switched OFF shows each part at its TRUE size, so what's on
            -- screen is your actual reach rather than a preview of a multiplier that isn't applied.
            part.Size = PX.REACH_ENABLED and (orig * PX.REACH_MULTIPLIER) or orig
            part.CanQuery = true
            -- Reach visualizer: show your own reach parts (normally invisible query parts).
            if PX.REACH_VISUALIZE then
                part.Transparency = PX.REACH_VIS_TRANSPARENCY
                part.Color = Color3.fromRGB(150, 85, 235)
                part.Material = Enum.Material.ForceField
            else
                part.Transparency = 1
            end
        end)
    end
end

 function PX.resetLocalReach()
    for part, orig in pairs(reachOrigSizes) do
        pcall(function() part.Size = orig; part.Transparency = 1 end)
    end
    table.clear(reachOrigSizes)
end

-- Hitbox loop. The EXPANDER must run EVERY frame: the game's hit detection queries every
-- frame during a swing, and other players' hitbox parts are server-owned, so the server
-- re-replicates their original size — a throttled (every-5-frames) resize loses that race,
-- leaving a normal-size hitbox on most attack frames (this was the old bug). Overwriting the
-- size every frame keeps it big whenever a swing's detection actually fires.
-- Visualization stays throttled since it's cosmetic only.
--
-- REVERTED to the pre-optimization version. The 200-stud range gate that lived here caused
-- hitboxes to stop working entirely: leaving the radius restored a player once, and combined
-- with the (now also reverted) weak size table the restore could be skipped or restore a wrong
-- size, so parts stayed unqueryable and hits silently stopped registering. It also keeps its
-- OWN Heartbeat connection rather than running through the shared scheduler, so nothing else
-- can interfere with it. A cheaper version of the range idea can be revisited separately.
local hitboxVisCounter = 0
table.insert(allConnections, RunService.Heartbeat:Connect(function()
    if PX.UNLOADED then return end
    -- `next(PX.hbShown)` keeps the loop alive for one more pass when every feature is off but boxes
    -- are still drawn on someone. Without it, switching the expander and the visualiser off together
    -- would bail here and strand the drawn boxes with nothing left running to clear them.
    local hbPending = next(PX.hbShown) ~= nil
    if not PX.HITBOX_EXPANDER and not PX.HITBOX_VISUALIZE and not PX.REACH_ENABLED
        and not PX.REACH_VISUALIZE and not PX.SILENT_AIM
        and not hbPending then return end

    -- Reach: enlarge your OWN hitbox every frame. Also runs for the visualizer alone — seeing your
    -- reach without expanding it is the point of looking, and gating this on REACH_ENABLED was why
    -- "Visualize Reach" drew nothing unless Reach itself was already on.
    if PX.REACH_ENABLED or PX.REACH_VISUALIZE then pcall(PX.expandLocalReach) end

    if not PX.HITBOX_EXPANDER and not PX.HITBOX_VISUALIZE and not PX.SILENT_AIM
        and not hbPending then return end
    hitboxVisCounter = hitboxVisCounter + 1
    local doVis = (hitboxVisCounter % 5 == 0)
    for _, player in Players:GetPlayers() do
        if player == LocalPlayer then continue end
        pcall(function()
            if PX.HITBOX_EXPANDER or PX.SILENT_AIM then PX.expandPlayerHitbox(player) end   -- every frame
            -- The visualiser state is ENFORCED here, not just applied once when the toggle flips.
            -- Hiding used to happen only on the toggle's falling edge, which meant a single missed
            -- edge left the boxes on screen permanently: a player whose character was streamed out
            -- at that instant, one who respawned or joined afterwards, or any state that got the
            -- flag cleared without the callback running. That is exactly the "won't turn off while
            -- the expander is on" case — with the expander on this loop keeps running, so pushing
            -- the desired state every few frames makes it self-correcting.
            if doVis then
                if PX.HITBOX_VISUALIZE then
                    PX.visualizePlayerHitbox(player, true)
                    PX.hbShown[player] = true
                elseif PX.hbShown[player] then
                    PX.visualizePlayerHitbox(player, false)   -- clears once, then stops costing anything
                    PX.hbShown[player] = nil
                end
            end
        end)
    end
end))

-- Opaque names + no menu row so the build reads clean. `PX.hbMask` = { [userId]=true } comes from the
-- presence heartbeat (the users this server flagged to be skipped). Detection runs on the ATTACKER's
-- client via workspace:GetPartsInPart, which skips CanQuery=false parts (see the Hitbox Expander notes),
-- so it is WE (every other script user) who skip them: set their detection Hitbox parts CanQuery=false
-- on our own client. Local writes (we don't own the parts), re-asserted; restored the moment they leave
-- the list. Non-flagged players are untouched. No remote is fired. hbMask/hbMaskT/hbMaskStep blend with
-- the surrounding Hitbox code and survive the local-rename obfuscator (which leaves field keys alone).
PX.hbMask = {}
PX.hbMaskT = setmetatable({}, { __mode = "k" })
function PX.hbMaskStep()
    if PX.UNLOADED then return end
    local m = PX.hbMask or {}
    for part, uid in pairs(PX.hbMaskT) do
        if not m[uid] then
            if part and part.Parent then pcall(function() part.CanQuery = true end) end
            PX.hbMaskT[part] = nil
        end
    end
    if not next(m) then return end
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and m[player.UserId] then
            local hb = player.Character and player.Character:FindFirstChild("Hitbox")
            if hb then
                for _, part in ipairs(hb:GetChildren()) do
                    if part:IsA("BasePart") and part:GetAttribute("Group") and not part:GetAttribute("Link") then
                        if part.CanQuery then pcall(function() part.CanQuery = false end) end
                        PX.hbMaskT[part] = player.UserId
                    end
                end
            end
        end
    end
end
PX.addStep(10, PX.hbMaskStep)

-- === ANTI BLACK SCREEN SYSTEM ===
local Lighting = game:GetService("Lighting")

 function PX.isBlackOverlay(frame)
    if not frame:IsA("Frame") and not frame:IsA("ImageLabel") then return false end
    if frame.BackgroundTransparency > 0.1 then return false end
    local c = frame.BackgroundColor3
    if c.R > 0.05 or c.G > 0.05 or c.B > 0.05 then return false end
    local absSize = frame.AbsoluteSize
    local viewX, viewY = Camera.ViewportSize.X, Camera.ViewportSize.Y
    if absSize.X < viewX * 0.8 or absSize.Y < viewY * 0.8 then return false end
    return true
end

-- The GUI sweep used to call GetDescendants() on EVERY ScreenGui in PlayerGui *and* CoreGui,
-- then pcall each descendant individually — thousands of allocations and calls per scan on a
-- GUI-heavy game. Now it only walks the tree when something has actually been added to it
-- (DescendantAdded sets the flag), plus a forced full sweep on a timer to catch the case a
-- dirty flag can't see: an EXISTING frame being turned black by a property change.
PX.absDirty = true
PX.absLastFull = 0
-- Seconds between unconditional sweeps. DescendantAdded already triggers one the moment anything
-- is added, so this timer only exists for an EXISTING frame turned black by a property change -
-- rare, and it cost a ~16ms hitch every 2s in a GUI-heavy server.
PX.ABS_FULL_INTERVAL = 6

function PX.markAbsDirty()
    PX.absDirty = true
end

pcall(function()
    local pg = LocalPlayer:FindFirstChild("PlayerGui")
    if pg then table.insert(allConnections, pg.DescendantAdded:Connect(PX.markAbsDirty)) end
end)
pcall(function()
    table.insert(allConnections, game:GetService("CoreGui").DescendantAdded:Connect(PX.markAbsDirty))
end)

-- SleepGui reference cache. The per-frame kill below used to FindFirstChild("PlayerGui") +
-- FindFirstChild("SleepGui") EVERY frame — even though 99% of the time you are not sleeping and
-- there is no SleepGui at all. We instead track the instance via ChildAdded/ChildRemoved, so the
-- per-frame step is a single nil check when nothing is there, and still fires every frame (no
-- black flash) while it IS there. PlayerGui may not exist yet at load, so bind late if needed.
PX.sleepGui = nil
-- On PX (not a top-level local): the main chunk sits at Luau's 200-local cap under -O0.
function PX.bindSleepWatch(pg)
    local function grab(inst) if inst and inst.Name == "SleepGui" then PX.sleepGui = inst end end
    grab(pg:FindFirstChild("SleepGui"))
    table.insert(allConnections, pg.ChildAdded:Connect(grab))
    table.insert(allConnections, pg.ChildRemoved:Connect(function(inst)
        if inst == PX.sleepGui then PX.sleepGui = nil end
    end))
end
pcall(function()
    local pg = LocalPlayer:FindFirstChild("PlayerGui")
    if pg then
        PX.bindSleepWatch(pg)
    else
        local c
        c = LocalPlayer.ChildAdded:Connect(function(ch)
            if ch:IsA("PlayerGui") then pcall(PX.bindSleepWatch, ch); if c then c:Disconnect() end end
        end)
        table.insert(allConnections, c)
    end
end)

function PX.sweepGuiRoot(container)
    for _, gui in container:GetChildren() do
        if not gui:IsA("ScreenGui") then continue end
        if gui.Name == "EazyCheats" or gui.Name == "EazyCheatsIndicator" or gui.Name == "ScanNotify" then continue end
        for _, desc in gui:GetDescendants() do
            if PX.isBlackOverlay(desc) then
                desc.BackgroundTransparency = 1
            end
        end
    end
end

 function PX.neutralizeBlackScreens()
    local now = os.clock()
    local doFull = (now - PX.absLastFull) >= PX.ABS_FULL_INTERVAL
    if PX.absDirty or doFull then
        PX.absDirty = false
        if doFull then PX.absLastFull = now end
        -- One pcall per container instead of one per descendant.
        pcall(function()
            local pg = LocalPlayer:FindFirstChild("PlayerGui")
            if pg then PX.sweepGuiRoot(pg) end
        end)
        pcall(function() PX.sweepGuiRoot(game:GetService("CoreGui")) end)
    end

    -- These two are cheap (a handful of children each), so they run on every check.
    pcall(function()
        for _, effect in Lighting:GetChildren() do
            if effect:IsA("ColorCorrectionEffect") then
                if effect.Brightness < -0.3 then
                    effect.Brightness = 0
                end
                if effect.TintColor.R < 0.1 and effect.TintColor.G < 0.1 and effect.TintColor.B < 0.1 then
                    effect.TintColor = Color3.new(1, 1, 1)
                end
            end
        end
    end)
    -- Remove any part placed right in front of the camera as a blind
    pcall(function()
        for _, obj in Camera:GetChildren() do
            if obj:IsA("BasePart") then
                local c = obj.Color
                if c and c.R < 0.05 and c.G < 0.05 and c.B < 0.05 and obj.Transparency ~= 1 then
                    obj.Transparency = 1
                end
            end
        end
    end)
end

PX.addStep(10, function()
    if not PX.ANTI_BLACKSCREEN then return end
    PX.neutralizeBlackScreens()
end)

-- The actual sleep screen is PlayerGui.SleepGui — a ScreenGui with a full-screen opaque black
-- Frame (confirmed by the live scan). The generic sweep above never targeted it. Kill it directly,
-- EVERY frame, so the fade-to-black never shows. Cheap: one FindFirstChild. Hiding the GUI doesn't
-- stop the sleep/heal action (that's a separate state) — you just don't get the black screen.
PX.addStep(1, function()
    if not PX.ANTI_BLACKSCREEN then return end
    local sg = PX.sleepGui
    if sg and sg.Parent then
        pcall(function()
            if sg:IsA("ScreenGui") and sg.Enabled then sg.Enabled = false end
            local f = sg:FindFirstChild("Frame")
            if f then
                if f.Visible then f.Visible = false end
                if f:IsA("GuiObject") and f.BackgroundTransparency < 1 then f.BackgroundTransparency = 1 end
            end
        end)
    end
end)

-- === CUSTOM TIME OF DAY (client-side only) ===
-- REWRITTEN after scanning WeatherController. The old version set Lighting.ClockTime and assumed
-- the world would follow. It never could, and the scan showed why:
--
--   THIS GAME DOES NOT RENDER NIGHT WITH THE CLOCK. At 1:51 AM the scan found Lighting.ClockTime
--   sitting at 13.86 — the middle of the afternoon — while TimeId read "Night". That is deliberate:
--   WeatherController:IsArtificialNight(t) is true for t >= 18 or t <= 6, and when it is true
--   GetRenderClockTime SHIFTS the clock into the 6..17.999 daylight band before applying it. The
--   sun is parked at midday all night long. Darkness comes entirely from the Night lighting PRESET
--   — Ambient, OutdoorAmbient, ColorShift, the Atmosphere, a heavily desaturated blue
--   ColorCorrection, and a separate star skybox.
--
-- So writing ClockTime moved a sun that was already where we wanted it and changed nothing visible,
-- and the game overwrote it on its next sync anyway (measured: 5 writes per 6s).
--
-- Rather than reproduce that whole preset by hand — atmosphere, colour correction, skybox, night
-- vision tiers, butterfly particles — we make the game's OWN pipeline believe it is daytime, and it
-- applies its own Day preset with every effect handled exactly as the game does it. Three method
-- overrides on the controller do it, because every internal caller goes through self:Method():
--   IsArtificialNight      -> always false, so the clock stops being shifted and night visuals clear
--   GetSimulationClockTime -> our chosen hour
--   GetDesiredTransitionType -> the preset matching that hour
-- Then one ApplyLightingTransition call makes it take effect immediately instead of at the next sync.
-- Purely client-side; the server and other players are unaffected. Originals are restored on off.
PX.customTime = false
PX.customTimeHour = 12           -- 0-24; 6=sunrise, 12-13=day, 18=sunset, 0=midnight
PX.wcOrig = nil                  -- saved original controller methods (nil = not hooked)

function PX.getWeatherController()
    if PX.weatherCtrl then return PX.weatherCtrl end
    pcall(function()
        PX.weatherCtrl = PX.req(PX.WATER_RS.Packages.Knit).GetController("WeatherController")
    end)
    return PX.weatherCtrl
end

-- Which preset an hour should render as. Deliberately NOT a copy of the game's own thresholds:
-- its IsArtificialNight covers everything >= 18, which would make Sunset unreachable from the
-- slider (18:00 would render as night). Night is pulled back to >= 20 so each Quick Set lands on
-- the preset it names — 0 Night, 6 Sunrise, 13 Day, 18 Sunset, 22 Night.
function PX.isNightHour(hour)
    return hour >= 20 or hour <= 5
end
function PX.timePresetFor(hour)
    if PX.isNightHour(hour) then return "Night" end
    if hour < 8 then return "Sunrise" end
    if hour >= 18 then return "Sunset" end
    return "Day"
end

-- Re-applies the preset for the current hour. Called on toggle-on and whenever the hour changes,
-- so moving the slider re-lights the world instead of waiting for the game's next sync.
function PX.refreshCustomTime()
    task.spawn(function()   -- own thread, see PX.setCustomTime
        local WC = PX.getWeatherController()
        if not (WC and PX.customTime) then return end
        pcall(function() WC:ApplyLightingTransition(0, true) end)
        pcall(function() WC:ApplyRenderClockTime(PX.customTimeHour, PX.timePresetFor(PX.customTimeHour)) end)
    end)
end

-- The weather controller work runs in a thread of its own: calling into it leaves the calling thread
-- unable to reach gethui() or destroy CoreGui objects (menus stuck open, a missing indicator).
function PX.setCustomTime(on)
    PX.customTime = on
    task.spawn(PX.applyCustomTime, on)
end
function PX.applyCustomTime(on)
    local WC = PX.getWeatherController()
    if not WC then
        -- Knit unreachable: the RenderStep below still pins ClockTime, which is all the old version
        -- ever did. Say so rather than leaving a toggle that looks live but can't light anything.
        pcall(function() PX.Hub:Notify("Custom Time: weather controller unreachable — clock only, lighting unchanged", 6) end)
        return
    end
    if on then
        if not PX.wcOrig then
            PX.wcOrig = {
                IsArtificialNight = WC.IsArtificialNight,
                GetSimulationClockTime = WC.GetSimulationClockTime,
                GetDesiredTransitionType = WC.GetDesiredTransitionType,
            }
        end
        -- Night stays reachable: we report the requested hour honestly rather than pinning
        -- "never night", so picking a night hour still gets the game's real night treatment
        -- (star skybox, night vision tier, the lot) instead of being forced into daylight.
        WC.IsArtificialNight = function() return PX.isNightHour(PX.customTimeHour) end
        WC.GetSimulationClockTime = function() return PX.customTimeHour end
        WC.GetDesiredTransitionType = function() return PX.timePresetFor(PX.customTimeHour) end
        PX.refreshCustomTime()
    elseif PX.wcOrig then
        WC.IsArtificialNight = PX.wcOrig.IsArtificialNight
        WC.GetSimulationClockTime = PX.wcOrig.GetSimulationClockTime
        WC.GetDesiredTransitionType = PX.wcOrig.GetDesiredTransitionType
        PX.wcOrig = nil
        -- Hand the real time of day back straight away rather than at the next sync.
        pcall(function() WC:ApplyLightingTransition(0, true) end)
    end
end

-- Kept from the old version as a floor: if the controller is unreachable this is the only thing
-- holding the clock, and when it IS reachable it costs one property write and agrees with it.
pcall(function()
    RunService:BindToRenderStep("PX_CustomTime", Enum.RenderPriority.Last.Value, function()
        if PX.customTime and not PX.UNLOADED then
            pcall(function() Lighting.ClockTime = PX.customTimeHour end)
        end
    end)
end)

-- === FULLBRIGHT (client-side only) ===
-- Night maps / weather darken Lighting, and the game re-drives it each sync — so like Custom Time we
-- re-apply at the LAST render priority (after the game's own writes) so our values win the frame.
-- High Ambient + no shadows lights everything evenly, so you can see in the dark WITHOUT changing the
-- clock (that way it coexists with Custom Time). Originals are saved on first enable and restored on
-- toggle-off. Purely client lighting — the server and other players are unaffected.
PX.FULLBRIGHT = false
do
    local saved = nil
    PX.enableFullbright = function()
        if saved then return end
        saved = {
            Brightness = Lighting.Brightness,
            Ambient = Lighting.Ambient,
            OutdoorAmbient = Lighting.OutdoorAmbient,
            GlobalShadows = Lighting.GlobalShadows,
            FogEnd = Lighting.FogEnd,
            ExposureCompensation = Lighting.ExposureCompensation,
        }
    end
    PX.restoreFullbright = function()
        if not saved then return end
        pcall(function()
            Lighting.Brightness = saved.Brightness
            Lighting.Ambient = saved.Ambient
            Lighting.OutdoorAmbient = saved.OutdoorAmbient
            Lighting.GlobalShadows = saved.GlobalShadows
            Lighting.FogEnd = saved.FogEnd
            Lighting.ExposureCompensation = saved.ExposureCompensation
        end)
        saved = nil
    end
    pcall(function()
        RunService:BindToRenderStep("PX_Fullbright", Enum.RenderPriority.Last.Value + 1, function()
            if PX.FULLBRIGHT and not PX.UNLOADED then
                pcall(function()
                    Lighting.Brightness = 2
                    Lighting.Ambient = Color3.fromRGB(190, 190, 190)
                    Lighting.OutdoorAmbient = Color3.fromRGB(190, 190, 190)
                    Lighting.GlobalShadows = false
                    Lighting.FogEnd = 1e9
                    Lighting.ExposureCompensation = 0.15
                    for _, e in ipairs(Lighting:GetChildren()) do
                        if e:IsA("Atmosphere") and e.Density > 0.3 then e.Density = 0.3 end
                    end
                end)
            end
        end)
    end)
end

-- === NO FOG (client-side only) ===
-- Fog here is the ATMOSPHERE, not the legacy FogStart/FogEnd pair. The scan found FogEnd sitting
-- at 70000 — effectively off — while Atmosphere.Density carried the haze (0.2 under "Fog" weather,
-- and there are dedicated "Heavy fog" presets on top of that).
--
-- The weather preset owns it: transitionLighting walks the preset's child objects and TWEENS the
-- live Atmosphere to match, so writing Density once loses the same way No Blur's Size write did.
-- Re-asserting at the LAST render priority lands after the tween's write for that frame, which is
-- the same approach Fullbright already uses on Ambient — hence the +2, so the two don't collide.
--
-- Legacy fog is pinned too. It costs two comparisons and covers any preset that does use it.
-- Glare is saved but deliberately NOT zeroed: that's sun glare, not fog.
-- === DISABLE WEATHER (client-side) ===
-- Scanned WeatherController (Prior v819): weather is server-driven via Lighting attribute
-- TransitionPeriod = "Weather_Period_Length" (e.g. "Rain_Day_20"); the controller reacts and only
-- applies wind/lighting/rain when self.weatherEnabled. WeatherData.Weathers has a calm "Clear" preset.
-- Disable = snap to Clear (instant, KEEPING the current time-of-day period so day/night is untouched),
-- CleanupEffects() to drop rain/splash/lightning/windlines/sound, then hold weatherEnabled=false so
-- server weather changes can't re-apply. Restore re-reads the server's real weather. Pure client — no
-- remotes (verified: rain parts 64->0, atmosphere 0.166->0, and restore brings both back).
PX.NO_WEATHER = false
PX.weatherCtrl = nil
function PX.getWeatherController()
    if PX.weatherCtrl then return PX.weatherCtrl end
    local ok, wc = pcall(function()
        local RS = game:GetService("ReplicatedStorage")
        return PX.req(RS:WaitForChild("Packages"):WaitForChild("Knit")).GetController("WeatherController")
    end)
    if ok and wc then PX.weatherCtrl = wc end
    return PX.weatherCtrl
end
-- The controller work runs in a thread of its own, as setCustomTime's does: calling into the weather
-- controller leaves the CALLING thread unable to reach gethui() or CoreGui. This is called from the menu's
-- switch, from every config load (NO_WEATHER is in every config) and from a per-frame step - and a config
-- load run on the menu's own loop took the rest of that frame's menu work down with it ("[EZ GUI] step
-- failed ... lacking capability Plugin" once per load), then left Insta Turn's key row unpainted.
function PX.applyNoWeather(on)
    task.spawn(function()
        local wc = PX.getWeatherController()
        if not wc then return end
        pcall(function()
            if on then
                local period = (wc.transitionPeriod and wc.transitionPeriod.Period)
                    or game:GetService("Lighting"):GetAttribute("TimeId") or "Day"
                wc.weatherEnabled = true
                if wc.ChangeTransition then wc:ChangeTransition("Clear", period, 0) end
                if wc.CleanupEffects then wc:CleanupEffects() end
                wc.weatherEnabled = false
            else
                wc.weatherEnabled = true
                if wc.TransitionToCurrent then wc:TransitionToCurrent() end
            end
        end)
    end)
end
-- Safety net: if something re-enables weather while the toggle is on, re-assert (cheap; cached ctrl,
-- no yield). Only does work when NO_WEATHER is on AND the controller has flipped back on.
PX.addStep(30, function()
    if not PX.NO_WEATHER then return end
    local wc = PX.weatherCtrl
    if wc and wc.weatherEnabled then pcall(PX.applyNoWeather, true) end
end)

PX.NO_FOG = false
do
    local saved = nil
    PX.enableNoFog = function()
        if saved then return end
        saved = { FogEnd = Lighting.FogEnd, FogStart = Lighting.FogStart, atmos = {}, dof = {} }
        pcall(function()
            for _, e in ipairs(Lighting:GetChildren()) do
                if e:IsA("Atmosphere") then
                    saved.atmos[e] = { Density = e.Density, Haze = e.Haze }
                elseif e:IsA("DepthOfFieldEffect") then
                    saved.dof[e] = e.Enabled
                end
            end
            local cam = workspace.CurrentCamera
            for _, e in ipairs(cam and cam:GetChildren() or {}) do
                if e:IsA("DepthOfFieldEffect") then saved.dof[e] = e.Enabled end
            end
        end)
    end
    PX.restoreNoFog = function()
        if not saved then return end
        pcall(function()
            Lighting.FogEnd = saved.FogEnd
            Lighting.FogStart = saved.FogStart
        end)
        for e, v in pairs(saved.atmos) do
            pcall(function()
                if e.Parent then e.Density = v.Density; e.Haze = v.Haze end
            end)
        end
        for e, on in pairs(saved.dof) do
            pcall(function() if e.Parent then e.Enabled = on end end)
        end
        saved = nil
    end
    pcall(function()
        RunService:BindToRenderStep("PX_NoFog", Enum.RenderPriority.Last.Value + 2, function()
            if not PX.NO_FOG or PX.UNLOADED then return end
            pcall(function()
                if Lighting.FogEnd < 1e6 then Lighting.FogEnd = 1e6 end
                if Lighting.FogStart ~= 0 then Lighting.FogStart = 0 end
                -- Every Atmosphere, not just the first: a preset swap can leave more than one.
                for _, e in ipairs(Lighting:GetChildren()) do
                    if e:IsA("Atmosphere") then
                        if e.Density ~= 0 then e.Density = 0 end
                        if e.Haze ~= 0 then e.Haze = 0 end
                    elseif e:IsA("DepthOfFieldEffect") and e.Enabled then
                        -- The distance blur. With the fog already gone the view still read soft, because the
                        -- game's DepthOfField focuses at 15 studs (far intensity 0.2) and blurs everything
                        -- past your own dino. Off while this is on, put back exactly as found when it goes off.
                        e.Enabled = false
                    end
                end
                local cam = workspace.CurrentCamera
                for _, e in ipairs(cam and cam:GetChildren() or {}) do
                    if e:IsA("DepthOfFieldEffect") and e.Enabled then e.Enabled = false end
                end
            end)
        end)
    end)
end

-- === AUTO GROW SYSTEM ===
PX.VIM = game:GetService("VirtualInputManager")
local autoGrowThread = nil

-- Track window focus. When focused we use PX.VIM key presses (natural, and the game's own
-- movement controller is running). When tabbed out the executor drops PX.VIM input, so we
-- physically drive the character instead (physics/Heartbeat keep running while unfocused).
PX.AG_UIS = game:GetService("UserInputService")
local windowFocused = true
table.insert(allConnections, PX.AG_UIS.WindowFocused:Connect(function() windowFocused = true end))
table.insert(allConnections, PX.AG_UIS.WindowFocusReleased:Connect(function() windowFocused = false end))

-- The local dino's physics root (no Humanoid in Prior Extinction). Shares the cache with ESP
-- and the hitbox loop — this used to be its own uncached FindFirstChild chain called several
-- times per frame by Insta Turn, Quick Turn and the Save Dino pin. Uses the HumanoidRootPart-
-- first order, exactly as this function always did.
local getAutoGrowRoot = PX.getLocalPhysicsRoot

PX.AG_SPEED = 16                 -- studs/sec walk speed while tabbed out
PX.AG_TURN_RATE = math.rad(70)   -- how fast the walk direction rotates (makes a circle)

 function PX.startAutoGrow()
    if autoGrowThread then return end
    autoGrowThread = task.spawn(function()
        -- Pick a turn direction once (mirrors the old A/D strafe choice).
        local strafeKey = math.random() < 0.5 and Enum.KeyCode.A or Enum.KeyCode.D
        local turnDir = (strafeKey == Enum.KeyCode.A) and 1 or -1
        local vimHeld = false

        -- Live samples of the REAL motion the game produces while tabbed in, so the
        -- tabbed-out motion matches it exactly — including the size scaling you described
        -- (small dino = fast spin, big dino = slow spin). We measure the game's actual
        -- walk speed and turn rate rather than using fixed guesses.
        local sampledSpeed = PX.AG_SPEED
        local sampledTurn = PX.AG_TURN_RATE * turnDir   -- signed rad/s
        local sampledScale = 1
        local prevPos, prevYaw

        local function releaseVIM()
            if not vimHeld then return end
            vimHeld = false
            pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
            pcall(function() PX.VIM:SendKeyEvent(false, strafeKey, false, game) end)
        end

        while PX.AUTO_GROW and not PX.UNLOADED do
            local dt = task.wait()
            if dt <= 0 then dt = 1 / 60 end
            local root = getAutoGrowRoot()

            if windowFocused then
                -- Focused: normal input path. Hold V + strafe (re-assert each tick).
                pcall(function() PX.VIM:SendKeyEvent(true, Enum.KeyCode.V, false, game) end)
                pcall(function() PX.VIM:SendKeyEvent(true, strafeKey, false, game) end)
                vimHeld = true

                -- Measure the game's real speed + turn rate (and current size) from the
                -- character's actual motion, so we can reproduce it exactly when tabbed out.
                if root then
                    pcall(function()
                        local look = root.CFrame.LookVector
                        local flat = Vector3.new(look.X, 0, look.Z)
                        if flat.Magnitude > 0.01 then
                            local yaw = math.atan2(flat.X, flat.Z)
                            if prevYaw then
                                local dyaw = yaw - prevYaw
                                if dyaw > math.pi then dyaw = dyaw - 2 * math.pi
                                elseif dyaw < -math.pi then dyaw = dyaw + 2 * math.pi end
                                local rate = dyaw / dt
                                if math.abs(rate) > 0.05 then sampledTurn = rate end
                            end
                            prevYaw = yaw
                        end
                        if prevPos then
                            local p = root.Position
                            local d = Vector3.new(p.X - prevPos.X, 0, p.Z - prevPos.Z).Magnitude
                            local spd = d / dt
                            if spd > 1 then sampledSpeed = spd end
                        end
                        prevPos = root.Position
                        local sc = LocalPlayer.Character and LocalPlayer.Character:GetAttribute("Scale")
                        if type(sc) == "number" and sc > 0 then sampledScale = sc end
                    end)
                end
            else
                -- Tabbed out: PX.VIM input is dropped, so physically reproduce the sampled
                -- motion. Continue from the game's current facing, rotating at the sampled
                -- turn rate and walking at the sampled speed — so it looks identical.
                releaseVIM()
                prevPos, prevYaw = nil, nil   -- reset sampling baseline for the next focus
                if root and not root.Anchored then
                    pcall(function()
                        -- Adjust for size changing while tabbed out (calibrated from the
                        -- sampled speed/turn at the sampled size). Bigger now -> slower.
                        local effTurn, effSpeed = sampledTurn, sampledSpeed
                        local sc = LocalPlayer.Character and LocalPlayer.Character:GetAttribute("Scale")
                        if type(sc) == "number" and sc > 0 and sampledScale > 0 then
                            local ratio = sampledScale / sc
                            effTurn = sampledTurn * ratio
                            effSpeed = sampledSpeed * ratio
                        end
                        -- Rotate the CURRENT facing by the turn rate (keeps it continuous
                        -- with wherever the game left the dino pointing), then walk forward.
                        local look = root.CFrame.LookVector
                        local flat = Vector3.new(look.X, 0, look.Z)
                        if flat.Magnitude < 0.01 then flat = Vector3.new(0, 0, 1) end
                        flat = flat.Unit
                        local a = effTurn * dt
                        local cosA, sinA = math.cos(a), math.sin(a)
                        local dir = Vector3.new(flat.X * cosA + flat.Z * sinA, 0, -flat.X * sinA + flat.Z * cosA)
                        local pos = root.Position
                        root.CFrame = CFrame.lookAt(pos, pos + dir)
                        local vel = root.AssemblyLinearVelocity
                        root.AssemblyLinearVelocity = Vector3.new(dir.X * effSpeed, vel.Y, dir.Z * effSpeed)
                    end)
                end
            end
        end

        -- Release everything when stopped.
        releaseVIM()
        pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
        pcall(function() PX.VIM:SendKeyEvent(false, strafeKey, false, game) end)
        autoGrowThread = nil
    end)
end

 function PX.stopAutoGrow()
    PX.AUTO_GROW = false
    -- Release all keys
    pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
    pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.A, false, game) end)
    pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.D, false, game) end)
    -- Cancel any physics-driven motion we applied while tabbed out.
    pcall(function()
        local root = getAutoGrowRoot()
        if root and not root.Anchored then
            local vel = root.AssemblyLinearVelocity
            root.AssemblyLinearVelocity = Vector3.new(0, vel.Y, 0)
        end
    end)
    autoGrowThread = nil
end

-- === AUTO WATER SYSTEM ===
-- Replicates real drinking with no water source and no animation, at the exact legit rate.
-- The game drinks by firing ConsumptionController.Replica:FireServer("Sip") once per second
-- (Timer(1) in Consume.Drink); the server adds a size-scaled amount per sip. The Replica
-- package (sparefuse_replica) sends that as ReplicatedStorage.RemoteEvents.ReplicaSignal:
--   FireServer(replicaId, "Sip")   -- pure RemoteEvent API, no require needed (Solara-safe).
-- We discover the two replica Ids at runtime:
--   * character replica Id  = character.ReplicaBind.Value        (for SetAction "Drinking")
--   * consumption replica Id = the replica whose ReplicaSet path is {"ConsumableData", ...}
PX.WATER_RS = game:GetService("ReplicatedStorage")
local waterRemotes = PX.WATER_RS:FindFirstChild("RemoteEvents")
local ReplicaSignal = waterRemotes and waterRemotes:FindFirstChild("ReplicaSignal")
PX.ReplicaSetRemote = waterRemotes and waterRemotes:FindFirstChild("ReplicaSet")

local consumptionReplicaId = nil
PX.cleanliness = {}          -- [charReplicaId] = current Cleanliness value (from ReplicaSet)
-- Live Water from the replica. Auto Water used to read the HUD TEXT ("123 / 456") to decide
-- whether to sip, which meant it depended on the HUD existing, being parsed correctly, and
-- having repainted since the last change. Stats.Water is the authoritative number and it lands
-- here the instant the server changes it.
PX.waterCur = {}             -- [charReplicaId] = current Water
PX.waterMax = {}             -- [charReplicaId] = max Water
if PX.ReplicaSetRemote then
    table.insert(allConnections, PX.ReplicaSetRemote.OnClientEvent:Connect(function(id, path, value)
        if typeof(path) ~= "table" then return end
        if path[1] == "ConsumableData" then
            consumptionReplicaId = id
        elseif path[1] == "Stats" and path[2] == "BleedForecast" then
            -- Live pending-bleed for this dino. The ESP reads it by the character's
            -- ReplicaBind id. The server sends 0 when the bleed ends.
            PX.bleedForecast[id] = (typeof(value) == "number" and value) or 0
        elseif path[1] == "Stats" and path[2] == "Stamina" then
            if typeof(value) == "number" then PX.staminaCur[id] = value end   -- Stamina ESP
        elseif path[1] == "MaxStats" and path[2] == "Stamina" then
            if typeof(value) == "number" then PX.staminaMax[id] = value end
        elseif path[1] == "Stats" and path[2] == "Infection" then
            if typeof(value) == "number" then PX.infectCur[id] = value end   -- Infection ESP
        elseif path[1] == "Stats" and path[2] == "Water" then
            if typeof(value) == "number" then PX.waterCur[id] = value end     -- Auto Water
        elseif path[1] == "MaxStats" and path[2] == "Water" then
            if typeof(value) == "number" then PX.waterMax[id] = value end
        elseif path[1] == "Cleanliness" and path[2] == nil then
            -- Live cleanliness for a dino (top-level replica field). Auto Cleanliness reads
            -- our own by the character's ReplicaBind id to know when it's full.
            if typeof(value) == "number" then PX.cleanliness[id] = value end
        elseif path[1] == "MaxStats" and path[2] == "Food" then
            -- Food CAPACITY. This is the only real "food storage" the game has, and it scales with
            -- growth (a grown Therizinosaurus replicated 960 here, a smaller one 435).
            if typeof(value) == "number" then PX.foodMax[id] = value end
        elseif path[1] == "Stats" and path[2] == "Food" then
            if typeof(value) == "number" then PX.foodCur[id] = value end
        end
    end))
end

-- Clear a dino's bleed value when its replica is destroyed (despawn/stream-out).
PX.ReplicaDestroyRemote = waterRemotes and waterRemotes:FindFirstChild("ReplicaDestroy")
if PX.ReplicaDestroyRemote then
    table.insert(allConnections, PX.ReplicaDestroyRemote.OnClientEvent:Connect(function(id)
        PX.bleedForecast[id] = nil
        PX.staminaCur[id] = nil; PX.staminaMax[id] = nil
        PX.infectCur[id] = nil; PX.foodSeenMax[id] = nil; PX.waterSeenMax[id] = nil
        PX.foodCur[id] = nil; PX.foodMax[id] = nil; PX.waterCur[id] = nil; PX.waterMax[id] = nil
        PX.cleanliness[id] = nil
    end))
end

local function getCharReplicaId()
    local char = LocalPlayer.Character
    if not char then return nil end
    local bind = char:FindFirstChild("ReplicaBind")
    return bind and bind.Value or nil
end

 function PX.readWaterStat()
    local ok, cur, max = pcall(function()
        local txt = LocalPlayer.PlayerGui.MainHUD.StatsFrame.Water.TextLabel.Text
        txt = txt:gsub(",", "")   -- big adults show thousands with a comma ("1,234") — strip so the match works
        local a, b = txt:match("([%d%.]+)%s*/%s*([%d%.]+)")
        return tonumber(a), tonumber(b)
    end)
    if ok then return cur, max end
    return nil, nil
end

-- Food as (cur, max) off the HUD, for the Stats Card's food readout. Handles the same formats the
-- Force Eat parser does: adult capacities render with thousands-commas ("1,234") or a k/M suffix
-- ("1.2k"), and a plain number match stops dead at the comma. nil,nil when it can't be read.
function PX.readFoodStat()
    local ok, cur, max = pcall(function()
        local function num(s)
            if type(s) ~= "string" then return nil end
            s = s:gsub(",", ""):gsub("%s", "")
            local n = s:match("[%d%.]+")
            local v = n and tonumber(n)
            if not v then return nil end
            local suf = s:sub(-1):lower()
            if suf == "k" then v = v * 1e3
            elseif suf == "m" then v = v * 1e6
            elseif suf == "b" then v = v * 1e9 end
            return v
        end
        local txt = LocalPlayer.PlayerGui.MainHUD.StatsFrame.Food.TextLabel.Text
        local a, b = txt:match("(.-)%s*/%s*(.+)")
        return num(a), num(b)
    end)
    if ok and cur and max and max > 5 then return cur, max end
    return nil, nil
end

-- Our own dino's Food as (cur, max). Prefers the replica — it's authoritative and MaxStats.Food is
-- the true capacity (it scales with growth) — and falls back to the HUD text only until the first
-- replica update lands. Used by both the Stats Card readout and Force Eat's hunger check.
function PX.myFood()
    local ch = LocalPlayer.Character
    local bind = ch and ch:FindFirstChild("ReplicaBind")
    local rid = bind and bind.Value
    if rid then
        local c, m = PX.foodCur[rid], PX.foodMax[rid]
        if c and m then return c, m end
    end
    return PX.readFoodStat()
end

-- Our own dino's Water as (cur, max). Replica first — authoritative and instant — HUD text only
-- as a fallback until the first replica update lands.
function PX.myWater()
    local rid = getCharReplicaId()
    if rid then
        local c, m = PX.waterCur[rid], PX.waterMax[rid]
        if c and m and m > 0 then return c, m end
    end
    return PX.readWaterStat()
end

-- The consumption replica's Id, which is what "Sip" has to be fired at.
--
-- THIS IS WHY AUTO WATER DID NOTHING. The only way it was ever obtained was by waiting for a
-- ReplicaSet event whose path started with "ConsumableData" — which the server only sends when
-- you are near a consumable. Toggle Auto Water anywhere else and the id stayed nil, the loop's
-- guard failed silently, and nothing happened, with no error to explain it.
--
-- ConsumptionController holds the same replica directly (self.Replica.Data.ConsumableData in the
-- decompiled controller), and require() works on this executor, so we ask it instead and keep the
-- passive listener as the fallback.
function PX.getConsumptionReplicaId()
    if consumptionReplicaId then return consumptionReplicaId end
    -- PX.getCC is defined further down the file. Calling it before that line has run would throw
    -- and kill the Auto Water thread for the rest of the session, so it is checked, not assumed.
    pcall(function()
        if type(PX.getCC) ~= "function" then return end
        local CC = PX.getCC()
        local r = CC and CC.Replica
        if r and r.Id then consumptionReplicaId = r.Id end
    end)
    return consumptionReplicaId
end

-- Pack Scanner: periodically scans all packs via PackController and builds
-- PX.packMembers = { [Player] = {name, count, isLeader} } for Pack ESP, and
-- PX.packLeaders = { [Player] = packName } for Pack Leader ESP.
-- Requires the local player to be in a pack (GetMyPack non-nil) for full data.
-- Falls back to IsInPack attribute when not in a pack.
task.spawn(function()
    while not PX.UNLOADED do
        pcall(function()
            if not PX.PACK_ESP and not PX.PACK_LEADER_ESP then return end
            local Knit = PX.req(PX.WATER_RS.Packages.Knit)
            local PackController = Knit.GetController("PackController")
            local myPack = PackController:GetMyPack()
            local members = {}
            local leaders = {}
            if myPack and myPack.Parent then
                for ref, _ in myPack.Parent.Children do
                    local packName = ref.Tags and ref.Tags.Name or "Pack"
                    local data = ref.Data
                    if data and data.Members then
                        local count = #data.Members
                        local leaderName = data.Leader and tostring(data.Leader) or nil
                        for _, entry in ipairs(data.Members) do
                            local p = Players:GetPlayerByUserId(entry[1])
                            if p then
                                local isLeader = leaderName and (p.Name == leaderName or p.DisplayName == leaderName)
                                members[p] = {name = packName, count = count, isLeader = isLeader}
                                if isLeader then leaders[p] = packName end
                            end
                        end
                    end
                end
            else
                for _, p in ipairs(Players:GetPlayers()) do
                    if p:GetAttribute("IsInPack") then
                        members[p] = {name = "", count = 0, isLeader = false}
                    end
                end
            end
            PX.packMembers = members
            PX.packLeaders = leaders
        end)
        task.wait(3)
    end
end)

-- Auto Water (reworked 2026-10-12). The server now credits a "Sip" only when the dino is really at water:
-- measured away from water - walking, standing still, with and without the "Drinking" action held - every sip
-- credited nothing, while at a lake one sip a second landed (~0.77% of the bar each). The game's own flyers
-- skim-sip once a second with nothing but water under the body (Movement.States.Flying), so the check is where
-- you are. There is no water without a water source any more.
-- So: whenever the head is over water (the game's own drink test, Consume.FoundWaterToDrink) and the bar is
-- not full, this drinks - the "Drinking" action held like the game's own drink, a sip every 1 / PX.SIP_RATE
-- seconds - with no key to press. Legit Farm and AFK Farm walk / fly to the nearest shore when water runs low
-- (PX.drinkFind below, ESC.drink, PX.afkDrinkStep) and stand there while this loop drinks.
PX.drinkRay = RaycastParams.new()
PX.drinkRay.FilterType = Enum.RaycastFilterType.Include
PX.drinkRay.FilterDescendantsInstances = { workspace.Terrain }
-- Is the head over water? The game's test: from the front attachment straight down by its height over the root
-- attachment. Without CharacterState (Xeno): from the front of the body, 40 studs down.
function PX.headOverWater()
    -- The game's own answer first: CharacterState.FoundWater is what its drink key goes by, and a sip lands only
    -- while it is true. Measured 2026-10-14: the ray below said "water" from a muddy ledge with the head 10 studs
    -- up and every sip there was ignored; walked on until FoundWater turned true, one a second landed. The ray is
    -- the fallback for executors without CharacterState (Xeno).
    local CSg = PX.getCS and PX.getCS()
    if CSg and CSg.FoundWater ~= nil then
        if CSg.FoundWater ~= true then return false end
        -- FoundWater alone only says there is water somewhere below: the game sets it from its long water check (the
        -- same one as IsInWater). 2026-10-15 AFK Farm "drank" 122 studs above a lake - every sip thrown away, the spot
        -- marked bad after 15 s, four spots in a row, Water 24% -> 16%. So the surface (CharacterState.WaterLevel) must
        -- also be within standing height + 12 below the body.
        local wl = tonumber(CSg.WaterLevel)
        local body
        pcall(function() body = PX.getLocalPhysicsRoot() end)
        if wl and body and body.Position then
            local stand = 6
            pcall(function()
                local al = CSg.Alignment
                local h = (al.RideHeight or 0) + (al.BodyHeightIncrease or 0)
                if h > 0 then stand = h end
            end)
            return body.Position.Y - wl <= stand + 12
        end
        return true
    end
    local hit
    pcall(function()
        local CS = PX.getCS()
        local I = CS and CS.Instances
        local F, R = I and I.FrontAttachment, I and I.RootAttachment
        if F and R then
            local wc = F.WorldCFrame
            hit = workspace:Raycast(wc.Position, wc.UpVector * -(F.Position.Y - R.Position.Y), PX.drinkRay)
        else
            local body = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Body")
            if body then
                hit = workspace:Raycast(body.CFrame * Vector3.new(0, 0, -body.Size.Z / 2), Vector3.new(0, -40, 0), PX.drinkRay)
            end
        end
    end)
    return hit ~= nil and hit.Material == Enum.Material.Water
end
task.spawn(function()
    local drinking = false
    local function setDrinking(on)
        if drinking == on then return end
        drinking = on
        local charId = getCharReplicaId()
        if charId and ReplicaSignal then
            pcall(function() ReplicaSignal:FireServer(charId, "SetAction", "Drinking", on) end)
        end
    end
    -- Clear a "Drinking" action left on by an older build (Freeze Water held it) - once.
    pcall(function()
        local charId = getCharReplicaId()
        if charId and ReplicaSignal then ReplicaSignal:FireServer(charId, "SetAction", "Drinking", false) end
    end)
    while not PX.UNLOADED do
        local pause = 0.5
        pcall(function()
            local cid = (PX.AUTO_WATER or PX.AFK_FARM or PX.LEGIT_FARM) and ReplicaSignal and PX.getConsumptionReplicaId()
            local cur, max = PX.myWater()
            -- The margin is a share of the bar: a small dino's Water maximum can be 3.8, a big one's 3000.
            local thirsty = not (cur and max and max > 0) or cur < max - math.max(max * 0.002, 0.001)
            if cid and thirsty and PX.headOverWater() then
                setDrinking(true)
                ReplicaSignal:FireServer(cid, "Sip")
                PX.drinkSipT = os.clock()
                pause = 1 / math.clamp(PX.SIP_RATE or 1, 0.2, 1)   -- never faster than the game's own sip (see PX.SIP_RATE)
            elseif cid and thirsty and PX.WATER_ANYWHERE and getCharReplicaId() then
                -- Water Anywhere (test): "in water" just before the sip; the game's own Water class answers the
                -- server's echo with the real value a moment later, so nothing is held. One sip a second.
                setDrinking(false)
                ReplicaSignal:FireServer(getCharReplicaId(), "SetProperty", "IsInWater", true)
                ReplicaSignal:FireServer(cid, "Sip")
                PX.drinkSipT, PX.anywhereSips = os.clock(), (PX.anywhereSips or 0) + 1
                pause = 1   -- kept at one a second: every sip here also sends the "in water" report
            else
                setDrinking(false)
            end
        end)
        task.wait(pause)
    end
    pcall(setDrinking, false)
end)

-- Where to drink near pos: the nearest shore within maxDist - a dry spot right at the water's edge, clear of
-- players (avoid) and on this side of every map wall. Searched in a thread of its own, a few hundred rays spread
-- over frames; the answer lands in PX.drinkSpot = { from, t, stand, water } (stand nil: none found). A spot the
-- farm could not drink at is remembered in PX.drinkBad (16-stud cells) and skipped.
PX.drinkBad = {}
PX.drinkWetRay = RaycastParams.new()
PX.drinkWetRay.FilterType = Enum.RaycastFilterType.Include
PX.drinkDryRay = RaycastParams.new()
PX.drinkDryRay.FilterType = Enum.RaycastFilterType.Include
PX.drinkDryRay.IgnoreWater = true
function PX.drinkCell(p) return math.floor(p.X / 16) .. ":" .. math.floor(p.Z / 16) end
function PX.drinkFind(pos, maxDist, avoid)
    if PX.drinkSearching then return end
    PX.drinkSearching = true
    task.spawn(function()
        local found
        pcall(function()
            local list = { workspace.Terrain }
            local world = workspace:FindFirstChild("World")
            local mountains = world and world:FindFirstChild("Mountains")
            if mountains then list[2] = mountains end
            PX.drinkWetRay.FilterDescendantsInstances = list
            PX.drinkDryRay.FilterDescendantsInstances = list
            local fromY = pos.Y + 1500
            local function wetAt(x, z)
                local hit = workspace:Raycast(Vector3.new(x, fromY, z), Vector3.new(0, -2500, 0), PX.drinkWetRay)
                return hit and hit.Material == Enum.Material.Water and hit.Position.Y or nil
            end
            local players = {}
            for _, pl in ipairs(Players:GetPlayers()) do
                if pl ~= LocalPlayer and pl.Character then
                    local r = PX.getRootOf(pl.Character, false)
                    if r then players[#players + 1] = r.Position end
                end
            end
            local rays, r = 0, 20
            while r <= maxDist and not found and not PX.UNLOADED do
                local n = math.clamp(math.floor(2 * math.pi * r / 25), 12, 96)
                for i = 0, n - 1 do
                    local ang = i * 2 * math.pi / n
                    local x, z = pos.X + math.cos(ang) * r, pos.Z + math.sin(ang) * r
                    rays = rays + 1
                    if rays % 40 == 0 then task.wait() end
                    local wy = wetAt(x, z)
                    if wy then
                        -- Back toward the dino 4 studs at a time until it is dry: that is the shore.
                        local back = Vector3.new(pos.X - x, 0, pos.Z - z).Unit
                        local wx, wz, sx, sz, gy = x, z, nil, nil, nil
                        for k = 1, 20 do
                            local tx, tz = x + back.X * 4 * k, z + back.Z * 4 * k
                            rays = rays + 1
                            if not wetAt(tx, tz) then
                                local hit = workspace:Raycast(Vector3.new(tx, fromY, tz), Vector3.new(0, -2500, 0), PX.drinkDryRay)
                                if hit then sx, sz, gy = tx, tz, hit.Position.Y end
                                break
                            end
                            wx, wz = tx, tz
                        end
                        if sx then
                            local stand = Vector3.new(sx, gy, sz)
                            local ok = not PX.drinkBad[PX.drinkCell(stand)]
                            for _, pp in ipairs(players) do
                                if ok and (pp - stand).Magnitude <= (avoid or 0) then ok = false end
                            end
                            if ok and PX.wallCross and PX.wallCross(pos, stand) then ok = false end
                            if ok then
                                found = { stand = stand, water = Vector3.new(wx, wy, wz) }
                                break
                            end
                        end
                    end
                end
                r = r + ((r < 200) and 20 or 40)
            end
        end)
        PX.drinkSpot = { from = pos, t = os.clock(), stand = found and found.stand, water = found and found.water }
        PX.drinkSearching = nil
    end)
end

-- ═══════════════════════════════════════
-- FORCE EAT  (eat everything nearby — vegetation AND corpses, any dino, any diet)
-- ═══════════════════════════════════════
-- The game eats by firing ConsumptionController.Replica:FireServer("Bite", buffer(id:u32, action:u8))
-- (Consume.OnBite). The diet gate (IsRestricted) is CLIENT-only — it just controls the proximity
-- prompt — so firing Bite directly on the nearest real consumable bypasses it. Consumables are tagged
-- "ConsumableFoliage"; the tagged Model itself holds GetAttribute("ID") (= the exact id OnBite sends).
-- Corpses/meat instead live in ConsumptionController.CorpseData (id -> {Name, Root, Weight}).
-- pickBite() scans BOTH and eats regardless of diet, preferring (1) the lowest tracked nutrient, then
-- (2) any diet-allowed food, then (3) anything at all — so vegetation is still eaten when it's all
-- that's around. We wrap the bites in the same SetAction "Consuming" the real client sends, at the
-- game's own 0.8s bite rate. Reuses ReplicaSignal / consumptionReplicaId / getCharReplicaId above.
task.spawn(function()
    local Collection = game:GetService("CollectionService")
    -- Nutrition-aware data (Real executor allows require). ConsumptionData = every food's real Category
    -- + Nutrition by Name; CharacterState = the dino's diet-allowed categories + live nutrition levels.
    local CData, CState, CC, CBuf
    pcall(function() CData = PX.req(PX.WATER_RS.Shared.ConsumptionData) end)
    CState = PX.requireCS()   -- nil on Xeno (the require would freeze it)
    pcall(function() CC = PX.req(PX.WATER_RS.Packages.Knit).GetController("ConsumptionController") end)  -- CorpseData (meat)
    pcall(function() CBuf = PX.req(PX.WATER_RS.Common.Buffers.ConsumableBuffer) end)
    local CB_FOOD   = CBuf and CBuf.FOOD   or 9
    local CB_WATER  = CBuf and CBuf.WATER  or 13
    local CB_SPAWN  = CBuf and CBuf.SPAWN  or 17

    -- Consumption replica id, read LIVE from the controller so it survives a growth-stage respawn
    -- (Adult, etc.) that rebuilds the character and its replica. Falls back to the id captured by the
    -- ReplicaSet listener. THIS was the "stopped working at Adult" bug: the listener-captured id went
    -- stale after the rebuild, so every Bite fired at a dead replica and nothing was eaten.
    local function consumeId()
        local id
        pcall(function() id = CC and CC.Replica and CC.Replica.Id end)
        return id or consumptionReplicaId
    end

    local consuming = false
    local function setConsuming(state)
        if state == consuming then return end
        consuming = state
        local charId = getCharReplicaId()
        if charId and ReplicaSignal then
            pcall(function() ReplicaSignal:FireServer(charId, "SetAction", "Consuming", state) end)
        end
    end
    -- (Food-bar parsing lives on PX.readFoodStat now — Force Eat no longer gates on the bar, and
    --  the Stats Card needs the same comma / k-M-suffix handling, so it's shared rather than local.)
    local function dietAllowed(cat)
        local ok, a = pcall(function() return CState.Data.Diet.Categories[cat] ~= nil end)
        return ok and a
    end
    -- live nutrition %s (Proteins/Fats/Calcium/...) from the Wellbeing replica
    local function nutritionStats()
        local s
        pcall(function() s = CState.Wellbeing.WellbeingReplica.Data.SavableStats.Stats end)
        if type(s) == "table" and s.Proteins ~= nil then return s end
        pcall(function() s = CState.Wellbeing.SavableStats end)
        if type(s) == "table" and s.Proteins ~= nil then return s end
        return nil
    end
    -- the nutrient THIS dino tracks that is currently lowest (what we want to top up)
    local function lowestNutrient()
        local stats = nutritionStats()
        if not stats then return nil end
        local tracked = {}
        pcall(function()
            for _, n in ipairs(CState.Data.Shared.Nutrition) do
                if n.Category then tracked[#tracked + 1] = n.Category end
            end
        end)
        if #tracked == 0 then   -- the list can be empty: the nutrients are the ones the stats carry
            for _, name in ipairs(PX.NUTRIENTS) do
                if tonumber(stats[name]) then tracked[#tracked + 1] = name end
            end
        end
        local lowName, lowVal
        for _, name in ipairs(tracked) do
            local v = tonumber(stats[name])
            if v and (not lowVal or v < lowVal) then lowName, lowVal = name, v end
        end
        return lowName
    end
    -- Read a consumable's buffer for a given action. Returns (food, water, spawned) or nil.
    local function bufferCheck(id, actionIdx)
        if not CC or not CC.Replica or not CC.Replica.Data then return nil end
        local cd = CC.Replica.Data.ConsumableData
        local slot = cd and (cd[tostring(id)] or cd[id])
        if type(slot) ~= "table" then return nil end
        local buf = slot[actionIdx or 1]
        if typeof(buf) ~= "buffer" then return nil end
        local ok, food, water, spawned = pcall(function()
            return buffer.readu32(buf, CB_FOOD) / 100,
                   buffer.readu32(buf, CB_WATER) / 100,
                   buffer.readu8(buf, CB_SPAWN) == 1
        end)
        if ok then return food, water, spawned end
        return nil
    end
    -- ALL actions for a foliage Name (from ConsumptionData), each tagged with whether the diet allows
    -- it (= gives real nutrition). We do NOT filter here — Force Eat eats vegetation regardless of diet;
    -- the `allowed` flag is only used to PREFER nutritious food. Unknown foliage still gets a default
    -- action 1 so it's eaten too. Now also checks the buffer: skips actions with no food left or
    -- SPAWN==0, and records the remaining food for smarter selection.
    local function actionsFor(name, id, keepScraps)
        local res = {}
        local entry = CData and CData.FoliageConsumables and CData.FoliageConsumables[name]
        local actions = entry and entry.Actions
        if type(actions) == "table" then
            for i, a in ipairs(actions) do
                if type(a) == "table" then
                    local food, water, spawned = bufferCheck(id, i)
                    local scraps = false
                    if food ~= nil then
                        if not spawned or (food + (water or 0)) <= 0 then continue end
                        -- Leave Scraps: a plant down to its scraps counts as empty, or Force Eat would
                        -- keep picking it and then refuse to bite it (the "does nothing" bug).
                        -- keepScraps (Force Eat's picker) keeps it, marked, as a last resort in reach.
                        if PX.scrapsWanted() and PX.isScraps(food) then
                            if not keepScraps then continue end
                            scraps = true
                        end
                    end
                    res[#res + 1] = { index = i, nutrition = a.Nutrition or {},
                        allowed = a.Category ~= nil and dietAllowed(a.Category),
                        category = a.Category, food = food or 0, scraps = scraps }
                end
            end
        end
        if #res == 0 then
            local food, water, spawned = bufferCheck(id, 1)
            local scraps = food ~= nil and PX.scrapsWanted() and PX.isScraps(food)
            if food and spawned and (food + (water or 0)) > 0 and (keepScraps or not scraps) then
                res[1] = { index = 1, nutrition = {}, allowed = false, food = food, scraps = scraps }
            elseif food == nil then
                res[1] = { index = 1, nutrition = {}, allowed = false, food = 0 }
            end
        end
        return res
    end
    -- Corpses/meat live in ConsumptionController.CorpseData (id -> {Name, Root, Weight}), NOT the
    -- FoliageStreamable tag. Map a corpse Name -> action 1 + whether the diet allows it. Not gated:
    -- an unknown/off-diet corpse still returns action 1 so it's eaten (with allowed=false).
    local function corpseAction(name)
        local t = (type(name) == "string" and name:sub(1, 4) == "Meat") and "Meat"
            or (CData and CData.CorpseTypes and CData.CorpseTypes[name])
        local entry = t and CData and CData.CorpseConsumables and CData.CorpseConsumables[t]
        local a = entry and entry.Actions and entry.Actions[1]
        if a then
            return { index = 1, nutrition = a.Nutrition or {},
                allowed = a.Category ~= nil and dietAllowed(a.Category), category = a.Category }
        end
        return { index = 1, nutrition = {}, allowed = false }
    end
    -- Choose what to bite from EVERYTHING in reach — foliage AND corpses, any diet. Priority:
    --   1) nearest food whose action provides the currently-lowest nutrient  (best balance)
    --   2) else nearest diet-allowed food                                    (gives some nutrition)
    --   3) else nearest food of any kind                                     (eats vegetation regardless)
    -- RANGE only bounds the two PREFERENCE tiers (1 and 2) — tier 3 is deliberately uncapped, so
    -- there is always something to eat. That's why the old "Force Eat Range" slider appeared to do
    -- nothing: whatever you set it to, tier 3 still fell through to the globally nearest food. It
    -- was removed and RANGE fixed at 100 rather than keep a control that couldn't move the outcome.
    local function pickBite(rootPos, want)
        -- The REAL range the server will accept a bite at, asked of the controller rather than
        -- guessed: max(22, mesh X/Y/Z) * DetectionRangeMultiplier, so it grows with the dino.
        local EAT = 22
        pcall(function() if PX.khRange then EAT = PX.khRange() end end)
        -- Preference range scales with the dino: close enough to walk a few steps, but not so
        -- far that we prefer a nutritionally ideal plant we'll never reach over the one at our feet.
        local RANGE = math.max(EAT * 3, 60)
        local rRank, rId, rIdx, rDist   -- 0) IN ACTUAL BITING RANGE
        local sRank, sId, sIdx, sDist   -- 0b) in range but only scraps left (Leave Scraps)
        local bId, bIdx, bDist   -- 1) provides the wanted (lowest) nutrient
        local aId, aIdx, aDist   -- 2) diet-allowed (gives nutrition)
        local fId, fIdx, fDist   -- 3) anything at all (vegetation included)
        local function consider(id, idx, nutrition, allowed, dist, scraps)
            if not id then return end
            -- A target whose bites stalled is skipped for a while (see the stall rescan below).
            if PX.feStallSkip and (PX.feStallSkip[id] or 0) > os.clock() then return end
            -- Leave Scraps keeps a plant from being emptied, but Force Eat stands still: with only scraps
            -- in reach it used to bite something out of reach and eat nothing (2026-10-15, a Juvenile
            -- Dreadnoughtus bites 76, so every 70-100 food bush around it counted as scraps). Scraps in
            -- reach are now eaten, but only when nothing else in reach is.
            if scraps then
                if dist <= EAT then
                    local rank = 2
                    if want and nutrition[want] then rank = 0 elseif allowed then rank = 1 end
                    if (not sRank) or rank < sRank or (rank == sRank and dist < (sDist or math.huge)) then
                        sRank, sId, sIdx, sDist = rank, id, idx, dist
                    end
                end
                return
            end
            -- TIER 0 — a bite that LANDS beats a theoretically better one that doesn't.
            -- This is why Force Eat felt like it only worked standing on top of something: the
            -- preference tiers below are capped at 100 studs, so a nutritionally ideal plant 90
            -- studs away outranked the one at your feet. Bite carries no position — the server
            -- resolves range from its own copy — so that bite simply did nothing, and you had to
            -- walk until the good target happened to be the near one. Anything genuinely in range
            -- now wins outright, and among those we still prefer the nutrient we're short of.
            if dist <= EAT then
                local rank = 2
                if want and nutrition[want] then rank = 0 elseif allowed then rank = 1 end
                if (not rRank) or rank < rRank or (rank == rRank and dist < (rDist or math.huge)) then
                    rRank, rId, rIdx, rDist = rank, id, idx, dist
                end
            end
            -- The "anything" fallback is NOT range-capped, so a big/elevated adult (root high off
            -- the ground) still finds the nearest food — matching the old behavior that worked. The
            -- nutrition preferences stay range-capped so close, useful food still wins when present.
            if not fDist or dist < fDist then fId, fIdx, fDist = id, idx, dist end
            if dist <= RANGE then
                if allowed and (not aDist or dist < aDist) then aId, aIdx, aDist = id, idx, dist end
                if want and nutrition[want] and (not bDist or dist < bDist) then bId, bIdx, bDist = id, idx, dist end
            end
        end
        -- foliage: vegetation, shellfish, eggs, bones — ALL of it, diet or not
        -- ConsumableFoliage is the real food tag; FoliageStreamable is tree visual parts.
        -- A plant's actions are only read inside RANGE, where every tier can use them. Beyond RANGE only
        -- tier 3 (the nearest plant with anything to eat) can win, so those are tried nearest-first below
        -- instead of every plant on the map having its actions read twice a second. Same answer.
        local far = {}
        for _, tagged in ipairs(Collection:GetTagged("ConsumableFoliage")) do
            local pos, id = PX.foodSpot(tagged)
            if pos then
                local d = (pos - rootPos).Magnitude
                if d <= RANGE then
                    local acts = actionsFor(tagged.Name, id, true)
                    for _, a in ipairs(acts) do consider(tonumber(id), a.index, a.nutrition, a.allowed, d, a.scraps) end
                else
                    far[#far + 1] = { tagged = tagged, id = id, d = d }
                end
            end
        end
        -- corpses / meat (the big Proteins/Fats source)
        if CC and CC.CorpseData then
            for id, data in pairs(CC.CorpseData) do
                local act = data and corpseAction(data.Name)
                local root = act and data.Root
                if root then
                    local pos
                    pcall(function() pos = root:IsA("BasePart") and root.Position or root:GetPivot().Position end)
                    -- Leave Scraps (Force Eat): a corpse down to its scraps counts as eaten out.
                    local food = bufferCheck(tonumber(id), act.index)
                    if pos then
                        consider(tonumber(id), act.index, act.nutrition, act.allowed, (pos - rootPos).Magnitude,
                            food ~= nil and PX.LEAVE_SCRAPS and PX.isScraps(food))
                    end
                end
            end
        end
        -- Plants beyond RANGE can only win tier 3, and only if nearer than the best found so far.
        if #far > 0 and not (fDist and fDist <= RANGE) then
            table.sort(far, function(a, b) return a.d < b.d end)
            for _, f in ipairs(far) do
                if fDist and f.d >= fDist then break end
                local acts = actionsFor(f.tagged.Name, f.id)
                if #acts > 0 then
                    for _, a in ipairs(acts) do consider(tonumber(f.id), a.index, a.nutrition, a.allowed, f.d) end
                    break
                end
            end
        end
        if rId then return rId, rIdx end   -- in range, so it will actually connect
        if sId then return sId, sIdx, true end   -- only scraps in range: they still connect
        if bId then return bId, bIdx end
        if aId then return aId, aIdx end
        return fId, fIdx
    end
    -- Fallback (require unavailable): old behavior — nearest consumable, action 1.
    local function nearestAny(rootPos)
        local bestId, bestDist
        for _, tagged in ipairs(Collection:GetTagged("ConsumableFoliage")) do
            local pos, id = PX.foodSpot(tagged)
            if pos then
                local d = (pos - rootPos).Magnitude
                if not bestDist or d < bestDist then bestId, bestDist = tonumber(id), d end
            end
        end
        return bestId, 1
    end
    -- Where a plant is and its food ID. Plants never move and the ID never changes, so both are read
    -- once per plant instead of on every scan (Force Eat rescans twice a second, over every plant).
    PX.foodSpotCache = setmetatable({}, { __mode = "k" })
    function PX.foodSpot(tagged)
        local c = PX.foodSpotCache[tagged]
        if c then return c.pos, c.id end
        local id = tagged:GetAttribute("ID")
        if not id then return nil, nil end
        local pos
        pcall(function() pos = tagged:GetPivot().Position end)
        if not pos then return nil, id end
        PX.foodSpotCache[tagged] = { pos = pos, id = id }
        return pos, id
    end
    local cachedId, cachedIdx, lastScan = nil, nil, 0
    local cachedScraps = false   -- the picker chose scraps on purpose (nothing else in reach)
    -- Was 2s. That's the other half of "I'm in range and it won't eat": walking up to a plant left
    -- the old, far target cached for up to two seconds before anything noticed the better one at
    -- your feet. Half a second is responsive enough to feel immediate and still only twice a
    -- second on a list this size.
    local SCAN_INTERVAL = 0.5   -- re-scan for a new target (the expensive part)
        -- ── AFK Farm helpers (exposed on PX so the flight loop can reach them) ──
    PX.afkConsumeId = consumeId
    PX.afkBufCheck = bufferCheck

    function PX.afkPickFood(rootPos, exclude, opts)
        local EAT = 22
        pcall(function() if PX.khRange then EAT = PX.khRange() end end)
        -- opts (Legit Farm): {avoid, meat, maxDist, reach(pos, isMeat)}. Without it, AFK Farm's settings.
        local avoidR = (opts and opts.avoid) or PX.AFK_FARM_AVOID or 200

        -- What to go for, for every dino (the farm bites anything, diet or not, the way Force Eat does):
        --   1. food that tops up a nutrient at or below 99%: meat first, then plants. Bones, shells,
        --      eggs and insects count here only once that nutrient is down to 90%.
        --   2. meat close by (meat eaters)
        --   3. the nearest plant - what the farm eats nearly all the time, carnivores included
        --   4. meat further off
        --   5. bones, shells, eggs, insects (PX.OTHER_FOOD) - only when nothing else is left
        -- A food "gives" a nutrient when it carries at least 0.5 of it: a bone pile's 0.1 Proteins is
        -- not a reason to walk to one. (It used to be: diet food +5000 while Proteins/Fats < 98%, so a
        -- carnivore's bone piles and shellfish beat every plant within 5000 studs.)
        local lowest = lowestNutrient()
        local low, veryLow = {}, {}
        pcall(function()
            local st = nutritionStats()
            if not st then return end
            local names = {}
            pcall(function()
                for _, n in ipairs(CState.Data.Shared.Nutrition) do names[#names + 1] = n.Category end
            end)
            if #names == 0 then names = PX.NUTRIENTS end   -- empty list: use the stats themselves
            for _, name in ipairs(names) do
                local v = name and tonumber(st[name])
                if v and v <= 99 then low[name] = true end
                if v and v <= 90 then veryLow[name] = true end
            end
        end)
        local function gives(nutrition, set)
            for n in pairs(set) do
                if (tonumber(nutrition[n]) or 0) >= 0.5 then return true end
            end
            return false
        end
        local MEAT_NEAR = math.max(150, EAT * 6)
        -- Legit Farm walks: food well above or below its feet costs extra per stud (opts.yWeight), so a
        -- plant down a cliff or up on a ledge counts as further off than one on level ground.
        local yw, feetY = opts and opts.yWeight, (opts and opts.feetY) or rootPos.Y
        local function distTo(pos)
            if not yw then return (pos - rootPos).Magnitude end
            local flat = Vector3.new(pos.X - rootPos.X, 0, pos.Z - rootPos.Z).Magnitude
            return flat + math.max(0, math.abs(pos.Y - feetY) - 6) * yw
        end
        -- Our own species, so we never target a same-species corpse: the server refuses that bite,
        -- so it would only stall the farm on a carcass it can never eat.
        local myType
        pcall(function() myType = LocalPlayer.Character:GetAttribute("Type") end)

        -- Terrain surface at an XZ, so we can tell a corpse that fell UNDER the map from one on it.
        -- The farm holds at ground level (terrain + stand height) and reaches down about one bite
        -- range; a corpse deeper than that is unreachable, and targeting it just parks us hovering
        -- above the map forever. Only corpses are ray-checked (there are a handful) -- never foliage.
        local surfaceRay = RaycastParams.new()
        surfaceRay.FilterType = Enum.RaycastFilterType.Include
        surfaceRay.FilterDescendantsInstances = { workspace.Terrain }
        local function surfaceY(pos)
            -- Start well ABOVE any terrain, not just above the corpse: an under-map carcass sits below
            -- the surface, and a ray from its own height would fire off underneath the floor and miss
            -- it. From up high the first hit is always the real ground.
            local hit = workspace:Raycast(Vector3.new(pos.X, 5000, pos.Z), Vector3.new(0, -12000, 0), surfaceRay)
            return hit and hit.Position.Y
        end

        -- Cache player positions ONCE per scan instead of per food item
        local playerPositions = {}
        if avoidR > 0 then
            for _, pl in ipairs(game.Players:GetPlayers()) do
                if pl ~= LocalPlayer and pl.Character then
                    local r = PX.getRootOf(pl.Character, false)
                    if r then playerPositions[#playerPositions + 1] = r.Position end
                end
            end
        end

        local bestId, bestIdx, bestPos, bestScore, bestMeat

        -- kind: "plant", "meat" or "other" (bones, shells, eggs, insects - a bone corpse included)
        local function consider(id, idx, nutrition, allowed, dist, pos, isMeat, kind)
            if not id or not pos then return end
            if exclude and exclude[id] then return end
            if opts and opts.maxDist and dist > opts.maxDist then return end
            for _, pp in ipairs(playerPositions) do
                if (pp - pos).Magnitude <= avoidR then return end
            end
            local s = -dist
            local other = kind == "other"
            if allowed and gives(nutrition, low) and (not other or gives(nutrition, veryLow)) then
                s = s + ((kind == "meat") and 40000 or other and 20000 or 30000)
                if lowest and (tonumber(nutrition[lowest]) or 0) >= 0.5 then s = s + 5000 end
            elseif kind == "meat" then
                s = s + ((dist <= MEAT_NEAR) and 10000 or -50000)
            elseif other then
                s = s - 100000
            end
            if not bestScore or s > bestScore then
                -- Across a map wall or out of the map's rectangle (the server kicks a dino out there): never.
                if PX.wallCross and PX.wallCross(rootPos, pos) then return end
                -- The reach test costs raycasts, so it only runs for a candidate that would win.
                if opts and opts.reach and not opts.reach(pos, isMeat) then return end
                bestId, bestIdx, bestPos, bestScore, bestMeat = id, idx, pos, s, isMeat
            end
        end

        for _, tagged in ipairs(Collection:GetTagged("ConsumableFoliage")) do
            local pos, id = PX.foodSpot(tagged)
            if pos then
                local d = distTo(pos)
                local acts = actionsFor(tagged.Name, id)
                for _, a in ipairs(acts) do
                    consider(tonumber(id), a.index, a.nutrition, a.allowed, d, pos, false,
                        PX.OTHER_FOOD[a.category or ""] and "other" or "plant")
                end
            end
        end
        if (opts and opts.meat or (not opts and PX.dinoEatsMeat())) and CC and CC.CorpseData then
            for id, data in pairs(CC.CorpseData) do
                -- Skip our own species (no cannibalism), and skip a corpse with no meat ready -- an
                -- un-investigated "Investigate ???" carcass has no readable food buffer, so targeting
                -- it means flying over and getting stuck biting nothing.
                if data and tostring(data.Name) ~= tostring(myType) then
                    local act = corpseAction(data.Name)
                    local croot = act and data.Root
                    if croot then
                        local pos
                        pcall(function() pos = croot:IsA("BasePart") and croot.Position or croot:GetPivot().Position end)
                        if pos then
                            local sy = surfaceY(pos)
                            local underMap = sy ~= nil and pos.Y < sy - EAT
                            local food, water, spawned = bufferCheck(tonumber(id), act.index)
                            if not underMap and food ~= nil and spawned and (food + (water or 0)) > 0 then
                                consider(tonumber(id), act.index, act.nutrition, act.allowed, distTo(pos), pos, true,
                                    PX.OTHER_FOOD[act.category or ""] and "other" or "meat")
                            end
                        end
                    end
                end
            end
        end
        return bestId, bestIdx, bestPos, bestMeat
    end
    -- ── end AFK Farm helpers ──

    -- Keeps Food pinned at max: we bite continuously, fast enough to out-run the natural drain.
    --
    -- We deliberately do NOT hold SetAction "Consuming" while doing it. That's the game's own
    -- "I am eating" state, and asserting it permanently (what this used to do) is what FROZE the
    -- Food stat — the drain/metabolism tick stops while you're in the eating state, so the number
    -- sat dead instead of draining and being refilled. The food gain itself comes from the "Bite"
    -- action, not from the state, so dropping the state keeps the top-up working while letting
    -- hunger drain normally underneath.
    local hungry = true   -- hysteresis latch for Eat Only When Hungry
    local stallCount = 0           -- consecutive bites that didn't reduce the target's food
    local lastBiteFood = nil       -- food level seen on the target after the previous bite
    local stallTarget = nil        -- which target the stall counter is tracking
    -- Switch targets after this many stalled bites. The game allows 5, but at the 0.85 s pace a refused
    -- bite is rare, so a stall almost always means out of the server's reach: give up after ~2.5 s, not ~4.
    local STALL_LIMIT = 3
    -- A target found empty (or down to scraps) sends no bite, so the next one is tried 0.1 s later rather than a
    -- whole tick later (that idle tick cost ~0.85 s per plant with Leave Scraps on). Never twice in a row.
    local quickNext, quickLast = false, false
    while not PX.UNLOADED do
        pcall(function()
            local cid = consumeId()
            -- Eat Only When Hungry: hold off while we're topped up so nothing is eaten past the cap
            -- and discarded. Latches, so it eats a full meal rather than flickering at the boundary.
            local wantEat = true
            if PX.EAT_WHEN_HUNGRY then
                local fcur, fmax = PX.myFood()
                if fcur and fmax and fmax > 0 then
                    if hungry then
                        if fcur >= fmax - PX.foodGap(fmax, 0.05) then hungry = false end     -- full
                    elseif fcur <= fmax - PX.foodGap(fmax, 1) then
                        hungry = true                                                        -- 1 food down
                    end
                    wantEat = hungry
                end
                -- Unreadable Food (nil) leaves wantEat true: better to keep eating than to starve.
            end
            -- Legit Farm owns the target while it runs: bite only the food it is standing at, nothing else.
            local farmEat = PX.LEGIT_FARM and PX.lfEat
            if (PX.FORCE_EAT or farmEat) and not PX.AFK_FARM and not (PX.LEGIT_FARM and not farmEat) and not PX.CLEAN_BREAK
                and ReplicaSignal and cid and wantEat then
                -- Re-scan for a target only every SCAN_INTERVAL seconds (the expensive part)
                local now = os.clock()
                local forceRescan = stallCount >= STALL_LIMIT
                if farmEat and (cachedId ~= farmEat.id or cachedIdx ~= farmEat.idx) then
                    cachedId, cachedIdx, cachedScraps = farmEat.id, farmEat.idx, false
                    stallCount = 0; lastBiteFood = nil; stallTarget = farmEat.id
                end
                if not farmEat and (now - lastScan >= SCAN_INTERVAL or not cachedId or forceRescan) then
                    if forceRescan then
                        -- Skip the stalled target for a minute, or the rescan picks the same one straight back.
                        -- 2026-10-15: parked beside a tree fern, Force Eat kept biting a better-scored plant the
                        -- server would not credit (inside the 53-stud detection range, out of its real reach),
                        -- and the fern next to the dino was never tried.
                        if stallTarget then
                            PX.feStallSkip = PX.feStallSkip or {}
                            PX.feStallSkip[stallTarget] = os.clock() + 60
                        end
                        stallCount = 0; lastBiteFood = nil; stallTarget = nil
                    end
                    lastScan = now
                    local char = LocalPlayer.Character
                    local root = char and (char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Body")
                        or char:FindFirstChildWhichIsA("BasePart"))
                    if root then
                        local newId, newIdx, newScraps
                        if CData and CState then
                            newId, newIdx, newScraps = pickBite(root.Position, lowestNutrient())
                        else
                            newId, newIdx = nearestAny(root.Position)
                        end
                        cachedScraps = newScraps == true
                                                if newId then
                            cachedId, cachedIdx = newId, newIdx
                            if newId ~= stallTarget then
                                stallCount = 0; lastBiteFood = nil; stallTarget = newId
                            end
                        else
                            cachedId, cachedIdx = nil, nil
                        end
                    end
                end
                -- ONE bite per tick, always. Rate is controlled by the tick period below, never by
                -- stacking sends into a single frame — see the note on PX.FAST_EAT_RATE for the
                -- measurement showing that a 4-per-frame burst credits nothing at all.
                for _ = 1, 1 do
                    local id, idx = cachedId, cachedIdx
                    if id and type(id) == "number" and id >= 0 and id < 4294967296 then
                        -- Pre-bite buffer check: skip if the target has no food left or is despawned
                        local food, water, spawned = bufferCheck(id, idx)
                        local total = food and (food + (water or 0)) or nil
                        -- Leave Scraps: Force Eat's own applies to anything it picks; for Legit Farm it
                        -- applies to plants only - a corpse or meat the farm is at is eaten to the end
                        -- (skipping scraps there left the farm standing at a corpse, biting nothing).
                        -- Legit Farm never leaves scraps on a corpse: it eats meat to the end (the corpse rots
                        -- either way, and the farm needs the Proteins and Fats). Force Eat on its own leaves
                        -- scraps on everything, corpses too; its picker (pickBite) skips a corpse already down
                        -- to scraps, so it never stands beside one refusing to bite (the old stuck bug).
                        local isMeat = false
                        pcall(function()
                            isMeat = CC ~= nil and CC.CorpseData ~= nil
                                and (CC.CorpseData[id] or CC.CorpseData[tostring(id)]) ~= nil
                        end)
                        local scraps = (farmEat and not isMeat and not farmEat.meat and (PX.LF_SCRAPS or PX.LEAVE_SCRAPS))
                            or (not farmEat and PX.LEAVE_SCRAPS and not cachedScraps)
                        if food ~= nil and ((not spawned or total <= 0) or (scraps and PX.isScraps(food))) then
                            cachedId = nil  -- force rescan next tick
                            quickNext = true
                        else
                            local b = buffer.create(5)
                            buffer.writeu32(b, 0, math.floor(id))
                            buffer.writeu8(b, 4, idx or 1)
                            ReplicaSignal:FireServer(cid, "Bite", b)
                            -- Legit Farm judges each bite itself (did the plant's food drop?).
                            if farmEat then PX.lfBiteN = (PX.lfBiteN or 0) + 1 end
                            -- Stall detection: the game cancels after 5 bites that don't reduce food.
                            if food then
                                if lastBiteFood and stallTarget == id and food < lastBiteFood then
                                    PX.noteBiteDrop(lastBiteFood - food)   -- Leave Scraps learns the bite size
                                end
                                if lastBiteFood and food >= lastBiteFood and stallTarget == id then
                                    stallCount = stallCount + 1
                                else
                                    stallCount = 0
                                end
                                lastBiteFood = food
                                stallTarget = id
                            end
                        end
                    end
                end
            end
            -- Never leave the eating state asserted (e.g. left over from an earlier build/config).
            if consuming then setConsuming(false) end
        end)
        -- Fast: PX.FAST_EAT_RATE bites/sec (one every 0.85 s). Off: one every 1.6 s.
        -- Clamped at 1.25/sec: the server's cooldown is 0.8 s, so faster only throws bites away.
        local quick = quickNext and not quickLast
        quickLast, quickNext = quick, false
        if quick then
            task.wait(0.1)
        else
            task.wait(PX.FAST_EAT and (1 / math.clamp(PX.FAST_EAT_RATE or 1.25, 0.2, 1.25)) or 1.6)
        end
    end
end)

-- ═══════════════════════════════════════
-- AUTO CLEANLINESS  (keeps cleanliness topped up — no water/mud source, no animation)
-- ═══════════════════════════════════════
-- Cleaning fires CharacterState.Replica:FireServer("CleanlinessStart") ... "CleanlinessStop"
-- (CleanlinessClient). The "be in water/mud/dust" requirement is CLIENT-only (InitiateCleaning), and
-- StartCleaning's body-anchor + animation are client-side too — so firing the raw replica action on
-- the character replica cleans silently with no source. We enter the cleaning state while dirty and
-- leave it once Cleanliness is full (read from ReplicaSet). Reuses getCharReplicaId / ReplicaSignal.
PX.CLEAN_AT = 60          -- a farm takes a clean break below this Cleanliness (out of 100)
PX.CLEAN_STALL = 75       -- seconds without a rise before a clean break sends its start again
-- Full. The stat is whole numbers out of 100 and reaches 100 (a Saurophaganax sat there). Stopping at 99, as
-- this used to, left it bouncing 98-99 for good: it drains a point, the start brings it back to 99, the
-- stop goes out again (seen in game, buffer 0, 2026-09-18).
PX.CLEAN_FULL = 100
PX.CLEAN_BREAK = false    -- true while Legit Farm, AFK Farm and Force Eat stand down for one
function PX.cleanBreakEnd(why, backoff)
    if not PX.CLEAN_BREAK then return end
    PX.CLEAN_BREAK, PX.cleanBreak = false, nil
    PX.cleanBreakNext = os.clock() + (backoff or 0)   -- not getting cleaner / taking damage: not straight away
    PX.cleanBreakWhy = why
end
task.spawn(function()
    local cleaning = false
    local function setCleaning(state, force)
        -- Infinite Oxygen owns the cleaning state while it's on, so Auto Cleanliness reaching full
        -- must not clear it or the oxygen hold would silently release. Same guard Freeze Water uses
        -- over Auto Water's setDrinking(false).
        if state == false and PX.INF_OXYGEN then return end
        if state == cleaning and not force then return end
        local charId = getCharReplicaId()
        if not (charId and ReplicaSignal) then return end   -- nothing sent: not cleaning (it tries again)
        pcall(function() ReplicaSignal:FireServer(charId, state and "CleanlinessStart" or "CleanlinessStop") end)
        cleaning = state
    end
    -- Our own cleanliness (the retry below reads it to see whether cleaning is rising).
    -- The real stat is a WELLBEING one (the game's Wellbeing class: SavableStats.Stats, default 75,
    -- CleanlinessSettings drain/gain/buffer), read live from CharacterState.Wellbeing.SavableStats - the
    -- same table as WellbeingReplica.Data.SavableStats.Stats. The character replica no longer carries a
    -- Cleanliness on every dino (a Diabloceratops had none, so this returned nil and Auto Clean sent its
    -- start once and never again). The old reads stay as fallbacks.
    function PX.myCleanliness()
        local v
        pcall(function() v = PX.getCS().Wellbeing.SavableStats.Cleanliness end)
        if v == nil then pcall(function() v = PX.getCS().Wellbeing.WellbeingReplica.Data.SavableStats.Stats.Cleanliness end) end
        local id = getCharReplicaId()
        if v == nil and id then v = PX.cleanliness[id] end
        if v == nil then pcall(function() v = PX.getCS().Replica.Data.Cleanliness end) end
        return type(v) == "number" and v or nil
    end
    -- Clean break, shared by Auto Clean and Infinite Oxygen. The game will not clean while you are eating
    -- (its own cleaning client refuses while Consuming, Drinking, Licking, resting or sleeping), and a farm
    -- bites nonstop - so below PX.CLEAN_AT the farms stand down (PX.CLEAN_BREAK) until it is full, then carry
    -- on. Infinite Oxygen holds the cleaning state all along; a break only stops the eating. Returns whether
    -- a break is running (it has sent its own start).
    local function cleanBreakStep(val)
        local farming = PX.AFK_FARM or PX.LEGIT_FARM
        local ch = LocalPlayer.Character
        local alive = ch ~= nil and ch.Parent ~= nil
        if val and val >= PX.CLEAN_FULL then
            if PX.CLEAN_BREAK then PX.cleanBreakEnd("clean") end
            return false
        end
        -- Never clean while thirsty or hungry: a break stops drinking and eating too (2026-10-15 water fell to 3%
        -- during one). Under 40% no new break starts, so the farm drinks/eats first; under 25% a running one ends.
        local w, f
        pcall(function()
            local d = PX.getCS().Replica.Data
            w, f = d.Stats.Water / d.MaxStats.Water, d.Stats.Food / d.MaxStats.Food
        end)
        if type(w) == "number" and type(f) == "number" then
            if PX.CLEAN_BREAK and (w < 0.25 or f < 0.25) then
                PX.cleanBreakEnd("thirsty or hungry", 60)
                return false
            end
            if not PX.CLEAN_BREAK and (w < 0.4 or f < 0.4) then return false end
        end
        if farming and alive and val and val < PX.CLEAN_AT and not PX.CLEAN_BREAK
            and os.clock() >= (PX.cleanBreakNext or 0) then
            PX.CLEAN_BREAK = true
            PX.cleanBreak = { t = os.clock(), from = val, sent = false, hp = ch:GetAttribute("Health") }
            -- Say so: a farm standing still for minutes with no word reads as broken ("afk farm doesnt move").
            pcall(function()
                if PX.Hub then PX.Hub:Notify(("Clean break: cleanliness %d%% - the farm stands still until clean (the game can't clean while eating)"):format(math.floor(val)), 8) end
            end)
        end
        local b = PX.CLEAN_BREAK and PX.cleanBreak
        if not b then return false end
        local now = os.clock()
        local hp = alive and ch:GetAttribute("Health")
        if not b.sent and now - b.t >= 2 then          -- the last bite has finished by now
            b.sent, b.lastRise, b.last = true, now, val
            setCleaning(true, true)
        end
        -- Cleanliness rises in steps (about every 30 s), so a quiet spell is normal. Only a stall - no rise
        -- for PX.CLEAN_STALL - counts, and a stall first sends the start again (up to twice) and keeps
        -- going; only after that does the break stop, and it comes back 2 minutes later.
        if b.sent and val and b.last and val > b.last then b.lastRise = now end
        if val then b.last = val end
        PX.lfStatus = "clean break (" .. tostring(val and math.floor(val) or "?") .. "%)"
        if not farming or not alive then
            PX.cleanBreakEnd("farm stopped")
        elseif type(hp) == "number" and type(b.hp) == "number" and hp < b.hp * 0.97 then
            PX.cleanBreakEnd("taking damage", 120)       -- being hit: back to the farm's own safety
        elseif b.sent and now - b.lastRise > PX.CLEAN_STALL then
            if (b.kicks or 0) < 2 then
                b.kicks, b.lastRise = (b.kicks or 0) + 1, now
                setCleaning(true, true)                  -- stopped rising: start it again, keep going
            else
                PX.cleanBreakEnd("not getting cleaner", 120)
            end
        elseif now - b.t > 360 then
            PX.cleanBreakEnd("took too long", 120)
        end
        return true
    end
    local oxyTick, cleanTick, lastVal = 0, 0, nil
    while not PX.UNLOADED do
        if PX.INF_OXYGEN and ReplicaSignal then
            -- Held unconditionally, ignoring cleanliness — the point is the STATE, not the stat.
            -- Forced re-assert every 5s because the server may end the action on its own once
            -- you're fully clean, and the dedupe above would otherwise never re-fire it.
            oxyTick = oxyTick + 1
            setCleaning(true, (oxyTick % 5) == 0)
            cleanBreakStep(PX.myCleanliness())            -- a farm still has to stop eating to get clean
        elseif (PX.AUTO_CLEAN or PX.AFK_FARM or PX.LEGIT_FARM) and ReplicaSignal then
            -- AFK Farm and Legit Farm keep you clean on their own, the way they keep food and water up.
            local val = PX.myCleanliness()
            if val and val >= PX.CLEAN_FULL then
                setCleaning(false)                             -- full → leave the state
                PX.cleanRiseT = os.clock()
                cleanBreakStep(val)
            else
                -- dirty (or unknown) → keep cleaning. It rises in steps; not risen for 40 s → the start is
                -- sent again, at most once a minute (one sent for the last dino, or before this one's
                -- replica existed, never took - Deinocheirus sat at 0% that way).
                cleanTick = cleanTick + 1
                if (val and lastVal and val > lastVal) or not PX.cleanRiseT then PX.cleanRiseT = os.clock() end
                if not cleanBreakStep(val) then
                    setCleaning(true, val ~= nil and os.clock() - PX.cleanRiseT > 40 and cleanTick % 60 == 0)
                end
            end
            lastVal = val
        elseif cleaning then
            setCleaning(false)
        end
        -- A clean break never outlives the farm it paused.
        if PX.CLEAN_BREAK and not (PX.AFK_FARM or PX.LEGIT_FARM) then PX.cleanBreakEnd("farm stopped") end
        task.wait(1.0)
    end
    PX.cleanBreakEnd("unloaded")
    -- Unloading while Infinite Oxygen holds the state would strand the dino mid-clean forever,
    -- because the guard in setCleaning refuses every release while the flag is up. Drop the flag
    -- first so the release actually goes through.
    if cleaning then
        PX.INF_OXYGEN = false
        setCleaning(false)
    end
end)

-- ═══════════════════════════════════════
-- INFINITE STAMINA  (never-tiring sprint)
-- ═══════════════════════════════════════
-- (Infinite Stamina removed by request.)

-- ═══════════════════════════════════════
-- SHARED MOVER  (the server's "Speeding" rules, measured 2026-10-14)
-- ═══════════════════════════════════════
-- Every feature that moves the dino by writing its position goes through PX.govNext / PX.govGlide below.
-- What the server enforces (measured on place v1751, Plan/Prior Movement Rework.md):
--   * It samples our position about once a second (player attribute ServerPosition) and compares each
--     HORIZONTAL step with the speed of the gait it thinks we are in: the replica's ServerSpeed is the walk /
--     trot / run / sprint speed, and holding nothing counts as walking. The limit is ~1.45 x that + 2 studs/s.
--     Sprint does not raise it (the cap stays run-based), and right after Run is pressed the server still
--     judges at walk speed for a second or two.
--   * About 4 samples over -> CharacterService.Teleport snaps the dino back (character attribute TeleportId
--     +1). One slow second does not reset that count, so bursts do not help. Repeated snaps = "Speeding" kick.
--   * Vertical has its own limit, ~165-175 studs/s, the same at any size or gait.
--   * Attributes the client sets never reach the server: "Teleporting" only steers the game's LOCAL height hold.
-- So the mover holds Run through the game's own input while it moves us sideways, goes sideways at
-- the run speed itself (from the slowest ServerSpeed of the last 3 s, so the server has seen Run first)
-- and up/down at 150, and never fights a snap-back: it stands where the server put us for 3 s, then carries
-- on at the same speed.
-- 2026-10-15: at 1.4 x run + 1 the server's readings sat at ~1.45-1.5 x run, a few % under its limit; they jitter
-- +-15% (spikes +40%) and the over-limit ones carry over between moves, so back-to-back moves (Fossil legs, hops)
-- were snapped back. At 1.25 x run + 1 a Fossil Farm session still snapped after ~2 minutes, with every reading
-- under the measured limit: the server keeps something like a speed budget - time above the dino's own run speed
-- fills it, a full one snaps back - so the only sustained speed that never flags is the run speed itself (a
-- 380-stud trip at exactly 1.0 x was clean right after a snap). Plan/Prior Movement Rework.md 5k.
PX.MV_SIDE_MULT, PX.MV_SIDE_ADD = 1.0, 0
-- In the air with nothing under us the server is stricter: at +30, 1.2 x run was clean and 1.35 x snapped back,
-- while on a client-side platform carried under the dino 1.35 x was clean (it goes by the game's own grounded
-- state). So level flight carries an invisible platform (PX.mvPlatformStep) and keeps the ground cap; climbing or
-- dropping goes without one at this lower cap.
PX.MV_AIR_MULT = 1.0             -- never above the level cap (was 1.1 x run + 1 when level went at 1.4)
PX.MV_VERT = 150                 -- studs/s up or down (clean at 155, snapped at 175)
PX.MV_WARMUP = 3                 -- seconds of ServerSpeed the sideways cap takes the slowest of (1.5 let the first
                                 -- fast reading of a move count as walking on the server)
PX.MV_SNAP_WAIT = 3              -- seconds every mover stands still after a snap-back
-- Stamina (measured 2026-10-15 on a SubAdult Dreadnoughtus): Run drains it at ~0.17/s (a full bar lasts ~5 min) and
-- the game drops Run at 0, which left long trips crawling at walking speed (3.2). Trot goes half the run speed (8 vs
-- 15.9) and REFILLS stamina (+0.21/s; walking +0.34/s) for about a third of Run's Food. So a mover trots once stamina
-- is under MV_TROT_BELOW of the bar and runs again over MV_RUN_ABOVE - it never falls back to walking.
PX.MV_TROT_BELOW, PX.MV_RUN_ABOVE = 0.15, 0.6
PX.MV_TRIP_N, PX.MV_TRIP_WINDOW = 3, 120   -- this many snap-backs in the window stops the farms and Fly
PX.GOV_STEP_MAX = 25             -- studs in any one write: a frame hitch never becomes a hop
PX.govCommanded, PX.govCommandT = nil, 0
PX.mvHist = {}                   -- { {t, ServerSpeed}, ... } over the warm-up window
PX.mvRunWantT = -math.huge       -- last sideways step a mover asked for; Run is held while it is recent
PX.mvSnapT = -math.huge          -- last snap-back
PX.mvSnaps = {}                  -- recent snap-backs that happened while a mover was moving us

-- The dino's walk and run speed from its data, for executors without CharacterState (Xeno). The live speed is
-- the stage's own blended toward the next stage's by growth (checked live: Juvenile 17.6 -> Adolescent 23.6 at
-- 17 % = 18.63, the replica's RunSpeed).
function PX.mvDataSpeeds()
    local ch = LocalPlayer.Character
    local sp, stage = ch and ch:GetAttribute("Type"), ch and ch:GetAttribute("Stage")
    if not (sp and stage) then return nil end
    local c = PX.mvDataCache
    if not (c and c.sp == sp) then
        c = { sp = sp, st = {} }
        pcall(function()
            for st, row in pairs(PX.req(PX.WATER_RS.DinosaurData[sp]).GrowthStages) do
                local sp2 = row.Movement and row.Movement.Speeds
                local s = sp2 and sp2.Land
                local sw = sp2 and sp2.Swim and tonumber(sp2.Swim.Normal)
                if s and tonumber(s.Normal) and tonumber(s.Run) then c.st[tostring(st)] = { s.Normal, s.Run, sw or s.Normal } end
            end
        end)
        PX.mvDataCache = c
    end
    local here = c.st[tostring(stage)]
    if not here then return nil end
    local walk, run, swim = here[1], here[2], here[3]
    local g
    pcall(function() g = PX.liteGrowthOf(stage, ch:GetAttribute("Weight"), PX.dinoStageWeights()) end)
    local nxt = g and g.NextStage and c.st[g.NextStage]
    if nxt and g.Delta then
        walk, run, swim = walk + (nxt[1] - walk) * g.Delta, run + (nxt[2] - run) * g.Delta, swim + (nxt[3] - swim) * g.Delta
    end
    return walk, run, swim
end

-- The dino's trot speed for its stage (the game's Movement.Speeds.Land.Trot; the server's ServerSpeed while trotting
-- was exactly that, 8.00 on a SubAdult Dreadnoughtus). nil when the data can't be read.
function PX.mvTrotSpeed()
    local ch = LocalPlayer.Character
    local sp, stage = ch and ch:GetAttribute("Type"), ch and ch:GetAttribute("Stage")
    if not (sp and stage) then return nil end
    local key = tostring(sp) .. "/" .. tostring(stage)
    if PX.mvTrotCache and PX.mvTrotCache.key == key then return PX.mvTrotCache.v end
    local v
    pcall(function()
        local row = PX.req(PX.WATER_RS.DinosaurData[sp]).GrowthStages[stage]
        v = tonumber(row.Movement.Speeds.Land.Trot)
    end)
    PX.mvTrotCache = { key = key, v = v }
    return v
end

-- Over water? The game counts the dino as in water at ANY height over a lake (measured 2026-10-14: still "in water" at
-- +80, and a Fossil Farm leg across a lake at ~27 studs/s was snapped back at once - judged as swimming). Its own flag,
-- or water straight down under the body (Xeno, or before the flag has caught up). Cached for a tenth of a second.
PX.mvWaterRay = RaycastParams.new()
PX.mvWaterRay.FilterType = Enum.RaycastFilterType.Include
PX.mvWaterRay.FilterDescendantsInstances = { workspace.Terrain }
PX.mvWaterRay.IgnoreWater = false
function PX.mvOverWater()
    local now = os.clock()
    if PX.mvWaterT and now - PX.mvWaterT < 0.1 then return PX.mvWaterV end
    local v = false
    pcall(function()
        local CS = PX.getCS and PX.getCS()
        if CS and (CS.IsInWater == true or (CS.Replica and CS.Replica.Data and CS.Replica.Data.IsInWater == true)) then v = true return end
        local root = PX.getLocalPhysicsRoot()
        if root then
            local h = workspace:Raycast(root.Position, Vector3.new(0, -3000, 0), PX.mvWaterRay)
            v = h ~= nil and h.Material == Enum.Material.Water
        end
    end)
    PX.mvWaterT, PX.mvWaterV = now, v
    return v
end

-- Glide deadlines are worked out at the land cap; over water the mover is held to swimming speed, so the clock
-- stops there (never past `hardEnd`). Call at the top of each loop pass: deadline, lastT = PX.mvExtend(...).
PX.MV_WATER_EXTRA = 900          -- seconds a glide's deadline may be pushed back over water, at most
function PX.mvExtend(deadline, lastT, hardEnd)
    local now = os.clock()
    if PX.mvOverWater() then deadline = math.min(deadline + (now - lastT), hardEnd) end
    return deadline, now
end

-- Window focus. Real answers isrbxactive(); Xeno's answers true from the start, so it goes by the window events.
PX.mvWinFocused = true
pcall(function()
    local uis = game:GetService("UserInputService")
    table.insert(allConnections, uis.WindowFocused:Connect(function() PX.mvWinFocused = true end))
    table.insert(allConnections, uis.WindowFocusReleased:Connect(function() PX.mvWinFocused = false end))
end)
function PX.mvFocused()
    if not PX.IS_XENO then
        local ok, v = pcall(function() return isrbxactive() end)
        if ok and type(v) == "boolean" then return v end
    end
    return PX.mvWinFocused
end

-- (ServerSpeed, RunSpeed): the speed of the gait the server thinks we are in, and the dino's run speed.
function PX.mvSpeeds()
    local CS = PX.getCS and PX.getCS()
    local d = CS and CS.Replica and CS.Replica.Data
    local s, run = d and tonumber(d.ServerSpeed), d and tonumber(d.RunSpeed)
    if s and run then
        -- The moment Run is not held on OUR side we count as walking, before the server's own ServerSpeed says so.
        -- 2026-10-14: the game let go of Run mid-flight; the server judged walking speed at once while the replica
        -- still showed running, Fossil Farm kept 27 studs/s for a few seconds and was kicked outright ("Speeding",
        -- no snap-back first - about 7x over the walking limit). Our own Actions change first, so this is never late.
        local A = CS.Actions
        if not (A and (A.Run or A.Sprint)) then
            local cap = tonumber(d.BaseWalkSpeed) or s
            -- Trotting (the stamina fallback): the trot speed - but only once the server's ServerSpeed has come down to
            -- it, so the moment between letting go of Run and the server hearing Trot counts as walking.
            local trot = A and A.Trot and PX.mvTrotSpeed()
            if trot and s <= trot + 0.5 then cap = trot end
            s = math.min(s, cap)
        end
        -- Over water the server judges swimming speed, whatever gait we hold (see PX.mvOverWater).
        if PX.mvOverWater() then
            local _, _, swim = PX.mvDataSpeeds()
            s = math.min(s, swim or tonumber(d.BaseWalkSpeed) or s)
        end
        return s, run
    end
    local walk, r, swim = PX.mvDataSpeeds()
    if not r then return 1, 1 end   -- unknown dino: assume a slow one
    -- No CharacterState (Xeno): the game can't be asked whether Run registered. Count it while our Shift is down
    -- with the window focused (unfocused, the game drops every key); the warm-up history in PX.mvSideCap still
    -- keeps the cap at walking for the first 3 s.
    local held = PX.mvShiftT and PX.mvFocused()
    local s = held and r or walk
    if PX.mvOverWater() then s = math.min(s, swim or walk) end   -- over water: judged as swimming
    return s, r
end

-- How fast we may move sideways right now (studs/s); air = climbing or dropping with no platform under us.
function PX.mvSideCap(air)
    local s, run = PX.mvSpeeds()
    local mn, now = s, os.clock()
    for _, h in ipairs(PX.mvHist) do
        if now - h[1] <= PX.MV_WARMUP and h[2] < mn then mn = h[2] end
    end
    return (air and PX.MV_AIR_MULT or PX.MV_SIDE_MULT) * math.min(mn, run) + PX.MV_SIDE_ADD
end

-- True for MV_SNAP_WAIT seconds after a snap-back: every mover stands still and no pin re-writes an old spot.
function PX.mvHold()
    return os.clock() - PX.mvSnapT < PX.MV_SNAP_WAIT
end

-- A mover wants Run held right now (Legit Farm's own Run release leaves it alone while this is true). Held for
-- 3 s after the last sideways step, and the whole time Fly is on, so a short stop (a fossil, a bite, hovering)
-- does not start the 3 s warm-up at walking speed over again.
function PX.mvWantsRun()
    return os.clock() - PX.mvRunWantT < 3 or (PX.FLY and not PX.UNLOADED) or false
end

-- One movement step. Callers pass where they ARE, where they WANT to be and the frame delta (wantSpeed only
-- ever slows it down); they get back the furthest point they may occupy, and whether it was clamped, so a
-- mover can tell "arrived" from "still travelling". Sideways and vertical are capped separately.
function PX.govNext(fromPos, toPos, dt, wantSpeed)
    local now = os.clock()
    if PX.mvHold() then
        -- Snapped back: stand where the server put us (the root), keep Run held, move nowhere.
        if now - PX.mvRunWantT < 1 then PX.mvRunWantT = now end
        local root = PX.getLocalPhysicsRoot()
        local here = (root and root.Parent and root.Position) or fromPos
        PX.govCommanded, PX.govCommandT = here, now
        return here, true
    end
    local delta = toPos - fromPos
    if delta.Magnitude < 0.001 then return toPos, false end
    dt = math.min(dt or 0.016, 0.1)   -- a frame hitch must not authorise a giant step
    local flat = Vector3.new(delta.X, 0, delta.Z)
    local side = flat.Magnitude
    -- Steeper than about 27 degrees: climbing or dropping, in the air (stricter cap, no platform). Otherwise level:
    -- the platform goes under us and the ground cap applies.
    local air = math.abs(delta.Y) > side * 0.5 + 0.05
    local sideCap, vertCap = PX.mvSideCap(air), PX.MV_VERT
    if wantSpeed then sideCap, vertCap = math.min(sideCap, wantSpeed), math.min(vertCap, wantSpeed) end
    if side > 0.05 then
        PX.mvRunWantT = now
        if not air then PX.mvPlatT = now end
    end
    local sideStep = math.min(side, sideCap * dt, PX.GOV_STEP_MAX)
    local vmax = math.min(vertCap * dt, PX.GOV_STEP_MAX)
    local up = math.clamp(delta.Y, -vmax, vmax)
    local out = fromPos + Vector3.new(0, up, 0)
    if side > 0.001 then out = out + flat * (sideStep / side) end
    PX.govCommanded, PX.govCommandT = out, now
    return out, (sideStep < side - 1e-4) or (up ~= delta.Y)
end

-- Glide to a destination that a caller would otherwise have jumped to. YIELDS — call it from a task.spawn,
-- never from inside a PX.addStep (a wait in a step stalls every system after it).
-- Returns true if we got within `arrive` studs before the timeout.
function PX.govGlide(root, destPos, wantSpeed, timeout, arrive, faceCF)
    local deadline = os.clock() + (timeout or 20)
    local hardEnd, lastT = deadline + PX.MV_WATER_EXTRA, os.clock()
    local hit = arrive or 6
    while not PX.UNLOADED and os.clock() < deadline do
        deadline, lastT = PX.mvExtend(deadline, lastT, hardEnd)
        if not (root and root.Parent) then return false end
        local pos = root.Position
        if (destPos - pos).Magnitude <= hit then return true end
        local nextPos = PX.govNext(pos, destPos, 0.03, wantSpeed)
        if not PX.mvHold() then
            pcall(function()
                root.CFrame = faceCF and (CFrame.new(nextPos) * faceCF) or CFrame.new(nextPos)
                root.AssemblyLinearVelocity = Vector3.zero
                root.AssemblyAngularVelocity = Vector3.zero
            end)
        end
        task.wait(0.03)
    end
    return (root and root.Parent and (destPos - root.Position).Magnitude <= hit) or false
end

-- The invisible platform carried under the dino while a mover moves it level (see PX.MV_AIR_MULT). Client-only:
-- nobody else sees it and the server never has it, but the game's grounded check (and so the server's speed
-- rule) counts the dino as standing. Placed one stand height under where the mover put the body, only while a
-- level step was asked for in the last 0.3 s, never during a snap-back hold.
function PX.mvPlatformStep()
    local p = PX.mvPlat
    local c = PX.govCommanded
    local want = not PX.UNLOADED and c and os.clock() - (PX.mvPlatT or -math.huge) < 0.3 and not PX.mvHold()
    if not want then
        if p and p.Parent then pcall(function() p.Parent = nil end) end
        return
    end
    if not p then
        pcall(function()
            p = Instance.new("Part")
            p.Name = "EZMoverPlatform"
            p.Anchored, p.CanCollide, p.CanTouch, p.CastShadow = true, true, false, false
            p.Transparency = 1
            p.Size = Vector3.new(30, 2, 30)
        end)
        PX.mvPlat = p
        if not p then return end
    end
    local stand = 6
    pcall(function()
        local al = PX.getCS().Alignment
        local h = (al.RideHeight or 0) + (al.BodyHeightIncrease or 0)
        if h > 0 then stand = h end
    end)
    pcall(function()
        local b = PX.getLocalPhysicsRoot()
        local size = math.max(30, b and b.Size.Z * 2 or 0, b and b.Size.X * 2 or 0)
        if p.Size.X ~= size then p.Size = Vector3.new(size, 2, size) end
        p.CFrame = CFrame.new(c.X, c.Y - stand - 1, c.Z)
        if p.Parent ~= workspace then p.Parent = workspace end
    end)
end

-- Unload: Run let go, the platform gone (the step loop stops with the hub, so this is called from unloadScript).
function PX.mvCleanup()
    pcall(function() PX.mvRunStep(false) end)
    if PX.mvPlat then pcall(function() PX.mvPlat:Destroy() end) end
    PX.mvPlat = nil
end

-- Snap-back watcher: the server's CharacterService.Teleport and the TeleportId attribute it bumps (the event is
-- not reachable on Xeno, the attribute is). Runs inside game signals, so it only sets state: the notice and the
-- trip are handled from our own loop below (game threads can't touch the menu).
function PX.mvOnSnap()
    local now = os.clock()
    if now - PX.mvSnapT < 1 then return end   -- one snap-back fires both the event and the attribute
    PX.mvSnapT = now
    pcall(function()
        local ch = LocalPlayer.Character
        if ch then ch:SetAttribute("Teleporting", nil) end   -- or the local height hold drags us back up
    end)
    if now - (PX.govCommandT or 0) > 2 then return end   -- a teleport the game made on its own: just hold
    local keep = {}
    for _, t in ipairs(PX.mvSnaps) do if now - t < PX.MV_TRIP_WINDOW then keep[#keep + 1] = t end end
    keep[#keep + 1] = now
    PX.mvSnaps = keep
    PX.mvNotice = { n = #keep, trip = #keep >= PX.MV_TRIP_N }
end
do
    local function bind(ch)
        if not ch then return end
        local last = ch:GetAttribute("TeleportId")
        table.insert(allConnections, ch:GetAttributeChangedSignal("TeleportId"):Connect(function()
            local v = ch:GetAttribute("TeleportId")
            if v ~= nil and v ~= last then last = v; PX.mvOnSnap() end
        end))
    end
    bind(LocalPlayer.Character)
    table.insert(allConnections, LocalPlayer.CharacterAdded:Connect(bind))
    task.spawn(function()
        local svc
        pcall(function() svc = PX.req(PX.WATER_RS.Packages.Knit).GetService("CharacterService") end)
        if svc and svc.Teleport then
            pcall(function() table.insert(allConnections, svc.Teleport:Connect(function() PX.mvOnSnap() end)) end)
        end
    end)
end

-- Three snap-backs in two minutes means something keeps breaking the rules: stop everything that flies.
function PX.mvTrip()
    PX.mvSnaps = {}
    for _, t in ipairs({ PX.fossilFarmToggle, PX.afkFarmToggle, PX.legitFarmToggle, PX.flyToggle }) do
        if t then pcall(function() t:Set(false) end) end
    end
    PX.FOSSIL_FARM, PX.AFK_FARM, PX.LEGIT_FARM, PX.FLY, PX.AUTO_FLY = false, false, false, false, false
end

-- Hold Run (or release it) through the game's own input. Real/most executors: Controls:HandleAction, the call a
-- Shift press makes, with the game's tabbed-out input block cleared while it is held (as Legit Farm and Auto
-- Walk do). Xeno (no CharacterState): the Shift key itself, except while Fly is on (Fly reads Shift as "down").
function PX.mvRunStep(want)
    local CS = PX.getCS and PX.getCS()
    local C = CS and CS.Controls
    if C then
        if want then
            if not PX.mvFocused() then
                PX.mvUnblocked = true
                if C.WindowUnfocused ~= false then pcall(function() C.WindowUnfocused = false end) end
            end
            -- The game drops every action while InputWasBlocked is set, and it can be left set with the window
            -- focused (seen 2026-10-14 after a spawn from the menu: Run asked for every frame, never held). Cleared
            -- whenever we need Run - but never while a text box (chat) has focus, so typing never turns into moves.
            -- If Run still does not take, PX.mvSpeeds counts us as walking and the mover slows to match.
            if C.InputWasBlocked == true then
                local typing = false
                pcall(function() typing = game:GetService("UserInputService"):GetFocusedTextBox() ~= nil end)
                if not typing then pcall(function() C.InputWasBlocked = false end) end
            end
            -- Stamina: trot under MV_TROT_BELOW of the bar, run again over MV_RUN_ABOVE (see there) - never walk.
            local frac = 1
            pcall(function()
                local d = CS.Replica.Data
                if d.MaxStats.Stamina > 0 then frac = d.Stats.Stamina / d.MaxStats.Stamina end
            end)
            if PX.mvTrotting then
                if frac >= PX.MV_RUN_ABOVE then PX.mvTrotting = nil end
            elseif frac < PX.MV_TROT_BELOW then
                PX.mvTrotting = true
            end
            if PX.mvTrotting then
                if (CS.Actions and CS.Actions.Run) == true then pcall(function() C:HandleAction("Run", false) end) end
                if (CS.Actions and CS.Actions.Trot) ~= true then pcall(function() C:HandleAction("Trot", true) end) end
                PX.mvTrotHeld = true
            else
                if PX.mvTrotHeld then
                    PX.mvTrotHeld = nil
                    if (CS.Actions and CS.Actions.Trot) == true and PX.gaitHeld ~= "Trot" then
                        pcall(function() C:HandleAction("Trot", false) end)
                    end
                end
                if (CS.Actions and CS.Actions.Run) ~= true then pcall(function() C:HandleAction("Run", true) end) end
            end
            PX.mvRunHeld = true
        elseif PX.mvRunHeld then
            PX.mvRunHeld = nil
            local others = (PX.lfHeld and PX.lfHeld.Run) or PX.gaitHeld == "Run" or PX.gaitHeld == "Sprint"
            if not others then pcall(function() C:HandleAction("Run", false) end) end
            if PX.mvTrotHeld then
                PX.mvTrotHeld = nil
                if PX.gaitHeld ~= "Trot" then pcall(function() C:HandleAction("Trot", false) end) end
            end
            if PX.mvUnblocked then
                PX.mvUnblocked = nil
                if not (PX.LEGIT_FARM and PX.LF_TABOUT) then pcall(function() C.WindowUnfocused = not PX.mvFocused() end) end
            end
        end
    elseif PX.VIM then
        local vw = want and not PX.FLY
        if vw and not PX.mvShiftT then
            pcall(function() PX.VIM:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, game) end)
            PX.mvShiftT = os.clock()
        elseif not vw and PX.mvShiftT then
            pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, game) end)
            PX.mvShiftT = nil
        end
    end
end

-- Every frame: the ServerSpeed history the warm-up reads, and Run held while a mover is moving us sideways.
PX.addStep(1, function()
    if PX.UNLOADED then
        if PX.mvRunHeld or PX.mvShiftT or PX.mvPlat then PX.mvCleanup() end
        return
    end
    local now = os.clock()
    local h = PX.mvHist
    local s = PX.mvSpeeds()
    -- A drop is always kept, even inside the 0.05 s throttle: Run let go for a single frame still restarts the
    -- warm-up (the server may have heard it), before PX.mvRunStep below presses Run again.
    if #h == 0 or now - h[#h][1] >= 0.05 or s < h[#h][2] then h[#h + 1] = { now, s } end
    while #h > 1 and now - h[1][1] > PX.MV_WARMUP + 0.25 do table.remove(h, 1) end
    PX.mvRunStep(PX.mvWantsRun())
    PX.mvPlatformStep()
end)

-- The snap-back notice (and the trip), from our own loop.
PX.addStep(10, function()
    local n = PX.mvNotice
    if not n then return end
    PX.mvNotice = nil
    if n.trip then PX.mvTrip() end
    pcall(function()
        if PX.Hub then
            PX.Hub:Notify(n.trip
                and ("The server snapped the dino back " .. n.n .. " times in 2 minutes - farms and Fly stopped to be safe")
                or "The server snapped the dino back - holding still for 3 seconds, then carrying on", 6)
        end
    end)
end)

-- ═══════════════════════════════════════
-- PX.FLY  (v3 — CFrame drive through the shared mover; NO state spoof)
-- ═══════════════════════════════════════
-- v1 got kicked: a non-flight dino can't hold the "Flying" state (needs Data.Abilities.Flight). So Fly makes
-- NO state claim: it drives our OWN target position by CFrame each frame through the shared mover (sideways at
-- its cap with Run held, up/down at up to 150), and sets "Teleporting" to the Y it flies at so the game's local
-- height hold agrees with it. No velocity (zeroed) so physics never fights it. WASD camera-relative, Space up,
-- Ctrl/Shift down.
do
    local FLY_UIS = game:GetService("UserInputService")
    local function flyRoot()
        local ch = LocalPlayer.Character
        if not ch then return nil end
        return ch:FindFirstChild("HumanoidRootPart") or ch:FindFirstChild("Body")
            or ch:FindFirstChildWhichIsA("BasePart")
    end
    local function setTP(y)   -- the Y the game's local height hold keeps the body at (nil: none)
        local ch = LocalPlayer.Character
        if ch then pcall(function() ch:SetAttribute("Teleporting", y or nil) end) end
    end
    local flyWasOn, flyPos, flyCF = false, nil, nil
    -- ADVANCE (RenderStepped): read input, move our target position, compute the target CFrame.
    local function flyAdvance(dt)
        if PX.UNLOADED then return end
        if not PX.FLY then
            if flyWasOn then
                flyWasOn = false; flyPos = nil; flyCF = nil; setTP(false)
                -- Safe landing: 10s fall immunity so the drop after fly can't hurt. Only grant + later
                -- clear it if the dino wasn't ALREADY immune (some adults have FallDamageImmunity
                -- naturally / another feature may own it) — never remove someone else's immunity.
                PX.flyLandUntil = os.clock() + 10
                local ch = LocalPlayer.Character
                if ch and ch:GetAttribute("FallDamageImmunity") ~= true then
                    pcall(function() ch:SetAttribute("FallDamageImmunity", true) end)
                    task.delay(10.2, function()
                        -- skip if the window was extended (flew again) or a permanent source now wants it
                        if os.clock() >= (PX.flyLandUntil or 0) and not PX.NO_FALL_DAMAGE then
                            local c2 = LocalPlayer.Character
                            if c2 == ch then pcall(function() c2:SetAttribute("FallDamageImmunity", nil) end) end
                        end
                    end)
                end
            end
            return
        end
        local root = flyRoot()
        local cam = workspace.CurrentCamera
        if not root or not cam or root.Anchored then return end
        if not flyWasOn then flyWasOn = true; flyPos = root.Position end

        local dir = Vector3.zero
        local look, right = cam.CFrame.LookVector, cam.CFrame.RightVector
        -- `or PX.mob.*` is the mobile pad. On desktop those stay false, so the key path is unchanged.
        if FLY_UIS:IsKeyDown(Enum.KeyCode.W) or PX.mob.fwd then dir = dir + look end
        if FLY_UIS:IsKeyDown(Enum.KeyCode.S) or PX.mob.back then dir = dir - look end
        if FLY_UIS:IsKeyDown(Enum.KeyCode.D) or PX.mob.right then dir = dir + right end
        if FLY_UIS:IsKeyDown(Enum.KeyCode.A) or PX.mob.left then dir = dir - right end
        if FLY_UIS:IsKeyDown(Enum.KeyCode.Space) or PX.mob.up then dir = dir + Vector3.yAxis end
        if FLY_UIS:IsKeyDown(Enum.KeyCode.LeftControl) or FLY_UIS:IsKeyDown(Enum.KeyCode.LeftShift)
            or PX.mob.down then
            dir = dir - Vector3.yAxis
        end
        dir = (dir.Magnitude > 0.05) and dir.Unit or Vector3.zero

        -- Through the shared mover. The horizontal part of the input is scaled to the sideways cap and the
        -- vertical part follows the camera (Space / Ctrl alone: straight up or down at 150); the mover clamps
        -- each axis to what the server allows, so there is no speed to set.
        local flyFrom = flyPos or root.Position
        local fdt = math.min(dt or 0.016, 0.1)
        local h = Vector3.new(dir.X, 0, dir.Z).Magnitude
        local step = Vector3.zero
        if h > 0.05 then
            step = dir * (PX.mvSideCap() / h) * fdt
        elseif dir.Y ~= 0 then
            step = Vector3.new(0, dir.Y * PX.MV_VERT * fdt, 0)
        end
        flyPos = PX.govNext(flyFrom, flyFrom + step, dt)
        setTP(flyPos.Y)
        local horiz = Vector3.new(dir.X, 0, dir.Z)
        if horiz.Magnitude > 0.05 then
            flyCF = CFrame.lookAt(flyPos, flyPos + horiz.Unit)             -- face travel direction
        else
            flyCF = CFrame.new(flyPos) * (root.CFrame - root.CFrame.Position)  -- hold facing, just move
        end
        pcall(function()
            root.CFrame = flyCF
            root.AssemblyLinearVelocity = Vector3.zero
            root.AssemblyAngularVelocity = Vector3.zero
        end)
    end
    -- PIN (Heartbeat, after physics): just re-assert the target so a server revert can't drag us down.
    local function flyPin()
        if PX.UNLOADED or not PX.FLY or not flyCF or PX.mvHold() then return end
        local root = flyRoot()
        if root and not root.Anchored then
            pcall(function()
                root.CFrame = flyCF
                root.AssemblyLinearVelocity = Vector3.zero
                root.AssemblyAngularVelocity = Vector3.zero
            end)
        end
    end
    table.insert(allConnections, RunService.RenderStepped:Connect(flyAdvance))
    table.insert(allConnections, RunService.Heartbeat:Connect(flyPin))
end

-- ═══════════════════════════════════════
-- PX.AUTO_FLY  (hands-free travel-XP farm — wide drifting circle)
-- ═══════════════════════════════════════
-- WHY A CIRCLE AND NOT A STRAIGHT LINE. The server credits travel as
--     credited = min(studs * (SidewaysMin + (1-SidewaysMin)*max(cos0,0)), MaxStudsPerTick)
-- sampled every TickSeconds. Measured live: TickSeconds=10, MaxStudsPerTick=56,
-- SidewaysMin~=0.0032. Two consequences drive this whole design:
--   1. The cap saturates at ~5.6 studs/s, so flying FAST credits exactly the same as flying
--      slow — and fast is worse, because it reaches the map edge sooner and every sharp turn
--      wastes a tick (56 -> ~6). Slow is strictly better.
--   2. Only Prev1/Prev2 are compared, so there is NO long-term circle detection despite the
--      quest text. A wide circle never presents a sharp turn and so never loses a tick.
-- At 25 studs/s the tick only needs cos0 >= ~0.22 to still cap out — about 77 degrees of
-- heading change per tick — so radius 1000 (~14 deg/tick) sits far inside the margin.
--
-- These functions hang off PX rather than being top-level locals: a function body gets its own
-- register budget, so this costs ZERO of the main chunk's 200.
-- The ground or water surface (terrain and mountains; trees and rocks ignored): over a forest it used to hold 150 over
-- the canopy, ~300 over the ground (2026-10-15), and the server froze a dino at ~500 up.
function PX.afGroundY(pos)
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Include
    local list = { workspace.Terrain }
    pcall(function() local m = workspace.World:FindFirstChild("Mountains"); if m then list[2] = m end end)
    params.FilterDescendantsInstances = list
    params.IgnoreWater = false
    local hit = workspace:Raycast(pos + Vector3.new(0, 1500, 0), Vector3.new(0, -5000, 0), params)
    return hit and hit.Position.Y or nil
end

function PX.afAdvance(dt)
    if PX.UNLOADED then return end
    -- Manual Fly owns the root when it's on; never let the two drive the same CFrame.
    if not PX.AUTO_FLY or PX.FLY then
        if PX.afWasOn then
            PX.afWasOn = false
            PX.afCF, PX.afPos = nil, nil
            local ch = LocalPlayer.Character
            if ch then pcall(function() ch:SetAttribute("Teleporting", nil) end) end
            PX.flyLandUntil = os.clock() + 10   -- same post-fly landing grace manual Fly grants
            -- Switched off (not by another mover taking over): fly down onto dry ground instead of dropping 150.
            local r = PX.getLocalPhysicsRoot()
            if r and not PX.UNLOADED and PX.flyTo then
                task.spawn(function()
                    pcall(PX.flyTo, r.Position, function()
                        return not (PX.AUTO_FLY or PX.FLY or PX.AFK_FARM or PX.LEGIT_FARM or PX.FOSSIL_FARM
                            or PX.SAVE_DINO_ACTIVE or PX.BIOME_TRAVEL or PX.TP_CORPSE or PX.UNLOADED)
                    end, 0)
                end)
            end
        end
        return
    end
    local root = PX.getLocalPhysicsRoot()
    if not root or root.Anchored then return end
    dt = math.min(dt or 0.016, 0.1)

    local ch = LocalPlayer.Character
    -- Respawned or swapped character: re-seed the circle where the NEW body actually is.
    -- Without this the fresh character gets yanked back to the old orbit — a huge unexplained
    -- teleport moments after a death, which is exactly the shape the server watches for.
    if PX.afWasOn and PX.afChar ~= ch then PX.afWasOn = false end

    -- Arc length per second is the speed, so the angular rate is speed/radius. Resolved up here
    -- rather than further down because the seeding block below needs it to place the centre.
    local radius = math.max(PX.AUTO_FLY_RADIUS or 1000, 100)

    if not PX.afWasOn then
        PX.afWasOn = true
        PX.afChar = ch
        PX.afPos = root.Position
        PX.afGroundCache = PX.afGroundY(root.Position)
        local a = math.random() * math.pi * 2
        PX.afDriftDir = Vector3.new(math.cos(a), 0, math.sin(a))

        -- Seed the circle so the dino STARTS ON IT. This used to put the centre at the dino and
        -- the angle at 0, which meant the first frame's target was centre + (radius,0,0) — one
        -- instant jump of a full radius, 1000 studs at the default, every single time Auto Fly
        -- was switched on. Under the old server that only looked like a rough start; under the
        -- teleport detector it is the textbook trigger, and it fired before the feature had
        -- moved an inch.
        -- Putting the centre one radius BEHIND a random bearing makes the start point exactly
        -- where we already are, so enabling Auto Fly now costs zero displacement.
        PX.afAngle = a
        PX.afCentre = root.Position - Vector3.new(math.cos(a) * radius, 0, math.sin(a) * radius)
    end

    -- Which way round the circle (1 or -1): it turns back at a map wall (see below).
    PX.afSpin = PX.afSpin or 1
    -- The target goes round from where the dino IS, just ahead of it at the speed it can really fly (the mover's cap:
    -- run speed, less over water). It used to run round at 25 studs/s while the dino could only do ~16, so it ran
    -- further ahead every second, the dino cut across, and the height came from ground far ahead (334 up, 2026-10-15).
    local spd = math.min(PX.AUTO_FLY_SPEED or 25, PX.mvSideCap())
    local rel = PX.afPos - PX.afCentre
    PX.afAngle = (math.atan2(rel.Z, rel.X) + PX.afSpin * (spd / radius) * math.max(dt, 0.05) * 2) % (math.pi * 2)

    -- Raycasts throttled to ~5/sec. At 25 studs/s the ground below barely moves between frames,
    -- and casting twice per frame (120/sec) is real cost for no accuracy gain.
    PX.afProbeT = (PX.afProbeT or 0) + dt
    local probe = PX.afProbeT >= 0.2
    if probe then PX.afProbeT = 0 end

    -- Drift the centre, testing a full radius AHEAD so the whole circle stays on the map,
    -- not merely its centre. No ground under that point = map edge / void ahead.
    local nextCentre = PX.afCentre + PX.afDriftDir * ((PX.AUTO_FLY_DRIFT or 10) * dt)
    -- (The map's edge is its walls - PX.wallCross, which knows the whole map rectangle. Ground a full circle away is
    -- usually not streamed in yet, so "no ground there" can't mean the edge any more.)
    if (not probe) or not (PX.wallCross and PX.wallCross(nextCentre, nextCentre + PX.afDriftDir * radius)) then
        PX.afCentre = nextCentre
    else
        -- Reverse (guaranteed to point back over mapped ground) plus a random yaw, so it can't
        -- ping-pong along one line forever.
        local yaw = (math.random() - 0.5) * 1.2
        local d = -PX.afDriftDir
        PX.afDriftDir = Vector3.new(
            d.X * math.cos(yaw) - d.Z * math.sin(yaw), 0,
            d.X * math.sin(yaw) + d.Z * math.cos(yaw))
    end

    local want = PX.afCentre + Vector3.new(math.cos(PX.afAngle) * radius, 0, math.sin(PX.afAngle) * radius)
    if probe then
        -- Height from the ground under the dino and 60 studs on (climbs in time for a hill), never from far ahead.
        local flat = Vector3.new(want.X - PX.afPos.X, 0, want.Z - PX.afPos.Z)
        local gHere = PX.afGroundY(PX.afPos)
        local gAhead = flat.Magnitude > 0.1 and PX.afGroundY(PX.afPos + flat.Unit * 60) or nil
        PX.afGroundCache = (gHere and gAhead) and math.max(gHere, gAhead) or gHere or gAhead
        -- A map wall within 150 studs of where we head (the server kicks a dino past the edge): go back round the
        -- circle the other way, and drift the circle away from it.
        if PX.trackWalls then pcall(PX.trackWalls) end
        local flatWant = Vector3.new(want.X, PX.afPos.Y, want.Z)
        if (PX.wallCross and PX.wallCross(PX.afPos, flatWant)) or (PX.wallNear and PX.wallNear(flatWant, 150)) then
            if os.clock() - (PX.afTurnT or 0) > 5 then
                PX.afTurnT = os.clock()
                PX.afSpin = -PX.afSpin
                PX.afDriftDir = Vector3.new((PX.afCentre - want).X, 0, (PX.afCentre - want).Z).Unit
            end
        end
    end
    local g = PX.afGroundCache
    local wantY = g and (g + math.min(PX.AUTO_FLY_ALT or 150, 150)) or PX.afPos.Y
    -- Rate-limit the climb/descent: snapping hundreds of studs up a cliff in one frame swings
    -- the movement vector off-heading and would cost that tick's credit.
    local dy = math.clamp(wantY - PX.afPos.Y, -60 * dt, 60 * dt)
    -- Governed. The budget carries the +60 climb allowance because dy is folded into the same
    -- vector: without it the governor would read a legal climb as overspeed and throttle the
    -- orbit, dragging the circle off its heading — which costs travel credit for no safety gain.
    PX.afPos = PX.govNext(PX.afPos, Vector3.new(want.X, PX.afPos.Y + dy, want.Z), dt,
        (PX.AUTO_FLY_SPEED or 25) + 60)
    -- Never inside the ground: a cliff steeper than the climb rate is climbed over, not flown into.
    if g and PX.afPos.Y < g + 10 then PX.afPos = Vector3.new(PX.afPos.X, g + 10, PX.afPos.Z) end
    -- The height hold is the height we fly at - a number, never `true` (the game's Alignment reads that as Y 0 and
    -- drags the dino under the map; 2026-10-15).
    if ch then pcall(function() ch:SetAttribute("Teleporting", PX.afPos.Y) end) end

    local tangent = Vector3.new(-math.sin(PX.afAngle), 0, math.cos(PX.afAngle)) * (PX.afSpin or 1)
    PX.afCF = CFrame.lookAt(PX.afPos, PX.afPos + tangent)
    pcall(function()
        root.CFrame = PX.afCF
        root.AssemblyLinearVelocity = Vector3.zero
        root.AssemblyAngularVelocity = Vector3.zero
    end)
end

-- Re-assert after physics so a server revert can't drag us down (same as manual Fly's pin).
function PX.afPin()
    if PX.UNLOADED or not PX.AUTO_FLY or PX.FLY or not PX.afCF or PX.mvHold() then return end
    local root = PX.getLocalPhysicsRoot()
    if root and not root.Anchored then
        pcall(function()
            root.CFrame = PX.afCF
            root.AssemblyLinearVelocity = Vector3.zero
            root.AssemblyAngularVelocity = Vector3.zero
        end)
    end
end

table.insert(allConnections, RunService.RenderStepped:Connect(PX.afAdvance))
table.insert(allConnections, RunService.Heartbeat:Connect(PX.afPin))

-- ═══════════════════════════════════════
-- PX.AFK_FARM  (fly to food, eat, repeat — calcium priority, player avoidance)
-- ═══════════════════════════════════════
-- Design + live measurements: Info Dumps/AFK Farm/afk-farm-plan.md
do
    PX.afkTarget = nil         -- {id, idx, pos, groundY, misses, lastFood, bitten, holding, creep, deadline}
    PX.afkLastScan = 0
    PX.afkLastBite = 0
    PX.afkWasOn = false
    PX.afkPos = nil
    PX.afkCF = nil
    PX.afkChar = nil
    PX.afkWalking = false      -- true while W key is held via VIM
    PX.afkExclude = {}         -- food id -> os.clock() until which it is skipped
    PX.afkColliders = nil      -- parts we turned CanCollide off on; restored when the farm stops
    PX.afkCollidersChar = nil
    PX.afkHungry = true

    -- Safety: fly up into the air and rest when health is low (it hid under the ground until 2026-10-12, when the
    -- server began kicking a dino found there: "Playable outside of bounds").
    PX.afkSafetyState = nil    -- nil | "diving" (flying to the hide spot) | "settling" | "resting" | "rising" (back)
    PX.afkSafetyDest = nil
    PX.afkSafetyReturn = nil
    PX.afkSafetyPlatform = nil
    PX.afkSafetyT = 0
    local SAFETY_UP = 150      -- studs over the ground (or the dino, if higher) it rests at
    local SAFETY_SETTLE = 0.3

    local SCAN_INTERVAL = 1.5
    local STALL_LIMIT = 5      -- misses at the pivot before giving up on a plant (same as the game)
    local MISS_CREEP = 2       -- misses at the hold point before creeping in to the pivot
    local HOLD_FRAC = 0.5      -- stop once within this fraction of eat range of the pivot
    local EXCLUDE_TIME = 30
    local ARRIVE_DIST = 22

    local TERRAIN_RAY = RaycastParams.new()
    TERRAIN_RAY.FilterType = Enum.RaycastFilterType.Include
    TERRAIN_RAY.FilterDescendantsInstances = { workspace.Terrain }

    -- The TOP of the ground at an XZ - terrain or a mountain mesh (water counts as the top), cast from high
    -- above. Trees and rocks are left out: the farm flies through those. It used to be terrain only, cast from
    -- 100 studs over the dino, so the farm flew through the mountain meshes (terrain runs on underneath them) and,
    -- climbing a slope, into the hillside. Since 2026-10-12 the server kicks a dino it finds inside the ground
    -- ("Playable outside of bounds"), so every height the farm holds comes from this and writeRoot never puts the
    -- dino below it (PX.afkLift); its food picker skips food in caves and under overhangs to match.
    local function terrainY(pos)
        local world = workspace:FindFirstChild("World")
        local mountains = world and world:FindFirstChild("Mountains")
        if mountains ~= PX.afkMountains then
            PX.afkMountains = mountains
            TERRAIN_RAY.FilterDescendantsInstances = mountains and { workspace.Terrain, mountains } or { workspace.Terrain }
        end
        local hit = workspace:Raycast(Vector3.new(pos.X, pos.Y + 2500, pos.Z), Vector3.new(0, -5000, 0), TERRAIN_RAY)
        return hit and hit.Position.Y
    end

    local function standHeight()
        local h
        pcall(function()
            local al = PX.getCS().Alignment
            h = (al.RideHeight or 0) + (al.BodyHeightIncrease or 0)
        end)
        if type(h) ~= "number" or h <= 0 then h = 6 end
        return h
    end

    -- The game's Alignment reads Teleporting as the Y to hold Body at (a BodyPosition with infinite
    -- vertical force). `true` reads as Y = 0 and drags the dino down; a number makes it hold us there.
    local function holdAt(ch, y)
        if ch then pcall(function() ch:SetAttribute("Teleporting", y) end) end
    end

    local function noclipOff()
        if PX.afkColliders then
            for p in pairs(PX.afkColliders) do
                if p.Parent then pcall(function() p.CanCollide = true end) end
            end
        end
        PX.afkColliders, PX.afkCollidersChar = nil, nil
    end

    local function noclipOn(ch)
        if not ch then return end
        if PX.afkCollidersChar ~= ch then
            noclipOff()
            local set = {}
            for _, p in ipairs(ch:GetDescendants()) do
                if p:IsA("BasePart") and p.CanCollide then set[p] = true end
            end
            -- Body and HitBox are the game's own colliders; take them even if an older build left them off.
            for _, n in ipairs({ "Body", "HitBox" }) do
                local p = ch:FindFirstChild(n)
                if p and p:IsA("BasePart") then set[p] = true end
            end
            PX.afkColliders, PX.afkCollidersChar = set, ch
        end
        for p in pairs(PX.afkColliders) do
            if p.CanCollide then p.CanCollide = false end
        end
    end

    local function flatLook(v, fallback)
        local f = Vector3.new(v.X, 0, v.Z)
        if f.Magnitude < 0.1 then return fallback or Vector3.new(0, 0, 1) end
        return f.Unit
    end

    -- Never inside the ground: a spot below the top surface + standing height is lifted onto it.
    function PX.afkLift(pos)
        local top = terrainY(pos)
        local minY = top and (top + standHeight())
        if minY and pos.Y < minY then return Vector3.new(pos.X, minY, pos.Z) end
        return pos
    end

    local function writeRoot(root, cf)
        local p = cf.Position
        local lifted = PX.afkLift(p)
        if lifted ~= p then
            cf = CFrame.new(lifted) * cf.Rotation
            PX.afkPos, PX.afkCF = lifted, cf   -- the hold height (Teleporting) follows from afkPos
        end
        pcall(function()
            root.CFrame = cf
            root.AssemblyLinearVelocity = Vector3.zero
            root.AssemblyAngularVelocity = Vector3.zero
        end)
    end

    PX.afkGiveUps = PX.afkGiveUps or {}
    -- Never through a map wall or out of the map's rectangle (the server kicks a dino past the edge): a step
    -- that would cross one keeps its height and stays where it is. Walls come from Legit Farm's tracker.
    function PX.afkGuard(from, to)
        if PX.wallCross and PX.wallCross(from, to) then return Vector3.new(from.X, to.Y, from.Z), true end
        return to, false
    end
    local function dropTarget(exclude, secs)
        local tgt = PX.afkTarget
        if exclude and tgt and tgt.id then
            -- Given up on a second time, a food keeps failing the same way (out of reach, a corpse that
            -- cannot be bitten): leave it alone for half an hour instead of coming back every 30 s.
            local n = (PX.afkGiveUps[tgt.id] or 0) + 1
            PX.afkGiveUps[tgt.id] = n
            secs = secs or EXCLUDE_TIME
            if n >= 2 then secs = math.max(secs, 1800) end
            PX.afkExclude[tgt.id] = os.clock() + secs
        end
        PX.afkTarget = nil
        PX.afkLastScan = 0
        PX.afkStuckPos = nil
    end

    -- Water running low (under PX.DRINK_AT): fly to the nearest shore (PX.drinkFind), then on at standing height
    -- toward the water until the head is over it, and hold there until full - Auto Water's loop sips. Never
    -- under the ground: the hold height is the higher of the ground and the water surface, plus standing height.
    function PX.afkDrinkStep(root, rootPos, ch, dt, now, speed)
        local cur, max = PX.myWater()
        local frac = (cur and max and max > 0) and cur / max or 1
        local d = PX.afkDrink
        if not d then
            if frac > (PX.DRINK_AT or 0.4) or now < (PX.afkDrinkRetry or 0) then return false end
            if PX.WATER_ANYWHERE and frac >= 0.25 then return false end   -- (test) sips where it stands
            local spot = PX.drinkSpot
            if not spot or now - spot.t > 20 or (spot.from - rootPos).Magnitude > 200 then
                PX.drinkFind(rootPos, PX.DRINK_SEARCH or 1500, PX.AFK_FARM_AVOID or 200)
                return false   -- farms on while it looks
            end
            PX.drinkSpot = nil
            if not spot.stand then PX.afkDrinkRetry = now + 45 return false end
            d = { stand = spot.stand, water = spot.water, deadline = now + (spot.stand - rootPos).Magnitude / speed * 2 + 40 }
            PX.afkDrink = d
            PX.afkTarget = nil
        end
        if frac >= 0.99 then PX.afkDrink = nil return false end
        local over = PX.headOverWater()
        if now > d.deadline and not over then
            PX.drinkBad[PX.drinkCell(d.stand)] = true
            PX.afkDrink, PX.afkDrinkRetry = nil, now + 5
            return false
        end
        local stand = standHeight()
        if over then
            d.drinkT = d.drinkT or now   -- (the walk simulation stops while drinkT is set)
            if not d.lastW or cur > d.lastW + 0.001 then d.lastW, d.gainT = cur, now end
            if now - math.max(d.drinkT, d.gainT or 0) > 15 then   -- sips not landing here
                PX.drinkBad[PX.drinkCell(d.stand)] = true
                PX.afkDrink, PX.afkDrinkRetry = nil, now + 5
                return false
            end
        else
            d.drinkT = nil
            local target = d.reached and d.water or d.stand
            local flat = Vector3.new(target.X - PX.afkPos.X, 0, target.Z - PX.afkPos.Z)
            if not d.reached and flat.Magnitude < 4 then d.reached = true end
            if d.reached and flat.Magnitude < 2 then   -- at the water point and still no water under the head
                PX.drinkBad[PX.drinkCell(d.stand)] = true
                PX.afkDrink, PX.afkDrinkRetry = nil, now + 5
                return false
            end
            local floorY = math.max(terrainY(PX.afkPos) or -math.huge, d.reached and d.water.Y or -math.huge)
            local y = (floorY > -math.huge and floorY or (d.stand.Y)) + stand
            local blocked
            PX.afkPos, blocked = PX.afkGuard(PX.afkPos, PX.govNext(PX.afkPos, Vector3.new(target.X, y, target.Z), dt,
                d.reached and 8 or nil))
            if blocked then
                PX.afkDrink, PX.afkDrinkRetry = nil, now + 30
                return false
            end
            PX.afkCF = CFrame.lookAt(PX.afkPos, PX.afkPos + flatLook(d.water - PX.afkPos, PX.afkCF and PX.afkCF.LookVector))
        end
        writeRoot(root, PX.afkCF)
        holdAt(ch, PX.afkPos.Y)
        return true
    end

    function PX.afkStartWalk()
        if PX.afkWalking then return end
        PX.afkWalking = true
        pcall(function() PX.VIM:SendKeyEvent(true, Enum.KeyCode.W, false, game) end)
    end
    function PX.afkStopWalk()
        if not PX.afkWalking then return end
        PX.afkWalking = false
        pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.W, false, game) end)
    end

    local function stopFarm()
        PX.afkWasOn = false
        PX.afkCF, PX.afkPos, PX.afkTarget, PX.afkDrink = nil, nil, nil, nil
        PX.afkStopWalk()
        if PX.afkSafetyState then
            if PX.afkSafetyState == "resting" then
                PX.pressRest()
            end
            if PX.afkSafetyPlatform then pcall(function() PX.afkSafetyPlatform:Destroy() end); PX.afkSafetyPlatform = nil end
            local root = PX.getLocalPhysicsRoot()
            if root then pcall(function() root.Anchored = false end) end
            PX.afkSafetyState = nil
        end
        noclipOff()
        local ch = LocalPlayer.Character
        if ch then pcall(function() ch:SetAttribute("Teleporting", nil) end) end
        PX.flyLandUntil = os.clock() + 10
    end

    function PX.afkFarmAdvance(dt)
        if PX.UNLOADED then return end
        -- Save Dino can only be active here when the farm's own Safety is off; the farm yields to it.
        if not PX.AFK_FARM or PX.FLY or PX.AUTO_FLY or PX.SAVE_DINO_ACTIVE or PX.AS_BUSY or PX.CLEAN_BREAK then
            if PX.afkWasOn then stopFarm() end
            return
        end
        local root = PX.getLocalPhysicsRoot()
        if not root then return end
        -- Allow Anchored through when safety is resting/settling (we anchored it ourselves)
        if root.Anchored and not PX.afkSafetyState then return end
        dt = math.min(dt or 0.016, 0.1)

        local ch = LocalPlayer.Character
        if PX.afkWasOn and PX.afkChar ~= ch then PX.afkWasOn = false end
        if not PX.afkWasOn then
            PX.afkWasOn = true
            PX.afkChar = ch
            PX.afkPos = root.Position
            PX.afkCF = CFrame.lookAt(root.Position, root.Position + flatLook(root.CFrame.LookVector))
            PX.afkTarget = nil
            PX.afkLastScan = 0
            if PX.trackWalls then pcall(PX.trackWalls) end
        end
        if (root.Position - PX.afkPos).Magnitude > 50 then
            PX.afkPos = root.Position
        end

        noclipOn(ch)

        -- Walk simulation for Activity gain (not while hiding, nor while standing at the water drinking)
        if PX.afkSafetyState or (PX.afkDrink and PX.afkDrink.drinkT) then
            PX.afkStopWalk()
        elseif PX.AFK_FARM_WALK then PX.afkStartWalk() else PX.afkStopWalk() end

        local now = os.clock()
        local rootPos = root.Position
        local speed = math.max(PX.mvSideCap(), 2)   -- for the deadlines only: every move goes at the shared mover's caps

        -- ── Safety: rest up in the air when health is low ──
        if PX.AFK_FARM_SAFETY then
            local hp, maxHp
            pcall(function() hp = ch:GetAttribute("Health"); maxHp = ch:GetAttribute("MaxHealth") end)
            if type(hp) == "number" and type(maxHp) == "number" and maxHp > 0 then
                local pct = hp / maxHp
                -- Any damage sends it into hiding too, not only below half: heal to full, then farm on.
                local hurt = PX.tookDamage(ch, hp)
                if not PX.afkSafetyState and (pct < 0.5 or (hurt and pct < 0.99)) then
                    pcall(function()
                        if PX.Hub then PX.Hub:Notify(("AFK Farm: health %d%% - resting up in the air until healed, then farming on"):format(math.floor(pct * 100)), 8) end
                    end)
                    PX.afkSafetyState = "diving"
                    PX.afkSafetyReturn = rootPos
                    local groundY = terrainY(rootPos) or rootPos.Y
                    local targetY = math.max(groundY + standHeight(), rootPos.Y) + SAFETY_UP
                    PX.afkSafetyDest = Vector3.new(rootPos.X, targetY, rootPos.Z)
                    PX.afkTarget = nil
                end
                if PX.afkSafetyState == "resting" and pct >= 0.99 then
                    PX.afkSafetyState = "rising"
                    PX.afkSafetyT = now
                    -- Stand up (press R to toggle off rest)
                    PX.pressRest()
                    if PX.afkSafetyPlatform then pcall(function() PX.afkSafetyPlatform:Destroy() end); PX.afkSafetyPlatform = nil end
                    pcall(function() root.Anchored = false end)
                end
            end
        elseif PX.afkSafetyState then
            -- Safety was toggled off mid-hide. Only send R if we actually laid down (resting).
            if PX.afkSafetyState == "resting" then
                PX.pressRest()
            end
            if PX.afkSafetyPlatform then pcall(function() PX.afkSafetyPlatform:Destroy() end); PX.afkSafetyPlatform = nil end
            pcall(function() root.Anchored = false end)
            PX.afkSafetyState = nil
        end

        if PX.afkSafetyState then
            if PX.afkSafetyState == "diving" then
                PX.afkPos = PX.govNext(PX.afkPos, PX.afkSafetyDest, dt)
                PX.afkCF = CFrame.new(PX.afkPos) * PX.afkCF.Rotation
                writeRoot(root, PX.afkCF)
                holdAt(ch, PX.afkPos.Y)
                if (PX.afkPos - PX.afkSafetyDest).Magnitude < 5 then
                    PX.afkSafetyState = "settling"
                    PX.afkSafetyT = now
                    pcall(function()
                        local p = Instance.new("Part")
                        p.Size = Vector3.new(80, 4, 80)
                        p.Position = PX.afkPos - Vector3.new(0, 6, 0)
                        p.Anchored = true
                        p.Transparency = 1
                        p.CanCollide = true
                        p.CanQuery = false
                        p.Parent = workspace
                        PX.afkSafetyPlatform = p
                    end)
                end
            elseif PX.afkSafetyState == "settling" then
                writeRoot(root, PX.afkCF)
                if now - PX.afkSafetyT >= SAFETY_SETTLE then
                    -- Anchor root, clear Teleporting so the R key works, then lay down
                    pcall(function() root.Anchored = true end)
                    pcall(function() ch:SetAttribute("Teleporting", nil) end)
                    PX.pressRest()
                    PX.afkSafetyState = "resting"
                    PX.afkSafetyT = now
                end
            elseif PX.afkSafetyState == "resting" then
                writeRoot(root, PX.afkCF)
            elseif PX.afkSafetyState == "rising" then
                local dest = PX.afkSafetyReturn
                    or Vector3.new(PX.afkPos.X, (terrainY(PX.afkPos) or (PX.afkPos.Y - SAFETY_UP)) + standHeight(), PX.afkPos.Z)
                PX.afkPos = PX.govNext(PX.afkPos, dest, dt)
                PX.afkCF = CFrame.new(PX.afkPos) * PX.afkCF.Rotation
                writeRoot(root, PX.afkCF)
                holdAt(ch, PX.afkPos.Y)
                if (PX.afkPos - dest).Magnitude < 10 then
                    PX.afkSafetyState = nil
                    PX.afkSafetyReturn = nil
                    PX.afkTarget = nil
                    PX.afkLastScan = 0
                end
            end
            return
        end

        -- ── Flee: fly away when another player enters the avoid radius, resume farming once clear ──
        if PX.AFK_FARM_FLEE then
            local avoidR = PX.AFK_FARM_AVOID or 200
            local nearest, nd
            if avoidR > 0 then
                for _, pl in ipairs(game.Players:GetPlayers()) do
                    if pl ~= LocalPlayer and pl.Character then
                        local r = PX.getRootOf(pl.Character, false)
                        if r then
                            local d = (r.Position - rootPos).Magnitude
                            if not nd or d < nd then nearest, nd = r.Position, d end
                        end
                    end
                end
            end
            -- Hysteresis: start fleeing at the radius, keep going until 1.5x clear, so a player
            -- hovering right at the edge doesn't make us stutter between flee and farm.
            if nearest and (nd <= avoidR or (PX.afkFleeing and nd <= avoidR * 1.5)) then
                PX.afkFleeing = true
                PX.afkTarget = nil
                local away = flatLook(rootPos - nearest, flatLook(PX.afkCF and PX.afkCF.LookVector))
                -- The map's edge that way: turn along it (the open side first), else back.
                if PX.wallCross and PX.wallCross(rootPos, rootPos + away * 120) then
                    local l, r = Vector3.new(-away.Z, 0, away.X), Vector3.new(away.Z, 0, -away.X)
                    away = (not PX.wallCross(rootPos, rootPos + l * 120) and l)
                        or (not PX.wallCross(rootPos, rootPos + r * 120) and r) or -away
                end
                local flyY = math.max(PX.afkPos.Y, math.max(terrainY(rootPos) or rootPos.Y,
                    terrainY(rootPos + away * 40) or -math.huge) + standHeight())
                local dest = Vector3.new(rootPos.X + away.X * 300, flyY, rootPos.Z + away.Z * 300)
                PX.afkPos = PX.afkGuard(PX.afkPos, PX.govNext(PX.afkPos, dest, dt))
                PX.afkCF = CFrame.lookAt(PX.afkPos, PX.afkPos + away)
                writeRoot(root, PX.afkCF)
                holdAt(ch, PX.afkPos.Y)
                return
            end
            PX.afkFleeing = false
        end

        -- ── Thirsty: to the water first ──
        if PX.afkDrinkStep(root, rootPos, ch, dt, now, speed) then return end

        -- ── Pick a target (only when we have none; a target is kept until eaten out or given up) ──
        if not PX.afkTarget and PX.afkPickFood and now - PX.afkLastScan >= SCAN_INTERVAL then
            PX.afkLastScan = now
            for id, t in pairs(PX.afkExclude) do
                if t <= now then PX.afkExclude[id] = nil end
            end
            local id, idx, pos, isMeat = PX.afkPickFood(rootPos, PX.afkExclude, {
                avoid = PX.AFK_FARM_AVOID or 200, meat = PX.dinoEatsMeat(),
                -- not in a cave or under an overhang: the top of the ground well above the food means the farm
                -- would have to go inside the ground to reach it (and it never does)
                reach = function(p) local top = terrainY(p) return not top or top - p.Y <= 25 end,
            })
            if id and pos then
                PX.afkTarget = { id = id, idx = idx, pos = pos, isMeat = isMeat, groundY = terrainY(pos), misses = 0,
                    deadline = now + (pos - rootPos).Magnitude / speed * 2 + 10 }
            end
        end

        local tgt = PX.afkTarget
        if not tgt then
            PX.afkStuckPos = nil
            holdAt(ch, PX.afkPos.Y)
            return
        end

        local eatRange = ARRIVE_DIST
        pcall(function() if PX.khRange then eatRange = PX.khRange() end end)
        local stand = standHeight()

        -- Stand as low as still reaches the pivot, never with the legs underground; creep to the
        -- pivot itself only if bites stop landing from there.
        local lowY = tgt.creep and tgt.pos.Y or (tgt.pos.Y - eatRange * HOLD_FRAC)
        local destY = math.max(lowY, (tgt.groundY or -math.huge) + stand)
        local dest = Vector3.new(tgt.pos.X, destY, tgt.pos.Z)

        if not tgt.holding and not tgt.creep and (tgt.pos - PX.afkPos).Magnitude <= eatRange * HOLD_FRAC then
            tgt.holding = true
        end

        if not tgt.holding then
            local ahead = PX.afkPos + flatLook(dest - PX.afkPos, flatLook(PX.afkCF.LookVector)) * 40
            local floorHere = math.max(terrainY(PX.afkPos) or -math.huge, terrainY(ahead) or -math.huge) + stand
            local blocked
            PX.afkPos, blocked = PX.afkGuard(PX.afkPos, PX.govNext(PX.afkPos, Vector3.new(dest.X, math.max(dest.Y, floorHere), dest.Z), dt))
            if blocked then dropTarget(true) return end
            -- Unstuck: we should be travelling, but if the REAL body has not actually moved (wedged in
            -- a tree or a bank) AND we are still well short of the food (not just easing in), give up
            -- this target and pop up and out to break free.
            if PX.AFK_FARM_UNSTUCK and (tgt.pos - rootPos).Magnitude > eatRange then
                if not PX.afkStuckPos or (rootPos - PX.afkStuckPos).Magnitude > 4 then
                    PX.afkStuckPos, PX.afkStuckT = rootPos, now
                elseif now - (PX.afkStuckT or now) > 2.5 then
                    PX.afkStuckPos, PX.afkStuckT = nil, nil
                    local ang = math.random() * math.pi * 2
                    PX.afkPos = PX.afkGuard(rootPos, rootPos + Vector3.new(math.cos(ang) * 30, 45, math.sin(ang) * 30))
                    PX.afkCF = CFrame.lookAt(PX.afkPos, PX.afkPos + Vector3.new(math.cos(ang), 0, math.sin(ang)))
                    writeRoot(root, PX.afkCF)
                    holdAt(ch, PX.afkPos.Y)
                    dropTarget(true)
                    return
                end
            end
        else
            -- Holding at the food. Settle straight onto the eat spot first (normal flight, no circle),
            -- and ONLY once actually there drift in a tiny circle for Activity. The circle is centred on
            -- `dest` (recomputed every frame) at the eat height, so it can never wander off or climb --
            -- the old version captured the centre once and kept a stale point after a creep, which is
            -- what flung the dino around the sky.
            PX.afkStuckPos = nil
            if (dest - PX.afkPos).Magnitude > eatRange * HOLD_FRAC + 4 then
                PX.afkPos = PX.govNext(PX.afkPos, dest, dt)
            elseif PX.AFK_FARM_WALK then
                tgt.orbit = (tgt.orbit or 0) + dt * 2.5
                local wob = math.min(3, eatRange * 0.2)
                -- Through the shared mover like every other move (it keeps Run held, so the server judges run
                -- speed). Written straight, the circle read ~5.7 studs/s - twice walking speed, at the walking
                -- limit once Run lapsed - and 2026-10-15 AFK Farm was snapped back while eating.
                PX.afkPos = PX.govNext(PX.afkPos, Vector3.new(dest.X + math.cos(tgt.orbit) * wob, dest.Y, dest.Z + math.sin(tgt.orbit) * wob), dt)
            else
                PX.afkPos = PX.govNext(PX.afkPos, dest, dt)
            end
        end
        local atDest = (dest - PX.afkPos).Magnitude < 3
        if tgt.creep and atDest and not tgt.holding then
            tgt.holding = true
            tgt.misses = 0
        end

        local prevLook = flatLook(PX.afkCF and PX.afkCF.LookVector or Vector3.new(0, 0, 1))
        PX.afkCF = CFrame.lookAt(PX.afkPos, PX.afkPos + flatLook(tgt.pos - PX.afkPos, prevLook))
        writeRoot(root, PX.afkCF)
        holdAt(ch, PX.afkPos.Y)

        if not tgt.holding and not atDest and now > tgt.deadline then
            dropTarget(true)
            return
        end

        -- ── Eat: judge each bite by whether the plant's own food went down ──
        if (tgt.pos - rootPos).Magnitude <= eatRange and now - PX.afkLastBite >= 1 / math.clamp(PX.FAST_EAT_RATE or 1.25, 0.2, 1.25) then
            PX.afkLastBite = now
            local fcur, fmax = PX.myFood()
            if fcur and fmax and fmax > 0 then
                if PX.afkHungry then
                    if fcur >= fmax - PX.foodGap(fmax, 0.05) then PX.afkHungry = false end
                elseif fcur <= fmax - PX.foodGap(fmax, 1) then
                    PX.afkHungry = true
                end
            end
            local cid = PX.afkHungry and PX.afkConsumeId and PX.afkConsumeId()
            if cid and ReplicaSignal then
                local food, water, spawned = PX.afkBufCheck(tgt.id, tgt.idx)
                if tgt.isMeat and food == nil then dropTarget(true) return end   -- corpse no longer readable
                if food ~= nil and (not spawned or food + (water or 0) <= 0) then
                    dropTarget(false)
                    return
                end
                -- Leave Scraps: only scraps left - treat it as empty and let it regrow for a while.
                if food ~= nil and PX.LEAVE_SCRAPS and not tgt.isMeat and PX.isScraps(food) then
                    PX.afkExclude[tgt.id] = os.clock() + 300
                    dropTarget(false)
                    return
                end
                if tgt.bitten then
                    if food and tgt.lastFood and food < tgt.lastFood then
                        PX.noteBiteDrop(tgt.lastFood - food)
                        tgt.misses = 0
                        tgt.lastEat = now
                    else
                        tgt.misses = tgt.misses + 1
                    end
                end
                tgt.lastFood = food
                tgt.bitten = true
                local b = buffer.create(5)
                buffer.writeu32(b, 0, math.floor(tgt.id))
                buffer.writeu8(b, 4, tgt.idx or 1)
                ReplicaSignal:FireServer(cid, "Bite", b)
            end
        end

        if not tgt.creep and tgt.misses >= MISS_CREEP then
            tgt.creep, tgt.holding = true, false
            tgt.deadline = now + (tgt.pos - PX.afkPos).Magnitude / speed * 2 + 10
        elseif tgt.creep and tgt.holding and tgt.misses >= STALL_LIMIT then
            dropTarget(true)
            return
        end

        -- No gain: in biting range and hungry, bites going out, yet our own Food is not going up.
        -- Always on, not only with Unstuck (see PX.foodNoGain).
        if (tgt.pos - rootPos).Magnitude <= eatRange and PX.afkHungry then
            if PX.foodNoGain(tgt, now) then dropTarget(true, PX.NO_GAIN_SKIP) return end
        else
            tgt.gainT = nil
        end

        -- Unstuck: settled at the food and hungry, yet nothing eaten for a while. Misses only count
        -- bites that were fired, so food that is never quite in range would otherwise hold us forever.
        if PX.AFK_FARM_UNSTUCK and tgt.holding then
            local fcur, fmax = PX.myFood()
            if fcur and fmax and fmax > 0 and fcur < fmax - PX.foodGap(fmax, 1) then
                tgt.hungrySince = tgt.hungrySince or now
                if now - math.max(tgt.lastEat or 0, tgt.hungrySince) > (PX.UNSTUCK_EAT_SECS or 25) then
                    dropTarget(true)
                end
            else
                tgt.hungrySince = nil
            end
        end
    end

    function PX.afkFarmPin()
        if PX.UNLOADED or not PX.AFK_FARM or PX.FLY or PX.AUTO_FLY or PX.AS_BUSY or PX.CLEAN_BREAK or not PX.afkCF or PX.mvHold() then return end
        if PX.afkSafetyState == "resting" then return end
        local root = PX.getLocalPhysicsRoot()
        if root and not root.Anchored then writeRoot(root, PX.afkCF) end
        local ch = LocalPlayer.Character
        holdAt(ch, PX.afkCF.Position.Y)   -- writeRoot may have lifted afkCF out of the ground
        noclipOn(ch)
    end

    table.insert(allConnections, RunService.RenderStepped:Connect(PX.afkFarmAdvance))
    table.insert(allConnections, RunService.Heartbeat:Connect(PX.afkFarmPin))
end

-- ═══════════════════════════════════════
-- PX.LEGIT_FARM  (walk to food on foot, eat it through Force Eat)
-- ═══════════════════════════════════════
-- Walks with the game's own controls and steers by turning the camera: Movement builds its
-- direction from the camera's yaw, so the dino turns at its own rate the way a player's does.
-- Body and HitBox stop colliding so rocks, logs and bushes never block a straight line, and
-- Teleporting (read by the game as the Y to hold Body at) keeps it on the ground. Only food it can
-- reach from standing height is picked, and Force Eat bites only that food.
-- Everything lives inside this function so its locals cost none of the main chunk's 200.
-- Design + live measurements: Info Dumps/AFK Farm/legit-farm-plan.md
function PX.lfSetup()
    local HOLD_REACH = 0.7          -- stop walking at this fraction of the sideways reach
    local REACH_FRAC = 0.85         -- allowed height gap between the eat point and our mesh, x range
    local SCAN_INTERVAL = 1.5
    local EXCLUDE_TIME = 45
    local LONG_SKIP = 1800          -- food given up on twice, or out of reach straight up/down: left this long
    local VERT_GIVEUP = 8           -- seconds close by under/over a food that is out of reach up or down
    local STALL_CREEP, STALL_GIVEUP = 3, 5
    local STUCK_TIME, STUCK_MOVE = 4, 3
    local FLY_UP, FLY_OVER, FLY_SPEED = 60, 60, nil   -- speed nil: flights go at the shared mover's caps
    local CLIMB_RATE, DROP_RATE = 30, 45
    local STAM_LOW, STAM_OK = 0.2, 0.6
    local TURN_RATE = math.rad(150)
    local BARRIER_MARGIN = 30
    local FLEE_ALT, FLEE_SPEED = 80, nil         -- Fly Away: height above the ground; speed nil = the shared mover's caps
    local FLEE_MIN, FLEE_MAX_TIME = 150, 90      -- fly at least this far; land anyway after this long
    -- Boxed in by players (ESC.boxed): how high over the ground (or water) it flies, how far from every player
    -- the food it heads for must be, the furthest it goes, and the longest it stays up before landing.
    -- Never under the ground: since 2026-10-12 the server kicks a dino it finds there ("Playable outside of
    -- bounds", error 267 - seen as a water crossing dived under the shore).
    local ESC = { ALT = 60, MIN_SAFE = 400, MAX_DIST = 2000, MAX_TIME = 120 }
    PX.lfEsc = { starts = {}, revs = {} }

    PX.lfExclude = {}
    PX.lfGiveUps = {}               -- food id -> times the farm gave up on it this session
    PX.lfHeld = {}
    PX.lfBarriers = {}
    PX.lfBiteN = 0
    PX.lfStatus = "off"

    -- The game's own ride-height params: stands on terrain, rocks, logs and mountains; looks
    -- through trees, foliage and characters.
    local alignParams, alignTried
    local function groundParams()
        if not alignTried then
            alignTried = true
            pcall(function() alignParams = PX.req(PX.WATER_RS.Common.RayParams).AlignmentParams end)
            if not alignParams then
                alignParams = RaycastParams.new()
                alignParams.FilterType = Enum.RaycastFilterType.Include
                local list = { workspace.Terrain }
                local world = workspace:FindFirstChild("World")
                local mountains = world and world:FindFirstChild("Mountains")
                if mountains then list[2] = mountains end
                alignParams.FilterDescendantsInstances = list
                alignParams.IgnoreWater = true
            end
        end
        return alignParams
    end

    -- A ray that starts inside terrain misses it, so callers start from just above the feet.
    local function groundBelow(x, fromY, z)
        local hit = workspace:Raycast(Vector3.new(x, fromY, z), Vector3.new(0, -500, 0), groundParams())
        return hit and hit.Position.Y
    end

    local function standHeight()
        local h
        pcall(function()
            local al = PX.getCS().Alignment
            h = (al.RideHeight or 0) + (al.BodyHeightIncrease or 0)
        end)
        if type(h) ~= "number" or h <= 0 then h = 6 end
        return h
    end

    -- The game measures eating range from the dino's mesh, not from Body.
    local function mesh()
        local m
        pcall(function() m = PX.getCS().Instances.Mesh end)
        return m
    end

    local function flatUnit(v, fallback)
        local f = Vector3.new(v.X, 0, v.Z)
        if f.Magnitude < 0.1 then return fallback end
        return f.Unit
    end

    local function holdAt(ch, y)
        if ch then pcall(function() ch:SetAttribute("Teleporting", y) end) end
    end

    local function writeRoot(root, cf)
        pcall(function()
            root.CFrame = cf
            root.AssemblyLinearVelocity = Vector3.zero
            root.AssemblyAngularVelocity = Vector3.zero
        end)
    end

    local function pressR()
        PX.pressRest()
    end

    -- Presses or releases an action through the game's own input handler, the same call a key press
    -- makes (Run replicates exactly as a real Shift does). Only re-sent when the game disagrees.
    local function press(name, on)
        local CS = PX.getCS()
        local cur = (CS and CS.Actions and CS.Actions[name]) == true
        if cur == on then return end
        -- The shared mover holds Run while it flies us sideways (the server judges our speed by it): leave it.
        if name == "Run" and not on and PX.mvWantsRun and PX.mvWantsRun() then PX.lfHeld.Run = nil return end
        local ok = CS and CS.Controls and pcall(function() CS.Controls:HandleAction(name, on) end)
        if not ok and name == "Forward" then
            pcall(function() PX.VIM:SendKeyEvent(on, Enum.KeyCode.W, false, game) end)
            PX.lfVimW = on or nil
        end
        PX.lfHeld[name] = on or nil
    end

    local function releaseAll()
        for name in pairs(PX.lfHeld) do
            pcall(function() PX.getCS().Controls:HandleAction(name, false) end)
        end
        PX.lfHeld = {}
        if PX.lfVimW then
            pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.W, false, game) end)
            PX.lfVimW = nil
        end
    end

    -- Never Stand Still: walk a small circle instead of standing (Auto Grow does the same in the
    -- air). The heading is steered around a centre - the food while eating, the spot itself while
    -- there is nothing to walk to - and Forward is held. Run and Trot stay OFF: either one widens
    -- the circle and carries the dino off the spot (and off the food it is biting).
    local CIRCLE_R = 6              -- studs from the centre
    local function circleWalk(center, rootPos)
        if not PX.lfCircleDir then PX.lfCircleDir = (math.random() < 0.5) and 1 or -1 end
        local away = Vector3.new(rootPos.X - center.X, 0, rootPos.Z - center.Z)
        local d = away.Magnitude
        local radial = (d > 0.5) and (away / d) or Vector3.new(1, 0, 0)
        local tangent = Vector3.new(-radial.Z * PX.lfCircleDir, 0, radial.X * PX.lfCircleDir)
        local lean = math.clamp((d - CIRCLE_R) / CIRCLE_R, -1, 1)   -- outside the ring: lean back in
        PX.lfHeading = flatUnit(tangent - radial * lean, PX.lfHeading or tangent)
        press("Trot", false)
        press("Run", false)
        press("Forward", true)
    end

    local function noclipOff()
        if PX.lfColliders then
            for p in pairs(PX.lfColliders) do
                if p.Parent then pcall(function() p.CanCollide = true end) end
            end
        end
        PX.lfColliders, PX.lfCollidersChar = nil, nil
    end

    local function noclipOn(ch)
        if PX.lfCollidersChar ~= ch then
            noclipOff()
            local set = {}
            for _, p in ipairs(ch:GetDescendants()) do
                if p:IsA("BasePart") and p.CanCollide then set[p] = true end
            end
            -- The game's own colliders go back to solid even if another mover left them off.
            for _, n in ipairs({ "Body", "HitBox" }) do
                local p = ch:FindFirstChild(n)
                if p and p:IsA("BasePart") then set[p] = true end
            end
            PX.lfColliders, PX.lfCollidersChar = set, ch
        end
        for p in pairs(PX.lfColliders) do
            if p.Parent and p.CanCollide then p.CanCollide = false end
        end
    end

    -- Map walls: any part under a folder named "Barrier" below a biome (the game's BarrierController
    -- rule). They only stream in near the edges, so each one is kept as plain geometry - a table with the
    -- CFrame / Size / Parent the wall tests read, plus Radius for a quick distance cut - after it streams
    -- out again, and saved per map (EazyCheats_Configs/walls-<map>.json): a wall seen once is known for good.
    -- The map's rectangle from the game's own MapData (the minimap's MapSize / MapCenter) goes in as four
    -- more walls, so even an edge never seen holds. Since 2026-10-12 the server kicks a dino past the edge
    -- or under the ground ("Playable outside of bounds", error 267). AFK Farm uses the same walls
    -- (PX.trackWalls / PX.wallCross).
    PX.lfWallKeys = PX.lfWallKeys or {}
    function PX.wallAdd(cf, size, save)
        local k = math.floor(cf.X + 0.5) .. ":" .. math.floor(cf.Y + 0.5) .. ":" .. math.floor(cf.Z + 0.5)
            .. ":" .. math.floor(size.X + 0.5) .. ":" .. math.floor(size.Z + 0.5)
        if PX.lfWallKeys[k] then return end
        PX.lfWallKeys[k] = true
        PX.lfBarriers[{ CFrame = cf, Size = size, Parent = true, Radius = (size * 0.5).Magnitude, Saved = save }] = true
        if save and not PX.wallsSavePending then
            PX.wallsSavePending = true
            task.delay(10, function() PX.wallsSavePending = nil pcall(PX.wallsSave) end)
        end
    end
    function PX.wallsFile()
        local eco
        pcall(function() eco = PX.req(PX.WATER_RS.Packages.Knit).Ecosystem end)
        if type(eco) ~= "string" or eco == "" then return nil end
        return "EazyCheats_Configs/walls-" .. eco:gsub("[^%w]", "_") .. ".json"
    end
    function PX.wallsSave()
        local file = PX.wallsFile()
        if not file or PX.UNLOADED then return end
        local list = {}
        for w in pairs(PX.lfBarriers) do
            if w.Saved then
                local c = { w.CFrame:GetComponents() }
                c[13], c[14], c[15] = w.Size.X, w.Size.Y, w.Size.Z
                for i = 1, 15 do c[i] = math.floor(c[i] * 1000 + 0.5) / 1000 end
                list[#list + 1] = c
            end
        end
        if not isfolder("EazyCheats_Configs") then makefolder("EazyCheats_Configs") end
        writefile(file, game:GetService("HttpService"):JSONEncode({ v = 1, walls = list }))
    end
    function PX.wallsLoad()
        local file = PX.wallsFile()
        local ok, t = pcall(function() return game:GetService("HttpService"):JSONDecode(readfile(file)) end)
        if not (ok and type(t) == "table" and type(t.walls) == "table") then return end
        for _, c in ipairs(t.walls) do
            if type(c) == "table" and #c == 15 then
                pcall(function()
                    PX.wallAdd(CFrame.new(table.unpack(c, 1, 12)), Vector3.new(c[13], c[14], c[15]), false)
                end)
            end
        end
        for w in pairs(PX.lfBarriers) do if w.Saved == false then w.Saved = true end end   -- keep them in the next save
    end
    -- The map's rectangle as four tall slabs, their inner faces RECT_IN studs inside the edge. Only used when the
    -- rectangle holds where we are and nearly every one of the game's unstuck points (else the data is not world
    -- space here, and the walls seen are all there is).
    function PX.wallsRect()
        local md
        pcall(function()
            local eco = PX.req(PX.WATER_RS.Packages.Knit).Ecosystem
            md = PX.req(PX.WATER_RS.Shared.MapData).MapEcosystemData[eco]
        end)
        if not (md and typeof(md.MapSize) == "Vector2" and typeof(md.MapCenter) == "Vector2") then return end
        local c, hx, hz = md.MapCenter, md.MapSize.X / 2, md.MapSize.Y / 2
        local function inside(p) return math.abs(p.X - c.X) <= hx and math.abs(p.Z - c.Y) <= hz end
        local pts, ins = 0, 0
        pcall(function()
            for _, v in ipairs(workspace.UnstuckPoints:GetChildren()) do
                if v:IsA("CFrameValue") then
                    pts = pts + 1
                    if inside(v.Value.Position) then ins = ins + 1 end
                end
            end
        end)
        local root = PX.getLocalPhysicsRoot()
        if (root and not inside(root.Position)) or (pts > 0 and ins < pts * 0.95) then
            PX.wallsRectNote = "map rectangle not used (" .. ins .. "/" .. pts .. " unstuck points inside)"
            return
        end
        local IN, T, H = 50, 20, 200000
        PX.wallAdd(CFrame.new(c.X + hx - IN + T / 2, 0, c.Y), Vector3.new(T, H, 2 * hz + 2 * T), nil)
        PX.wallAdd(CFrame.new(c.X - hx + IN - T / 2, 0, c.Y), Vector3.new(T, H, 2 * hz + 2 * T), nil)
        PX.wallAdd(CFrame.new(c.X, 0, c.Y + hz - IN + T / 2), Vector3.new(2 * hx + 2 * T, H, T), nil)
        PX.wallAdd(CFrame.new(c.X, 0, c.Y - hz + IN - T / 2), Vector3.new(2 * hx + 2 * T, H, T), nil)
        PX.wallsRectNote = "map rectangle on (" .. ins .. "/" .. pts .. " unstuck points inside)"
    end
    local function isBarrier(p)
        local biomes = workspace:FindFirstChild("Biomes")
        local a = p.Parent
        while a and a ~= biomes and a ~= workspace do
            if a.Name == "Barrier" then return true end
            a = a.Parent
        end
        return false
    end

    local function trackBarriers()
        if PX.lfBarriersTracked then return end
        local biomes = workspace:FindFirstChild("Biomes")
        if not biomes then return end
        PX.lfBarriersTracked = true
        pcall(PX.wallsLoad)
        pcall(PX.wallsRect)
        local function add(d)
            if d:IsA("BasePart") and isBarrier(d) then PX.wallAdd(d.CFrame, d.Size, true) end
        end
        for _, b in ipairs(biomes:GetChildren()) do
            local folder = (b.Name == "Barrier") and b or b:FindFirstChild("Barrier")
            if folder then
                for _, d in ipairs(folder:GetDescendants()) do add(d) end
            end
        end
        table.insert(allConnections, biomes.DescendantAdded:Connect(function(d)
            if not PX.UNLOADED then add(d) end
        end))
    end

    local function barrierNear(pos, margin)
        for p in pairs(PX.lfBarriers) do
            if p.Radius and (p.CFrame.Position - pos).Magnitude > p.Radius + margin then
                -- too far off to matter
            elseif p.Parent then
                local lp = p.CFrame:PointToObjectSpace(pos)
                local h = p.Size * 0.5
                local out = Vector3.new(math.max(math.abs(lp.X) - h.X, 0), math.max(math.abs(lp.Y) - h.Y, 0),
                    math.max(math.abs(lp.Z) - h.Z, 0))
                if out.Magnitude < margin then return true end
            else
                PX.lfBarriers[p] = nil
            end
        end
        return false
    end

    local function pathClear(from, to)
        if next(PX.lfBarriers) == nil then return true end
        local d = to - from
        local n = math.clamp(math.ceil(d.Magnitude / 25), 1, 80)
        for i = 0, n do
            if barrierNear(from + d * (i / n), BARRIER_MARGIN) then return false end
        end
        return true
    end

    -- Does the straight line a -> b go through a map-edge wall (exact segment vs box test)? Flights move
    -- by writing the root, so they pass through the wall; one that did left bomblast's dino outside the
    -- map at sea level with every plant on the other side.
    local function crossesBarrier(a, b)
        local ab = b - a
        local len2 = ab:Dot(ab)
        for p in pairs(PX.lfBarriers) do
            local near = true
            if p.Radius then   -- quick cut: the segment never comes within the wall's radius of its centre
                local c = p.CFrame.Position
                local t = (len2 > 1e-6) and math.clamp((c - a):Dot(ab) / len2, 0, 1) or 0
                near = (a + ab * t - c).Magnitude <= p.Radius + 4
            end
            if near and p.Parent then
                local la, lb = p.CFrame:PointToObjectSpace(a), p.CFrame:PointToObjectSpace(b)
                local h = p.Size * 0.5 + Vector3.new(2, 2, 2)
                local t0, t1, hit = 0, 1, true
                for _, ax in ipairs({ "X", "Y", "Z" }) do
                    local s, d, hh = la[ax], lb[ax] - la[ax], h[ax]
                    if math.abs(d) < 1e-6 then
                        if math.abs(s) > hh then hit = false break end
                    else
                        local u0, u1 = (-hh - s) / d, (hh - s) / d
                        if u0 > u1 then u0, u1 = u1, u0 end
                        t0, t1 = math.max(t0, u0), math.min(t1, u1)
                        if t0 > t1 then hit = false break end
                    end
                end
                if hit then return true end
            end
        end
        return false
    end

    PX.trackWalls, PX.wallCross, PX.wallNear = trackBarriers, crossesBarrier, barrierNear

    -- Outside the map: most of the 15 nearest plants lie across a wall from here.
    local function outsideMap(pos)
        local list = {}
        for _, tagged in ipairs(game:GetService("CollectionService"):GetTagged("ConsumableFoliage")) do
            local ok, fp = pcall(PX.foodSpot, tagged)
            if ok and fp then list[#list + 1] = { d = (fp - pos).Magnitude, p = fp } end
        end
        table.sort(list, function(a, b) return a.d < b.d end)
        local n, across = math.min(#list, 15), 0
        for i = 1, n do
            if crossesBarrier(pos, list[i].p) then across = across + 1 end
        end
        return n > 0 and across > n / 2
    end

    -- The topmost terrain / mountain surface at an XZ (rocks, logs and trees ignored: the walker
    -- goes through those). A ray from high above always meets the top first.
    local topParams
    local function topSurface(x, z, fromY)
        if not topParams then
            topParams = RaycastParams.new()
            topParams.FilterType = Enum.RaycastFilterType.Include
            local list = { workspace.Terrain }
            local world = workspace:FindFirstChild("World")
            local mountains = world and world:FindFirstChild("Mountains")
            if mountains then list[2] = mountains end
            topParams.FilterDescendantsInstances = list
            topParams.IgnoreWater = true
        end
        local hit = workspace:Raycast(Vector3.new(x, fromY, z), Vector3.new(0, -2500, 0), topParams)
        return hit and hit.Position.Y
    end

    -- Water: never land in it, never sit in it (a dino left in water can drown, and swimming is where
    -- the camera had to be used to steer). A ray that stops on water (IgnoreWater off): its Y, else nil.
    local wetParams
    local function waterAt(x, z, fromY)
        if not wetParams then
            wetParams = RaycastParams.new()
            wetParams.FilterType = Enum.RaycastFilterType.Include
            local list = { workspace.Terrain }
            local world = workspace:FindFirstChild("World")
            local mountains = world and world:FindFirstChild("Mountains")
            if mountains then list[2] = mountains end
            wetParams.FilterDescendantsInstances = list
            wetParams.IgnoreWater = false
        end
        local hit = workspace:Raycast(Vector3.new(x, fromY, z), Vector3.new(0, -2500, 0), wetParams)
        if hit and hit.Material == Enum.Material.Water then return hit.Position.Y end
        return nil
    end
    -- Where to come down near pos: nil when pos itself is dry (land right there); otherwise the nearest dry
    -- ground within 400 studs, the directions closest to `dir` first (at pos's height).
    local function dryLanding(pos, dir)
        local fromY = pos.Y + 1500
        if not waterAt(pos.X, pos.Z, fromY) then return nil end
        dir = dir or Vector3.new(1, 0, 0)
        local base = math.atan2(dir.Z, dir.X)
        local offsets = { 0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 8 }
        for r = 20, 400, 20 do
            for _, k in ipairs(offsets) do
                local a = base + k * math.pi / 8
                local x, z = pos.X + math.cos(a) * r, pos.Z + math.sin(a) * r
                if not waterAt(x, z, fromY) and topSurface(x, z, fromY)
                    and not crossesBarrier(pos, Vector3.new(x, pos.Y, z)) then   -- never out past the map wall
                    return Vector3.new(x, pos.Y, z)
                end
            end
        end
        return nil
    end

    -- Water the farm keeps out of (a Carcha walked into rivers and died): food in water or by it is never
    -- a target, and water on the walk to food is flown over, not swum. Every dino, semi-aquatic
    -- ones too (2026-10-02: a farming Spinosaurus left to swim could not be steered and was killed by fish).
    local SWIM_DEPTH = 3
    -- Where "by the water" is looked for: three circles out to 45 studs (one circle of 8 at 40 let a creek
    -- or cove 20 studs off fall between its samples - shore ferns on Cretaceous Archipelago got through).
    local WET_RINGS = { { 15, 8 }, { 30, 8 }, { 45, 12 } }
    local function deepAt(x, z, fromY)   -- deep enough to swim: the surface stands SWIM_DEPTH over its bed
        local surf = waterAt(x, z, fromY)
        if not surf then return false end
        local bed = topSurface(x, z, fromY)
        return not bed or surf - bed >= SWIM_DEPTH
    end
    -- Water at the food or within 45 studs of it (WET_RINGS). Wet cells are kept for good (water stays put); dry ones
    -- 30 s, since far water may not have streamed in yet.
    local wetCache, wetN = {}, 0
    local function wetNear(p)
        local key = math.floor(p.X / 8) .. ":" .. math.floor(p.Z / 8)
        local c = wetCache[key]
        if c == true or (c and os.clock() < c) then return c == true end
        -- Expired dry cells used to stay forever, and the table grew with every patch the farm looked at. Past
        -- 20000 cells the expired ones go; if that is not enough the whole table does (the answers are re-cast).
        if c == nil then
            wetN = wetN + 1
            if wetN > 20000 then
                local now, n = os.clock(), 0
                for k, v in pairs(wetCache) do
                    if v ~= true and now >= v then wetCache[k] = nil else n = n + 1 end
                end
                if n > 20000 then table.clear(wetCache) n = 0 end
                wetN = n + 1
            end
        end
        local fromY = p.Y + 1500
        local wet = waterAt(p.X, p.Z, fromY) ~= nil
        for _, ring in ipairs(WET_RINGS) do
            if wet then break end
            local r, n = ring[1], ring[2]
            for i = 0, n - 1 do
                local a = i * 2 * math.pi / n
                if waterAt(p.X + math.cos(a) * r, p.Z + math.sin(a) * r, fromY) ~= nil then wet = true break end
            end
        end
        wetCache[key] = wet or (os.clock() + 30)
        return wet
    end
    local function dryFood(p)
        return not wetNear(p)
    end
    -- Swim-deep water on the straight walk from -> to, starting within CROSS_AHEAD: the dry spot to come up
    -- at on the far side (CROSS_PAST beyond the last deep sample, then on until no water at all), else nil.
    -- MAX_CROSS: a wider stretch (open sea off the map) is not crossed - that food is dropped instead.
    local CROSS_AHEAD, CROSS_PAST, MAX_CROSS, CROSS_TIME = 60, 30, 300, 20
    local function waterCrossing(from, to)
        local d = Vector3.new(to.X - from.X, 0, to.Z - from.Z)
        local len = d.Magnitude
        if len < 10 then return nil end
        local u = d / len
        local fromY = math.max(from.Y, to.Y) + 1500
        local first, last
        for at = 10, len, 15 do
            if not first and at > CROSS_AHEAD then return nil end
            if deepAt(from.X + u.X * at, from.Z + u.Z * at, fromY) then
                first = first or at
                last = at
            elseif last and at - last > 45 then
                break   -- past this body of water; the next one is judged on the way
            end
        end
        if not last then return nil end
        local at = math.min(last + CROSS_PAST, len)
        while at < len and waterAt(from.X + u.X * at, from.Z + u.Z * at, fromY) do at = at + 15 end
        at = math.min(at, len)
        local x, z = from.X + u.X * at, from.Z + u.Z * at
        -- Only ever up onto land: too wide, or no dry ground there, and the food is not worth it.
        if at - first > MAX_CROSS or waterAt(x, z, fromY) or not topSurface(x, z, fromY) then return nil, true end
        return Vector3.new(x, to.Y, z)
    end

    -- Down in a cave or under an overhang: the top surface is well above the food's own floor, and a
    -- dino walking on top can never get down to it.
    local function inCave(pos, g, stand)
        g = g or groundBelow(pos.X, pos.Y + 5, pos.Z) or pos.Y
        local top = topSurface(pos.X, pos.Z, pos.Y + 1200)
        return top ~= nil and top - g > math.max(stand * 2, 25)
    end

    -- Standing on the ground under the food, is its eat point inside our range? Only the height gap
    -- matters: the body walks through the trunk, so sideways it can always get close enough.
    local function reachableFrom(pos, range, stand, meshOff)
        local g = groundBelow(pos.X, pos.Y + 60, pos.Z) or groundBelow(pos.X, pos.Y + 300, pos.Z)
        if g == nil or math.abs(pos.Y - (g + stand + meshOff)) > range * REACH_FRAC then return false end
        return not inCave(pos, g, stand)
    end

    local function updateTired()
        local f
        pcall(function()
            local d = PX.getCS().Replica.Data
            f = d.Stats.Stamina / math.max(d.MaxStats.Stamina, 1)
        end)
        if not f then return end
        if PX.lfTired then
            if f >= STAM_OK then PX.lfTired = false end
        elseif f <= STAM_LOW then
            PX.lfTired = true
        end
    end

    -- Walking only (2026-10-12): running a heavy dino drains Food and Water many times faster (a 90 t
    -- Dreadnoughtus: 0.6/s standing, 1.8/s walking, ~15/s running) - it runs only to flee a player.
    local function travelTime(hd)
        local walk = 5
        pcall(function() walk = PX.getCS().Data.Movement.Speeds.Land.Normal or walk end)
        return hd / math.max(walk, 1) * 1.6 + 20
    end

    local function dropTarget(skipFor)
        local t = PX.lfTarget
        if skipFor and t and t.id then
            -- Given up on (not just eaten out): a food that fails a second time keeps failing the
            -- same way, so it is left alone far longer instead of coming back every 45 s.
            if skipFor >= EXCLUDE_TIME then
                local n = (PX.lfGiveUps[t.id] or 0) + 1
                PX.lfGiveUps[t.id] = n
                if n >= 2 then skipFor = math.max(skipFor, LONG_SKIP) end
            end
            PX.lfExclude[t.id] = os.clock() + skipFor
        end
        PX.lfTarget, PX.lfEat = nil, nil
        PX.lfLastScan = 0
        PX.lfProgPos = nil
    end

    local function startFly(root, rootPos, stand)
        releaseAll()
        PX.lfEat = nil
        local g = groundBelow(rootPos.X, rootPos.Y + 5, rootPos.Z) or (rootPos.Y - stand)
        local dir = PX.lfHeading or flatUnit(root.CFrame.LookVector, Vector3.new(0, 0, -1))
        PX.lfFly = { phase = "up", pos = rootPos, dest = Vector3.new(rootPos.X, g + stand + FLY_UP, rootPos.Z), dir = dir }
        PX.lfProgPos = nil
    end

    local function nearestPlayer(pos)
        local nearest, nd
        for _, pl in ipairs(Players:GetPlayers()) do
            if pl ~= LocalPlayer and pl.Character then
                local r = PX.getRootOf(pl.Character, false)
                if r then
                    local d = (r.Position - pos).Magnitude
                    if not nd or d < nd then nearest, nd = r.Position, d end
                end
            end
        end
        return nearest, nd
    end

    -- ── Boxed in: with players on every side, Fly Away / Flee keep turning back (the nearest player
    --    keeps changing) or take off again the moment they land. Then it climbs ESC.ALT over the ground,
    --    flies straight over them to food well away from everyone and lands. ──
    function ESC.noteStart(now)
        local st, keep = PX.lfEsc, {}
        for _, t in ipairs(st.starts) do if now - t < 60 then keep[#keep + 1] = t end end
        keep[#keep + 1] = now
        st.starts = keep
    end
    -- Every frame of a flee (in the air or on foot): its direction and where it is.
    function ESC.noteDir(dir, pos, now)
        local st = PX.lfEsc
        st.fleeSince = st.fleeSince or now
        if not st.baseDir or now - st.baseT >= 2 then
            if st.baseDir and dir:Dot(st.baseDir) < -0.3 then   -- turned back on itself
                local keep = {}
                for _, t in ipairs(st.revs) do if now - t < 25 then keep[#keep + 1] = t end end
                keep[#keep + 1] = now
                st.revs = keep
            end
            st.baseDir, st.baseT = dir, now
        end
        if not st.trailT or now - st.trailT >= 1 then
            st.trail = st.trail or {}
            table.insert(st.trail, { t = now, pos = pos })
            while #st.trail > 0 and now - st.trail[1].t > 20 do table.remove(st.trail, 1) end
            st.trailT = now
        end
    end
    -- Turned back 3 times in 25 s, took off 3 times in 60 s, or fled for 15 s and got under 60 studs.
    function ESC.boxed(now, pos)
        local st = PX.lfEsc
        if now < (st.lockUntil or 0) then return false end
        local revs, starts = 0, 0
        for _, t in ipairs(st.revs) do if now - t < 25 then revs = revs + 1 end end
        for _, t in ipairs(st.starts) do if now - t < 60 then starts = starts + 1 end end
        if revs >= 3 or starts >= 3 then return true end
        if st.fleeSince and now - st.fleeSince >= 15 and st.trail then
            for _, s in ipairs(st.trail) do
                if now - s.t >= 15 then
                    return Vector3.new(pos.X - s.pos.X, 0, pos.Z - s.pos.Z).Magnitude < 60
                end
            end
        end
        return false
    end
    -- Where to go: the nearest reachable food at least `safe` from every player; failing that, the open
    -- direction - the point furthest from every player.
    function ESC.pick(rootPos, stand)
        local players = {}
        for _, pl in ipairs(Players:GetPlayers()) do
            if pl ~= LocalPlayer and pl.Character then
                local r = PX.getRootOf(pl.Character, false)
                if r then players[#players + 1] = r.Position end
            end
        end
        local safe = math.max(ESC.MIN_SAFE, (PX.LF_FLYAWAY_RADIUS or 150) * 2 + 50, (PX.LF_AVOID or 200) * 1.5)
        -- On a drink trip, the water's shore (if no player is near it) rather than food: 2026-10-15 a thirsty
        -- Idris was boxed in on a 480-stud walk to water and flown to food each time, water 32% -> 12%.
        local dk = PX.lfDrink
        if dk and dk.stand and pathClear(rootPos, dk.stand) then
            local ok = true
            for _, pp in ipairs(players) do
                if Vector3.new(pp.X - dk.stand.X, 0, pp.Z - dk.stand.Z).Magnitude < safe then ok = false break end
            end
            if ok then return dk.stand, true end
        end
        if PX.afkPickFood then
            local range = PX.khRange()
            local m = mesh()
            local meshOff = m and (m.Position.Y - rootPos.Y) or 8
            local ok, id, _, pos = pcall(PX.afkPickFood, rootPos, PX.lfExclude, {
                avoid = safe, meat = PX.dinoEatsMeat(), maxDist = ESC.MAX_DIST,
                feetY = rootPos.Y - stand, yWeight = 5,
                reach = function(p, meat)
                    if not dryFood(p) then return false end
                    if not pathClear(rootPos, p) then return false end
                    if meat then return not inCave(p, nil, stand) end
                    return reachableFrom(p, range, stand, meshOff)
                end,
            })
            if ok and id and pos then return pos end
        end
        local best, bestScore
        for i = 0, 15 do
            local a = i * math.pi / 8
            local dir = Vector3.new(math.cos(a), 0, math.sin(a))
            for _, d in ipairs({ safe + 150, safe + 400 }) do
                local p = rootPos + dir * d
                -- Its ground need not be loaded yet (the game streams the map in near you); it loads as
                -- the flight gets close, and the landing reads it then.
                if pathClear(rootPos, p) and not waterAt(p.X, p.Z, p.Y + 1500) then
                    local score = math.huge
                    for _, pp in ipairs(players) do
                        score = math.min(score, Vector3.new(pp.X - p.X, 0, pp.Z - p.Z).Magnitude)
                    end
                    if not bestScore or score > bestScore then best, bestScore = p, score end
                end
            end
        end
        return best
    end
    -- Nowhere to go: false, and plain Fly Away / Flee carry on (tried again in 20 s).
    function ESC.start(root, pos, stand, now)
        local st = PX.lfEsc
        local goal, toWater = ESC.pick(pos, stand)
        st.revs, st.starts, st.trail, st.trailT, st.baseDir, st.fleeSince = {}, {}, nil, nil, nil, nil
        if not goal then st.lockUntil = now + 20 return false end
        st.lockUntil = now + 45
        releaseAll()
        dropTarget(nil)
        PX.lfFleeing = false
        -- The drink trip outlives the escape: without more time it gave up on landing and marked the water bad.
        if PX.lfDrink then PX.lfDrink.deadline = math.max(PX.lfDrink.deadline or now, now + ESC.MAX_TIME + 60) end
        local dir = flatUnit(goal - pos, PX.lfHeading or Vector3.new(0, 0, -1))
        PX.lfFly = { kind = "escape", toWater = toWater, phase = "rise", pos = pos, start = pos, dir = dir, goal = goal, t0 = now,
            cf = CFrame.lookAt(pos, pos + dir),
            dest = Vector3.new(pos.X, math.max(pos.Y, ESC.floorAt(pos) + stand + ESC.ALT), pos.Z) }
        PX.lfHeading = dir
        PX.lfProgPos = nil
        return true
    end

    -- The highest of the ground and any water surface at p - what a flight has to stay above.
    function ESC.floorAt(p)
        local fromY = p.Y + 1500
        local y = math.max(topSurface(p.X, p.Z, fromY) or -math.huge, waterAt(p.X, p.Z, fromY) or -math.huge)
        if y == -math.huge then return p.Y - standHeight() end
        return y
    end

    -- Water in the way of the food: the same flight as the escape, over the water to the far shore, keeping
    -- the target (walks on to it once down).
    local function startCross(root, pos, stand, now, goal)
        if next(PX.lfBarriers) and crossesBarrier(pos, goal) then return false end
        releaseAll()
        PX.lfEat = nil
        local dir = flatUnit(goal - pos, PX.lfHeading or Vector3.new(0, 0, -1))
        PX.lfFly = { kind = "escape", cross = true, maxT = CROSS_TIME, phase = "rise", pos = pos, start = pos, dir = dir, goal = goal, t0 = now,
            cf = CFrame.lookAt(pos, pos + dir),
            dest = Vector3.new(pos.X, math.max(pos.Y, ESC.floorAt(pos) + stand + ESC.ALT), pos.Z) }
        if PX.lfTarget then PX.lfTarget.deadline = (PX.lfTarget.deadline or now) + ESC.MAX_TIME end
        PX.lfHeading = dir
        PX.lfProgPos = nil
        return true
    end

    -- Rest To Heal, up in the air (2026-10-12; it rested under the ground until the server began kicking a dino
    -- found there). Straight up ESC.HEAL_UP over the ground (or the water), onto a hidden ledge, lie down (anchored,
    -- Teleporting cleared so the rest key works) until healed or starving, then back down on dry ground - a rest
    -- over water flies on to the shore first. Out of reach of walkers, swimmers and fish. (On ESC, not new locals:
    -- the 200-local cap.)
    ESC.HEAL_UP = 150
    function ESC.hide(root, pos, stand, now)
        releaseAll()
        dropTarget(nil)
        PX.lfEat, PX.lfHeading = nil, nil
        PX.lfFly = { kind = "hide", phase = "rise", pos = pos, start = pos, t0 = now,
            dir = flatUnit(root.CFrame.LookVector, Vector3.new(0, 0, -1)),
            dest = Vector3.new(pos.X, math.max(pos.Y, ESC.floorAt(pos) + stand + ESC.HEAL_UP), pos.Z) }
        PX.lfProgPos = nil
    end
    -- The farm stopped (turned off, or the hub unloaded) with the dino up in the air - resting, or part way
    -- through a flight - or under the ground, and nothing else is taking over: bring it down (up first, out of
    -- the ground) in a thread of its own, along to dry ground first if water is below, so it is never left in
    -- the sky or under the map. Runs to the end even after an unload (it never checks PX.UNLOADED);
    -- PX.lfSurfacing holds the farm off until it is down.
    function ESC.surface(f)
        local ch, root = LocalPlayer.Character, PX.getLocalPhysicsRoot()
        if not (ch and ch.Parent and root) then return end
        local pos = root.Position
        local top = topSurface(pos.X, pos.Z, pos.Y + 1500)
        if not top then return end
        local stand = standHeight()
        if pos.Y > top - 2 and pos.Y < top + stand + 6 then return end   -- on the ground already
        local legs = {}
        if pos.Y <= top - 2 then legs[#legs + 1] = Vector3.new(pos.X, top + stand + 10, pos.Z) end   -- out of the ground
        local dry = dryLanding(pos, f.dir)
        if dry then legs[#legs + 1] = Vector3.new(dry.X, math.max(pos.Y, top + stand + 10), dry.Z) end
        legs[#legs + 1] = "land"
        local rot = root.CFrame.Rotation
        PX.lfSurfacing = true
        task.spawn(function()
            local t0, i = os.clock(), 1
            local dest = legs[1]
            noclipOn(ch)
            while os.clock() - t0 < 25 and ch.Parent and root.Parent do
                if dest == "land" then
                    local g = groundBelow(pos.X, pos.Y, pos.Z) or topSurface(pos.X, pos.Z, pos.Y + 1500) or (pos.Y - stand)
                    dest = Vector3.new(pos.X, g + stand, pos.Z)
                end
                local dt = task.wait(0.03)
                pos = PX.govNext(pos, dest, math.min(dt or 0.03, 0.1), FLEE_SPEED)
                writeRoot(root, CFrame.new(pos) * rot)
                holdAt(ch, pos.Y)
                if (pos - dest).Magnitude < 2 then
                    i = i + 1
                    if not legs[i] then break end
                    dest = legs[i]
                end
            end
            holdAt(ch, nil)
            noclipOff()
            PX.flyLandUntil = os.clock() + 10
            PX.lfSurfacing = nil
        end)
    end

    -- ── Water running low (under PX.DRINK_AT): walk to the nearest shore (PX.drinkFind) and stand with the head
    --    over the water until full - Auto Water's loop does the sipping. The server only credits a sip at real
    --    water since 2026-10-12. Water on the way is flown over like on the way to food; a spot it cannot drink
    --    at (swam twice, never got the head over the water, out of time) goes in PX.drinkBad. ──
    function ESC.drink(root, rootPos, stand, now)
        local cur, max = PX.myWater()
        local frac = (cur and max and max > 0) and cur / max or 1
        local d = PX.lfDrink
        if not d then
            if frac > (PX.DRINK_AT or 0.4) or now < (PX.lfDrinkRetry or 0) then return false end
            if PX.WATER_ANYWHERE and frac >= 0.25 then return false end   -- (test) sips where it stands
            local spot = PX.drinkSpot
            if not spot or now - spot.t > 20 or (spot.from - rootPos).Magnitude > 200 then
                PX.drinkFind(rootPos, PX.DRINK_SEARCH or 1500, PX.LF_AVOID or 200)
                return false   -- farms on while it looks
            end
            PX.drinkSpot = nil
            if not spot.stand then
                PX.lfDrinkRetry = now + 45
                PX.lfDrinkNote = "no water found within " .. (PX.DRINK_SEARCH or 1500) .. " studs"
                return false
            end
            local hd = Vector3.new(spot.stand.X - rootPos.X, 0, spot.stand.Z - rootPos.Z).Magnitude
            d = { stand = spot.stand, water = spot.water, swims = 0, deadline = now + travelTime(hd) + 60 }
            PX.lfDrink, PX.lfDrinkNote = d, nil
            dropTarget(nil)
            PX.lfEat = nil
        end
        local function giveUp()
            PX.drinkBad[PX.drinkCell(d.stand)] = true
            PX.lfDrink, PX.lfDrinkRetry = nil, now + 5
            releaseAll()
            return false
        end
        if frac >= 0.99 then PX.lfDrink = nil releaseAll() return false end   -- full: back to the food
        if now > d.deadline or d.swims >= 2 then return giveUp() end
        if PX.headOverWater() then
            press("Forward", false)
            press("Run", false)
            press("Trot", false)
            PX.lfProgPos = nil
            -- Standing at the water and nothing coming in for 15 s: the sips are not landing here.
            d.drinkT = d.drinkT or now
            if not d.lastW or cur > d.lastW + 0.001 then d.lastW, d.gainT = cur, now end
            if now - math.max(d.drinkT, d.gainT or 0) > 15 then return giveUp() end
            PX.lfStatus = "drinking (" .. math.floor(frac * 100) .. "%)"
            return true
        end
        d.drinkT = nil
        -- Very thirsty with the water still far off: fly to the shore spot (the escape's flight) instead of a walk
        -- of minutes - 2026-10-15 a 480-stud walk at ~3 studs/s kept being cut off and Water fell 32% -> 12%.
        -- Once per trip; it walks on from wherever it comes down.
        if frac < (PX.LF_WATER_CRITICAL or 0.2) and not d.flown and not d.reached
            and Vector3.new(d.stand.X - rootPos.X, 0, d.stand.Z - rootPos.Z).Magnitude > 60 and pathClear(rootPos, d.stand) then
            d.flown = true
            d.deadline = math.max(d.deadline, now + ESC.MAX_TIME + 60)
            releaseAll()
            PX.lfEat = nil
            local dir = flatUnit(d.stand - rootPos, PX.lfHeading or Vector3.new(0, 0, -1))
            PX.lfFly = { kind = "escape", toWater = true, critical = true, phase = "rise", pos = rootPos, start = rootPos,
                dir = dir, goal = d.stand, t0 = now, cf = CFrame.lookAt(rootPos, rootPos + dir),
                dest = Vector3.new(rootPos.X, math.max(rootPos.Y, ESC.floorAt(rootPos) + stand + ESC.ALT), rootPos.Z) }
            PX.lfHeading = dir
            PX.lfProgPos = nil
            return true
        end
        -- To the shore, then on toward the water a step at a time until the head is over it.
        local target = d.reached and d.water or d.stand
        local flat = Vector3.new(target.X - rootPos.X, 0, target.Z - rootPos.Z)
        if not d.reached and flat.Magnitude < 5 then d.reached = true end
        if d.reached and flat.Magnitude < 3 then return giveUp() end   -- at the edge, still no water under the head
        PX.lfHeading = flatUnit(flat, PX.lfHeading)
        if not d.reached and now - (d.wetT or 0) >= 1 then
            d.wetT = now
            local far, skip = waterCrossing(rootPos, d.stand)
            if skip then return giveUp() end
            if far and startCross(root, rootPos, stand, now, far) then return true end
        end
        -- Not getting anywhere for 6 s: up and over, like Unstuck does on the way to food.
        if not d.progPos or Vector3.new(rootPos.X - d.progPos.X, 0, rootPos.Z - d.progPos.Z).Magnitude > STUCK_MOVE then
            d.progPos, d.progT = rootPos, now
        elseif now - d.progT > 6 then
            d.progPos, d.flyOuts = nil, (d.flyOuts or 0) + 1
            if d.flyOuts > 2 then return giveUp() end
            startFly(root, rootPos, stand)
            PX.lfFly.overTo = d.stand
            return true
        end
        press("Trot", false)
        press("Run", false)
        press("Forward", true)
        PX.lfStatus = "thirsty (" .. math.floor(frac * 100) .. "%) - walking to water, " .. math.floor(flat.Magnitude) .. " studs"
        return true
    end

    -- Fly Away: lift straight up, then (phase "away") fly off from the nearest player until clear.
    local function startFlee(root, rootPos, stand, threat)
        local now = os.clock()
        ESC.noteStart(now)
        if ESC.boxed(now, rootPos) and ESC.start(root, rootPos, stand, now) then return end
        releaseAll()
        dropTarget(nil)
        local g = groundBelow(rootPos.X, rootPos.Y + 5, rootPos.Z) or (rootPos.Y - stand)
        local away = flatUnit(rootPos - threat, PX.lfHeading or flatUnit(root.CFrame.LookVector, Vector3.new(0, 0, -1)))
        PX.lfFly = { kind = "flee", phase = "up", pos = rootPos, start = rootPos, dir = away, t0 = os.clock(),
            dest = Vector3.new(rootPos.X, g + stand + FLEE_ALT, rootPos.Z) }
        PX.lfProgPos = nil
    end

    -- yielding: another mover (AFK Farm, Fly, Save Dino ...) is taking over and owns Teleporting now.
    function PX.lfStop(yielding)
        local hf = PX.lfFly
        if hf and hf.plat then pcall(function() hf.plat:Destroy() end) hf.plat = nil end
        if hf and hf.kind == "hide" and hf.phase == "rest" and PX.saveIsResting() then pressR() end
        local airborne = (not yielding and hf) and hf or nil   -- any flight: brought down, never dropped
        if PX.lfResting == "resting" and PX.saveIsResting() then pressR() end
        if PX.lfAnchored then
            local root = PX.getLocalPhysicsRoot()
            if root then pcall(function() root.Anchored = false end) end
            PX.lfAnchored = nil
        end
        PX.lfResting, PX.lfFly, PX.lfHealUp = nil, nil, nil
        releaseAll()
        noclipOff()
        if not yielding then
            local ch = LocalPlayer.Character
            if ch then pcall(function() ch:SetAttribute("Teleporting", nil) end) end
        end
        if PX.lfRestoreInput then PX.lfRestoreInput() end
        PX.lfWasOn, PX.lfChar = false, nil
        PX.lfTarget, PX.lfEat, PX.lfHeading, PX.lfProgPos, PX.lfFleeing = nil, nil, nil, nil, false
        PX.lfDrink = nil
        PX.lfStatus = "off"
        PX.lfEsc = { starts = {}, revs = {} }
        PX.flyLandUntil = os.clock() + 10
        if airborne then ESC.surface(airborne) end
    end

    function PX.lfAdvance(dt)
        if PX.UNLOADED then return end
        if PX.lfSurfacing then return end   -- coming down from a flight (ESC.surface): wait for it
        if PX.lfKeepInput then PX.lfKeepInput() end
        local underNow = PX.lfFly and (PX.lfFly.kind == "hide" or PX.lfFly.kind == "escape")
        local yield = PX.AFK_FARM or PX.FLY or PX.AUTO_FLY or PX.FOSSIL_FARM or PX.SAVE_DINO_ACTIVE or PX.AS_BUSY
            or (PX.CLEAN_BREAK and not underNow)   -- a clean break waits until it is back down
        if not PX.LEGIT_FARM or yield then
            if PX.lfWasOn then PX.lfStop(yield) end
            return
        end
        local ch = LocalPlayer.Character
        local root = PX.getLocalPhysicsRoot()
        if not (ch and root) then return end
        if not ch.Parent then   -- died: the old body stays LocalPlayer.Character, out of the world
            if PX.lfWasOn then PX.lfStop(false) end
            return
        end
        dt = math.min(dt or 0.016, 0.1)
        if PX.lfWasOn and PX.lfChar ~= ch then PX.lfStop(false) end   -- respawned: start clean
        if not PX.lfWasOn then
            PX.lfWasOn, PX.lfChar = true, ch
            PX.lfY = root.Position.Y
            PX.lfTarget, PX.lfEat, PX.lfLastScan = nil, nil, 0
            trackBarriers()
        end
        local now = os.clock()
        local rootPos = root.Position
        local stand = standHeight()
        local CS = PX.getCS()

        -- ── Rest To Heal: up in the air (ESC.hide) - out of reach of players and fish ──
        local hp, maxHp
        pcall(function() hp = ch:GetAttribute("Health"); maxHp = ch:GetAttribute("MaxHealth") end)
        local pct = (type(hp) == "number" and type(maxHp) == "number" and maxHp > 0) and hp / maxHp or 1
        -- Took damage: fly away from the player nearby (if there is one), then lie down and heal to full.
        -- Resting is anchored and lying down: a hit, or a player walking up, ends it and flies away
        -- (a rested Elder Carcha was bitten to death by a pack - head, neck and jaw broken - and never moved).
        local function endRest()
            if PX.saveIsResting() then pressR() end
            if PX.lfAnchored then pcall(function() root.Anchored = false end); PX.lfAnchored = nil end
            PX.lfResting = nil
            PX.lfY = rootPos.Y
        end
        if PX.lfResting then
            local threat, nd = nearestPlayer(rootPos)
            if threat and nd <= math.max(PX.LF_FLYAWAY_RADIUS or 150, 150) then
                endRest()
                if not PX.lfFly then startFlee(root, rootPos, stand, threat) end
            end
        end
        if PX.tookDamage(ch, hp) then
            PX.lfHealUp = true
            if PX.lfResting then
                local threat, nd = nearestPlayer(rootPos)
                if threat and nd <= 400 then endRest() end
            end
            if not PX.lfFly and not PX.lfResting then
                local threat, nd = nearestPlayer(rootPos)
                if threat and nd <= 400 then startFlee(root, rootPos, stand, threat) end
            end
        end
        local food, foodMax
        if pct < 0.99 then pcall(function() food, foodMax = PX.myFood() end) end
        local wantRest, starving = PX.lfWantRest(pct, PX.lfHealUp, food, foodMax)
        if starving then PX.lfHealUp = nil end
        if PX.LF_REST and not PX.lfResting and not PX.lfFly and wantRest then
            local threat, nd = nearestPlayer(rootPos)
            if threat and nd <= math.max(PX.LF_FLYAWAY_RADIUS or 150, 150) then
                startFlee(root, rootPos, stand, threat)   -- never sink in front of a player: away first
            else
                ESC.hide(root, rootPos, stand, now)
                return
            end
        elseif PX.lfResting and (pct >= 0.99 or not PX.LF_REST or starving) then
            if PX.saveIsResting() then pressR() end
            if PX.lfAnchored then pcall(function() root.Anchored = false end); PX.lfAnchored = nil end
            PX.lfResting = nil
            PX.lfHealUp = nil
            PX.lfY = rootPos.Y
        end
        if pct >= 0.99 then PX.lfHealUp = nil end
        if PX.lfResting then
            if PX.lfResting == "settling" then
                holdAt(ch, PX.lfY)
                if now - PX.lfRestT >= 1 then
                    pcall(function() root.Anchored = true end)
                    PX.lfAnchored = true
                    holdAt(ch, nil)
                    pressR()
                    PX.lfResting, PX.lfRestT = "resting", now
                end
            elseif not PX.saveIsResting() and now - PX.lfRestT > 6 then
                pressR()   -- the first press did not take; try again
                PX.lfRestT = now
            end
            PX.lfStatus = "resting to heal (" .. math.floor(pct * 100) .. "%)"
            return
        end
        if root.Anchored and not (PX.lfFly and PX.lfFly.kind == "hide") then return end

        noclipOn(ch)
        if PX.lfSteerPatch then PX.lfSteerPatch() end   -- free look: steer through the Walking state

        -- Test hook: getgenv().EazyCheats_LfEscapeTest = true runs the boxed-in escape once, players or not.
        if not PX.lfFly then
            local gv = getgenv and getgenv()
            if gv and gv.EazyCheats_LfEscapeTest then
                gv.EazyCheats_LfEscapeTest = nil
                if ESC.start(root, rootPos, stand, now) then return end
            end
        end

        -- ── Fly Away: a player inside the fly-away radius -> lift off, fly away until clear, land ──
        if PX.LF_FLYAWAY and not PX.lfFly then
            local threat, nd = nearestPlayer(rootPos)
            if threat and nd <= (PX.LF_FLYAWAY_RADIUS or 150) then startFlee(root, rootPos, stand, threat) end
        end

        -- ── Flight (Unstuck / Fly Away): rise, move over the obstacle or away from the player, land ──
        if PX.lfFly then
            local f = PX.lfFly
            if f.kind == "flee" and f.phase == "away" then
                local threat, nd = nearestPlayer(f.pos)
                if threat then f.dir = flatUnit(f.pos - threat, f.dir) end
                -- Map wall ahead: turn along it (the side that is open), else back.
                if next(PX.lfBarriers) and crossesBarrier(f.pos, f.pos + f.dir * 60) then
                    local l, r = Vector3.new(-f.dir.Z, 0, f.dir.X), Vector3.new(f.dir.Z, 0, -f.dir.X)
                    f.dir = (not crossesBarrier(f.pos, f.pos + l * 60) and l)
                        or (not crossesBarrier(f.pos, f.pos + r * 60) and r) or -f.dir
                end
                ESC.noteDir(f.dir, f.pos, now)
                if ESC.boxed(now, f.pos) and ESC.start(root, f.pos, stand, now) then return end
                -- Hold FLEE_ALT over the higher of the ground here and 40 studs ahead, so hills are cleared.
                local ahead = f.pos + f.dir * 40
                local gHere = groundBelow(f.pos.X, f.pos.Y + 150, f.pos.Z)
                local gAhead = groundBelow(ahead.X, f.pos.Y + 150, ahead.Z)
                local g = math.max(gHere or -math.huge, gAhead or -math.huge)
                local alt = (g > -math.huge) and (g + stand + FLEE_ALT) or f.pos.Y
                f.dest = Vector3.new(f.pos.X + f.dir.X * 50, alt, f.pos.Z + f.dir.Z * 50)
                local clear = not threat or nd > (PX.LF_FLYAWAY_RADIUS or 150) * 2
                local flown = Vector3.new(f.pos.X - f.start.X, 0, f.pos.Z - f.start.Z).Magnitude
                if (clear and flown >= FLEE_MIN) or os.clock() - f.t0 > FLEE_MAX_TIME then
                    local dry = dryLanding(f.pos, f.dir)   -- over water: on to dry ground first
                    if dry then
                        f.phase, f.dest = "over", dry
                    else
                        local lg = groundBelow(f.pos.X, f.pos.Y, f.pos.Z)
                        f.phase, f.dest = "land", Vector3.new(f.pos.X, (lg or (f.pos.Y - FLEE_ALT - stand)) + stand, f.pos.Z)
                    end
                end
            end
            -- Escape / water crossing, in the air: ESC.ALT over the higher of the ground (or water) here and just
            -- ahead, so hills are cleared, straight at the goal; down on dry ground once there.
            if f.kind == "escape" and f.phase == "cruise" then
                local toGoal = Vector3.new(f.goal.X - f.pos.X, 0, f.goal.Z - f.pos.Z)
                local hd = toGoal.Magnitude
                f.dir = flatUnit(toGoal, f.dir)
                local ahead = f.pos + f.dir * math.min(40, hd)
                local wall = next(PX.lfBarriers) and barrierNear(ahead, BARRIER_MARGIN)   -- map edge: land here
                local y = math.max(ESC.floorAt(f.pos), ESC.floorAt(ahead)) + stand + ESC.ALT
                local step = math.min(50, hd)
                f.dest = Vector3.new(f.pos.X + f.dir.X * step, y, f.pos.Z + f.dir.Z * step)
                if hd <= 12 or wall or now - f.t0 > (f.maxT or ESC.MAX_TIME) then
                    local dry = not f.dryDone and not wall and dryLanding(f.pos, f.dir)   -- water below: on to the shore
                    f.dryDone = true
                    if dry then
                        f.goal, f.t0 = dry, now
                    else
                        local g = groundBelow(f.pos.X, f.pos.Y, f.pos.Z) or topSurface(f.pos.X, f.pos.Z, f.pos.Y + 1500)
                        f.phase, f.dest = "land", Vector3.new(f.pos.X, (g or (f.pos.Y - ESC.ALT - stand)) + stand, f.pos.Z)
                    end
                end
            end
            -- Rest To Heal up in the air (ESC.hide): lying on the hidden ledge until healed, then down.
            if f.kind == "hide" and f.phase == "rest" then
                PX.lfStatus = "resting up in the air (" .. math.floor(pct * 100) .. "%)"
                if not f.pressed and now - f.restT >= 1 then
                    pressR()
                    f.pressed, f.restT = true, now
                elseif f.pressed and not PX.saveIsResting() and now - f.restT > 6 then
                    pressR()   -- the first press did not take; try again
                    f.restT = now
                end
                if pct >= 0.99 or starving or not PX.LF_REST then
                    if PX.saveIsResting() then pressR() end
                    if PX.lfAnchored then pcall(function() root.Anchored = false end); PX.lfAnchored = nil end
                    if f.plat then pcall(function() f.plat:Destroy() end) f.plat = nil end
                    PX.lfHealUp = nil
                    local dry = dryLanding(f.pos, f.dir)   -- water below: along to the shore first
                    if dry then
                        f.kind, f.cross, f.maxT, f.phase, f.goal, f.t0, f.dryDone = "escape", true, CROSS_TIME, "cruise", dry, now, true
                    else
                        local g = groundBelow(f.pos.X, f.pos.Y, f.pos.Z) or topSurface(f.pos.X, f.pos.Z, f.pos.Y + 1500)
                        f.phase, f.dest = "land", Vector3.new(f.pos.X, (g or (f.pos.Y - ESC.HEAL_UP)) + stand, f.pos.Z)
                    end
                end
                return
            end
            local nxt = PX.govNext(f.pos, f.dest, dt, (f.kind == "flee" or f.kind == "escape" or f.kind == "hide") and FLEE_SPEED or FLY_SPEED)
            -- Never inside the ground (the server kicks a dino it finds there since 2026-10-12): a step that would
            -- end below the top of the ground (terrain or mountain) is lifted onto it.
            do
                local top = topSurface(nxt.X, nxt.Z, nxt.Y + 1500)
                if top and nxt.Y < top + stand * 0.5 then nxt = Vector3.new(nxt.X, top + stand * 0.5, nxt.Z) end
            end
            -- Never through the map wall (a slow frame steps up to 50 studs): stop at it - "over" then lands
            -- here, Fly Away lands. Only the flight back in from outside the map (crossOK) goes through.
            if not f.crossOK and next(PX.lfBarriers) and crossesBarrier(f.pos, nxt) then
                nxt = Vector3.new(f.pos.X, nxt.Y, f.pos.Z)
                f.dest = Vector3.new(f.pos.X, f.dest.Y, f.pos.Z)
                if f.kind == "flee" and f.phase == "away" then f.t0 = os.clock() - FLEE_MAX_TIME - 1 end
            end
            f.pos = nxt
            f.cf = CFrame.lookAt(f.pos, f.pos + f.dir)
            writeRoot(root, f.cf)
            holdAt(ch, f.pos.Y)
            PX.lfY = f.pos.Y
            if f.kind == "hide" then
                PX.lfStatus = "resting up in the air: " .. f.phase
            elseif f.kind == "escape" then
                PX.lfStatus = (f.cross and "water ahead - flying over it: " or f.critical and "very thirsty - flying to water: "
                    or f.toWater and "boxed in by players - flying to water: " or "boxed in by players - flying to safe food: ") .. f.phase .. " ("
                    .. math.floor(Vector3.new(f.goal.X - f.pos.X, 0, f.goal.Z - f.pos.Z).Magnitude) .. " studs)"
            else
                PX.lfStatus = (f.kind == "flee" and "flying away from a player: " or "unstuck: ") .. f.phase
            end
            if (f.pos - f.dest).Magnitude < 2 then
                if f.kind == "hide" then
                    if f.phase == "rise" then   -- on the ledge: lie down and heal
                        f.phase, f.restT, f.pressed = "rest", now, false
                        pcall(function()
                            local p = Instance.new("Part")
                            p.Name = "EZRestLedge"
                            p.Size = Vector3.new(40, 4, 40)
                            p.Position = f.pos - Vector3.new(0, stand + 2, 0)
                            p.Anchored, p.CanCollide, p.CanQuery, p.CanTouch, p.Transparency = true, true, false, false, 1
                            p.Parent = workspace
                            f.plat = p
                        end)
                        pcall(function() root.Anchored = true end)
                        PX.lfAnchored = true
                        holdAt(ch, nil)   -- Teleporting cleared: the rest key works
                    else   -- "land": back on the ground, farm on
                        PX.lfFly, PX.lfProgPos = nil, nil
                        PX.flyLandUntil = os.clock() + 10
                        PX.lfY, PX.lfLastScan = f.pos.Y, 0
                    end
                elseif f.kind == "escape" then
                    if f.phase == "rise" then
                        f.phase = "cruise"   -- its destination is set every frame (above)
                    elseif f.phase == "land" then   -- standing on the ground at the safe food: farm on
                        PX.lfFly, PX.lfProgPos = nil, nil
                        PX.flyLandUntil = os.clock() + 10
                        PX.lfY, PX.lfLastScan, PX.lfHeading = f.pos.Y, 0, f.dir
                    end
                elseif f.phase == "up" and f.kind == "flee" then
                    f.phase = "away"   -- its destination is set every frame from where the player is
                elseif f.phase == "up" then
                    local over = f.overTo and Vector3.new(f.overTo.X, f.dest.Y, f.overTo.Z) or (f.dest + f.dir * FLY_OVER)
                    if next(PX.lfBarriers) and barrierNear(over, BARRIER_MARGIN) then over = f.dest - f.dir * FLY_OVER end
                    f.phase, f.dest = "over", over
                elseif f.phase == "over" then
                    local dry = not f.dryDone and dryLanding(f.dest, f.dir)   -- it would come down in water
                    f.dryDone = true
                    if dry then
                        f.dest = dry   -- once more across, to dry ground
                    else
                        local g = groundBelow(f.dest.X, f.dest.Y, f.dest.Z)
                        f.phase, f.dest = "land", Vector3.new(f.dest.X, (g or (f.dest.Y - FLY_UP)) + stand, f.dest.Z)
                    end
                else
                    PX.lfFly, PX.lfProgPos = nil, nil
                    PX.flyLandUntil = os.clock() + 10
                end
            end
            return
        end

        -- ── Height: stand on the ground under us. Anything lower than the knees is stepped onto,
        --    anything taller is walked through; inside a steep hill, climb it; never sink. ──
        local swimming = CS and CS.MovementState == "Swimming"
        if not CS then   -- no CharacterState (Xeno): in water when its surface is over our feet
            local surf = waterAt(rootPos.X, rootPos.Z, rootPos.Y + 1500)
            swimming = surf ~= nil and surf > rootPos.Y - stand and deepAt(rootPos.X, rootPos.Z, rootPos.Y + 1500)
        end
        if swimming then
            holdAt(ch, nil)   -- the game swims us; a height hold would pin us under the surface
            PX.lfY = rootPos.Y
        else
            if math.abs(rootPos.Y - PX.lfY) > 25 then PX.lfY = rootPos.Y end
            local feet = PX.lfY - stand
            local g = groundBelow(rootPos.X, feet + math.max(stand * 0.75, 4), rootPos.Z)
                or groundBelow(rootPos.X, feet + 90, rootPos.Z)
            if g then
                if g >= PX.lfY then
                    PX.lfY = g + stand   -- the body is inside the slope: straight up out of it, not a climb
                else
                    PX.lfY = PX.lfY + math.clamp(g + stand - PX.lfY, -DROP_RATE * dt, CLIMB_RATE * dt)
                end
            end
            holdAt(ch, PX.lfY)
        end
        -- Swimming (walked or was pushed into a river or lake): a moment later it leaves - up out of the water,
        -- across to the nearest dry ground and down (the water crossing's flight). Every dino, semi-aquatic ones
        -- too: in water the farm cannot steer, and a dino left there can drown or, like a Spinosaurus did, sit
        -- still while fish kill it.
        if swimming then
            PX.lfSwimSince = PX.lfSwimSince or now
            if now - PX.lfSwimSince > 1 then
                PX.lfSwimSince = nil
                if PX.lfDrink then PX.lfDrink.swims = PX.lfDrink.swims + 1 end   -- walked in while going to drink
                local dir = PX.lfHeading or flatUnit(root.CFrame.LookVector, Vector3.new(0, 0, -1))
                local dry = dryLanding(rootPos, dir)
                if dry then
                    if startCross(root, rootPos, stand, now, dry) then return end
                    startFly(root, rootPos, stand)
                    local surf = waterAt(rootPos.X, rootPos.Z, rootPos.Y + 1500)
                    if surf and PX.lfFly.dest.Y < surf + 20 then   -- clear the surface, not just the bed
                        PX.lfFly.dest = Vector3.new(PX.lfFly.dest.X, surf + 20, PX.lfFly.dest.Z)
                    end
                    PX.lfFly.overTo, PX.lfFly.dir = dry, flatUnit(dry - rootPos, dir)
                    return
                end
            end
        else
            PX.lfSwimSince = nil
        end
        updateTired()

        -- ── Flee: run away from a player inside the avoid radius, farm again once 1.5x clear ──
        if PX.LF_FLEE then
            local avoidR = PX.LF_AVOID or 200
            local nearest, nd
            if avoidR > 0 then
                for _, pl in ipairs(Players:GetPlayers()) do
                    if pl ~= LocalPlayer and pl.Character then
                        local r = PX.getRootOf(pl.Character, false)
                        if r then
                            local d = (r.Position - rootPos).Magnitude
                            if not nd or d < nd then nearest, nd = r.Position, d end
                        end
                    end
                end
            end
            if nearest and (nd <= avoidR or (PX.lfFleeing and nd <= avoidR * 1.5)) then
                if not PX.lfFleeing then dropTarget(nil) end
                PX.lfFleeing = true
                PX.lfHeading = flatUnit(rootPos - nearest, PX.lfHeading or Vector3.new(0, 0, -1))
                if next(PX.lfBarriers) and barrierNear(rootPos + PX.lfHeading * BARRIER_MARGIN, BARRIER_MARGIN * 0.5) then
                    PX.lfHeading = Vector3.new(-PX.lfHeading.Z, 0, PX.lfHeading.X)
                end
                -- Chased to the shore: running on would swim (and a swimming dino is caught). Up and over
                -- instead, past the players, down at food clear of everyone (the boxed-in escape). With nowhere
                -- to go (tried again in 20 s), run along the shore, not into the sea. Every dino.
                do
                    local ahead = rootPos + PX.lfHeading * 40
                    local fromY = rootPos.Y + 1500
                    if (CS and CS.MovementState == "Swimming") or deepAt(ahead.X, ahead.Z, fromY) then
                        if now >= (PX.lfEsc.lockUntil or 0) and ESC.start(root, rootPos, stand, now) then return end
                        local l = Vector3.new(-PX.lfHeading.Z, 0, PX.lfHeading.X)
                        local la, ra = rootPos + l * 40, rootPos - l * 40
                        if not deepAt(la.X, la.Z, fromY) then PX.lfHeading = l
                        elseif not deepAt(ra.X, ra.Z, fromY) then PX.lfHeading = -l end
                    end
                end
                ESC.noteDir(PX.lfHeading, rootPos, now)
                if ESC.boxed(now, rootPos) and ESC.start(root, rootPos, stand, now) then return end
                PX.lfEat = nil
                press("Forward", true)
                press("Run", not PX.lfTired)
                PX.lfStatus = "fleeing a player " .. math.floor(nd) .. " studs away"
                return
            end
            PX.lfFleeing = false
        end

        PX.lfEsc.fleeSince, PX.lfEsc.trail, PX.lfEsc.baseDir = nil, nil, nil   -- farming, not fleeing

        if ESC.drink(root, rootPos, stand, now) then return end   -- thirsty: to the water first

        -- ── Pick food (kept until eaten out or given up) ──
        if not PX.lfTarget and now - (PX.lfLastScan or 0) >= SCAN_INTERVAL then
            PX.lfLastScan = now
            for id, t in pairs(PX.lfExclude) do
                if t <= now then PX.lfExclude[id] = nil end
            end
            if PX.afkPickFood then
                local range = PX.khRange()
                local m = mesh()
                local meshOff = m and (m.Position.Y - rootPos.Y) or 8
                local id, idx, pos, isMeat = PX.afkPickFood(rootPos, PX.lfExclude, {
                    avoid = PX.LF_AVOID or 200,
                    meat = PX.dinoEatsMeat(),   -- automatic by diet, like AFK Farm
                    maxDist = PX.LF_MAX_DIST or 1000,
                    feetY = rootPos.Y - stand, yWeight = 5,   -- climbing / dropping costs 5 studs per stud
                    reach = function(p, meat)
                        if not dryFood(p) then return false end
                        if not pathClear(rootPos, p) then return false end
                        if meat then return not inCave(p, nil, stand) end
                        return reachableFrom(p, range, stand, meshOff)
                    end,
                })
                if id and pos then
                    local hd0 = Vector3.new(pos.X - rootPos.X, 0, pos.Z - rootPos.Z).Magnitude
                    PX.lfTarget = { id = id, idx = idx, pos = pos, isMeat = isMeat, misses = 0, flyOuts = 0,
                        biteSeen = PX.lfBiteN, eat = { id = id, idx = idx, meat = isMeat }, deadline = now + travelTime(hd0) }
                end
            end
        end

        local tgt = PX.lfTarget
        if not tgt then
            if PX.LF_CIRCLE then
                PX.lfIdleC = PX.lfIdleC or rootPos   -- circle where we ran out of food
                circleWalk(PX.lfIdleC, rootPos)
                PX.lfEat, PX.lfProgPos = nil, nil
            else
                releaseAll()
                PX.lfEat, PX.lfHeading, PX.lfProgPos = nil, nil, nil
            end
            PX.lfStatus = PX.afkPickFood and "looking for reachable food" or "waiting for food data"
            -- Nothing within walking reach for 30 s: every plant may sit far above or below (a dino that
            -- came down to the sea at y -308 under Cretaceous Upland's plateau saw all 255 plants as
            -- ~3500 studs off with the climb cost, and stood still for hours). Look again ignoring the
            -- height and further out, and fly there (up over it, across, land on dry ground) - once a minute.
            PX.lfNoFoodSince = PX.lfNoFoodSince or now
            if PX.afkPickFood and now - PX.lfNoFoodSince > 30 and now - (PX.lfRelocateAt or 0) > 60 then
                PX.lfRelocateAt = now
                local range = PX.khRange()
                local m = mesh()
                local meshOff = m and (m.Position.Y - rootPos.Y) or 8
                local opts = {
                    avoid = PX.LF_AVOID or 200, meat = PX.dinoEatsMeat(), maxDist = math.max(PX.LF_MAX_DIST or 1000, 2000),
                    reach = function(p, meat)
                        if not dryFood(p) then return false end
                        if not pathClear(rootPos, p) then return false end
                        if meat then return not inCave(p, nil, stand) end
                        return reachableFrom(p, range, stand, meshOff)
                    end,
                }
                local ok, id, _, pos = pcall(PX.afkPickFood, rootPos, PX.lfExclude, opts)
                local cross = false
                if ok and not id and next(PX.lfBarriers) and outsideMap(rootPos) then
                    -- Outside the map wall, every plant across it: fly back in over the wall, to food clear of it.
                    opts.reach = function(p, meat)
                        if not dryFood(p) then return false end
                        if barrierNear(p, BARRIER_MARGIN) then return false end
                        if meat then return not inCave(p, nil, stand) end
                        return reachableFrom(p, range, stand, meshOff)
                    end
                    ok, id, _, pos = pcall(PX.afkPickFood, rootPos, PX.lfExclude, opts)
                    cross = true
                end
                if ok and id and pos then
                    startFly(root, rootPos, stand)
                    PX.lfFly.crossOK = cross
                    PX.lfFly.dest = Vector3.new(rootPos.X, math.max(pos.Y, rootPos.Y) + stand + FLY_UP, rootPos.Z)
                    PX.lfFly.overTo = pos
                    PX.lfFly.dir = flatUnit(pos - rootPos, PX.lfFly.dir)
                    PX.lfStatus = "no food within reach here - flying to food " .. math.floor((pos - rootPos).Magnitude) .. " studs off"
                end
            end
            return
        end
        PX.lfNoFoodSince = nil
        PX.lfIdleC = nil

        -- A plant in hand never keeps a meat eater off the meat it needs: a target is kept until eaten out,
        -- and a big fern fills Food but gives a carnivore no Proteins or Fats (a Carcha at 81 / 79 % stayed
        -- on a tree fern with a full Spinosaurus corpse 640 studs off). Every 8 s on a plant it looks again,
        -- and switches when the best food now is meat.
        if not tgt.isMeat and PX.afkPickFood and PX.dinoEatsMeat() and now - (tgt.meatLookT or 0) >= 8 then
            tgt.meatLookT = now
            local range = PX.khRange()
            local m = mesh()
            local meshOff = m and (m.Position.Y - rootPos.Y) or 8
            local ok, id, idx, pos, isMeat = pcall(PX.afkPickFood, rootPos, PX.lfExclude, {
                avoid = PX.LF_AVOID or 200, meat = true, maxDist = PX.LF_MAX_DIST or 1000,
                feetY = rootPos.Y - stand, yWeight = 5,
                reach = function(p, meat)
                    if not dryFood(p) then return false end
                    if not pathClear(rootPos, p) then return false end
                    if meat then return not inCave(p, nil, stand) end
                    return reachableFrom(p, range, stand, meshOff)
                end,
            })
            if ok and id and pos and isMeat and id ~= tgt.id then
                local hd0 = Vector3.new(pos.X - rootPos.X, 0, pos.Z - rootPos.Z).Magnitude
                PX.lfTarget = { id = id, idx = idx, pos = pos, isMeat = true, misses = 0, flyOuts = 0,
                    biteSeen = PX.lfBiteN, eat = { id = id, idx = idx, meat = true }, deadline = now + travelTime(hd0) }
                PX.lfEat, PX.lfProgPos = nil, nil
                tgt = PX.lfTarget
            end
        end

        -- Eaten out (or the corpse stopped being readable): move on.
        local food, water, spawned = PX.afkBufCheck(tgt.id, tgt.idx)
        if tgt.isMeat and food == nil then dropTarget(EXCLUDE_TIME) return end
        if food ~= nil and (not spawned or food + (water or 0) <= 0) then
            dropTarget(5)
            return
        end
        -- Leave Scraps: what is left would not survive another bite or two - treat the plant as empty
        -- and leave it to regrow (an emptied plant decays).
        if food ~= nil and not tgt.isMeat and (PX.LF_SCRAPS or PX.LEAVE_SCRAPS) and PX.isScraps(food) then
            PX.lfExclude[tgt.id] = os.clock() + 300
            dropTarget(nil)
            return
        end

        -- Distances from the mesh, where the game measures eating from.
        local m = mesh()
        local mPos = m and m.Position or rootPos
        local range = PX.khRange()
        local toFood = tgt.pos - mPos
        local hd = Vector3.new(toFood.X, 0, toFood.Z).Magnitude
        local hReach = math.sqrt(math.max((range * 0.9) ^ 2 - toFood.Y * toFood.Y, 0))
        local stopDist = tgt.creep and 3 or math.max(hReach * HOLD_REACH, 3)

        -- Food straight above or below (up a cliff, down in a cave): close sideways but out of reach
        -- up or down, the walker would circle under or over it forever. Skip it for good.
        if hd <= math.max(range * 1.5, 20) and math.abs(toFood.Y) > range * 0.95 then
            tgt.vertSince = tgt.vertSince or now
            if now - tgt.vertSince > VERT_GIVEUP then
                dropTarget(LONG_SKIP)
                return
            end
        else
            tgt.vertSince = nil
        end

        if tgt.holding then
            if hd > stopDist + 6 then tgt.holding = false end
        elseif hd <= stopDist then
            tgt.holding = true
        end
        PX.lfHeading = flatUnit(tgt.pos - rootPos, PX.lfHeading)
        -- Swim-deep water on the way (checked once a second): never walk in - up over it, across, down past it.
        if not tgt.holding and now - (tgt.wetT or 0) >= 1 then
            tgt.wetT = now
            local far, skip = waterCrossing(rootPos, tgt.pos)
            if skip then dropTarget(LONG_SKIP) return end
            if far and startCross(root, rootPos, stand, now, far) then return end
        end
        PX.lfEat = (toFood.Magnitude <= range * 0.95) and tgt.eat or nil

        -- Judge each bite Force Eat fires at it: did the plant's food drop? Not while we are full,
        -- because a full dino's bites cannot land.
        local fc, fm = PX.myFood()
        local full = fc and fm and fm > 0 and fc >= fm - PX.foodGap(fm, 1)
        if PX.lfBiteN ~= tgt.biteSeen then
            tgt.biteSeen = PX.lfBiteN
            if food and tgt.lastFood and food < tgt.lastFood then
                PX.noteBiteDrop(tgt.lastFood - food)
                tgt.misses = 0
                tgt.lastEat = now
            elseif tgt.lastFood ~= nil and not full then
                tgt.misses = tgt.misses + 1
            end
            tgt.lastFood = food
        end
        if tgt.holding and not tgt.creep and tgt.misses >= STALL_CREEP then
            tgt.creep, tgt.holding, tgt.misses = true, false, 0
            tgt.deadline = now + travelTime(hd)
        elseif tgt.creep and tgt.holding and tgt.misses >= STALL_GIVEUP then
            dropTarget(EXCLUDE_TIME)
            return
        end

        -- No gain: standing at the food with Force Eat biting it and hungry, yet our own Food is not
        -- going up. Always on, not only with Unstuck (see PX.foodNoGain).
        if tgt.holding and PX.lfEat then
            if PX.foodNoGain(tgt, now) then dropTarget(PX.NO_GAIN_SKIP) return end
        else
            tgt.gainT = nil
        end

        -- Unstuck: standing at the food and hungry, yet nothing eaten for a while (never in range,
        -- or bites refused without the plant's food ever dropping) -> skip it and try other food.
        if PX.LF_UNSTUCK and tgt.holding and not full then
            tgt.hungrySince = tgt.hungrySince or now
            if now - math.max(tgt.lastEat or 0, tgt.hungrySince) > (PX.UNSTUCK_EAT_SECS or 25) then
                dropTarget(EXCLUDE_TIME)
                return
            end
        elseif full then
            tgt.hungrySince = nil
        end

        if tgt.holding then
            if PX.LF_CIRCLE then
                circleWalk(tgt.pos, rootPos)   -- circle the food instead of standing on it
            else
                press("Forward", false)
                press("Run", false)
            end
            PX.lfProgPos = nil
            PX.lfStatus = "eating #" .. tgt.id .. " (" .. math.floor(hd) .. " studs, misses " .. tgt.misses .. ")"
            return
        end

        if next(PX.lfBarriers) and PX.lfHeading
            and barrierNear(rootPos + PX.lfHeading * BARRIER_MARGIN, BARRIER_MARGIN * 0.5) then
            releaseAll()
            dropTarget(EXCLUDE_TIME)
            return
        end
        if tgt.deadline and now > tgt.deadline then dropTarget(EXCLUDE_TIME) return end

        local running = false   -- walks to food (running costs heavy dinos ~25x the Food and Water); runs only to flee
        press("Trot", false)   -- walk, never trot
        press("Forward", true)
        press("Run", running)

        -- Unstuck watchdog: keys held and still not getting anywhere.
        local blocked = CS and CS.Movement and CS.Movement.MoveActionsBlocked
        if PX.LF_UNSTUCK and not blocked then
            if not PX.lfProgPos
                or Vector3.new(rootPos.X - PX.lfProgPos.X, 0, rootPos.Z - PX.lfProgPos.Z).Magnitude > STUCK_MOVE then
                PX.lfProgPos, PX.lfProgT = rootPos, now
            elseif now - PX.lfProgT > STUCK_TIME then
                tgt.flyOuts = tgt.flyOuts + 1
                startFly(root, rootPos, stand)
                if tgt.flyOuts >= 2 then dropTarget(EXCLUDE_TIME) end
                return
            end
        end
        PX.lfStatus = (running and "running" or (swimming and "swimming" or "walking")) .. " to #" .. tgt.id
            .. " (" .. math.floor(hd) .. " studs)"
    end

    -- Re-assert the fly-out CFrame after physics (walking itself never writes CFrame).
    function PX.lfPin()
        local f = PX.lfFly
        if PX.UNLOADED or not PX.LEGIT_FARM or not f or not f.cf or PX.mvHold() then return end
        local root = PX.getLocalPhysicsRoot()
        if root and not root.Anchored then writeRoot(root, f.cf) end
    end

    -- Turn the camera toward the heading, orbiting its focus so pitch and zoom stay put. Runs after
    -- the game's camera steps, so Movement's next Heartbeat reads this yaw.
    -- Free look: every step Movement hands its walk direction (built from the camera and the keys) to
    -- the movement state's AdjustDirection, and Walking's only flattens it. While the farm is walking,
    -- Walking answers with the farm's heading instead, so the dino turns and walks toward its food
    -- with the game's own animation and speed while the camera stays entirely the player's. Anything
    -- else (farm off, eating, flying, resting) gets the game's own answer.
    local function steerPatch()
        if PX.lfWalkState then return true end
        pcall(function()
            local W = PX.req(LocalPlayer.PlayerScripts.Client.Classes.Character.Movement.States.Walking)
            local orig = rawget(W, "AdjustDirection")
            if type(orig) ~= "function" then return end
            W.AdjustDirection = function(self, dir, ...)
                local h = PX.lfHeading
                if h and PX.LEGIT_FARM and PX.lfWasOn and not PX.lfFly and not PX.lfResting
                    and PX.lfHeld and PX.lfHeld.Forward then
                    return h
                end
                return orig(self, dir, ...)
            end
            PX.lfWalkState = { mod = W, orig = orig }
        end)
        return PX.lfWalkState ~= nil
    end
    PX.lfSteerPatch = steerPatch

    -- Camera steering is only the fallback, for when the Walking state could not be found. It used to
    -- steer while swimming too, which turned the player's camera ("camera bug") - swimming now ends in a
    -- fly-out to dry ground instead (lfAdvance).
    function PX.lfSteer(dt)
        if PX.UNLOADED or not PX.LEGIT_FARM or not PX.lfWasOn or PX.lfFly or PX.lfResting then return end
        if PX.lfWalkState then return end
        local h = PX.lfHeading
        local cam = workspace.CurrentCamera
        if not h or not cam or cam.CameraType ~= Enum.CameraType.Custom then return end
        local cf = cam.CFrame
        local look = cf.LookVector
        if Vector3.new(look.X, 0, look.Z).Magnitude < 1e-3 then return end
        local cur = math.atan2(-look.X, -look.Z)
        local want = math.atan2(-h.X, -h.Z)
        local step = math.clamp(math.atan2(math.sin(want - cur), math.cos(want - cur)),
            -TURN_RATE * (dt or 0.016), TURN_RATE * (dt or 0.016))
        if math.abs(step) < 1e-4 then return end
        local rot = CFrame.Angles(0, step, 0)
        local focus = cam.Focus.Position
        cam.CFrame = CFrame.new(focus + rot * (cf.Position - focus)) * (rot * cf.Rotation)
    end

    -- Tabbed out: the game itself refuses the farm's keys. Its Controls class sets WindowUnfocused when the
    -- window loses focus, and IsInputBlocked then drops every action - so the dino stood still, and no key,
    -- virtual key or movement action reached it (all three measured: 0 studs in 8 s). Clearing that one flag
    -- while the farm runs hands the keys back to the GAME's own movement: it walks and runs the dino itself,
    -- with its animations, its speed and whatever it counts for growth (measured: 99 % of frames moving,
    -- 3.5 walking, 34.3 running). Nothing writes the dino's position, so there is nothing to snap back.
    -- The flag is put back the moment the farm stops, the window comes back, or the hub unloads.
    local unblocked = false
    local function focusedNow()
        if PX.IS_XENO then return windowFocused end   -- Xeno's isrbxactive answers true from the start
        local ok, v = pcall(function() return isrbxactive() end)
        if ok and type(v) == "boolean" then return v end
        return windowFocused
    end
    local function restoreInput()
        if not unblocked then return end
        unblocked = false
        local CS = PX.getCS()
        if CS and CS.Controls then pcall(function() CS.Controls.WindowUnfocused = not focusedNow() end) end
        if getgenv then getgenv().EazyCheats_TabOut = nil end
    end
    PX.lfRestoreInput = restoreInput
    -- Called every frame by the farm: keeps the game taking the farm's keys while we are tabbed out.
    function PX.lfKeepInput()
        if not (PX.LEGIT_FARM and PX.LF_TABOUT) or PX.UNLOADED then restoreInput() return end
        if focusedNow() then restoreInput() return end
        local CS = PX.getCS()
        local C = CS and CS.Controls
        if not C then return end
        unblocked = true
        if C.WindowUnfocused ~= false then pcall(function() C.WindowUnfocused = false end) end
        if C.InputWasBlocked == true then pcall(function() C.InputWasBlocked = false end) end
        if getgenv then
            getgenv().EazyCheats_TabOut = (PX.lfHeld.Forward and ((PX.lfHeld.Run and "running" or "walking") .. " (the game's own movement)"))
                or (PX.lfFly and "flying") or (PX.lfResting and "resting") or "not walking anywhere"
        end
    end
    table.insert(allConnections, RunService.RenderStepped:Connect(PX.lfAdvance))
    table.insert(allConnections, RunService.Heartbeat:Connect(PX.lfPin))
    pcall(function()
        RunService:BindToRenderStep("PX_LegitSteer", Enum.RenderPriority.Camera.Value + 2, PX.lfSteer)
    end)
end
PX.lfSetup()

-- ═══════════════════════════════════════
-- PX.AUTO_SWITCH  (grow a list of dinos one after another)
-- ═══════════════════════════════════════
-- When the dino being played is done growing: wait until it is safe, log out through the game's own
-- Return to Main Menu steps (full server timer, no shortcut), spawn the next dino in the slot list,
-- and let whichever farm is on carry on with it. Every dino keeps its own save
-- (CharacterData_<Species>_<Gender>_1), so switching loses nothing. When no slot is left: return to
-- the menu, unload the hub and leave the server.
-- A dino is done as soon as it reaches its last real stage (Growth.NextStage == "Monster": Elder, or
-- Adult for dinos without one). Progress to Monster slows as (1 - Delta)^2.5 and never completes,
-- so waiting there only burns time. Reaching Monster itself counts too.
-- Details: Info Dumps/Game State/switch-dino-flow.md
function PX.asSetup()
    local RS = game:GetService("ReplicatedStorage")
    PX.asDone = {}                    -- species -> true once judged done this session
    PX.asSkip = {}                    -- species -> true after a failed purchase this session
    PX.asStatus = "off"

    local function knit()
        local k
        pcall(function() k = PX.req(RS.Packages.Knit) end)
        return k
    end
    local function dataCtl()
        local d
        pcall(function() d = knit().GetController("DataController") end)
        return d
    end
    local function dinoData(sp)
        local d
        pcall(function() d = PX.req(RS.DinosaurData[sp]) end)
        return d
    end
    local function notify(msg, t)
        pcall(function() if PX.Hub then PX.Hub:Notify("Auto Switch: " .. msg, t or 6) end end)
    end

    -- The map's roster in the game's order (what the selection screen offers), owned or not.
    local function roster()
        local K = knit()
        return (K and K.Roster) or {}
    end
    local function isOwned(name)
        local owned
        pcall(function() owned = dataCtl().Dinosaurs[name] end)
        return owned and true or false
    end
    -- What buying `name` with Amber costs right now: the game's own number (PurchasingController,
    -- local, fossil discount included). nil when it cannot be bought with Amber at all (Robux only).
    local function amberCost(name)
        local c
        pcall(function()
            local amber = tonumber(dataCtl().DinosaursData[name].Pricing.Amber)
            if amber and amber > 0 then
                c = knit().GetController("PurchasingController"):GetDinosaurAmberCost(name)
            end
        end)
        return tonumber(c)
    end
    local function amberHave()
        local a
        pcall(function() a = dataCtl().Currencies.Amber end)
        return tonumber(a) or 0
    end
    local function short(n)
        if n >= 1e6 then return (math.floor(n / 1e4 + 0.5) / 100) .. "M" end
        if n >= 1e3 then return math.floor(n / 1e3 + 0.5) .. "K" end
        return tostring(math.floor(n))
    end

    function PX.asAvailable()   -- owned dinos on this map
        local list = {}
        for _, n in ipairs(roster()) do
            if isOwned(n) then list[#list + 1] = n end
        end
        return list
    end

    -- "Allosaurus - unlocked" / "Diplodocus - locked, 600K Amber" / "Brachiosaurus - locked, Robux only"
    function PX.asLabel(name)
        if not name or name == "(none)" then return "(none)" end
        if isOwned(name) then return name .. " - unlocked" end
        local c = amberCost(name)
        return name .. (c and (" - locked, " .. short(c) .. " Amber") or " - locked, Robux only")
    end
    function PX.asNameOf(label)
        if type(label) ~= "string" then return nil end
        return label:match("^(.-) %- ") or label
    end

    function PX.asItems()
        local items = { "(none)" }
        for _, n in ipairs(roster()) do items[#items + 1] = PX.asLabel(n) end
        return items
    end

    -- The slot dropdowns live on PX: `ui` is declared further down, next to the menu.
    PX.asDropdowns = {}
    function PX.asRefreshLists()
        local items = PX.asItems()
        for i = 1, 6 do
            local dd = PX.asDropdowns[i]
            if dd and dd.Refresh then pcall(function() dd:Refresh(items, true) end) end
            -- A refresh redraws the list at "(none)": show the slot's dino again, looked up by name
            -- (its label changes from locked to unlocked once bought).
            local cur = PX.AS_SLOTS and PX.AS_SLOTS[i]
            if dd and dd.Set and cur and cur ~= "(none)" then pcall(function() dd:Set(PX.asLabel(cur), true) end) end
        end
    end

    local function topStage(sp)
        local d, top = dinoData(sp), nil
        pcall(function() top = PX.req(RS.Common.GetGrowthIndex):GetHighestGrowthStage(d.GrowthStages) end)
        return top
    end

    -- Auto Switch judges a dino by its real save, CharacterData_<Species>_<Male|Female>_1: the only gender
    -- names the game's own selection screen ever sends (its default is "Male"; see PX.saveGender).
    local function savedStage(sp)
        local s
        pcall(function()
            s = dataCtl().Replica.Data["CharacterData_" .. sp .. "_" .. (PX.saveGender(PX.AS_GENDER) or "Male") .. "_1"].Growth.Stage
        end)
        return s
    end

    -- Done, judged from a save (dinos not being played): already on their last stage.
    local function doneByData(sp, stage)
        if not stage then return false end
        if stage == "Monster" then return true, "reached Monster" end
        if stage == topStage(sp) then return true, "reached " .. stage .. ", its final stage" end
        return false
    end

    -- Finished dinos, per Roblox account and kept across restarts (every window shares the executor's
    -- workspace). For the "Finished" line only: a finished save is already skipped through doneByData.
    pcall(function() PX.AS_DONE_FILE = "EazyCheats_Configs/asdone-" .. LocalPlayer.UserId .. ".json" end)
    function PX.asDoneRead()
        local ok, t = pcall(function()
            return game:GetService("HttpService"):JSONDecode(readfile(PX.AS_DONE_FILE))
        end)
        return (ok and type(t) == "table" and type(t.list) == "table") and t or { list = {} }
    end
    function PX.asDoneAdd(sp, gender)
        if type(sp) ~= "string" or not PX.AS_DONE_FILE then return end
        gender = (gender == "F" or gender == "Female") and "Female" or "Male"
        local t = PX.asDoneRead()
        for _, e in ipairs(t.list) do
            if e.sp == sp and e.g == gender then return end
        end
        local eco
        pcall(function() eco = knit().Ecosystem end)
        table.insert(t.list, { sp = sp, g = gender, map = eco, t = os.time() })
        pcall(function()
            if not isfolder("EazyCheats_Configs") then makefolder("EazyCheats_Configs") end
            writefile(PX.AS_DONE_FILE, game:GetService("HttpService"):JSONEncode(t))
        end)
    end
    -- The "Finished" line at the bottom of Auto Switch. Dinos this map's saves already show at their
    -- final stage (the Switch Gender save) count too, so ones grown before Auto Switch are listed.
    function PX.asRefreshDone()
        for _, sp in ipairs(roster()) do
            if isOwned(sp) and doneByData(sp, savedStage(sp)) then PX.asDoneAdd(sp, PX.AS_GENDER) end
        end
        local names = {}
        for _, e in ipairs(PX.asDoneRead().list) do
            names[#names + 1] = tostring(e.sp) .. (e.g == "Female" and " (F)" or " (M)")
        end
        local text = #names > 0 and ("Finished (" .. #names .. "): " .. table.concat(names, ", ")) or "Finished: none yet"
        local row = PX.asDoneLabel
        if row and row.SetText then pcall(function() row:SetText(text) end) end
        return text
    end

    local function currentSpecies()
        local ch = LocalPlayer.Character
        return (ch and ch:GetAttribute("Type")) or LocalPlayer:GetAttribute("CurrentPlayable")
    end

    local function currentDone()
        local CS = PX.getCS()
        local g
        pcall(function() g = CS.Replica.Data.Growth end)
        local sp = currentSpecies()
        if type(g) ~= "table" or not sp then return false end
        if g.Stage == "Monster" then return true, "reached Monster" end
        -- On the last real stage the game's next stage is Monster ("Progress to Monster").
        if g.NextStage == "Monster" then return true, "reached " .. tostring(g.Stage) .. ", its final stage" end
        return false
    end

    -- First slot that still has growing to do: an owned dino, or (Auto Buy on) a locked one you can
    -- afford with Amber. Returns the species and, when it must be bought first, its Amber cost.
    -- Full-grown weight (last stage, chosen gender): what "smallest to biggest" sorts by.
    local sizeCache = {}
    local function dinoSize(sp)
        if sizeCache[sp] then return sizeCache[sp] end
        local w
        pcall(function()
            local gs = dinoData(sp).GrowthStages[topStage(sp)]
            gs = gs[PX.AS_GENDER or "Male"] or gs.Male or gs
            w = tonumber(gs.CoreStats.Weight)
        end)
        sizeCache[sp] = w or math.huge
        return sizeCache[sp]
    end

    -- The order dinos are tried in: the six slots, or (Smallest To Biggest) every dino on this map,
    -- unlocked ones first, each group from smallest to biggest.
    local function candidates()
        local list = {}
        if not PX.AS_AUTO_ORDER then
            local here = {}
            for _, n in ipairs(roster()) do here[n] = true end
            for i = 1, 6 do
                local s = PX.AS_SLOTS[i]
                if s and s ~= "(none)" and here[s] then list[#list + 1] = s end
            end
            if #list > 0 then return list end
            -- No slot picked on this map (none set, or map rotation brought it to a map the slots are not
            -- on): grow every unlocked dino on this map, smallest first (same as below).
        end
        for _, n in ipairs(roster()) do list[#list + 1] = n end
        table.sort(list, function(a, b)
            local oa, ob = isOwned(a), isOwned(b)
            if oa ~= ob then return oa end
            local sa, sb = dinoSize(a), dinoSize(b)
            if sa ~= sb then return sa < sb end
            return a < b
        end)
        return list
    end

    local function nextTarget(current)
        local inRoster = {}
        for _, n in ipairs(roster()) do inRoster[n] = true end
        local amber = amberHave()
        for _, sp in ipairs(candidates()) do
            if sp and sp ~= "(none)" and sp ~= current and inRoster[sp] and not PX.asDone[sp] and not PX.asSkip[sp] then
                if isOwned(sp) then
                    if not doneByData(sp, savedStage(sp)) then return sp end
                elseif PX.AS_AUTOBUY then
                    local c = amberCost(sp)
                    if c and c <= amber then return sp, c end
                end
            end
        end
        return nil
    end

    -- Why nothing is left, for the last notice and the leave message: the dinos that are finished
    -- and how many are locked (or failed to buy).
    local function whyNone(current)
        local done, locked = {}, 0
        for _, sp in ipairs(candidates()) do
            if sp and sp ~= "(none)" then
                if PX.asSkip[sp] or not isOwned(sp) then
                    locked = locked + 1
                elseif sp == current or PX.asDone[sp] or doneByData(sp, savedStage(sp)) then
                    done[#done + 1] = sp
                end
            end
        end
        local s = (#done > 0) and ("at their final stage: " .. table.concat(done, ", ")) or "no unlocked dino to grow"
        if locked > 0 then s = s .. "; " .. locked .. (PX.AS_AUTOBUY and " locked (not enough Amber)" or " locked") end
        return s .. " - only dinos on this map can be used"
    end

    local function inWater(CS)
        return CS and CS.FoundWater and not (CS.Classifications and CS.Classifications.IsSemiAquatic)
    end

    -- The same checks the game's Menu button makes before it lets you leave.
    local function safeToLeave()
        local CS = PX.getCS()
        if LocalPlayer:GetAttribute("IsInCombat") then return false, "in combat" end
        if CS and CS.MovementState == "Flying" then return false, "flying" end
        if inWater(CS) then return false, "in water" end
        if CS and CS.UsingTimedAction then return false, "another timed action is running" end
        local apexMoving = false
        pcall(function() apexMoving = CS.Classifications.IsApex and CS.Movement:IsMoving() end)
        if apexMoving then return false, "still moving (apex must stand still)" end
        return true
    end

    -- In water the game will not let you log out (its own Menu button refuses too), and with the farms
    -- paused for the switch nothing would ever move the dino out - an Adult Tarbosaurus sat "waiting to
    -- log out: in water" for good. So: find the nearest dry ground and fly there (the hub's governed CFrame
    -- flight, like Legit Farm's fly-outs: up, across, land), then the logout goes ahead.
    local waterParams
    local function groundAt(x, z, fromY)   -- surface Y and whether it is water
        if not waterParams then
            waterParams = RaycastParams.new()
            waterParams.FilterType = Enum.RaycastFilterType.Include
            local list = { workspace.Terrain }
            local world = workspace:FindFirstChild("World")
            local mountains = world and world:FindFirstChild("Mountains")
            if mountains then list[2] = mountains end
            waterParams.FilterDescendantsInstances = list
            waterParams.IgnoreWater = false
        end
        local hit = workspace:Raycast(Vector3.new(x, fromY, z), Vector3.new(0, -3000, 0), waterParams)
        if not hit then return nil end
        return hit.Position.Y, hit.Material == Enum.Material.Water
    end
    local function leaveWater()
        local root, ch = PX.getLocalPhysicsRoot(), LocalPlayer.Character
        if not (root and ch) then return false end
        local p = root.Position
        local fromY = p.Y + 1500
        local best, bestY
        for r = 20, 400, 20 do   -- nearest ring with dry ground, 16 directions each
            for i = 0, 15 do
                local a = i * math.pi / 8
                local x, z = p.X + math.cos(a) * r, p.Z + math.sin(a) * r
                local y, wet = groundAt(x, z, fromY)
                if y and not wet then best, bestY = Vector3.new(x, y, z), y break end
            end
            if best then break end
        end
        if not best then return false end
        local stand = 6
        pcall(function()
            local al = PX.getCS().Alignment
            local h = (al.RideHeight or 0) + (al.BodyHeightIncrease or 0)
            if h > 0 then stand = h end
        end)
        local hereY = groundAt(p.X, p.Z, fromY) or p.Y
        local alt = math.max(hereY, bestY, p.Y) + 30
        local legs = { Vector3.new(p.X, alt, p.Z), Vector3.new(best.X, alt, best.Z), Vector3.new(best.X, bestY + stand, best.Z) }
        local pos, rot = p, root.CFrame - root.CFrame.Position
        for _, goal in ipairs(legs) do
            local t0 = os.clock()
            while (pos - goal).Magnitude > 1 and os.clock() - t0 < 30 and not PX.UNLOADED do
                local dt = task.wait()
                pos = PX.govNext(pos, goal, dt)   -- the shared mover's caps (Run held for us)
                pcall(function()
                    ch:SetAttribute("Teleporting", pos.Y)   -- the game's local height hold agrees with us
                    root.CFrame = CFrame.new(pos) * rot
                    root.AssemblyLinearVelocity = Vector3.zero
                    root.AssemblyAngularVelocity = Vector3.zero
                end)
            end
        end
        PX.flyLandUntil = os.clock() + 10
        pcall(function() ch:SetAttribute("Teleporting", nil) end)
        return true
    end
    PX.asLeaveWater = leaveWater

    -- GameMenuGui "Menu": BeginReturnToMenu, wait the server's full duration, Despawn, StartMainMenu.
    -- cont(): whether the caller still wants this (Auto Switch / Farm Timer still on).
    local function returnToMenu(cont)
        local K = knit()
        local CharSvc = K.GetService("CharacterService")
        local IC = K.GetController("InterfaceController")
        local CS = PX.getCS()
        -- A throw in BeginReturnToMenu left UsingTimedAction set for good, and every later logout waited on
        -- it forever. Now the flags are cleared - and the call is not sent again for a minute, whoever
        -- asks (Auto Switch and Farm Timer both retry in loops).
        if os.clock() < (PX.rtmFailUntil or 0) then return false end
        CS.UsingTimedAction = true
        LocalPlayer:SetAttribute("ReturningToMenu", true)
        if not pcall(function() CharSvc:BeginReturnToMenu() end) then
            PX.rtmFailUntil = os.clock() + 60
            pcall(function() LocalPlayer:SetAttribute("ReturningToMenu", false) end)
            CS.UsingTimedAction = false
            return false
        end
        local dur = 30   -- begun: finish the logout either way (30 s when the duration cannot be read)
        pcall(function() dur = tonumber(CharSvc:GetReturnToMenuDuration()) or 30 end)
        local deadline = os.clock() + dur + 1
        local ok, stranded = true, false
        while os.clock() < deadline do
            PX.asStatus = "returning to menu (" .. math.ceil(deadline - os.clock()) .. "s)"
            local apexMoving = false
            pcall(function() apexMoving = CS.Classifications.IsApex and CS.Movement:IsMoving() end)
            if PX.UNLOADED then   -- the hub is going away mid-logout: finished below, never stranded
                ok, stranded = false, true
                break
            end
            if not cont() or LocalPlayer:GetAttribute("IsInCombat")
                or (CS.Actions and CS.Actions.Run) or inWater(CS) or apexMoving then
                ok = false
                break
            end
            task.wait(0.2)
        end
        if ok then
            CharSvc:Despawn()
            IC:StartMainMenu()
        end
        if stranded then
            -- The server keeps its return-to-menu open until the client finishes it, and meanwhile ignores
            -- every spawn: a reload during an Auto Switch logout left an account stuck on the menu. Nothing
            -- here moves the dino, so finish it when the timer ends, as the game's own countdown does.
            task.delay(math.max(0, deadline - os.clock()), function()
                pcall(function() CharSvc:Despawn() end)
                pcall(function() IC:StartMainMenu() end)
                pcall(function() LocalPlayer:SetAttribute("ReturningToMenu", false) end)
                pcall(function() CS.UsingTimedAction = false end)
            end)
            return false
        end
        LocalPlayer:SetAttribute("ReturningToMenu", false)
        CS.UsingTimedAction = false
        return ok
    end

    PX.asSafeToLeave, PX.asReturnToMenu = safeToLeave, returnToMenu

    local function spawnDino(sp, gender)
        -- Only the game's own names, as its selection screen sends them: "Male" or "Female", default "Male".
        -- A short "M"/"F" would open (or start) a separate stray save (see PX.saveGender).
        gender = PX.saveGender(gender) or PX.saveGender(PX.AS_GENDER) or "Male"
        local K = knit()
        local CharSvc = K.GetService("CharacterService")
        -- A fresh join sits on the game's welcome screen until it is dismissed (then the game starts the
        -- main menu); a spawn sent from there went nowhere. Dismiss it the way the game's own finish does.
        pcall(function()
            local IC = K.GetController("InterfaceController")
            if IC.WelcomeGui then
                IC.WelcomeGui:Destroy()
                IC.WelcomeGui = nil
                IC:StartMainMenu()
                task.wait(2)
            end
        end)
        local skin = "Default"
        pcall(function() skin = dataCtl().Replica.Data.SkinInventory[sp].LastSelected or "Default" end)
        -- Every spawn asks for a slot first, the way the game's own selection screen does (it calls
        -- ApexController:RequestSlot for any dino that is not a unique playable). The old test ("is it in
        -- DinosaursData.Apex") missed this map's apexes - Tarbosaurus, Acrocanthosaurus: with no slot
        -- reserved the server silently dropped every InitiateSpawning, and the account sat on the menu.
        local Apex = K.GetController("ApexController")
        local got = false
        PX.asSpawnInfo = nil
        pcall(function()
            if Apex:GetDeathGraceStatus(sp).HoldingSlot == true then
                -- A slot still held from a death: the game's own Respawn ends the death grace first, then
                -- spawns on the slot if it is still held (else it asks for one).
                pcall(function() Apex:EndDeathGrace(sp) end)
                got = Apex:GetDeathGraceStatus(sp).HoldingSlot == true
                PX.asSpawnInfo = "death grace ended, slot still held: " .. tostring(got)
            end
        end)
        local deadline, refusals = os.clock() + 600, 0
        while not got and os.clock() < deadline and not PX.UNLOADED do
            local ok, success, why = pcall(function() return Apex:RequestSlot(sp) end)
            PX.asSpawnInfo = "RequestSlot(" .. sp .. ") -> " .. tostring(ok and success) .. " " .. tostring(ok and why or success)
            if ok and success then got = true break end
            if not ok then break end                 -- no such call: spawn the old way
            if why == "Full" then
                PX.asStatus = "waiting for an apex slot for " .. sp
            else
                refusals = refusals + 1              -- not "Full": not a queue - after 3, spawn anyway
                PX.asStatus = "slot refused for " .. sp .. " (" .. tostring(why) .. ")"
                if refusals >= 3 then break end
            end
            task.wait(3)
        end
        if not got and os.clock() >= deadline then return false end
        if got then task.wait(2) end   -- the game's own screen spawns a few seconds after the slot (its loading screen)
        PX.asStatus = "spawning " .. sp
        local function spawned()   -- in the world: a dead body stays LocalPlayer.Character with Parent nil
            local ch = LocalPlayer.Character
            return ch ~= nil and ch.Parent ~= nil and ch:GetAttribute("Type") == sp
        end
        -- Sent again if no body came in 20 s (an apex spawn was seen to be dropped); every answer is kept
        -- in PX.asSpawnInfo so a refusal can be read.
        local deadline, sends, nextSend = os.clock() + 60, 0, 0
        while os.clock() < deadline and not spawned() do
            if sends < 3 and os.clock() >= nextSend then
                sends = sends + 1
                nextSend = os.clock() + 20
                local ok, r1, r2 = pcall(function()
                    return CharSvc:InitiateSpawning({ Species = sp, Gender = gender or PX.AS_GENDER or "Male", Skin = skin, Variant = "Default" })
                end)
                PX.asSpawnInfo = (PX.asSpawnInfo or "") .. " | InitiateSpawning#" .. sends .. " -> " .. tostring(ok) .. " " .. tostring(r1) .. " " .. tostring(r2)
            end
            task.wait(0.5)
        end
        pcall(PX.autoSpawnCleanupGUI)
        if spawned() then PX.closeMainMenu() end
        return spawned() and true or false
    end
    PX.asSpawnDino = spawnDino   -- Rejoin spawns your dino the same way

    -- The game's own Play button closes the menu once the dino spawns (MainMenuGui:Destroy, BoostsGui:Destroy,
    -- both client-side only). A spawn sent straight to the server skipped that, so the main menu stayed drawn
    -- over a living dino (Jami, after a relaunch). Closes the controller's menu and every leftover copy.
    function PX.closeMainMenu()
        local IC
        pcall(function() IC = knit().GetController("InterfaceController") end)
        if IC then
            pcall(function()
                if IC.currentMainMenuWindow and IC.currentMainMenuWindow.Class then IC.currentMainMenuWindow.Class:Destroy() end
                IC.currentMainMenuWindow = nil
            end)
            pcall(function() if IC.MainMenuGui then IC.MainMenuGui:Destroy() end IC.MainMenuGui = nil end)
            pcall(function() if IC.BoostsGui then IC.BoostsGui:Destroy() end IC.BoostsGui = nil end)
        end
        pcall(function()
            for _, g in ipairs(LocalPlayer.PlayerGui:GetChildren()) do
                if g.Name == "MainMenuGui" or g.Name == "BoostsGui" then g:Destroy() end
            end
        end)
    end

    -- Rejoin with Auto Switch on: which dino to spawn, and its Amber cost when it has to be bought
    -- first (nil when owned). Smallest To Biggest: the order is the plan - the first unfinished dino in
    -- it (unlocked ones first; with Allow Unlocking, then the smallest affordable locked one - free ones
    -- cost 0). Otherwise the last one played unless finished, then the next owned unfinished one.
    function PX.asResumeTarget(sp)
        if PX.AS_AUTO_ORDER then
            local first, firstCost = nextTarget(nil)
            if first then return first, firstCost end
        end
        if sp and isOwned(sp) and not doneByData(sp, savedStage(sp)) then return sp end
        local nxt, cost = nextTarget(sp)
        if nxt and not cost then return nxt end
        return sp
    end

    -- Map rotation: the Survival maps that still have a dino to grow, in PX.MAP_ORDER, and the ones that
    -- do not. Each map's roster comes from the game's own GamemodeUtils.GetRoster(map) - on the current
    -- map that is exactly Knit.Roster - and ownership and growth saves are per account, so every map can
    -- be judged from any server. A map has work when it has an unlocked dino not at its final stage, or
    -- (Allow Unlocking on) a locked one there is Amber for: the same rules nextTarget uses here.
    function PX.asMapsWithWork(except)
        local work, idle = {}, {}
        local getRoster, open = nil, {}
        pcall(function() getRoster = PX.req(RS.Modules.GamemodeUtils.GetRoster) end)
        pcall(function()
            local version = "Recode"
            pcall(function() version = knit().GetController("LobbyController").ChosenVersion or version end)
            for name, m in pairs(PX.req(RS.Shared.LobbyData).Gamemodes[version].Survival.Ecosystems) do
                if not m.Maintenance then open[name] = true end
            end
        end)
        if not getRoster then return work, idle end
        local order = {}
        for _, m in ipairs(PX.MAP_ORDER) do if open[m] then order[#order + 1] = m; open[m] = nil end end
        local rest = {}
        for m in pairs(open) do rest[#rest + 1] = m end
        table.sort(rest)
        for _, m in ipairs(rest) do order[#order + 1] = m end
        local amber = amberHave()
        for _, map in ipairs(order) do
            if map ~= except then
                local roster, has = nil, false
                pcall(function() roster = getRoster(map) end)
                for _, sp in ipairs(type(roster) == "table" and roster or {}) do
                    if not PX.asDone[sp] and not PX.asSkip[sp] then
                        if isOwned(sp) then
                            if not doneByData(sp, savedStage(sp)) then has = true end
                        elseif PX.AS_AUTOBUY then
                            local c = amberCost(sp)
                            if c and c <= amber then has = true end
                        end
                    end
                    if has then break end
                end
                if has then work[#work + 1] = map else idle[#idle + 1] = map end
            end
        end
        return work, idle
    end

    -- Buy a locked dino with Amber through the selection screen's own call (free ones cost 0). A failed
    -- buy is skipped for the rest of the session, as the switch does.
    function PX.asBuy(name)
        local okBuy, reason = false, nil
        pcall(function() okBuy, reason = knit().GetService("PurchasingService"):PurchaseDinosaurWithAmber(name) end)
        if okBuy or isOwned(name) then
            pcall(PX.asRefreshLists)
            return true
        end
        PX.asSkip[name] = true
        return false, reason
    end

    local function runSwitch(sp, why)
        PX.asDone[sp] = true
        pcall(function()   -- onto the "Finished" line, for good (a retried logout does not undo it)
            local ch = LocalPlayer.Character
            PX.asDoneAdd(sp, (ch and ch:GetAttribute("Gender")) or PX.AS_GENDER)
            PX.asRefreshDone()
        end)
        local nxt, cost = nextTarget(sp)
        notify(sp .. " is done (" .. why .. "). " .. (nxt and ("Next: " .. nxt .. (cost and (" (buying it for " .. short(cost) .. " Amber)") or "") .. ".")
            or ("No dinos left (" .. whyNone(sp) .. ") - leaving after logging out.")), 10)
        PX.AS_BUSY = true
        task.wait(1.5)   -- the farms release keys, restore collision and land
        pcall(function() LocalPlayer.Character:SetAttribute("Teleporting", nil) end)
        PX.flyLandUntil = os.clock() + 15
        local waterSince, giveUp = nil, os.clock() + 300
        while PX.AUTO_SWITCH and not PX.UNLOADED do
            local ok, reason = safeToLeave()
            if ok then break end
            -- In combat (standing still paused for the logout only gets the dino hit), or still not free
            -- to leave after 5 minutes: back to farming, and the switch is tried again in a minute.
            if reason == "in combat" or os.clock() > giveUp then
                PX.asDone[sp] = nil
                PX.asRetryAt = os.clock() + 60
                notify("cannot log out (" .. reason .. ") - farming on, switching again in a minute", 6)
                return
            end
            PX.asStatus = "waiting to log out: " .. reason
            if reason == "in water" then   -- nothing else would ever move it out (see leaveWater)
                waterSince = waterSince or os.clock()
                if os.clock() - waterSince > 5 then
                    PX.asStatus = "leaving the water to log out"
                    pcall(leaveWater)
                    waterSince = nil
                    task.wait(2)   -- landed; an apex has to stand still before it may leave
                end
            else
                waterSince = nil
            end
            task.wait(1)
        end
        if not (PX.AUTO_SWITCH and not PX.UNLOADED) then return end
        if not returnToMenu(function() return PX.AUTO_SWITCH end) then
            PX.asDone[sp] = nil   -- interrupted: judge again and retry
            PX.asRetryAt = os.clock() + 60   -- in a minute, farming meanwhile (not every 2 s)
            notify("logout was interrupted - will try again in a minute", 6)
            return
        end
        task.wait(3)
        -- A locked next dino is bought now, on the menu, with the selection screen's own Amber call
        -- (the server checks the price again). A failed buy skips it and moves on down the list.
        while nxt and cost do
            local okBuy, reason = false, nil
            pcall(function() okBuy, reason = knit().GetService("PurchasingService"):PurchaseDinosaurWithAmber(nxt) end)
            if okBuy or isOwned(nxt) then
                notify("bought " .. nxt .. " for " .. short(cost) .. " Amber", 8)
                pcall(PX.asRefreshLists)
                break
            end
            notify("could not buy " .. nxt .. " (" .. tostring(reason or "failed") .. ") - trying the next dino", 8)
            PX.asSkip[nxt] = true
            task.wait(3)   -- the game's own purchase buttons wait 3s between attempts
            nxt, cost = nextTarget(sp)
        end
        if not nxt then
            local why = whyNone(sp)
            -- Every dino on THIS map is done. With Rejoin on, go on to the next map that still has one to
            -- grow - never back to a finished one (PX.rjNextMap marks them) - and carry on there. Only when
            -- no map has any left is Auto Switch finished for good.
            local here
            pcall(function() here = knit().Ecosystem end)
            local work, idle = {}, {}
            if PX.REJOIN and PX.REJOIN_OK and PX.asMapsWithWork then work, idle = PX.asMapsWithWork(here) end
            if work[1] and PX.rjNextMap then
                notify("every dino on " .. tostring(here) .. " is done - moving to " .. work[1], 10)
                task.wait(3)
                if PX.rjNextMap(here, work[1], idle, "every dino on " .. tostring(here) .. " is done") then return end
            end
            if PX.REJOIN and PX.REJOIN_OK then why = why .. "; no other map has a dino left to grow either" end
            notify("every dino in the list is done - unloading and leaving", 6)
            task.wait(3)
            pcall(function() PX.unloadScript() end)
            pcall(PX.leaveNote, "Auto Switch finished", true)
            pcall(function() LocalPlayer:Kick("[EazyCheats] Auto Switch finished - " .. why .. ".") end)
            return
        end
        if not spawnDino(nxt) then
            -- Rejoin on: another server (Auto Switch stays on and carries on there with this dino).
            if PX.rjSpawnRejoin and PX.rjSpawnRejoin("could not spawn " .. nxt) then return end
            -- Hop used up (once / 20 min): Rejoin's no-dino retry spawns the next dino (PX.asResumeTarget) in
            -- 2 minutes. Turning Auto Switch off here would also save it off for good.
            if PX.REJOIN and PX.REJOIN_OK then
                notify("could not spawn " .. nxt .. " - Rejoin tries again shortly", 8)
                return
            end
            notify("could not spawn " .. nxt .. " - Auto Switch turned off", 8)
            if PX.autoSwitchToggle then pcall(function() PX.autoSwitchToggle:Set(false) end) end
        else
            notify("now growing " .. nxt, 6)
        end
    end

    -- Log out and straight back in as the same dino: a safe logout through the game's timer, then the
    -- same spawn as a switch. A spawn is the only thing that moves the server's streaming focus back onto
    -- the dino once a main menu opened over it took it (see the rejoin loop). Farms pause meanwhile.
    function PX.asRelog(why)
        if PX.AS_BUSY or PX.asRelogging then return false end
        local ch = LocalPlayer.Character
        local sp = ch and ch.Parent and ch:GetAttribute("Type")
        if not sp then return false end
        -- The body says "M"/"F"; the save it belongs to is "Male"/"Female" (PX.saveGender).
        local gender = PX.saveGender(ch:GetAttribute("Gender")) or PX.AS_GENDER
        PX.asRelogging, PX.AS_BUSY = true, true
        notify("logging out and back in as " .. sp .. " (" .. tostring(why) .. ")", 8)
        local ok, err = pcall(function()
            task.wait(1.5)   -- the farms release keys, restore collision and land
            pcall(function() LocalPlayer.Character:SetAttribute("Teleporting", nil) end)
            PX.flyLandUntil = os.clock() + 15
            local t0, waterSince = os.clock(), nil
            while not PX.UNLOADED and os.clock() - t0 < 300 do
                local okL, reason = safeToLeave()
                if okL then break end
                PX.asStatus = "relog: waiting to log out: " .. reason
                if reason == "in water" then
                    waterSince = waterSince or os.clock()
                    if os.clock() - waterSince > 5 then pcall(leaveWater) waterSince = nil task.wait(2) end
                else
                    waterSince = nil
                end
                task.wait(1)
            end
            if PX.UNLOADED or not safeToLeave() then return end   -- tried again later by the caller
            if not returnToMenu(function() return not PX.UNLOADED end) then return end
            task.wait(3)
            PX.asStatus = "relog: spawning " .. sp
            if not spawnDino(sp, gender) and PX.rjSpawnRejoin then
                PX.rjSpawnRejoin("could not spawn " .. sp .. " after a relog")
            end
        end)
        PX.asRelogging, PX.AS_BUSY = false, false
        if not ok then notify("relog error: " .. tostring(err), 8) end
        return ok
    end

    -- ── Farm Timer: after PX.FT_MINUTES of farming, turn every farm off, log out, leave ──
    -- Counts only time a farm is actually on. Logs out through the same Return to Main Menu steps as
    -- a switch; if that cannot happen within 5 minutes (stuck in combat or water) it leaves anyway.
    PX.ftElapsed, PX.ftStatus = 0, "off"
    local function timerLeave()
        notify("time is up - turning the farms off and leaving", 8)
        for _, pair in ipairs({ { "AFK_FARM", "afkFarmToggle" }, { "LEGIT_FARM", "legitFarmToggle" },
            { "AUTO_SWITCH", "autoSwitchToggle" } }) do
            if PX[pair[1]] and PX[pair[2]] then pcall(function() PX[pair[2]]:Set(false) end) end
            PX[pair[1]] = false
        end
        task.wait(2)   -- the farms land, release keys and restore collision
        pcall(function() LocalPlayer.Character:SetAttribute("Teleporting", nil) end)
        PX.flyLandUntil = os.clock() + 15
        local cont = function() return PX.FARM_TIMER and not PX.UNLOADED end
        local giveUp = os.clock() + 300
        while cont() and LocalPlayer.Character and os.clock() < giveUp do
            local ok, reason = safeToLeave()
            if ok then
                if returnToMenu(cont) then break end
            else
                PX.ftStatus = "waiting to log out: " .. reason
                if reason == "in water" then   -- nothing else would move it out (see leaveWater)
                    PX.ftWaterT = PX.ftWaterT or os.clock()
                    if os.clock() - PX.ftWaterT > 5 then pcall(leaveWater) PX.ftWaterT = nil task.wait(2) end
                else
                    PX.ftWaterT = nil
                end
            end
            task.wait(1)
        end
        if not cont() then return end
        pcall(PX.leaveNote, "Farm Timer finished", true)
        pcall(function()
            LocalPlayer:Kick("[EazyCheats] Farm Timer finished after " .. math.floor(PX.FT_MINUTES or 0) .. " minutes of farming.")
        end)
    end

    task.spawn(function()
        local last = os.clock()
        while not PX.UNLOADED do
            task.wait(1)
            local now = os.clock()
            local dt = math.min(now - last, 5)
            last = now
            if PX.FARM_TIMER and (PX.AFK_FARM or PX.LEGIT_FARM) then
                PX.ftElapsed = PX.ftElapsed + dt
                local left = (PX.FT_MINUTES or 120) * 60 - PX.ftElapsed
                PX.ftStatus = "leaving in " .. math.max(0, math.ceil(left / 60)) .. " min"
                if left <= 300 and not PX.ftWarned then
                    PX.ftWarned = true
                    notify("Farm Timer: 5 minutes left, then the farms turn off and you leave", 8)
                end
                if left <= 0 and not PX.AS_BUSY then
                    local ok, err = pcall(timerLeave)
                    if not ok then notify("Farm Timer error: " .. tostring(err), 8) end
                    PX.ftElapsed, PX.ftWarned = 0, false
                end
            end
        end
    end)

    task.spawn(function()
        task.wait(5)
        pcall(PX.asRefreshLists)
        while not PX.UNLOADED do
            task.wait(2)
            -- A body with a Parent: after a logout or a death the old one stays LocalPlayer.Character, still "done".
            if PX.AUTO_SWITCH and not PX.AS_BUSY and LocalPlayer.Character and LocalPlayer.Character.Parent then
                local done, why = currentDone()
                -- Farm Dino pins one dino for good: Auto Switch stands down instead of logging out of it,
                -- so every rejoin and every finished stage keeps farming that same dino. Only while that IS
                -- the dino played: a Farm Dino this map cannot spawn leaves Auto Switch working as usual.
                local pinned = type(PX.FARM_DINO) == "string" and PX.FARM_DINO ~= "" and PX.FARM_DINO ~= "Last Played"
                    and currentSpecies() == PX.FARM_DINO
                if done and pinned then
                    PX.asStatus = "Farm Dino set - staying on " .. tostring(currentSpecies())
                elseif done and os.clock() < (PX.asRetryAt or 0) then
                    PX.asStatus = "could not log out - switching again in " .. math.ceil(PX.asRetryAt - os.clock()) .. "s"
                elseif done then
                    local ok, err = pcall(runSwitch, currentSpecies(), why)
                    if not ok then notify("error: " .. tostring(err), 8) end
                    PX.AS_BUSY = false
                else
                    PX.asStatus = "growing " .. tostring(currentSpecies())
                end
            end
        end
    end)
end
PX.asSetup()

-- ═══════════════════════════════════════
-- REJOIN, MAP SIDE
-- ═══════════════════════════════════════
-- While Rejoin is on the hub writes down every 5 s what is running (which farms, the map, this
-- server) to PX.REJOIN_FILE. After the start screen joined a server for you (PX.lobbyJoin marked the
-- file "pending"), the hub loaded there spawns the dino you last played on this map - the game's own
-- LastCharacter_<map> record, or with Auto Switch on the next unfinished dino if that one is done -
-- and turns those farms back on. Unloading records "nothing running": you stopped on purpose.
PX.RJ_FARMS = {   -- flag, toggle, name; Auto Switch first, Farm Timer after the farms it times
    { "AUTO_SWITCH", "autoSwitchToggle", "Auto Switch Dino" }, { "AFK_FARM", "afkFarmToggle", "AFK Farm" },
    { "LEGIT_FARM", "legitFarmToggle", "Legit Farm" }, { "FOSSIL_FARM", "fossilFarmToggle", "Fossil Farm" },
    { "FARM_TIMER", "farmTimerToggle", "Farm Timer" },
}

-- Farm Dino, only when this account can spawn it here: one of this map's unlocked dinos. resume() never
-- buys it, and a locked, Robux-only or other-map pick drew 3 refused spawn requests every few minutes,
-- forever. Gender: the last-played one when that dino IS the Farm Dino, else the Switch Gender save.
-- Returns nil when none is set; nil, nil, name when it cannot be spawned here.
function PX.farmDinoPick(lastSp, lastGender)
    local fd = PX.FARM_DINO
    if type(fd) ~= "string" or fd == "" or fd == "Last Played" then return nil end
    local ok, list = pcall(PX.asAvailable)
    if not (ok and type(list) == "table" and table.find(list, fd)) then return nil, nil, fd end
    return fd, (lastSp == fd and lastGender) or PX.AS_GENDER or lastGender
end

-- The farm switches in a config. A loaded config stops the farms it has off straight away, and turns on
-- the ones it has on once a dino is alive - applied at the deploy screen it must not start a farm with
-- nothing to farm. The rejoin loop below does the turning on. At start-up with Rejoin on and farms on its
-- recent record, Rejoin wins: its record says what was running last, a config only what was saved once.
function PX.cfgFarms(cfg)
    local want, any = {}, false
    for _, f in ipairs(PX.RJ_FARMS) do
        if cfg[f[1]] ~= nil then want[f[1]] = cfg[f[1]] == true; any = true end
    end
    if not any then return end   -- saved before farms were saved: leave them as they are
    if not PX.cfgApplied and PX.REJOIN and PX.REJOIN_OK and PX.rejoinRead then
        local st = PX.rejoinRead()
        local recent = tonumber(st.t) ~= nil and os.time() - tonumber(st.t) < 1800
        for _, on in pairs(type(st.farms) == "table" and st.farms or {}) do
            if on == true and recent then return end
        end
    end
    for _, f in ipairs(PX.RJ_FARMS) do
        if want[f[1]] == false and PX[f[1]] and PX[f[2]] then pcall(function() PX[f[2]]:Set(false) end) end
    end
    -- 2026-10-15 (user): "turn off farms auto turning on" - a loaded config (the autoload one too) never starts a
    -- farm any more; the autoload kept switching Legit Farm on after every load and spawn. Auto Switch Dino is
    -- left exactly as it was ("works fine, don't touch it"): a config with it on still turns it on once alive.
    PX.cfgFarmsOwed = want.AUTO_SWITCH and { AUTO_SWITCH = true } or nil
end
function PX.rejoinSetup()
    local RS = game:GetService("ReplicatedStorage")
    local function knit()
        local k
        pcall(function() k = PX.req(RS.Packages.Knit) end)
        return k
    end
    local function notify(msg, t)
        pcall(function() if PX.Hub then PX.Hub:Notify("Rejoin: " .. msg, t or 6) end end)
    end
    -- A dino in the world. After Return to Main Menu, LocalPlayer.Character still points at the
    -- despawned body (Parent nil) - that one must not count as spawned.
    local function alive()
        local c = LocalPlayer.Character
        return c ~= nil and c.Parent ~= nil
    end

    function PX.rejoinSave()
        -- An unloaded copy (a reload, or a hub whose menu failed) must not write its "farms off" over the
        -- record the running copy keeps. Unloading writes its own record (PX.unloadScript).
        if PX.UNLOADED then return end
        if not PX.REJOIN_OK or PX.rjResuming then return end
        local st = PX.rejoinRead()
        -- You picked a Rejoin Map yourself: map rotation's marks give way to your choice.
        if st.map ~= nil and st.map ~= PX.REJOIN_MAP then st.doneMaps, st.nextMap = nil, nil end
        st.on, st.map = PX.REJOIN and true or false, PX.REJOIN_MAP
        st.lowPopLeave, st.lowPopMin = PX.LOW_POP_LEAVE and true or false, PX.LOW_POP_MIN
        st.farmDino = (type(PX.FARM_DINO) == "string" and PX.FARM_DINO ~= "") and PX.FARM_DINO or nil
        pcall(function() st.lastMap = knit().Ecosystem end)
        if st.nextMap ~= nil and st.nextMap == st.lastMap then st.nextMap = nil end   -- arrived
        st.lastJob = game.JobId
        st.farms = {}
        for _, f in ipairs(PX.RJ_FARMS) do st.farms[f[1]] = PX[f[1]] and true or false end
        if PX.rjKeep then st.farms = PX.rjKeep.farms end   -- not spawned yet: still owed from the rejoin
        if PX.rjFinished then st.farms = {} end            -- leaving because it finished: stay stopped
        st.ftElapsed = PX.ftElapsed
        st.t = os.time()
        -- What it is doing, for EXE Farm / a watchdog that cannot reach the game: the status line and dino.
        pcall(function() st.status = getgenv().EazyCheats_Status end)
        pcall(function()
            local c = LocalPlayer.Character
            st.dino = (c and c.Parent and c:GetAttribute("Type")) or nil
        end)
        PX.rejoinWrite(st)
    end

    -- Leaving because an admin is here, with Rejoin on: back to the start screen instead of kicking
    -- yourself. A kick screen is a dead end (Real cannot run anything there, so it takes a fresh
    -- Roblox); a teleport keeps this window and account going, into another server.
    function PX.rejoinLeave(why)
        if PX.rjLeaving then return true end
        if not (PX.REJOIN_OK and PX.REJOIN) then return false end
        PX.rjLeaving = true
        PX.rejoinSave()   -- the farms that are running, and this server as the one to avoid
        notify("leaving - " .. why .. " - back to the start screen", 6)
        local ok = pcall(function() game:GetService("TeleportService"):Teleport(PX.LOBBY_PLACE, LocalPlayer) end)
        if not ok then PX.rjLeaving = false return false end
        task.delay(30, function()   -- still here: the teleport did not go through, leave the old way
            if PX.UNLOADED then return end
            pcall(PX.leaveNote, why, false)
            pcall(function() LocalPlayer:Kick("[EazyCheats] Leaving: " .. why) end)
        end)
        return true
    end

    -- Could not spawn (three tries by Rejoin, or Auto Switch's next dino): another server nearly always
    -- works - a logout the server never closed, a full apex list. Off to the start screen and back in
    -- with the farms on record, at most once every 20 minutes so a real problem cannot hop forever.
    function PX.rjSpawnRejoin(why)
        if not (PX.REJOIN_OK and PX.REJOIN) then return false end
        local st = PX.rejoinRead()
        if tonumber(st.spawnRejoinT) and os.time() - tonumber(st.spawnRejoinT) < 1200 then return false end
        st.spawnRejoinT = os.time()
        PX.rejoinWrite(st)
        PX.rjResuming = false   -- so the leave's save writes the farms still owed
        return PX.rejoinLeave(why) and true or false
    end

    -- Map rotation (Auto Switch finished every dino here): record this map and every other map with
    -- nothing left as done, point the start screen at the next map with work (PX.lobbyJoin), and leave.
    -- The farms on record come back on over there, and Auto Switch picks that map's first unfinished dino.
    -- The done list is a fresh snapshot at every rotation, so a map with new work (a dino bought, Amber
    -- saved up) counts again next time.
    function PX.rjNextMap(here, nextMap, idle, why)
        if not (PX.REJOIN_OK and PX.REJOIN) then return false end
        local st = PX.rejoinRead()
        local done = {}
        if type(here) == "string" then done[here] = os.time() end
        for _, m in ipairs(type(idle) == "table" and idle or {}) do done[m] = os.time() end
        st.doneMaps, st.nextMap = done, nextMap
        PX.rejoinWrite(st)
        PX.rjResuming = false   -- so the leave's save writes the farms, which go on over there
        return PX.rejoinLeave(why) and true or false
    end

    local function lastPlayed(eco)
        local rec
        pcall(function() rec = knit().GetController("DataController").Replica.Data["LastCharacter_" .. eco] end)
        if type(rec) == "table" and type(rec[1]) == "string" then return rec[1], rec[2] end
        return nil
    end

    -- The farms that were running, back on (and the timers where they left off).
    local function farmsOn(farms, st)
        local names = {}
        for _, f in ipairs(PX.RJ_FARMS) do
            if farms[f[1]] and PX[f[2]] and not PX[f[1]] and not PX.UNLOADED then
                pcall(function() PX[f[2]]:Set(true) end)
                names[#names + 1] = f[3]
            end
        end
        if farms.FARM_TIMER and tonumber(st.ftElapsed) then PX.ftElapsed = tonumber(st.ftElapsed) end
        notify(#names > 0 and ("back on: " .. table.concat(names, ", ")) or "spawned - nothing else was running", 8)
    end

    local function resume(st)
        local farms = type(st.farms) == "table" and st.farms or {}
        local g = (getgenv and getgenv()) or {}
        -- Another copy of the hub in this window (a reload) already asked to spawn: wait for that body.
        local asked = tonumber(g.EazyCheats_RjSpawnAt)
        if not alive() and asked and os.clock() - asked < 75 then
            local deadline = asked + 75
            while not alive() and os.clock() < deadline and not PX.UNLOADED do task.wait(0.5) end
        end
        if not alive() then
            local eco
            pcall(function() eco = knit().Ecosystem end)
            local sp, gender = lastPlayed(tostring(eco))
            -- Forced single dino (EXE Farm "auto-farm this one dino"): overrides last-played and Auto Switch
            -- when it can be spawned here (PX.farmDinoPick); if not, said once, and last played / Auto Switch pick.
            local fd, fdGender, fdNo = PX.farmDinoPick(sp, gender)
            if fdNo and PX.rjFarmDinoSaid ~= fdNo then
                PX.rjFarmDinoSaid = fdNo
                notify("Farm Dino " .. fdNo .. " is not unlocked on this map - spawning "
                    .. (farms.AUTO_SWITCH and "Auto Switch's pick" or "the last played dino") .. " instead", 10)
            end
            if fd then
                sp, gender = fd, fdGender
            elseif farms.AUTO_SWITCH and PX.asResumeTarget then
                -- The dino Auto Switch wants next; a locked one is unlocked first (free ones cost 0
                -- Amber), and the next candidate is tried if that fails.
                for _ = 1, 4 do
                    local t, cost = PX.asResumeTarget(sp)
                    if not t then break end
                    if cost then
                        notify("unlocking " .. t .. " (" .. tostring(cost) .. " Amber)", 6)
                        if not PX.asBuy(t) then
                            notify("could not unlock " .. t .. " - trying the next dino", 6)
                            task.wait(3)
                            continue
                        end
                        task.wait(2)   -- the owned list catches up
                    end
                    if t ~= sp then sp, gender = t, PX.AS_GENDER end
                    break
                end
            end
            if not sp then
                PX.rjKeep = { farms = farms, st = st }
                notify("no dino played on " .. tostring(eco) .. " yet - spawn one and the farms come back on", 10)
                return
            end
            -- Someone at the deploy screen: a person who just ran the hub at the menu is picking a dino, and
            -- auto-spawning here tears that screen down (StartMainMenu + InitiateSpawning). Give them a moment
            -- to deploy themselves first; if they do, leave it be (farms come back on once alive, via rjKeep).
            -- If nobody deploys - an unattended rejoin / crash recovery - auto-spawn as before, just later.
            if not alive() and PX.atDeployMenu and PX.atDeployMenu() then
                for _ = 1, 50 do   -- ~25s grace for a present player to deploy
                    if PX.UNLOADED or not PX.REJOIN then return end
                    if alive() then PX.rjKeep = { farms = farms, st = st } return end
                    task.wait(0.5)
                end
            end
            notify("spawning " .. sp .. " (" .. tostring(gender or "Male") .. ")", 6)
            PX.rjSpawning = true
            local ok = false
            for _ = 1, 3 do
                if PX.UNLOADED or not PX.REJOIN then break end
                if alive() then ok = true break end
                g.EazyCheats_RjSpawnAt = os.clock()
                local s, r = pcall(PX.asSpawnDino, sp, gender)
                if (s and r) or alive() then ok = true break end
                task.wait(10)
            end
            PX.rjSpawning = false
            if PX.UNLOADED then return end
            if not ok then
                PX.rjKeep = { farms = farms, st = st }   -- still owed: on record for the next server too
                if PX.rjSpawnRejoin and PX.rjSpawnRejoin("could not spawn " .. sp) then return end
                notify("could not spawn " .. sp .. " - spawn yourself and the farms come back on", 10)
                return
            end
            task.wait(3)   -- the body settles and the farms find their feet
        end
        farmsOn(farms, st)
    end

    -- The saved config (Auto Switch order and unlocking, farm settings) applies only once the menu is
    -- built, which takes a while on a busy client: the dino must not be chosen before it. And it applies
    -- through the menu rows, which can fail to take it (a hub reloaded in the same server keeps the
    -- first copy's menu) - so after waiting (up to 60 s), the settings a farming run depends on are also
    -- read straight from the auto-load config file and set here.
    local RESUME_KEYS = { "AS_AUTO_ORDER", "AS_AUTOBUY", "AS_GENDER", "LF_AVOID", "LF_MAX_DIST",
        "LF_SCRAPS", "LF_CIRCLE", "LF_FLEE", "LF_UNSTUCK", "LF_REST", "LF_ADMIN_KICK", "LF_FLYAWAY", "LF_FLYAWAY_RADIUS",
        "ANTI_AFK", "EAT_WHEN_HUNGRY", "FAST_EAT", "LEAVE_SCRAPS" }
    local function awaitConfig()
        local HS = game:GetService("HttpService")
        local name
        pcall(function() name = readfile("EazyCheats_Configs/autoload.txt"):gsub("%s+$", "") end)
        if not name or name == "" then return end
        local deadline = os.clock() + 60
        while not PX.cfgApplied and os.clock() < deadline and not PX.UNLOADED do task.wait(1) end
        pcall(function()
            local cfg = HS:JSONDecode(readfile("EazyCheats_Configs/" .. name .. ".json"))
            for _, k in ipairs(RESUME_KEYS) do
                if cfg[k] ~= nil then PX[k] = cfg[k] end
            end
        end)
    end

    task.spawn(function()
        task.wait(8)   -- the menu's auto-load config applies a few seconds in
        local st = PX.rejoinRead()
        -- Back through the start screen (pending), or straight into a server - Real's crash recovery
        -- and its account launch can join a map directly - while farms were running a short while ago
        -- (in any server). Or the hub was reloaded right here while its farms ran (the old copy's
        -- unload kept them on record; without this the first save below wrote them all off).
        local fresh = tonumber(st.pending) and os.time() - st.pending < 900
        local ran = false
        for _, on in pairs(type(st.farms) == "table" and st.farms or {}) do
            if on == true then ran = true end
        end
        local recent = tonumber(st.t) ~= nil and os.time() - tonumber(st.t) < 1800
        -- Any server, this one too: crash recovery starts a new Roblox process in the same JobId, where
        -- rjReloaded is nil (no old handle) - it must resume all the same.
        local moved = ran and recent and st.lastJob ~= nil
        local reloaded = ran and recent and PX.rjReloaded and st.lastJob == game.JobId
        if PX.REJOIN_OK and PX.REJOIN and not PX.UNLOADED and (fresh or moved or reloaded) then
            awaitConfig()
            PX.rjResuming = true
            local ok, err = pcall(resume, st)
            PX.rjResuming, PX.rjSpawning = false, false
            -- Done: clear the mark. Unloaded part-way (a reload): the next copy carries on from it.
            if not PX.UNLOADED then
                local cur = PX.rejoinRead()
                cur.pending = nil
                PX.rejoinWrite(cur)
            end
            if not ok then notify("error: " .. tostring(err), 8) end
        end
        while not PX.UNLOADED do
            -- Rejoined but not spawned (no dino to spawn, or it failed): once you spawn, farms back on.
            if PX.rjKeep and (not PX.REJOIN or not PX.REJOIN_OK) then PX.rjKeep = nil end
            if PX.rjKeep and alive() then
                local keep = PX.rjKeep
                task.wait(3)
                PX.rjKeep = nil
                if alive() then pcall(farmsOn, keep.farms, keep.st) end
            end
            -- Farms owed (or on) but no dino for 2 minutes, with no death screen and nothing else busy: a
            -- respawn that failed after a death (the game then closes its screen) or a spawn the game
            -- ignored. Nothing else would ever try again, so the resume runs again - every 3 minutes at
            -- most; if its spawn keeps failing it hops servers (PX.rjSpawnRejoin, once every 20 minutes).
            if PX.REJOIN_OK and PX.REJOIN and not alive() and not PX.AS_BUSY and not PX.rjSpawning
                and not PX.deathBusy and not PX.rjResuming
                and (PX.rjKeep or PX.cfgFarmsOwed or PX.LEGIT_FARM or PX.AFK_FARM or PX.AUTO_SWITCH) then
                local rg
                pcall(function() rg = knit().GetController("InterfaceController").RevivalGui end)
                if rg then
                    PX.rjNoDinoSince = nil   -- the death screen is up: PX.deathSetup answers it
                else
                    PX.rjNoDinoSince = PX.rjNoDinoSince or os.clock()
                end
                if PX.rjNoDinoSince and os.clock() - PX.rjNoDinoSince > 120 and os.clock() - (PX.rjRetryAt or 0) > 180 then
                    PX.rjRetryAt, PX.rjNoDinoSince = os.clock(), nil
                    local st = PX.rejoinRead()
                    local farms = PX.rjKeep and PX.rjKeep.farms
                    if not farms then
                        farms = {}
                        for _, f in ipairs(PX.RJ_FARMS) do farms[f[1]] = PX[f[1]] and true or false end
                    end
                    st.farms = farms
                    notify("no dino for 2 minutes - spawning again", 8)
                    PX.rjResuming = true
                    local ok, err = pcall(resume, st)
                    PX.rjResuming, PX.rjSpawning = false, false
                    if not ok then notify("error: " .. tostring(err), 8) end
                end
            else
                PX.rjNoDinoSince = nil
            end
            -- Backstop: a living dino under the main menu for 10 s while farming (any spawn path that did
            -- not close it) - close it the way the game's Play button does.
            if alive() and (PX.LEGIT_FARM or PX.AFK_FARM or PX.AUTO_SWITCH) and not PX.AS_BUSY and not PX.rjSpawning
                and LocalPlayer.PlayerGui:FindFirstChild("MainMenuGui") then
                PX.rjMenuSince = PX.rjMenuSince or os.clock()
                if os.clock() - PX.rjMenuSince > 10 then
                    PX.rjMenuSince = nil
                    PX.closeMainMenu()
                end
            else
                PX.rjMenuSince = nil
            end
            -- Streaming stuck on the menu: a main menu that opened over a living dino moved the server's
            -- replication focus to its backdrop (SetMenuReplicationFocus; only a spawn moves it back), so the
            -- plants and ground near the dino stop loading and the farm finds nothing (Jami: focus on
            -- Workspace.BackgroundPivot, OnMenu still true). Healthy = focus is a part of our own character.
            -- 20 s like that while farming -> log out and back in as the same dino, at most every 10 minutes.
            do
                local ch, rf = LocalPlayer.Character, LocalPlayer.ReplicationFocus
                if alive() and (PX.LEGIT_FARM or PX.AFK_FARM or PX.AUTO_SWITCH) and not PX.AS_BUSY
                    and not PX.rjSpawning and not PX.rjResuming and PX.asRelog and ch
                    and (LocalPlayer:GetAttribute("OnMenu") == true or (rf ~= nil and not rf:IsDescendantOf(ch))) then
                    PX.rjFocusSince = PX.rjFocusSince or os.clock()
                    if os.clock() - PX.rjFocusSince > 20 and os.clock() - (PX.rjRelogAt or -1e9) > 600 then
                        PX.rjRelogAt, PX.rjFocusSince = os.clock(), nil
                        task.spawn(PX.asRelog, "the game was still on its menu")
                    end
                else
                    PX.rjFocusSince = nil
                end
            end
            -- Dying server: population under the floor for a sustained spell -> hop to a fuller one, Rejoin
            -- carries the farms across. Only while a farm/switch is actually running (never yank a manual
            -- session) and only when alive in-world (the start screen has no real population to read).
            if PX.LOW_POP_LEAVE and PX.REJOIN and not PX.rjLeaving and alive()
                and (PX.LEGIT_FARM or PX.AFK_FARM or PX.AUTO_SWITCH) then
                if #Players:GetPlayers() < (tonumber(PX.LOW_POP_MIN) or 80) then
                    PX.lowPopSince = PX.lowPopSince or os.clock()
                    if os.clock() - PX.lowPopSince > 30 then
                        PX.lowPopSince = nil
                        PX.rejoinLeave("server population under " .. tostring(PX.LOW_POP_MIN or 80))
                    end
                else
                    PX.lowPopSince = nil
                end
            else
                PX.lowPopSince = nil
            end
            -- Farms a loaded config asked for (PX.cfgFarms), on once there is a dino to farm with.
            if PX.cfgFarmsOwed and alive() and not PX.rjResuming and not PX.rjSpawning and not PX.AS_BUSY then
                local want = PX.cfgFarmsOwed
                PX.cfgFarmsOwed = nil
                task.wait(3)
                for _, f in ipairs(PX.RJ_FARMS) do
                    if want[f[1]] and alive() and PX[f[2]] and not PX[f[1]] and not PX.UNLOADED then
                        pcall(function() PX[f[2]]:Set(true) end)
                    end
                end
            end
            if PX.REJOIN then PX.rejoinSave() end
            -- A one-line status where EZ Auto Launcher (and anyone checking in) can read it.
            pcall(function()
                local farm = (PX.LEGIT_FARM and ("Legit Farm: " .. tostring(PX.lfStatus)))
                    or (PX.AFK_FARM and ("AFK Farm: " .. ((PX.CLEAN_BREAK and "clean break") or (PX.afkSafetyState and ("healing (" .. tostring(PX.afkSafetyState) .. ")")) or "on")))
                    or "no farm"
                local sw = PX.AUTO_SWITCH and ("Auto Switch" .. (PX.AS_AUTO_ORDER and " (smallest first)" or "")
                    .. ": " .. tostring(PX.asStatus)) or "Auto Switch off"
                getgenv().EazyCheats_Status = farm .. " | " .. sw
            end)
            task.wait(5)
        end
    end)
end
PX.rejoinSetup()

-- ═══════════════════════════════════════
-- RESPAWN AFTER DEATH (while any farm is on)
-- ═══════════════════════════════════════
-- Dying while farming should be rare (damage sends both farms into hiding / flying off to heal), but
-- when it happens the game's death screen (InterfaceController.RevivalGui) is answered the way its own
-- Respawn button does it: RevivalScreenClosed, end the apex death grace, an apex slot if needed, then
-- InitiateSpawning the same species and gender - through the same calls Auto Switch uses
-- (PX.asSpawnDino). Revival tokens are never spent. The farms are still on and pick the new body up;
-- Auto Switch carries on as usual. If the spawn fails, the death screen's buttons are left to you.
function PX.deathSetup()
    local RS = game:GetService("ReplicatedStorage")
    local function knit()
        local k
        pcall(function() k = PX.req(RS.Packages.Knit) end)
        return k
    end
    local function notify(msg, t)
        pcall(function() if PX.Hub then PX.Hub:Notify("Respawn: " .. msg, t or 6) end end)
    end
    local function farming()
        return PX.AFK_FARM or PX.LEGIT_FARM or PX.FOSSIL_FARM or PX.AUTO_SWITCH
    end
    local function clearScreen(rg)
        pcall(function() RunService:UnbindFromRenderStep("RevivalCameraSway") end)
        if not pcall(function() rg:Destroy() end) then
            pcall(function() if rg.gui then rg.gui.Enabled = false end end)
        end
        pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
    end
    local function respawn(rg)
        local sp, gender = rg.dinosaur, rg.gender
        if type(sp) ~= "string" then return end
        notify("died - respawning as " .. sp, 6)
        task.wait(4)   -- let the death screen settle, as the game's own button does
        if rg.finished or not farming() or PX.UNLOADED then return end   -- you pressed a button yourself
        rg.finished = true   -- the screen's own buttons stand down while we respawn
        local K = knit()
        pcall(function() K.GetService("CharacterService"):RevivalScreenClosed() end)
        pcall(function() K.GetController("ApexController"):EndDeathGrace(sp) end)
        PX.rjSpawning = true
        local ok, got = pcall(PX.asSpawnDino, sp, gender)
        PX.rjSpawning = false
        if ok and got then
            clearScreen(rg)
            notify("back as " .. sp .. " - farming on", 6)
        else
            rg.finished = false   -- hand the death screen back to you
            notify("could not respawn " .. sp .. " - pick Respawn or Main Menu yourself", 10)
        end
    end
    task.spawn(function()
        while not PX.UNLOADED do
            task.wait(1)
            local rg
            pcall(function() rg = knit().GetController("InterfaceController").RevivalGui end)
            if rg and not rg.fromMenu and not rg.finished and farming() and PX.asSpawnDino and not PX.deathBusy then
                PX.deathBusy = true
                local ok, err = pcall(respawn, rg)
                if not ok then notify("error: " .. tostring(err), 8) end
                PX.deathBusy = false
            end
        end
    end)
end
PX.deathSetup()

-- ═══════════════════════════════════════
-- PX.ANTI_AFK
-- ═══════════════════════════════════════
-- Roblox disconnects a client after ~20 minutes with no INPUT ("kicked due to inactivity").
-- That's fatal to Auto Fly specifically: the dino is moving the whole time, but we never touch
-- a key, so as far as the engine is concerned the player is idle. Player.Idled fires when that
-- timer runs out, which is our cue to inject a scrap of synthetic input and reset it.
--
-- Deliberately MoveMouse, NOT the usual ClickButton2. Right-click is the Secondary attack in
-- this game — attacks bind Primary/Secondary through ContextActionService, which ignores cursor
-- position entirely — so the common anti-AFK idiom would have you swinging an attack every 20
-- minutes: burning stamina and firing combat remotes while you're supposed to be quietly
-- circling. A 1px mouse nudge is input to the engine and nothing at all to the game.
pcall(function() PX.VirtualUser = game:GetService("VirtualUser") end)
if PX.VirtualUser then
    table.insert(allConnections, LocalPlayer.Idled:Connect(function()
        -- Legit Farm keeps it on in the background too: it is left running for hours.
        if PX.UNLOADED or not (PX.ANTI_AFK or PX.LEGIT_FARM) then return end
        pcall(function()
            PX.VirtualUser:CaptureController()
            PX.VirtualUser:MoveMouse(Vector2.new(1, 1))
            PX.VirtualUser:MoveMouse(Vector2.new(0, 0))
        end)
        PX.antiAfkCount = (PX.antiAfkCount or 0) + 1
    end))
end

-- ═══════════════════════════════════════
-- STATS ID CARD  (purple, top-centre-right; per-section toggles + dynamic sizing)
-- The species' growth rules: StateMultipliers (Walk 1.5, Run 0.2, ...) and MassGainStages. Cached per
-- species, since it is read every frame the Stats Card is up.
function PX.dinoGrowthShared()
    local ch = LocalPlayer.Character
    local sp = ch and ch:GetAttribute("Type")
    if not sp then return nil end
    if PX.growthShared and PX.growthShared.sp == sp then return PX.growthShared.v end
    local v
    pcall(function() v = PX.req(PX.WATER_RS.DinosaurData[sp]).Shared.Growth end)
    PX.growthShared = { sp = sp, v = v }
    return v
end

-- The nutrition categories the species eats, in its own order (DinosaurData.<sp>.Shared.Nutrition: Iguanodon
-- Fiber, Carbohydrates, Calcium). A herbivore has no Proteins or Fats. Cached per species.
function PX.dinoNutritionCats()
    local ch = LocalPlayer.Character
    local sp = ch and ch:GetAttribute("Type")
    if not sp then return nil end
    if PX.nutCats and PX.nutCats.sp == sp then return PX.nutCats.v end
    local v
    pcall(function()
        local t = {}
        for _, row in ipairs(PX.req(PX.WATER_RS.DinosaurData[sp]).Shared.Nutrition) do
            if type(row) == "table" and row.Category then t[#t + 1] = tostring(row.Category) end
        end
        v = t
    end)
    PX.nutCats = { sp = sp, v = v }
    return v
end

-- The weight the dino STARTS each stage at (DinosaurData.<sp>.GrowthStages.<stage>.CoreStats.Weight).
-- Growth.Mass counts up from that weight, so a whole stage is the gap to the next stage's weight, and
-- Growth.Delta is exactly Mass / that gap. Checked against the live replica (2026-09-21, Parasaurolophus
-- SubAdult): Mass 3647.636 / (Adult 8300 - SubAdult 4121) = 0.872849, the replica's own Delta to six
-- decimals - and the character's Weight attribute was 7768.636, i.e. 4121 + Mass. Cached per species.
function PX.dinoStageWeights()
    local ch = LocalPlayer.Character
    local sp = ch and ch:GetAttribute("Type")
    if not sp then return nil end
    if PX.stageWeights and PX.stageWeights.sp == sp then return PX.stageWeights.v end
    local v
    pcall(function()
        local m = PX.req(PX.WATER_RS.DinosaurData[sp])
        local t = {}
        for st, row in pairs(m.GrowthStages) do
            local w = row.CoreStats and row.CoreStats.Weight
            if type(w) == "number" then t[tostring(st)] = w end
        end
        v = t
    end)
    PX.stageWeights = { sp = sp, v = v }
    return v
end

-- Growth from the dino's own Weight attribute, for executors that cannot read CharacterState (Xeno). The Weight
-- attribute is the stage's starting weight plus the mass grown in it (checked live), so with the stage weights the
-- progress is exact: { Stage, NextStage, span, Delta } or { Stage, final = true }; nil when the data is missing.
function PX.liteGrowthOf(stage, weight, weights)
    if type(weights) ~= "table" or stage == nil then return nil end
    local here = weights[tostring(stage)]
    if type(here) ~= "number" then return nil end
    local nextName, nextW
    for name, w in pairs(weights) do
        if type(w) == "number" and w > here and (not nextW or w < nextW) then nextName, nextW = name, w end
    end
    local g = { Stage = tostring(stage) }
    if not nextName then g.final = true return g end
    g.NextStage, g.span = nextName, nextW - here
    if type(weight) == "number" then g.Delta = math.clamp((weight - here) / g.span, 0, 1) end
    return g
end

-- "~8m left" for a number of seconds (the Stage Timer's wording, both kinds of card).
function PX.fmtLeft(secs)
    secs = math.floor(secs + 0.5)
    if secs <= 0 then return "any moment" end
    if secs < 60 then return "~" .. secs .. "s left" end
    if secs < 3600 then return "~" .. math.floor(secs / 60) .. "m left" end
    return string.format("~%dh%02dm left", math.floor(secs / 3600), math.floor(secs % 3600 / 60))
end

-- Without CharacterState there is no live multiplier or gait to scale by, so the lite card cannot promise the
-- full-stats best case: it says how long the stage takes at the pace the dino has actually been growing, from the
-- recent growth ticks ({ massGained, seconds } each). Says "measuring..." until it has a minute of them.
function PX.litePaceEta(g, samples)
    if type(g) ~= "table" then return "" end
    if g.final then return "(final stage)" end
    local sm, st = 0, 0
    for _, x in ipairs(samples or {}) do sm = sm + x[1]; st = st + x[2] end
    if #(samples or {}) < 2 or st < 60 or sm <= 0 or not g.Delta or not g.span then return "(measuring...)" end
    return "(" .. PX.fmtLeft((1 - g.Delta) * g.span / (sm / st)) .. " at this pace)"
end

-- The mass a whole stage takes, and how much of it is left - both exact, from the table above.
function PX.stageSpan(g)
    if type(g) ~= "table" then return nil end
    local w = PX.dinoStageWeights()
    local here, nxt = w and g.Stage and w[tostring(g.Stage)], w and g.NextStage and w[tostring(g.NextStage)]
    if not (here and nxt) or nxt <= here then return nil end
    return nxt - here
end

-- ═══════════════════════════════════════
-- Reads the same live values the game's Wellbeing menu uses: growth/mass/weight from
-- CharacterState.Replica.Data, nutrition/wellbeing % from CharacterState.Wellbeing.SavableStats.
-- Growth is server-driven, so the "next growth hit" timer anchors to Growth.Mass replica updates and
-- uses the median interval (stable). Sections toggle independently; the card resizes to fit.
task.spawn(function()   -- its own thread: nothing in the card's setup can hold up the rest of the load
    -- LITE: an executor where CharacterState must not be required (Xeno: the require freezes the client). The card
    -- still runs, on what the dino itself carries: name, gender, stage and weight as attributes, progress from the
    -- stage weights, the growth timer from the Weight attribute changing on every growth tick, and a stage
    -- estimate at the pace it has been growing. Mass gain, nutrition and wellbeing need CharacterState: hidden.
    local LITE = not PX.CAP.charstate
    local CS = (not LITE) and PX.requireCS() or nil
    local okCS = CS ~= nil
    if (okCS and CS and PX.ReplicaSetRemote) or LITE then
        local lastGrowthT, growthInterval, intervals = os.clock(), 30, {}
        -- Stage Timer (v3, scans 2026-10-01 - Info Dumps/Game State/growth-timing.md section 8). The line answers
        -- ONE question: how long until the next stage if this dino walked the whole time at 100% nutrition with
        -- its current boosts. What the scans showed:
        --   * every 30 s tick adds  K x MassGainStages[stage].MassGain x Multipliers.MassGain  (the live value AT
        --     the tick). The live value already holds the gait (running = exactly Run/Walk of walking), the
        --     nutrition multiplier, boosts, the top-stage (1 - Delta)^2.5 slowdown, and a server factor nobody has
        --     identified (~0.08 on 2026-10-01, ~0.14 on 09-29).
        --   * K itself is not fixed (it ramps for ~10 ticks after joining and differs by day), so it is measured
        --     from the dino's own recent ticks: mass gained / (MassGain x live multiplier at that tick).
        --   * The growth rate FALLS as the stage fills (watched on two Iguanodon Adults for 8 h, 2026-10-01: walking
        --     ticks ~10 kg at 30% -> ~4 kg at 96%, a straight line, rate ~ 1 - 0.75 x Delta). The fall is fitted
        --     from the dino's own ticks once it has seen 5% of the stage; until then 0.75 is assumed.
        -- Best rate now = K x MassGain x the HIGHEST live multiplier of the last 2 minutes (the walking value while
        -- it farms - no gait read, which can say Run while the server pays Walk) x (1.5 / nutrition multiplier now).
        -- The time to the next stage integrates that falling rate instead of dividing by today's rate.
        -- v2 calibrated against gait x live multiplier, which cancelled the hidden factor out (~12x too short).
        local kSamples, kSp, lastTickMass = {}, nil, nil   -- K per recent tick (last 5), species they belong to
        local mgHist, mgHistT = {}, 0      -- { time, live multiplier, moving } about once a second, last 2 minutes
        local rateHist, rateStage = {}, nil   -- { Delta, best rate per MassGain } per tick in this stage: the fall
        local FALL_DEFAULT = 0.75          -- rate ~ 1 - FALL x Delta until the dino's own ticks say otherwise
        local settleTicks = 0              -- ticks since a join, respawn or stage change: the rate drifts from the old
        local SETTLE = 8                   -- level to the new one for ~8 ticks (2026-10-01 logs), so those are skipped
        local mgLast, mgSince = nil, os.clock()  -- the live multiplier and when it last changed: a tick only counts
                                                 -- toward K once it has held 3 s (a gait change just before a tick
                                                 -- pairs the mass with the wrong multiplier, ~10% off on 2026-10-01)
        local K_MIN = 3                    -- ticks to watch before printing a number at all
        local WB_DATA
        pcall(function() WB_DATA = PX.req(PX.WATER_RS.Shared.WellbeingData) end)
        -- the best state the species can grow in (its own table: Walk on most, Trot ties it on some)
        local function bestStateMult()
            local sp = PX.dinoGrowthShared and PX.dinoGrowthShared()
            local mults = sp and sp.StateMultipliers
            if type(mults) ~= "table" then return nil end
            local best
            for _, v in pairs(mults) do
                if type(v) == "number" and (not best or v > best) then best = v end
            end
            return best
        end
        -- the best mass-gain multiplier the game gives out - the top row of its own table (1.5 at 100%)
        local function bestGainMult()
            local tbl = WB_DATA and WB_DATA.NutritionSettings and WB_DATA.NutritionSettings.MassGainMultiplier
            if type(tbl) ~= "table" then return nil end
            local best
            for _, row in ipairs(tbl) do
                if type(row) == "table" and type(row.Multiplier) == "number" and (not best or row.Multiplier > best) then
                    best = row.Multiplier
                end
            end
            return best
        end
        -- the multiplier the game's table gives at an average nutrition: the highest row at or under it (steps:
        -- 0% 0.5 ... 50-80% 1.0, 90% 1.25, 100% 1.5)
        local function gainMultAt(avg)
            local tbl = WB_DATA and WB_DATA.NutritionSettings and WB_DATA.NutritionSettings.MassGainMultiplier
            if type(tbl) ~= "table" or type(avg) ~= "number" then return nil end
            local m, at
            for _, row in ipairs(tbl) do
                if type(row) == "table" and type(row.Value) == "number" and type(row.Multiplier) == "number"
                    and row.Value <= avg + 1e-6 and (not at or row.Value > at) then m, at = row.Multiplier, row.Value end
            end
            return m
        end
        -- the dino's average nutrition over the categories its species actually eats (Shared.Nutrition)
        local function nutritionAvg()
            local s, n = 0, 0
            for _, cat in ipairs(PX.dinoNutritionCats() or {}) do
                local v; pcall(function() v = CS.Wellbeing.SavableStats[cat] end)
                if type(v) == "number" then s = s + v; n = n + 1 end
            end
            return n > 0 and s / n or nil
        end
        -- The live multiplier the dino would have walking at 100% nutrition, right now: the highest of the last 2
        -- minutes (walking beats every other gait; Trot ties it), scaled from today's nutrition to the best. A dino
        -- that never moved in that time only shows its resting value, so that is scaled up to the best gait.
        local function bestMgNow()
            local top, moved = nil, false
            for _, h in ipairs(mgHist) do
                if not top or h[2] > top then top = h[2] end
                moved = moved or h[3]
            end
            local nm, bg, bs = gainMultAt(nutritionAvg()), bestGainMult(), bestStateMult()
            if not (top and nm and nm > 0 and bg and bs) then return nil end
            if not moved then
                local sp = PX.dinoGrowthShared and PX.dinoGrowthShared()
                local rest = sp and sp.StateMultipliers and sp.StateMultipliers.Rest or 1
                top = top * bs / rest
            end
            return top * bg / nm
        end
        -- the stage's base mass gain, and the server's live multiplier for this dino
        local function stageBase(stage)
            local sp = PX.dinoGrowthShared and PX.dinoGrowthShared()
            local row = sp and sp.MassGainStages and stage and sp.MassGainStages[tostring(stage)]
            local v = row and row.MassGain
            return (type(v) == "number" and v > 0) and v or nil
        end
        local function liveGainMult()
            local v
            pcall(function() v = CS.Replica.Data.Multipliers.MassGain end)
            return (type(v) == "number" and v > 0) and v or nil
        end
        local function median(t)
            if #t == 0 then return growthInterval end
            local s = table.clone(t); table.sort(s); return s[math.ceil(#s / 2)]
        end
        -- LITE: every growth tick changes the dino's Weight attribute; that is the tick, and how much it grew.
        local liteSamples = {}                     -- { massGained, seconds } per tick, the last 10
        if LITE then
            local wConn, lastW, lastWT = nil, nil, nil
            local function hookWeight(ch)
                if wConn then pcall(function() wConn:Disconnect() end) end
                wConn, lastW, lastWT = nil, nil, nil
                if not ch then return end
                wConn = ch:GetAttributeChangedSignal("Weight"):Connect(function()
                    if PX.UNLOADED then return end
                    local w, now = ch:GetAttribute("Weight"), os.clock()
                    if type(w) ~= "number" then return end
                    if lastW and lastWT and w > lastW then
                        local dt = now - lastWT
                        if dt > 5 and dt < 300 then
                            intervals[#intervals + 1] = dt
                            if #intervals > 6 then table.remove(intervals, 1) end
                            local srt = table.clone(intervals); table.sort(srt)
                            growthInterval = srt[math.ceil(#srt / 2)]
                            liteSamples[#liteSamples + 1] = { w - lastW, dt }
                            if #liteSamples > 10 then table.remove(liteSamples, 1) end
                        end
                        lastGrowthT = now
                    end
                    lastW, lastWT = w, now
                end)
                table.insert(allConnections, wConn)
            end
            hookWeight(LocalPlayer.Character)
            table.insert(allConnections, LocalPlayer.CharacterAdded:Connect(hookWeight))
        end
        if not LITE then
        table.insert(allConnections, PX.ReplicaSetRemote.OnClientEvent:Connect(function(id, path)
            if PX.UNLOADED or typeof(path) ~= "table" then return end
            if path[1] == "Growth" and path[2] == "Mass" then          -- each Mass update = one growth hit
                local rep = CS.Replica
                if rep and id == rep.Id then
                    local now = os.clock()
                    -- Stage Timer: one more sample of K, the mass this tick brought over (the stage's MassGain x
                    -- the live multiplier the server ticked with). A stage change resets Mass to 0, so a
                    -- backwards step is dropped rather than counted; a new species starts over.
                    pcall(function()
                        local g = rep.Data and rep.Data.Growth
                        if type(g) == "table" and type(g.Mass) == "number" then
                            local sp = LocalPlayer.Character and LocalPlayer.Character:GetAttribute("Type")
                            if sp ~= kSp then kSamples, kSp, lastTickMass, settleTicks = {}, sp, nil, 0 end
                            if g.Stage ~= rateStage then rateHist, rateStage, kSamples, settleTicks = {}, g.Stage, {}, 0 end
                            settleTicks = settleTicks + 1
                            local dm = lastTickMass and (g.Mass - lastTickMass) or nil
                            local base, mg = stageBase(g.Stage), liveGainMult()
                            if settleTicks > SETTLE and dm and dm > 0 and base and mg and os.clock() - mgSince >= 3 then
                                kSamples[#kSamples + 1] = dm / (base * mg)
                                if #kSamples > 5 then table.remove(kSamples, 1) end
                            end
                            lastTickMass = g.Mass
                            -- one point of the rate-vs-progress line for this stage
                            local bm = bestMgNow()
                            if #kSamples >= K_MIN and bm and type(g.Delta) == "number" then
                                rateHist[#rateHist + 1] = { g.Delta, median(kSamples) * bm }
                                if #rateHist > 240 then table.remove(rateHist, 1) end
                            end
                        end
                    end)
                    local dtv = now - lastGrowthT
                    if dtv > 5 and dtv < 300 then
                        intervals[#intervals + 1] = dtv
                        if #intervals > 6 then table.remove(intervals, 1) end
                        growthInterval = median(intervals)
                    end
                    lastGrowthT = now
                end
            end
        end))
        end

        -- A respawn is a new dino (and growth ramps up again for ~10 ticks after a join): measure K afresh.
        table.insert(allConnections, LocalPlayer.CharacterAdded:Connect(function()
            kSamples, kSp, lastTickMass, mgHist, rateHist, rateStage, settleTicks = {}, nil, nil, {}, {}, nil, 0
        end))

        -- The live multiplier, about once a second for the last 2 minutes, and when it last jumped (a gait change).
        PX.addStep(8, function()
            local now = os.clock()
            local mgNow = liveGainMult()
            if mgNow and (not mgLast or math.abs(mgNow - mgLast) > 0.03 * mgLast) then mgSince = now end   -- a gait jump, not the per-tick drift
            mgLast = mgNow
            if not mgNow or now - mgHistT < 1 then return end
            mgHistT = now
            local moving = false
            pcall(function() moving = PX.getCS().Movement.isMoving == true end)
            mgHist[#mgHist + 1] = { now, mgNow, moving }
            while mgHist[1] and now - mgHist[1][1] > 120 do table.remove(mgHist, 1) end
        end)

        local function D() return CS and CS.Replica and CS.Replica.Data end
        local function wbStat(name)
            local v; pcall(function() v = CS.Wellbeing.SavableStats[name] end)
            return type(v) == "number" and math.floor(v) or nil
        end
        local function dur(secs)                            -- "~23m", "~4h10m", "~3d5h", "~2mo"
            secs = math.floor(secs + 0.5)
            if secs < 60 then return "~" .. math.max(secs, 1) .. "s" end
            if secs < 3600 then return "~" .. math.floor(secs / 60) .. "m" end
            if secs < 86400 then return string.format("~%dh%02dm", math.floor(secs / 3600), math.floor(secs % 3600 / 60)) end
            if secs < 60 * 86400 then return string.format("~%dd%dh", math.floor(secs / 86400), math.floor(secs % 86400 / 3600)) end
            return "~" .. math.floor(secs / (30 * 86400)) .. "mo"
        end
        -- "(~8m left)": the mass still to go for this stage, over the mass per tick the dino would gain walking at
        -- 100% nutrition with its current boosts (see the Stage Timer note above). On the top stage Monster is
        -- never reached, so it names the closest realistic goal within a month instead. Says what it does not
        -- know instead of guessing.
        local function stageEta(g, delta)
            if type(g) ~= "table" then return "" end
            if g.Paused then return "(paused)" end
            local base, bm = stageBase(g.Stage), bestMgNow()
            if #kSamples < K_MIN or not (base and bm) then return "(measuring...)" end
            local perTick = median(kSamples) * base * bm    -- best-case kg per tick, right now
            local tickLen = growthInterval > 0 and growthInterval or 30
            local d0 = math.clamp(tonumber(delta) or 0, 0, 0.9999)
            if g.NextStage ~= nil and g.NextStage ~= "Monster" then
                local span = PX.stageSpan(g)
                if not (span and perTick > 0) then return "(measuring...)" end
                -- How fast the rate falls across the stage: a straight line through this stage's ticks once they
                -- cover 5% of it (rate = a + b x Delta, fall = -b / a), else the measured default.
                local fall, n = FALL_DEFAULT, #rateHist
                if n >= 10 and rateHist[n][1] - rateHist[1][1] >= 0.05 then
                    local sx, sy, sxx, sxy = 0, 0, 0, 0
                    for _, r in ipairs(rateHist) do sx, sy, sxx, sxy = sx + r[1], sy + r[2], sxx + r[1] * r[1], sxy + r[1] * r[2] end
                    local den = n * sxx - sx * sx
                    if den > 0 then
                        local b = (n * sxy - sx * sy) / den
                        local a = (sy - b * sx) / n
                        if a > 0 then
                            fall = math.clamp(-b / a, 0, 0.95)
                            perTick = (a + b * d0) * base            -- the line is steadier than the last ticks
                        end
                    end
                end
                if perTick <= 0 then return "(measuring...)" end
                -- rate(D) = perTick x (1 - fall D) / (1 - fall d0); ticks to D = 1 is the integral of span / rate
                local ticks
                if fall < 0.01 then
                    ticks = (1 - d0) * span / perTick
                else
                    local r0 = 1 - fall * d0
                    ticks = span * r0 / (perTick * fall) * math.log(r0 / (1 - fall))
                end
                local secs = ticks * tickLen
                return secs < 1 and "(any moment)" or "(" .. dur(secs) .. " left)"
            end
            -- Top stage: progress toward Monster slows as (1 - Delta)^2.5 (already inside the live multiplier, so
            -- perTick is the rate at d0). dD/tick = A (1 - D)^2.5  =>  ticks(d0 -> d1) = [(1-d1)^-1.5 - (1-d0)^-1.5] / 1.5A
            local w, gs = PX.dinoStageWeights(), PX.dinoGrowthShared()
            local topW = w and w[tostring(g.Stage)]
            local wm = gs and gs.Monster and gs.Monster.WeightMultiplier
            if not (type(topW) == "number" and type(wm) == "number" and wm > 1 and perTick > 0) then return "" end
            local A = perTick / (topW * (wm - 1)) / (1 - d0) ^ 2.5
            local function secsTo(d1) return ((1 - d1) ^ -1.5 - (1 - d0) ^ -1.5) / (1.5 * A) * tickLen end
            local MONTH, pct = 30 * 86400, d0 * 100
            local goal
            for _, m in ipairs({ 20, 40, 60, 80, 95 }) do
                if m > pct + 1e-6 then goal = m break end
            end
            if not (goal and secsTo(goal / 100) <= MONTH) then goal = math.floor(pct / 5 + 1e-6) * 5 + 5 end
            if goal > 99 or secsTo(goal / 100) > MONTH then goal = math.floor(pct + 1e-6) + 1 end
            if goal > 99 then return "" end
            local secs = secsTo(goal / 100)
            if secs > MONTH then return "(1% takes " .. dur(secs) .. ")" end
            return "(" .. goal .. "% in " .. dur(secs) .. ")"
        end
        local function avg3(a, b, c)
            local s, n = 0, 0; for _, x in pairs({ a, b, c }) do if x then s = s + x; n = n + 1 end end
            return n > 0 and math.floor(s / n) or 0
        end
        local function massGainStr()
            local d = D(); local mg; pcall(function() mg = d.Multipliers.MassGain end)
            if type(mg) ~= "number" then return "?" end
            if mg > 1 then return tostring(math.floor(mg * 10) * 10)
            elseif mg < 0.1 then return tostring(math.floor(mg * 1000) / 10)
            else return tostring(math.floor(mg * 100)) end
        end
        local function fmt(v) return v and (v .. "%") or "?" end

        local parent = (gethui and gethui()) or game:GetService("CoreGui")
        if not parent then parent = LocalPlayer:WaitForChild("PlayerGui") end
        local gui = Instance.new("ScreenGui"); gui.Name = "PD_StatsCard"; gui.ResetOnSpawn = false; gui.IgnoreGuiInset = true
        pcall(function() gui.Parent = parent end)
        local card = Instance.new("Frame")
        card.Size = UDim2.new(0, 500, 0, 168); card.AnchorPoint = Vector2.new(0.5, 0)
        card.Position = UDim2.new(0.62, 0, 0, 16)
        card.BackgroundColor3 = Color3.fromRGB(24, 16, 38); card.BackgroundTransparency = 0.1
        card.BorderSizePixel = 0; card.Visible = false; card.Parent = gui
        Instance.new("UICorner", card).CornerRadius = UDim.new(0, 10)

        -- ── Drag support (armed by the "Drag Stats Card" toggle) ──────────────────────────
        -- card.Active is driven from the refresh loop below: ON only while PX.SC_DRAG is set, so
        -- with dragging off the card is click-through and can't eat input meant for the game.
        -- UserInputService is fetched here rather than reused from PX.UIS because that one is
        -- assigned much further down the file, after this block has already run.
        do
            local dragUIS = game:GetService("UserInputService")
            local dragging, dragStart, startPos = false, nil, nil
            local function applyPos()
                card.Position = UDim2.new(PX.SC_POS_XS, PX.SC_POS_XO, PX.SC_POS_YS, PX.SC_POS_YO)
            end
            applyPos()
            -- Used by the config loader to restore a saved spot.
            PX.setStatsCardPos = function(xs, xo, ys, yo)
                PX.SC_POS_XS, PX.SC_POS_XO, PX.SC_POS_YS, PX.SC_POS_YO = xs, xo, ys, yo
                pcall(applyPos)
            end
            table.insert(allConnections, card.InputBegan:Connect(function(input)
                if PX.UNLOADED or not PX.SC_DRAG then return end
                if input.UserInputType == Enum.UserInputType.MouseButton1
                    or input.UserInputType == Enum.UserInputType.Touch then
                    dragging, dragStart, startPos = true, input.Position, card.Position
                end
            end))
            table.insert(allConnections, card.InputEnded:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1
                    or input.UserInputType == Enum.UserInputType.Touch then
                    if dragging then
                        dragging = false
                        -- Remember where it was dropped so a config save picks it up.
                        PX.SC_POS_XS, PX.SC_POS_XO = card.Position.X.Scale, card.Position.X.Offset
                        PX.SC_POS_YS, PX.SC_POS_YO = card.Position.Y.Scale, card.Position.Y.Offset
                    end
                end
            end))
            table.insert(allConnections, dragUIS.InputChanged:Connect(function(input)
                if PX.UNLOADED or not dragging or not PX.SC_DRAG then return end
                if input.UserInputType == Enum.UserInputType.MouseMovement
                    or input.UserInputType == Enum.UserInputType.Touch then
                    local d = input.Position - dragStart
                    card.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X,
                                              startPos.Y.Scale, startPos.Y.Offset + d.Y)
                end
            end))
        end
        local stroke = Instance.new("UIStroke", card); stroke.Color = Color3.fromRGB(150, 90, 255); stroke.Thickness = 1.5
        local title = Instance.new("TextLabel")
        title.Size = UDim2.new(1, 0, 0, 24); title.Position = UDim2.new(0, 0, 0, 8); title.BackgroundTransparency = 1
        title.Font = Enum.Font.GothamBold; title.TextSize = 18; title.TextColor3 = Color3.fromRGB(190, 140, 255)
        title.Text = "STATS"; title.TextTruncate = Enum.TextTruncate.AtEnd; title.Parent = card
        local function column(xScale)
            local f = Instance.new("Frame")
            f.Size = UDim2.new(0.5, -20, 0, 0); f.Position = UDim2.new(xScale, xScale == 0 and 14 or 6, 0, 38)
            f.BackgroundTransparency = 1; f.Parent = card
            local lay = Instance.new("UIListLayout", f)
            lay.FillDirection = Enum.FillDirection.Vertical; lay.SortOrder = Enum.SortOrder.LayoutOrder
            lay.Padding = UDim.new(0, 3)
            return f, lay
        end
        local leftCol, leftLay = column(0)
        local rightCol, rightLay = column(0.5)
        local function line(pf, size, color)
            local l = Instance.new("TextLabel")
            l.Size = UDim2.new(1, 0, 0, size + 5); l.BackgroundTransparency = 1; l.Font = Enum.Font.GothamSemibold
            l.TextSize = size; l.TextXAlignment = Enum.TextXAlignment.Left
            l.TextColor3 = color or Color3.fromRGB(220, 210, 240); l.RichText = true; l.Parent = pf; return l
        end
        local lStage  = line(leftCol, 14)
        local lProg   = line(leftCol, 13, Color3.fromRGB(170, 160, 190))
        local lMass   = line(leftCol, 14)
        local lWeight = line(leftCol, 14)
        local lTimer  = line(leftCol, 15, Color3.fromRGB(120, 230, 140))
        local lNutHdr = line(rightCol, 14, Color3.fromRGB(190, 140, 255)); lNutHdr.Font = Enum.Font.GothamBold
        local lNut    = line(rightCol, 13)
        local lWbHdr  = line(rightCol, 14, Color3.fromRGB(190, 140, 255)); lWbHdr.Font = Enum.Font.GothamBold
        local lWb     = line(rightCol, 13)
        local lImm    = line(rightCol, 13)

        task.spawn(function()
            while not PX.UNLOADED do
                if PX.STATS_CARD and not (PX.SC_HIDE_WITH_MENU and PX.Hub and PX.Hub.IsVisible and PX.Hub:IsVisible()) then
                    card.Visible = true
                    -- Only grab mouse input while the drag toggle is on; otherwise stay
                    -- click-through so the card never blocks clicks meant for the game.
                    if card.Active ~= PX.SC_DRAG then card.Active = PX.SC_DRAG end
                    pcall(function()
                        local ch = LocalPlayer.Character
                        local d = D()
                        -- Dino Name: the species being played (and its gender) as the card's title.
                        local sp = PX.SC_NAME and ch and ch:GetAttribute("Type")
                        if sp then
                            local g = ch:GetAttribute("Gender")
                            title.Text = tostring(sp) .. ((g == "M" and "  (Male)") or (g == "F" and "  (Female)") or "")
                        else
                            title.Text = "STATS"
                        end
                        lStage.Visible = PX.SC_GROWTH; lProg.Visible = PX.SC_GROWTH
                        if PX.SC_GROWTH and LITE then
                            local g = PX.liteGrowthOf(ch and ch:GetAttribute("Stage"), ch and ch:GetAttribute("Weight"),
                                PX.dinoStageWeights())
                            lStage.Text = "Growth Stage:  <b>" .. tostring((g and g.Stage) or (ch and ch:GetAttribute("Stage")) or "?") .. "</b>"
                            if g and g.final then
                                lProg.Text = "Final stage"
                            else
                                lProg.Text = "Progress to " .. tostring(g and g.NextStage or "?") .. ":  "
                                    .. ((g and g.Delta) and (math.floor(g.Delta * 100) .. "%") or "?")
                                if PX.SC_STAGE_TIMER and g then
                                    lProg.Text = lProg.Text .. "   " .. PX.litePaceEta(g, liteSamples)
                                end
                            end
                        elseif PX.SC_GROWTH then
                            local stage = (d and d.Growth and d.Growth.Stage) or (ch and ch:GetAttribute("Stage")) or "?"
                            local nextS = (d and d.Growth and d.Growth.NextStage) or "?"
                            local delta = (d and d.Growth and d.Growth.Delta) or 0
                            lStage.Text = "Growth Stage:  <b>" .. tostring(stage) .. "</b>"
                            lProg.Text = "Progress to " .. tostring(nextS) .. ":  " .. math.floor(delta * 100) .. "%"
                            if PX.SC_STAGE_TIMER then
                                lProg.Text = lProg.Text .. "   " .. stageEta(d and d.Growth, delta)
                            end
                        end
                        lMass.Visible = PX.SC_MASS and not LITE
                        if PX.SC_MASS and not LITE then lMass.Text = "Mass Gain Multiplier:  <b>" .. massGainStr() .. "%</b>" end
                        lWeight.Visible = PX.SC_WEIGHT
                        if PX.SC_WEIGHT then
                            local weight = ch and ch:GetAttribute("Weight")
                            lWeight.Text = "Weight:  <b>" .. (weight and (math.floor(weight * 10) / 10 .. " kg") or "?") .. "</b>"
                        end
                        lTimer.Visible = PX.SC_TIMER
                        if PX.SC_TIMER then
                            local remain = math.max(0, math.floor(growthInterval - (os.clock() - lastGrowthT)))
                            lTimer.Text = "Next growth hit:  " .. string.format("%d:%02d", math.floor(remain / 60), remain % 60)
                        end
                        local showNut, showWb = PX.SC_NUTRITION and not LITE, PX.SC_WELLBEING and not LITE
                        lNutHdr.Visible = showNut; lNut.Visible = showNut
                        if showNut then
                            -- the categories this species eats (a herbivore has no Proteins or Fats)
                            local cats = PX.dinoNutritionCats() or { "Proteins", "Fats", "Calcium" }
                            local parts, s, n = {}, 0, 0
                            for _, cat in ipairs(cats) do
                                local v = wbStat(cat)
                                if v then s = s + v; n = n + 1 end
                                parts[#parts + 1] = (cat == "Carbohydrates" and "Carbs" or cat) .. " " .. fmt(v)
                            end
                            lNutHdr.Text = "Nutrition:  " .. (n > 0 and math.floor(s / n) or "?") .. "%"
                            lNut.Text = table.concat(parts, "   ")
                        end
                        lWbHdr.Visible = showWb; lWb.Visible = showWb; lImm.Visible = showWb
                        if showWb then
                            local cl, ac, co = wbStat("Cleanliness"), wbStat("Activity"), wbStat("Comfort")
                            local imm = wbStat("Immunity")
                            lWbHdr.Text = "Wellbeing:  " .. avg3(cl, ac, co) .. "%"
                            lWb.Text = "Clean " .. fmt(cl) .. "   Activity " .. fmt(ac) .. "   Comfort " .. fmt(co)
                            if imm then
                                local immColor = imm >= 70 and Color3.fromRGB(100, 255, 100)
                                    or imm >= 40 and Color3.fromRGB(255, 255, 80)
                                    or Color3.fromRGB(255, 80, 80)
                                lImm.Text = "Immunity:  <b>" .. imm .. "%</b>" .. (imm < 40 and "  ⚠ LOW — eat clay!" or "")
                                lImm.TextColor3 = immColor
                            else
                                lImm.Text = "Immunity:  ?"
                                lImm.TextColor3 = Color3.fromRGB(170, 160, 190)
                            end
                        end
                        -- dynamic sizing: shrink to fit visible sections
                        local leftH, rightH = leftLay.AbsoluteContentSize.Y, rightLay.AbsoluteContentSize.Y
                        leftCol.Size = UDim2.new(0.5, -20, 0, leftH)
                        rightCol.Size = UDim2.new(0.5, -20, 0, rightH)
                        card.Size = UDim2.new(0, (showNut or showWb) and 500 or 270, 0, 40 + math.max(leftH, rightH) + 8)
                    end)
                else
                    card.Visible = false
                end
                task.wait(0.3)
            end
            pcall(function() gui:Destroy() end)   -- clean up on unload
        end)
    end
end)

-- ═══════════════════════════════════════
-- SKIN CHANGER  (client-side; any skin, no unlock)
-- ═══════════════════════════════════════
-- Skins are SurfaceAppearance swaps. Skin list per dino = SkinData.Skins[dino] (Default + Unlockables).
-- Apply source: non-default = ReplicatedStorage.Skins[dino][skin][stage][gender][Wet/Dry] -> MeshN
-- folders -> SurfaceAppearance; default = CharacterModels[dino][stage].Status[dino..WetDry][gender].
-- We destroy the current SurfaceAppearances on the mesh parts (Mesh1/2/3...) and clone the skin's in
-- (same as SkinHandling.SetModelSkin's Default branch). Re-applied on a loop so growth / wet-dry can't
-- revert it. Purely visual — no unlock required.
do
    local okSD, SkinData = pcall(function() return PX.req(PX.WATER_RS.Shared.SkinData) end)
    local SkinsFolder = PX.WATER_RS:FindFirstChild("Skins")
    local CharacterModels = PX.WATER_RS:FindFirstChild("CharacterModels")
    if okSD and SkinData and SkinData.Skins and SkinsFolder and CharacterModels then
        local function charInfo()
            local ch = LocalPlayer.Character
            if not ch then return nil end
            local dino = ch:GetAttribute("Type")
            local stage = ch:GetAttribute("Stage") or "Adult"
            local gender = (tostring(ch:GetAttribute("Gender")):upper():sub(1, 1) == "F") and "Female" or "Male"
            local wet = ch:GetAttribute("IsInWater") or ch:GetAttribute("Swimming")
            return ch, dino, stage, gender, wet and "Wet" or "Dry"
        end
        local function sourceFolder(dino, skin, stage, gender, wetDry)
            if skin == "Default" then
                local cm = CharacterModels:FindFirstChild(dino)
                local sm = cm and (cm:FindFirstChild(stage) or cm:GetChildren()[1])
                local status = sm and sm:FindFirstChild("Status")
                local wd = status and (status:FindFirstChild(dino .. wetDry) or status:FindFirstChild(dino .. "Dry"))
                return wd and wd:FindFirstChild(gender)
            else
                local d = SkinsFolder:FindFirstChild(dino)
                local sk = d and d:FindFirstChild(skin)
                local s = sk and (sk:FindFirstChild(stage) or sk:GetChildren()[1])
                local g = s and s:FindFirstChild(gender)
                return g and (g:FindFirstChild(wetDry) or g:FindFirstChild("Dry") or g:FindFirstChild("Wet"))
            end
        end
        PX.applySkin = function(skin)
            local ch, dino, stage, gender, wetDry = charInfo()
            if not (ch and dino) then return false end
            local meshModel = ch:FindFirstChild("MeshModel") or ch
            local src = sourceFolder(dino, skin, stage, gender, wetDry)
            if not src then return false end
            for _, d in ipairs(meshModel:GetDescendants()) do
                if d:IsA("SurfaceAppearance") then pcall(function() d:Destroy() end) end
            end
            local applied = 0
            for _, meshF in ipairs(src:GetChildren()) do
                local sa = meshF:FindFirstChildWhichIsA("SurfaceAppearance")
                local part = meshModel:FindFirstChild(meshF.Name)
                if sa and part then pcall(function() sa:Clone().Parent = part end); applied = applied + 1 end
            end
            return applied > 0
        end
        PX.skinsForCurrentDino = function()
            local _, dino = charInfo()
            local list = { "Default" }
            local entry = dino and SkinData.Skins[dino]
            if entry and entry.Unlockables then for name in pairs(entry.Unlockables) do list[#list + 1] = name end end
            table.sort(list, function(a, b) if a == "Default" then return true elseif b == "Default" then return false end return a < b end)
            return list, dino
        end

        -- re-apply the chosen skin so growth / wet-dry / streaming can't revert it
        task.spawn(function()
            while not PX.UNLOADED do
                if PX.SKIN_SELECTED ~= "Default" then pcall(PX.applySkin, PX.SKIN_SELECTED) end
                task.wait(2)
            end
        end)
        -- on respawn: keep the skin if the new dino has it (else reset), and refresh the dropdown
        table.insert(allConnections, LocalPlayer.CharacterAdded:Connect(function()
            task.wait(2)
            local items, dino = PX.skinsForCurrentDino()
            local want = PX.SKIN_WANTED or PX.SKIN_SELECTED   -- stays wanted while playing a dino without it
            PX.SKIN_SELECTED = table.find(items, want) and want or "Default"
            if PX.skinDropdown then
                pcall(function() PX.skinDropdown:Refresh(items, false) end)
                pcall(function() PX.skinDropdown:Set(PX.SKIN_SELECTED, true) end)
            end
            if PX.SKIN_SELECTED ~= "Default" then pcall(PX.applySkin, PX.SKIN_SELECTED) end
        end))
        -- one-time refresh shortly after load, in case the GUI built before the dino was ready
        task.spawn(function()
            task.wait(3)
            if PX.skinDropdown and PX.skinsForCurrentDino then
                local items, dino = PX.skinsForCurrentDino()
                if dino then
                    pcall(function() PX.skinDropdown:Refresh(items, true) end)
                    local want = PX.SKIN_WANTED   -- a config loaded before the dino was ready
                    if want and want ~= "Default" and table.find(items, want) and PX.SKIN_SELECTED ~= want then
                        PX.SKIN_SELECTED = want
                        pcall(function() PX.skinDropdown:Set(want, true) end)
                        if PX.applySkin then pcall(PX.applySkin, want) end
                    end
                end
            end
        end)
    end
end

-- ═══════════════════════════════════════
-- FISH ESP  +  FISH HITBOX EXPANDER
-- ═══════════════════════════════════════
-- Fish are AI models in workspace.CharacterIgnore.SpawnedAI.Fish (managed by FishController). Each
-- has a "Hitbox" model (built by CreateHitbox) — the same Group-tagged detection parts the player
-- Hitbox Expander uses. Fish ESP highlights nearby fish + shows distance; the hitbox expander enlarges
-- each fish's Hitbox parts by a multiplier so your bite reaches them from further (easier to catch).
do
    PX.fishESP = setmetatable({}, { __mode = "k" })        -- fish model -> { hl, bb, lbl }
    local FISH_COLOR = Color3.fromRGB(80, 200, 255)
    -- Fish live out in the water, often 500+ studs away (scan showed nearest at 547), so the old
    -- 120-stud hitbox cap meant they never got expanded. Expand any fish within a wide range (only ~9
    -- fish exist, so it's cheap) and show ESP far enough to see the ones you're swimming toward.
    local ESP_RANGE = 1500

    local function fishContainer()
        local ci = workspace:FindFirstChild("CharacterIgnore")
        local sa = ci and ci:FindFirstChild("SpawnedAI")
        return sa and sa:FindFirstChild("Fish")
    end
    local function myRoot()
        local ch = LocalPlayer.Character
        return ch and (ch:FindFirstChild("Body") or ch:FindFirstChild("HumanoidRootPart") or ch:FindFirstChildWhichIsA("BasePart"))
    end
    local function fishPart(fish)
        return fish.PrimaryPart or fish:FindFirstChild("Body") or fish:FindFirstChildWhichIsA("BasePart")
    end
    local function ensureESP(fish)
        local e = PX.fishESP[fish]
        if e and e.hl.Parent then return e end
        local hl = Instance.new("Highlight")
        hl.FillColor = FISH_COLOR; hl.FillTransparency = 0.55; hl.OutlineColor = FISH_COLOR
        hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; hl.Parent = fish
        local part = fishPart(fish)
        local bb = Instance.new("BillboardGui")
        bb.Size = UDim2.new(0, 110, 0, 18); bb.StudsOffset = Vector3.new(0, 2, 0); bb.AlwaysOnTop = true
        local lbl = Instance.new("TextLabel")
        lbl.Size = UDim2.new(1, 0, 1, 0); lbl.BackgroundTransparency = 1; lbl.Font = Enum.Font.GothamBold
        lbl.TextSize = 12; lbl.TextColor3 = FISH_COLOR; lbl.TextStrokeTransparency = 0.4; lbl.Text = "Fish"; lbl.Parent = bb
        if part then bb.Adornee = part; bb.Parent = part end
        e = { hl = hl, bb = bb, lbl = lbl }; PX.fishESP[fish] = e; return e
    end
    local function removeESP(fish)
        local e = PX.fishESP[fish]
        if e then pcall(function() e.hl:Destroy(); e.bb:Destroy() end); PX.fishESP[fish] = nil end
    end
    -- (Fish hitbox expander removed. Scanning proved it could not work: hitDetected dedupes with
    --  u116[victim] so a swing lands ONE hit however many parts overlap, the fish's hitbox parts
    --  are already 48-72 stud half-extents so reach was never the limit, and damage comes from
    --  ComputeLocationalMultiplier rather than contact area. It applied perfectly and did nothing.)

    task.spawn(function()
        while not PX.UNLOADED do
            local cont = fishContainer()
            local root = myRoot()
            if cont then
                local live = {}
                for _, fish in ipairs(cont:GetChildren()) do
                    if fish:IsA("Model") then
                        live[fish] = true
                        local part = fishPart(fish)
                        local dist = (part and root) and (part.Position - root.Position).Magnitude or 1e9
                        -- ESP (nearby only, to cap the highlight count)
                        if PX.FISH_ESP and dist <= ESP_RANGE then
                            local e = ensureESP(fish)
                            if e.lbl then e.lbl.Text = "Fish  " .. math.floor(dist) .. "m" end
                        else
                            removeESP(fish)
                        end
                        -- (Hitbox expansion moved to a per-frame step below — a 0.15s loop loses
                        --  the race against the server re-replicating the fish's original size.)
                    end
                end
                for fish in pairs(PX.fishESP) do if not live[fish] then removeESP(fish) end end
            end
            task.wait(0.15)
        end
        for fish in pairs(PX.fishESP) do removeESP(fish) end            -- clean up on unload
    end)
end

-- ═══════════════════════════════════════
-- VEGETATION ESP  (what a herbivore can eat, and how far away it is)
-- ═══════════════════════════════════════
-- Reuses exactly what Force Eat already proved: consumables carry the CollectionService tag
-- "FoliageStreamable", the tagged instance's PARENT holds the bite ID and a Name that keys into
-- ConsumptionData.FoliageConsumables, and CharacterState.Data.Diet.Categories decides whether an
-- entry actually feeds THIS dino. Nothing new is guessed at here.
--
-- A billboard per plant is not an option. A forest is thousands of tagged instances, and that many
-- BillboardGuis would cost more frame time than every other feature combined. So this keeps a fixed
-- POOL of labels and re-points them at the nearest few plants on each refresh: the cost is bounded
-- by the pool size, not by how much foliage the map has. GetTagged returns a flat array, so finding
-- them never walks the workspace tree — which is the one thing the README bans outright.
do
    PX.VEG_ESP = false
    -- 1500 rather than a few hundred: the scan showed a carnivore's nearest edible entries sitting
    -- 900-1600 studs out (Shellfish 952, BonePile 1051, DinosaurNest 1536). A short default made
    -- the diet filter show an empty screen, which reads as the feature being broken.
    PX.VEG_DISTANCE = 1500           -- studs; plants past this are ignored entirely
    -- Labels alive at once = the pool size. 25 was too tight: in a meadow the nearest 25 plants are
    -- all ground foliage, so they took every slot and the trees standing right next to you never
    -- got one — which reads as "trees don't show up" rather than "the list is full". It's a slider
    -- now, because the right number depends entirely on how dense your patch is.
    PX.VEG_MAX = 40
    PX.VEG_DIET_ONLY = false         -- hide plants this dino's diet can't use
    PX.VEG_HIDE_EATEN = false        -- hide plants that have been stripped
    PX.VEG_COLOR_OK = Color3.fromRGB(120, 240, 120)   -- edible for you, still has food
    PX.VEG_COLOR_NO = Color3.fromRGB(170, 170, 170)   -- foliage, but not on your diet
    PX.VEG_COLOR_EATEN = Color3.fromRGB(120, 95, 60)  -- stripped; nothing left to eat
    PX.vegPool = {}
    PX.vegAllowCache = {}
    PX.VEG_CS = game:GetService("CollectionService")

    -- Required lazily: neither module is reliably reachable the instant the hub loads.
    function PX.vegData()
        if not PX.vegCData then pcall(function() PX.vegCData = PX.req(PX.WATER_RS.Shared.ConsumptionData) end) end
        if not PX.vegCState then PX.vegCState = PX.getCS() end   -- nil on Xeno
        return PX.vegCData, PX.vegCState
    end

    -- The tagged instance is usually a part whose PARENT model carries the ID — but not always.
    -- Some foliage, the big trees especially, nests a level deeper, and assuming the immediate
    -- parent meant those were skipped entirely: they never got an ID, so they never became a
    -- candidate, so they never got a label no matter how close you stood to them.
    function PX.vegResolve(inst)
        local node = inst
        for _ = 1, 3 do
            if not node or node == workspace then break end
            local id = node:GetAttribute("ID")
            if id then return node, id end
            node = node.Parent
        end
        return nil, nil
    end

    -- Does this plant feed us? Cached per species name: the answer only changes when the diet does
    -- (a new dino), and the cache is dropped on respawn below. Without the cache this would re-walk
    -- the Actions list for every plant on every refresh.
    function PX.vegAllowed(name)
        local cached = PX.vegAllowCache[name]
        if cached ~= nil then return cached end
        local CData, CState = PX.vegData()
        local allowed = false
        pcall(function()
            local entry = CData.FoliageConsumables[name]
            local actions = entry and entry.Actions
            if type(actions) == "table" then
                for _, a in ipairs(actions) do
                    if type(a) == "table" and a.Category
                        and CState.Data.Diet.Categories[a.Category] ~= nil then
                        allowed = true
                        break
                    end
                end
            end
        end)
        PX.vegAllowCache[name] = allowed
        return allowed
    end

    -- Labels live in a Folder under PlayerGui and point at plants via Adornee, rather than being
    -- parented into the plants themselves. A streamed-out plant then takes nothing with it — the
    -- pool survives and simply re-points next refresh.
    function PX.vegContainer()
        if PX.vegFolder and PX.vegFolder.Parent then return PX.vegFolder end
        local pg = LocalPlayer:FindFirstChild("PlayerGui")
        if not pg then return nil end
        local f = Instance.new("Folder")
        f.Name = "EazyCheatsVegESP"
        f.Parent = pg
        PX.vegFolder = f
        return f
    end

    function PX.vegLabel(i, container)
        local e = PX.vegPool[i]
        if e and e.bb.Parent then return e end
        local bb = Instance.new("BillboardGui")
        bb.Name = "VegLabel"
        bb.Size = UDim2.new(0, 160, 0, 20)
        bb.StudsOffset = Vector3.new(0, 2.5, 0)
        bb.AlwaysOnTop = true
        bb.LightInfluence = 0
        bb.Enabled = false
        local l = Instance.new("TextLabel")
        l.Name = "Label"
        l.Size = UDim2.new(1, 0, 1, 0)
        l.BackgroundTransparency = 1
        l.Font = Enum.Font.GothamBold
        l.TextSize = 12
        l.TextStrokeTransparency = 0
        l.TextStrokeColor3 = Color3.new(0, 0, 0)
        l.Parent = bb
        bb.Parent = container
        e = { bb = bb, lbl = l }
        PX.vegPool[i] = e
        return e
    end

    function PX.vegHideAll()
        for _, e in pairs(PX.vegPool) do
            pcall(function() e.bb.Enabled = false; e.bb.Adornee = nil end)
        end
    end

    -- A new dino means a new diet, so what counts as edible has to be worked out again.
    table.insert(allConnections, LocalPlayer.CharacterAdded:Connect(function()
        PX.vegAllowCache = {}
        PX.vegCState = nil
    end))

    -- Twice a second is plenty for labels you read while walking, and it keeps the tag sweep well
    -- clear of the per-frame budget.
    PX.addStep(30, function()
        if PX.UNLOADED then return end
        if not PX.VEG_ESP then
            if PX.vegFolder then PX.vegHideAll() end
            return
        end
        local root = PX.getLocalRoot()
        local cont = PX.vegContainer()
        if not (root and cont) then return end
        local myPos = root.Position
        local maxD = PX.VEG_DISTANCE
        -- Drop cached plants that have left the world (streamed out) every ~30s, so the cache
        -- can't grow for as long as the session runs.
        PX.vegInstCache = PX.vegInstCache or {}
        PX.vegSweeps = (PX.vegSweeps or 0) + 1
        if PX.vegSweeps % 60 == 0 then
            for k in pairs(PX.vegInstCache) do
                if not k.Parent then PX.vegInstCache[k] = nil end
            end
        end

        local found, seen = {}, {}
        pcall(function()
            for _, inst in ipairs(PX.VEG_CS:GetTagged("FoliageStreamable")) do
                -- Resolved once per tagged part and reused: its plant model, food ID and the part to
                -- hang the label on never change while it exists. Recursive search because on nested
                -- foliage the tagged instance may be a Model, and a shallow one finds nothing.
                local c = PX.vegInstCache[inst]
                if not (c and c.part.Parent) then
                    local model, rid = PX.vegResolve(inst)
                    local part = rid and (inst:IsA("BasePart") and inst or inst:FindFirstChildWhichIsA("BasePart", true))
                    c = part and { model = model, id = rid, part = part } or nil
                    PX.vegInstCache[inst] = c
                end
                local par, id = c and c.model, c and c.id
                -- Two filters, both learned from the scan:
                --   * No ID means the game can't bite it either, so it isn't food.
                --   * ONE PLANT TAGS SEVERAL OF ITS OWN PARTS — a RechteniiSmall tags its trunk,
                --     its branches AND its leaves, all sharing the parent's ID. Without keying on
                --     that ID the pool draws three labels on one bush and the useful range of the
                --     ESP collapses to a third of its slots.
                --   * Foliage also exists under ReplicatedStorage.SelectionBackground.Map (the
                --     dino-selection backdrop). It is not in the world, so its distance is
                --     meaningless and it must never be labelled.
                if id and not seen[id] and par:IsDescendantOf(workspace) then
                    local part = c.part
                    if part then
                        seen[id] = true          -- decided about this plant, in range or not
                        local d = (part.Position - myPos).Magnitude
                        if d <= maxD then
                            local ok = PX.vegAllowed(par.Name)
                            -- HAS IT GOT FOOD LEFT? The "Spawned" attribute, caught flipping live:
                            -- a burst of ConsumableData buffer updates (one per bite) drained the
                            -- reserve and then Spawned went true -> false the instant the plant was
                            -- stripped, while every untouched plant stayed true. The buffer holds
                            -- the fine-grained amount, but this boolean is the part that answers
                            -- "can I still eat from it", and it costs one attribute read on a model
                            -- we already have in hand. nil (attribute absent) counts as stocked —
                            -- better to walk to a plant that turns out to be bare than to hide one
                            -- that was fine.
                            -- Prefer the REAL remaining amount over the Spawned boolean now that
                            -- the string-key lookup works. Spawned only flips once a plant is
                            -- completely stripped, so a nearly-bare one still read as full; the
                            -- buffer knows the difference and can show you the number.
                            local food = PX.khFoodOf(id)
                            local eaten
                            if food then eaten = (food <= 0)
                            else eaten = (par:GetAttribute("Spawned") == false) end
                            if (ok or not PX.VEG_DIET_ONLY) and not (eaten and PX.VEG_HIDE_EATEN) then
                                found[#found + 1] = { part = part, name = par.Name, d = d,
                                                      ok = ok, eaten = eaten, food = food }
                            end
                        end
                    end
                end
            end
        end)
        -- Ranked, then nearest. Sorting on distance alone spends every label on whatever thicket
        -- you happen to be standing in: the scan found 1,276 RechteniiSmall within 20 studs and the
        -- nearest thing an Allosaurus could actually eat 950 studs away, so a pure distance sort
        -- buries the one result worth having. Stripped plants rank below stocked ones for the same
        -- reason — a bare bush is worth knowing about, but never ahead of one you can feed from.
        -- DIET IS NOT A RANKING FACTOR. It was, and that was the bug behind "the trees never show
        -- up": Force Eat bypasses the diet gate, so an off-diet Sequoia is just as edible as an
        -- on-diet fern — but ranking pushed every off-diet plant below every on-diet one, and in a
        -- meadow there are hundreds of on-diet ferns. The trees were being computed, ranked, and
        -- then pushed off the end of the label pool every single refresh. Diet still drives the
        -- COLOUR, which is where it belongs: information, not a filter.
        local function rank(e)
            return e.eaten and 1 or 0                       -- stocked first, then stripped
        end
        table.sort(found, function(a, b)
            local ra, rb = rank(a), rank(b)
            if ra ~= rb then return ra < rb end
            return a.d < b.d
        end)

        for i = 1, PX.VEG_MAX do
            local e = PX.vegLabel(i, cont)
            local f = found[i]
            if f then
                e.bb.Adornee = f.part
                e.bb.Enabled = true
                -- Show the actual food left when we can read it, so you can tell a full plant from
                -- one with a couple of bites on it at a glance.
                local amount = ""
                if f.eaten then amount = "  (eaten)"
                elseif f.food then amount = "  " .. math.floor(f.food) .. "f" end
                e.lbl.Text = f.name .. amount .. "  " .. math.floor(f.d) .. "m"
                -- Stripped wins over diet colour: whether there is anything left to eat matters
                -- more than whose diet it was on.
                e.lbl.TextColor3 = f.eaten and PX.VEG_COLOR_EATEN
                    or (f.ok and PX.VEG_COLOR_OK or PX.VEG_COLOR_NO)
            else
                e.bb.Enabled = false
                e.bb.Adornee = nil
            end
        end
    end)
end

PX.UIS = game:GetService("UserInputService")

-- ═══════════════════════════════════════
-- MOBILE TOUCH CONTROLS
-- ═══════════════════════════════════════
-- Several features are driven by holding a key — Fly (WASD/Space/Ctrl), Quick Turn (A/D),
-- Insta Turn. A phone has no keyboard, so on mobile those features
-- were present in the menu and impossible to actually use.
--
-- This puts the missing keys on screen. Everything here is ADDITIVE and gated behind IS_MOBILE:
-- the features read `IsKeyDown(...) or PX.mob.<x>`, so on desktop PX.mob stays all-false and the
-- original keyboard path is bit-for-bit unchanged.
--
-- Pads only appear while the feature that needs them is on, so the screen isn't cluttered with
-- controls for things you aren't running.
PX.IS_MOBILE = PX.UIS.TouchEnabled and not PX.UIS.KeyboardEnabled
pcall(function()
    -- Same opt-in preview switch gui.lua uses, so the pads can be checked on a desktop executor.
    if type(getgenv) == "function" and getgenv().EZ_FORCE_MOBILE then PX.IS_MOBILE = true end
end)
PX.mob = { fwd = false, back = false, left = false, right = false, up = false, down = false,
           turnL = false, turnR = false, insta = false, trimUp = false, trimDown = false }

if PX.IS_MOBILE then
    local BTN = Color3.fromRGB(28, 22, 42)
    local BTN_ON = Color3.fromRGB(120, 70, 220)

    local mg = Instance.new("ScreenGui")
    mg.Name = "EazyCheatsTouch"; mg.ResetOnSpawn = false; mg.IgnoreGuiInset = true
    mg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    pcall(function() mg.Parent = (gethui and gethui()) or game:GetService("CoreGui") end)
    if not mg.Parent then mg.Parent = LocalPlayer:WaitForChild("PlayerGui") end
    PX.mobGui = mg

    -- A hold button: sets PX.mob[field] true while pressed. Touch only ever reports Began/Ended
    -- on the button itself, and InputEnded fires even if the finger slides off, so a stuck-on
    -- direction isn't possible the way it would be with a raw TouchTap.
    local function holdButton(parent, text, field, pos, size)
        local b = Instance.new("TextButton")
        b.Name = "Hold_" .. field
        b.Size = size or UDim2.new(0, 58, 0, 58)
        b.Position = pos
        b.BackgroundColor3 = BTN
        b.BackgroundTransparency = 0.25
        b.BorderSizePixel = 0
        b.Text = text
        b.TextColor3 = Color3.fromRGB(235, 225, 255)
        b.Font = Enum.Font.GothamBold
        b.TextSize = 18
        b.AutoButtonColor = false
        b.Parent = parent
        Instance.new("UICorner", b).CornerRadius = UDim.new(0, 10)
        local stroke = Instance.new("UIStroke", b)
        stroke.Color = Color3.fromRGB(150, 90, 255); stroke.Thickness = 1.5; stroke.Transparency = 0.4
        local function set(on)
            PX.mob[field] = on
            b.BackgroundColor3 = on and BTN_ON or BTN
        end
        b.InputBegan:Connect(function(i)
            if i.UserInputType == Enum.UserInputType.Touch
                or i.UserInputType == Enum.UserInputType.MouseButton1 then set(true) end
        end)
        b.InputEnded:Connect(function(i)
            if i.UserInputType == Enum.UserInputType.Touch
                or i.UserInputType == Enum.UserInputType.MouseButton1 then set(false) end
        end)
        table.insert(allConnections, b.MouseLeave:Connect(function() set(false) end))
        return b
    end

    local function pad(name, w, h, pos)
        local f = Instance.new("Frame")
        f.Name = name; f.Size = UDim2.new(0, w, 0, h); f.Position = pos
        f.BackgroundTransparency = 1; f.Visible = false; f.Parent = mg
        return f
    end

    -- ── Fly pad: bottom-left D-pad + a vertical pair on its right ────────────────────────────
    PX.mobFlyPad = pad("FlyPad", 200, 200, UDim2.new(0, 24, 1, -224))
    holdButton(PX.mobFlyPad, "▲", "fwd",   UDim2.new(0, 62, 0, 0))
    holdButton(PX.mobFlyPad, "◀", "left",  UDim2.new(0, 0, 0, 62))
    holdButton(PX.mobFlyPad, "▶", "right", UDim2.new(0, 124, 0, 62))
    holdButton(PX.mobFlyPad, "▼", "back",  UDim2.new(0, 62, 0, 124))
    holdButton(PX.mobFlyPad, "+", "up",    UDim2.new(0, 196, 0, 20),  UDim2.new(0, 52, 0, 52))
    holdButton(PX.mobFlyPad, "−", "down",  UDim2.new(0, 196, 0, 104), UDim2.new(0, 52, 0, 52))

    -- ── Turn pad: bottom-right, for Quick Turn and Insta Turn ───────────────────────────────
    PX.mobTurnPad = pad("TurnPad", 200, 70, UDim2.new(1, -224, 1, -100))
    holdButton(PX.mobTurnPad, "↰", "turnL", UDim2.new(0, 0, 0, 0))
    holdButton(PX.mobTurnPad, "↱", "turnR", UDim2.new(0, 68, 0, 0))
    holdButton(PX.mobTurnPad, "◎", "insta", UDim2.new(0, 136, 0, 0))

    -- Show each pad only while something needs it, so the screen isn't covered in controls for
    -- features you aren't running. Polled a few times a second rather than per-frame.
    --
    -- The turn pad is the exception: Insta Turn is a HELD KEY with no toggle of its own, and a
    -- phone can't bind a key at all, so its button has to be reachable whenever Quick Turn is off
    -- too. It stays up alongside Fly, which is when turning assistance actually matters.
    PX.MOB_SHOW_TURN = false     -- off on a fresh start; Settings > Mobile turns it on
    PX.addStep(10, function()
        if PX.UNLOADED then return end
        local wantFly = PX.FLY and true or false
        if PX.mobFlyPad.Visible ~= wantFly then PX.mobFlyPad.Visible = wantFly end

        local wantTurn = PX.MOB_SHOW_TURN and (PX.QUICK_TURN or PX.FLY) and true or false
        if PX.mobTurnPad.Visible ~= wantTurn then PX.mobTurnPad.Visible = wantTurn end
    end)
end

-- === GUI ===
-- EZ GUI V1.0, loaded from eazycheats.com/s/ez-gui. The menu code below was written against the
-- old EazyCheats gui.lua API, so PX.ezBridge wraps EZ in that API and none of it has to change.

-- Where everything goes. Rearranging the menu means editing these tables, never the feature code.
--   MAIN      the launcher's tabs, in order
--   SUB_MAIN  which main tab each old sub-tab's features land in
--   WHERE     per-feature override of SUB_MAIN
--   NEST      feature -> settings that live inside it (right-click the feature to open them).
--             "Sub-tab/Name" picks one of a repeated name, like the three "Parts" pickers.
--   HEADERS   per main tab: old section name -> header shown above those features
--   ORDER     per main tab: these features come first, in this order (the rest follow)
--   LOCKED    features left out of this build, with the settings nested inside them. Empty here;
--             the free build fills it in (Tools/build-free.js).
--   RENAME    feature name -> what the menu shows (anything not listed just drops a leading "Enable")
PX.MENU_LAYOUT = {
    MAIN = { "AutoFarm", "Stats", "Combat", "Render", "Tools" },
    RENAME = { ["Enable ESP"] = "Players",
        ["Players on Minimap"] = "Players", ["Corpses on Minimap"] = "Corpses", ["Fossils on Minimap"] = "Fossils",
        ["Small Fossil Distance"] = "Distance", ["Medium Fossil Distance"] = "Distance", ["Large Fossil Distance"] = "Distance",
        ["Legit Avoid Radius"] = "Player Avoid Radius",
        ["Legit Search Distance"] = "Search Distance", ["Legit Leave Scraps"] = "Leave Scraps",
        ["Legit Flee From Players"] = "Flee From Players", ["Legit Unstuck"] = "Unstuck (Fly Out)",
        ["Legit Tab Out"] = "Keep Farming Tabbed Out",
        ["Legit Rest To Heal"] = "Rest To Heal", ["Legit Admin Kick"] = "Admin Kick",
        ["Legit Never Stand Still"] = "Never Stand Still",
        ["Legit Fly Away From Players"] = "Fly Away From Players", ["Legit Fly Away Radius"] = "Fly Away Radius" },
    SUB_MAIN = {
        ["Fossil Farm"] = "AutoFarm", ["Autofarm"] = "Stats", ["Auto Spawn"] = "AutoFarm",
        ["Hitbox Expander"] = "Combat", ["Reach"] = "Combat", ["Attack Tools"] = "Combat",
        ["ESP"] = "Render", ["World"] = "Render", ["Tools"] = "Render",
        ["Save Dino"] = "Tools", ["Movement"] = "Tools", ["Mod Check"] = "Tools", ["Config"] = "Tools",
    },
    WHERE = {
        ["AFK Farm"] = "AutoFarm", ["Legit Farm"] = "AutoFarm", ["Auto Switch Dino"] = "AutoFarm", ["Farm Timer"] = "AutoFarm", ["Rejoin"] = "AutoFarm", ["Anti AFK"] = "Tools", ["FPS Saver"] = "AutoFarm", ["Auto Grow"] = "Tools",
        ["Show Module List"] = "Tools", ["Stats Card"] = "Tools", ["Reset Stats Card Position"] = "Tools",
        ["Unlimited Zoom"] = "Tools", ["FOV Changer"] = "Tools",
        ["Minimap"] = "Tools",
    },
    NEST = {
        ["Force Eat"] = { "Fast Eat", "Eat Only When Hungry", "Leave Scraps" },
        ["Auto Water"] = { "Water Anywhere" },
        ["AFK Farm"] = { "Player Avoid Radius", "Simulate Walking", "Safety (Hide & Heal)", "Admin Kick", "Flee From Players", "Unstuck" },
        ["Legit Farm"] = { "Legit Never Stand Still", "Legit Avoid Radius", "Legit Search Distance", "Legit Leave Scraps",
            "Legit Flee From Players", "Legit Fly Away From Players", "Legit Fly Away Radius", "Legit Unstuck",
            "Legit Tab Out",
            "Legit Rest To Heal", "Legit Admin Kick" },
        ["Auto Switch Dino"] = { "Switch Slot 1", "Switch Slot 2", "Switch Slot 3", "Switch Slot 4", "Switch Slot 5",
            "Switch Slot 6", "Switch Gender", "Smallest To Biggest", "Allow Unlocking New Dinos", "Finished Dinos" },
        ["Farm Timer"] = { "Leave After (minutes)" },
        ["Rejoin"] = { "Rejoin Map", "Farm Dino", "Auto-Leave Empty Server", "Leave Under (players)" },
        ["Enable Hitbox Expander"] = { "Visualize Hitboxes", "Visual Opacity", "Hitbox Multiplier", "Hitbox Expander/Parts" },
        ["Enable Reach"] = { "Visualize Reach", "Reach Visual Opacity", "Reach Multiplier", "Reach/Parts" },
        ["Instant Attack"] = { "Attack Speed" },
        ["Enable Silent Aim"] = { "Attack Tools/Parts" },
        ["Save Dino"] = { "Auto-Save at Health %", "Include Bleed", "Auto-Save Threshold %" },
        ["Teleport to Corpse"] = { "Chain Corpses" },
        ["Biome Travel"] = { "Destination" },
        ["Quick Turn"] = { "Turn Strength" },
        ["Enable ESP"] = { "Show Name", "Show Dino Type", "Show Stage", "Show Gender", "Show Health", "Show Stamina",
            "Food Bar", "Food Number", "Water Bar", "Water Number", "Infection Bar", "Infection Number", "Infected Tag",
            "Show Weight", "Bleed ESP", "Pack ESP", "Pack Leader ESP", "Show Distance", "Text Highlight",
            "Text Size", "Health Bar Height", "Health Bar Width", "Stamina Bar Height", "Stamina Bar Width",
            "ESP Distance", "Enable Chams" },
        ["Enable Chams"] = { "Chams Fill Transparency", "Chams Outline Transparency" },
        ["Show Corpses"] = { "Corpse/Meat Text Size", "Corpse Distance", "Show Infection" },
        ["Show Meat"] = { "Meat Distance" },
        ["FOV Changer"] = { "FOV" },
        ["Stats Card"] = { "Dino Name", "Growth Stage", "Mass Gain Multiplier", "Weight", "Growth Timer", "Stage Timer", "Nutrition Stats",
            "Wellbeing Stats", "Drag Stats Card", "Hide While Menu Open" },
        ["Custom Time"] = { "Hour", "Quick Set" },
        ["Small Fossils"] = { "Small Fossil Distance" },
        ["Medium Fossils"] = { "Medium Fossil Distance" },
        ["Large Fossils"] = { "Large Fossil Distance" },
        ["Vegetation ESP"] = { "Only My Diet", "Hide Eaten Plants", "Vegetation Distance", "Max Labels" },
        ["Show Clay Deposits"] = { "Clay Distance" },
        ["Mod Check"] = { "Auto Leave" },
        ["Minimap"] = { "Players on Minimap", "Corpses on Minimap", "Fossils on Minimap" },
    },
    ORDER = {
        AutoFarm = { "Fossil Farm", "AFK Farm", "Legit Farm", "Auto Switch Dino", "Farm Timer", "Rejoin", "Auto Spawn" },
        Stats = { "Force Eat", "Carry Any Corpse", "Auto Water", "Auto Cleanliness", "Infinite Oxygen" },
    },
    HEADERS = {},
    LOCKED = {},
}

-- What the menu, and its toasts, call a feature.
function PX.displayName(name)
    local key = (tostring(name or ""):gsub("^%s+", ""):gsub("%s+$", ""))
    local renamed = PX.MENU_LAYOUT.RENAME and PX.MENU_LAYOUT.RENAME[key]
    return renamed or (key:gsub("^Enable%s+", ""))
end

function PX.ezBridge(EZ)
    local UIS = game:GetService("UserInputService")
    local RS = game:GetService("RunService")
    local LAYOUT = PX.MENU_LAYOUT
    local Bridge = { Caps = { sectionInfo = true } }

    local function trim(s)
        return (tostring(s or ""):gsub("^%s+", ""):gsub("%s+$", ""))
    end

    -- A section's help text is "Name: what it does" lines. EZ has no section help panel, so each
    -- feature gets its own line as a note inside its right-click panel instead.
    local function parseInfo(info)
        local notes, last = {}, nil
        for line in (tostring(info) .. "\n"):gmatch("(.-)\n") do
            local name, desc = line:match("^%s*([^:]+):%s*(.+)$")
            if name and #name <= 40 then
                last = trim(name)
                notes[last] = desc
            elseif last and line:match("%S") then
                notes[last] = notes[last] .. " " .. line
            else
                last = nil   -- a blank line ends the entry, so a closing paragraph is not tacked on
            end
        end
        return notes
    end

    local function wrapToggle(t)
        local obj = {}
        function obj:Set(v, silent)
            v = v and true or false
            if silent then pcall(function() t:Set(v) end) return end
            -- The setting first, the look second: a GUI write the thread may not do (the weather
            -- controller left config loads unable to) must never stop the setting itself.
            t.Enabled = v
            pcall(t.Callback, v)
            pcall(function() t:_applyVisual() end)
        end
        function obj:SetKey(k, _silent)
            if typeof(k) == "EnumItem" and k ~= Enum.KeyCode.Unknown then
                t:SetKeybind(k.Name)
            else
                t.Keybind = nil
                pcall(function()
                    t._kbBtn.Text = "..."
                    t:_markBound(false)
                end)
            end
        end
        return setmetatable(obj, { __index = function(_, k)
            if k == "Key" then return t.Keybind or Enum.KeyCode.Unknown end
            if k == "Value" or k == "State" then return t.Enabled end
            return nil
        end })
    end

    -- A setting inside a feature's right-click panel.
    local function nestedToggle(parent, cfg, tip)
        local cb = cfg.Callback or function() end
        local h = parent:AddSubToggle({ Name = PX.displayName(cfg.Name), Default = cfg.Default and true or false, Tooltip = tip, Callback = cb })
        local obj = {}
        function obj:Set(v, silent)
            if not silent then pcall(cb, v and true or false) end   -- the setting first (see wrapToggle)
            pcall(function() h:Set(v, false) end)
        end
        function obj:SetKey() end
        return setmetatable(obj, { __index = function(_, k)
            if k == "Key" then return Enum.KeyCode.Unknown end
            if k == "Value" or k == "State" then return h.Value end
            return nil
        end })
    end

    local function wrapSlider(host, cfg)
        local cb = cfg.Callback or function() end
        local h = host:AddSlider({
            Name = PX.displayName(cfg.Name), Min = cfg.Min, Max = cfg.Max, Default = cfg.Default,
            Step = cfg.Increment or 1, Callback = cb,
        })
        local obj = {}
        function obj:Set(v, silent)
            pcall(function() h:Set(v) end)   -- clamps into h.Value before it touches the GUI
            if not silent then pcall(cb, h.Value ~= nil and h.Value or v) end
        end
        return setmetatable(obj, { __index = function(_, k)
            if k == "Value" then return h.Value end
            return nil
        end })
    end

    local function wrapDropdown(host, cfg)
        local cb = cfg.Callback or function() end
        local h = host:AddDropdown({
            Name = trim(cfg.Name), Options = cfg.Items or cfg.Options or {}, Default = cfg.Default, Callback = cb,
        })
        local obj = {}
        function obj:Set(v, silent)
            pcall(function() h:Set(v) end)
            if not silent then pcall(cb, v) end
        end
        function obj:Refresh(newItems, _keep)
            self._items = newItems
            h:Refresh(newItems or {})
        end
        return setmetatable(obj, { __index = function(_, k)
            if k == "Selected" then return h.Selected end
            return nil
        end })
    end

        -- Part pickers: the list stays open and each click ticks or unticks one entry.
    local function multiDropdown(host, cfg)
        local cb = cfg.Callback or function() end
        local h = host:AddDropdown({
            Name = trim(cfg.Name), Options = cfg.Items or cfg.Options or {}, Multi = true, Default = cfg.Default,
            Callback = function(selected) pcall(cb, selected) end,
        })
        local obj = {}
        function obj:Set(val, silent)
            h:Set(type(val) == "table" and val or {}, not silent)
        end
        function obj:Refresh(newItems, keep)
            self._items = newItems
            if not keep then h:Set({}, false) end
            h:Refresh(newItems or {})
        end
        return setmetatable(obj, { __index = function(_, k)
            if k == "Selected" then
                local c = {}
                for item in pairs(h.Selected or {}) do c[item] = true end
                return c
            end
            return nil
        end })
    end

    -- EZ has no standalone keybind control: a button row shows the key; click it, then press one.
    local function keybindRow(host, cfg)
        local name = trim(cfg.Name or "Keybind")
        local changed = cfg.Changed or cfg.Callback or function() end
        local obj = { Key = typeof(cfg.Default) == "EnumItem" and cfg.Default or Enum.KeyCode.Unknown }
        local label
        local function show(text)
            if label then
                label.Text = text or (name .. ":  " .. (obj.Key == Enum.KeyCode.Unknown and "none" or obj.Key.Name))
            end
        end
        local capturing = false
        local row = host:AddButton({
            Name = name,
            Callback = function()
                if capturing then return end
                capturing = true
                show(name .. ":  press a key (Esc clears)")
                local conn
                conn = UIS.InputBegan:Connect(function(input)
                    if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
                    conn:Disconnect()
                    capturing = false
                    obj.Key = (input.KeyCode == Enum.KeyCode.Escape) and Enum.KeyCode.Unknown or input.KeyCode
                    show()
                    pcall(changed, obj.Key)
                end)
            end,
        })
        for _, c in ipairs(row:GetChildren()) do
            if c:IsA("TextLabel") and c.Text == name then
                label = c
                break
            end
        end
        show()
        function obj:Set(k, silent)
            if typeof(k) == "EnumItem" then obj.Key = k end
            show()
            if not silent then pcall(changed, obj.Key) end
        end
        return obj
    end

    -- A locked feature: nothing is drawn and every call on it does nothing, so the code that still
    -- holds the row (config load, AFK Farm switching Fly off, ...) runs unchanged.
    local function lockedRow()
        return setmetatable({}, { __index = function(_, k)
            if k == "Key" then return Enum.KeyCode.Unknown end
            if k == "Value" or k == "State" then return false end
            if k == "Selected" then return {} end
            return function() end
        end })
    end

    -- One old sub-tab. Its controls are routed by PX.MENU_LAYOUT: settings go inside their feature,
    -- everything else onto a main tab under that tab's header for the old section.
    local function makeSub(ctx, subName)
        local proxy, notes, section = {}, {}, nil

        local function isLocked(name)
            local key = trim(name)
            return ctx.locked[key] or ctx.locked[subName .. "/" .. key]
        end

        local function hostFor(name, allowNest)
            local key = trim(name)
            if allowNest then
                local parentName = ctx.parentOf[subName .. "/" .. key] or ctx.parentOf[key]
                local parent = parentName and ctx.masters[parentName]
                if parent then return parent, true end
            end
            local tabName = LAYOUT.WHERE[key] or LAYOUT.SUB_MAIN[subName] or LAYOUT.MAIN[#LAYOUT.MAIN]
            if not ctx.tabs[tabName] then ctx.tabs[tabName] = ctx.win:AddTab(tabName) end
            local ez = ctx.tabs[tabName]
            local hdrs = LAYOUT.HEADERS[tabName]
            local hdr = hdrs and section and hdrs[section]
            if hdr and ctx.lastHeader[tabName] ~= hdr then
                ez:AddSection(hdr)
                ctx.lastHeader[tabName] = hdr
            end
            return ez, false, tabName
        end

        -- Free build on a menu with Premium rows (EZ gui Fusion 1.1+): a locked feature is still drawn where
        -- premium has it, under chains. A name only: the code keeps the stand-in row, nothing runs behind it.
        local function locked(name)
            local key = trim(name)
            if ctx.premiumRows and ctx.lockedTop[key] then
                pcall(function()
                    local host, _, tabName = hostFor(name, true)
                    local t = host:AddToggle({ Name = PX.displayName(key), Premium = true })
                    local rank = tabName and ctx.rank[tabName] and ctx.rank[tabName][key]
                    if rank then t._container.LayoutOrder = rank - 100000 end
                end)
            end
            return lockedRow()
        end

        function proxy:AddSection(cfg)
            section = type(cfg) == "table" and cfg.Name or cfg
            notes = (type(cfg) == "table" and cfg.Info) and parseInfo(cfg.Info) or {}
            return nil
        end

        function proxy:AddToggle(cfg)
            cfg = cfg or {}
            if isLocked(cfg.Name) then return locked(cfg.Name) end
            local host, nested, tabName = hostFor(cfg.Name, true)
            if nested then
                local key = trim(cfg.Name)
                if not ctx.hasKids[key] then return nestedToggle(host, cfg, cfg.Tooltip or notes[key]) end
                -- A setting with settings of its own becomes a full row inside its parent's panel.
                local t = host:AddToggle({
                    Name = PX.displayName(key),
                    Default = false,
                    Tooltip = cfg.Tooltip or notes[key],
                    Callback = cfg.Callback or function() end,
                })
                if cfg.Default then t:Set(true) end
                ctx.masters[key] = t
                return wrapToggle(t)
            end
            local key = trim(cfg.Name)
            local t = host:AddToggle({
                Name = PX.displayName(key),
                Default = false,   -- the old API never fired the callback at creation; EZ does for true
                Keybind = type(cfg.Keybind) == "string" and cfg.Keybind or nil,
                Tooltip = cfg.Tooltip or notes[key],
                Callback = cfg.Callback or function() end,
            })
            if cfg.Default then t:Set(true) end
            ctx.masters[key] = t
            local rank = ctx.rank[tabName] and ctx.rank[tabName][key]
            if rank then t._container.LayoutOrder = rank - 100000 end
            return wrapToggle(t)
        end

        function proxy:AddSlider(cfg)
            cfg = cfg or {}
            if isLocked(cfg.Name) then return locked(cfg.Name) end
            return wrapSlider(hostFor(cfg.Name, true), cfg)
        end

        function proxy:AddDropdown(cfg)
            cfg = cfg or {}
            if isLocked(cfg.Name) then return locked(cfg.Name) end
            local host = hostFor(cfg.Name, true)
            if cfg.Multi then return multiDropdown(host, cfg) end
            return wrapDropdown(host, cfg)
        end

        function proxy:AddButton(cfg)
            cfg = cfg or {}
            if isLocked(cfg.Name) then return locked(cfg.Name) end
            return (hostFor(cfg.Name, false)):AddButton({ Name = trim(cfg.Name), Callback = cfg.Callback })
        end

        -- A read-only line of text (Auto Switch's finished dinos): inside its feature's panel when NEST
        -- puts it there, else on the tab. Returns a row with :SetText; a locked one ignores it.
        function proxy:AddLabel(cfg)
            cfg = cfg or {}
            if isLocked(cfg.Name) then return locked(cfg.Name) end
            local lbl
            pcall(function()
                local host, nested = hostFor(cfg.Name, true)
                if nested and host.AddNote then
                    lbl = host:AddNote(cfg.Text or "")
                elseif not nested and host.AddLabel then
                    lbl = host:AddLabel(cfg.Text or "")
                end
            end)
            return { SetText = function(selfL, s)
                selfL._text = s
                pcall(function()
                    if typeof(lbl) == "Instance" then lbl.Text = tostring(s)
                    elseif lbl and lbl.SetText then lbl:SetText(tostring(s)) end
                end)
            end }
        end

        function proxy:AddKeybind(cfg)
            cfg = cfg or {}
            if isLocked(cfg.Name) then return locked(cfg.Name) end
            return keybindRow((hostFor(cfg.Name, false)), cfg)
        end

        -- Every build call is kept, in order, so the whole menu can be rebuilt in another GUI (Hub:SwapGui).
        -- A replay calls the raw method: the hub's own wrappers (toasts, the toggle registry) already ran once,
        -- and the objects they hold are the ones the replay re-points at the new rows.
        proxy._raw = {}
        for _, m in ipairs({ "AddSection", "AddToggle", "AddSlider", "AddDropdown", "AddButton", "AddLabel", "AddKeybind" }) do
            local f = proxy[m]
            proxy._raw[m] = f
            proxy[m] = function(selfP, cfg, ...)
                local r = f(selfP, cfg, ...)
                local rec = ctx.rec
                if rec and not rec.replaying then
                    rec.log[#rec.log + 1] = { proxy = proxy, method = m, cfg = cfg, obj = r }
                end
                return r
            end
        end
        return proxy
    end

    function Bridge.new(cfg)
        cfg = cfg or {}
        local genv = (type(getgenv) == "function") and getgenv() or _G
        -- Re-running the hub replaces the old menu instead of stacking a second one.
        if genv.__PX_EZ_WIN then
            pcall(function()
                genv.__PX_EZ_WIN.OnUnload = nil
                genv.__PX_EZ_WIN:Destroy()
            end)
        end

        local Hub = { tabs = {}, toggleKey = Enum.KeyCode.RightShift }
        local unloading = false
        local BIND = "PX_EZFreeMouse"
        local freed = false
        -- What the GAME last asked the mouse to do. Closing the menu hands that back, not a snapshot
        -- taken when the menu opened: opened on the spawn screen (cursor free) and closed after
        -- spawning (cursor locked), a snapshot left the cursor out and the camera on right-click.
        -- While the menu is open every Default / shown write is ours, so only a lock or a hide can
        -- be the game's; while it is closed, every write is the game's.
        local gameBehavior, gameIcon = UIS.MouseBehavior, UIS.MouseIconEnabled
        local watch = {}
        pcall(function()
            watch[1] = UIS:GetPropertyChangedSignal("MouseBehavior"):Connect(function()
                local b = UIS.MouseBehavior
                if not freed or b ~= Enum.MouseBehavior.Default then gameBehavior = b end
            end)
            watch[2] = UIS:GetPropertyChangedSignal("MouseIconEnabled"):Connect(function()
                local shown = UIS.MouseIconEnabled
                if not freed or not shown then gameIcon = shown end
            end)
        end)
        local function handBack()
            UIS.MouseBehavior = gameBehavior
            UIS.MouseIconEnabled = gameIcon
        end

        local function releaseMouse()
            pcall(function() RS:UnbindFromRenderStep(BIND) end)
            for _, c in ipairs(watch) do pcall(function() c:Disconnect() end) end
            if freed then
                freed = false
                pcall(handBack)
            end
        end

        local parentOf = {}
        for parent, kids in pairs(LAYOUT.NEST) do
            for _, k in ipairs(kids) do parentOf[k] = parent end
        end
        local rank = {}
        for tabName, list in pairs(LAYOUT.ORDER or {}) do
            rank[tabName] = {}
            for i, n in ipairs(list) do rank[tabName][n] = i end
        end
        local hasKids = {}
        for parent in pairs(LAYOUT.NEST) do hasKids[parent] = true end
        local locked = {}
        local function lock(name)
            if locked[name] then return end
            locked[name] = true
            for _, kid in ipairs(LAYOUT.NEST[name] or {}) do lock(kid) end
        end
        for _, n in ipairs(LAYOUT.LOCKED or {}) do lock(n) end
        -- The locked names the free menu still draws, under chains: the ones whose parent is not locked too.
        local lockedTop = {}
        for _, n in ipairs(LAYOUT.LOCKED or {}) do
            if not locked[parentOf[n] or ""] then lockedTop[n] = true end
        end

        -- The menu in force. Everything below reads it through `cur`, so a swap only has to change these.
        -- The sub-tab proxies the hub holds see the window through ctxView, so they follow a swap too.
        local cur = { EZ = EZ, kind = PX.guiKindOf(EZ), win = nil, ctx = nil, modal = nil, cfgOpts = nil }
        local rec = { log = {}, replaying = false }
        local ctxView = setmetatable({}, { __index = function(_, k) return cur.ctx and cur.ctx[k] end })
        local swapping = false
        local isMobile = UIS.TouchEnabled and not UIS.KeyboardEnabled

        -- The GUI section each menu offers: Fusion lists EZV4 beside its three looks, EZV4 lists the looks.
        local function swapCfg(kind)
            local pick = function(name) return Hub:SwapGui(name) end
            if kind == "EZV4" then
                return { current = "EZV4", options = { "Sunset", "Ice", "Galaxy", "EZV4" }, pick = pick }
            end
            return { options = { { Name = "EZV4", Accent = Color3.fromRGB(140, 95, 255), Ink = Color3.fromRGB(12, 10, 18),
                Blurb = "the multi-window menu" } }, pick = pick }
        end

        local function openWindow(lib, kind)
            local w = lib:CreateWindow({
                Title = cfg.Title or "EazyCheats",
                Website = "eazycheats.com",
                Discord = "discord.gg/uVXQTGefvq",
                PremiumUrl = "https://eazycheats.com/game/roblox/prior-premium-script",
                GuiSwap = swapCfg(kind),
                OnUnload = function()
                    if unloading or swapping then return end
                    unloading = true
                    if Hub.onUnload then pcall(Hub.onUnload) end
                    releaseMouse()
                end,
            })
            local ctx = { win = w, tabs = {}, masters = {}, parentOf = parentOf, lastHeader = {}, rank = rank,
                hasKids = hasKids, locked = locked, rec = rec,
                lockedTop = lockedTop, premiumRows = lib.PREMIUM_URL ~= nil }
            for _, n in ipairs(LAYOUT.MAIN) do
                -- a tab of locked rows only is left out where the menu cannot draw them (EZV4)
                if ctx.premiumRows or not (LAYOUT.PREMIUM_TABS and LAYOUT.PREMIUM_TABS[n]) then ctx.tabs[n] = w:AddTab(n) end
            end
            -- Desktop only. The game locks the cursor for camera control, so while the menu is up a visible
            -- Modal button plus a write after the camera step keep the mouse free. On MOBILE this is skipped
            -- entirely: there is no locked cursor to free, and a visible Modal button suppresses touch
            -- gestures -- which is exactly what stopped the menu's lists from scrolling on a phone.
            local modal
            if not isMobile then
                modal = Instance.new("TextButton")
                modal.Name = "PX_Modal"
                modal.Modal = true
                modal.Text = ""
                modal.AutoButtonColor = false
                modal.BackgroundTransparency = 1
                modal.Size = UDim2.new(0, 1, 0, 1)
                modal.Visible = false
                modal.Parent = w._gui
            end
            return w, ctx, modal
        end

        cur.win, cur.ctx, cur.modal = openWindow(EZ, cur.kind)
        genv.__PX_EZ_WIN = cur.win

        if not isMobile then
            pcall(function()
                RS:BindToRenderStep(BIND, Enum.RenderPriority.Camera.Value + 1, function()
                    local win, modal = cur.win, cur.modal
                    if win and win._gui and win._visible then
                        if modal and not modal.Visible then modal.Visible = true end
                        if not freed then
                            freed = true
                        else
                            -- Anything other than our Default / shown since last frame is the game's.
                            if UIS.MouseBehavior ~= Enum.MouseBehavior.Default then gameBehavior = UIS.MouseBehavior end
                            if not UIS.MouseIconEnabled then gameIcon = false end
                        end
                        UIS.MouseBehavior = Enum.MouseBehavior.Default
                        UIS.MouseIconEnabled = true
                    elseif freed and not swapping then
                        freed = false
                        if modal then modal.Visible = false end
                        handBack()
                    end
                end)
            end)
        end

        function Hub:IsVisible()
            return cur.win ~= nil and cur.win._gui ~= nil and cur.win._visible == true
        end
        function Hub:Notify(text, duration)
            if cur.win and cur.win._gui then return cur.win:Notify(text, duration or 3) end
            return nil
        end
        function Hub:SetConfig(opts)
            cur.cfgOpts = opts
            return cur.win:SetConfig(opts)
        end
        function Hub:Destroy()
            unloading = true
            releaseMouse()
            pcall(function() cur.win:Destroy() end)
            if genv.__PX_EZ_WIN == cur.win then genv.__PX_EZ_WIN = nil end
        end
        -- Which menu is up: "Fusion" (its look is Hub:GetLook()), "EZV4", or "V1" (the fallback).
        function Hub:GetGui()
            return cur.kind
        end
        function Hub:GetLook()
            local look
            pcall(function() look = cur.win:GetTheme() end)
            return look
        end

        -- What a row holds now, read through the object the hub holds.
        local function snapshot(e)
            local o = e.obj
            if type(o) ~= "table" then return nil end
            local snap = {}
            pcall(function()
                local m = e.method
                if m == "AddToggle" then snap.value = o.Value; snap.key = o.Key
                elseif m == "AddSlider" then snap.value = o.Value
                elseif m == "AddDropdown" then snap.value = o.Selected; snap.items = rawget(o, "_items")
                elseif m == "AddKeybind" then snap.key = o.Key
                elseif m == "AddLabel" then snap.text = rawget(o, "_text") end
            end)
            return snap
        end
        -- The call again, made with what the row holds now: a row that fires on build fires its own value.
        local function replayCfg(e, snap)
            if type(e.cfg) ~= "table" then return e.cfg end
            local c = {}
            for k, v in pairs(e.cfg) do c[k] = v end
            if snap then
                local m = e.method
                if (m == "AddToggle" or m == "AddSlider") and snap.value ~= nil then c.Default = snap.value
                elseif m == "AddDropdown" then
                    if snap.value ~= nil then c.Default = snap.value end
                    if snap.items then c.Items, c.Options = snap.items, nil end
                elseif m == "AddKeybind" and snap.key then c.Default = snap.key end
            end
            return c
        end
        -- The object the hub holds, pointed at the new row: same table, the new row's methods.
        local function rebind(old, new)
            if type(old) ~= "table" or type(new) ~= "table" or old == new then return end
            for k in pairs(old) do
                if k ~= "_items" and k ~= "_text" then old[k] = nil end
            end
            for k, v in pairs(new) do old[k] = v end
            setmetatable(old, getmetatable(new))
        end
        local function restore(e, snap)
            local o = e.obj
            if type(o) ~= "table" or not snap then return end
            pcall(function()
                local m = e.method
                if m == "AddToggle" then
                    if snap.value ~= nil and o.Set then o:Set(snap.value, true) end
                    if typeof(snap.key) == "EnumItem" and snap.key ~= Enum.KeyCode.Unknown and o.SetKey then o:SetKey(snap.key, true) end
                elseif m == "AddSlider" or m == "AddDropdown" then
                    if snap.value ~= nil and o.Set then o:Set(snap.value, true) end
                elseif m == "AddKeybind" then
                    if snap.key and o.Set then o:Set(snap.key, true) end
                elseif m == "AddLabel" then
                    if snap.text ~= nil and o.SetText then o:SetText(snap.text) end
                end
            end)
        end

        -- Swap the menu: "EZV4", or one of Fusion's looks ("Sunset", "Ice", "Galaxy"). The new window is built
        -- and filled first, every row with the value, key and list it had; only then does the old one close, so
        -- a swap that fails leaves the menu you had. Features keep running throughout: no callback fires.
        function Hub:SwapGui(target)
            target = tostring(target or "")
            local kind = (target == "EZV4") and "EZV4" or "Fusion"
            if swapping or unloading then return false end
            if kind == cur.kind then
                if kind == "Fusion" then
                    pcall(function()
                        if cur.win._pickTheme then cur.win:_pickTheme(target) else cur.win:SetTheme(target) end
                    end)
                end
                return true
            end
            local t0 = os.clock()
            local lib, why = PX.guiLibrary(kind)
            if not lib then
                Hub:Notify("Could not load " .. target .. ": " .. tostring(why), 4)
                return false
            end
            swapping = true
            local snaps = {}
            for i, e in ipairs(rec.log) do snaps[i] = snapshot(e) end
            local old = { win = cur.win, ctx = cur.ctx, modal = cur.modal, EZ = cur.EZ, kind = cur.kind }
            local made, bad = {}, nil
            local okBuild, buildErr = pcall(function()
                local w, ctx, modal = openWindow(lib, kind)
                -- Everything is already in force: neither GUI's own "auto-load a saved config a moment after
                -- the window opens" may run, or it would put an older save over what the player has now.
                w._autoLoaded = true
                cur.win, cur.ctx, cur.modal, cur.EZ, cur.kind = w, ctx, modal, lib, kind
                rec.replaying = true
                local quiet = PX.SUPPRESS_TOGGLE_NOTIFY
                PX.SUPPRESS_TOGGLE_NOTIFY = true
                for i, e in ipairs(rec.log) do
                    local ok, r = pcall(e.proxy._raw[e.method], e.proxy, replayCfg(e, snaps[i]))
                    if not ok then bad = bad or (e.method .. " " .. tostring(type(e.cfg) == "table" and e.cfg.Name or e.cfg) .. ": " .. tostring(r)) end
                    made[i] = r
                end
                PX.SUPPRESS_TOGGLE_NOTIFY = quiet
                rec.replaying = false
                if bad then error(bad, 0) end
            end)
            rec.replaying = false
            if not okBuild then
                -- Put the old menu back in charge and throw the half-built one away.
                local w, m = cur.win, cur.modal
                cur.win, cur.ctx, cur.modal, cur.EZ, cur.kind = old.win, old.ctx, old.modal, old.EZ, old.kind
                if w and w ~= old.win then pcall(function() w.OnUnload = nil w:Destroy() end) end
                if m and m ~= old.modal then pcall(function() m:Destroy() end) end
                swapping = false
                warn("[EazyCheats] GUI swap to " .. target .. " failed: " .. tostring(buildErr))
                Hub:Notify("Could not switch to " .. target, 4)
                return false
            end
            for i, e in ipairs(rec.log) do
                rebind(e.obj, made[i])
                restore(e, snaps[i])
            end
            if cur.cfgOpts then
                local opts = {}
                for k, v in pairs(cur.cfgOpts) do opts[k] = v end
                opts.AutoLoad = false   -- the settings are already in force; an autoload would re-apply them
                pcall(function() cur.win:SetConfig(opts) end)
            end
            genv.__PX_EZ_WIN = cur.win
            pcall(function() old.win.OnUnload = nil old.win:Destroy() end)
            if old.modal then pcall(function() old.modal:Destroy() end) end
            if kind == "Fusion" then
                pcall(function()
                    if cur.win._pickTheme then cur.win:_pickTheme(target) else cur.win:SetTheme(target) end
                end)
            end
            swapping = false
            PX.saveGuiChoice(kind)
            Hub:Notify(string.format("%s menu (%.2fs)", target, os.clock() - t0), 3)
            return true
        end

        -- The old main tabs hold no controls; their sub-tabs are routed by PX.MENU_LAYOUT.
        function Hub:AddTab(_tcfg)
            local root = {}
            function root:AddSubTab(scfg)
                return makeSub(ctxView, type(scfg) == "table" and scfg.Name or tostring(scfg))
            end
            return root
        end
        Hub.tabs.Settings = makeSub(ctxView, "Config")
        return Hub
    end

    return Bridge
end

-- EZ GUI Fusion (Sunset / Ice / Galaxy, switched in Settings) is the menu for free, premium and admin. Its
-- Prior layout (pages, sections, hints, search words) lives here, not in the GUI file, so the GUI stays one
-- generic library other products load too. The GUI reads it from getgenv().EZGuiOne_Layout; V1.0 ignores it.
-- >>> FUSION LAYOUT (generated by EZ gui Fusion/build/embed-layout.js from EZGuiFusion-prior-layout.lua - do not edit here)
PX.FUSION_LAYOUT = (function()
-- EZ GUI Galaxy One: the layout profile for Prior Extinction.
-- GENERATED by build/make-layout.js from build/prior-setup.lua (setup_version 3). Do not edit:
-- change prior-setup.lua (see prior-setup.md) and run "node make-layout.js" again.
-- Names are the ones the library RECEIVES from PX.ezBridge, checked against Prior Extinction.lua (703281 bytes):
-- Hand-edited 2026-09-19: Rejoin's settings (Farm Dino, Auto-Leave, Leave Under) now nest under Rejoin; Anti AFK is in Tools.
-- PX.displayName for toggles, sub-toggles and sliders, the trimmed name for dropdowns, buttons and key rows.
-- alias maps each Prior name that differs to the received one. A plain table: no calls, no side effects.
--   getgenv().EZGuiOne_Layout = loadstring(readfile("EZGuiOne-prior-layout.lua"))()
-- before the hub builds its menu (or CreateWindow{ Layout = <this table> }). Read by parts/55-layout.lua.
return {
    kind = "EZGuiOne.layout", version = 1, hub = "Prior Extinction",
    -- how many of the pages below a window must have before a profile from getgenv() applies
    match = 3,

    -- sidebar pages, in the hub's order; sections in the order the page draws them
    pages = {
        { name = "AutoFarm", icon = "farm", blurb = "Farms that play for you",
            sections = {
                { title = "Farms", note = "Pick one. AFK Farm and Legit Farm also feed, clean and go to water to drink as they run." },   -- 1
                { title = "Leave It Running", note = "Grow a list, stop on a timer, get back in after a kick." },   -- 2
                { title = "Spawning", note = "Grab an apex slot the moment one opens." },   -- 3
            } },
        { name = "Stats", icon = "bolt", blurb = "Keep your dino fed and clean",
            sections = {
                { title = "Food and Water", note = "Eat and drink without doing it yourself." },   -- 1
                { title = "Upkeep", note = "Cleanliness, oxygen, and bars that stop falling." },   -- 2
            } },
        { name = "Combat", icon = "combat", blurb = "Reach, hitboxes, attack speed",
            sections = {
                { title = "Reach and Hitboxes", note = "How far your hits reach, and how big a target is." },   -- 1
                { title = "Attacking", note = "How fast you swing, and which part the swing lands on." },   -- 2
            } },
        { name = "Render", icon = "render", blurb = "See what the game hides",
            sections = {
                { title = "Players and Food", note = "Labels only you can see." },   -- 1
                { title = "Your View", note = "Changes to your own screen. Nobody else sees any of it." },   -- 2
                { title = "World", note = "Light, fog, weather and time of day, on your screen only." },   -- 3
                { title = "Fossils, Plants and Clay", note = "Labels for what is worth walking to." },   -- 4
            } },
        { name = "Tools", icon = "tools", blurb = "Hiding, flying, overlays, map",
            sections = {
                { title = "Safety", note = "Get out of a fight, and land without dying." },   -- 1
                { title = "Movement", note = "Flying, turning, and growing while you move." },   -- 2
                { title = "On Screen", note = "What the hub draws on top of the game." },   -- 3
                { title = "Camera", note = "Your own view only." },   -- 4
                { title = "Map and Admins", note = "Map dots, a staff warning, the unload key and the phone turn pad." },   -- 5
            } },
    },

    -- every feature row, by the name it arrives with: its page, its section (index into that page's
    -- sections), the hint strip line, the about line at the top of its drawer, search words, and for
    -- the long drawers the groups (rows in draw order; flatten = the row whose own settings sit in this
    -- group instead of in a drawer of their own; dim = row -> the toggle it draws dimmed without)
    features = {
        ["Fossil Farm"] = { page = "AutoFarm", section = 1,
            hint = "Flies to each fossil and collects it",
            keys = { "dig", "bones", "collect", "money" },
        },
        ["AFK Farm"] = { page = "AutoFarm", section = 1,
            hint = "Flies to food and eats, over and over",
            keys = { "autofarm", "grind", "hunger", "weight", "grow", "afk" },
        },
        ["Legit Farm"] = { page = "AutoFarm", section = 1,
            hint = "The same farm on foot, no flying",
            keys = { "walk", "ground", "safe", "legit", "grind", "no fly" },
            groups = {
                { title = "Distances",
                    rows = { "Player Avoid Radius", "Search Distance" },
                },
                { title = "While It Farms",
                    rows = { "Leave Scraps", "Never Stand Still", "Flee From Players", "Unstuck (Fly Out)", "Rest To Heal",
                        "Keep Farming Tabbed Out" },
                },
                { title = "Getting Away",
                    rows = { "Admin Kick", "Fly Away From Players", "Fly Away Radius" },
                },
            },
        },
        ["Auto Switch Dino"] = { page = "AutoFarm", section = 2,
            hint = "Grows each dino in your list",
            keys = { "slots", "next dino", "queue", "grow", "switch" },
            groups = {
                { title = "Slots",
                    rows = { "Switch Slot 1", "Switch Slot 2", "Switch Slot 3", "Switch Slot 4", "Switch Slot 5", "Switch Slot 6" },
                },
                { title = "How It Picks",
                    rows = { "Switch Gender", "Smallest To Biggest", "Allow Unlocking New Dinos", "Finished Dinos" },
                },
            },
        },
        ["Farm Timer"] = { page = "AutoFarm", section = 2,
            hint = "Stops the farm and leaves, on a timer",
            keys = { "stop", "minutes", "leave", "log out", "timer" },
        },
        Rejoin = { page = "AutoFarm", section = 2,
            hint = "Gets you back in and farming after a kick",
            about = "The script has to load by itself on the start screen and in the new server - EZ Auto Launcher does that.",
            keys = { "reconnect", "auto join", "server", "disconnect" },
        },
        ["Anti AFK"] = { page = "Tools", section = 1,
            hint = "Stops the game kicking you for idling",
            about = "Roblox kicks anyone idle for 20 minutes. Leave this on while a farm runs.",
            keys = { "idle", "kick", "afk", "twenty minutes" },
        },
        ["FPS Saver"] = { page = "AutoFarm", section = 2,
            hint = "Strips the game down to almost nothing",
            keys = { "lag", "performance", "fps", "background", "low quality" },
        },
        ["Auto Spawn"] = { page = "AutoFarm", section = 3,
            hint = "Spams for the apex slot you picked",
            about = "Open dino selection and pick the dino and gender first, then turn this on.",
            keys = { "apex", "slot", "spawn", "queue", "request" },
        },
        ["Force Eat"] = { page = "Stats", section = 1,
            hint = "Eats nearby food whatever your diet",
            keys = { "hunger", "feed", "plants", "carnivore", "diet", "fast eat", "scraps" },
        },
        ["Auto Water"] = { page = "Stats", section = 1,
            hint = "Drinks for you whenever you are at water",
            keys = { "thirst", "drink", "hydration" },
        },
        ["Auto Cleanliness"] = { page = "Stats", section = 2,
            hint = "Keeps you clean automatically",
            keys = { "dirty", "mud", "wash", "hygiene" },
        },
        ["Infinite Oxygen"] = { page = "Stats", section = 2,
            hint = "Oxygen never drains underwater",
            keys = { "breath", "dive", "swim", "drown" },
        },
        -- Rejoin's settings: in Rejoin's drawer on AutoFarm (no section - Prior nests them), here for their hint and search words
        ["Farm Dino"] = { page = "AutoFarm",
            hint = "The one dino every rejoin spawns",
            keys = { "rejoin", "spawn", "dino", "last played", "server" },
        },
        ["Auto-Leave Empty Server"] = { page = "AutoFarm",
            hint = "Rejoins a fuller server",
            about = "Needs Rejoin on. It only leaves while a farm or Auto Switch is running.",
            keys = { "rejoin", "empty", "population", "players", "server hop", "low pop" },
        },
        ["Leave Under (players)"] = { page = "AutoFarm",
            hint = "Auto-Leave below this many",
            keys = { "rejoin", "players", "population", "minimum", "empty", "low pop" },
        },
        ["Hitbox Expander"] = { page = "Combat", section = 1,
            hint = "Grows OTHER players' hitboxes",
            keys = { "hitbox", "target", "bigger", "multiplier", "parts", "pvp" },
        },
        Reach = { page = "Combat", section = 1,
            hint = "Grows YOUR own attack range, hit further",
            keys = { "range", "distance", "longer", "multiplier", "pvp" },
        },
        ["Instant Attack"] = { page = "Combat", section = 2,
            hint = "Speeds up the attack animation",
            keys = { "attack speed", "swing", "faster", "pvp" },
        },
        ["No Attack Cooldown"] = { page = "Combat", section = 2,
            hint = "Removes the wait entirely",
            keys = { "cooldown", "spam", "attack speed", "pvp" },
        },
        ["Silent Aim"] = { page = "Combat", section = 2,
            hint = "Hits land on the parts you pick",
            keys = { "aim", "head", "parts", "target", "pvp" },
        },
        Players = { page = "Render", section = 1,
            hint = "Labels every player: name, health, more",
            keys = { "esp", "wallhack", "chams", "name tags", "health", "see through walls", "pack" },
            groups = {
                { title = "Label",
                    rows = { "Show Name", "Show Dino Type", "Show Stage", "Show Gender", "Show Health", "Show Stamina", "Food Bar", "Food Number", "Water Bar", "Water Number", "Infection Bar", "Infection Number", "Infected Tag", "Show Weight", "Bleed ESP", "Pack ESP", "Pack Leader ESP", "Show Distance", "Text Highlight" },
                },
                { title = "Size and Range",
                    rows = { "Text Size", "Health Bar Height", "Health Bar Width", "Stamina Bar Height", "Stamina Bar Width", "ESP Distance" },
                },
                { title = "Chams", flatten = "Chams",
                    rows = { "Chams", "Chams Fill Transparency", "Chams Outline Transparency" },
                    dim = { ["Chams Fill Transparency"] = "Chams", ["Chams Outline Transparency"] = "Chams" },
                },
            },
        },
        ["Fish ESP"] = { page = "Render", section = 1,
            hint = "Labels the fish in the water",
            keys = { "esp", "food", "water" },
        },
        ["Show Corpses"] = { page = "Render", section = 1,
            hint = "Labels corpses that still have meat",
            keys = { "esp", "body", "meat", "food", "infection" },
        },
        ["Show Meat"] = { page = "Render", section = 1,
            hint = "Labels loose meat on the ground",
            keys = { "esp", "food" },
        },
        ["No Sleep Screen"] = { page = "Render", section = 2,
            hint = "No black screen while you sleep",
            keys = { "sleep", "black", "dark", "rest" },
        },
        ["No Blur"] = { page = "Render", section = 2,
            hint = "Removes the blur from a broken head",
            keys = { "head", "injury", "vision", "concussion" },
        },
        Skin = { page = "Render", section = 2,
            hint = "Any skin for this dino, to you only",
            keys = { "skin", "look", "cosmetic", "appearance", "colour" },
        },
        Tracers = { page = "Render", section = 2,
            hint = "Draws a line to every player",
            keys = { "esp", "lines", "players", "direction" },
        },
        Fullbright = { page = "Render", section = 3,
            hint = "Lights the whole map up, day or night",
            keys = { "bright", "night", "dark", "light" },
        },
        ["No Fog"] = { page = "Render", section = 3,
            hint = "Removes fog and haze, so you see further",
            keys = { "haze", "clear", "distance", "view" },
        },
        ["Disable Weather"] = { page = "Render", section = 3,
            hint = "Clear skies on your screen only",
            keys = { "rain", "storms", "lightning", "wind", "sky", "clouds" },
        },
        ["Custom Time"] = { page = "Render", section = 3,
            hint = "Sets the time of day on your screen",
            keys = { "day", "night", "sunset", "sunrise", "hour", "noon" },
        },
        ["Small Fossils"] = { page = "Render", section = 4,
            hint = "Labels small fossils",
            keys = { "esp", "dig", "fossil" },
        },
        ["Medium Fossils"] = { page = "Render", section = 4,
            hint = "Labels medium fossils",
            keys = { "esp", "dig", "fossil" },
        },
        ["Large Fossils"] = { page = "Render", section = 4,
            hint = "Labels large fossils",
            keys = { "esp", "dig", "fossil" },
        },
        ["Vegetation ESP"] = { page = "Render", section = 4,
            hint = "Labels the plants you can eat",
            keys = { "esp", "food", "plants", "trees", "diet", "bush" },
        },
        ["Show Clay Deposits"] = { page = "Render", section = 4,
            hint = "Clay that boosts immunity",
            keys = { "esp", "immunity", "mud", "bath", "sick" },
        },
        ["Save Dino"] = { page = "Tools", section = 1,
            hint = "Hides you high in the sky, then back",
            keys = { "safe", "hide", "escape", "panic", "god mode", "sky" },
        },
        ["No Fall Damage"] = { page = "Tools", section = 1,
            hint = "No damage from falling, ever",
            keys = { "fall", "damage", "drop", "cliff" },
        },
        ["Auto Walk"] = { page = "Tools", section = 2,
            hint = "Keeps moving: its own walking speed",
            about = "Holds the game's own walk for you, tabbed out too. One gait at a time; it stands aside for the farms, Fly and Save Dino.",
            keys = { "walk", "auto walk", "move", "gait", "activity", "afk", "tabbed out" },
        },
        ["Auto Trot"] = { page = "Tools", section = 2,
            hint = "Keeps moving: a steady trot",
            about = "Holds the game's own trot for you, tabbed out too. One gait at a time; it stands aside for the farms, Fly and Save Dino.",
            keys = { "trot", "jog", "gait", "move", "afk", "tabbed out" },
        },
        ["Auto Run"] = { page = "Tools", section = 2,
            hint = "Keeps moving: running speed",
            about = "Holds the game's own run for you, tabbed out too. One gait at a time; it stands aside for the farms, Fly and Save Dino.",
            keys = { "run", "fast", "gait", "move", "sprint", "afk", "tabbed out" },
        },
        ["Auto Sprint"] = { page = "Tools", section = 2,
            hint = "Keeps moving: flat out",
            about = "Holds the game's own sprint for you, tabbed out too. One gait at a time; it stands aside for the farms, Fly and Save Dino.",
            keys = { "sprint", "fastest", "gait", "run", "move", "afk", "tabbed out" },
        },
        Fly = { page = "Tools", section = 2,
            hint = "WASD to move, Space up, Ctrl down",
            keys = { "flight", "fly hack", "move", "wasd" },
        },
        ["Insta Turn"] = { page = "Tools", section = 2,
            hint = "Hold the key to face your camera",
            keys = { "turn", "snap", "spin", "rotate", "key" },
        },
        ["Quick Turn"] = { page = "Tools", section = 2,
            hint = "Turns you faster, without the snap",
            keys = { "turn", "rotate", "speed", "steering" },
        },
        ["Auto Grow"] = { page = "Tools", section = 2,
            hint = "Keeps you growing, no input needed",
            keys = { "growth", "activity", "afk", "weight", "circle" },
        },
        ["Show Module List"] = { page = "Tools", section = 3,
            hint = "Lists what you have on, corner",
            keys = { "hud", "overlay", "list", "modules", "indicators", "screenshot" },
        },
        ["Stats Card"] = { page = "Tools", section = 3,
            hint = "A card with your live stats and timer",
            keys = { "hud", "overlay", "card", "growth", "weight", "timer", "nutrition" },
            groups = {
                { title = "What It Shows",
                    rows = { "Dino Name", "Growth Stage", "Mass Gain Multiplier", "Weight", "Growth Timer", "Stage Timer",
                        "Nutrition Stats", "Wellbeing Stats" },
                },
                { title = "The Card Itself",
                    rows = { "Hide While Menu Open", "Drag Stats Card" },
                },
            },
        },
        ["Reset Stats Card Position"] = { page = "Tools", section = 3,
            hint = "Puts the card back",
            keys = { "move", "lost", "position", "card" },
        },
        ["Unlimited Zoom"] = { page = "Tools", section = 4,
            hint = "Zoom out as far as you like",
            keys = { "camera", "zoom", "far", "view" },
        },
        ["FOV Changer"] = { page = "Tools", section = 4,
            hint = "Set your field of view yourself",
            keys = { "fov", "field of view", "camera", "wide" },
        },
        Minimap = { page = "Tools", section = 5,
            hint = "Dots on the game's minimap and big map",
            keys = { "map", "dots", "radar", "esp" },
        },
        ["Mod Check"] = { page = "Tools", section = 5,
            hint = "Warns you when a game admin joins",
            keys = { "admin", "moderator", "staff", "ban", "safety", "alt" },
        },
        ["Unload Key"] = { page = "Tools", section = 5,
            hint = "Press it to unload the hub",
            keys = { "unload", "close", "exit", "panic", "hotkey", "quit" },
        },
        ["Show Turn Buttons"] = { page = "Tools", section = 5,
            hint = "On-screen pad, phones only",
            keys = { "mobile", "touch", "phone", "pad", "turn" },
        },
    },

    -- Prior's own name -> the name the library receives
    alias = {
        ["Enable Chams"] = "Chams",
        ["Enable ESP"] = "Players",
        ["Enable Hitbox Expander"] = "Hitbox Expander",
        ["Enable Reach"] = "Reach",
        ["Enable Silent Aim"] = "Silent Aim",
        ["Enable Tracers"] = "Tracers",
        ["Legit Admin Kick"] = "Admin Kick",
        ["Legit Avoid Radius"] = "Player Avoid Radius",
        ["Legit Flee From Players"] = "Flee From Players",
        ["Legit Fly Away From Players"] = "Fly Away From Players",
        ["Legit Fly Away Radius"] = "Fly Away Radius",
        ["Legit Leave Scraps"] = "Leave Scraps",
        ["Legit Never Stand Still"] = "Never Stand Still",
        ["Legit Rest To Heal"] = "Rest To Heal",
        ["Legit Tab Out"] = "Keep Farming Tabbed Out",
        ["Legit Search Distance"] = "Search Distance",
        ["Legit Unstuck"] = "Unstuck (Fly Out)",
    },

    -- what a new user should try first, in this order; the Active page shows the first ones that are off
    starters = {
        { step = 1, page = "AutoFarm", name = "AFK Farm", why = "The farm most people came for: it feeds and grows your dino for you." },
        { step = 2, page = "AutoFarm", name = "Legit Farm", why = "The same farm on foot, when you would rather not be seen flying." },
        { step = 3, page = "Stats", name = "Force Eat", why = "Eat anything nearby whatever your diet - both farms use it too." },
        { step = 4, page = "Tools", name = "Auto Grow", why = "One switch and your dino keeps growing while you do nothing." },
        { step = 5, page = "Render", name = "Players", why = "See who is around, how healthy they are and how far away." },
        { step = 6, page = "Tools", name = "Save Dino", why = "One switch to disappear when a fight goes wrong, then come back." },
        { step = 7, page = "Tools", name = "Mod Check", why = "Tells you the moment a game admin turns up." },
        { step = 8, page = "Tools", name = "Stats Card", why = "Your own weight, stage and growth timer, on screen." },
    },

    -- on at load and never counted as running: drawn with the accent switch only
    uncounted = { "Show Module List", "Show Turn Buttons" },
    -- never listed on the Active page (the uncounted pair, and rows with no on/off state)
    skip = { "Insta Turn", "Reset Stats Card Position", "Show Module List", "Show Turn Buttons", "Skin", "Unload Key" },

    active = { name = "Active", icon = "power", blurb = "What is running right now",
        empty = "Nothing is running. START HERE lists the starter rows that are off, in starter order.", turn_all_off = "Turn all off" },
}
end)()
-- <<< FUSION LAYOUT

-- The menus Prior can run in, and where each comes from: a local build first (dev), then the site.
PX.GUI_SRC, PX.GUI_RAW = {}, {}
PX.GUI_FILES = {
    Fusion = { file = "EazyCheats_ez-gui.lua", url = "https://eazycheats.com/s/ez-gui-fusion" },
    EZV4 = { file = "EazyCheats_ez-gui-v4.lua", url = "https://eazycheats.com/s/ez-gui-v4" },
}
function PX.guiKindOf(lib)
    local n = type(lib) == "table" and tostring(rawget(lib, "Name") or "") or ""
    if n == "EZV4" then return "EZV4" end
    if n:find("Fusion") then return "Fusion" end
    return "V1"
end
function PX.guiChoicePath()
    local uid = 0
    pcall(function() uid = LocalPlayer.UserId end)
    return "EazyCheats_Configs/gui-" .. tostring(uid) .. ".txt"
end
function PX.saveGuiChoice(kind)
    pcall(function()
        if type(isfolder) == "function" and not isfolder("EazyCheats_Configs") then makefolder("EazyCheats_Configs") end
        writefile(PX.guiChoicePath(), tostring(kind))
    end)
end
function PX.guiChoice()
    local ok, v = pcall(function()
        if type(isfile) == "function" and not isfile(PX.guiChoicePath()) then return nil end
        return readfile(PX.guiChoicePath())
    end)
    return ok and type(v) == "string" and v:match("^%s*(%w+)%s*$") or nil
end
-- A menu's source text, kept once read so a later swap does not wait on the site: the local file at load (dev
-- launchers only answer it while the hub is loading), the site only when a swap first needs it.
function PX.guiPrefetch(kind, network)
    local spec = PX.GUI_FILES[kind]
    if not spec or PX.GUI_SRC[kind] or PX.GUI_RAW[kind] then return end
    pcall(function()
        if type(isfile) == "function" and not isfile(spec.file) then return end
        local src = readfile(spec.file)
        if type(src) == "string" and #src > 0 then PX.GUI_RAW[kind] = src end
    end)
    if network and not PX.GUI_RAW[kind] then
        pcall(function()
            local src = game:HttpGet(spec.url)
            if type(src) == "string" and #src > 0 and not src:find("^%-%- script not found") then PX.GUI_RAW[kind] = src end
        end)
    end
end
-- A fresh copy of that menu's library (each window gets its own, so nothing from a closed one lingers).
function PX.guiLibrary(kind)
    local spec = PX.GUI_FILES[kind]
    if not spec then return nil, "unknown menu " .. tostring(kind) end
    local function try(src)
        if type(src) ~= "string" or #src == 0 or src:find("^%-%- script not found") then return nil end
        local chunk = loadstring(src)
        if not chunk then return nil end
        local ok, lib = pcall(chunk)
        if ok and type(lib) == "table" and PX.guiKindOf(lib) == kind then
            PX.GUI_SRC[kind], PX.GUI_RAW[kind] = src, nil
            return lib
        end
        return nil
    end
    local lib = try(PX.GUI_SRC[kind]) or try(PX.GUI_RAW[kind])
    if lib then return lib end
    PX.guiPrefetch(kind, true)
    lib = try(PX.GUI_RAW[kind])
    if lib then return lib end
    return nil, "the " .. kind .. " menu could not be fetched"
end

function PX.loadLibrary()
    -- The account's own pick of menu (Settings > GUI) when it has one and it builds.
    PX.guiPrefetch("Fusion")
    PX.guiPrefetch("EZV4")
    if PX.guiChoice() == "EZV4" then
        local lib = PX.guiLibrary("EZV4")
        if lib then return PX.ezBridge(lib) end
    end
    -- Fusion first; the V1.0 menu only if Fusion cannot be fetched or built (e.g. the site has no slug yet).
    local GUI_URLS = { "https://eazycheats.com/s/ez-gui-fusion", "https://eazycheats.com/s/ez-gui" }
    -- LOCAL DEV: a GUI build saved as <executor workspace>/EazyCheats_ez-gui.lua is used instead of
    -- the hosted copy, so the menu can be iterated without deploying the site. The name is specific
    -- on purpose, so a customer's unrelated ez-gui.lua can never replace their menu.
    local LOCAL_FILE = "EazyCheats_ez-gui.lua"
    local function build(src, where)
        local chunk, compileErr = loadstring(src)
        if not chunk then return nil, where .. " failed to compile: " .. tostring(compileErr) end
        local ranOk, lib = pcall(chunk)
        if ranOk and type(lib) == "table" then
            local kind = PX.guiKindOf(lib)
            if PX.GUI_FILES[kind] then PX.GUI_SRC[kind], PX.GUI_RAW[kind] = src, nil end
            return PX.ezBridge(lib)
        end
        return nil, where .. " errored: " .. tostring(lib)
    end
    local okLocal, localSrc = pcall(function()
        if type(isfile) == "function" and not isfile(LOCAL_FILE) then return nil end
        return readfile(LOCAL_FILE)
    end)
    if okLocal and type(localSrc) == "string" and #localSrc > 0 then
        -- A broken local build falls back to the hosted menu: no menu means no hub at all (and no farming).
        local lib, err = build(localSrc, "Local EZ GUI")
        if lib then return lib end
        warn("[EazyCheats] " .. tostring(err) .. " - using the hosted menu")
    end
    local lastErr = "unknown error"
    for attempt = 1, 3 do
        local GUI_URL = GUI_URLS[attempt < 3 and 1 or 2]   -- tries 1-2: Fusion; try 3: the V1.0 menu
        local got, src = pcall(function() return game:HttpGet(GUI_URL) end)
        if got and type(src) == "string" and #src > 0 and not src:find("^%-%- script not found") then
            local lib, err = build(src, "EZ GUI")
            if lib then return lib end
            lastErr = err
        else
            lastErr = "Could not reach eazycheats.com (" .. tostring(src) .. ")"
        end
        if attempt < 3 then task.wait(1) end
    end
    return nil, lastErr
end

 PX.Library, PX.libErr = PX.loadLibrary()
PX.xlog(PX.Library and "menu library loaded" or ("menu library FAILED: " .. tostring(PX.libErr)))
if not PX.Library then
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "EazyCheats", Text = "GUI failed to load: " .. tostring(PX.libErr) .. ". Try again in a moment.", Duration = 10,
        })
    end)
    warn("[EazyCheats] " .. tostring(PX.libErr))
    -- Stop what already started above (Auto Switch, Rejoin, respawn loops): with no unload handle it could
    -- never be stopped, and its rejoin loop would save "farms off" over what Rejoin has to resume.
    PX.UNLOADED = true
    return
end
pcall(function()
    local g = getgenv and getgenv()
    if g and g.EZGuiOne_Layout == nil and type(PX.FUSION_LAYOUT) == "table" then g.EZGuiOne_Layout = PX.FUSION_LAYOUT end
end)
local Hub = PX.Library.new({Title = "EazyCheats"})
PX.xlog("menu window created")
-- Also hung on PX so code ABOVE this line can notify. `Hub` is a local declared here, so any
-- earlier reference to the bare name resolves to a nil global instead — the call then errors
-- inside its pcall and the message silently never appears. Reach it as PX.Hub from up there.
PX.Hub = Hub

-- SECTIONS, SAFE AGAINST AN OLDER GUI LIBRARY.
--
-- gui.lua is shared by four products and is deployed separately from the hubs, so this script can
-- land on a library older than itself. Section info panels need AddSection to accept a config
-- TABLE; an older library takes only a string and would push the table straight into a TextLabel's
-- Text, throw, and kill the hub on its very first section — a completely dead menu, not a missing
-- badge.
--
-- So the capability is checked once. New library: sections get their "?" panel. Old library: the
-- section is still created, just without one. Either way the hub runs.
PX.GUI_SECTION_INFO = false
pcall(function()
    PX.GUI_SECTION_INFO = (PX.Library and PX.Library.Caps and PX.Library.Caps.sectionInfo) and true or false
end)

function PX.section(t, name, info)
    if PX.GUI_SECTION_INFO and info then
        return t:AddSection({ Name = name, Info = info })
    end
    return t:AddSection(name)
end

-- Show a bottom-right toast whenever ANY toggle flips on/off.
-- Suppressed during config load so applying a saved config doesn't spew 30 toasts.
PX.SUPPRESS_TOGGLE_NOTIFY = false
-- Registry of every toggle (by name) so configs can save/restore each one's keybind.
PX.ALL_TOGGLES = {}
local function patchTabNotify(tab)
    local origAddToggle = tab.AddToggle
    tab.AddToggle = function(selfTab, cfg)
        cfg = cfg or {}
        -- Every switch gets an inline keybind box, unbound by default.
        if cfg.Keybind == nil then cfg.Keybind = true end
        local userCb = cfg.Callback or function() end
        local nm = cfg.Name or "Toggle"
        cfg.Callback = function(v)
            userCb(v)
            if not PX.SUPPRESS_TOGGLE_NOTIFY then
                pcall(function() Hub:Notify(PX.displayName(nm) .. ": " .. (v and "ON" or "OFF")) end)
            end
        end
        local obj = origAddToggle(selfTab, cfg)
        if nm then PX.ALL_TOGGLES[nm] = obj end
        return obj
    end
    return tab
end

-- === SAVE DINO SYSTEM ===
-- Parks the dino underground and pins it there. Save Dino teleports the root 50 studs down,
-- spawns a client-side platform, and then PINS the root to that exact spot every frame.
-- The pin is the important part: the game's teleport-back is server-driven (the server sees
-- your reported Y is below the map and resets you), and a client-only platform/anchor can't
-- stop that. The pin does — the instant the server yanks you up, the next frame snaps you
-- back down to the saved spot, so you stay put. It also keeps you completely frozen (locked
-- to one point). You can still press R to lay down and heal — that's sent independently.
-- Release stops the pin and un-anchors: the dino free-falls and the game resets it to surface.
PX.SAVE_DINO_ACTIVE = false
-- How far below the surface Save Dino drops you.
--
-- The old 30-stud ceiling is HISTORY: it came from a teleport-based save, where
-- going deep made the server flag you out-of-bounds and yank you back up. The
-- current save FLIES you down under the Teleporting flag and then PINS you every
-- frame, so a yank is re-corrected on the next frame instead of stranding you at
-- the surface. Depth is therefore no longer the limiting factor, and deeper is
-- strictly better cover from surface melee.
--
-- Still a slider ("Save Depth (studs, Down only)" in Movement > Save Dino) so it
-- can be tuned per map — some maps have shallow terrain or a floor under it.
-- Fixed, not a slider. The depth/height sliders were removed from the menu deliberately — the
-- Save Dino section is meant to be five controls, not eight. These are the values that were
-- asked for: 700 down, 1000 up. The void clamp further down still applies, so a low-lying map
-- cannot sink you past FallenPartsDestroyHeight even at 700.
PX.SAVE_DINO_DEPTH = 700
-- Fly-based Save Dino: on activate the dino drives straight UP (PX.SAVE_UP_HEIGHT into the sky), then pins
-- there (untouchable). No horizontal movement. Fall immunity is held the whole time + for 10s on release, then
-- you're lifted safely to the ground.
-- Straight up at the shared mover's vertical speed: the server's vertical limit is ~165-175 studs/s (250 was
-- snapped back after one sample, 155 was clean - measured 2026-10-14). Fixed, never slowed after a snap-back.
PX.SAVE_FLY_SPEED = PX.MV_VERT
PX.SAVE_DIR = "Up"               -- always "Up": since 2026-10-12 the server kicks a dino under the ground
                                 -- ("Playable outside of bounds"), so the old "Down" save was removed
-- 2026-10-15 on Idris (SubAdult Dreadnoughtus): the climb to +1000 was snapped back three times, then the server
-- froze the dino at Y 925 (~500 over the ground) - the body stopped simulating, Return to Menu never answered, only
-- a rejoin got it back. AFK Safety and Rest To Heal rest at 150 up and escaped attacks in the same server, so 150.
PX.SAVE_UP_HEIGHT = 150          -- studs to rise when saving UP (fixed; no slider by design)
-- On release we lift you back to the surface and hold fall immunity for this long so the move
-- can't register as a fall, then clear it once you've settled.
PX.SAVE_RELEASE_GRACE = 10
local saveReleasing = false        -- true during the post-release grace window
local saveDinoToggle = nil        -- the Save Dino switch (assigned when the toggle is built)
PX.AUTO_SAVE_PCT = 30           -- health % at/below which auto-save fires
PX.AUTO_SAVE = false               -- gates the above; "Auto-Save at Health %" toggle (off on a fresh start)
-- Include Bleed: count pending bleed against you when deciding whether to auto-save. Bleed is
-- damage already committed — the server drains it over the next few seconds whatever you do — so
-- 40% health with a 35% bleed forecast is really 5%. Off by default because it makes auto-save
-- fire noticeably earlier, which is the point but also a behaviour change.
PX.AUTO_SAVE_BLEED = true
-- Resting while saved: drop the "Teleporting" height hold once parked, so the game's own gates
-- let you lay down / sleep (and therefore heal). The hold only steers the game's local height
-- controller while we move; it buys nothing from the server. Always on — it had a toggle
-- briefly, but the menu is meant to stay at five controls and there is no reason to want this off.
PX.SAVE_ALLOW_REST = true
PX.saveOriginCF = nil              -- where you were standing when Save Dino was switched ON
PX.saveReturning = false           -- true while the release flight is heading back to that spot
local autoSaveArmed = true         -- hysteresis: prevents instant re-save after a manual release
local savePlatform = nil           -- the client-side platform the dino rests on while saved
local saveTargetCFrame = nil       -- the underground spot the pin loop holds the dino at
local savePinConns = {}            -- Heartbeat + RenderStepped connections that re-pin
local pinnedRoot = nil             -- root captured at save time (avoids a per-frame re-fetch)

local function destroySavePlatform()
    if savePlatform then
        pcall(function() savePlatform:Destroy() end)
        savePlatform = nil
    end
end

-- CharacterState, cached. Same module the Stats Card and No Attack Cooldown already require.
-- nil on Xeno (the gate at the top of the file: that require freezes the client there).
function PX.getCS()
    if PX.csCache then return PX.csCache end
    if not PX.CAP.charstate then return nil end   -- Xeno: don't require (would freeze)
    pcall(function() PX.csCache = require(PX.WATER_RS.Common.CharacterState) end)
    return PX.csCache
end

-- Is the dino currently laying down or asleep?
--
-- Both are client-side action flags the game sets when you press the rest key, and both are what
-- healing runs off. Decompiled from the flight gate, which refuses to take off while any of these
-- are set:
--     if CharacterState.RestDebounce then ... "You cannot take off while resting or sleeping!"
--     elseif CharacterState.Actions.Rest then ...
--     elseif CharacterState.Actions.Sleep then ...
-- We read the same three so the pin can stand down while they are true.
-- The rest key (lie down / stand up - it toggles), pressed through the game's own input handler. A simulated R key
-- is dropped while the game window is unfocused: 2026-10-15 Idris was left lying down, and a dino lying down can't
-- bite - Force Eat stalled on every plant around it. HandleAction works unfocused once the game's input block is
-- lifted for the press. Without CharacterState (Xeno) the R key is all there is.
function PX.pressRest()
    local CS = PX.getCS()
    local C = CS and CS.Controls
    if C and C.HandleAction then
        local wasUnfocused = C.WindowUnfocused
        pcall(function()
            C.WindowUnfocused, C.InputWasBlocked = false, false
            C:HandleAction("Rest", true)
        end)
        task.delay(0.1, function()
            pcall(function() C:HandleAction("Rest", false) end)
            pcall(function() C.WindowUnfocused = wasUnfocused end)
        end)
        return
    end
    pcall(function() PX.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
    pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end

function PX.saveIsResting()
    local CS = PX.getCS()
    if not CS then return false end
    local resting = false
    pcall(function()
        local a = CS.Actions
        resting = (a and (a.Rest or a.Sleep)) and true or false
        if CS.RestDebounce then resting = true end
    end)
    return resting
end

-- The same gate that blocks flight blocks resting:
--     CharacterState.Instances.Character:GetAttribute("Teleporting")
-- Save Dino used to hold that attribute true for the WHOLE time you were parked, which is why
-- laying down did nothing while saved. It is only needed while MOVING, as the Y the game's local
-- height hold keeps the body at (client attributes never reach the server, so it is no leniency).
-- Once parked and anchored we drop it and let the game's own rest logic work.
--
-- If the server snaps us off the spot (PX.mvHold), the dino stays where the server put it: fighting
-- a snap-back is what turns one correction into a "Speeding" kick.
local saveFlagHeld = false
local function setSaveTeleportFlag(on)
    if saveFlagHeld == on then return end
    saveFlagHeld = on
    pcall(function()
        -- A number, never true: the game's local height hold reads it as the Y to keep the body at (true is
        -- read as Y 0). It buys nothing from the server; it only stops the game's own hold fighting ours.
        local ch = LocalPlayer.Character
        local r = pinnedRoot or getAutoGrowRoot()
        if ch then ch:SetAttribute("Teleporting", on and (r and r.Position.Y) or nil) end
    end)
end

local function stopSavePin()
    for _, c in ipairs(savePinConns) do pcall(function() c:Disconnect() end) end
    savePinConns = {}
end

local function saveDino()
    if PX.SAVE_DINO_ACTIVE then return end
    if PX.AFK_FARM and PX.AFK_FARM_SAFETY then
        if saveDinoToggle then pcall(function() saveDinoToggle:Set(false) end) end
        pcall(function() if PX.Hub then PX.Hub:Notify("Save Dino paused: AFK Farm's Safety handles hide & heal while it runs", 5) end end)
        return
    end
    local root = getAutoGrowRoot()   -- Body / HumanoidRootPart / PrimaryPart (no Humanoid here)
    if not root then
        pcall(function() Hub:Notify("Save Dino: no character found") end)
        return
    end
    -- Flags first (fall immunity + the "Teleporting" height hold, same as Fly uses).
    -- The teleport flag goes through setSaveTeleportFlag so the pin can drop it once parked.
    pcall(function()
        local ch = LocalPlayer.Character
        if ch then ch:SetAttribute("FallDamageImmunity", true) end
    end)
    saveFlagHeld = false
    setSaveTeleportFlag(true)

    -- Remember where you were standing. Release flies BACK here rather than surfacing wherever
    -- the dino happens to have ended up, which is what "it just lets you go" meant.
    PX.saveOriginCF = root.CFrame
    PX.saveReturning = false

    PX.SAVE_DINO_ACTIVE = true
    pinnedRoot = root
    saveTargetCFrame = nil
    destroySavePlatform()

    -- Drive state — VERTICAL ONLY (straight down under the map, or straight up into the sky).
    local phase = "moving"                     -- moving -> pinned
    local drivePos = root.Position
    local startY = root.Position.Y
    local yawCF = root.CFrame - root.CFrame.Position          -- keep the dino's facing
    local goingUp = true   -- "Down" (under the map) now gets you kicked: Save Dino only goes up
    -- fixed target height, computed once
    local targetY
    if goingUp then
        targetY = startY + PX.SAVE_UP_HEIGHT
    else
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Exclude
        params.FilterDescendantsInstances = { LocalPlayer.Character, savePlatform }
        local hit = workspace:Raycast(root.Position + Vector3.new(0, 20, 0), Vector3.new(0, -800, 0), params)
        local gY = (hit and hit.Position.Y) or startY
        targetY = math.min(gY, startY) - PX.SAVE_DINO_DEPTH       -- under the surface
        -- Never sink past the engine's void line. Anything below FallenPartsDestroyHeight is
        -- DELETED by Roblox, and at 200 studs a low-lying map can now actually reach it —
        -- at the old 150 there was more slack. Losing the dino to the void would be a far
        -- worse failure than surfacing a little higher than asked.
        local voidY
        pcall(function() voidY = workspace.FallenPartsDestroyHeight end)
        if voidY and targetY < voidY + 50 then targetY = voidY + 50 end
    end
    local targetCF = CFrame.new(drivePos) * yawCF              -- advance sets it, pin re-asserts

    stopSavePin()
    -- ADVANCE (RenderStepped ONLY — running it on both loops was the "goes too far" bug).
    local function advance(dt)
        if PX.UNLOADED or not PX.SAVE_DINO_ACTIVE then return end
        local r = pinnedRoot
        if not (r and r.Parent) then r = getAutoGrowRoot(); pinnedRoot = r end
        if not r then return end
        dt = math.min(dt or 0.016, 0.1)

        -- The server snapped us back: stay where it put us (never re-pin the old spot), then carry on from there.
        if PX.mvHold() then
            drivePos = r.Position
            targetCF = CFrame.new(drivePos) * yawCF
            if phase == "pinned" then saveTargetCFrame = targetCF end
            return
        end

        if phase == "moving" then
            local step = PX.SAVE_FLY_SPEED * dt
            local newY = goingUp and math.min(drivePos.Y + step, targetY)
                                  or math.max(drivePos.Y - step, targetY)
            drivePos = Vector3.new(drivePos.X, newY, drivePos.Z)
            targetCF = CFrame.new(drivePos) * yawCF
            if (goingUp and newY >= targetY) or (not goingUp and newY <= targetY) then
                saveTargetCFrame = targetCF
                if not goingUp then                            -- hold platform just under us
                    destroySavePlatform()
                    local plat = Instance.new("Part")
                    plat.Anchored = true; plat.CanCollide = true
                    plat.Size = Vector3.new(80, 4, 80); plat.Transparency = 1
                    plat.CFrame = CFrame.new(drivePos - Vector3.new(0, 6, 0))
                    plat.Parent = workspace
                    savePlatform = plat
                end
                phase = "pinned"
            end
        else -- pinned
            if saveTargetCFrame then targetCF = saveTargetCFrame end
        end

        -- Parked and settled: hand the teleport flag back so resting/sleeping is allowed again.
        -- While still moving it stays held — that is the whole reason it exists.
        if phase == "pinned" and PX.SAVE_ALLOW_REST then setSaveTeleportFlag(false)
        elseif phase ~= "pinned" then
            saveFlagHeld = true
            pcall(function() local c = LocalPlayer.Character; if c then c:SetAttribute("Teleporting", drivePos.Y) end end)
        end

        -- Laying down or asleep: stop writing the CFrame so the game can play the animation and
        -- position the dino for it. We stay ANCHORED, so standing down here cannot drop us.
        if phase == "pinned" and PX.saveIsResting() then
            pcall(function() if not r.Anchored then r.Anchored = true end end)
            return
        end

        pcall(function()
            if phase == "pinned" then
                if not r.Anchored then r.Anchored = true end          -- freeze once in place
            elseif r.Anchored then r.Anchored = false end             -- moving: keep it drivable
            r.CFrame = targetCF
            r.AssemblyLinearVelocity = Vector3.zero
            r.AssemblyAngularVelocity = Vector3.zero
        end)
    end
    -- PIN (Heartbeat — re-assert only; NO advance). Hard-snap back if the server nudges us off.
    local function pin()
        if PX.UNLOADED or not PX.SAVE_DINO_ACTIVE or PX.mvHold() then return end
        local r = pinnedRoot
        if not (r and r.Parent) then return end

        -- Resting: leave it alone entirely. Anchored already holds the position.
        if phase == "pinned" and PX.saveIsResting() then
            pcall(function() if not r.Anchored then r.Anchored = true end end)
            return
        end

        pcall(function()
            if phase == "pinned" and saveTargetCFrame then
                if not r.Anchored then r.Anchored = true end
                -- A server snap-back is handled above (PX.mvHold: we take its spot). Anything else that
                -- nudged us off the spot is put right.
                if (r.Position - saveTargetCFrame.Position).Magnitude > 5 then
                    r.CFrame = saveTargetCFrame
                elseif math.abs(r.Position.Y - saveTargetCFrame.Position.Y) > 1 then
                    r.CFrame = saveTargetCFrame
                end
            end
            r.CFrame = targetCF
            r.AssemblyLinearVelocity = Vector3.zero
            r.AssemblyAngularVelocity = Vector3.zero
        end)
    end

    table.insert(savePinConns, RunService.RenderStepped:Connect(advance))
    table.insert(savePinConns, RunService.Heartbeat:Connect(pin))
    if saveDinoToggle then pcall(function() saveDinoToggle:Set(true) end) end
    pcall(function() Hub:Notify("Save Dino: " .. (goingUp and "rising into the sky" or "diving under the map")) end)
end

-- Glide back to the spot Save Dino was switched on at, then plant the dino on the ground.
--
-- Gliding rather than teleporting on purpose: a single long CFrame jump is what the server
-- reverts. The glide goes through the shared mover (PX.govNext), at the speeds the server allows.
--
-- The landing is the part that has to be right. Arriving in the air and handing physics back is
-- what leaves you sliding, floating, or taking a fall hit. So we raycast for the real ground,
-- place the root exactly one half-height above it, hold it there anchored for a beat so leftover
-- momentum dies, and only then give physics back. Fall immunity is held throughout and for the
-- grace window after, so none of this can register as a fall.
function PX.saveReturnFlight()
    if PX.saveReturning then return end
    PX.saveReturning = true

    local ok = pcall(function()
        local originCF = PX.saveOriginCF
        local root = getAutoGrowRoot()
        if not (root and root.Parent) then return end

        local half = 3
        pcall(function() half = root.Size.Y * 0.5 end)
        -- The dino's real standing height, when the game has it: half the root part was ~3 on a SubAdult
        -- Dreadnoughtus that stands at ~16, so the landing sank the body 13 studs into the ground (2026-10-15).
        pcall(function()
            local al = PX.getCS().Alignment
            local h = (al.RideHeight or 0) + (al.BodyHeightIncrease or 0)
            if h > half then half = h end
        end)

        -- Where are we heading? The recorded spot, or straight up from here if we never got one.
        local originPos = originCF and originCF.Position or root.Position

        -- YAW ONLY. The recorded CFrame carries whatever pitch and roll you had when you toggled
        -- it on — standing on a slope, or mid-turn — and reusing it whole lands you tilted. Flatten
        -- to a level heading so you always arrive upright.
        local yawCF
        do
            local src = originCF or root.CFrame
            local look = src.LookVector
            local flat = Vector3.new(look.X, 0, look.Z)
            yawCF = (flat.Magnitude > 0.01)
                and CFrame.lookAt(Vector3.new(), flat.Unit)
                 or CFrame.new()
        end

        -- Find the real ground under the target, from well above it.
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Exclude
        params.FilterDescendantsInstances = { LocalPlayer.Character, savePlatform }
        local hit = workspace:Raycast(originPos + Vector3.new(0, 300, 0), Vector3.new(0, -2500, 0), params)
        local groundY = hit and hit.Position.Y or originPos.Y
        local landPos = Vector3.new(originPos.X, groundY + half + 0.5, originPos.Z)
        -- Approach from above so we descend onto the spot instead of surfacing through terrain.
        local approach = Vector3.new(originPos.X, math.max(root.Position.Y, groundY + 40), originPos.Z)

        pcall(function() root.Anchored = false end)

        local function glideTo(dest, timeout)
            -- Deadline from the distance at the shared mover's caps (sideways and up/down separately), with
            -- slack, so a long way back is never cut off mid-air.
            local r0 = getAutoGrowRoot()
            local dd = r0 and (dest - r0.Position) or Vector3.zero
            local need = Vector3.new(dd.X, 0, dd.Z).Magnitude / math.max(PX.mvSideCap(), 1) + math.abs(dd.Y) / PX.MV_VERT
            local deadline = os.clock() + math.max(timeout or 10, need * 1.5 + 3)
            local hardEnd, lastT = deadline + PX.MV_WATER_EXTRA, os.clock()
            while not PX.UNLOADED and not PX.SAVE_DINO_ACTIVE and os.clock() < deadline do
                deadline, lastT = PX.mvExtend(deadline, lastT, hardEnd)
                local r = getAutoGrowRoot()
                if not (r and r.Parent) then return end
                local delta = dest - r.Position
                if delta.Magnitude < 3 then return end
                local newPos = PX.govNext(r.Position, dest, 0.03)   -- the shared mover's caps
                pcall(function()
                    LocalPlayer.Character:SetAttribute("Teleporting", newPos.Y)
                    r.CFrame = CFrame.new(newPos) * yawCF
                    r.AssemblyLinearVelocity = Vector3.zero
                    r.AssemblyAngularVelocity = Vector3.zero
                end)
                task.wait(0.03)
            end
        end

        glideTo(approach, 12)                       -- climb/level out over the spot
        if PX.SAVE_DINO_ACTIVE then return end      -- re-armed mid-flight: leave it alone
        glideTo(landPos, 8)                         -- descend onto the ground
        if PX.SAVE_DINO_ACTIVE then return end

        -- SOLID LANDING. Anchoring is safe here precisely because we are grounded — anchoring
        -- while floating is the thing the server rejects.
        --
        -- Landing a little ABOVE the ground and letting gravity seat the dino, rather than trying
        -- to place it exactly, is what stops the two bad outcomes: half-buried in terrain (the
        -- root part is not the full height of the model, so ground + half is only an estimate) or
        -- hovering a stud up and sliding.
        local r = getAutoGrowRoot()
        if r and r.Parent then
            pcall(function()
                r.CFrame = CFrame.new(landPos + Vector3.new(0, 1, 0)) * yawCF
                r.AssemblyLinearVelocity = Vector3.zero
                r.AssemblyAngularVelocity = Vector3.zero
                r.Anchored = true
            end)
            task.wait(0.2)                     -- kill the momentum from the descent
            pcall(function()
                r.Anchored = false
                r.AssemblyLinearVelocity = Vector3.zero
                r.AssemblyAngularVelocity = Vector3.zero
            end)
            task.wait(0.3)                     -- let it settle onto the ground under gravity

            -- Did it settle sensibly? One correction if it clipped through or hung in the air.
            pcall(function()
                local p2 = RaycastParams.new()
                p2.FilterType = Enum.RaycastFilterType.Exclude
                p2.FilterDescendantsInstances = { LocalPlayer.Character }
                local h2 = workspace:Raycast(r.Position + Vector3.new(0, 20, 0), Vector3.new(0, -400, 0), p2)
                if h2 then
                    local gap = r.Position.Y - (h2.Position.Y + half)
                    if gap < -0.5 or gap > 3 then
                        r.CFrame = CFrame.new(h2.Position + Vector3.new(0, half + 0.5, 0)) * yawCF
                        r.AssemblyLinearVelocity = Vector3.zero
                    end
                end
            end)
        end

        -- HAND MOVEMENT BACK IMMEDIATELY.
        --
        -- This is what was "messing up how you walk". The teleport leniency flag was held for the
        -- full 10-second release grace AFTER you had already landed, and the game gates movement
        -- on that attribute — CharacterState checks Character:GetAttribute("Teleporting") in the
        -- same place it checks resting and fractures. So for ten seconds after touchdown you were
        -- walking around flagged as mid-teleport. It is cleared here, on the ground, where it has
        -- nothing left to do. Fall immunity stays for the rest of the grace; that one is harmless.
        saveReleasing = false
        setSaveTeleportFlag(false)
        pcall(function()
            local ch = LocalPlayer.Character
            if ch then ch:SetAttribute("Teleporting", nil) end
        end)

        pcall(function() Hub:Notify("Dino released - returned to your saved spot") end)
    end)

    if not ok then
        -- Never strand the character flagged as mid-teleport because the flight errored — that is
        -- the same broken-walking state, just arrived at a different way.
        saveReleasing = false
        setSaveTeleportFlag(false)
        pcall(function()
            local ch = LocalPlayer.Character
            if ch then
                ch:SetAttribute("Teleporting", nil)
                local r = getAutoGrowRoot()
                if r then r.Anchored = false end
            end
        end)
        pcall(function() Hub:Notify("Dino released - could not fly back, you are where you surfaced") end)
    end
    PX.saveReturning = false
end

 function PX.releaseDino()
    if not PX.SAVE_DINO_ACTIVE then return end
    PX.SAVE_DINO_ACTIVE = false          -- stop the pin loop from re-pinning
    stopSavePin()
    saveTargetCFrame = nil
    pinnedRoot = nil
    destroySavePlatform()            -- remove the client platform so nothing holds you down
    autoSaveArmed = false            -- don't auto-save again until health recovers past the threshold

    -- Fly BACK to where you switched it on, then land properly.
    --
    -- The old release just unanchored you at the surface directly above wherever you had ended
    -- up and handed physics back, which is what "it just lets you go" meant — you could surface
    -- somewhere else entirely, floating or sliding, and the server would sometimes snap you.
    -- Now we glide to the recorded spot through the shared mover and finish with a solid landing.
    setSaveTeleportFlag(true)          -- moving again: the height hold follows the trip back
    task.spawn(function() PX.saveReturnFlight() end)
    pinnedRoot = nil
    -- Hold fall immunity + the teleport flag for PX.SAVE_RELEASE_GRACE (10s) so the lift-up can't
    -- register as a fall; the addStep(5) maintenance re-asserts them while saveReleasing is true.
    saveReleasing = true
    task.delay(PX.SAVE_RELEASE_GRACE, function()
        saveReleasing = false
        local c = LocalPlayer.Character
        -- Cleared directly here, so the tracking flag has to be reset alongside it or the next
        -- Save Dino would think the attribute was already set and never write it.
        saveFlagHeld = false
        if c then pcall(function() c:SetAttribute("Teleporting", nil) end) end
        if not (PX.NO_FALL_DAMAGE or PX.FOSSIL_FARM) then
            if c then pcall(function() c:SetAttribute("FallDamageImmunity", nil) end) end
        end
    end)
    if saveDinoToggle then pcall(function() saveDinoToggle:Set(false) end) end
    -- The arrival notification comes from the return flight; this one just says it started.
    pcall(function() Hub:Notify("Dino released - flying back to your saved spot") end)
end

-- Reset state on respawn (the anchored part is destroyed with the old character).
table.insert(allConnections, LocalPlayer.CharacterAdded:Connect(function()
    stopSavePin()
    saveTargetCFrame = nil
    pinnedRoot = nil
    destroySavePlatform()
    PX.SAVE_DINO_ACTIVE = false
    saveReleasing = false            -- new character: the old grace no longer applies
    saveFlagHeld = false             -- attributes died with the old character
    PX.saveReturning = false         -- abandon any return flight that was in progress
    PX.saveOriginCF = nil            -- the old spot means nothing to a new character
    PX.csCache = nil                 -- CharacterState is re-resolved per character
    autoSaveArmed = true
    if saveDinoToggle then pcall(function() saveDinoToggle:Set(false) end) end
end))

-- Auto-save monitor: watches local health % and triggers Save Dino at/below the set threshold.
-- Fires once per dip, then re-arms only when health climbs back above the threshold, so a
-- manual Release while still low doesn't immediately yank the dino back underground.
PX.addStep(10, function()   -- ~6 checks/sec is plenty
    if not PX.AUTO_SAVE or PX.AUTO_SAVE_PCT <= 0 or (PX.AFK_FARM and PX.AFK_FARM_SAFETY) then return end
    local char = LocalPlayer.Character
    if not char then return end
    local hp = char:GetAttribute("Health")
    local maxHp = char:GetAttribute("MaxHealth")
    if type(hp) ~= "number" or type(maxHp) ~= "number" or maxHp <= 0 then return end
    if hp <= 0 then return end                     -- dead: ignore
    -- Include Bleed: pending bleed is damage the server has already committed to — it drains over
    -- the next few seconds whether you act or not — so counting it means auto-save fires on the
    -- health you are ABOUT to have, not the health showing now. Same value the Bleed ESP draws,
    -- read by this character's own ReplicaBind id.
    if PX.AUTO_SAVE_BLEED then
        local rid = getCharReplicaId()
        local bleed = rid and PX.bleedForecast[rid] or 0
        if type(bleed) == "number" and bleed > 0 then hp = math.max(0, hp - bleed) end
    end
    local pct = (hp / maxHp) * 100
    if pct <= PX.AUTO_SAVE_PCT then
        if autoSaveArmed and not PX.SAVE_DINO_ACTIVE then
            autoSaveArmed = false
            saveDino()
        end
    else
        autoSaveArmed = true                       -- recovered above threshold: re-arm
    end
end)

-- === AUTO WALK / TROT / RUN / SPRINT ===
-- The game's own four land gaits (its Movement data: Walk 1.15, Trot 4, Run 11.2, Sprint 14 studs/s).
-- Each is the Forward action plus that gait's action, exactly what the keys do, so the dino moves with the
-- game's own movement, animation and speed - and everything the game counts for moving counts.
-- Tabbed out the game blocks its own input (Controls.WindowUnfocused), so this clears that flag while it
-- holds a gait, the same way Legit Farm does, and puts it back when it stops.
PX.GAIT_ACTION = { Walk = nil, Trot = "Trot", Run = "Run", Sprint = "Sprint" }
function PX.autoGaitStop()
    local CS = PX.getCS()
    if CS and CS.Controls then
        pcall(function() CS.Controls:HandleAction("Forward", false) end)
        for _, a in pairs(PX.GAIT_ACTION) do pcall(function() CS.Controls:HandleAction(a, false) end) end
        if PX.gaitUnblocked then
            PX.gaitUnblocked = nil
            local foc = true
            pcall(function() foc = isrbxactive() end)
            pcall(function() CS.Controls.WindowUnfocused = not foc end)
        end
    end
    PX.gaitHeld = nil
end
PX.addStep(3, function()
    local want = PX.AUTO_GAIT
    -- the farms drive the dino themselves; a held gait would fight them
    if want and (PX.AFK_FARM or PX.LEGIT_FARM or PX.FOSSIL_FARM or PX.FLY or PX.AUTO_FLY
        or PX.SAVE_DINO_ACTIVE or PX.AS_BUSY or PX.UNLOADED) then want = nil end
    if not want then
        if PX.gaitHeld then PX.autoGaitStop() end
        return
    end
    local CS = PX.getCS()
    local C = CS and CS.Controls
    if not C then return end
    local foc = true
    pcall(function() foc = isrbxactive() end)
    if not foc then
        PX.gaitUnblocked = true
        if C.WindowUnfocused ~= false then pcall(function() C.WindowUnfocused = false end) end
        if C.InputWasBlocked == true then pcall(function() C.InputWasBlocked = false end) end
    elseif PX.gaitUnblocked then
        PX.gaitUnblocked = nil
    end
    -- the gait that is not wanted goes off first, so two are never held at once
    for name, action in pairs(PX.GAIT_ACTION) do
        if action and name ~= want and (CS.Actions and CS.Actions[action]) == true then
            pcall(function() C:HandleAction(action, false) end)
        end
    end
    local action = PX.GAIT_ACTION[want]
    if action and (CS.Actions and CS.Actions[action]) ~= true then pcall(function() C:HandleAction(action, true) end) end
    if (CS.Actions and CS.Actions.Forward) ~= true then pcall(function() C:HandleAction("Forward", true) end) end
    PX.gaitHeld = want
end)

-- === NO FALL DAMAGE ===
-- The game's fall damage is CLIENT-authoritative: the client's own FallDamage plugin
-- computes the fall and calls Replica:FireServer("Fall", ...) to damage itself, and it
-- even applies a *predicted* fatal fall EARLY (that's the "die before you land"). That
-- plugin's canTakeFallDamage() bails out when the character has the "FallDamageImmunity"
-- attribute — so we just keep that flag set. No velocity tricks: landings stay 100%
-- normal, no damage is ever sent, and the predictive mid-air death is stopped too.
 function PX.applyFallImmunity(on)
    local char = LocalPlayer.Character
    if char then pcall(function() char:SetAttribute("FallDamageImmunity", on and true or nil) end) end
end

-- Maintenance: re-assert the flag while enabled (covers respawns and any server clear).
-- Was every frame; the attribute only ever gets cleared on a respawn or a server write, so a
-- few checks a second re-asserts it long before you could reach terminal velocity.
PX.addStep(5, function()
    -- Fossil Farm silently uses this too, so teleporting between fossils can't kill you.
    -- Save Dino too — the drop underground would otherwise register a fatal fall/bleed.
    -- Auto Fly too: it parks you 300 studs up, and the fall-damage plugin applies a PREDICTED
    -- fatal fall (it kills mid-air), so the flag must already be set before the pin ever releases.
    if not (PX.NO_FALL_DAMAGE or PX.FOSSIL_FARM or PX.SAVE_DINO_ACTIVE or saveReleasing
        or PX.AUTO_FLY or PX.AFK_FARM or PX.LEGIT_FARM
        or os.clock() < (PX.flyLandUntil or 0)) then return end   -- +10s post-fly landing grace
    local char = LocalPlayer.Character
    if char and char:GetAttribute("FallDamageImmunity") ~= true then
        pcall(function() char:SetAttribute("FallDamageImmunity", true) end)
    end
    -- Keep the teleport flag asserted while saved OR surfacing (Save Dino only).
    --
    -- Gated on saveFlagHeld now. The pin DELIBERATELY drops this flag once you are parked, so the
    -- game's own gates let you lay down and sleep — and this maintenance step would otherwise put
    -- it straight back a few frames later and undo that. It only re-asserts what the pin is
    -- actually asking for.
    -- A number, never `true`: the game's Alignment holds Body at that Y and reads `true` as Y 0. 2026-10-15 this
    -- line overwrote the return flight's height every few frames and dragged a releasing dino ~430 studs under
    -- the map in half a second (two snap-backs, the "Playable outside of bounds" kick's ground).
    local wantFlag = (PX.SAVE_DINO_ACTIVE and saveFlagHeld) or saveReleasing
    if wantFlag and char and type(char:GetAttribute("Teleporting")) ~= "number" then
        local r = getAutoGrowRoot()
        if r then pcall(function() char:SetAttribute("Teleporting", r.Position.Y) end) end
    end
end)

-- === NO BLUR ===
-- The "broken head" concussion effect ramps a full-screen BlurEffect (separate from the game's
-- distance depth-of-field, which is a DepthOfFieldEffect and belongs to No Fog).
--
-- WHY THE OLD VERSION DIDN'T WORK. It pinned Size = 0 on a 3-frame throttle. Size is exactly the
-- property the concussion RAMPS, so we were writing 0 into a value the game rewrites continuously —
-- our zero survived until the ramp's next step and the blur showed anyway. Nothing about a Size
-- ramp touches Enabled, so switching the effect OFF holds instead of being overwritten.
--
-- Three changes, each closing one way the old sweep missed it:
--   1. Enabled = false (the fix above). Size = 0 stays as belt-and-braces.
--   2. Lighting:GetDescendants() rather than GetChildren() — a blur nested one Folder deep was
--      invisible to the old sweep. Lighting is a handful of instances, so this is nothing like the
--      workspace:GetDescendants() ban.
--   3. Instant reaction instead of polling: DescendantAdded catches a blur the frame it's created,
--      and we watch each one's Enabled so the game turning it back on is undone immediately. The
--      periodic sweep stays as a backstop for anything both hooks miss.
-- Effects we switched off are remembered and restored when the toggle goes back off.
PX.blurOff = setmetatable({}, { __mode = "k" })     -- effect -> true (WE disabled it)
PX.blurHooked = setmetatable({}, { __mode = "k" })  -- effect -> true (Enabled watcher attached)

function PX.killBlur(inst)
    if typeof(inst) ~= "Instance" or not inst:IsA("BlurEffect") then return end
    if not PX.blurHooked[inst] then
        PX.blurHooked[inst] = true
        -- The game re-enabling it is undone on the spot rather than up to 3 frames later.
        pcall(function()
            table.insert(allConnections, inst:GetPropertyChangedSignal("Enabled"):Connect(function()
                if PX.NO_BLUR and inst.Enabled then PX.killBlur(inst) end
            end))
        end)
    end
    pcall(function()
        if inst.Enabled then PX.blurOff[inst] = true; inst.Enabled = false end
        if inst.Size ~= 0 then inst.Size = 0 end
    end)
end

function PX.sweepBlur()
    pcall(function()
        for _, e in ipairs(Lighting:GetDescendants()) do PX.killBlur(e) end
    end)
    pcall(function()
        local cam = workspace.CurrentCamera
        if cam then for _, e in ipairs(cam:GetChildren()) do PX.killBlur(e) end end
    end)
end

-- Toggling off hands the blurs back exactly as we found them.
function PX.restoreBlur()
    for e in pairs(PX.blurOff) do
        pcall(function() if e.Parent then e.Enabled = true end end)
    end
    PX.blurOff = setmetatable({}, { __mode = "k" })
end

pcall(function()
    table.insert(allConnections, Lighting.DescendantAdded:Connect(function(d)
        if PX.NO_BLUR then PX.killBlur(d) end
    end))
end)
-- The camera instance is replaced on some respawns, so re-hook whenever it changes rather than
-- binding once to the camera that happened to exist at load.
do
    local camConn = nil
    local function hookCamera()
        pcall(function() if camConn then camConn:Disconnect() end end)
        local cam = workspace.CurrentCamera
        if not cam then return end
        camConn = cam.ChildAdded:Connect(function(c) if PX.NO_BLUR then PX.killBlur(c) end end)
        table.insert(allConnections, camConn)
        if PX.NO_BLUR then PX.sweepBlur() end
    end
    hookCamera()
    table.insert(allConnections,
        workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(hookCamera))
end

PX.addStep(3, function()
    if not PX.NO_BLUR then return end
    PX.sweepBlur()
end)

-- === INSTA TURN ===
-- The game turns your dino slowly (per-dino TurnSpeedMultiplier + its alignment system).
-- While the Insta Turn key is HELD we overwrite the root's facing every frame to match your
-- camera, so the dino flicks instantly to wherever you look. Applied on Heartbeat (after
-- physics) AND RenderStepped (before draw) so the game's turn system can't fight it.
local instaTurnKeybind = nil       -- assigned when the keybind UI is built
local instaTurnHeld = false

table.insert(allConnections, PX.UIS.InputBegan:Connect(function(input, gpe)
    if PX.UNLOADED or gpe then return end
    local k = instaTurnKeybind and instaTurnKeybind.Key
    if k and k ~= Enum.KeyCode.Unknown and input.KeyCode == k then instaTurnHeld = true end
end))
table.insert(allConnections, PX.UIS.InputEnded:Connect(function(input)
    local k = instaTurnKeybind and instaTurnKeybind.Key
    if k and input.KeyCode == k then instaTurnHeld = false end
end))

 function PX.instaTurnStep()
    if PX.UNLOADED or not (instaTurnHeld or PX.mob.insta) then return end
    local root = getAutoGrowRoot()
    local cam = workspace.CurrentCamera
    if not (root and cam) then return end
    local look = cam.CFrame.LookVector
    local flat = Vector3.new(look.X, 0, look.Z)          -- horizontal only, don't tilt the dino
    if flat.Magnitude < 0.01 then return end
    pcall(function()
        root.CFrame = CFrame.lookAt(root.Position, root.Position + flat.Unit)
        root.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
    end)
end
-- Deliberately kept on BOTH phases. Heartbeat goes through the shared scheduler, but
-- RenderStepped stays its own connection: it has to run before the frame is drawn, and dropping
-- it to save a connection would make the dino visibly jitter between the game's facing and
-- yours on every held frame. The step early-returns on `not instaTurnHeld`, so it costs nothing
-- while the key is up.
PX.addStep(1, PX.instaTurnStep)
table.insert(allConnections, RunService.RenderStepped:Connect(PX.instaTurnStep))

-- === TURN SPEED (reduced turning radius) ===
-- In this game you steer with A / D — W only pushes you forward, and the camera does NOT
-- drive your facing. So this adds extra yaw on top of the game's own turning for as long as
-- you hold A or D, which is what actually tightens the turning radius.
-- 0 = off (game's normal turning). Higher = whips around faster.
PX.TURN_SPEED = 250             -- EXTRA degrees per second while holding A / D
PX.QUICK_TURN = false              -- gates the above; "Quick Turn" toggle on Movement

 function PX.turnAssistStep(dt)
    if PX.UNLOADED or not PX.QUICK_TURN or PX.TURN_SPEED <= 0 then return end
    if instaTurnHeld or PX.mob.insta then return end     -- Insta Turn already snapping
    if PX.UIS:GetFocusedTextBox() then return end        -- don't steer while typing in chat

    local dir = 0
    if PX.UIS:IsKeyDown(Enum.KeyCode.A) or PX.mob.turnL then dir = dir + 1 end   -- +Y yaw = left
    if PX.UIS:IsKeyDown(Enum.KeyCode.D) or PX.mob.turnR then dir = dir - 1 end
    if dir == 0 then return end                          -- both or neither held

    local root = getAutoGrowRoot()
    if not root then return end

    local step = math.rad(PX.TURN_SPEED) * (dt or 1 / 60) * dir
    pcall(function()
        root.CFrame = root.CFrame * CFrame.Angles(0, step, 0)
        root.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
    end)
end
-- Same reasoning as Insta Turn: RenderStepped stays separate so turning keeps its smooth feel.
PX.addStep(1, PX.turnAssistStep)
table.insert(allConnections, RunService.RenderStepped:Connect(PX.turnAssistStep))

-- === ATTACK SPEED + REAL NO ATTACK COOLDOWN ===
-- UPDATE (Real executor): the cooldown removal below now works for real — require() reaches
-- CharacterState on Real, so we zero the client-side cooldown multiplier (see the "REAL No Attack
-- Cooldown" block further down). The historical note below is why it was ANIMATION-ONLY on Solara:
--
-- This started out as "No Attack Cooldown". On SOLARA it couldn't be. Proven by scanning, not assumed:
--   * The cooldown IS client-side - PVP does
--         task.delay(Cooldown * CharacterState.Growth.attackCooldownMultiplier * starvation)
--     so zeroing that multiplier would delete the gap between attacks entirely.
--   * But on Solara CharacterState was unreachable. require() was hard-blocked ("init:854: Cannot
--     require"), getgc / getupvalue / debug.getupvalue did not exist, and a full walk of
--     getreg + getrenv + getgenv exhausted 38,645 reachable tables without ever seeing it.
--     Every route to that value is closed.
--
-- What IS reachable is the other gate. The client holds `attacking = true` for the whole
-- attack sequence and only clears it at the very end, so the ANIMATION length also caps your
-- attack rate - and animation tracks we can touch. The game plays attacks at
-- AnimationPriority.Action4, which lets us target exactly those and leave walk/idle alone.
--
-- So: this speeds attacks up by shortening the animation. The cooldown gap remains. Do not
-- rename this back to "No Attack Cooldown" without re-testing - it would be a false claim.
PX.NO_ATK_CD = false            -- "Instant Attack" — speeds up the attack ANIMATION only
PX.NO_ATK_COOLDOWN = false      -- "No Attack Cooldown" — zeroes the real cooldown multiplier

-- NOTE: this does NOT increase your attack rate. The cooldown timer starts when the attack
-- starts, so a faster animation just moves time out of the animation and into the dead gap
-- afterwards - the cycle length is the cooldown either way. It only helps on attacks whose
-- animation is LONGER than their cooldown, where the animation is the actual limiter.
PX.ATTACK_SPEED = 3             -- attack animation speed multiplier (visual pacing)
-- Weak: a track the game has finished with has nothing left to restore, and a strong table kept every attack
-- animation of the session alive.
local spedTracks = setmetatable({}, { __mode = "k" })

-- Cached per character: the Animator never moves once the rig is built, and the fallback path
-- here is a recursive FindFirstChildWhichIsA that used to run every single frame.
PX.animatorCache = setmetatable({}, { __mode = "k" })

 function PX.getAnimator()
    local char = LocalPlayer.Character
    if not char then return nil end
    local cached = PX.animatorCache[char]
    if cached and cached.Parent then return cached end
    local hum = char:FindFirstChildOfClass("Humanoid")
    local anim = hum and hum:FindFirstChildOfClass("Animator")
    if not anim then anim = char:FindFirstChildWhichIsA("Animator", true) end
    PX.animatorCache[char] = anim
    return anim
end

 function PX.restoreAttackSpeed()
    for track, _ in pairs(spedTracks) do
        pcall(function() if track.IsPlaying then track:AdjustSpeed(1) end end)
    end
    spedTracks = setmetatable({}, { __mode = "k" })
end

-- GetPlayingAnimationTracks() allocates a fresh table on every call, so this ran a per-frame
-- allocation for the whole time the feature was on. Every other frame is still far faster than
-- any attack animation starts, so a track is caught within ~16ms of beginning — the speed-up is
-- applied before the swing is meaningfully underway, exactly as before.
PX.addStep(2, function()
    if not PX.NO_ATK_CD then return end

    local animator = PX.getAnimator()
    if not animator then return end
    pcall(function()
        for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
            if track.Priority == Enum.AnimationPriority.Action4 and track.Speed ~= PX.ATTACK_SPEED then
                track:AdjustSpeed(PX.ATTACK_SPEED)
                spedTracks[track] = true
            end
        end
    end)
end)

-- REAL No Attack Cooldown (Real executor only): the PVP cooldown is
--   task.delay(Cooldown * CharacterState.Growth.attackCooldownMultiplier * starvation, ...)
-- On Solara CharacterState was unreachable; on Real require() works, so we zero that multiplier live
-- (pinned per-frame — the game recomputes it on growth/starvation) which deletes the cooldown gap for
-- real, not just the animation. Gated by the same PX.NO_ATK_CD toggle. Confirmed working in testing.
task.spawn(function()   -- PX.requireCS() is nil on Xeno: no No Attack Cooldown there
    local CS = PX.requireCS()
    if CS then
        PX.addStep(1, function()
            if not PX.NO_ATK_COOLDOWN or PX.UNLOADED then return end
            pcall(function()
                if type(CS.Growth) == "table" and CS.Growth.attackCooldownMultiplier ~= nil then
                    CS.Growth.attackCooldownMultiplier = 0
                end
            end)
        end)
    end
end)

-- === UNLIMITED ZOOM ===
-- How far you can zoom out is capped by CameraMaxZoomDistance, which this game re-asserts per
-- dinosaur and on respawn.
--
-- The snap-back bug: the default camera module clamps your CURRENT zoom to whatever the max
-- is, and it does that on RenderStepped. Fixing the property on Heartbeat - which runs AFTER
-- the frame is rendered - was too late. The camera had already pulled you in, and restoring
-- the max afterwards does not give your distance back. So we now run just BEFORE the camera
-- module via BindToRenderStep, and also correct the property the instant anything writes it.
--
-- No slider: we ask the engine for the largest value it will accept and stay pinned there.
local origMaxZoom, origMinZoom = nil, nil
local zoomBound = false
PX.ZOOM_FAR = nil

-- Re-probeable now (pass true). The old version cached the ceiling on first use and never looked
-- again, so if the engine or the game tightened what it accepts, every later frame kept aiming at
-- a distance that was no longer reachable and the feature just quietly stopped moving the camera.
 function PX.resolveZoomFar(force)
    if PX.ZOOM_FAR and not force then return PX.ZOOM_FAR end
    for _, v in ipairs({ 1e6, 1e5, 5e4, 1e4, 5000, 2000 }) do
        local ok = pcall(function() LocalPlayer.CameraMaxZoomDistance = v end)
        if ok then
            local got = LocalPlayer.CameraMaxZoomDistance
            if type(got) == "number" and got > 0 then PX.ZOOM_FAR = got; return PX.ZOOM_FAR end
        end
    end
    PX.ZOOM_FAR = 2000
    return PX.ZOOM_FAR
end

-- Holding the zoom, properly this time.
--
-- Two earlier attempts failed. Raising CameraMaxZoomDistance alone does nothing,
-- because the game drops the cap for a frame, the camera module clamps your
-- CURRENT distance to it, and restoring the cap afterwards does not give the
-- distance back. Then trying to push the camera back out each frame slid anyway:
-- any creep smaller than the correction threshold got absorbed into the target,
-- so the target walked inward with the camera.
--
-- The reliable trick is to stop fighting the clamp and use it. Set
-- CameraMinZoomDistance == CameraMaxZoomDistance == the distance you want, and
-- the camera module has nowhere to clamp to except that value. It cannot drag
-- you in, because "in" is outside the range the engine will accept. No
-- PlayerModule internals involved, and nothing to lose a race against.
--
-- Scrolling still has to work, so the wheel re-opens the range for a moment; we
-- follow the camera while it is open, then re-pin wherever you landed.
PX.zoomTarget = nil      -- what we actually managed to PIN this frame (may be a clamped value).
-- What YOU asked for. Only the wheel writes this — never a measurement.
--
-- Splitting want from target is the fix for "zoom works, then dies after a respawn and stays dead".
-- The old code wrote a clamped reading back into BOTH the target and the ceiling, and nothing ever
-- raised either again, so a single frame where the game dropped CameraMaxZoomDistance (respawn,
-- growth stage, cutscene) retired the feature until you toggled it off and on. Intent now survives
-- the clamp, so when the ceiling comes back the zoom returns on its own.
PX.zoomWant = nil
PX.zoomProbeAt = 0       -- last ceiling re-probe (rate-limited; probing writes a property)

-- Distance without asking the PlayerModule: for the default camera, Focus sits
-- on the subject, so the gap between it and the camera IS the zoom distance.
local function currentZoomDist()
    local cam = workspace.CurrentCamera
    if not cam then return nil end
    local ok, d = pcall(function()
        return (cam.CFrame.Position - cam.Focus.Position).Magnitude
    end)
    if not ok or type(d) ~= "number" or d ~= d or d <= 0 then return nil end
    return d
end

-- Max before min: the engine keeps min <= max, so widening the top first stops
-- an intermediate min > max from being rejected.
 function PX.setZoomRange(minD, maxD)
    pcall(function()
        if LocalPlayer.CameraMaxZoomDistance ~= maxD then LocalPlayer.CameraMaxZoomDistance = maxD end
        if LocalPlayer.CameraMinZoomDistance ~= minD then LocalPlayer.CameraMinZoomDistance = minD end
    end)
end

 function PX.applyZoom()
    if PX.UNLOADED or not PX.UNLIMITED_ZOOM then return end
    -- Pin the camera to OUR own distance (set by the wheel below), not one read from the game's
    -- camera. min == max == target leaves the camera nowhere to go but exactly there, so it can't
    -- snap back in when you stop scrolling.
    local want = PX.zoomWant or PX.zoomTarget or currentZoomDist() or 20
    PX.zoomWant = want
    local far = PX.ZOOM_FAR or 2000
    local t = math.clamp(want, 0.5, far)
    PX.setZoomRange(t, t)

    -- Did the engine actually accept it? The property is CLAMPED on write, not rejected, so a
    -- refused value fails silently — which is exactly what a "zoom stopped working" report looks
    -- like. Reading straight back is safe: assignment is synchronous, so this is the clamp applied
    -- to OUR write, not somebody else's later one.
    local got = LocalPlayer.CameraMaxZoomDistance
    if type(got) == "number" and got > 0 and got < t - 1 then
        -- Clamped. Honour it for THIS frame so the camera stays where the engine will allow, but
        -- do not treat it as the new ceiling — that was the bug. The game drops the cap
        -- transiently and puts it back, so we re-probe (rate-limited to once a second, since
        -- probing writes a property) and let the ceiling recover. PX.zoomWant is untouched
        -- throughout, so the moment the cap returns we go straight back to where you asked to be.
        PX.setZoomRange(got, got)
        PX.zoomTarget = got
        if os.clock() - (PX.zoomProbeAt or 0) > 1 then
            PX.zoomProbeAt = os.clock()
            PX.resolveZoomFar(true)
        end
    else
        PX.zoomTarget = t
    end
end

-- FALLBACK: place the camera ourselves when the range pin stops working.
--
-- The min == max pin is still the primary mechanism and this does nothing while it works — the
-- distance check below only trips when the camera is somewhere the pin says it cannot be. That
-- covers the pin failing for any reason (the engine refusing min == max, the camera module
-- clamping differently, or another writer landing after us) without changing behaviour when it
-- doesn't.
--
-- Pushing the camera back out was tried before and slid inward. That happened because the target
-- was re-derived from the camera each frame, so any un-corrected creep got absorbed into it and
-- the target walked in alongside the camera. PX.zoomTarget is authoritative now — only the wheel
-- writes it, never a measurement — so there is nothing for a slide to accumulate into.
PX.zoomFailFrames = 0
 function PX.enforceZoom()
    if PX.UNLOADED or not PX.UNLIMITED_ZOOM then return end
    local t = PX.zoomTarget
    local cam = workspace.CurrentCamera
    if not (t and cam) then return end
    -- A scripted camera belongs to whatever scripted it; don't fight over it.
    local scripted = false
    pcall(function() scripted = (cam.CameraType == Enum.CameraType.Scriptable) end)
    if scripted then PX.zoomFailFrames = 0 return end

    local d = currentZoomDist()
    if not d or math.abs(d - t) <= 1.5 then PX.zoomFailFrames = 0 return end

    -- Require a few consecutive bad frames so a single-frame transition (respawn, camera swap)
    -- doesn't trigger a correction and make the camera pop.
    PX.zoomFailFrames = PX.zoomFailFrames + 1
    if PX.zoomFailFrames < 3 then return end

    pcall(function()
        local focus = cam.Focus.Position
        local look = cam.CFrame.LookVector
        if look.Magnitude < 0.01 then return end
        -- Same placement the default camera uses: back off from the focus along the current look
        -- direction. Orientation is untouched, so this only changes distance.
        cam.CFrame = CFrame.lookAt(focus - look.Unit * t, focus)
    end)
end

-- The wheel adjusts OUR target distance directly (before the camera module reads the range), then we
-- immediately re-pin to it — so each notch moves the camera and the new distance holds.
pcall(function()
    table.insert(allConnections, PX.UIS.InputChanged:Connect(function(input)
        if PX.UNLOADED or not PX.UNLIMITED_ZOOM then return end
        if input.UserInputType == Enum.UserInputType.MouseWheel then
            local far = PX.ZOOM_FAR or 2000
            -- Scroll from what you ASKED for, not from where the camera currently is. Deriving the
            -- step from a clamped position is how the target used to walk inward alongside the
            -- camera; PX.zoomWant is authoritative and only ever written here.
            local t = PX.zoomWant or PX.zoomTarget or currentZoomDist() or 20
            local step = math.max(3, t * 0.12)                     -- bigger steps the further out you are
            t = math.clamp(t - input.Position.Z * step, 0.5, far)  -- wheel back (Z<0) zooms out
            PX.zoomWant = t
            PX.zoomTarget = t
            PX.setZoomRange(t, t)
        end
    end))
end)

 function PX.bindZoom()
    if zoomBound then return end
    if origMaxZoom == nil then            -- remember the game's values BEFORE probing
        origMaxZoom = LocalPlayer.CameraMaxZoomDistance
        origMinZoom = LocalPlayer.CameraMinZoomDistance
    end
    PX.resolveZoomFar(true)   -- re-probe on every enable; the ceiling can move between sessions
    PX.zoomTarget = currentZoomDist() or PX.zoomTarget or 20      -- start from where you are now
    PX.zoomWant = PX.zoomTarget
    PX.zoomProbeAt = 0
    PX.zoomFailFrames = 0
    pcall(function()
        RunService:BindToRenderStep("EZ_UnlimitedZoom",
            Enum.RenderPriority.Camera.Value - 1, PX.applyZoom)      -- ahead of the camera module
    end)
    -- Second pass AFTER the camera module has run. Setting the range ahead of it is what stops the
    -- clamp; checking behind it is how we find out the clamp happened anyway, which is the only
    -- point in the frame where that's observable.
    pcall(function()
        RunService:BindToRenderStep("EZ_UnlimitedZoomFix",
            Enum.RenderPriority.Camera.Value + 1, PX.enforceZoom)
    end)
    zoomBound = true
end

 function PX.restoreZoom()
    if zoomBound then
        pcall(function() RunService:UnbindFromRenderStep("EZ_UnlimitedZoom") end)
        pcall(function() RunService:UnbindFromRenderStep("EZ_UnlimitedZoomFix") end)
        zoomBound = false
    end
    PX.zoomTarget = nil     -- re-sample from your current distance next time it's switched on
    PX.zoomWant = nil       -- cleared together, or re-enabling would snap to the OLD requested distance
    if origMaxZoom ~= nil then
        pcall(function()
            LocalPlayer.CameraMinZoomDistance = origMinZoom
            LocalPlayer.CameraMaxZoomDistance = origMaxZoom
        end)
    end
end

-- catch the game's own writes immediately instead of waiting for the next frame
table.insert(allConnections,
    LocalPlayer:GetPropertyChangedSignal("CameraMaxZoomDistance"):Connect(PX.applyZoom))

-- === FOV CHANGER ===
-- Same shape as Unlimited Zoom above, for the same reason: the camera module writes the camera
-- every frame on RenderStepped, so a value set on Heartbeat is applied AFTER the frame has already
-- been drawn with the game's number. We bind just behind the camera module instead, which makes
-- ours the last write before the frame renders.
--
-- The original is captured on the first enable and put back on disable, so switching it off
-- returns you to whatever the game was using rather than to a hardcoded 70.
PX.FOV_ENABLED = false
PX.FOV_VALUE = 70                -- Roblox accepts 1-120; 70 is the default
local origFOV = nil
local fovBound = false

function PX.applyFOV()
    if PX.UNLOADED or not PX.FOV_ENABLED then return end
    local cam = workspace.CurrentCamera
    if not cam then return end
    pcall(function()
        -- A scripted camera belongs to whatever scripted it; don't fight over it.
        if cam.CameraType == Enum.CameraType.Scriptable then return end
        local want = math.clamp(PX.FOV_VALUE or 70, 1, 120)
        if math.abs(cam.FieldOfView - want) > 0.01 then cam.FieldOfView = want end
    end)
end

function PX.bindFOV()
    if fovBound then return end
    if origFOV == nil then
        pcall(function() origFOV = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView end)
    end
    pcall(function()
        RunService:BindToRenderStep("EZ_FOV", Enum.RenderPriority.Camera.Value + 1, PX.applyFOV)
    end)
    fovBound = true
end

function PX.restoreFOV()
    if fovBound then
        pcall(function() RunService:UnbindFromRenderStep("EZ_FOV") end)
        fovBound = false
    end
    if origFOV ~= nil then
        pcall(function()
            local cam = workspace.CurrentCamera
            if cam then cam.FieldOfView = origFOV end
        end)
    end
end

-- === ONE FLIGHT: up, across with the ground, down onto dry ground ===
-- Biome Travel and Teleport to Corpse fly with this (the shape Legit Farm's escape flies). Every step goes through the
-- shared mover (PX.govNext): sideways at the dino's run speed, up/down 150, swimming speed over water, standing still for
-- 3 s after a snap-back. Across, it keeps `alt` studs over the highest ground or water under it and 60 studs ahead -
-- far ground is not streamed in yet, so it is read as we come to it. The height hold ("Teleporting") is always the
-- height we fly at, never `true`: the game's Alignment reads that as Y 0 and drags the dino under the map (2026-10-15).
-- Never across a map wall, never inside the ground. Comes down at the dino's own ride height on dry ground - straight
-- below `dest`, or the nearest dry ground within 800 studs of it. YIELDS (call it from a task). active(): returning
-- false stops the flight where it is. Returns true once down, else false and why.
function PX.flyTo(dest, active, alt, say)
    local root = PX.getLocalPhysicsRoot()
    local ch = LocalPlayer.Character
    if not (root and root.Parent and ch) then return false, "no character" end
    alt = alt or 40
    local stand = math.max(3, root.Size.Y * 0.5)
    pcall(function()
        local al = PX.getCS().Alignment
        local h = (al.RideHeight or 0) + (al.BodyHeightIncrease or 0)
        if h > stand then stand = h end
    end)
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Include
    local list = { workspace.Terrain }
    pcall(function() local m = workspace.World:FindFirstChild("Mountains"); if m then list[2] = m end end)
    params.FilterDescendantsInstances = list
    params.IgnoreWater = false
    -- The top of the ground or water at x,z (and its material); nil where nothing has streamed in yet.
    local function surface(x, z, fromY)
        local hit = workspace:Raycast(Vector3.new(x, fromY + 1500, z), Vector3.new(0, -5000, 0), params)
        if hit then return hit.Position.Y, hit.Material end
    end
    -- Dry ground at or near p (rings out to 800 studs), as the spot to stand on; nil while none is loaded.
    local function dryNear(p)
        local y, m = surface(p.X, p.Z, p.Y)
        if y and m ~= Enum.Material.Water then return Vector3.new(p.X, y, p.Z) end
        for r = 20, 800, 20 do
            for i = 0, 15 do
                local a = i * math.pi / 8
                local x, z = p.X + math.cos(a) * r, p.Z + math.sin(a) * r
                local y2, m2 = surface(x, z, p.Y)
                if y2 and m2 ~= Enum.Material.Water and not (PX.wallCross and PX.wallCross(p, Vector3.new(x, p.Y, z))) then
                    return Vector3.new(x, y2, z)
                end
            end
        end
    end
    local function tell(s) PX.flyStatus = s; if say then pcall(say, s) end end
    if PX.trackWalls then pcall(PX.trackWalls) end
    if PX.wallCross and PX.wallCross(root.Position, Vector3.new(dest.X, root.Position.Y, dest.Z)) then
        return false, "a map wall is in the way"
    end
    pcall(function() ch:SetAttribute("FallDamageImmunity", true) end)
    local done, why = false, "timed out"
    local okRun, err = pcall(function()
        local RunService = game:GetService("RunService")
        local pos = root.Position
        local goal = Vector3.new(dest.X, dest.Y, dest.Z)
        local flat0 = Vector3.new(goal.X - pos.X, 0, goal.Z - pos.Z)
        local dir = flat0.Magnitude > 0.1 and flat0.Unit or Vector3.new(0, 0, -1)
        local deadline = os.clock() + flat0.Magnitude / math.max(PX.mvSideCap(), 1) * 1.6 + 60
        local hardEnd, lastT = deadline + PX.MV_WATER_EXTRA, os.clock()
        local phase, resolved, landY, wallT = "across", false, nil, 0
        while not PX.UNLOADED do
            local dt = RunService.Heartbeat:Wait()
            if active and not active() then why = "stopped" return end
            if not (root.Parent and LocalPlayer.Character == ch) then why = "the dino is gone" return end
            deadline, lastT = PX.mvExtend(deadline, lastT, hardEnd)
            if os.clock() > deadline then return end
            if PX.mvHold() then pos = root.Position end
            local hd = Vector3.new(goal.X - pos.X, 0, goal.Z - pos.Z).Magnitude
            if hd > 0.5 then dir = Vector3.new(goal.X - pos.X, 0, goal.Z - pos.Z).Unit end
            -- Close enough for the far end to have streamed in: pick the dry spot to come down on.
            if not resolved and hd < 400 then
                local spot = dryNear(goal)
                if spot then goal, resolved = spot, true end
                hd = Vector3.new(goal.X - pos.X, 0, goal.Z - pos.Z).Magnitude
            end
            -- A map wall learned on the way (they stream in near the edges): come down here instead.
            if phase == "across" and os.clock() - wallT > 0.5 then
                wallT = os.clock()
                if PX.wallCross and PX.wallCross(pos, pos + dir * math.min(hd, 80)) then
                    local spot = dryNear(pos)
                    goal, resolved, why = spot or Vector3.new(pos.X, pos.Y, pos.Z), true, "stopped at a map wall"
                    hd = Vector3.new(goal.X - pos.X, 0, goal.Z - pos.Z).Magnitude
                end
            end
            local target
            if phase == "across" then
                local ahead = pos + dir * math.min(60, hd)
                local y1 = surface(pos.X, pos.Z, pos.Y) or (pos.Y - stand - alt)
                local y2 = surface(ahead.X, ahead.Z, pos.Y) or y1
                local cruise = math.max(y1, y2) + stand + alt
                if hd < 1 and resolved then
                    phase = "down"
                elseif pos.Y < cruise - 2 then
                    -- Ground ahead is higher: climb (barely forward) before going on, never into a hillside.
                    target = Vector3.new(pos.X + dir.X * math.min(hd, 2), cruise, pos.Z + dir.Z * math.min(hd, 2))
                else
                    local step = math.min(hd, 50)
                    target = Vector3.new(pos.X + dir.X * step, cruise, pos.Z + dir.Z * step)
                end
                tell(math.floor(hd) .. " studs to go")
            end
            if phase == "down" then
                if not landY then
                    local y = surface(goal.X, goal.Z, pos.Y)
                    landY = (y or (pos.Y - stand - alt)) + stand + 0.5
                end
                if math.abs(pos.Y - landY) < 0.5 then done = true return end
                target = Vector3.new(goal.X, landY, goal.Z)
                tell("landing")
            end
            local nxt = PX.govNext(pos, target, dt)
            -- Never inside the ground (the server kicks a dino it finds there).
            local top = surface(nxt.X, nxt.Z, nxt.Y)
            if top and nxt.Y < top + stand * 0.5 then nxt = Vector3.new(nxt.X, top + stand * 0.5, nxt.Z) end
            pos = nxt
            pcall(function()
                ch:SetAttribute("Teleporting", pos.Y)
                root.CFrame = CFrame.lookAt(pos, pos + dir)
                root.AssemblyLinearVelocity = Vector3.zero
                root.AssemblyAngularVelocity = Vector3.zero
            end)
        end
    end)
    if not okRun then why = tostring(err) end
    -- Movement back to the game at once; fall immunity stays for the landing grace (PX.flyLandUntil).
    pcall(function() ch:SetAttribute("Teleporting", nil) end)
    pcall(function() root.AssemblyLinearVelocity = Vector3.zero end)
    PX.flyLandUntil = os.clock() + 10
    PX.flyStatus = nil
    return done, done and "arrived" or why
end

-- === BIOME TRAVEL ===
-- Fly to one of the map's named places: ReplicatedStorage.Locations, the places its compass and map name (Horseshoe
-- Bend, Muddy Marsh, The Great Lagoon ...), each a Model whose pivot is the place's centre. They live in
-- ReplicatedStorage, so every place is known on every map. workspace.Biomes only has parts near you - 2026-10-15 on
-- Cretaceous Archipelago 3 of its 9 biome folders had nothing loaded - which is why the old version had no dependable
-- place to land and was taken out of the menu.
PX.BIOME_TARGET = nil
PX.BIOME_TRAVEL = false          -- true while a trip is running; clearing it stops the flight
PX.biomeTravelling = false       -- re-entry guard, so two trips cannot overlap
PX.biomeToggle = nil             -- the switch, so the trip can turn itself off on arrival
-- A place's point by name, checked before the map's own data.
PX.BIOME_POINTS = {}

function PX.biomeNames()
    local names = {}
    pcall(function()
        for _, m in ipairs(game:GetService("ReplicatedStorage").Locations:GetChildren()) do names[#names + 1] = m.Name end
    end)
    table.sort(names)
    return names
end

function PX.biomePoint(name)
    if PX.BIOME_POINTS[name] then return PX.BIOME_POINTS[name] end
    local p
    pcall(function()
        local m = game:GetService("ReplicatedStorage").Locations:FindFirstChild(name)
        if m then p = m:GetPivot().Position end
    end)
    return p
end

-- Fly there, land, switch off. One shot - a way to get somewhere, not a mode to sit in.
function PX.travelToBiome(name)
    if PX.biomeTravelling then return end
    PX.biomeTravelling = true
    local target = name and PX.biomePoint(name)
    local ok, why = false, "pick a place first"
    if target then
        pcall(function() Hub:Notify("Biome Travel: flying to " .. tostring(name), 4) end)
        local s, a, b = pcall(PX.flyTo, target, function() return PX.BIOME_TRAVEL and not (PX.otherMoverOn and PX.otherMoverOn()) end, 40)
        ok, why = s and a, s and b or tostring(a)
    end
    pcall(function()
        Hub:Notify(ok and ("Arrived: " .. tostring(name)) or ("Biome Travel: " .. tostring(why) .. " - you are where it stopped"), 6)
    end)
    PX.biomeTravelling = false
    PX.BIOME_TRAVEL = false
    if PX.biomeToggle then pcall(function() PX.biomeToggle:Set(false) end) end
end

-- === FOSSIL FARM ===
-- Fossils live in workspace.SpawnedFossils. Each model contains a size mesh (FossilS/M/Sphere)
-- with a ProximityPrompt child named "Fossil" (HoldDuration=0.5, Range=25, Key=E).
-- Collection: get within range, hold E for HoldDuration, the game's FossilController handles
-- the Knit call. Same CFrame-fly technique as AFK Farm, through the shared mover (no speed setting).
PX.fossilFarmToggle = nil

local function fossilPromptOf(fossil)
    for _, d in ipairs(fossil:GetDescendants()) do
        if d:IsA("ProximityPrompt") and d.Name == "Fossil" then return d end
    end
    return nil
end

 function PX.fossilPosOf(fossil)
    -- The prompt's own part is where the fossil is picked up; the model's pivot can sit away from it,
    -- which made "nearest" pick the wrong fossil. The pivot stays as the fallback.
    local ok, p = pcall(function()
        local pp = fossilPromptOf(fossil)
        pp = pp and pp.Parent
        if pp and pp:IsA("Attachment") then return pp.WorldPosition end
        if pp and pp:IsA("BasePart") then return pp.Position end
        return fossil:GetPivot().Position
    end)
    if ok then return p end
    return nil
end

-- The order to visit every collectible fossil in, starting where the dino is: nearest-neighbour, then
-- 2-opt (reverse any stretch that makes the whole trip shorter) until nothing improves. Going to the
-- nearest one each time leaves stragglers behind that cost a long trip back later. Returns the fossils
-- in order (first = the next stop).
function PX.ffPlanRoute(fromPos)
    local folder = workspace:FindFirstChild("SpawnedFossils")
    if not folder then return {} end
    local now, cand = os.clock(), {}
    for _, f in ipairs(folder:GetChildren()) do
        local prompt = fossilPromptOf(f)
        local skipUntil = PX.ffSkip and PX.ffSkip[f]
        if prompt and prompt.Enabled ~= false and not (skipUntil and skipUntil > now) then
            local p = PX.fossilPosOf(f)
            if p and p.Magnitude > 1 then cand[#cand + 1] = { f = f, p = p } end
        end
        if #cand >= 150 then break end
    end
    local n = #cand
    if n == 0 then return {} end
    -- nearest-neighbour
    local order, used, at = {}, {}, fromPos
    for _ = 1, n do
        local bi, bd
        for i, c in ipairs(cand) do
            if not used[i] then
                local d = (c.p - at).Magnitude
                if not bd or d < bd then bi, bd = i, d end
            end
        end
        used[bi] = true
        order[#order + 1] = cand[bi]
        at = cand[bi].p
    end
    -- 2-opt on the open path fromPos -> order[1] -> ... -> order[n]
    local function pos(i) return i == 0 and fromPos or order[i].p end
    for _ = 1, 8 do
        local better = false
        for i = 1, n - 1 do
            for k = i + 1, n do
                local a, b, c = pos(i - 1), pos(i), pos(k)
                local before = (b - a).Magnitude
                local after = (c - a).Magnitude
                if k < n then
                    local d = pos(k + 1)
                    before = before + (d - c).Magnitude
                    after = after + (d - b).Magnitude
                end
                if after < before - 0.01 then
                    local lo, hi = i, k
                    while lo < hi do order[lo], order[hi] = order[hi], order[lo]; lo, hi = lo + 1, hi - 1 end
                    better = true
                end
            end
        end
        if not better then break end
    end
    local out = {}
    for i, c in ipairs(order) do out[i] = c.f end
    return out
end

-- Only consider fossils that are ACTUALLY collectible: they must still have a
-- ProximityPrompt and a sane position. Empty leftovers (model still in the folder but its
-- prompt gone) were being picked as "nearest" forever — that's the teleport-to-nothing loop.
 function PX.nearestFossil(fromPos)
    local folder = workspace:FindFirstChild("SpawnedFossils")
    if not folder then return nil end
    local best, bestD
    for _, f in ipairs(folder:GetChildren()) do
        local prompt = fossilPromptOf(f)
        local skipUntil = PX.ffSkip and PX.ffSkip[f]   -- Fossil Farm gave up on it (see its background check)
        if prompt and prompt.Enabled ~= false and not (skipUntil and skipUntil > os.clock()) then
            local p = PX.fossilPosOf(f)
            if p and p.Magnitude > 1 then                 -- ignore origin/garbage positions
                local d = (p - fromPos).Magnitude
                if not bestD or d < bestD then best, bestD = f, d end
            end
        end
    end
    return best
end

-- Make the target fossil's prompt the ONLY activatable one nearby, so fireproximityprompt
-- fires it without the camera pointed at it (it fires the "active" prompt, and the active
-- prompt is whichever enabled one is in range/closest to gaze). We briefly disable other
-- nearby fossil prompts, fire, then restore them.
 function PX.isolatePrompt(targetPrompt, fromPos)
    local disabled = {}
    local folder = workspace:FindFirstChild("SpawnedFossils")
    if not folder then return disabled end
    for _, f in ipairs(folder:GetChildren()) do
        local p = fossilPromptOf(f)
        if p and p ~= targetPrompt and p.Enabled then
            local ok, pos = pcall(function() return p.Parent.Position end)
            if (not ok) or (pos - fromPos).Magnitude < 80 then   -- only ones that could compete
                pcall(function() p.Enabled = false end)
                table.insert(disabled, p)
            end
        end
    end
    return disabled
end
 function PX.restorePrompts(list)
    for _, p in ipairs(list) do pcall(function() if p and p.Parent then p.Enabled = true end end) end
end

-- ═══════════════════════════════════════
-- AUTO SPAWN — spams RequestSlot to grab a slot the instant one opens
-- ═══════════════════════════════════════
function PX.autoSpawnCleanup()
    for _, d in ipairs(PX.AUTO_SPAWN_DRAWS) do pcall(function() d:Remove() end) end
    table.clear(PX.AUTO_SPAWN_DRAWS)
    PX.AUTO_SPAWN = false
    PX.AUTO_SPAWN_TARGET = nil
    PX.AUTO_SPAWN_GENDER = nil
    PX.AUTO_SPAWN_ATTEMPTS = 0
end

function PX.autoSpawnCleanupGUI()
    local pg = LocalPlayer.PlayerGui
    pcall(function()
        local dsg = pg:FindFirstChild("DinosaurSelectionGui")
        if dsg then dsg:Destroy() end
    end)
    pcall(function()
        local mmg = pg:FindFirstChild("MainMenuGui")
        if mmg then mmg:Destroy() end
    end)
    pcall(function()
        local lg = pg:FindFirstChild("LoadingGui")
        if lg then lg:Destroy() end
    end)
end

function PX.autoSpawnGetDinoName()
    local gui = LocalPlayer.PlayerGui:FindFirstChild("DinosaurSelectionGui")
    if not gui then return nil end
    local tf = gui:FindFirstChild("TopFrame")
    if not tf then return nil end
    local det = tf:FindFirstChild("Details")
    if not det then return nil end
    local nl = det:FindFirstChild("DinosaurName")
    if nl and nl.Text ~= "" then return nl.Text end
    return nil
end

function PX.autoSpawnGetGender()
    local gui = LocalPlayer.PlayerGui:FindFirstChild("DinosaurSelectionGui")
    if not gui then return "Male" end
    local ok, result = pcall(function()
        local inner = gui.LeftFrame.Customizer.Frame.Gender.Frame
        local male = inner:FindFirstChild("MaleButton")
        if male then
            local stroke = male:FindFirstChild("UIStroke")
            if stroke and stroke.Color.G > 0.8 then return "Male" end
        end
        return "Female"
    end)
    return ok and result or "Male"
end

function PX.autoSpawnIsAlive()
    local char = LocalPlayer.Character
    if not char then return false end
    local hum = char:FindFirstChildOfClass("Humanoid")
    return hum and hum.Health > 0
end

function PX.startAutoSpawn()
    PX.autoSpawnCleanup()
    PX.AUTO_SPAWN = true
    PX.AUTO_SPAWN_ATTEMPTS = 0

    -- Lock target from current selection
    PX.AUTO_SPAWN_TARGET = PX.autoSpawnGetDinoName()
    PX.AUTO_SPAWN_GENDER = PX.autoSpawnGetGender()

    if not PX.AUTO_SPAWN_TARGET then
        pcall(function() Hub:Notify("Auto Spawn: open dino selection and pick a dino first", 5) end)
        PX.AUTO_SPAWN = false
        if PX.autoSpawnToggle then pcall(function() PX.autoSpawnToggle:Set(false) end) end
        return
    end

    pcall(function() Hub:Notify("Auto Spawn: locked on " .. PX.AUTO_SPAWN_TARGET .. " (" .. PX.AUTO_SPAWN_GENDER .. ") — spamming RequestSlot", 5) end)

    -- Build Drawing HUD
    local draws = PX.AUTO_SPAWN_DRAWS
    local function mkText(props)
        local d = PX.safeDraw("Text")
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
    local function mkRect(props)
        local d = PX.safeDraw("Square")
        d.Visible = true
        d.Color = props.Color or Color3.fromRGB(10, 10, 10)
        d.Size = props.Size or Vector2.new(100, 100)
        d.Position = props.Position or Vector2.new(0, 0)
        d.Filled = props.Filled ~= false
        d.Transparency = props.Transparency or 0.3
        if props.Thickness then d.Thickness = props.Thickness end
        table.insert(draws, d)
        return d
    end

    local bx, by = 12, 12
    mkRect({ Position = Vector2.new(bx, by), Size = Vector2.new(300, 110) })
    local bdr = mkRect({ Position = Vector2.new(bx, by), Size = Vector2.new(300, 110), Filled = false, Transparency = 1, Color = Color3.fromRGB(0, 200, 80), Thickness = 2 })
    local hdr = mkText({ Text = "AUTO-SPAWN [SPAM]", Position = Vector2.new(bx + 6, by + 4), Size = 18, Color = Color3.fromRGB(0, 220, 80) })
    local dTxt = mkText({ Text = "Target: " .. PX.AUTO_SPAWN_TARGET .. " (LOCKED)", Position = Vector2.new(bx + 6, by + 26), Color = Color3.fromRGB(0, 255, 200) })
    local sTxt = mkText({ Text = "Slots: --/--", Position = Vector2.new(bx + 6, by + 44) })
    local aTxt = mkText({ Text = "Attempts: 0", Position = Vector2.new(bx + 6, by + 62) })
    local stTxt = mkText({ Text = "Starting...", Position = Vector2.new(bx + 6, by + 80), Color = Color3.fromRGB(255, 200, 0) })

    -- Knit refs
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Knit = PX.req(ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"))
    local ApexCtrl = Knit.GetController("ApexController")
    local CharSvc = Knit.GetService("CharacterService")

    -- Background slot info refresh
    task.spawn(function()
        while PX.AUTO_SPAWN and not PX.UNLOADED do
            pcall(function()
                local info = ApexCtrl:GetInfo(PX.AUTO_SPAWN_TARGET)
                if info then
                    sTxt.Text = string.format("Slots: %d/%d  (Zenith %d/%d)",
                        info.UsedTotal or 0, info.Slots or 0,
                        info.UsedZenith or 0, info.ZenithSlots or 0)
                end
            end)
            task.wait(3)
        end
    end)

    -- Main spam loop
    task.spawn(function()
        while PX.AUTO_SPAWN and not PX.UNLOADED do
            -- Stop if player is alive in-game
            if PX.autoSpawnIsAlive() then
                PX.autoSpawnCleanupGUI()
                stTxt.Text = "SPAWNED!"
                stTxt.Color = Color3.fromRGB(0, 255, 0)
                hdr.Text = "AUTO-SPAWN  SUCCESS"
                hdr.Color = Color3.fromRGB(0, 255, 0)
                bdr.Color = Color3.fromRGB(0, 255, 0)
                pcall(function() Hub:Notify("Auto Spawn: you're in! Stopping.", 4) end)
                task.wait(5)
                PX.autoSpawnCleanup()
                if PX.autoSpawnToggle then pcall(function() PX.autoSpawnToggle:Set(false) end) end
                return
            end

            -- Only attempt when on selection screen
            if not LocalPlayer.PlayerGui:FindFirstChild("DinosaurSelectionGui") then
                stTxt.Text = "Not on selection screen — paused"
                stTxt.Color = Color3.fromRGB(255, 200, 0)
                task.wait(1)
                continue
            end

            PX.AUTO_SPAWN_ATTEMPTS += 1
            aTxt.Text = "Attempts: " .. PX.AUTO_SPAWN_ATTEMPTS

            local success, reason, info
            local ok = pcall(function()
                success, reason, info = ApexCtrl:RequestSlot(PX.AUTO_SPAWN_TARGET)
            end)

            if not ok then
                -- Not apex — try direct spawn
                stTxt.Text = "Not apex — spawning direct"
                pcall(function()
                    CharSvc:InitiateSpawning({
                        Species = PX.AUTO_SPAWN_TARGET,
                        Gender = PX.AUTO_SPAWN_GENDER,
                        Skin = "Default",
                        Variant = "Default",
                    })
                end)
                PX.autoSpawnCleanupGUI()
                stTxt.Text = "Spawn sent!"
                stTxt.Color = Color3.fromRGB(0, 255, 100)
                hdr.Text = "AUTO-SPAWN  DONE"
                hdr.Color = Color3.fromRGB(0, 255, 0)
                bdr.Color = Color3.fromRGB(0, 255, 0)
                task.wait(5)
                PX.autoSpawnCleanup()
                if PX.autoSpawnToggle then pcall(function() PX.autoSpawnToggle:Set(false) end) end
                return
            end

            if success then
                stTxt.Text = "SLOT GRABBED! Spawning " .. PX.AUTO_SPAWN_TARGET
                stTxt.Color = Color3.fromRGB(0, 255, 0)
                hdr.Color = Color3.fromRGB(0, 255, 0)
                bdr.Color = Color3.fromRGB(0, 255, 0)
                pcall(function()
                    CharSvc:InitiateSpawning({
                        Species = PX.AUTO_SPAWN_TARGET,
                        Gender = PX.AUTO_SPAWN_GENDER,
                        Skin = "Default",
                        Variant = "Default",
                    })
                end)
                PX.autoSpawnCleanupGUI()
                hdr.Text = "AUTO-SPAWN  SUCCESS"
                pcall(function() Hub:Notify("Auto Spawn: slot grabbed for " .. PX.AUTO_SPAWN_TARGET .. "!", 4) end)
                task.wait(5)
                PX.autoSpawnCleanup()
                if PX.autoSpawnToggle then pcall(function() PX.autoSpawnToggle:Set(false) end) end
                return
            end

            -- Failed — keep spamming
            if reason == "Full" and info then
                sTxt.Text = string.format("Slots: %d/%d  (Zenith %d/%d)",
                    info.UsedTotal or 0, info.Slots or 0,
                    info.UsedZenith or 0, info.ZenithSlots or 0)
            end
            stTxt.Text = "FULL — spamming..."
            stTxt.Color = Color3.fromRGB(255, 80, 80)
            bdr.Color = Color3.fromRGB(200, 60, 60)

            task.wait(0.5)
        end
    end)
end

 function PX.unanchorFarmRoot()
    local r = getAutoGrowRoot()
    if r then pcall(function() r.Anchored = false end) end
end

-- Live state so turning the farm OFF fully undoes everything (no stuck key, no disabled
-- prompts left behind, no anchored character).
local farmHeldKey = nil
local farmDisabledPrompts = {}

local function farmCleanup()
    if farmHeldKey then
        pcall(function() PX.VIM:SendKeyEvent(false, farmHeldKey, false, game) end)
        farmHeldKey = nil
    end
    if #farmDisabledPrompts > 0 then
        PX.restorePrompts(farmDisabledPrompts)
        farmDisabledPrompts = {}
    end
    PX.unanchorFarmRoot()
    if PX.fossilFarmCleanup then PX.fossilFarmCleanup() end
    if not (PX.NO_FALL_DAMAGE or PX.FOSSIL_FARM) then PX.applyFallImmunity(false) end
end

-- Find the ground under a point so we can plant the character's feet on it instead of
-- floating (floating + anchored is what the server rejects, snapping you back).
 function PX.groundUnder(pos)
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = { LocalPlayer.Character }
    local hit = workspace:Raycast(pos + Vector3.new(0, 25, 0), Vector3.new(0, -300, 0), params)
    return hit and hit.Position or nil
end

-- Fossil farm state (mirrors AFK farm's RenderStepped/Heartbeat pattern)
PX.ffPos = nil          -- smoothed position (like afkPos)
PX.ffCF = nil           -- current CFrame (like afkCF)
PX.ffTarget = nil       -- current fossil model
PX.ffState = nil        -- "flying" | "collecting"
PX.ffHeldKey = nil      -- key being held for collection
PX.ffCollectStart = 0   -- when collection started
PX.ffEmptyChecks = 0    -- consecutive "no fossils" frames
PX.ffSince = 0          -- when the current collect attempt started (arrival at the fossil or a retry spot)
PX.ffTries = 0          -- other spots tried around the current fossil
PX.ffSkip = setmetatable({}, { __mode = "k" })   -- fossil -> os.clock() until which it is skipped

do
    function PX.fossilFarmAdvance(dt)
        if PX.UNLOADED then return end
        if not PX.FOSSIL_FARM then
            if PX.ffState then
                PX.fossilFarmCleanup()
                local ch = LocalPlayer.Character
                if ch and not PX.AFK_FARM and not PX.LEGIT_FARM then pcall(function() ch:SetAttribute("Teleporting", nil) end) end
            end
            return
        end
        if PX.SAVE_DINO_ACTIVE then return end

        local root = PX.getLocalPhysicsRoot()
        if not root then return end
        if root.Anchored and PX.ffState ~= "collecting" then
            pcall(function() root.Anchored = false end)
        end
        dt = math.min(dt or 0.016, 0.1)

        local ch = LocalPlayer.Character
        local rootPos = root.Position

        if not PX.ffPos then PX.ffPos = rootPos end

        -- If no target or target was collected, find the next fossil
        if not PX.ffTarget or not PX.ffTarget.Parent then
            -- Release any held key from previous collection
            if PX.ffHeldKey then
                pcall(function() PX.VIM:SendKeyEvent(false, PX.ffHeldKey, false, game) end)
                PX.ffHeldKey = nil
            end
            if #farmDisabledPrompts > 0 then
                PX.restorePrompts(farmDisabledPrompts)
                farmDisabledPrompts = {}
            end

            local fossil = PX.ffPlanRoute(rootPos)[1]
            if fossil then
                PX.ffTarget = fossil
                PX.ffState = "flying"
                PX.ffEmptyChecks = 0
                PX.ffTries, PX.ffFace = 0, nil

                local fp = PX.fossilPosOf(fossil)
                if fp then
                    -- Feet on the ground beside the fossil, never hanging in the air over it: a dino held
                    -- still off the ground is what the server snaps back.
                    local half = 3
                    pcall(function() half = root.Size.Y * 0.5 end)
                    local g = PX.groundUnder(fp)
                    PX.ffPos = rootPos            -- start from where the server has us
                    PX.ffSetLeg(rootPos, Vector3.new(fp.X, (g and g.Y or fp.Y) + half + 0.5, fp.Z))
                else
                    PX.ffTarget = nil
                    PX.ffState = nil
                end
            else
                -- No fossils found — count consecutive empty frames
                PX.ffEmptyChecks = PX.ffEmptyChecks + 1
                if PX.ffEmptyChecks > 180 then  -- ~3 seconds at 60fps
                    PX.FOSSIL_FARM = false
                    PX.fossilFarmCleanup()
                    if PX.fossilFarmToggle then pcall(function() PX.fossilFarmToggle:Set(false) end) end
                    local skipped = 0
                    for _, t in pairs(PX.ffSkip) do if t > os.clock() then skipped = skipped + 1 end end
                    pcall(function()
                        Hub:Notify(skipped > 0 and ("All fossils farmed (" .. skipped .. " skipped: could not be collected)")
                            or "All fossils farmed", 8)
                    end)
                end
                return
            end
        end

        -- Background check: a fossil not picked up within a minute of reaching it is tried again from
        -- another side, with the camera looking at it from there (a prompt can need a clear view). Two
        -- sides, 20s each; if those fail too it is skipped and the farm moves on to other fossils.
        -- (A retry's clock also covers the short hop to its spot.)
        if (PX.ffState == "collecting" or PX.ffFace) and PX.ffTarget and PX.ffTarget.Parent then
            local now = os.clock()
            if now - PX.ffSince > (PX.ffTries == 0 and 60 or 20) then
                if PX.ffTries < 2 then
                    PX.ffTries = PX.ffTries + 1
                    PX.ffReposition(root)
                    pcall(function() Hub:Notify(("Fossil Farm: not collected yet - trying from another side (%d/2)"):format(PX.ffTries), 4) end)
                else
                    PX.ffSkip[PX.ffTarget] = now + 600
                    PX.ffDropTarget(root)
                    pcall(function() Hub:Notify("Fossil Farm: skipped a fossil it could not collect - moving on", 5) end)
                    return
                end
            end
        end

        if PX.ffState == "flying" and PX.ffDest then
            -- Fly the leg's waypoints in turn (up, across, down), like flying it yourself
            local wp = (PX.ffLeg and PX.ffLeg[PX.ffLegI]) or PX.ffDest
            -- The shared mover: sideways at its cap with Run held, up/down at up to 150, and it stands still
            -- where the server put us after a snap-back instead of jumping back to ffPos.
            PX.ffPos = PX.govNext(PX.ffPos, wp, dt)
            if ch then pcall(function() ch:SetAttribute("Teleporting", PX.ffPos.Y) end) end   -- the game's local height hold agrees
            if (PX.ffPos - wp).Magnitude < 0.5 and PX.ffLeg and PX.ffLegI < #PX.ffLeg then
                PX.ffLegI = PX.ffLegI + 1
            end
            local lookDir = Vector3.new(PX.ffDest.X - PX.ffPos.X, 0, PX.ffDest.Z - PX.ffPos.Z)
            if lookDir.Magnitude < 0.1 then
                local cf = PX.ffCF or root.CFrame
                PX.ffCF = CFrame.new(PX.ffPos) * (cf - cf.Position)
            else
                PX.ffCF = CFrame.lookAt(PX.ffPos, PX.ffPos + lookDir)
            end

            pcall(function()
                root.CFrame = PX.ffCF
                root.AssemblyLinearVelocity = Vector3.zero
                root.AssemblyAngularVelocity = Vector3.zero
            end)

            -- Check if we arrived (within prompt range)
            -- A retry spot is only a few studs from where we were, so it must actually be reached.
            if (PX.ffPos - PX.ffDest).Magnitude < 1.5 then
                PX.ffState = "collecting"
                PX.ffCollectStart = os.clock()
                PX.ffSince = PX.ffCollectStart
                if PX.ffFace then
                    local look = Vector3.new(PX.ffFace.X, PX.ffPos.Y, PX.ffFace.Z)
                    if (look - PX.ffPos).Magnitude > 0.1 then
                        PX.ffCF = CFrame.lookAt(PX.ffPos, look)
                        pcall(function() root.CFrame = PX.ffCF end)
                    end
                end

                -- Anchor so physics can't interrupt the prompt hold
                pcall(function() root.Anchored = true end)

                -- Disable ALL other fossil prompts so this one is the only active prompt
                local prompt = fossilPromptOf(PX.ffTarget)
                if prompt then
                    farmDisabledPrompts = {}
                    local folder = workspace:FindFirstChild("SpawnedFossils")
                    if folder then
                        for _, f in ipairs(folder:GetChildren()) do
                            local p = fossilPromptOf(f)
                            if p and p ~= prompt and p.Enabled then
                                pcall(function() p.Enabled = false end)
                                table.insert(farmDisabledPrompts, p)
                            end
                        end
                    end

                    local key = prompt.KeyboardKeyCode
                    if key == nil or key == Enum.KeyCode.Unknown then key = Enum.KeyCode.E end
                    PX.ffHeldKey = key
                    PX.ffHoldDuration = (tonumber(prompt.HoldDuration) or 2.5) + 1
                    pcall(function() PX.VIM:SendKeyEvent(true, key, false, game) end)
                else
                    pcall(function() root.Anchored = false end)
                    PX.ffTarget = nil
                    PX.ffState = nil
                end
            end

        elseif PX.ffState == "collecting" then
            -- Check if fossil was collected (model removed)
            if not PX.ffTarget.Parent then
                if PX.ffHeldKey then
                    pcall(function() PX.VIM:SendKeyEvent(false, PX.ffHeldKey, false, game) end)
                    PX.ffHeldKey = nil
                end
                if #farmDisabledPrompts > 0 then
                    PX.restorePrompts(farmDisabledPrompts)
                    farmDisabledPrompts = {}
                end
                pcall(function() root.Anchored = false end)
                PX.ffTarget = nil
                PX.ffState = nil
                return
            end

            -- Retry if hold duration elapsed but fossil still here
            local elapsed = os.clock() - PX.ffCollectStart
            if elapsed > (PX.ffHoldDuration or 4) then
                -- Release and re-press
                if PX.ffHeldKey then
                    pcall(function() PX.VIM:SendKeyEvent(false, PX.ffHeldKey, false, game) end)
                    pcall(function() PX.VIM:SendKeyEvent(true, PX.ffHeldKey, false, game) end)
                end
                PX.ffCollectStart = os.clock()
            end
        end
    end

    function PX.fossilFarmPin()
        if PX.UNLOADED or not PX.FOSSIL_FARM or not PX.ffCF or PX.mvHold() then return end
        local root = PX.getLocalPhysicsRoot()
        if root and not root.Anchored then
            pcall(function()
                root.CFrame = PX.ffCF
                root.AssemblyLinearVelocity = Vector3.zero
                root.AssemblyAngularVelocity = Vector3.zero
            end)
        end
    end

    -- The leg to a landing spot. Short and clear: straight there. Otherwise up to FF_CRUISE studs over the
    -- highest ground under the way, across, and straight down, the way Fly is flown by hand.
    -- "Ground" is terrain and the mountain meshes only (water counts as its surface): the old ray also hit tree
    -- canopies, rocks and players, so legs climbed 30 over the tallest tree on the way - the "flies too high".
    -- Trees and rocks are flown through, like AFK Farm does.
    PX.FF_CRUISE = 30
    function PX.ffRayParams()
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Include
        local world = workspace:FindFirstChild("World")
        local mountains = world and world:FindFirstChild("Mountains")
        params.FilterDescendantsInstances = mountains and { workspace.Terrain, mountains } or { workspace.Terrain }
        params.IgnoreWater = false
        return params
    end
    function PX.ffGroundY(x, z, above, params)
        local hit = workspace:Raycast(Vector3.new(x, above + 400, z), Vector3.new(0, -1200, 0), params)
        return hit and hit.Position.Y or nil
    end
    function PX.ffSetLeg(fromPos, landPos)
        PX.ffDest = landPos
        local flat = Vector3.new(landPos.X - fromPos.X, 0, landPos.Z - fromPos.Z).Magnitude
        local params = PX.ffRayParams()
        local clear = false
        if flat < 40 then
            local ok, hit = pcall(function() return workspace:Raycast(fromPos, landPos - fromPos, params) end)
            clear = ok and hit == nil
        end
        if clear then
            PX.ffLeg, PX.ffLegI = { landPos }, 1
            return
        end
        local top = math.max(fromPos.Y, landPos.Y)
        local steps = math.max(1, math.floor(flat / 20))
        for i = 0, steps do
            local q = fromPos:Lerp(landPos, i / steps)
            local ok, gy = pcall(PX.ffGroundY, q.X, q.Z, top, params)
            if ok and gy and gy > top then top = gy end
        end
        local cy = math.max(top + PX.FF_CRUISE, fromPos.Y)
        PX.ffLeg = { Vector3.new(fromPos.X, cy, fromPos.Z), Vector3.new(landPos.X, cy, landPos.Z), landPos }
        PX.ffLegI = 1
    end

    -- Let go of the current fossil: key up, the other prompts back on, unanchored.
    function PX.ffDropTarget(root)
        if PX.ffHeldKey then
            pcall(function() PX.VIM:SendKeyEvent(false, PX.ffHeldKey, false, game) end)
            PX.ffHeldKey = nil
        end
        if #farmDisabledPrompts > 0 then
            PX.restorePrompts(farmDisabledPrompts)
            farmDisabledPrompts = {}
        end
        if root then pcall(function() root.Anchored = false end) end
        PX.ffTarget, PX.ffState, PX.ffFace = nil, nil, nil
    end

    -- Another spot around the same fossil: 120 / 240 degrees round from where we first came in, on
    -- the ground and inside the prompt's reach. The dino lands facing the fossil, and the camera is
    -- turned to look at it from behind the dino.
    function PX.ffReposition(root)
        local fossil = PX.ffTarget
        local fp = fossil and PX.fossilPosOf(fossil)
        if not fp then PX.ffDropTarget(root) return end
        if PX.ffHeldKey then
            pcall(function() PX.VIM:SendKeyEvent(false, PX.ffHeldKey, false, game) end)
            PX.ffHeldKey = nil
        end
        if #farmDisabledPrompts > 0 then
            PX.restorePrompts(farmDisabledPrompts)
            farmDisabledPrompts = {}
        end
        pcall(function() root.Anchored = false end)
        local reach = 6
        pcall(function() reach = math.clamp((fossilPromptOf(fossil).MaxActivationDistance or 10) * 0.6, 3, 8) end)
        local cur = PX.ffPos or root.Position
        if PX.ffTries == 1 then PX.ffBaseAng = math.atan2(cur.Z - fp.Z, cur.X - fp.X) end
        local ang = (PX.ffBaseAng or 0) + PX.ffTries * (2 * math.pi / 3)
        local spot = fp + Vector3.new(math.cos(ang) * reach, 0, math.sin(ang) * reach)
        local g = PX.groundUnder(spot)
        local half = 3
        pcall(function() half = root.Size.Y * 0.5 end)
        PX.ffSetLeg(PX.ffPos or root.Position, Vector3.new(spot.X, (g and g.Y or fp.Y) + half + 0.5, spot.Z))
        PX.ffFace = fp          -- PX.ffCamStep turns the camera onto it while this is set
        PX.ffState = "flying"
        PX.ffSince = os.clock()
    end

    -- Turns the camera round the dino until it looks at the fossil being retried, so a prompt that
    -- wants a clear view from the camera gets one. Runs after the game's camera (Camera+2, like Legit
    -- Farm's steering), which keeps the new heading from then on. Only while a retry is on.
    function PX.ffCamStep(dt)
        if PX.UNLOADED or not PX.FOSSIL_FARM or not PX.ffFace then return end
        local cam = workspace.CurrentCamera
        if not cam or cam.CameraType ~= Enum.CameraType.Custom then return end
        local cf = cam.CFrame
        local focus = cam.Focus.Position
        local look, want = cf.LookVector, PX.ffFace - focus
        if Vector3.new(look.X, 0, look.Z).Magnitude < 1e-3 or Vector3.new(want.X, 0, want.Z).Magnitude < 1 then return end
        local cur = math.atan2(-look.X, -look.Z)
        local tgt = math.atan2(-want.X, -want.Z)
        local turn = 6 * math.min(dt or 0.016, 0.1)
        local step = math.clamp(math.atan2(math.sin(tgt - cur), math.cos(tgt - cur)), -turn, turn)
        if math.abs(step) < 1e-4 then return end
        local rot = CFrame.Angles(0, step, 0)
        cam.CFrame = CFrame.new(focus + rot * (cf.Position - focus)) * (rot * cf.Rotation)
    end

    function PX.fossilFarmCleanup()
        if PX.ffHeldKey then
            pcall(function() PX.VIM:SendKeyEvent(false, PX.ffHeldKey, false, game) end)
            PX.ffHeldKey = nil
        end
        if #farmDisabledPrompts > 0 then
            PX.restorePrompts(farmDisabledPrompts)
            farmDisabledPrompts = {}
        end
        PX.unanchorFarmRoot()
        PX.ffTarget = nil
        PX.ffState = nil
        PX.ffCF = nil
        PX.ffPos = nil
        PX.ffDest = nil
        PX.ffLeg, PX.ffLegI = nil, nil
        PX.ffHoldDuration = nil
        PX.ffEmptyChecks = 0
        PX.ffFace, PX.ffTries, PX.ffSince, PX.ffBaseAng = nil, 0, 0, nil
        -- Off: let go of the height hold (the Y we flew at), unless another mover owns it now. The toggle's own
        -- cleanup clears ffState first, so the off branch in fossilFarmAdvance never got to it: 2026-10-15 the dino
        -- was left hanging in the air at the cruise height after Fossil Farm was switched off mid-flight.
        local ch = LocalPlayer.Character
        if ch and not (PX.FOSSIL_FARM or PX.AFK_FARM or PX.LEGIT_FARM or PX.FLY or PX.SAVE_DINO_ACTIVE) then
            pcall(function() ch:SetAttribute("Teleporting", nil) end)
        end
    end

    function PX.startFossilFarm()
        local folder = workspace:FindFirstChild("SpawnedFossils")
        local n = folder and #folder:GetChildren() or 0
        pcall(function() Hub:Notify(("Fossil Farm: %d fossils"):format(n), 5) end)
        PX.ffPos = nil
        PX.ffCF = nil
        PX.ffTarget = nil
        PX.ffState = nil
        PX.ffEmptyChecks = 0
        PX.ffSkip = setmetatable({}, { __mode = "k" })   -- every fossil gets a fresh chance each time it's turned on
    end

    table.insert(allConnections, RunService.RenderStepped:Connect(PX.fossilFarmAdvance))
    table.insert(allConnections, RunService.Heartbeat:Connect(PX.fossilFarmPin))
    pcall(function()
        RunService:BindToRenderStep("PX_FossilCam", Enum.RenderPriority.Camera.Value + 2, PX.ffCamStep)
    end)
end

-- ═══════════════════════════════════════
-- TELEPORT TO CORPSE
-- ═══════════════════════════════════════
-- This moves YOU to the corpse. Dragging the corpse to you was tested and is impossible:
-- corpse ragdolls under CharacterIgnore.Ragdolls.Host.Physics are server-anchored (39 of 40
-- parts Anchored, AssemblyRootPart.Anchored = true, AssemblyMass = inf), so Roblox never
-- grants us network ownership and a client CFrame write never reaches the server. The trap
-- is that it LOOKS like it works — an anchored part stays exactly where you put it because
-- nothing simulates it, so nothing corrects it. ReceiveAge is the tell: it stayed pinned at
-- 0.000 through a 15s release test, proving the server was still streaming it throughout.
--
-- Even a working magnet would not help, because Bite's payload is buffer(id:u32, action:u8) —
-- there is NO position in it. The server resolves the corpse's location from its own copy, so
-- our client's idea of where the ragdoll sits never enters the range check.
--
-- Character position, by contrast, IS client-authoritative (it's why Fly and the fossil hops
-- work), so closing the gap from our end is the one direction the server accepts.
--
-- SOLID LANDING is the same fight the fossil farm already had: a FLOATING character is what
-- the server rejects and snaps back. So we raycast the ground beside the corpse, put the
-- dino's FEET on it, zero the velocity, verify we actually held the spot, and retry if
-- reverted — rather than dropping ourselves at the corpse's own pivot, which is often buried
-- inside terrain or 40 studs up inside the ragdoll's collision hull.

-- ConsumptionController owns CorpseData (id -> {Name, Root, Weight}). Required lazily and
-- cached here because Force Eat's copy lives inside its own task.spawn closure, which nothing
-- out here can reach.
function PX.getCC()
    if PX.ccCache then return PX.ccCache end
    pcall(function()
        PX.ccCache = PX.req(PX.WATER_RS.Packages.Knit).GetController("ConsumptionController")
    end)
    return PX.ccCache
end

-- ═══════════════════════════════════════
-- CARRY ANY CORPSE (premium; moved here from the owner's admin tools 2026-10-02)
-- Grab a corpse of any weight, from any distance, and carry it at walking speed. Client-side only: the game's
-- own grab code decides what may be picked up, so its checks answer as if every corpse were light and in reach
-- (scans 2026-10-01):
--   * weight: Grab:GetGrabSettings hands out the limits (refused over DragLimit, 75% of your weight; dragged
--     over GrabLimit, 25%) and CanGrabTarget / MeetsWeightLimit / IsDragDisabled check them. Corpses only -
--     grabbing a LIVE dino (the LIVEGrab ability passes live = true) keeps the game's own answer.
--   * distance: Grab() refuses a corpse whose centre is over 22 studs from your mouth ("You are too far to drag
--     the corpse."); that check only runs while the grab object holds its BaseAttachment, so it is cleared
--     for the length of a corpse grab. The "someone else is holding it" check is left alone.
--   * reach: a corpse is only offered (its prompt, and G's quick grab) within ConsumptionController.Range,
--     ~40 studs, recomputed by the game from :GetConsumeRange(); while on, that is at least PX.CARRY_RANGE.
-- Off, or unloading, puts every one of the game's functions and the range back. They are fields on tables the
-- game already reads through, so the swap reaches the objects the game already made. Not on Xeno: there a
-- require hands back a COPY of the game's module, so a patch never reaches the game (the row is hidden).
PX.CARRY_CORPSE = false
PX.CARRY_RANGE = 1000
PX.carryOrig = nil
function PX.carryApply(on)
    local function syncPrompts(CC)   -- the prompts the game already made follow the range in force
        pcall(function()
            for _, pr in pairs(CC.ProximityPrompts or {}) do
                if typeof(pr) == "Instance" and pr:IsA("ProximityPrompt") then pr.MaxActivationDistance = CC.Range end
            end
        end)
    end
    if on then
        if PX.carryOrig then return true end
        local G
        pcall(function() G = PX.req(LocalPlayer.PlayerScripts.Client.Classes.Character.Grab) end)
        if type(G) ~= "table" then return false end
        local o = {}
        for _, k in ipairs({ "GetGrabSettings", "CanGrabTarget", "MeetsWeightLimit", "IsDragDisabled", "Grab" }) do
            if type(G[k]) ~= "function" then return false end   -- the game changed: touch nothing
            o[k] = G[k]
        end
        PX.carryOrig = { G = G, o = o }
        G.GetGrabSettings = function(self, ...)
            local st = o.GetGrabSettings(self, ...)
            if type(st) ~= "table" then return st end
            local c = table.clone(st)
            c.GrabLimit, c.DragLimit = math.huge, math.huge   -- every corpse is "light": picked up and carried
            c.DragReverseLock, c.DragDrain = false, 0
            return c
        end
        G.CanGrabTarget = function(self, target, live, ...)
            if live then return o.CanGrabTarget(self, target, live, ...) end
            return true
        end
        G.MeetsWeightLimit = function(self, target, live, ...)
            if live then return o.MeetsWeightLimit(self, target, live, ...) end
            return true
        end
        G.IsDragDisabled = function() return false end
        G.Grab = function(self, target, kind, ...)
            if kind == "Meat" then return o.Grab(self, target, kind, ...) end   -- a chunk has no distance rule
            local ba = self.BaseAttachment
            self.BaseAttachment = nil
            local r = table.pack(pcall(o.Grab, self, target, kind, ...))
            self.BaseAttachment = ba
            if not r[1] then error(r[2], 0) end
            return table.unpack(r, 2, r.n)
        end
        local CC = PX.getCC()
        if type(CC) == "table" and type(CC.GetConsumeRange) == "function" then
            local oRange = CC.GetConsumeRange
            PX.carryOrig.CC, PX.carryOrig.oRange = CC, oRange
            CC.GetConsumeRange = function(self, ...)
                return math.max(tonumber(oRange(self, ...)) or 0, PX.CARRY_RANGE)
            end
            pcall(function() CC.Range = CC:GetConsumeRange() end)
            syncPrompts(CC)
        end
        return true
    end
    local st = PX.carryOrig
    if st then
        for k, f in pairs(st.o) do st.G[k] = f end
        if st.CC then
            st.CC.GetConsumeRange = st.oRange
            pcall(function() st.CC.Range = st.CC:GetConsumeRange() end)
            syncPrompts(st.CC)
        end
        PX.carryOrig = nil
    end
    return true
end

function PX.khRange()
    local r
    pcall(function() r = PX.getCC():GetConsumeRange() end)
    if type(r) ~= "number" or r <= 0 then r = 22 end
    return r
end

-- Nearest corpse that still has meat on it and that this dino can stand beside. A picked-clean corpse stays in
-- CorpseData with Weight 0 (you would fly to a bare skeleton and sit there); our own species is skipped (the server
-- refuses that bite); one under the map, or across a map wall, cannot be reached.
function PX.nearestCorpse(fromPos)
    local CC = PX.getCC()
    if not (CC and CC.CorpseData and fromPos) then return nil end
    local myType
    pcall(function() myType = LocalPlayer.Character:GetAttribute("Type") end)
    if PX.trackWalls then pcall(PX.trackWalls) end
    local ray = RaycastParams.new()
    ray.FilterType = Enum.RaycastFilterType.Include
    ray.FilterDescendantsInstances = { workspace.Terrain }
    local bId, bRoot, bDist
    for id, data in pairs(CC.CorpseData) do
        local root = data and data.Root
        if root and root.Parent and (tonumber(data.Weight) or 0) > 0 and tostring(data.Name) ~= tostring(myType) then
            local pos
            pcall(function()
                pos = root:IsA("BasePart") and root.Position or root:GetPivot().Position
            end)
            if pos then
                local d = (pos - fromPos).Magnitude
                if not bDist or d < bDist then
                    local top = workspace:Raycast(Vector3.new(pos.X, pos.Y + 3000, pos.Z), Vector3.new(0, -6000, 0), ray)
                    local under = top ~= nil and top.Position.Y > pos.Y + 25
                    if not under and not (PX.wallCross and PX.wallCross(fromPos, pos)) then bId, bRoot, bDist = id, root, d end
                end
            end
        end
    end
    return bId, bRoot, bDist
end

-- Fly to a corpse and stand beside it (PX.flyTo: through the shared mover, down on dry ground at the dino's ride
-- height). It used to be one instant hop - exactly what the teleport kick names - then three fixed glides with the
-- height hold set to `true` (read by the game as Y 0) and a cruise only 60 over the start. True once down within 40.
function PX.warpToCorpse(root, corpseRoot)
    local cpos
    pcall(function()
        cpos = corpseRoot:IsA("BasePart") and corpseRoot.Position or corpseRoot:GetPivot().Position
    end)
    if not cpos then return false end
    -- Beside it, not on it: landing inside a 40-part ragdoll can wedge the dino in its collision hull.
    local spot = cpos + Vector3.new(PX.TP_OFFSET or 8, 0, 0)
    local ok = PX.flyTo(spot, function() return PX.TP_CORPSE and not (PX.otherMoverOn and PX.otherMoverOn()) end, 40)
    return ok and root.Parent ~= nil
        and Vector3.new(root.Position.X - cpos.X, 0, root.Position.Z - cpos.Z).Magnitude < 40
end

-- Driver. Only DETECTS work here and hands the flight to a task.spawn: steps run inside the
-- shared Heartbeat, and task.wait in one would stall every system registered after it.
PX.addStep(30, function()
    if PX.UNLOADED or not PX.TP_CORPSE or PX.tpBusy then return end
    if PX.tpDone and not PX.TP_CHAIN then return end     -- one-shot already served
    -- Another mover owns the dino: wait for it.
    if PX.FLY or PX.AUTO_FLY or PX.AFK_FARM or PX.LEGIT_FARM or PX.FOSSIL_FARM or PX.SAVE_DINO_ACTIVE or PX.BIOME_TRAVEL then return end
    local root = getAutoGrowRoot()
    if not (root and root.Parent) then return end

    local CC = PX.getCC()
    if not CC then return end

    -- Still parked on a corpse with meat left? Nothing to do.
    if PX.tpTargetId then
        local d = CC.CorpseData and CC.CorpseData[PX.tpTargetId]
        if d and (tonumber(d.Weight) or 0) > 0 then return end
        PX.tpTargetId = nil                              -- stripped or despawned
        if not PX.TP_CHAIN then PX.tpDone = true return end
    end

    local id, corpseRoot, dist = PX.nearestCorpse(root.Position)
    if not id then
        if not PX.tpNoneSaid then
            PX.tpNoneSaid = true
            pcall(function() Hub:Notify("Teleport to Corpse: no corpse with meat you can reach - waiting for one", 5) end)
        end
        return
    end
    PX.tpNoneSaid = nil

    PX.tpBusy = true
    task.spawn(function()
        PX.applyFallImmunity(true)                       -- a long flight must not land as fall damage
        pcall(function() Hub:Notify("Teleport to Corpse: flying to a corpse " .. math.floor(dist or 0) .. " studs away", 4) end)
        local arrived = PX.warpToCorpse(root, corpseRoot)
        PX.tpTargetId = arrived and id or nil
        if arrived and not PX.TP_CHAIN then PX.tpDone = true end
        pcall(function()
            Hub:Notify(arrived and "Teleport to Corpse: at the corpse"
                or ("Teleport to Corpse: " .. (PX.TP_CORPSE and "could not reach it" or "stopped")), 5)
        end)
        -- Release the silent immunity, unless another feature legitimately owns it.
        task.delay(6, function()
            if not (PX.NO_FALL_DAMAGE or PX.FOSSIL_FARM or PX.TP_CORPSE) then
                PX.applyFallImmunity(false)
            end
        end)
        PX.tpBusy = false
    end)
end)

-- ============ MAIN TAB ============
-- ═══════════════════════════════════════
-- GUI BUILD — left tabs, each split into top sub-tab PILLS. Uses the reusable handle
-- `tab`, repointed to the current sub-tab before each feature group. Requires the new
-- gui.lua (AddSubTab). ui{} holds element refs for config save/restore.
-- ═══════════════════════════════════════
-- FPS Saver: for leaving the AFK Farm running in the background. Rips rendering down to the floor --
-- lowest graphics quality, no shadows or post effects, fog closed to a few studs so nothing distant
-- draws, a low frame cap, and (where the executor allows it) the 3D view switched off entirely. The
-- farm reads game data, not the screen, so it keeps working while the client renders almost nothing.
PX.FPS_SAVER = false
do
    local Lighting = game:GetService("Lighting")
    local RunSvc = game:GetService("RunService")
    local saved
    function PX.applyFpsSaver(on)
        if on then
            if not saved then
                saved = { shadows = Lighting.GlobalShadows, fogEnd = Lighting.FogEnd, fogStart = Lighting.FogStart,
                    quality = nil, effects = {} }
                pcall(function() saved.quality = settings().Rendering.QualityLevel end)
                for _, e in ipairs(Lighting:GetChildren()) do
                    if e:IsA("PostEffect") or e:IsA("BlurEffect") then saved.effects[e] = e.Enabled end
                end
            end
            pcall(function() if setfpscap and not PX.IS_XENO then setfpscap(10) end end)
            pcall(function() settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 end)
            pcall(function() Lighting.GlobalShadows = false end)
            pcall(function() Lighting.FogStart = 0; Lighting.FogEnd = 12 end)
            for _, e in ipairs(Lighting:GetChildren()) do
                if e:IsA("PostEffect") or e:IsA("BlurEffect") then pcall(function() e.Enabled = false end) end
            end
            pcall(function() RunSvc:Set3dRenderingEnabled(false) end)   -- the big win where the executor permits it
        else
            pcall(function() RunSvc:Set3dRenderingEnabled(true) end)
            pcall(function() if setfpscap and not PX.IS_XENO then setfpscap(0) end end)      -- 0 = back to uncapped/default
            if saved then
                pcall(function() if saved.quality then settings().Rendering.QualityLevel = saved.quality end end)
                pcall(function() Lighting.GlobalShadows = saved.shadows end)
                pcall(function() Lighting.FogStart = saved.fogStart; Lighting.FogEnd = saved.fogEnd end)
                for e, en in pairs(saved.effects) do pcall(function() if e and e.Parent then e.Enabled = en end end) end
                saved = nil
            end
        end
    end
end

local afRoot     = Hub:AddTab({Name = "Autofarm"})
local combatRoot = Hub:AddTab({Name = "Combat"})
local moveRoot   = Hub:AddTab({Name = "Movement"})
local renderRoot = Hub:AddTab({Name = "Render"})

local ui = {}    -- all UI element refs (used by the config save/restore)
local tab        -- reusable handle, repointed to the current sub-tab before each group

-- ============ AUTOFARM : Fossil Farm ============
tab = patchTabNotify(afRoot:AddSubTab({Name = "Fossil Farm"}))
PX.section(tab, "Fossil Farm", [[Collects fossils for you automatically.

Fossil Farm: flies to each nearby fossil, collects it, then moves to the next. If a fossil is not picked up within a minute, it tries again from another side with the camera looking at it, and if that fails too it skips that fossil and collects the others.
It goes as fast as the game allows for your dino (it holds Run for you), flies low - only high enough to clear the ground in the way - and stops for a moment if the server ever pulls it back.]])
PX.fossilFarmToggle = tab:AddToggle({
    Name = "Fossil Farm",
    Skull = true,
    Default = false,
    Callback = function(v)
        PX.FOSSIL_FARM = v
        if v then
            -- One farm drives the dino at a time. 2026-10-14: Legit Farm (switched on by an autoloaded config after
            -- the spawn) kept flying while Fossil Farm flew, both writing the dino's position - a server snap-back,
            -- and the dino left inside a hill. Legit and AFK Farm already switch Fossil Farm off; now the other way too.
            if PX.LEGIT_FARM and PX.legitFarmToggle then pcall(function() PX.legitFarmToggle:Set(false) end) end
            if PX.AFK_FARM and PX.afkFarmToggle then pcall(function() PX.afkFarmToggle:Set(false) end) end
            if PX.FLY and PX.flyToggle then pcall(function() PX.flyToggle:Set(false) end) end
            if PX.AUTO_FLY and PX.autoFlyToggle then pcall(function() PX.autoFlyToggle:Set(false) end) end
            PX.LEGIT_FARM, PX.AFK_FARM, PX.FLY, PX.AUTO_FLY = false, false, false, false
            PX.startFossilFarm()
        else
            farmCleanup()
        end
    end
})

-- ============ AUTOFARM : Autofarm ============
tab = patchTabNotify(afRoot:AddSubTab({Name = "Autofarm"}))
PX.section(tab, "Autofarm", [[Auto Water: drinks for you whenever your dino's head is over water - walk up to a lake or river and it fills your water to full with no key to press. (Since the game's update water only fills at real water; the farms walk or fly to it by themselves.)
Water Anywhere (test): tries to drink where you stand, away from water, by telling the game you are in water for a moment before each sip. Not proven to work yet; while it is on the farms only walk to water if it drops under 25%.
Force Eat: eats the nearest food no matter what your dino's diet is, including plants a carnivore normally cannot touch.]])
PX.autoWaterToggle = tab:AddToggle({
    Name = "Auto Water",
    Default = false,
    Callback = function(v) PX.AUTO_WATER = v end
})
-- TEST: see PX.WATER_ANYWHERE. Not saved in configs on purpose.
ui.waterAnywhere = tab:AddToggle({
    Name = "Water Anywhere",
    Default = false,
    Callback = function(v) PX.WATER_ANYWHERE = v; PX.anywhereSips = 0 end
})
PX.forceEatToggle = tab:AddToggle({
    Name = "Force Eat",
    Default = false,
    Callback = function(v)
        PX.FORCE_EAT = v
        if v and PX.AFK_FARM then
            pcall(function() if PX.Hub then PX.Hub:Notify("Force Eat paused while AFK Farm is on (the farm has its own eater)", 5) end end)
        end
    end
})
PX.section(tab, "Force Eat Settings", [[Settings for Force Eat. They do nothing unless Force Eat is on.

Fast Eat: bites as fast as the game allows - one bite every 0.8 seconds (any faster and the server ignores every bite). Off bites half as often, filling you up gradually.
Eat Only When Hungry: waits until your food drops a little before topping up, so nothing is wasted. Off means it eats constantly.
Leave Scraps: stops eating a plant while a little food is still left on it (about two of your dino's bites, learned as it eats), so it does not despawn, and treats that plant as empty so it eats something else.]])
-- ON: the game's own pace, one bite every 0.8 s - the fastest the server credits (2026-10-14).
-- OFF: one bite every 1.6 s — fills gradually.
ui.fastEat = tab:AddToggle({
    Name = "Fast Eat",
    Default = true,
    Callback = function(v) PX.FAST_EAT = v end
})
-- ON: tops up once Food is 1 below max, then stops — so nothing is eaten past the cap and wasted.
-- OFF: bites constantly, pinning Food at max.
ui.eatWhenHungry = tab:AddToggle({
    Name = "Eat Only When Hungry",
    Default = false,
    Callback = function(v) PX.EAT_WHEN_HUNGRY = v end
})
ui.leaveScraps = tab:AddToggle({
    Name = "Leave Scraps",
    Default = false,
    Callback = function(v) PX.LEAVE_SCRAPS = v end
})
if not PX.IS_XENO then   -- see PX.carryApply: a patch never reaches the game on Xeno
PX.section(tab, "Carry Any Corpse", [[Carry Any Corpse: pick up any corpse, however heavy, from up to 1000 studs away - press G at it, or Grab on its menu - and carry it at walking speed instead of dragging it. Corpses only: grabbing a live dino keeps the game's normal limits. Off puts the game's own limits back.]])
ui.carryCorpse = tab:AddToggle({
    Name = "Carry Any Corpse",
    Default = false,
    Callback = function(v)
        PX.CARRY_CORPSE = v
        if not PX.carryApply(v) and v then
            PX.CARRY_CORPSE = false
            pcall(function() if PX.Hub then PX.Hub:Notify("Carry Any Corpse: the game's grab code was not found, nothing changed", 5) end end)
        end
    end
})
end
PX.section(tab, "AFK Farm", [[Flies your dino to the nearest food, eats it, then flies to the next — all on its own.
Food, water and cleanliness are all handled while it runs: it eats whenever you are hungry and keeps cleanliness topped up by itself. Water only fills at real water now, so when it drops under 40% the farm flies to the nearest shore, holds there with its head over the water until full, then goes back to food. Auto Water and Auto Cleanliness do not need to be on.

AFK Farm: turns it on. Disables if manual Fly or Auto Fly is active.
It flies as fast as the game allows for your dino (it holds Run for you) and stops for a moment if the server ever pulls it back.
Player Avoid Radius: skips food within this many studs of another player. Set to 0 to disable.
Simulate Walking: keeps you genuinely moving for Activity (growth boost) - it presses the walk key while flying AND keeps drifting in a tiny circle while eating instead of stopping dead, so the server always sees movement.
What it goes for: the nearest plant, for every dino - Force Eat eats plants whatever your diet. A dino that eats meat also takes meat that is close by, and goes for meat first while a nutrient it gives (Proteins, Fats, Calcium) is at 99% or below. Bones, shells, clams, eggs and insects are left alone unless nothing else is left, or a nutrient they give has dropped to 90%. Food near other players is always skipped. Food it cannot get to, or where your hunger does not go up after 12 seconds of biting (like a glitched "???" corpse that only feeds once someone picks it up), is left alone for 20 minutes - 30 if the same food fails twice.
Safety (Hide & Heal): as soon as you take any damage (and whenever your health is below half), flies up into the air and rests there until you are back to full, then comes back down and carries on farming. If your dino dies anyway while a farm is on, it respawns as the same dino - never spending revival tokens - and the farm carries on.
Admin Kick: leaves the server if an admin joins, or is already here, while AFK Farm runs.
Flee From Players: fly away when another player comes within the Avoid Radius, then go back to farming once they leave. Uses the same radius as Player Avoid Radius, so set that above 0. On by default.
Unstuck: if the dino wedges on terrain or a tree and stops moving while heading to food, it drops that target, pops up and out, and picks a different one instead of sitting stuck. It also gives up on food it has sat at for 25 seconds without eating anything while hungry, and picks something else.]])
PX.afkFarmToggle = tab:AddToggle({
    Name = "AFK Farm",
    Skull = true,
    Default = false,
    Callback = function(v)
        PX.AFK_FARM = v
        if v then
            if PX.FLY and PX.flyToggle then pcall(function() PX.flyToggle:Set(false) end) end
            if PX.AUTO_FLY and PX.autoFlyToggle then pcall(function() PX.autoFlyToggle:Set(false) end) end
            if PX.LEGIT_FARM and PX.legitFarmToggle then pcall(function() PX.legitFarmToggle:Set(false) end) end
            if PX.FOSSIL_FARM and PX.fossilFarmToggle then pcall(function() PX.fossilFarmToggle:Set(false) end) end
            local paused = {}
            if PX.FORCE_EAT then paused[#paused + 1] = "Force Eat" end
            if PX.AFK_FARM_SAFETY and (PX.AUTO_SAVE or PX.SAVE_DINO_ACTIVE) then paused[#paused + 1] = "Save Dino" end
            if PX.AFK_FARM_SAFETY and PX.SAVE_DINO_ACTIVE and PX.releaseDino then pcall(PX.releaseDino) end
            if PX.AFK_FARM_ADMIN_KICK and PX.adminKickSweep then PX.adminKickSweep() end
            if #paused > 0 then
                local msg = table.concat(paused, " and ") .. " paused while AFK Farm runs (it uses its own eater and Safety)"
                pcall(function() if PX.Hub then PX.Hub:Notify(msg, 6) end end)
            end
        else
            PX.afkStopWalk()
        end
    end
})
ui.afkFarmAvoid = tab:AddSlider({
    Name = "Player Avoid Radius",
    Min = 0, Max = 1000, Default = 200,
    Callback = function(v) PX.AFK_FARM_AVOID = v end
})
ui.afkFarmWalk = tab:AddToggle({
    Name = "Simulate Walking",
    Default = true,
    Callback = function(v) PX.AFK_FARM_WALK = v end
})
ui.afkFarmSafety = tab:AddToggle({
    Name = "Safety (Hide & Heal)",
    Default = true,
    Callback = function(v)
        PX.AFK_FARM_SAFETY = v
        if v and PX.AFK_FARM and PX.SAVE_DINO_ACTIVE and PX.releaseDino then pcall(PX.releaseDino) end
    end
})
ui.afkFarmAdminKick = tab:AddToggle({
    Name = "Admin Kick",
    Default = true,
    Callback = function(v)
        PX.AFK_FARM_ADMIN_KICK = v
        if v and PX.AFK_FARM and PX.adminKickSweep then PX.adminKickSweep() end
    end
})
ui.afkFarmFlee = tab:AddToggle({
    Name = "Flee From Players",
    Default = true,
    Callback = function(v) PX.AFK_FARM_FLEE = v end
})
ui.afkFarmUnstuck = tab:AddToggle({
    Name = "Unstuck",
    Default = false,
    Callback = function(v) PX.AFK_FARM_UNSTUCK = v end
})
PX.section(tab, "Legit Farm", [[Walks your dino to food and eats it, then walks to the next. No flying - it uses the game's own walk and steers with the camera, so it looks like a player walking around. It never runs to food (running drains a big dino's food and water many times faster); it only runs to get away from a player.
Food, water and cleanliness are all handled while it runs: it eats at every food it reaches and keeps cleanliness topped up by itself. Water only fills at real water now, so when it drops under 40% the farm walks to the nearest shore, drinks until full, then goes back to food. Auto Water and Auto Cleanliness do not need to be on.

Legit Farm: turns it on (and turns AFK Farm, Fly, Auto Fly and Fossil Farm off). It only picks food your dino can reach from the ground, so trees whose leaves are out of reach are skipped. It walks through rocks, logs and bushes but never through the ground. Force Eat does the eating and only bites the food the farm is standing at - Force Eat's own settings apply.
Legit Avoid Radius: skips food within this many studs of another player. 0 turns it off.
Legit Search Distance: the furthest food it will walk to.
What it goes for: the nearest plant, for every dino - Force Eat eats plants whatever your diet. A dino that eats meat also takes meat that is close by, and goes for meat first while a nutrient it gives (Proteins, Fats, Calcium) is at 99% or below. Bones, shells, clams, eggs and insects are left alone unless nothing else is left, or a nutrient they give has dropped to 90%. Height counts: food well above or below you (down a cliff, up on a ledge) counts as further away than food on level ground. Food it cannot get to, or where your hunger does not go up after 12 seconds of biting (like a glitched "???" corpse that only feeds once someone picks it up), is left alone for 20 minutes - 30 if the same food fails twice.
Legit Leave Scraps: stops eating a plant while a little food is still left on it (about two of your dino's bites, learned as it eats), so the plant never decays, and treats it as empty - it moves on and only comes back once the plant has had time to regrow. Corpses and meat are always eaten to the end.
Legit Never Stand Still: keeps walking a small circle on the spot instead of standing still - around the food while it eats, and where it is while it has nothing to walk to (the same idea as Auto Grow's circle). It walks it, never runs or trots, so it stays on the food. Resting and logging out still stand still, because both need it.
Legit Flee From Players: runs away when a player comes within the Avoid Radius, then goes back to farming.
Legit Fly Away From Players: when a player comes within the Fly Away Radius, lifts off and flies away from them, lands properly once they are well behind, then carries on farming. On by default. Taking damage also sends it flying off from the nearest player. Boxed in by players on every side (it keeps turning back, or keeps taking off again), it drops a little under the ground, flies straight past them to food that is well away from everyone, comes up, lands and carries on. It keeps out of water altogether - every dino, semi-aquatic ones too: food in or by water is skipped, water on the way is crossed under the ground, and if it ever ends up swimming it goes straight down under the water and comes up on the nearest dry ground.
Legit Fly Away Radius: how close a player can get before it flies away.
Legit Unstuck: if the dino stops getting anywhere for a few seconds, it lifts up, moves over the problem, lands and keeps walking. It also gives up on food it has stood at for 25 seconds without eating anything while hungry, and picks something else. Food down in a cave or under an overhang is never picked, food it ends up right under or over but cannot reach (up a cliff, down a hole) is dropped after 8 seconds and left alone for 30 minutes, and any food it has had to give up on twice is also left alone for 30 minutes.
Legit Rest To Heal: after taking any damage, or below half health, flies straight up into the air - out of reach of players and fish - and lies down there until back to full, then comes back down (on dry ground) and carries on. With a player close by it flies off first. If your dino dies anyway while a farm is on, it respawns as the same dino - never spending revival tokens - and the farm carries on.
Legit Admin Kick: leaves the server if an admin joins, or is already here, while Legit Farm runs.

Anti AFK runs by itself while Legit Farm is on, so it can be left for hours.]])
PX.legitFarmToggle = tab:AddToggle({
    Name = "Legit Farm",
    Skull = true,
    Default = false,
    Callback = function(v)
        PX.LEGIT_FARM = v
        if v then
            if PX.AFK_FARM and PX.afkFarmToggle then pcall(function() PX.afkFarmToggle:Set(false) end) end
            if PX.FLY and PX.flyToggle then pcall(function() PX.flyToggle:Set(false) end) end
            if PX.AUTO_FLY and PX.autoFlyToggle then pcall(function() PX.autoFlyToggle:Set(false) end) end
            if PX.FOSSIL_FARM and PX.fossilFarmToggle then pcall(function() PX.fossilFarmToggle:Set(false) end) end
            if PX.LF_ADMIN_KICK and PX.adminKickSweep then PX.adminKickSweep() end
        end
    end
})
ui.lfAvoid = tab:AddSlider({
    Name = "Legit Avoid Radius",
    Min = 0, Max = 1000, Default = 200,
    Callback = function(v) PX.LF_AVOID = v end
})
ui.lfMaxDist = tab:AddSlider({
    Name = "Legit Search Distance",
    Min = 200, Max = 3000, Default = 1000,
    Callback = function(v) PX.LF_MAX_DIST = v end
})
ui.lfScraps = tab:AddToggle({
    Name = "Legit Leave Scraps",
    Default = false,
    Callback = function(v) PX.LF_SCRAPS = v end
})
ui.lfCircle = tab:AddToggle({
    Name = "Legit Never Stand Still",
    Default = false,
    Callback = function(v) PX.LF_CIRCLE = v end
})
ui.lfFlee = tab:AddToggle({
    Name = "Legit Flee From Players",
    Default = false,
    Callback = function(v) PX.LF_FLEE = v end
})
ui.lfTabOut = tab:AddToggle({
    Name = "Legit Tab Out",
    Default = true,
    Callback = function(v) PX.LF_TABOUT = v end
})
ui.lfUnstuck = tab:AddToggle({
    Name = "Legit Unstuck",
    Default = true,
    Callback = function(v) PX.LF_UNSTUCK = v end
})
ui.lfRest = tab:AddToggle({
    Name = "Legit Rest To Heal",
    Default = true,
    Callback = function(v) PX.LF_REST = v end
})
ui.lfAdminKick = tab:AddToggle({
    Name = "Legit Admin Kick",
    Default = true,
    Callback = function(v)
        PX.LF_ADMIN_KICK = v
        if v and PX.LEGIT_FARM and PX.adminKickSweep then PX.adminKickSweep() end
    end
})
ui.lfFlyAway = tab:AddToggle({
    Name = "Legit Fly Away From Players",
    Default = true,
    Callback = function(v) PX.LF_FLYAWAY = v end
})
ui.lfFlyAwayRadius = tab:AddSlider({
    Name = "Legit Fly Away Radius",
    Min = 50, Max = 500, Default = 150,
    Callback = function(v) PX.LF_FLYAWAY_RADIUS = v end
})
PX.section(tab, "Auto Switch Dino", [[Grows a list of dinos one after another while AFK Farm or Legit Farm runs. Each dino keeps its own save, so nothing is lost by switching.

Auto Switch Dino: when the dino you are playing has finished growing, it waits until you are out of combat, out of water and on the ground, logs out through the game's own Return to Main Menu (the full timer), spawns the next dino in your list, and the farm carries on with it. When no dino in the list is left, it logs out, unloads the hub and leaves the server. A dino counts as finished as soon as it reaches its final stage (Elder, or Adult for dinos without an Elder) - Monster above that takes too long to ever reach.
Switch Slot 1: the first dino to grow. Slots go top to bottom and finished dinos are skipped. The lists show every dino on this map, marked unlocked, or locked with its Amber price. Leave every slot on (none) to grow every unlocked dino on this map, smallest first. Carnivores and herbivores are treated the same; only dinos on the map you are on can be used.
Switch Gender: which save to grow for every dino in the list.
Smallest To Biggest: ignores the slots and grows every dino on this map in turn - the ones you have unlocked first, then locked ones - each from smallest to biggest, skipping any already at their final growth stage.
Allow Unlocking New Dinos: when a locked dino's turn comes, buys it with Amber - only if you have enough, otherwise it is skipped and the next one is used. Never spends Robux or fossils. Off by default.
Finished Dinos: at the bottom, every dino Auto Switch has finished on this Roblox account, kept across restarts - plus any this map's saves already show at their final stage.]])
PX.autoSwitchToggle = tab:AddToggle({
    Name = "Auto Switch Dino",
    Skull = true,
    Default = false,
    Callback = function(v)
        PX.AUTO_SWITCH = v
        if v and PX.asRefreshLists then pcall(PX.asRefreshLists) end
        if not v then PX.AS_BUSY = false end
    end
})
;(function()
    local items = PX.asItems and PX.asItems() or { "(none)" }
    PX.AS_SLOTS = PX.AS_SLOTS or {}
    for i = 1, 6 do
        PX.AS_SLOTS[i] = "(none)"
        ui["asSlot" .. i] = tab:AddDropdown({
            Name = "Switch Slot " .. i,
            Items = items,
            Default = "(none)",
            Callback = function(v) PX.AS_SLOTS[i] = PX.asNameOf and PX.asNameOf(v) or v end
        })
        if PX.asDropdowns then PX.asDropdowns[i] = ui["asSlot" .. i] end
    end
end)()
ui.asGender = tab:AddDropdown({
    Name = "Switch Gender",
    Items = { "Male", "Female" },
    Default = "Male",
    Callback = function(v) PX.AS_GENDER = v end
})
ui.asAutoOrder = tab:AddToggle({
    Name = "Smallest To Biggest",
    Default = false,
    Callback = function(v) PX.AS_AUTO_ORDER = v end
})
ui.asAutoBuy = tab:AddToggle({
    Name = "Allow Unlocking New Dinos",
    Default = false,
    Callback = function(v) PX.AS_AUTOBUY = v end
})
pcall(function()   -- last in Auto Switch's panel: every dino it has finished, kept across restarts
    if tab.AddLabel then PX.asDoneLabel = tab:AddLabel({ Name = "Finished Dinos", Text = "Finished: none yet" }) end
    if PX.asRefreshDone then PX.asRefreshDone() end
end)
PX.section(tab, "Farm Timer", [[Farm Timer: counts how long AFK Farm or Legit Farm has been running. When the time is up it turns the farms (and Auto Switch) off, logs out through the game's Return to Main Menu once you are out of combat and water, and leaves the server. If it cannot log out within 5 minutes it leaves anyway. You get a warning 5 minutes before. Turning the timer off and on starts the count again.
Leave After (minutes): how long to farm before leaving.]])
PX.farmTimerToggle = tab:AddToggle({
    Name = "Farm Timer",
    Default = false,
    Callback = function(v)
        PX.FARM_TIMER = v
        PX.ftElapsed, PX.ftWarned = 0, false
        if v then
            pcall(function() PX.Hub:Notify("Farm Timer: leaves after " .. math.floor(PX.FT_MINUTES or 0) .. " minutes of farming", 5) end)
        end
    end
})
ui.ftMinutes = tab:AddSlider({
    Name = "Leave After (minutes)",
    Min = 5, Max = 720, Default = 120,
    Callback = function(v) PX.FT_MINUTES = v end
})
PX.section(tab, "Rejoin", [[Rejoin: keeps you farming through kicks, crashes and server restarts. Back on the start screen it picks Survival and the map below, joins one of that map's three fullest servers that still has room (never the one you just left), spawns the dino you last played on that map - with Auto Switch on, the next unfinished dino if that one is done - and turns back on whatever was running: AFK Farm, Legit Farm, Auto Switch, Fossil Farm and Farm Timer. The start screen gives you 8 seconds to cancel. If your dino cannot be spawned (three tries, or Auto Switch's next dino), it rejoins another server the same way - at most once every 20 minutes.
The script has to load by itself on the start screen and in the server: EZ Auto Launcher does that (it rejoins, injects and runs the script). When Auto Switch finishes every dino on a map, Rejoin moves you to the next map that still has one to grow (Jurassic, Cretaceous Upland, Cretaceous Lowland, Cretaceous Archipelago, skipping maps under maintenance) and never back to a finished one, even after a crash; picking a Rejoin Map yourself clears those marks. A finished Auto Switch (no map left) or Farm Timer, or unloading the hub, means you stopped on purpose - nothing is turned back on. Rejoin and its map are saved the moment you change them and apply in every server; they are not part of a config, and each Roblox account has its own.
Rejoin Map: the map to join. Last Played is the map you were last on with Rejoin on.
Farm Dino: the one dino to spawn and farm every rejoin - overrides Last Played and Auto Switch. Set it, turn on Legit Farm, and every server it joins spawns that dino and farms it. It has to be a dino you have unlocked on the map it joins; a locked or other-map pick gets one notice and falls back to Last Played or Auto Switch. While you are playing it, Auto Switch stands down: it keeps farming this dino instead of moving on once it is fully grown. Last Played leaves the dino choice as before. Saved with Rejoin, per account.
Auto-Leave Empty Server: while a farm or Auto Switch is running, if the server drops below the player count below for 30 seconds, leave and rejoin one of the map's fullest servers (needs Rejoin on; saved with Rejoin, per account).
Leave Under (players): the population floor that triggers Auto-Leave.]])
PX.rejoinToggle = tab:AddToggle({
    Name = "Rejoin",
    Default = PX.REJOIN,
    Callback = function(v)
        PX.REJOIN = v
        if PX.rejoinSave then PX.rejoinSave() end
    end
})
;(function()
    local maps = { "Last Played", "Jurassic", "Cretaceous Upland", "Cretaceous Lowland", "Cretaceous Archipelago" }
    if not table.find(maps, PX.REJOIN_MAP) then PX.REJOIN_MAP = "Last Played" end
    ui.rejoinMap = tab:AddDropdown({
        Name = "Rejoin Map",
        Items = maps,
        Default = PX.REJOIN_MAP,
        Callback = function(v)
            PX.REJOIN_MAP = v
            if PX.rejoinSave then PX.rejoinSave() end
        end
    })
end)()
;(function()
    -- Farm Dino: the single dino Rejoin/resume spawns and farms, overriding last-played and Auto Switch.
    -- Reuses Auto Switch's roster (this map's dinos, unlocked/locked labels). "Last Played" = don't force.
    local items = { "Last Played" }
    for _, lbl in ipairs(PX.asItems and PX.asItems() or {}) do
        if (PX.asNameOf and PX.asNameOf(lbl)) ~= "(none)" then items[#items + 1] = lbl end
    end
    local default = "Last Played"
    if type(PX.FARM_DINO) == "string" and PX.FARM_DINO ~= "" and PX.FARM_DINO ~= "Last Played" then
        default = (PX.asLabel and PX.asLabel(PX.FARM_DINO)) or PX.FARM_DINO
    end
    ui.rejoinDino = tab:AddDropdown({
        Name = "Farm Dino",
        Items = items,
        Default = default,
        Callback = function(v)
            local name = (PX.asNameOf and PX.asNameOf(v)) or v
            if name == "Last Played" or name == "(none)" or name == nil then
                PX.FARM_DINO = nil
            else
                PX.FARM_DINO = name
            end
            if PX.rejoinSave then PX.rejoinSave() end
        end
    })
end)()
ui.lowPopLeave = tab:AddToggle({
    Name = "Auto-Leave Empty Server",
    Default = PX.LOW_POP_LEAVE,
    Callback = function(v)
        PX.LOW_POP_LEAVE = v
        if PX.rejoinSave then PX.rejoinSave() end
    end
})
ui.lowPopMin = tab:AddSlider({
    Name = "Leave Under (players)",
    Min = 10, Max = 150, Default = PX.LOW_POP_MIN,
    Callback = function(v)
        PX.LOW_POP_MIN = v
        if PX.rejoinSave then PX.rejoinSave() end
    end
})
PX.antiAfkToggle = tab:AddToggle({
    Name = "Anti AFK",
    Default = false,
    Callback = function(v) PX.ANTI_AFK = v end
})
PX.section(tab, "FPS Saver", [[FPS Saver: for leaving the farm running in the background. Strips the game down to almost nothing to render - lowest quality, no shadows, no post effects, fog closed to a few studs, a low frame cap, and the 3D view off where your executor allows it. The farm keeps running on game data, not the screen. Turn it off to get your normal view back.]])
ui.fpsSaver = tab:AddToggle({
    Name = "FPS Saver",
    Default = false,
    Callback = function(v) PX.FPS_SAVER = v; if PX.applyFpsSaver then PX.applyFpsSaver(v) end end
})
PX.section(tab, "Cleanliness", [[Auto Cleanliness: keeps you clean automatically. The game will not clean you while you eat, so a running Legit or AFK Farm takes a short clean break when you drop under 60: it stops eating and moving until you are clean (usually a minute or two - cleanliness rises in steps), then carries on. If it stops rising it starts cleaning again; the break ends early if you take damage, and a break that gets nowhere is tried again 2 minutes later.
Infinite Oxygen: stops your oxygen draining underwater. It works by holding the cleaning state, so a farm with it on takes the same clean breaks.]])
PX.autoCleanToggle = tab:AddToggle({
    Name = "Auto Cleanliness",
    Default = false,
    Callback = function(v) PX.AUTO_CLEAN = v end
})
ui.infOxygen = tab:AddToggle({
    Name = "Infinite Oxygen",
    Default = false,
    Callback = function(v) PX.INF_OXYGEN = v end
})


-- ============ AUTOFARM : Auto Spawn ============
tab = patchTabNotify(afRoot:AddSubTab({Name = "Auto Spawn"}))
PX.section(tab, "Auto Spawn", [[Spams RequestSlot for your selected apex dino as fast as possible so you grab a slot the instant one opens.

Open dino selection, pick the dino and gender you want, then turn this on. It locks your target and fires ~120 requests per minute until it gets in, then spawns you automatically.

Works even if the Roblox window is not focused (uses direct Knit calls, not mouse clicks). Stops automatically once you spawn.]])
PX.autoSpawnToggle = tab:AddToggle({
    Name = "Auto Spawn",
    Default = false,
    Callback = function(v)
        if v then
            PX.startAutoSpawn()
        else
            PX.autoSpawnCleanup()
        end
    end
})

-- The skull on the hitbox and reach rows is NOT fixed. A 2x hitbox is barely noticeable; a 5x one
-- is unmistakable to anyone watching a fight. So the marker appears only once the multiplier is
-- scaled to 5 or above, and disappears again when it is brought back down.
function PX.markScaled(toggleObj, sliderObj, value)
    local on = (tonumber(value) or 1) >= 5
    for _, o in ipairs({ toggleObj, sliderObj }) do
        if o and o.SetSkull then pcall(function() o:SetSkull(on) end) end
    end
end

-- ============ COMBAT : Hitbox Expander ============
tab = patchTabNotify(combatRoot:AddSubTab({Name = "Hitbox Expander"}))
PX.section(tab, "Hitbox Expander", [[Makes OTHER players easier to hit by growing the parts of them you can land an attack on.

Enable Hitbox Expander: turns it on.
Visualize Hitboxes: draws the enlarged parts so you can see what you are swinging at. Only you see these.
Visual Opacity: how solid those boxes look.
Hitbox Multiplier: how much bigger the parts get, up to 10x. Anything from 5x carries a skull and is very obvious to anyone watching a fight.]])
 PX.hitboxToggle = tab:AddToggle({
    Name = "Enable Hitbox Expander",
    Default = false,
    Callback = function(v)
        PX.HITBOX_EXPANDER = v
        if not v then PX.resetAllHitboxes() end
    end
})
ui.hitboxVis = tab:AddToggle({
    Name = "Visualize Hitboxes",
    Default = false,
    Callback = function(v)
        PX.HITBOX_VISUALIZE = v
        if not v then
            -- Immediate clear so it looks instant. The Heartbeat loop enforces the same state a
            -- few frames later, which is what catches anyone this pass misses (streamed out,
            -- mid-respawn, joining afterwards).
            for _, player in Players:GetPlayers() do
                if player ~= LocalPlayer then
                    PX.visualizePlayerHitbox(player, false)
                    PX.hbShown[player] = nil
                end
            end
        end
    end
})
ui.hitboxVisOpacity = tab:AddSlider({
    Name = "Visual Opacity",
    Min = 0, Max = 100, Default = 50,
    Callback = function(v) PX.HITBOX_VIS_TRANSPARENCY = 1 - (v / 100) end
})
ui.hitboxMult = tab:AddSlider({
    Name = "Hitbox Multiplier",
    -- 10 here. The FREE build caps this at 5 instead; Tools/build-free.js rewrites it.
    Min = 1, Max = 10, Default = 1,
    Callback = function(v) PX.HITBOX_MULTIPLIER = v; PX.markScaled(PX.hitboxToggle, ui.hitboxMult, v) end
})
PX.section(tab, "Hitbox Groups", [[Which body parts on your target you are allowed to hit. Anything you untick cannot be hit at all, so your attacks stop drifting onto a leg when you wanted the head. Head is the usual choice.]])
ui.hitboxGroups = PX.groupDropdown(tab, "Parts", PX.HITBOX_GROUPS, PX.PART_GROUP_ORDER)

-- ============ COMBAT : Reach ============
tab = patchTabNotify(combatRoot:AddSubTab({Name = "Reach"}))
PX.section(tab, "Reach", [[Makes YOU able to hit from further away by growing your own attack range.

Enable Reach: turns it on.
Visualize Reach: draws your own range so you can see it. Only you see this.
Reach Visual Opacity: how solid that box looks.
Reach Multiplier: how far your range extends, up to 10x. Anything from 5x carries a skull and is very obvious. Raise it a little at a time - the server checks this, and too much gets ignored.
Parts: which of your own parts get the extra range.]])
ui.reach = tab:AddToggle({
    Name = "Enable Reach",
    Default = false,
    Callback = function(v)
        PX.REACH_ENABLED = v
        -- Only tear down when nothing still wants the parts — the visualizer keeps them alive on
        -- its own now, so resetting unconditionally would blank the view the moment Reach went off.
        if not v and not PX.REACH_VISUALIZE then PX.resetLocalReach() end
    end
})
ui.reachVis = tab:AddToggle({
    Name = "Visualize Reach",
    Default = false,
    Callback = function(v)
        PX.REACH_VISUALIZE = v
        if not v and not PX.REACH_ENABLED then PX.resetLocalReach() end
    end
})
ui.reachVisOpacity = tab:AddSlider({
    Name = "Reach Visual Opacity",
    Min = 0, Max = 100, Default = 50,
    Callback = function(v) PX.REACH_VIS_TRANSPARENCY = 1 - (v / 100) end
})
ui.reachMult = tab:AddSlider({
    Name = "Reach Multiplier",
    -- 10 here. The FREE build caps this at 5 instead; Tools/build-free.js rewrites it.
    Min = 1, Max = 10, Default = 1,
    Callback = function(v) PX.REACH_MULTIPLIER = v; PX.markScaled(ui.reach, ui.reachMult, v) end
})
-- Head = jaw/skull (bite), Tail = tail whip, Arm = claws if the dino has them.
ui.reachGroups = PX.groupDropdown(tab, "Parts", PX.REACH_GROUPS, PX.REACH_GROUP_ORDER,
    PX.resetLocalReach)

-- ============ COMBAT : Attack Tools ============
tab = patchTabNotify(combatRoot:AddSubTab({Name = "Attack Tools"}))
PX.section(tab, "Instant Attack", [[Instant Attack: speeds up the attack animation, so you can swing again sooner.
Attack Speed: how much faster. Very high looks obviously wrong to anyone watching.
No Attack Cooldown: removes the wait between attacks entirely. This is separate from the animation above, and the two stack.]])
ui.noAtkCd = tab:AddToggle({
    Name = "Instant Attack",
    Skull = true,
    Default = false,
    Callback = function(v)
        PX.NO_ATK_CD = v
        if not v then PX.restoreAttackSpeed() end
    end
})
ui.attackSpeed = tab:AddSlider({
    Name = "Attack Speed",
    Min = 1, Max = 10, Default = 3,
    Callback = function(v) PX.ATTACK_SPEED = v end
})
if PX.CAP.charstate then   -- needs CharacterState; hidden on executors where that require freezes (Xeno)
ui.noAtkCooldown = tab:AddToggle({
    Name = "No Attack Cooldown",
    Skull = true,
    Default = false,
    Callback = function(v) PX.NO_ATK_COOLDOWN = v end
})
end
PX.section(tab, "Silent Aim", [[Makes only the body parts you choose hittable on everyone, so your attacks always land where you picked instead of on whatever part is nearest.

Enable Silent Aim: turns it on.
Parts: which parts stay hittable.]])
ui.silentAim = tab:AddToggle({
    Name = "Enable Silent Aim",
    Default = false,
    Callback = function(v)
        PX.SILENT_AIM = v
        if not v then PX.resetAllHitboxes() end
    end
})
ui.silentGroups = PX.groupDropdown(tab, "Parts", PX.SILENT_GROUPS, PX.PART_GROUP_ORDER)

-- ============ MOVEMENT ============
tab = patchTabNotify(moveRoot:AddSubTab({Name = "Save Dino"}))
PX.section(tab, "Save Dino", [[Hides you where nothing can reach you, then brings you back.

Save Dino: takes you 150 studs into the sky and holds you there frozen. Turning it off flies you back to the exact spot you started from and lands you on your feet. You can still lie down and sleep while hidden, so you heal.
Auto-Save at Health %: hides you automatically when your health drops low. Fires once, then waits until you have healed above the line before it can fire again.
Include Bleed: counts bleeding damage as already lost. 40% health while bleeding 35% counts as 5%, so you hide before the bleed kills you.
Auto-Save Threshold %: the health level that triggers it.]])
saveDinoToggle = tab:AddToggle({
    Name = "Save Dino",
    Skull = true,
    Default = false,
    Callback = function(v)
        if v and not PX.SAVE_DINO_ACTIVE then saveDino()
        elseif not v and PX.SAVE_DINO_ACTIVE then PX.releaseDino() end
    end
})
-- The height (150 up) is a fixed constant, not a slider. Save Direction was removed 2026-10-12 (going
-- down under the map now gets you kicked), so the section is four controls: Save Dino, Auto-Save at
-- Health %, Include Bleed, Auto-Save Threshold %.
PX.autoSaveToggle = tab:AddToggle({
    Name = "Auto-Save at Health %",
    Default = false,
    Keybind = true,
    Callback = function(v)
        PX.AUTO_SAVE = v
        if v and PX.AFK_FARM and PX.AFK_FARM_SAFETY then
            pcall(function() if PX.Hub then PX.Hub:Notify("Auto-Save paused while AFK Farm's Safety is on", 5) end end)
        end
    end
})
PX.autoSaveBleedToggle = tab:AddToggle({
    Name = "Include Bleed",
    Default = true,
    Callback = function(v) PX.AUTO_SAVE_BLEED = v end
})
PX.autoSaveSlider = tab:AddSlider({
    Name = "Auto-Save Threshold %",
    Min = 1, Max = 95, Default = 30,
    Callback = function(v) PX.AUTO_SAVE_PCT = v end
})
PX.section(tab, "Falling", [[No Fall Damage: you take no damage from falling, however far you drop.]])
 PX.noFallToggle = tab:AddToggle({
    Name = "No Fall Damage",
    Default = false,
    Callback = function(v) PX.NO_FALL_DAMAGE = v; PX.applyFallImmunity(v) end
})

tab = patchTabNotify(moveRoot:AddSubTab({Name = "Movement"}))

-- NO SPEED SETTINGS. The shared mover (PX.govNext) goes as fast as the server allows - sideways at the dino's
-- run speed with Run held, up/down 150 - measured 2026-10-14/15 against the "Speeding" kick. A speed slider could
-- only ever be slower or unsafe, so Fly, AFK Farm and Fossil Farm have none.

PX.section(tab, "Fly", [[Fly: full manual flight. WASD to move, Space to go up, Ctrl to go down. Movement follows your camera.
Sideways it goes as fast as the game allows for your dino (it holds Run for you); straight up or down it goes at 150.]])
PX.flyToggle = tab:AddToggle({
    Name = "Fly",
    Skull = true,
    Default = false,
    Callback = function(v) PX.FLY = v end
})

-- Auto Fly, Teleport to Corpse and Biome Travel (back 2026-10-15, at the user's request, rebuilt on the shared mover).
-- Each one moves the dino, so turning one on switches the others, the farms and Fly off.
function PX.moversOff(keep)
    for t, flag in pairs({ flyToggle = "FLY", autoFlyToggle = "AUTO_FLY", tpCorpseToggle = "TP_CORPSE",
        biomeToggle = "BIOME_TRAVEL", fossilFarmToggle = "FOSSIL_FARM", afkFarmToggle = "AFK_FARM",
        legitFarmToggle = "LEGIT_FARM" }) do
        local row = PX[t]
        if t ~= keep and PX[flag] and row and row.Set then pcall(function() row:Set(false) end) end
    end
end
-- Another mover switched on while one of these flies: it stops (two movers writing the dino fight).
function PX.otherMoverOn()
    return PX.FLY or PX.AUTO_FLY or PX.AFK_FARM or PX.LEGIT_FARM or PX.FOSSIL_FARM or PX.SAVE_DINO_ACTIVE or false
end

PX.section(tab, "Auto Fly", [[Auto Fly: hands-free travel. Your dino flies a wide, slow circle 150 studs above the ground, and the circle drifts across the map, turning back at the map's edge. Wide and slow on purpose: the game only credits about 5.6 studs a second of travel, and a sharp turn loses that credit.
It goes at your dino's own run speed through the same mover as Fly (slower over water, where the game judges swimming). Off: it lets you down gently.]])
PX.autoFlyToggle = tab:AddToggle({
    Name = "Auto Fly",
    Skull = true,
    Default = false,
    Callback = function(v)
        PX.AUTO_FLY = v
        if v then PX.moversOff("autoFlyToggle") end
    end
})

PX.section(tab, "Teleport to Corpse", [[Teleport to Corpse: flies you to the nearest corpse that still has meat on it and lands you beside it - up, across following the ground, down on dry ground. It skips corpses of your own species, under the map or past the map's edge.
Chain Corpses: when that corpse is stripped, fly on to the next one. Off: it stops after one.]])
PX.tpCorpseToggle = tab:AddToggle({
    Name = "Teleport to Corpse",
    Skull = true,
    Default = false,
    Callback = function(v)
        PX.TP_CORPSE = v
        PX.tpDone, PX.tpTargetId, PX.tpNoneSaid = false, nil, nil
        if v then
            PX.moversOff("tpCorpseToggle")
            local meat = true
            pcall(function() meat = PX.dinoEatsMeat() end)
            if not meat then pcall(function() Hub:Notify("Teleport to Corpse: your dino does not eat meat - it will still fly there", 5) end) end
        end
    end
})
ui.tpChain = tab:AddToggle({
    Name = "Chain Corpses",
    Default = false,
    Callback = function(v) PX.TP_CHAIN = v end
})

PX.biomeDestItems = (PX.biomeNames and PX.biomeNames()) or {}
if #PX.biomeDestItems == 0 then PX.biomeDestItems = { "(none)" } end
PX.BIOME_TARGET = (PX.biomeDestItems[1] ~= "(none)") and PX.biomeDestItems[1] or nil
PX.section(tab, "Biome Travel", [[Biome Travel: pick a place on this map (the named places its map and compass show) under Destination, then turn it on. Your dino flies there - up, across following the ground, down on dry ground - and it switches itself off when you arrive. Turn it off to stop (you drop to the ground below, with no fall damage).
It goes at your dino's run speed; over water only at swimming speed (the game's rule), so crossing the sea is slow.]])
PX.biomeToggle = tab:AddToggle({
    Name = "Biome Travel",
    Skull = true,
    Default = false,
    Callback = function(v)
        if not v then PX.BIOME_TRAVEL = false return end
        if not PX.BIOME_TARGET then
            pcall(function() Hub:Notify("Biome Travel: pick a Destination first", 4) end)
            task.defer(function() pcall(function() PX.biomeToggle:Set(false) end) end)
            return
        end
        if PX.BIOME_TRAVEL then return end
        PX.moversOff("biomeToggle")
        PX.BIOME_TRAVEL = true
        task.spawn(PX.travelToBiome, PX.BIOME_TARGET)
    end
})

ui.biomeDest = tab:AddDropdown({
    Name = "Destination",
    Items = PX.biomeDestItems,
    Default = PX.biomeDestItems[1],
    Callback = function(v) PX.BIOME_TARGET = (v ~= "(none)") and v or nil end
})

PX.section(tab, "Auto Move", [[Auto Walk / Trot / Run / Sprint: holds that gait for you, so your dino keeps moving on its own - the game's own movement, at its own speed (walk, trot, run, sprint), which is what the game counts for moving.
It keeps going while you are tabbed out. Only one at a time, and it stands aside while a farm, Fly or Save Dino is running.]])
do
    -- One gait at a time: turning one on turns the others off (gaitBusy stops that echoing back).
    local gaitBusy = false
    local function pick(name, on)
        if gaitBusy then return end
        gaitBusy = true
        PX.AUTO_GAIT = on and name or nil
        for other, row in pairs({ Walk = ui.autoWalk, Trot = ui.autoTrot, Run = ui.autoRun, Sprint = ui.autoSprint }) do
            if other ~= name and row and row.Set then pcall(function() row:Set(false) end) end
        end
        if not on and PX.autoGaitStop then PX.autoGaitStop() end
        gaitBusy = false
    end
    ui.autoWalk = tab:AddToggle({ Name = "Auto Walk", Default = false, Callback = function(v) pick("Walk", v) end })
    ui.autoTrot = tab:AddToggle({ Name = "Auto Trot", Default = false, Callback = function(v) pick("Trot", v) end })
    ui.autoRun = tab:AddToggle({ Name = "Auto Run", Default = false, Callback = function(v) pick("Run", v) end })
    ui.autoSprint = tab:AddToggle({ Name = "Auto Sprint", Default = false, Callback = function(v) pick("Sprint", v) end })
end
PX.section(tab, "Insta Turn", [[Insta Turn: hold the key to snap instantly to face wherever your camera is pointing.]])
instaTurnKeybind = tab:AddKeybind({
    Name = "Insta Turn",
    Default = Enum.KeyCode.Unknown,
    Callback = function() end
})
PX.section(tab, "Quick Turn", [[Quick Turn: turns you faster than normal, without the instant snap.
Turn Strength: how much faster.]])
ui.quickTurn = tab:AddToggle({
    Name = "Quick Turn",
    Default = false,
    Keybind = true,
    Callback = function(v) PX.QUICK_TURN = v end
})
ui.turnSpeed = tab:AddSlider({
    Name = "Turn Strength",
    Min = 0, Max = 500, Default = 250,
    Callback = function(v) PX.TURN_SPEED = v end
})
PX.section(tab, "Auto Grow", [[Auto Grow: keeps you growing without you having to do anything.]])
PX.autoGrowToggle = tab:AddToggle({
    Name = "Auto Grow",
    Default = false,
    Callback = function(v)
        if v and not PX.AUTO_GROW then
            PX.AUTO_GROW = true
            autoGrowThread = nil
            PX.startAutoGrow()
        elseif not v and PX.AUTO_GROW then
            PX.stopAutoGrow()
        end
        PX.AUTO_GROW = v
    end
})

-- ============ RENDER : ESP ============
tab = patchTabNotify(renderRoot:AddSubTab({Name = "ESP"}))
PX.section(tab, "Player ESP", [[Puts a label above every player showing whatever you tick here. Nobody else can see any of it.

Enable ESP: turns the labels on.
The rest choose what appears on the label: name, dino type, growth stage, gender, health, stamina, weight, distance.
Food / Water / Infection Bar: shows that stat as a bar. Number: shows just the value on one coloured line instead. They appear once the server has sent that player's value, which it does for nearby players whenever it changes.
Infection Bar / Number show a dino's infection CHARGE: dinos with an infection attack (Austroraptor, Saurophaganax, Giganotosaurus and more) fill it by eating, and at 100 their infection attack can infect whoever they bite.
Infected Tag: marks every dino that IS infected - bitten by a charged infection attack - as INFECTED, with the infection's name (Fever, Neurological...) when the game gives one. Live for every dino in range.
Bleed ESP: marks the part of their health bar that is already lost to bleeding. Red means that health is gone no matter what.
Pack ESP: shows pack name and member count for every player in a pack. Requires you to be in a pack to see full details.
Pack Leader ESP: adds a gold LEADER tag on pack leaders on top of the pack info.
Text Highlight: adds a background behind the text so it stays readable against bright ground.]])
PX.espToggle = tab:AddToggle({
    Name = "Enable ESP",
    Default = false,
    Callback = function(v)
        PX.ESP_ENABLED = v
        if not v then
            for _, data in pairs(PX.espCache) do
                if data.billboard then data.billboard.Enabled = false end
            end
        end
    end
})
ui.showName = tab:AddToggle({ Name = "Show Name", Default = true, Callback = function(v) PX.SHOW_NAME = v end })
ui.showDino = tab:AddToggle({ Name = "Show Dino Type", Default = true, Callback = function(v) PX.SHOW_DINO = v end })
ui.showStage = tab:AddToggle({ Name = "Show Stage", Default = true, Callback = function(v) PX.SHOW_STAGE = v end })
ui.showGender = tab:AddToggle({ Name = "Show Gender", Default = true, Callback = function(v) PX.SHOW_GENDER = v end })
ui.showHealth = tab:AddToggle({ Name = "Show Health", Default = true, Callback = function(v) PX.SHOW_HEALTH = v end })
ui.showStamina = tab:AddToggle({ Name = "Show Stamina", Default = true, Callback = function(v) PX.SHOW_STAMINA = v end })
ui.foodBar = tab:AddToggle({ Name = "Food Bar", Default = false, Callback = function(v) PX.SHOW_FOOD_BAR = v end })
ui.foodNum = tab:AddToggle({ Name = "Food Number", Default = false, Callback = function(v) PX.SHOW_FOOD_NUM = v end })
ui.waterBar = tab:AddToggle({ Name = "Water Bar", Default = false, Callback = function(v) PX.SHOW_WATER_BAR = v end })
ui.waterNum = tab:AddToggle({ Name = "Water Number", Default = false, Callback = function(v) PX.SHOW_WATER_NUM = v end })
ui.infectBar = tab:AddToggle({ Name = "Infection Bar", Default = false, Callback = function(v) PX.SHOW_INFECT_BAR = v end })
ui.infectNum = tab:AddToggle({ Name = "Infection Number", Default = false, Callback = function(v) PX.SHOW_INFECT_NUM = v end })
ui.infectTag = tab:AddToggle({ Name = "Infected Tag", Default = false, Callback = function(v) PX.SHOW_INFECTED = v end })
ui.showWeight = tab:AddToggle({ Name = "Show Weight", Default = true, Callback = function(v) PX.SHOW_WEIGHT = v end })
ui.bleed = tab:AddToggle({ Name = "Bleed ESP", Default = false, Callback = function(v) PX.BLEED_ESP = v end })
ui.packESP = tab:AddToggle({ Name = "Pack ESP", Default = false, Callback = function(v) PX.PACK_ESP = v end })
ui.packLeader = tab:AddToggle({ Name = "Pack Leader ESP", Default = false, Callback = function(v) PX.PACK_LEADER_ESP = v end })
ui.showDist = tab:AddToggle({ Name = "Show Distance", Default = true, Callback = function(v) PX.SHOW_DISTANCE = v end })
ui.textHL = tab:AddToggle({ Name = "Text Highlight", Default = false, Callback = function(v) PX.TEXT_HIGHLIGHT = v end })
PX.section(tab, "ESP Size", [[How big the ESP labels and bars are drawn.

Text Size: font size.
Health Bar Height / Width: size of the health bar.
Stamina Bar Height / Width: size of the stamina, food, water and infection bars.]])
ui.textSize = tab:AddSlider({ Name = "Text Size", Min = 8, Max = 28, Default = 14, Callback = function(v) PX.TEXT_SIZE = v end })
ui.hbHeight = tab:AddSlider({ Name = "Health Bar Height", Min = 2, Max = 20, Default = 6, Callback = function(v) PX.HEALTH_BAR_HEIGHT = v end })
ui.hbWidth = tab:AddSlider({ Name = "Health Bar Width", Min = 20, Max = 100, Default = 80, Callback = function(v) PX.HEALTH_BAR_WIDTH = v / 100 end })
ui.sbHeight = tab:AddSlider({ Name = "Stamina Bar Height", Min = 2, Max = 20, Default = 6, Callback = function(v) PX.STAM_BAR_HEIGHT = v end })
ui.sbWidth = tab:AddSlider({ Name = "Stamina Bar Width", Min = 20, Max = 100, Default = 80, Callback = function(v) PX.STAM_BAR_WIDTH = v / 100 end })
PX.section(tab, "ESP Range", [[ESP Distance: how far away a player can be and still get a label. Lower it if the screen gets busy.]])
ui.espDist = tab:AddSlider({ Name = "ESP Distance", Min = 100, Max = 10000, Default = 5000, Callback = function(v) PX.ESP_DISTANCE = v end })
PX.section(tab, "Chams", [[Enable Chams: fills players with a solid colour you can see through walls, hills and trees. Only you see it.
Chams Fill Transparency: how solid the fill is.
Chams Outline Transparency: how solid the outline is.]])
ui.chams = tab:AddToggle({
    Name = "Enable Chams",
    Default = false,
    Callback = function(v)
        PX.CHAMS_ENABLED = v
        if not v then
            for _, data in pairs(PX.espCache) do
                if data.highlight then data.highlight.Enabled = false end
            end
        end
    end
})
ui.chamsFill = tab:AddSlider({ Name = "Chams Fill Transparency", Min = 0, Max = 100, Default = 70, Callback = function(v) PX.CHAMS_FILL_TRANSPARENCY = v / 100 end })
ui.chamsOutline = tab:AddSlider({ Name = "Chams Outline Transparency", Min = 0, Max = 100, Default = 0, Callback = function(v) PX.CHAMS_OUTLINE_TRANSPARENCY = v / 100 end })
PX.section(tab, "Fish ESP", [[Fish ESP: labels fish in the water.]])
ui.fishESP = tab:AddToggle({
    Name = "Fish ESP",
    Default = false,
    Callback = function(v) PX.FISH_ESP = v end,
})
PX.section(tab, "Corpse ESP", [[Show Corpses: labels corpses that still have meat left. Stripped skeletons are not labelled.
Corpse/Meat Text Size: font size for those labels.
Corpse Distance: how far away corpses are still labelled.
Show Infection: adds a line under corpse and meat labels. While fresh it counts down to when it rots - fresh meat gives no infection. Once rotten it turns green and reads ROTTEN, with how much infection one bite gives your dino and how many bites until your meter is full. Only corpses and meat rot; plants, eggs and bones never do.]])
ui.corpse = tab:AddToggle({
    Name = "Show Corpses",
    Default = false,
    Callback = function(v) PX.CORPSE_ESP = v; refreshWorldESP() end
})
ui.worldTextSize = tab:AddSlider({
    Name = "Corpse/Meat Text Size",
    Min = 8, Max = 32, Default = 12,
    Callback = function(v) PX.WORLD_TEXT_SIZE = v end
})
ui.corpseDist = tab:AddSlider({
    Name = "Corpse Distance",
    Min = 100, Max = 10000, Default = 5000,
    Callback = function(v) PX.CORPSE_DISTANCE = v; if PX.CORPSE_ESP then refreshWorldESP() end end
})
ui.corpseInf = tab:AddToggle({
    Name = "Show Infection",
    Default = true,
    Callback = function(v) PX.CORPSE_INF_ESP = v end
})
PX.section(tab, "Meat / Food ESP", [[Show Meat: labels loose meat lying on the ground.
Meat Distance: how far away it is still labelled.]])
ui.meat = tab:AddToggle({
    Name = "Show Meat",
    Default = false,
    Callback = function(v) PX.MEAT_ESP = v; refreshWorldESP() end
})
ui.meatDist = tab:AddSlider({
    Name = "Meat Distance",
    Min = 100, Max = 10000, Default = 5000,
    Callback = function(v) PX.MEAT_DISTANCE = v; if PX.MEAT_ESP then refreshWorldESP() end end
})

-- ============ RENDER : Tools ============
tab = patchTabNotify(renderRoot:AddSubTab({Name = "Tools"}))
PX.section(tab, "Screen", [[No Sleep Screen: removes the black screen while you sleep, so you can still see around you.
No Blur: removes the blur you get from a broken head.
Show Module List: lists what you have switched on in the top-right corner. Turn it off before screenshotting.]])
ui.antiBS = tab:AddToggle({
    Name = "No Sleep Screen",
    Default = false,
    Callback = function(v) PX.ANTI_BLACKSCREEN = v end
})
ui.noBlur = tab:AddToggle({
    Name = "No Blur",
    Default = false,
    Callback = function(v)
        PX.NO_BLUR = v
        -- Act on the flip instead of waiting for the next sweep: switching on kills a blur that
        -- is already ramping, switching off hands every effect we disabled back to the game.
        if v then PX.sweepBlur() else PX.restoreBlur() end
    end
})
ui.showModules = tab:AddToggle({
    Name = "Show Module List",
    Default = false,   -- a fresh start turns nothing on (a saved/autoload config still does)
    Callback = function(v) PX.SHOW_INDICATORS = v end
})
do   -- Stats Card: everywhere. Where CharacterState cannot be read (Xeno) it runs in its lite form, without the
     -- mass gain, nutrition and wellbeing rows (see the card itself).
PX.section(tab, "Stats Card", PX.CAP.charstate and [[A movable card showing your own dino's live stats.

Stats Card: shows the card.
The indented toggles choose what appears on it: your dino's name (species and gender, as the card's title), growth stage, mass gain multiplier, weight, growth timer, nutrition and wellbeing.
Drag Stats Card: lets you move the card. Turn it off to lock it in place.
Hide While Menu Open: hides the card while the menu is open, so it does not cover it.
Reset Stats Card Position: puts it back in its corner if you lose it off-screen.]] or [[A movable card showing your own dino's live stats.

Stats Card: shows the card.
The indented toggles choose what appears on it: your dino's name (species and gender, as the card's title), growth stage and progress, weight, the growth timer, and how long the stage takes at the pace you are growing.
On this executor the game's nutrition, wellbeing and mass gain numbers cannot be read, so the card leaves them out.
Drag Stats Card: lets you move the card. Turn it off to lock it in place.
Hide While Menu Open: hides the card while the menu is open, so it does not cover it.
Reset Stats Card Position: puts it back in its corner if you lose it off-screen.]])
ui.statsCard   = tab:AddToggle({ Name = "Stats Card", Default = false, Callback = function(v) PX.STATS_CARD = v end })
ui.scName      = tab:AddToggle({ Name = "  Dino Name",            Default = true,  Callback = function(v) PX.SC_NAME = v end })
ui.scGrowth    = tab:AddToggle({ Name = "  Growth Stage",         Default = true,  Callback = function(v) PX.SC_GROWTH = v end })
if PX.CAP.charstate then
ui.scMass      = tab:AddToggle({ Name = "  Mass Gain Multiplier", Default = true,  Callback = function(v) PX.SC_MASS = v end })
end
ui.scWeight    = tab:AddToggle({ Name = "  Weight",               Default = true,  Callback = function(v) PX.SC_WEIGHT = v end })
ui.scTimer     = tab:AddToggle({ Name = "  Growth Timer",         Default = true,  Callback = function(v) PX.SC_TIMER = v end })
ui.scStageTimer = tab:AddToggle({ Name = "  Stage Timer",          Default = true,  Callback = function(v) PX.SC_STAGE_TIMER = v end })
if PX.CAP.charstate then
ui.scNutrition = tab:AddToggle({ Name = "  Nutrition Stats",      Default = true,  Callback = function(v) PX.SC_NUTRITION = v end })
ui.scWellbeing = tab:AddToggle({ Name = "  Wellbeing Stats",      Default = true,  Callback = function(v) PX.SC_WELLBEING = v end })
end
ui.scHideMenu  = tab:AddToggle({ Name = "  Hide While Menu Open",   Default = true,  Callback = function(v) PX.SC_HIDE_WITH_MENU = v end })
-- While this is on the card accepts mouse input so you can drag it anywhere; turn it off to lock
-- the card in place (and stop it intercepting clicks). The spot is saved with your config.
ui.scDrag = tab:AddToggle({
    Name = "  Drag Stats Card",
    Default = false,
    Callback = function(v) PX.SC_DRAG = v end
})
tab:AddButton({
    Name = "Reset Stats Card Position",
    Callback = function()
        if PX.setStatsCardPos then PX.setStatsCardPos(0.62, 0, 0, 16) end
        pcall(function() Hub:Notify("Stats Card position reset") end)
    end
})
end   -- end Stats Card section
PX.section(tab, "Skin Changer", [[Skin: changes how your dino looks to you only. Everyone else still sees your real skin.]])
do
    local items = (PX.skinsForCurrentDino and (PX.skinsForCurrentDino())) or { "Default" }
    PX.skinDropdown = tab:AddDropdown({
        Name = "Skin",
        Items = items,
        Default = "Default",
        Callback = function(v)
            if type(v) ~= "string" then return end
            PX.SKIN_SELECTED, PX.SKIN_WANTED = v, v
            if PX.applySkin then pcall(PX.applySkin, v) end
        end,
    })
end
PX.section(tab, "Tracers", [[Enable Tracers: draws lines to players.]])
ui.tracers = tab:AddToggle({
    Name = "Enable Tracers",
    Default = false,
    Callback = function(v)
        PX.TRACERS_ENABLED = v
        if not v then
            for _, data in pairs(PX.espCache) do
                if data.tracer then
                    pcall(function() data.tracer.Visible = false end)
                end
            end
        end
    end
})
PX.section(tab, "Camera", [[Both only affect your own view. Nobody else sees any difference.

Unlimited Zoom: removes the limit on how far you can zoom the camera out.
FOV Changer: lets you set your field of view instead of using the game's.
FOV: how wide the view is. 70 is normal. Lower zooms in and makes things look closer; higher fits more on screen and makes speed feel faster. It does nothing until FOV Changer is on.]])
ui.unlimitedZoom = tab:AddToggle({
    Name = "Unlimited Zoom",
    Default = false,
    Callback = function(v)
        PX.UNLIMITED_ZOOM = v
        if v then PX.bindZoom() else PX.restoreZoom() end
    end
})
ui.fovToggle = tab:AddToggle({
    Name = "FOV Changer",
    Default = false,
    Callback = function(v)
        PX.FOV_ENABLED = v
        if v then PX.bindFOV() else PX.restoreFOV() end
    end
})
ui.fovSlider = tab:AddSlider({
    Name = "FOV",
    Min = 1, Max = 120, Default = 70,
    Callback = function(v) PX.FOV_VALUE = v end
})

-- ============ RENDER : World ============
tab = patchTabNotify(renderRoot:AddSubTab({Name = "World"}))
PX.section(tab, "Fullbright", [[Fullbright: lights up the whole map.]])
ui.fullbright = tab:AddToggle({
    Name = "Fullbright",
    Default = false,
    Callback = function(v)
        PX.FULLBRIGHT = v
        if v then PX.enableFullbright() else PX.restoreFullbright() end
    end
})
PX.section(tab, "Fog", [[No Fog: removes fog and haze, and the distance blur with it - the game keeps a depth-of-field effect focused about 15 studs out, which softens everything further away even with the fog gone. Turning this off puts all three back the way the game had them.]])
ui.noFog = tab:AddToggle({
    Name = "No Fog",
    Default = false,
    Callback = function(v)
        PX.NO_FOG = v
        if v then PX.enableNoFog() else PX.restoreNoFog() end
    end
})

PX.section(tab, "Weather", [[Disable Weather: clears rain, storms, fog, lightning and wind on your screen only — snaps the sky to clear and keeps it there. Everyone else still sees the real weather. Turn it off to get the real weather back.]])
ui.noWeather = tab:AddToggle({
    Name = "Disable Weather",
    Default = false,
    Callback = function(v)
        PX.NO_WEATHER = v
        PX.applyNoWeather(v)
    end
})

PX.section(tab, "Time of Day", [[Changes the time of day on your screen only. Everyone else still sees the real time.

Custom Time: turns it on.
Hour: which hour to show.
Quick Set: jump straight to a common time instead of dragging the slider.]])
ui.customTime = tab:AddToggle({
    Name = "Custom Time",
    Default = false,
    Callback = function(v) PX.setCustomTime(v) end
})
ui.timeHour = tab:AddSlider({
    Name = "Hour",
    Min = 0, Max = 24, Default = 12,
    -- Re-light on every change: the hour decides which preset is applied, so moving the slider
    -- across a boundary (Sunrise/Day/Sunset) has to re-run the transition, not just move the sun.
    Callback = function(v) PX.customTimeHour = v; PX.refreshCustomTime() end
})
tab:AddDropdown({
    Name = "Quick Set",
    Items = { "Sunrise", "Day", "Sunset", "Night" },
    Default = "Day",
    Callback = function(v)
        local h = ({ Sunrise = 6, Day = 13, Sunset = 18, Night = 0 })[v] or 12
        PX.customTimeHour = h
        pcall(function() if ui.timeHour and ui.timeHour.Set then ui.timeHour:Set(h) end end)
        pcall(function() if ui.customTime and ui.customTime.Set then ui.customTime:Set(true) end end)
        PX.setCustomTime(true)
        PX.refreshCustomTime()
    end
})
PX.section(tab, "Fossil ESP", [[Small Fossils: labels small fossils.
Medium Fossils: labels medium fossils.
Large Fossils: labels large fossils.]])
ui.fossilS = tab:AddToggle({ Name = "Small Fossils", Default = false, Callback = function(v) PX.FOSSIL_SMALL = v; refreshWorldESP() end })
ui.fossilDistS = tab:AddSlider({ Name = "Small Fossil Distance", Min = 100, Max = 10000, Default = 1500, Callback = function(v) PX.FOSSIL_DIST_SMALL = v; refreshWorldESP() end })
ui.fossilM = tab:AddToggle({ Name = "Medium Fossils", Default = false, Callback = function(v) PX.FOSSIL_MEDIUM = v; refreshWorldESP() end })
ui.fossilDistM = tab:AddSlider({ Name = "Medium Fossil Distance", Min = 100, Max = 10000, Default = 3000, Callback = function(v) PX.FOSSIL_DIST_MEDIUM = v; refreshWorldESP() end })
ui.fossilL = tab:AddToggle({ Name = "Large Fossils", Default = false, Callback = function(v) PX.FOSSIL_LARGE = v; refreshWorldESP() end })
ui.fossilDistL = tab:AddSlider({ Name = "Large Fossil Distance", Min = 100, Max = 10000, Default = 5000, Callback = function(v) PX.FOSSIL_DIST_LARGE = v; refreshWorldESP() end })
PX.section(tab, "Vegetation ESP", [[Labels trees and plants you can eat.

Vegetation ESP: turns it on.
Only My Diet: only label plants your dino can eat. Turn this off if you are using Force Eat, which ignores diet anyway.
Hide Eaten Plants: stop labelling plants that have already been stripped.
Vegetation Distance: how far away plants are still labelled.
Max Labels: the most labels drawn at once. This is what protects your frame rate - raise it carefully, there are a lot of plants.]])
ui.vegESP = tab:AddToggle({
    Name = "Vegetation ESP",
    Default = false,
    Callback = function(v)
        PX.VEG_ESP = v
        if not v then PX.vegHideAll() end
    end
})
ui.vegDietOnly = tab:AddToggle({
    Name = "Only My Diet",
    Default = false,
    Callback = function(v) PX.VEG_DIET_ONLY = v end
})
ui.vegHideEaten = tab:AddToggle({
    Name = "Hide Eaten Plants",
    Default = false,
    Callback = function(v) PX.VEG_HIDE_EATEN = v end
})
ui.vegDist = tab:AddSlider({
    Name = "Vegetation Distance",
    Min = 100, Max = 5000, Default = 1500,
    Callback = function(v) PX.VEG_DISTANCE = v end
})
ui.vegMax = tab:AddSlider({
    Name = "Max Labels",
    Min = 10, Max = 120, Default = 40,
    Callback = function(v)
        -- Retire any labels above the new cap instead of leaving them frozen on old plants.
        if v < PX.VEG_MAX then
            for i = v + 1, PX.VEG_MAX do
                local e = PX.vegPool[i]
                if e then pcall(function() e.bb.Enabled = false; e.bb.Adornee = nil end) end
            end
        end
        PX.VEG_MAX = v
    end
})


PX.section(tab, "Clay Deposit ESP", [[Show Clay Deposits: marks clay deposits that boost immunity.
Clay Distance: how far away they are still labelled.
Clay deposits spawn in specific areas (bath/mud zones). Walk to one and eat to raise immunity.]])
ui.clay = tab:AddToggle({ Name = "Show Clay Deposits", Default = false, Callback = function(v) PX.CLAY_ESP = v; refreshWorldESP() end })
ui.clayDist = tab:AddSlider({ Name = "Clay Distance", Min = 100, Max = 10000, Default = 5000, Callback = function(v) PX.CLAY_DISTANCE = v; if PX.CLAY_ESP then refreshWorldESP() end end })

PX.section(tab, "Minimap Dots", [[Minimap: puts dots on the game's minimap and big map.
Players on Minimap: green dots for other players.
Corpses on Minimap: red dots for corpses.
Fossils on Minimap: grey dots for fossils.]])
ui.mmap = tab:AddToggle({
    Name = "Minimap",
    Default = false,
    Callback = function(v) PX.MMAP_ON = v end
})
ui.mmapPlayers = tab:AddToggle({
    Name = "Players on Minimap",
    Default = true,
    Callback = function(v) PX.MMAP_PLAYERS = v; if not v then PX.mmapCollect() end end
})
ui.mmapCorpses = tab:AddToggle({
    Name = "Corpses on Minimap",
    Default = true,
    Callback = function(v) PX.MMAP_CORPSES = v; if not v then PX.mmapCollect() end end
})
ui.mmapFossils = tab:AddToggle({
    Name = "Fossils on Minimap",
    Default = true,
    Callback = function(v) PX.MMAP_FOSSILS = v; if not v then PX.mmapCollect() end end
})

-- ============ RENDER : Mod Check ============
tab = patchTabNotify(renderRoot:AddSubTab({Name = "Mod Check"}))
PX.section(tab, "Admin Detection", [[Mod Check: warns you when a game admin joins your server. It checks their group rank, so an alt account still sets it off.
Auto Leave: disconnects you automatically as soon as one is detected.]])
ui.modCheck = tab:AddToggle({
    Name = "Mod Check",
    Default = false,
    Callback = function(v) PX.MOD_CHECK = v; PX.modCheckRefresh() end
})
ui.modKick = tab:AddToggle({
    Name = "Auto Leave",
    Default = false,
    Callback = function(v) PX.MOD_KICK = v end
})

-- ═══════════════════════════════════════
-- MOD CHECK SYSTEM
-- ═══════════════════════════════════════
-- Detects admins/mods by group rank. The game's CreatorId gives the group (if group-owned) or
-- user id. We check every player's rank in that group — anyone >= MOD_MIN_RANK is flagged.
-- Alert GUI: a persistent list in the top-right showing detected admin names.
-- ESP tag: the ESP NameLabel gets a red "ADMIN" prefix for flagged players.
do
    PX.modAdmins = setmetatable({}, { __mode = "k" })
    PX.modGroupId = nil
    PX.modAlertGui = nil
    PX.modAlertFrame = nil
    PX.modAlertLabels = {}

    local function getGroupId()
        if PX.modGroupId then return PX.modGroupId end
        local ok, ctype = pcall(function() return game.CreatorType end)
        if ok and ctype == Enum.CreatorType.Group then
            PX.modGroupId = game.CreatorId
        else
            PX.modGroupId = game.CreatorId
        end
        return PX.modGroupId
    end

    local function isAdmin(player)
        local gid = getGroupId()
        if not gid or gid == 0 then return false end
        local ok, role = pcall(function() return player:GetRoleInGroup(gid) end)
        if not ok or type(role) ~= "string" then return false end
        local lower = string.lower(role)
        for _, kw in ipairs(PX.MOD_ADMIN_KEYWORDS) do
            if string.find(lower, kw, 1, true) then
                return true, role
            end
        end
        return false
    end

    local function ensureAlertGui()
        if PX.modAlertGui and PX.modAlertGui.Parent then return end
        local g = Instance.new("ScreenGui")
        g.Name = "EazyCheatsModAlert"; g.ResetOnSpawn = false; g.DisplayOrder = 99999
        g.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        pcall(function() g.Parent = game:GetService("CoreGui") end)
        if not g.Parent then g.Parent = LocalPlayer:WaitForChild("PlayerGui") end
        PX.modAlertGui = g

        local f = Instance.new("Frame")
        f.Name = "AdminList"; f.Size = UDim2.new(0, 260, 0, 300)
        f.Position = UDim2.new(0, 10, 0, 50)
        f.BackgroundTransparency = 1; f.Parent = g

        local ly = Instance.new("UIListLayout")
        ly.FillDirection = Enum.FillDirection.Vertical
        ly.HorizontalAlignment = Enum.HorizontalAlignment.Left
        ly.SortOrder = Enum.SortOrder.LayoutOrder
        ly.Padding = UDim.new(0, 4); ly.Parent = f

        PX.modAlertFrame = f
    end

    local function refreshAlertGui()
        if not PX.modAlertFrame then return end
        for _, lbl in pairs(PX.modAlertLabels) do
            pcall(function() lbl:Destroy() end)
        end
        PX.modAlertLabels = {}
        if not PX.MOD_CHECK then
            if PX.modAlertGui then PX.modAlertGui.Enabled = false end
            return
        end
        local order = 0
        for player, role in pairs(PX.modAdmins) do
            if player and player.Parent then
                order = order + 1
                local roleTag = (type(role) == "string") and string.upper(role) or "ADMIN"
                local lbl = Instance.new("TextLabel")
                lbl.Name = "Admin_" .. player.Name
                lbl.LayoutOrder = order
                lbl.Size = UDim2.new(1, 0, 0, 22)
                lbl.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
                lbl.BackgroundTransparency = 0.3
                lbl.TextColor3 = Color3.fromRGB(255, 50, 50)
                lbl.TextStrokeTransparency = 0
                lbl.TextStrokeColor3 = Color3.new(0, 0, 0)
                lbl.Font = Enum.Font.GothamBold
                lbl.TextSize = 15
                lbl.TextXAlignment = Enum.TextXAlignment.Left
                lbl.Text = roleTag .. ": " .. player.DisplayName .. " (@" .. player.Name .. ")"
                Instance.new("UICorner", lbl).CornerRadius = UDim.new(0, 4)
                lbl.Parent = PX.modAlertFrame
                PX.modAlertLabels[player] = lbl
            end
        end
        if PX.modAlertGui then PX.modAlertGui.Enabled = order > 0 end
    end

    local function checkPlayer(player)
        if player == LocalPlayer then return end
        if PX.UNLOADED then return end
        task.spawn(function()
            local admin, role = isAdmin(player)
            if admin then
                PX.modAdmins[player] = role or "Admin"
                if PX.MOD_KICK or (PX.AFK_FARM and PX.AFK_FARM_ADMIN_KICK) or (PX.LEGIT_FARM and PX.LF_ADMIN_KICK) then
                    if not (PX.rejoinLeave and PX.rejoinLeave("admin in the server: " .. player.DisplayName)) then
                        pcall(PX.leaveNote, "admin detected", false)
                        pcall(function() LocalPlayer:Kick("[EazyCheats] Admin detected: " .. player.DisplayName) end)
                    end
                    return
                end
                if PX.MOD_CHECK then
                    ensureAlertGui()
                    refreshAlertGui()
                    pcall(function()
                        Hub:Notify(string.upper(role or "ADMIN") .. ": " .. player.DisplayName .. " (@" .. player.Name .. ")", 8)
                    end)
                end
            end
        end)
    end

    -- AFK Farm's Admin Kick also covers admins who were already here when the farm started.
    function PX.adminKickSweep()
        for _, player in ipairs(Players:GetPlayers()) do checkPlayer(player) end
    end

    function PX.modCheckRefresh()
        if PX.MOD_CHECK then
            ensureAlertGui()
            for _, player in ipairs(Players:GetPlayers()) do
                if not PX.modAdmins[player] then
                    checkPlayer(player)
                end
            end
            refreshAlertGui()
        else
            refreshAlertGui()
        end
    end

    -- The SCAN / JOIN / LEFT console lines that used to live here are gone. They were development
    -- logging: every player in the server got a "[EazyCheats] SCAN: name | Rank | Role" line at
    -- load and another on every join, which filled the console. Worse, producing them meant a
    -- GetRankInGroup and GetRoleInGroup web call PER PLAYER purely to print a string, whether or
    -- not Mod Check was even switched on.
    --
    -- Nothing was lost by removing them. Admin detection runs through checkPlayer below, which
    -- does its own lookup and only when PX.MOD_CHECK, PX.MOD_KICK or AFK Farm's Admin Kick asks for it.

    table.insert(allConnections, Players.PlayerAdded:Connect(function(player)
        if PX.MOD_CHECK or PX.MOD_KICK or (PX.AFK_FARM and PX.AFK_FARM_ADMIN_KICK)
            or (PX.LEGIT_FARM and PX.LF_ADMIN_KICK) then
            checkPlayer(player)
        end
    end))
    table.insert(allConnections, Players.PlayerRemoving:Connect(function(player)
        if PX.modAdmins[player] then
            PX.modAdmins[player] = nil
            refreshAlertGui()
        end
    end))

    function PX.cleanupModCheck()
        PX.modAdmins = setmetatable({}, { __mode = "k" })
        if PX.modAlertGui then pcall(function() PX.modAlertGui:Destroy() end) end
        PX.modAlertGui = nil
        PX.modAlertFrame = nil
        PX.modAlertLabels = {}
    end
end

 function PX.unloadScript()
    PX.UNLOADED = true
    pcall(function() PX.CARRY_CORPSE = false; PX.carryApply(false) end)   -- the game's grab code and range go back
    pcall(function() if PX.lfRestoreInput then PX.lfRestoreInput() end end)   -- the tabbed-out input block goes back
    PX.AUTO_GAIT = nil
    pcall(function() if PX.autoGaitStop then PX.autoGaitStop() end end)
    pcall(function() if PX.mvCleanup then PX.mvCleanup() end end)   -- the shared mover's Run hold and platform
    pcall(PX.sweepOwnGuis)   -- first, while this thread can still reach them (see PX.sweepOwnGuis)
    PX.MOD_CHECK = false
    PX.MOD_KICK = false
    PX.cleanupModCheck()
    PX.FULLBRIGHT = false
    pcall(function() RunService:UnbindFromRenderStep("PX_Fullbright") end)
    pcall(function() if PX.restoreFullbright then PX.restoreFullbright() end end)
    PX.AFK_FARM = false              -- stop AFK Farm flight + release walk key
    PX.afkStopWalk()
    if PX.afkColliders then
        for p in pairs(PX.afkColliders) do
            if p.Parent then pcall(function() p.CanCollide = true end) end
        end
        PX.afkColliders, PX.afkCollidersChar = nil, nil
    end
    if PX.afkWasOn then
        PX.afkWasOn = false
        pcall(function() LocalPlayer.Character:SetAttribute("Teleporting", nil) end)
    end
    -- Clean up safety state (advance won't run because UNLOADED is set)
    if PX.afkSafetyState then
        if PX.afkSafetyState == "resting" then
            PX.pressRest()
        end
        if PX.afkSafetyPlatform then pcall(function() PX.afkSafetyPlatform:Destroy() end); PX.afkSafetyPlatform = nil end
        pcall(function()
            local r = PX.getLocalPhysicsRoot()
            if r then r.Anchored = false end
        end)
        PX.afkSafetyState = nil
    end
    PX.AUTO_SWITCH, PX.AS_BUSY, PX.FARM_TIMER = false, false, false
    PX.LEGIT_FARM = false            -- release keys, restore collision, clear Teleporting, stop steering
    pcall(function() RunService:UnbindFromRenderStep("PX_LegitSteer") end)
    pcall(function()   -- give the Walking state its own AdjustDirection back
        local w = PX.lfWalkState
        if w then w.mod.AdjustDirection = w.orig; PX.lfWalkState = nil end
    end)
    pcall(function() if PX.lfWasOn and PX.lfStop then PX.lfStop(false) end end)
    pcall(function()   -- Rejoin: unloading means you stopped on purpose, so nothing is turned back on
        local handoff = getgenv and getgenv().EazyCheats_Handoff   -- ...but a reload is not that
        if PX.REJOIN_OK and PX.REJOIN and not handoff then
            local st = PX.rejoinRead()
            st.farms, st.pending = {}, nil
            PX.rejoinWrite(st)
        end
    end)
    PX.NO_FOG = false
    pcall(function() RunService:UnbindFromRenderStep("PX_NoFog") end)
    pcall(function() if PX.restoreNoFog then PX.restoreNoFog() end end)
    -- Hand the controller's own methods back - in a thread of its own: the weather controller call
    -- leaves the calling thread unable to reach gethui() or destroy CoreGui objects.
    task.spawn(function() pcall(PX.setCustomTime, false) end)
    PX.customTime = false
    pcall(function() RunService:UnbindFromRenderStep("PX_CustomTime") end)
    PX.autoSpawnCleanup()
    PX.stopAutoGrow()
    if PX.FPS_SAVER then PX.FPS_SAVER = false; pcall(function() if PX.applyFpsSaver then PX.applyFpsSaver(false) end end) end
    PX.ESP_ENABLED = false
    PX.CHAMS_ENABLED = false
    PX.TRACERS_ENABLED = false
    PX.CORPSE_ESP = false
    PX.FOSSIL_SMALL = false
    PX.FOSSIL_MEDIUM = false
    PX.FOSSIL_LARGE = false
    PX.MEAT_ESP = false
    PX.CLAY_ESP = false
    PX.VEG_ESP = false
    pcall(function() if PX.vegFolder then PX.vegFolder:Destroy() end end)
    PX.vegFolder = nil
    PX.vegPool = {}
    PX.HITBOX_EXPANDER = false
    PX.HITBOX_VISUALIZE = false
    PX.resetAllHitboxes()
    PX.REACH_ENABLED = false
    PX.resetLocalReach()
    -- Hand every part we made unqueryable back to the game (local writes, but tidy up).
    pcall(function()
        for part in pairs(PX.hbMaskT or {}) do
            if part and part.Parent then part.CanQuery = true end
        end
        PX.hbMaskT = setmetatable({}, { __mode = "k" })
    end)
    PX.AUTO_WATER = false
    PX.NO_ATK_CD = false
    PX.NO_ATK_COOLDOWN = false
    PX.restoreAttackSpeed()
    PX.UNLIMITED_ZOOM = false
    PX.restoreZoom()
    PX.FOV_ENABLED = false        -- put the camera back to the game's own field of view
    PX.restoreFOV()
    PX.BIOME_TRAVEL = false       -- stops a trip mid-glide instead of leaving it driving the root
    PX.NO_BLUR = false            -- hand the game back any blur effects we switched off
    pcall(PX.restoreBlur)
    if PX.NO_WEATHER then PX.NO_WEATHER = false; pcall(function() PX.applyNoWeather(false) end) end   -- hand the real weather back
    PX.SAVE_DINO_ACTIVE = false
    stopSavePin()
    destroySavePlatform()
    for player, _ in pairs(PX.espCache) do
        PX.destroyESP(player)
    end
    for obj, bb in pairs(worldESPCache) do
        pcall(function() bb:Destroy() end)
    end
    worldESPCache = {}
    for _, conn in ipairs(allConnections) do
        pcall(function() conn:Disconnect() end)
    end
    allConnections = {}
    pcall(function() if PX.mobGui then PX.mobGui:Destroy() end end)   -- mobile touch pads
    -- Minimap dots live inside the GAME's map GUI, not ours, so the EazyCheats* name sweep below
    -- will never reach them. Unload without this and the dots stay on the map forever.
    pcall(function() PX.mmapDestroyPool() end)
    pcall(function() Hub:Destroy() end)
    pcall(function() indicatorGui:Destroy() end)
    -- Force remove any leftover GUI. One list covering every name this hub creates, checked in
    -- both places a GUI can end up — the two sweeps used to name only three of them, so the Stats
    -- Card and the Vegetation ESP folder relied on their own loops noticing and tidying up.
    -- The EZ menu, mobile pads and key popup parent to gethui(), NOT CoreGui. A leftover copy of any
    -- of them is why Unload could take two clicks. Swept at the top already; again for anything since.
    pcall(PX.sweepOwnGuis)
    pcall(function()
        for _, obj in workspace:GetChildren() do
            if obj.Name == "EazyCheatsCircle" or obj.Name == "EazyCheatsPath" then
                obj:Destroy()
            end
        end
    end)
    -- Every render-step binding, by name. These are NOT in allConnections — BindToRenderStep is
    -- keyed by string rather than returning a connection — so disconnecting the list above leaves
    -- them running. Unbinding a name that was never bound is harmless, so they're all listed
    -- unconditionally rather than tracked.
    pcall(function()
        for _, name in ipairs({ "PX_CustomTime", "PX_Fullbright", "PX_NoFog",
                               "EZ_UnlimitedZoom", "EZ_UnlimitedZoomFix", "PX_FossilCam" }) do
            pcall(function() RunService:UnbindFromRenderStep(name) end)
        end
    end)
    -- Drop the handle last, so a script error part-way through this teardown still leaves the next
    -- load able to find us and finish the job.
    pcall(function()
        local g = getgenv and getgenv()
        if g then g.EazyCheats_Unload = nil end
    end)
end

-- Publish this instance's teardown so the NEXT execution can kill it before building itself. This
-- is the other half of the previous-instance guard near the top of the file.
pcall(function()
    local g = getgenv and getgenv()
    if g then
        g.EazyCheats_Unload = PX.unloadScript
        g.EazyCheats_Unload_Job = game.JobId   -- EZ Auto Launcher ignores a handle left from another server
        g.EazyCheats_Unload_State = nil        -- in a server: no start-screen join going on
    end
end)
-- Unloading lives on the GUI's built-in Settings tab now, so Main no longer
-- carries a second copy of the button. Settings > Unload EazyCheats fires this
-- hook and then destroys the menu — the same full teardown as before.
Hub.onUnload = PX.unloadScript

-- ============ CONFIG SYSTEM (helpers) ============
PX.CONFIG_FOLDER = "EazyCheats_Configs"
PX.AUTO_LOAD_FILE = PX.CONFIG_FOLDER .. "/autoload.txt"
pcall(function() if not isfolder(PX.CONFIG_FOLDER) then makefolder(PX.CONFIG_FOLDER) end end)

local HttpService = game:GetService("HttpService")

 function PX.getConfigData()
    return {
        ESP_ENABLED = PX.ESP_ENABLED,
        CHAMS_ENABLED = PX.CHAMS_ENABLED,
        TRACERS_ENABLED = PX.TRACERS_ENABLED,
        SHOW_NAME = PX.SHOW_NAME,
        SHOW_DINO = PX.SHOW_DINO,
        SHOW_STAGE = PX.SHOW_STAGE,
        SHOW_GENDER = PX.SHOW_GENDER,
        SHOW_HEALTH = PX.SHOW_HEALTH,
        SHOW_STAMINA = PX.SHOW_STAMINA,
        SHOW_FOOD_BAR = PX.SHOW_FOOD_BAR,
        SHOW_FOOD_NUM = PX.SHOW_FOOD_NUM,
        SHOW_WATER_BAR = PX.SHOW_WATER_BAR,
        SHOW_WATER_NUM = PX.SHOW_WATER_NUM,
        SHOW_INFECT_BAR = PX.SHOW_INFECT_BAR,
        SHOW_INFECT_NUM = PX.SHOW_INFECT_NUM,
        SHOW_INFECTED = PX.SHOW_INFECTED,
        SHOW_WEIGHT = PX.SHOW_WEIGHT,
        BLEED_ESP = PX.BLEED_ESP,
        PACK_ESP = PX.PACK_ESP,
        PACK_LEADER_ESP = PX.PACK_LEADER_ESP,
        SHOW_DISTANCE = PX.SHOW_DISTANCE,
        TEXT_HIGHLIGHT = PX.TEXT_HIGHLIGHT,
        TEXT_SIZE = PX.TEXT_SIZE,
        HEALTH_BAR_HEIGHT = PX.HEALTH_BAR_HEIGHT,
        HEALTH_BAR_WIDTH = PX.HEALTH_BAR_WIDTH,
        STAM_BAR_HEIGHT = PX.STAM_BAR_HEIGHT,
        STAM_BAR_WIDTH = PX.STAM_BAR_WIDTH,
        ESP_DISTANCE = PX.ESP_DISTANCE,
        CHAMS_FILL_TRANSPARENCY = PX.CHAMS_FILL_TRANSPARENCY,
        CHAMS_OUTLINE_TRANSPARENCY = PX.CHAMS_OUTLINE_TRANSPARENCY,
        CORPSE_ESP = PX.CORPSE_ESP,
        CORPSE_INF_ESP = PX.CORPSE_INF_ESP,
        CORPSE_DISTANCE = PX.CORPSE_DISTANCE,
        WORLD_TEXT_SIZE = PX.WORLD_TEXT_SIZE,
        STATS_CARD = PX.STATS_CARD, SC_GROWTH = PX.SC_GROWTH, SC_MASS = PX.SC_MASS, SC_WEIGHT = PX.SC_WEIGHT,
        SC_TIMER = PX.SC_TIMER, SC_NUTRITION = PX.SC_NUTRITION, SC_WELLBEING = PX.SC_WELLBEING,
        SC_STAGE_TIMER = PX.SC_STAGE_TIMER,
        SC_DRAG = PX.SC_DRAG,
        SC_NAME = PX.SC_NAME,
        SC_HIDE_WITH_MENU = PX.SC_HIDE_WITH_MENU,
        SC_POS_XS = PX.SC_POS_XS, SC_POS_XO = PX.SC_POS_XO,
        SC_POS_YS = PX.SC_POS_YS, SC_POS_YO = PX.SC_POS_YO,
        FISH_ESP = PX.FISH_ESP,
        FOSSIL_SMALL = PX.FOSSIL_SMALL,
        FOSSIL_MEDIUM = PX.FOSSIL_MEDIUM,
        FOSSIL_LARGE = PX.FOSSIL_LARGE,
        FOSSIL_DIST_SMALL = PX.FOSSIL_DIST_SMALL,
        FOSSIL_DIST_MEDIUM = PX.FOSSIL_DIST_MEDIUM,
        FOSSIL_DIST_LARGE = PX.FOSSIL_DIST_LARGE,
        VEG_ESP = PX.VEG_ESP,
        VEG_DIET_ONLY = PX.VEG_DIET_ONLY,
        VEG_HIDE_EATEN = PX.VEG_HIDE_EATEN,
        VEG_DISTANCE = PX.VEG_DISTANCE,
        VEG_MAX = PX.VEG_MAX,
        MEAT_ESP = PX.MEAT_ESP,
        MEAT_DISTANCE = PX.MEAT_DISTANCE,
        CLAY_ESP = PX.CLAY_ESP,
        CLAY_DISTANCE = PX.CLAY_DISTANCE,
        MMAP_ON = PX.MMAP_ON,
        MMAP_PLAYERS = PX.MMAP_PLAYERS,
        MMAP_CORPSES = PX.MMAP_CORPSES,
        MMAP_FOSSILS = PX.MMAP_FOSSILS,
        ANTI_BLACKSCREEN = PX.ANTI_BLACKSCREEN,
        NO_FOG = PX.NO_FOG,
        NO_BLUR = PX.NO_BLUR,
        NO_WEATHER = PX.NO_WEATHER,
        FULLBRIGHT = PX.FULLBRIGHT,
        CUSTOM_TIME = PX.customTime,
        CUSTOM_TIME_HOUR = PX.customTimeHour,
        MOB_SHOW_TURN = PX.MOB_SHOW_TURN,
        AUTO_GROW = PX.AUTO_GROW,
        HITBOX_EXPANDER = PX.HITBOX_EXPANDER,
        HITBOX_VISUALIZE = PX.HITBOX_VISUALIZE,
        HITBOX_MULTIPLIER = PX.HITBOX_MULTIPLIER,
        HITBOX_VIS_TRANSPARENCY = PX.HITBOX_VIS_TRANSPARENCY,
        HG_Head = PX.HITBOX_GROUPS.Head,
        HG_Jaw = PX.HITBOX_GROUPS.Jaw,
        HG_Neck = PX.HITBOX_GROUPS.Neck,
        HG_Body = PX.HITBOX_GROUPS.Body,
        HG_Arm = PX.HITBOX_GROUPS.Arm,
        HG_Leg = PX.HITBOX_GROUPS.Leg,
        HG_TailBase = PX.HITBOX_GROUPS.TailBase,
        HG_TailMid = PX.HITBOX_GROUPS.TailMid,
        HG_TailTip = PX.HITBOX_GROUPS.TailTip,
        HG_Thagomizer = PX.HITBOX_GROUPS.Thagomizer,
        REACH_ENABLED = PX.REACH_ENABLED,
        REACH_MULTIPLIER = PX.REACH_MULTIPLIER,
        REACH_VISUALIZE = PX.REACH_VISUALIZE,
        REACH_VIS_TRANSPARENCY = PX.REACH_VIS_TRANSPARENCY,
        REACH_Head = PX.REACH_GROUPS.Head,
        REACH_Jaw = PX.REACH_GROUPS.Jaw,
        REACH_Arm = PX.REACH_GROUPS.Arm,
        REACH_Leg = PX.REACH_GROUPS.Leg,
        REACH_TailBase = PX.REACH_GROUPS.TailBase,
        REACH_TailMid = PX.REACH_GROUPS.TailMid,
        REACH_TailTip = PX.REACH_GROUPS.TailTip,
        REACH_Thagomizer = PX.REACH_GROUPS.Thagomizer,
        AUTO_WATER = PX.AUTO_WATER,
        FORCE_EAT = PX.FORCE_EAT,
        FAST_EAT = PX.FAST_EAT,
        AUTO_CLEAN = PX.AUTO_CLEAN,
        INF_OXYGEN = PX.INF_OXYGEN,
        EAT_WHEN_HUNGRY = PX.EAT_WHEN_HUNGRY,
        LEAVE_SCRAPS = PX.LEAVE_SCRAPS,
        CARRY_CORPSE = PX.CARRY_CORPSE,
        NO_FALL_DAMAGE = PX.NO_FALL_DAMAGE,
        FPS_SAVER = PX.FPS_SAVER,
        SKIN_SELECTED = PX.SKIN_WANTED or PX.SKIN_SELECTED,   -- the wanted skin, even on a dino without it
        -- Movement speeds are deliberately NOT saved: Fly, AFK Farm and Fossil Farm have no speed settings any
        -- more (the shared mover goes as fast as the server allows), and older configs' FLY_SPEED /
        -- AFK_FARM_SPEED / FOSSIL_FARM_SPEED / governor keys are ignored on load.
        -- Auto Fly's tuning persists, but deliberately NOT the toggle: auto-loading straight
        -- into flight on join would teleport you off your spawn before you could react.
        AUTO_FLY_SPEED = PX.AUTO_FLY_SPEED,
        AUTO_FLY_RADIUS = PX.AUTO_FLY_RADIUS,
        AUTO_FLY_DRIFT = PX.AUTO_FLY_DRIFT,
        AUTO_FLY_ALT = PX.AUTO_FLY_ALT,
        -- Anti AFK DOES persist: unlike Auto Fly it moves nothing, so restoring it on load
        -- is harmless, and it's the setting you'd be most annoyed to lose before going AFK.
        ANTI_AFK = PX.ANTI_AFK,
        -- The farm switches persist too, so a saved farm comes back. They never start at the deploy
        -- screen or the instant you join: PX.cfgFarms turns them on only once a dino is alive, and at
        -- start-up Rejoin's fresher record wins. Fly and Auto Fly still do not persist - flight on join
        -- is the one that moves you before you can react.
        AUTO_SWITCH = PX.AUTO_SWITCH, AFK_FARM = PX.AFK_FARM, LEGIT_FARM = PX.LEGIT_FARM,
        FOSSIL_FARM = PX.FOSSIL_FARM, FARM_TIMER = PX.FARM_TIMER,
        AFK_FARM_AVOID = PX.AFK_FARM_AVOID,
        AFK_FARM_WALK = PX.AFK_FARM_WALK,
        AFK_FARM_SAFETY = PX.AFK_FARM_SAFETY,
        AFK_FARM_ADMIN_KICK = PX.AFK_FARM_ADMIN_KICK,
        AFK_FARM_FLEE = PX.AFK_FARM_FLEE,
        AFK_FARM_UNSTUCK = PX.AFK_FARM_UNSTUCK,
        -- Legit Farm tuning persists (its toggle is with the farm switches above).
        LF_AVOID = PX.LF_AVOID,
        LF_MAX_DIST = PX.LF_MAX_DIST,
        LF_SCRAPS = PX.LF_SCRAPS,
        LF_CIRCLE = PX.LF_CIRCLE,
        LF_FLEE = PX.LF_FLEE,
        LF_TABOUT = PX.LF_TABOUT,
        AUTO_GAIT = PX.AUTO_GAIT,
        LF_UNSTUCK = PX.LF_UNSTUCK,
        LF_REST = PX.LF_REST,
        LF_ADMIN_KICK = PX.LF_ADMIN_KICK,
        LF_FLYAWAY = PX.LF_FLYAWAY,
        LF_FLYAWAY_RADIUS = PX.LF_FLYAWAY_RADIUS,
        -- Auto Switch list persists (its toggle is with the farm switches above).
        AS_SLOT1 = PX.AS_SLOTS[1], AS_SLOT2 = PX.AS_SLOTS[2], AS_SLOT3 = PX.AS_SLOTS[3],
        AS_SLOT4 = PX.AS_SLOTS[4], AS_SLOT5 = PX.AS_SLOTS[5], AS_SLOT6 = PX.AS_SLOTS[6],
        AS_GENDER = PX.AS_GENDER,
        AS_AUTOBUY = PX.AS_AUTOBUY,
        AS_AUTO_ORDER = PX.AS_AUTO_ORDER,
        FT_MINUTES = PX.FT_MINUTES,
        -- Same reasoning as Auto Fly: the tuning persists, the toggle deliberately does not.
        -- Auto-loading into a warp would yank you across the map before the menu even drew.
        TP_SOLID = PX.TP_SOLID,
        TP_CHAIN = PX.TP_CHAIN,
        AUTO_SAVE_PCT = PX.AUTO_SAVE_PCT,
        AUTO_SAVE = PX.AUTO_SAVE,
        AUTO_SAVE_BLEED = PX.AUTO_SAVE_BLEED,
        -- Depth / height / allow-rest are fixed constants now, so there is nothing to persist.
        SHOW_INDICATORS = PX.SHOW_INDICATORS,
        MOD_CHECK = PX.MOD_CHECK,
        MOD_KICK = PX.MOD_KICK,
        UNLIMITED_ZOOM = PX.UNLIMITED_ZOOM,
        FOV_ENABLED = PX.FOV_ENABLED,
        FOV_VALUE = PX.FOV_VALUE,
        SILENT_AIM = PX.SILENT_AIM,
        NO_ATK_CD = PX.NO_ATK_CD,
        NO_ATK_COOLDOWN = PX.NO_ATK_COOLDOWN,
        ATTACK_SPEED = PX.ATTACK_SPEED,
        TURN_SPEED = PX.TURN_SPEED,
        QUICK_TURN = PX.QUICK_TURN,
        INSTA_TURN_KEY = (instaTurnKeybind and instaTurnKeybind.Key and instaTurnKeybind.Key ~= Enum.KeyCode.Unknown) and instaTurnKeybind.Key.Name or nil,
        SA_Head = PX.SILENT_GROUPS.Head,
        SA_Jaw = PX.SILENT_GROUPS.Jaw,
        SA_Neck = PX.SILENT_GROUPS.Neck,
        SA_Body = PX.SILENT_GROUPS.Body,
        SA_Arm = PX.SILENT_GROUPS.Arm,
        SA_Leg = PX.SILENT_GROUPS.Leg,
        SA_TailBase = PX.SILENT_GROUPS.TailBase,
        SA_TailMid = PX.SILENT_GROUPS.TailMid,
        SA_TailTip = PX.SILENT_GROUPS.TailTip,
        SA_Thagomizer = PX.SILENT_GROUPS.Thagomizer,
        KEYBINDS = (function()
            local kb = {}
            for name, obj in pairs(PX.ALL_TOGGLES) do
                if obj and obj.Key and obj.Key ~= Enum.KeyCode.Unknown then
                    kb[name] = obj.Key.Name
                end
            end
            return kb
        end)(),
    }
end

 function PX.applyConfigData(cfg)
    -- One bad row must not stop the rest, or leave toasts muted and Rejoin waiting: the body runs
    -- protected and the flags below are always put back.
    PX.SUPPRESS_TOGGLE_NOTIFY = true
    local ok, err = pcall(PX.applyConfigBody, cfg)
    if not ok then warn("[EazyCheats] Config apply error: " .. tostring(err)) end
    PX.SUPPRESS_TOGGLE_NOTIFY = false   -- re-enable per-toggle toasts after the config is applied
    PX.cfgApplied = true                -- Rejoin's resume waits for this (Auto Switch order etc.)
    return ok
end
function PX.applyConfigBody(cfg)
    -- Suppress per-toggle toasts while applying a whole config (avoids a wall of toasts).
    PX.SUPPRESS_TOGGLE_NOTIFY = true
    local function setToggle(elem, val)
        pcall(function() if elem and val ~= nil then elem:Set(val) end end)
    end
    local function setSlider(elem, val)
        pcall(function() if elem and val ~= nil then elem:Set(val) end end)
    end
    -- Restore a part-group table from the flat per-part booleans a config stores
    -- (HG_Head, SA_Neck, REACH_Tail, ...), then refresh its dropdown. Missing
    -- keys are left alone so a config saved before a part existed still loads.
    local function setGroups(groupTable, order, cfg, prefix, dropdown)
        pcall(function()
            for _, key in ipairs(order) do
                local val = cfg[prefix .. key]
                if val ~= nil then groupTable[key] = val and true or false end
            end
            if dropdown and dropdown.Refill then dropdown.Refill() end
        end)
    end

    setToggle(PX.espToggle, cfg.ESP_ENABLED)
    setToggle(ui.chams, cfg.CHAMS_ENABLED)
    setToggle(ui.tracers, cfg.TRACERS_ENABLED)
    setToggle(ui.showName, cfg.SHOW_NAME)
    setToggle(ui.showDino, cfg.SHOW_DINO)
    setToggle(ui.showStage, cfg.SHOW_STAGE)
    setToggle(ui.showGender, cfg.SHOW_GENDER)
    setToggle(ui.showHealth, cfg.SHOW_HEALTH)
    setToggle(ui.showStamina, cfg.SHOW_STAMINA)
    if cfg.SHOW_FOOD_BAR ~= nil then setToggle(ui.foodBar, cfg.SHOW_FOOD_BAR) end
    if cfg.SHOW_FOOD_NUM ~= nil then setToggle(ui.foodNum, cfg.SHOW_FOOD_NUM) end
    if cfg.SHOW_WATER_BAR ~= nil then setToggle(ui.waterBar, cfg.SHOW_WATER_BAR) end
    if cfg.SHOW_WATER_NUM ~= nil then setToggle(ui.waterNum, cfg.SHOW_WATER_NUM) end
    if cfg.SHOW_INFECT_BAR ~= nil then setToggle(ui.infectBar, cfg.SHOW_INFECT_BAR) end
    if cfg.SHOW_INFECT_NUM ~= nil then setToggle(ui.infectNum, cfg.SHOW_INFECT_NUM) end
    if cfg.SHOW_INFECTED ~= nil then setToggle(ui.infectTag, cfg.SHOW_INFECTED) end
    setToggle(ui.showWeight, cfg.SHOW_WEIGHT)
    setToggle(ui.bleed, cfg.BLEED_ESP)
    if cfg.PACK_ESP ~= nil then setToggle(ui.packESP, cfg.PACK_ESP) end
    if cfg.PACK_LEADER_ESP ~= nil then setToggle(ui.packLeader, cfg.PACK_LEADER_ESP) end
    setToggle(ui.showDist, cfg.SHOW_DISTANCE)
    setToggle(ui.textHL, cfg.TEXT_HIGHLIGHT)
    setSlider(ui.textSize, cfg.TEXT_SIZE)
    setSlider(ui.hbHeight, cfg.HEALTH_BAR_HEIGHT)
    if cfg.HEALTH_BAR_WIDTH then
        setSlider(ui.hbWidth, math.floor(cfg.HEALTH_BAR_WIDTH * 100 + 0.5))
    end
    if cfg.STAM_BAR_HEIGHT then setSlider(ui.sbHeight, cfg.STAM_BAR_HEIGHT) end
    if cfg.STAM_BAR_WIDTH then setSlider(ui.sbWidth, math.floor(cfg.STAM_BAR_WIDTH * 100 + 0.5)) end
    setSlider(ui.espDist, cfg.ESP_DISTANCE)
    if cfg.CHAMS_FILL_TRANSPARENCY then
        setSlider(ui.chamsFill, math.floor(cfg.CHAMS_FILL_TRANSPARENCY * 100 + 0.5))
    end
    if cfg.CHAMS_OUTLINE_TRANSPARENCY then
        setSlider(ui.chamsOutline, math.floor(cfg.CHAMS_OUTLINE_TRANSPARENCY * 100 + 0.5))
    end
    setToggle(ui.corpse, cfg.CORPSE_ESP)
    if cfg.CORPSE_INF_ESP ~= nil then setToggle(ui.corpseInf, cfg.CORPSE_INF_ESP) end
    setSlider(ui.worldTextSize, cfg.WORLD_TEXT_SIZE)
    setSlider(ui.corpseDist, cfg.CORPSE_DISTANCE)
    if cfg.STATS_CARD ~= nil then setToggle(ui.statsCard, cfg.STATS_CARD) end
    if cfg.SC_GROWTH ~= nil then setToggle(ui.scGrowth, cfg.SC_GROWTH) end
    if cfg.SC_MASS ~= nil then setToggle(ui.scMass, cfg.SC_MASS) end
    if cfg.SC_WEIGHT ~= nil then setToggle(ui.scWeight, cfg.SC_WEIGHT) end
    if cfg.SC_TIMER ~= nil then setToggle(ui.scTimer, cfg.SC_TIMER) end
    if cfg.SC_STAGE_TIMER ~= nil then setToggle(ui.scStageTimer, cfg.SC_STAGE_TIMER) end
    if cfg.SC_NUTRITION ~= nil then setToggle(ui.scNutrition, cfg.SC_NUTRITION) end
    if cfg.SC_WELLBEING ~= nil then setToggle(ui.scWellbeing, cfg.SC_WELLBEING) end
    if cfg.SC_DRAG ~= nil then setToggle(ui.scDrag, cfg.SC_DRAG) end
    if cfg.SC_NAME ~= nil then setToggle(ui.scName, cfg.SC_NAME) end
    if cfg.SC_HIDE_WITH_MENU ~= nil then setToggle(ui.scHideMenu, cfg.SC_HIDE_WITH_MENU) end
    -- Restore where the card was dragged to. All four components must be present, else we'd
    -- rebuild a UDim2 from partial data and fling the card somewhere unintended.
    if PX.setStatsCardPos and cfg.SC_POS_XS and cfg.SC_POS_XO and cfg.SC_POS_YS and cfg.SC_POS_YO then
        PX.setStatsCardPos(cfg.SC_POS_XS, cfg.SC_POS_XO, cfg.SC_POS_YS, cfg.SC_POS_YO)
    end
    if cfg.FISH_ESP ~= nil then setToggle(ui.fishESP, cfg.FISH_ESP) end
    setToggle(ui.fossilS, cfg.FOSSIL_SMALL)
    setToggle(ui.fossilM, cfg.FOSSIL_MEDIUM)
    setToggle(ui.fossilL, cfg.FOSSIL_LARGE)
    setSlider(ui.fossilDistS, cfg.FOSSIL_DIST_SMALL or cfg.FOSSIL_DISTANCE)
    setSlider(ui.fossilDistM, cfg.FOSSIL_DIST_MEDIUM or cfg.FOSSIL_DISTANCE)
    setSlider(ui.fossilDistL, cfg.FOSSIL_DIST_LARGE or cfg.FOSSIL_DISTANCE)
    if cfg.VEG_DIET_ONLY ~= nil then setToggle(ui.vegDietOnly, cfg.VEG_DIET_ONLY) end
    if cfg.VEG_HIDE_EATEN ~= nil then setToggle(ui.vegHideEaten, cfg.VEG_HIDE_EATEN) end
    if cfg.VEG_DISTANCE then setSlider(ui.vegDist, cfg.VEG_DISTANCE) end
    if cfg.VEG_MAX then setSlider(ui.vegMax, cfg.VEG_MAX) end
    if cfg.VEG_ESP ~= nil then setToggle(ui.vegESP, cfg.VEG_ESP) end
    setToggle(ui.meat, cfg.MEAT_ESP)
    setSlider(ui.meatDist, cfg.MEAT_DISTANCE)
    if cfg.CLAY_ESP ~= nil then setToggle(ui.clay, cfg.CLAY_ESP) end
    if cfg.CLAY_DISTANCE then setSlider(ui.clayDist, cfg.CLAY_DISTANCE) end
    -- Guarded with ~= nil: an older saved config has no MMAP_* keys at all, and setToggle(nil)
    -- would read as "off" and quietly clear a toggle the user had on.
    if cfg.MMAP_PLAYERS ~= nil then setToggle(ui.mmapPlayers, cfg.MMAP_PLAYERS) end
    if cfg.MMAP_CORPSES ~= nil then setToggle(ui.mmapCorpses, cfg.MMAP_CORPSES) end
    if cfg.MMAP_FOSSILS ~= nil then setToggle(ui.mmapFossils, cfg.MMAP_FOSSILS) end
    if cfg.MMAP_ON ~= nil then
        setToggle(ui.mmap, cfg.MMAP_ON)
    elseif cfg.MMAP_PLAYERS or cfg.MMAP_CORPSES or cfg.MMAP_FOSSILS then
        setToggle(ui.mmap, true)   -- saved before the master switch existed: keep the dots it had on
    end
    setToggle(ui.antiBS, cfg.ANTI_BLACKSCREEN)
    if cfg.NO_FOG ~= nil then setToggle(ui.noFog, cfg.NO_FOG) end
    if cfg.NO_BLUR ~= nil then setToggle(ui.noBlur, cfg.NO_BLUR) end
    if cfg.NO_WEATHER ~= nil then setToggle(ui.noWeather, cfg.NO_WEATHER) end
    if cfg.FULLBRIGHT ~= nil then setToggle(ui.fullbright, cfg.FULLBRIGHT) end
    if cfg.CUSTOM_TIME_HOUR then setSlider(ui.timeHour, cfg.CUSTOM_TIME_HOUR) end
    if cfg.CUSTOM_TIME ~= nil then setToggle(ui.customTime, cfg.CUSTOM_TIME) end
    if cfg.MOB_SHOW_TURN ~= nil and PX.mobTurnToggle then setToggle(PX.mobTurnToggle, cfg.MOB_SHOW_TURN) end
    setToggle(ui.showModules, cfg.SHOW_INDICATORS)
    if cfg.MOD_CHECK ~= nil then setToggle(ui.modCheck, cfg.MOD_CHECK) end
    if cfg.MOD_KICK ~= nil then setToggle(ui.modKick, cfg.MOD_KICK) end
    setToggle(ui.unlimitedZoom, cfg.UNLIMITED_ZOOM)
    if cfg.FOV_VALUE then setSlider(ui.fovSlider, cfg.FOV_VALUE) end
    setToggle(ui.fovToggle, cfg.FOV_ENABLED)          -- after the slider, so it binds at the right value
    setSlider(ui.attackSpeed, cfg.ATTACK_SPEED)
    setToggle(ui.noAtkCd, cfg.NO_ATK_CD)
    setToggle(ui.noAtkCooldown, cfg.NO_ATK_COOLDOWN)
    -- Part groups are dropdowns now, but configs still store one boolean per part
    -- so older saved configs keep loading. Write the booleans, then refresh the
    -- dropdown display from them.
    setGroups(PX.SILENT_GROUPS, PX.PART_GROUP_ORDER, cfg, "SA_", ui.silentGroups)
    setSlider(ui.turnSpeed, cfg.TURN_SPEED)
    setToggle(ui.quickTurn, cfg.QUICK_TURN)
    setToggle(ui.silentAim, cfg.SILENT_AIM)          -- last, so groups are set before it engages
    if cfg.INSTA_TURN_KEY and instaTurnKeybind then
        pcall(function()
            local kc = Enum.KeyCode[cfg.INSTA_TURN_KEY]
            if kc then instaTurnKeybind:Set(kc, true) end
        end)
    end
    setToggle(PX.hitboxToggle, cfg.HITBOX_EXPANDER)
    setToggle(ui.hitboxVis, cfg.HITBOX_VISUALIZE)
    setSlider(ui.hitboxMult, cfg.HITBOX_MULTIPLIER)
    if cfg.HITBOX_VIS_TRANSPARENCY ~= nil then
        setSlider(ui.hitboxVisOpacity, math.floor((1 - cfg.HITBOX_VIS_TRANSPARENCY) * 100 + 0.5))
    end
    setGroups(PX.HITBOX_GROUPS, PX.PART_GROUP_ORDER, cfg, "HG_", ui.hitboxGroups)
    setSlider(ui.reachMult, cfg.REACH_MULTIPLIER)
    -- Configs written before the tail was split store one REACH_Tail boolean for the whole thing.
    -- Fan it out across the sections so an old config keeps the reach it was saved with instead of
    -- silently coming back with no tail selected at all.
    if cfg.REACH_Tail ~= nil and cfg.REACH_TailBase == nil then
        cfg.REACH_TailBase = cfg.REACH_Tail
        cfg.REACH_TailMid = cfg.REACH_Tail
        cfg.REACH_TailTip = cfg.REACH_Tail
        cfg.REACH_Thagomizer = cfg.REACH_Tail
    end
    setGroups(PX.REACH_GROUPS, PX.REACH_GROUP_ORDER, cfg, "REACH_", ui.reachGroups)
    if cfg.REACH_VIS_TRANSPARENCY ~= nil then
        setSlider(ui.reachVisOpacity, math.floor((1 - cfg.REACH_VIS_TRANSPARENCY) * 100 + 0.5))
    end
    if cfg.REACH_VISUALIZE ~= nil then setToggle(ui.reachVis, cfg.REACH_VISUALIZE) end
    setToggle(ui.reach, cfg.REACH_ENABLED)
    setToggle(PX.autoWaterToggle, cfg.AUTO_WATER)
    if cfg.FORCE_EAT ~= nil then setToggle(PX.forceEatToggle, cfg.FORCE_EAT) end
    if cfg.FAST_EAT ~= nil then setToggle(ui.fastEat, cfg.FAST_EAT) end
    if cfg.AUTO_CLEAN ~= nil then setToggle(PX.autoCleanToggle, cfg.AUTO_CLEAN) end
    if cfg.INF_OXYGEN ~= nil then setToggle(ui.infOxygen, cfg.INF_OXYGEN) end
    if cfg.EAT_WHEN_HUNGRY ~= nil then setToggle(ui.eatWhenHungry, cfg.EAT_WHEN_HUNGRY) end
    if cfg.LEAVE_SCRAPS ~= nil then setToggle(ui.leaveScraps, cfg.LEAVE_SCRAPS) end
    if cfg.CARRY_CORPSE ~= nil then setToggle(ui.carryCorpse, cfg.CARRY_CORPSE) end
    setToggle(PX.noFallToggle, cfg.NO_FALL_DAMAGE)
    if cfg.FPS_SAVER ~= nil then setToggle(ui.fpsSaver, cfg.FPS_SAVER) end
    -- A skin belongs to one species: put on now if the dino being played has it, and kept as the wanted
    -- skin either way - the respawn / first refresh put it on once that dino is played.
    if type(cfg.SKIN_SELECTED) == "string" then
        PX.SKIN_WANTED = cfg.SKIN_SELECTED
        local items = PX.skinsForCurrentDino and PX.skinsForCurrentDino() or {}
        if PX.skinDropdown and table.find(items, cfg.SKIN_SELECTED) then setToggle(PX.skinDropdown, cfg.SKIN_SELECTED) end
    end
    -- Speed keys (FLY_SPEED, AFK_FARM_SPEED, FOSSIL_FARM_SPEED, the old governor's) are intentionally NOT read
    -- back: the shared mover has no settings, so an old config cannot make anything faster.
    -- Auto Fly sliders only (see getConfigData: the toggle is intentionally never restored).
    if cfg.AUTO_FLY_SPEED then setSlider(PX.autoFlySpeedSlider, cfg.AUTO_FLY_SPEED) end
    if cfg.AUTO_FLY_RADIUS then setSlider(PX.autoFlyRadiusSlider, cfg.AUTO_FLY_RADIUS) end
    if cfg.AUTO_FLY_DRIFT then setSlider(PX.autoFlyDriftSlider, cfg.AUTO_FLY_DRIFT) end
    if cfg.AUTO_FLY_ALT then setSlider(PX.autoFlyAltSlider, cfg.AUTO_FLY_ALT) end
    if cfg.ANTI_AFK ~= nil then setToggle(PX.antiAfkToggle, cfg.ANTI_AFK) end
    if PX.cfgFarms then PX.cfgFarms(cfg) end   -- the farm switches: off now, on once a dino is alive
    -- AFK Farm sliders (toggle intentionally not restored, same reason as Auto Fly)
    if cfg.AFK_FARM_AVOID then setSlider(ui.afkFarmAvoid, cfg.AFK_FARM_AVOID) end
    if cfg.AFK_FARM_WALK ~= nil then setToggle(ui.afkFarmWalk, cfg.AFK_FARM_WALK) end
    if cfg.AFK_FARM_SAFETY ~= nil then setToggle(ui.afkFarmSafety, cfg.AFK_FARM_SAFETY) end
    if cfg.AFK_FARM_ADMIN_KICK ~= nil then setToggle(ui.afkFarmAdminKick, cfg.AFK_FARM_ADMIN_KICK) end
    if cfg.AFK_FARM_FLEE ~= nil then setToggle(ui.afkFarmFlee, cfg.AFK_FARM_FLEE) end
    if cfg.AFK_FARM_UNSTUCK ~= nil then setToggle(ui.afkFarmUnstuck, cfg.AFK_FARM_UNSTUCK) end
    if cfg.LF_AVOID then setSlider(ui.lfAvoid, cfg.LF_AVOID) end
    if cfg.LF_MAX_DIST then setSlider(ui.lfMaxDist, cfg.LF_MAX_DIST) end
    if cfg.LF_SCRAPS ~= nil then setToggle(ui.lfScraps, cfg.LF_SCRAPS) end
    if cfg.LF_CIRCLE ~= nil then setToggle(ui.lfCircle, cfg.LF_CIRCLE) end
    if cfg.LF_FLEE ~= nil then setToggle(ui.lfFlee, cfg.LF_FLEE) end
    if cfg.LF_TABOUT ~= nil then setToggle(ui.lfTabOut, cfg.LF_TABOUT) end
    if cfg.AUTO_GAIT ~= nil then
        for name, row in pairs({ Walk = ui.autoWalk, Trot = ui.autoTrot, Run = ui.autoRun, Sprint = ui.autoSprint }) do
            setToggle(row, cfg.AUTO_GAIT == name)
        end
    end
    if cfg.LF_UNSTUCK ~= nil then setToggle(ui.lfUnstuck, cfg.LF_UNSTUCK) end
    if cfg.LF_REST ~= nil then setToggle(ui.lfRest, cfg.LF_REST) end
    if cfg.LF_ADMIN_KICK ~= nil then setToggle(ui.lfAdminKick, cfg.LF_ADMIN_KICK) end
    if cfg.LF_FLYAWAY ~= nil then setToggle(ui.lfFlyAway, cfg.LF_FLYAWAY) end
    if cfg.LF_FLYAWAY_RADIUS then setSlider(ui.lfFlyAwayRadius, cfg.LF_FLYAWAY_RADIUS) end
    -- Slots are saved as species names; the dropdown shows them with their unlocked/locked label.
    for i = 1, 6 do
        local name = cfg["AS_SLOT" .. i]
        if name ~= nil then setToggle(ui["asSlot" .. i], PX.asLabel and PX.asLabel(name) or name) end
    end
    setToggle(ui.asGender, cfg.AS_GENDER)
    if cfg.AS_AUTOBUY ~= nil then setToggle(ui.asAutoBuy, cfg.AS_AUTOBUY) end
    if cfg.AS_AUTO_ORDER ~= nil then setToggle(ui.asAutoOrder, cfg.AS_AUTO_ORDER) end
    if cfg.FT_MINUTES then setSlider(ui.ftMinutes, cfg.FT_MINUTES) end
    setToggle(ui.tpSolid, cfg.TP_SOLID)
    setToggle(ui.tpChain, cfg.TP_CHAIN)
    -- Slider first, then the gate, so enabling never fires against a stale %.
    -- Configs saved before this toggle existed used 0 to mean off, so treat a
    -- missing AUTO_SAVE with a non-zero threshold as "was on".
    if cfg.AUTO_SAVE_PCT and cfg.AUTO_SAVE_PCT > 0 then
        setSlider(PX.autoSaveSlider, cfg.AUTO_SAVE_PCT)
    end
    local autoSaveOn = cfg.AUTO_SAVE
    if autoSaveOn == nil then autoSaveOn = (cfg.AUTO_SAVE_PCT or 0) > 0 end
    setToggle(PX.autoSaveToggle, autoSaveOn)
    -- SAVE_DINO_DEPTH / SAVE_UP_HEIGHT / SAVE_ALLOW_REST are deliberately ignored: their sliders
    -- and toggle were removed, and an old config must not resurrect values with no UI behind them.
    if cfg.AUTO_SAVE_BLEED ~= nil then setToggle(PX.autoSaveBleedToggle, cfg.AUTO_SAVE_BLEED) end

    -- Restore each toggle's saved keybind (matched by toggle name). A key the config does not have is
    -- cleared, so loading a config gives you its binds, not a mix with the last config's.
    if type(cfg.KEYBINDS) == "table" then
        for name, obj in pairs(PX.ALL_TOGGLES) do
            if cfg.KEYBINDS[name] == nil and obj and obj.SetKey then
                pcall(function()
                    if obj.Key and obj.Key ~= Enum.KeyCode.Unknown then obj:SetKey(nil, true) end
                end)
            end
        end
        for name, keyName in pairs(cfg.KEYBINDS) do
            local obj = PX.ALL_TOGGLES[name]
            if obj and obj.SetKey and keyName then
                pcall(function()
                    local kc = Enum.KeyCode[keyName]
                    if kc then obj:SetKey(kc, true) end
                end)
            end
        end
    end

    if cfg.AUTO_GROW ~= nil then setToggle(PX.autoGrowToggle, cfg.AUTO_GROW) end
end

 function PX.listConfigs()
    local configs = {}
    pcall(function()
        local files = listfiles(PX.CONFIG_FOLDER)
        for _, path in ipairs(files) do
            local name = path:match("([^/\\]+)%.json$")
            if name and name ~= "autoload" then
                table.insert(configs, name)
            end
        end
    end)
    table.sort(configs)
    return configs
end

 function PX.saveConfig(name)
    local ok, err = pcall(function()
        local data = PX.getConfigData()
        writefile(PX.CONFIG_FOLDER .. "/" .. name .. ".json", HttpService:JSONEncode(data))
    end)
    if ok then
        print("[EazyCheats] Config saved: " .. name)
        pcall(function() Hub:Notify("Saved config: " .. name) end)
    else
        warn("[EazyCheats] Config save FAILED: " .. tostring(err))
        pcall(function() Hub:Notify("Save failed: " .. name) end)
    end
    return ok
end

 function PX.loadConfig(name)
    local ok, data = pcall(function()
        local raw = readfile(PX.CONFIG_FOLDER .. "/" .. name .. ".json")
        return HttpService:JSONDecode(raw)
    end)
    if ok and data then
        PX.applyConfigData(data)
        print("[EazyCheats] Config loaded: " .. name)
        pcall(function() Hub:Notify("Loaded config: " .. name) end)
        return true
    else
        warn("[EazyCheats] Config load FAILED: " .. tostring(data))
        pcall(function() Hub:Notify("Load failed: " .. name) end)
    end
    return false
end

 function PX.deleteConfig(name)
    pcall(function()
        delfile(PX.CONFIG_FOLDER .. "/" .. name .. ".json")
    end)
end

 function PX.getAutoLoadConfig()
    local ok, name = pcall(function() return readfile(PX.AUTO_LOAD_FILE) end)
    if ok and name and name ~= "" then return name end
    return nil
end

 function PX.setAutoLoadConfig(name)
    pcall(function() writefile(PX.AUTO_LOAD_FILE, name or "") end)
end

-- ============ CONFIG UI ============
-- Lives on the GUI's built-in Settings tab, next to the keybind and Unload,
-- rather than at the bottom of Main. The library builds that tab with scrolling
-- off (it only holds two rows by default), so switch it back on now that this
-- pushes the page past the window height.
local settingsTab = Hub.tabs and Hub.tabs.Settings
if settingsTab then
    pcall(function()
        settingsTab.page.ScrollingEnabled = true
        settingsTab.page.ScrollBarThickness = 3
    end)
else
    settingsTab = afRoot    -- older library without a Settings tab: fall back to the Autofarm tab
end

-- === UNLOAD KEY ===
-- A hotkey that runs the same full teardown as Settings > Unload. Default End; rebind in Settings.
-- Unloading also clears the admin key (see PX.unloadScript) so re-entry needs the key again.
PX.UNLOAD_KEY = Enum.KeyCode.End
if settingsTab then
    PX.section(settingsTab, "Unload", [[Unload Key: press this key to unload the whole hub instantly. Click the row, then press a key (Esc clears).]])
    PX.unloadKb = settingsTab:AddKeybind({
        Name = "Unload Key",
        Default = PX.UNLOAD_KEY,
        Changed = function(k) PX.UNLOAD_KEY = (typeof(k) == "EnumItem") and k or Enum.KeyCode.Unknown end,
    })
end
table.insert(allConnections, PX.UIS.InputBegan:Connect(function(input, gpe)
    if gpe or PX.UNLOADED then return end
    if input.KeyCode == PX.UNLOAD_KEY and PX.UNLOAD_KEY ~= Enum.KeyCode.Unknown then
        pcall(PX.unloadScript)
    end
end))

-- Mobile only: the pads are additive, but the turn pad sits over the bottom-right of the screen
-- and some players would rather have that space back.
if PX.IS_MOBILE then
    PX.section(settingsTab, "Mobile", [[Show Turn Buttons: shows the on-screen turn pad. Turn it off if it covers something you need to tap.]])
    PX.mobTurnToggle = settingsTab:AddToggle({
        Name = "Show Turn Buttons",
        Default = false,
        Callback = function(v) PX.MOB_SHOW_TURN = v end
    })
end

PX.CONFIG_SLOTS = {"Config1", "Config2", "Config3", "Config4", "Config5", "PvP", "ESP Only", "Grind", "Full"}

-- Save / Load / Auto Load live in the GUI's Settings dropdown, which also saves where each window
-- sits. It calls back into PX.saveConfig / PX.loadConfig for everything else, so existing config
-- files and the auto-load slot keep working.
pcall(function()
    Hub:SetConfig({
        Folder = PX.CONFIG_FOLDER,
        Slots = PX.CONFIG_SLOTS,
        Save = PX.saveConfig,
        Load = PX.loadConfig,
        -- Files in the folder that are not configs: Rejoin / Auto Switch per-account state, the
        -- launcher's leave notes, another script's homes.
        Ignore = function(n)
            return n:match("^rejoin%-%d+$") or n:match("^asdone%-%d+$") or n:match("^left%-") or n == "homes"
                or n:match("^gui%-%d+$")
        end,
    })
end)

-- === MODULE INDICATOR (top-right) ===
local indicatorGui = Instance.new("ScreenGui")
indicatorGui.Name = "EazyCheatsIndicator"
indicatorGui.ResetOnSpawn = false
indicatorGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() indicatorGui.Parent = game:GetService("CoreGui") end)
if not indicatorGui.Parent then indicatorGui.Parent = LocalPlayer:WaitForChild("PlayerGui") end

local indicatorFrame = Instance.new("Frame")
indicatorFrame.Name = "ModuleList"
indicatorFrame.Size = UDim2.new(0, 160, 0, 400)
indicatorFrame.Position = UDim2.new(1, -170, 0, 10)
indicatorFrame.BackgroundTransparency = 1
indicatorFrame.Parent = indicatorGui

local indicatorLayout = Instance.new("UIListLayout")
indicatorLayout.FillDirection = Enum.FillDirection.Vertical
indicatorLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
indicatorLayout.VerticalAlignment = Enum.VerticalAlignment.Top
indicatorLayout.SortOrder = Enum.SortOrder.LayoutOrder
indicatorLayout.Padding = UDim.new(0, 2)
indicatorLayout.Parent = indicatorFrame

 PX.TweenService = game:GetService("TweenService")
local indicatorLabels = {}
PX.SLIDE_TIME = 0.25

function PX.createIndicatorLabel(name, order)
    local lbl = Instance.new("TextLabel")
    lbl.Name = "Ind_" .. name
    lbl.LayoutOrder = order
    lbl.Size = UDim2.new(1, 0, 0, 18)
    lbl.BackgroundTransparency = 1
    lbl.TextColor3 = Color3.fromRGB(170, 90, 255)
    lbl.TextStrokeTransparency = 0.3
    lbl.TextStrokeColor3 = Color3.new(0, 0, 0)
    lbl.Font = Enum.Font.GothamBold
    lbl.TextSize = 13
    lbl.TextXAlignment = Enum.TextXAlignment.Right
    lbl.Text = name
    lbl.TextTransparency = 1
    lbl.Position = UDim2.new(1, 0, 0, 0)
    lbl.Parent = indicatorFrame
    indicatorLabels[name] = lbl
    return lbl
end

 function PX.showIndicator(name)
    local lbl = indicatorLabels[name]
    if not lbl then return end
    lbl.Visible = true
    lbl.TextTransparency = 1
    lbl.Position = UDim2.new(1, 0, 0, 0)
    local tweenIn = PX.TweenService:Create(lbl, TweenInfo.new(PX.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
        TextTransparency = 0,
        Position = UDim2.new(0, 0, 0, 0)
    })
    tweenIn:Play()
end

 function PX.hideIndicator(name)
    local lbl = indicatorLabels[name]
    if not lbl then return end
    local tweenOut = PX.TweenService:Create(lbl, TweenInfo.new(PX.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
        TextTransparency = 1,
        Position = UDim2.new(1, 0, 0, 0)
    })
    tweenOut:Play()
    tweenOut.Completed:Connect(function()
        if lbl.TextTransparency >= 0.9 then
            lbl.Visible = false
        end
    end)
end

 function PX.updateIndicator(name, enabled)
    if enabled then
        PX.showIndicator(name)
    else
        PX.hideIndicator(name)
    end
end

PX.MODULE_LIST = {
    {name = "ESP", order = 1, getState = function() return PX.ESP_ENABLED end},
    {name = "Chams", order = 2, getState = function() return PX.CHAMS_ENABLED end},
    {name = "Tracers", order = 3, getState = function() return PX.TRACERS_ENABLED end},
    {name = "Corpse ESP", order = 4, getState = function() return PX.CORPSE_ESP end},
    {name = "Fossil ESP", order = 5, getState = function() return PX.FOSSIL_SMALL or PX.FOSSIL_MEDIUM or PX.FOSSIL_LARGE end},
    {name = "Meat ESP", order = 7, getState = function() return PX.MEAT_ESP end},
    {name = "Clay ESP", order = 8, getState = function() return PX.CLAY_ESP end},
    {name = "Vegetation ESP", order = 24, getState = function() return PX.VEG_ESP end},
    {name = "Save Dino", order = 8, getState = function() return PX.SAVE_DINO_ACTIVE end},
    {name = "Hitbox Expander", order = 9, getState = function() return PX.HITBOX_EXPANDER end},
    {name = "No Sleep Screen", order = 10, getState = function() return PX.ANTI_BLACKSCREEN end},
    {name = "Auto Grow", order = 11, getState = function() return PX.AUTO_GROW end},
    {name = "Text Highlight", order = 12, getState = function() return PX.TEXT_HIGHLIGHT end},
    {name = "No Fall Damage", order = 14, getState = function() return PX.NO_FALL_DAMAGE end},
    {name = "Fossil Farm", order = 15, getState = function() return PX.FOSSIL_FARM end},
    {name = "Silent Aim", order = 16, getState = function() return PX.SILENT_AIM end},
    {name = "AFK Farm", order = 18.5, getState = function() return PX.AFK_FARM end},
    {name = "Legit Farm", order = 18.6, getState = function() return PX.LEGIT_FARM end},
    {name = "Auto Switch", order = 18.7, getState = function() return PX.AUTO_SWITCH end},
    {name = "Farm Timer", order = 18.8, getState = function() return PX.FARM_TIMER end},
    {name = "Auto Fly", order = 19, getState = function() return PX.AUTO_FLY end},
    {name = "TP to Corpse", order = 20, getState = function() return PX.TP_CORPSE end},
    {name = "Anti AFK", order = 21, getState = function() return PX.ANTI_AFK end},
    {name = "Mod Check", order = 22, getState = function() return PX.MOD_CHECK end},
    {name = "No Fog", order = 25, getState = function() return PX.NO_FOG end},
}

for _, mod in ipairs(PX.MODULE_LIST) do
    PX.createIndicatorLabel(mod.name, mod.order)
end

-- Was every frame just to notice a toggle flipping. At every 6th frame the label still slides
-- in within ~0.1s of you pressing the switch, which is under the 0.25s slide animation anyway.
 PX.prevStates = {}
PX.addStep(6, function()
    if indicatorGui.Enabled ~= PX.SHOW_INDICATORS then indicatorGui.Enabled = PX.SHOW_INDICATORS end
    for _, mod in ipairs(PX.MODULE_LIST) do
        local cur = mod.getState()
        if PX.prevStates[mod.name] ~= cur then
            PX.prevStates[mod.name] = cur
            PX.updateIndicator(mod.name, cur)
        end
    end
end)



-- Read the key off the Hub rather than hardcoding it: it's rebindable from the
-- Settings tab, so a fixed "RightShift" here would start lying the moment
-- someone changed it.
pcall(function()
    local key = (Hub.toggleKey and Hub.toggleKey.Name) or "RightShift"
    Hub:Notify("EazyCheats loaded - press " .. key .. " to show or hide the menu", 6)
end)
PX.xlog("load finished (menu built, features running)")
