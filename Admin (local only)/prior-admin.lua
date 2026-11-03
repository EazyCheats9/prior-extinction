-- ============================================================================
--  EazyCheats | ADMIN SCRIPT  (owner-only)
--  Loaded by the loader ONLY when getgenv().EazyCheats_AdminKey == the admin key,
--  and served ONLY by the key-gated backend endpoint — so the free and premium
--  builds never contain any of this code.
--
--  v1: EZ ESP — a small purple "EZ" tag above every player in THIS server who is
--  running the EazyCheats script. Who that is comes from the hub's presence beacon:
--  each hub POSTs {hwid,userId,jobId,...} to /api/hwid-report on load, and this
--  script asks /api/hwid-present (admin-key gated) for the userIds in our jobId.
--  Hitboxes come next — this is the ESP first, as asked.
--
--  This is the OWNER'S LOCAL LAUNCHER: it loads the full premium hub first, then
--  overlays the admin tools below. Public free/premium never load this file.
-- ============================================================================

-- 1) Load the full premium Prior hub — FULLY LOCAL, no key system. The hub build sits next to this
--    file in your workspace (prior-premium.obf.lua), so it loads straight off disk with no key box.
--    Falls back to the online loader ONLY if that local file is missing.
do
    local hubSrc
    pcall(function() hubSrc = readfile("prior-premium.obf.lua") end)
    if type(hubSrc) ~= "string" or #hubSrc < 1000 then
        pcall(function() hubSrc = game:HttpGet("https://eazycheats.com/s/priorpremium") end)
    end
    if type(hubSrc) == "string" and #hubSrc > 0 then
        -- LOCAL TEST: when the one-window Galaxy GUI build (EZGuiOne-test.lua) sits in the workspace, hand it
        -- to the hub as its menu library for THIS run only. The hub asks for "EazyCheats_ez-gui.lua" through
        -- isfile/readfile; answering that one name from memory writes nothing to disk, so the other clients
        -- sharing this workspace keep their normal menu. If the hook cannot apply, the hub simply loads the
        -- usual V1.0 menu. Delete (or rename) EZGuiOne-test.lua to go back to the V1.0 menu for good.
        local env = getgenv and getgenv()
        local oneSrc
        pcall(function()
            if type(isfile) ~= "function" or isfile("EZGuiOne-test.lua") then oneSrc = readfile("EZGuiOne-test.lua") end
        end)
        local restore
        if env and type(oneSrc) == "string" and #oneSrc > 1000 then
            local realIsfile, realReadfile = env.isfile or isfile, env.readfile or readfile
            local hadIsfile, hadReadfile = rawget(env, "isfile"), rawget(env, "readfile")
            if type(realIsfile) == "function" then
                env.isfile = function(p) if p == "EazyCheats_ez-gui.lua" then return true end return realIsfile(p) end
            end
            env.readfile = function(p) if p == "EazyCheats_ez-gui.lua" then return oneSrc end return realReadfile(p) end
            restore = function() env.isfile, env.readfile = hadIsfile, hadReadfile end
        end
        -- LOCAL TEST: Prior's layout profile for that GUI (sections, short hints, drawer groups, search words,
        -- the Active page's starter list). The GUI reads getgenv().EZGuiOne_Layout while the hub builds its
        -- menu; the V1.0 menu ignores it. Delete (or rename) EZGuiOne-prior-layout.lua to build without it.
        pcall(function()
            if type(isfile) ~= "function" or isfile("EZGuiOne-prior-layout.lua") then
                getgenv().EZGuiOne_Layout = loadstring(readfile("EZGuiOne-prior-layout.lua"))()
            end
        end)
        pcall(function() loadstring(hubSrc)() end)
        if restore then pcall(restore) end
    end
end

-- 2) Admin overlay — added once on top of the hub, once per server: the guard is stamped with the JobId,
-- because executor globals can outlive a teleport and a plain true made every server after the first
-- (usually the start screen) skip the Admin tab, the EZ tags and the cursor rescue.
if getgenv and getgenv().EazyCheats_Admin_Loaded == game.JobId then return end
if getgenv then getgenv().EazyCheats_Admin_Loaded = game.JobId end

local Players       = game:GetService("Players")
local RunService    = game:GetService("RunService")
local HttpService   = game:GetService("HttpService")
local UIS           = game:GetService("UserInputService")
local LocalPlayer   = Players.LocalPlayer

local ADMIN = {}
ADMIN.PRESENT_URL = "https://eazycheats.com/api/hwid-present"
ADMIN.TAG_COLOR   = Color3.fromRGB(170, 70, 255)   -- purple
ADMIN.REFRESH     = 20                              -- seconds between presence polls
ADMIN.TAB_TRIES   = 10                              -- AddTab attempts per menu, 0.1 s apart (~1 s)
ADMIN.SWEPT_TICKS = 10                              -- ticks with our ScreenGui gone before we stand down
ADMIN.RESCUE_WAIT = 0.4                             -- seconds after the menu goes down before the cursor check
ADMIN.rescues     = 0                               -- times the cursor was handed back stuck and we freed it
ADMIN.present     = {}                              -- [userId] = true (running the script here)
ADMIN.tags        = setmetatable({}, { __mode = "k" })  -- [Player] = BillboardGui
ADMIN.unloaded    = false
ADMIN.espOn       = true                                -- EZ tags on script users (toggle in the Admin tab)

-- The admin key: getgenv().EazyCheats_AdminKey if a loader set one, else the file EazyCheats_admin.key in this
-- workspace (a long random key that never goes in any script). It must match ADMIN_SCRIPT_KEY on Render (24+
-- characters, else the site refuses everyone). LOCAL-ONLY file.
local KEY = getgenv and getgenv().EazyCheats_AdminKey
if type(KEY) ~= "string" or #KEY < 24 then
    KEY = nil
    pcall(function() KEY = readfile("EazyCheats_admin.key") end)
    KEY = type(KEY) == "string" and (KEY:gsub("%s", "")) or ""
end
if #KEY < 24 and type(warn) == "function" then
    warn("[EazyCheats admin] no admin key (EazyCheats_admin.key): Anti-Hit and the EZ tags stay off; the rest works")
end
local HWID = "unknown"
pcall(function() if gethwid then HWID = tostring(gethwid()) end end)

-- request() with the usual executor fallbacks (game:HttpGet also works for our own domain,
-- but request lets us send the key in a header instead of the URL).
local httpReq = (type(request) == "function" and request)
    or (type(http_request) == "function" and http_request)
    or (type(syn) == "table" and type(syn.request) == "function" and syn.request)
    or nil

-- Ask the backend which userIds in our server are running the script. The endpoint validates the
-- admin key server-side (the real gate) and returns { ok = true, users = { <id>, ... } }.
local function fetchPresent()
    if not httpReq then return nil end
    local url = ADMIN.PRESENT_URL
        .. "?jobId=" .. HttpService:UrlEncode(game.JobId)
        .. "&placeId=" .. HttpService:UrlEncode(tostring(game.PlaceId))
    local ok, resp = pcall(httpReq, {
        Url = url,
        Method = "GET",
        Headers = { ["x-admin-key"] = KEY, ["x-hwid"] = HWID },
    })
    if not ok or type(resp) ~= "table" or type(resp.Body) ~= "string" then return nil end
    local decoded
    local dok = pcall(function() decoded = HttpService:JSONDecode(resp.Body) end)
    if not dok or type(decoded) ~= "table" or decoded.ok ~= true then return nil end
    local set = {}
    for _, id in ipairs(decoded.users or {}) do
        local n = tonumber(id)
        if n then set[n] = true end
    end
    return set
end

-- Root part to hang the tag on. Prior dinos have no standard Head; use HumanoidRootPart / Body /
-- the first BasePart, same fallback chain the hub uses.
local function rootOf(char)
    if not char then return nil end
    return char:FindFirstChild("HumanoidRootPart")
        or char:FindFirstChild("Body")
        or char:FindFirstChildWhichIsA("BasePart")
end

local function makeTag(player)
    local root = rootOf(player.Character)
    if not root then return nil end
    local bb = Instance.new("BillboardGui")
    bb.Name = "EZ_AdminTag"
    bb.Size = UDim2.fromOffset(46, 22)
    bb.StudsOffsetWorldSpace = Vector3.new(0, 7, 0)
    bb.AlwaysOnTop = true
    bb.MaxDistance = 5000
    bb.LightInfluence = 0
    bb.Adornee = root
    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.fromScale(1, 1)
    lbl.BackgroundTransparency = 1
    lbl.Text = "EZ"
    lbl.Font = Enum.Font.GothamBold
    lbl.TextSize = 18
    lbl.TextColor3 = ADMIN.TAG_COLOR
    lbl.TextStrokeTransparency = 0
    lbl.TextStrokeColor3 = Color3.new(0, 0, 0)
    lbl.Parent = bb
    local parent = (gethui and gethui()) or game:GetService("CoreGui")
    pcall(function() bb.Parent = parent end)
    if not bb.Parent then bb.Parent = LocalPlayer:WaitForChild("PlayerGui") end
    return bb
end

-- Add/refresh a tag for a player who should have one; drop it if their character/root changed.
local function ensureTag(player)
    local bb = ADMIN.tags[player]
    if bb and bb.Parent then
        local root = rootOf(player.Character)
        if root and bb.Adornee ~= root then bb.Adornee = root end
        if not root then bb:Destroy(); ADMIN.tags[player] = nil end
        return
    end
    local made = makeTag(player)
    if made then ADMIN.tags[player] = made end
end

local function dropTag(player)
    local bb = ADMIN.tags[player]
    if bb then pcall(function() bb:Destroy() end) end
    ADMIN.tags[player] = nil
end

-- Reconcile tags to the present-set: tag present players, drop everyone else.
local function reconcile()
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and ADMIN.present[player.UserId] then
            ensureTag(player)
        else
            dropTag(player)
        end
    end
end

-- Poll loop: refresh the present-set, then reconcile. A tag whose adornee streamed out is
-- rebuilt on the next reconcile, so this doubles as tag maintenance.
task.spawn(function()
    while not ADMIN.unloaded do
        local set = fetchPresent()
        if set then ADMIN.present = set end
        if ADMIN.espOn then reconcile() end
        for _ = 1, ADMIN.REFRESH do
            if ADMIN.unloaded then break end
            task.wait(1)
        end
    end
end)

-- Keep tags glued through respawns without waiting for the next poll.
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        task.wait(0.5)
        if not ADMIN.unloaded and ADMIN.present[player.UserId] then ensureTag(player) end
    end)
end)
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        player.CharacterAdded:Connect(function()
            task.wait(0.5)
            if not ADMIN.unloaded and ADMIN.present[player.UserId] then ensureTag(player) end
        end)
    end
end
Players.PlayerRemoving:Connect(dropTag)

-- === "Script users can't hit me" toggle ===
-- Marks us protected in the backend; every other script user's hub reads the per-server list off its
-- beacon and makes our detection hitbox unqueryable ON THEIR CLIENT, so their attacks can't land on us.
-- TTL-refreshed so it auto-clears if we leave/crash. Normal (non-script) players don't run the hub, so
-- they can still hit us — this only stops fellow script users.
ADMIN.PROTECT_URL = "https://eazycheats.com/api/admin-protect"
ADMIN.protectOn = false
function ADMIN.setProtect(on)
    ADMIN.protectOn = on and true or false
    if not httpReq then return end
    pcall(httpReq, {
        Url = ADMIN.PROTECT_URL,
        Method = "POST",
        Headers = { ["Content-Type"] = "application/json", ["x-admin-key"] = KEY },
        Body = HttpService:JSONEncode({
            key = KEY, jobId = game.JobId, userId = LocalPlayer.UserId, on = ADMIN.protectOn,
        }),
    })
end
-- Refresh the TTL while protection is on (the server expires it after ~60s).
task.spawn(function()
    while not ADMIN.unloaded do
        if ADMIN.protectOn then ADMIN.setProtect(true) end
        for _ = 1, 20 do if ADMIN.unloaded then break end task.wait(1) end
    end
end)

-- === Cursor rescue (mouse stuck in the middle of the screen) ===
-- Prior's bridge frees the cursor while the menu is up (a Modal button plus a RenderStep write) and, when
-- the menu goes down, hands back what it BELIEVES the game last wanted. That belief is wrong in one case:
-- while the menu is up the bridge is already holding the cursor at Default, so the game switching from a
-- lock to a free cursor writes Default over Default -- nothing moves, no property-changed signal fires,
-- and the bridge never learns. Hiding the menu then hands back the old LockCenter and the mouse is glued
-- to the middle of the screen. That is exactly the spawn screen: the script is loaded with a dino alive
-- (locked), the menu is opened, the dino dies or you go back to the start screen (the game frees the
-- cursor), you close the menu -- and now you cannot click Spawn.
--
-- The proper fix is inside Prior's hub and is written out for approval in design/reports/mouse-lock.md (a
-- flag around the bridge's own writes, plus this same spawn-screen rule where the hand-back is decided).
-- This is the launcher's safety net until that ships, and it is deliberately as narrow as it can be:
--   * it only ever looks a moment AFTER the menu stops showing, never while it is up;
--   * it only acts when the local player has NO character -- Prior's spawn / death screen, the one state
--     where the game certainly wants a cursor you can click with. A lock with a dino alive is left alone;
--   * it writes only if the cursor is actually locked, once per "the menu went down", never per frame;
--   * it is a client-side property write and nothing else -- no server call, no character touched.
-- What it cannot cover: the same stale hand-back WITH a character alive (nothing in the client says
-- whether that lock is the game's or the bridge's stale copy), and the seconds between the menu going
-- down and the check.
function ADMIN.freeStrandedCursor()
    local win = getgenv and getgenv().__PX_EZ_WIN
    if win and win._gui and win._visible then return end     -- the menu is showing: the cursor is the bridge's
    if LocalPlayer.Character ~= nil then return end           -- alive: the game may well want it locked
    pcall(function()
        if UIS.MouseBehavior ~= Enum.MouseBehavior.Default then
            UIS.MouseBehavior = Enum.MouseBehavior.Default
            UIS.MouseIconEnabled = true
            ADMIN.rescues = ADMIN.rescues + 1
        end
    end)
end
-- One shot, ADMIN.RESCUE_WAIT after the menu went down, so Prior's own hand-back has already landed.
local function rescueSoon()
    -- A spawned wait, not task.delay: delayed threads are the one thing Real is known to refuse, and this
    -- must outlive ADMIN.stop(), which ends the watcher loop that could otherwise carry the deadline.
    task.spawn(function()
        task.wait(ADMIN.RESCUE_WAIT)
        ADMIN.freeStrandedCursor()
    end)
end

-- === Teardown ===
-- Nothing used to call this, so unloading the hub from Settings > Unload left all three loops above
-- running for the rest of the session — the 20 s presence poll kept beaconing at a hub that was gone.
-- It is idempotent, and it clears the loaded flag so a later re-load of the launcher builds everything
-- again from scratch.
function ADMIN.stop()
    if ADMIN.unloaded then return end
    ADMIN.unloaded = true                                   -- every loop here checks this and falls out
    if ADMIN.protectOn then ADMIN.setProtect(false) end      -- drop our protection so others can hit us
    ADMIN.protectOn = false
    for player in pairs(ADMIN.tags) do dropTag(player) end
    pcall(function()                                         -- take our wrapper back off a live window
        if ADMIN.hooked and ADMIN.hooked.OnUnload == ADMIN.wrapped then
            ADMIN.hooked.OnUnload = ADMIN.prevUnload
        end
    end)
    ADMIN.hooked, ADMIN.prevUnload, ADMIN.wrapped, ADMIN.gui, ADMIN.tab = nil, nil, nil, nil, nil
    rescueSoon()                                             -- the menu just went down for good: one cursor check
    if getgenv then
        getgenv().EazyCheats_Admin_Loaded = nil
        getgenv().EazyCheats_Admin_Unload = nil
    end
end

-- The menu's own unload, chained. OnUnload is a plain writable field the GUI library calls exactly once
-- from Destroy, and it is what Settings > Unload and Prior's own PX.unloadScript both come through — so
-- it is the authoritative "the hub is going away" signal. A hub REBUILD is not: the bridge's .new clears
-- OnUnload before destroying its leftover window, so a rebuild never reaches this. Neither is a reload,
-- where Prior hands over to a new copy with EazyCheats_Handoff set while it tears the old one down.
local function hookUnload(win)
    if ADMIN.hooked == win then return end
    local prev = win.OnUnload
    local wrapped
    wrapped = function(...)
        if prev then pcall(prev, ...) end
        if getgenv and getgenv().EazyCheats_Handoff then return end   -- a reload, not you stopping
        ADMIN.stop()
    end
    ADMIN.hooked, ADMIN.prevUnload, ADMIN.wrapped = win, prev, wrapped
    win.OnUnload = wrapped
    ADMIN.gui = win._gui       -- the ScreenGui to watch for a sweep; nil if this window has none
end

-- Admin controls live as a REAL "Admin" tab in the hub's own menu, added locally once the hub is up
-- (getgenv().__PX_EZ_WIN is the GUI library window). It sits next to AutoFarm/Stats/Combat/… — and the
-- public free/premium builds never contain any of this, since the tab is added at runtime by THIS file.
--
-- Real's rule 2: an Instance built off the building thread can be refused by the executor, and this runs
-- on a watcher thread — so the AddTab stays inside a pcall. A refusal just leaves that one menu without
-- an Admin tab; everything the hub built keeps working.
-- ONE Admin tab per menu, whatever ran before. An earlier run of this file can stop (its loaded flag cleared)
-- while its tab stays on the menu - the GUI cannot remove a tab - and the next run then added a second one
-- (2026-10-01: two full Admin tabs, the old one dead). So a menu that already has an Admin tab gets that tab
-- taken over: every row this run would add is matched by name and re-pointed at this run, and keeps the state
-- it shows. A row the old tab lacks is still added.
local function adoptTab(tab)
    local byName = {}
    pcall(function() for _, tg in ipairs(tab.Toggles or {}) do byName[tg.Name] = tg end end)
    return setmetatable({}, { __index = function(_, k)
        if k == "AddToggle" then
            return function(_, cfg)
                local tg = type(cfg) == "table" and byName[cfg.Name]
                if not tg then return tab:AddToggle(cfg) end
                tg.Callback = cfg.Callback or tg.Callback
                if tg.Enabled ~= nil and tg.Enabled ~= (cfg.Default and true or false) and cfg.Callback then
                    pcall(cfg.Callback, tg.Enabled)        -- the row's state wins: this run follows it
                end
                return tg
            end
        end
        local v = tab[k]
        if type(v) == "function" then return function(_, ...) return v(tab, ...) end end
        return v
    end })
end
local function buildAdminTab(win)
    local old
    pcall(function()
        for _, t in ipairs(win.Tabs or {}) do
            if t.Name == "Admin" then old = t break end
        end
    end)
    local ok, tab
    if old then
        ok, tab = true, adoptTab(old)
    else
        ok, tab = pcall(function() return win:AddTab({ Name = "Admin", Icon = "🛡" }) end)
    end
    if not ok or not tab or not tab.AddToggle then return false end
    ADMIN.tab = tab
    -- Defaults are the live values, not constants: a menu rebuilt mid-session comes back showing what
    -- the admin script is actually doing. The library never fires a Callback for a Default.
    pcall(function()
        tab:AddToggle({
            Name = "Anti-Hit (script users can't hit me)",
            Default = ADMIN.protectOn,
            Callback = function(v) ADMIN.setProtect(v) end,
        })
        tab:AddToggle({
            Name = "Show Script Users (EZ tags)",
            Default = ADMIN.espOn,
            Callback = function(v)
                ADMIN.espOn = v
                if not v then for p in pairs(ADMIN.tags) do dropTag(p) end end
            end,
        })
    end)
    return true
end
-- The hub REPLACES its window every time it is re-run: the bridge's .new destroys the leftover menu and
-- writes a NEW getgenv().__PX_EZ_WIN, and the EazyCheats_Admin_Loaded guard above stops a second run of
-- THIS file from ever reaching this code — so adding the tab once lost it for the rest of the session.
-- This watcher keeps watching instead: the tab comes back on every rebuild and is never added twice to
-- the same menu. Only a SUCCESSFUL AddTab retires a window: marking it done before the call meant one
-- unlucky failure (a menu still building, say) cost that window its Admin tab for good. A genuine
-- refusal still must not spin, so the retries are capped at ADMIN.TAB_TRIES and then logged once.
task.spawn(function()
    local seen      -- the window this thread is working on
    local shown     -- the window that HAS the Admin tab
    local tries = 0 -- AddTab attempts made on `seen`
    local gone = 0  -- consecutive ticks with our own ScreenGui destroyed under us
    local wasUp     -- was the menu SHOWING last tick (ADMIN.freeStrandedCursor)
    while not ADMIN.unloaded do
        local win = getgenv and getgenv().__PX_EZ_WIN
        -- The cursor check is armed by the menu stopping showing, however it stopped: the toggle key,
        -- Minimize, or the window going away under us. Never by it coming up.
        local up = false
        pcall(function() up = win ~= nil and win._gui ~= nil and win._visible == true end)
        if wasUp and not up then rescueSoon() end
        wasUp = up
        if not (win and win.AddTab) then
            seen, shown, tries, gone, ADMIN.tab = nil, nil, 0, 0, nil  -- no menu up; the next one gets its own tab
        else
            if win ~= seen then                       -- a rebuild, or the first menu of the session
                seen, shown, tries, gone, ADMIN.tab = win, nil, 0, 0, nil
                pcall(hookUnload, win)
            end
            if shown ~= win and tries < ADMIN.TAB_TRIES then
                tries = tries + 1
                if buildAdminTab(win) then
                    shown = win
                elseif tries >= ADMIN.TAB_TRIES and type(warn) == "function" then
                    warn("[EazyCheats admin] no Admin tab on this menu after " .. ADMIN.TAB_TRIES
                        .. " attempts; the rest of the menu is unaffected")
                end
            end
            -- The hub sweeps its own ScreenGuis by name ("EZGuiV1") and can take the menu away without
            -- Destroy — and so without OnUnload — ever running. Our window still published, its GUI
            -- gone and no hand-over in progress: the hub is down, so we go down with it rather than
            -- beacon on forever.
            local swept = false
            pcall(function()
                swept = ADMIN.gui ~= nil and ADMIN.gui.Parent == nil
                    and not (getgenv and getgenv().EazyCheats_Handoff)
            end)
            gone = swept and (gone + 1) or 0
            if gone >= ADMIN.SWEPT_TICKS then ADMIN.stop() end
        end
        task.wait(0.1)
    end
end)

-- Unload hook the loader/hub can call to tear the admin script down cleanly. The hub's own unload gets
-- there by itself now (hookUnload above), so this is for the loader and for unloading by hand.
if getgenv then getgenv().EazyCheats_Admin_Unload = ADMIN.stop end

return ADMIN
