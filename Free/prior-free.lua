-- EazyCheats - Custom ESP + Combat + Settings
-- Built for Prior Extinction using BillboardGuis
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
--     Full verified game-data reference: README.md in the project root.
-- ============================================================================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera


local PX = {}          -- shared state table (keeps us under Luau's 200-local limit)

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
PX.FOOD_COLOR = Color3.fromRGB(230, 140, 50)
PX.WATER_COLOR = Color3.fromRGB(40, 210, 230)
PX.INFECT_COLOR = Color3.fromRGB(175, 90, 230)
PX.INFECT_MAX = 100       -- CombatData.Infection.InfectionAmount
PX.infectCur = {}         -- [replicaId] = Stats.Infection
PX.foodSeenMax, PX.waterSeenMax = {}, {}   -- others' MaxStats rarely arrive; scale bars to the highest value seen
function PX.espVital(bg, vitals, label, cur, fillMax, textMax, color, showBar, showNum)
    local known = type(cur) == "number"
    local barOn = showBar and known
    if bg then
        bg.Visible = barOn
        if barOn then
            local f = bg:FindFirstChild("Fill")
            if f then f.Size = UDim2.new(math.clamp(cur / math.max(fillMax or cur, 1), 0, 1), 0, 1, 0) end
            local t = bg:FindFirstChild("Text")
            if t then t.Text = label .. " " .. math.floor(cur) .. (textMax and ("/" .. math.floor(textMax)) or "") end
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
PX.SHOW_INDICATORS = true       -- show the enabled-modules list (top-right)

-- Auto grow
PX.AUTO_GROW = false

-- Auto water (drink replication — adds water with no water source and no animation)
PX.AUTO_WATER = false
-- Sip pacing, for the same reason as PX.FAST_EAT_RATE. This loop used to send 4 sips every 0.1s
-- (40/sec) — the exact pattern PriorDiagScan proved fatal for Bite, where 40/sec credited +0.00
-- food while 1.25/sec credited +4.80. Sip has NOT been measured at 40/sec, so this is a
-- precaution rather than a confirmed fix: same remote, same consumption replica, same shape of
-- call, so assuming Sip is exempt would be optimistic. Sip IS confirmed to credit at low rate
-- (+0.2258 water over 84 events), which is what makes slowing it down safe to do blind.
PX.SIP_RATE = 4                  -- sips/sec while topping up (provisional; not yet bisected)
PX.FORCE_EAT = false             -- eat the nearest consumable regardless of diet
PX.LEAVE_SCRAPS = false          -- stop eating a source before fully depleting it
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
PX.FAST_EAT = true
PX.FAST_EAT_RATE = 4             -- bites/sec while Fast Eat is on (provisional; see above)
-- Freeze Food / Freeze Water. Holding the game's own action state ("Consuming" / "Drinking") stops
-- that stat's drain tick — this is exactly what used to freeze Food by accident when Force Eat kept
-- "Consuming" asserted the whole time it ran. Same trick, now deliberate and on its own toggle.
PX.FREEZE_FOOD = false
PX.FREEZE_WATER = false
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
PX.FLY = false                   -- client-driven 3D fly + "Flying" state spoof
PX.FLY_SPEED = 70
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
PX.AUTO_FLY_ALT = 300            -- studs held above the ground below
PX.ANTI_AFK = false             -- defeat Roblox's ~20min idle disconnect (Auto Fly needs this)
-- Speed Boost: sustained sprint multiplier applied through the game's own physics velocity chain.
-- Override Movement._speed each Heartbeat so the tween targets the boosted value, then
-- LinearVelocity picks it up through MoveSpeed. The velocity clamp (SpeedOverride*1.25) gives
-- enough headroom: at 1.35x the clamp sits at 1.69x, well above actual speed. Anti-cheat
-- tolerance is ~1.45x ServerSpeed + 2 — 1.35x sprinting stays under that ceiling.
PX.SPEED_BOOST = false           -- sustained speed multiplier toggle
PX.SPEED_MULT = 1.35             -- sustained multiplier (1.0–1.4)
-- Escape Burst: short high-speed burst to break away from chasers. Activates on keybind, runs
-- for BURST_DUR seconds, then reverts to normal (or sustained if SPEED_BOOST is on). Cooldown
-- prevents spam.
PX.SPEED_BURST = false           -- burst feature toggle
PX.SPEED_BURST_MULT = 1.45       -- burst multiplier (1.0–1.5)
PX.SPEED_BURST_DUR = 4           -- burst duration (seconds)
PX.SPEED_BURST_CD = 15           -- cooldown between bursts (seconds)
PX.SPEED_BURST_ACTIVE = false    -- runtime: a burst is in progress
PX.SPEED_BURST_READY = true      -- runtime: cooldown has elapsed
PX.SPEED_BURST_T = 0             -- runtime: os.clock() when burst started
-- Instant Acceleration: zeros the tween-to-speed delay so speed changes feel instant.
PX.INSTANT_ACCEL = false

-- AFK Farm: fly to food, eat it, fly to the next. Calcium priority when low, player avoidance.
PX.AFK_FARM = false
PX.AFK_FARM_SPEED = 50          -- fly speed (studs/s)
PX.AFK_FARM_AVOID = 200         -- skip food within this many studs of another player
PX.AFK_FARM_WALK = true         -- press W via VIM to signal walking for Activity gain
PX.AFK_FARM_MEAT = false        -- also target corpses / meat chunks (obeys player-avoid radius)
PX.AFK_FARM_SAFETY = true       -- fly underground and rest when health < 50%, resume at 100%
PX.AFK_FARM_ADMIN_KICK = true   -- leave the server if an admin joins (or is already here) while AFK Farm runs


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
pcall(function()
    local g = getgenv and getgenv()
    if g and type(g.EazyCheats_Unload) == "function" then
        local prev = g.EazyCheats_Unload
        g.EazyCheats_Unload = nil
        prev()          -- tears down the previous instance completely
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
            local nameLabel   = container:FindFirstChild("NameLabel")
            local infoLabel   = container:FindFirstChild("InfoLabel")
            local healthBG    = container:FindFirstChild("HealthBG")
            local stamBG      = container:FindFirstChild("StamBG")
            local weightLabel = container:FindFirstChild("WeightLabel")
            local bleedLabel  = container:FindFirstChild("BleedLabel")

            -- Live size adjustment (Text Size / Health Bar / Stamina Bar sliders) — applied every
            -- frame so slider changes take effect on existing billboards, not just newly-built ones.
            if nameLabel then nameLabel.TextSize = PX.TEXT_SIZE; nameLabel.Size = UDim2.new(1, 0, 0, PX.TEXT_SIZE + 3) end
            if infoLabel then infoLabel.TextSize = math.max(6, PX.TEXT_SIZE - 2); infoLabel.Size = UDim2.new(1, 0, 0, PX.TEXT_SIZE + 1) end
            if weightLabel then weightLabel.TextSize = math.max(6, PX.TEXT_SIZE - 3); weightLabel.Size = UDim2.new(1, 0, 0, PX.TEXT_SIZE) end
            if bleedLabel then bleedLabel.TextSize = math.max(6, PX.TEXT_SIZE - 3); bleedLabel.Size = UDim2.new(1, 0, 0, PX.TEXT_SIZE) end
            if healthBG then
                healthBG.Size = UDim2.new(PX.HEALTH_BAR_WIDTH, 0, 0, PX.HEALTH_BAR_HEIGHT)
                local ht = healthBG:FindFirstChild("Text"); if ht then ht.TextSize = math.clamp(PX.HEALTH_BAR_HEIGHT + 2, 7, 18) end
            end
            if stamBG then
                stamBG.Size = UDim2.new(PX.STAM_BAR_WIDTH, 0, 0, PX.STAM_BAR_HEIGHT)
                local st = stamBG:FindFirstChild("Text"); if st then st.TextSize = math.clamp(PX.STAM_BAR_HEIGHT + 2, 7, 18) end
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
                local fill = healthBG:FindFirstChild("Fill")
                if fill then fill.Size = UDim2.new(healthPct, 0, 1, 0); fill.BackgroundColor3 = hColor end
                local bFill = healthBG:FindFirstChild("BleedFill")
                if bFill then
                    if PX.BLEED_ESP and bleeding and PX.SHOW_HEALTH and bleedPct > 0 then
                        bFill.Position = UDim2.new(math.max(0, healthPct - bleedPct), 0, 0, 0)
                        bFill.Size = UDim2.new(bleedPct, 0, 1, 0); bFill.Visible = true
                    else bFill.Visible = false end
                end
                local ht = healthBG:FindFirstChild("Text")
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
                    local sFill = stamBG:FindFirstChild("Fill")
                    if sFill then sFill.Size = UDim2.new(math.clamp(sc / maxv, 0, 1), 0, 1, 0) end
                    local st = stamBG:FindFirstChild("Text")
                    if st then st.Text = "Stamina " .. math.floor(sc) ..
                        ((type(sm) == "number") and ("/" .. math.floor(maxv)) or "") end
                end
            end

            -- Food / Water / Infection: bar (sized like stamina) or just the number on the vitals line
            do
                local foodBG, waterBG, infectBG = container:FindFirstChild("FoodBG"), container:FindFirstChild("WaterBG"), container:FindFirstChild("InfectBG")
                local barSize = UDim2.new(PX.STAM_BAR_WIDTH, 0, 0, PX.STAM_BAR_HEIGHT)
                local barText = math.clamp(PX.STAM_BAR_HEIGHT + 2, 7, 18)
                for _, b in ipairs({ foodBG, waterBG, infectBG }) do
                    b.Size = barSize
                    local t = b:FindFirstChild("Text"); if t then t.TextSize = barText end
                end
                local vitals = {}
                local fc, fm = rid and PX.foodCur[rid], rid and PX.foodMax[rid]
                local wc, wm = rid and PX.waterCur[rid], rid and PX.waterMax[rid]
                fm = type(fm) == "number" and fm or nil
                wm = type(wm) == "number" and wm or nil
                if type(fc) == "number" then PX.foodSeenMax[rid] = math.max(PX.foodSeenMax[rid] or 0, fc) end
                if type(wc) == "number" then PX.waterSeenMax[rid] = math.max(PX.waterSeenMax[rid] or 0, wc) end
                PX.espVital(foodBG, vitals, "Food", fc, fm or (rid and PX.foodSeenMax[rid]), fm,
                    PX.FOOD_COLOR, PX.SHOW_FOOD_BAR, PX.SHOW_FOOD_NUM)
                PX.espVital(waterBG, vitals, "Water", wc, wm or (rid and PX.waterSeenMax[rid]), wm,
                    PX.WATER_COLOR, PX.SHOW_WATER_BAR, PX.SHOW_WATER_NUM)
                PX.espVital(infectBG, vitals, "Infection", rid and PX.infectCur[rid], PX.INFECT_MAX, PX.INFECT_MAX,
                    PX.INFECT_COLOR, PX.SHOW_INFECT_BAR, PX.SHOW_INFECT_NUM)
                local vl = container:FindFirstChild("VitalsLabel")
                if vl then
                    vl.Visible = #vitals > 0
                    vl.TextSize = math.max(6, PX.TEXT_SIZE - 3); vl.Size = UDim2.new(1, 0, 0, PX.TEXT_SIZE)
                    if #vitals > 0 then vl.Text = table.concat(vitals, "  ") end
                end
                local lay = container:FindFirstChildOfClass("UIListLayout")
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
    if PX.TRACERS_ENABLED and myRoot then
        pcall(function()
            if not data.tracer then
                data.tracer = Drawing.new("Line")
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
PX.addStep(3, function()
    if not PX.ESP_ENABLED and not PX.CHAMS_ENABLED and not PX.TRACERS_ENABLED then return end
    for _, player in Players:GetPlayers() do
        if player == LocalPlayer then continue end
        if not PX.espCache[player] then PX.createESP(player) end
        PX.updateESP(player)
    end
end)

-- === CLEANUP ===
table.insert(allConnections, Players.PlayerRemoving:Connect(function(player)
    PX.destroyESP(player)
end))

-- Initialize existing players
for _, player in Players:GetPlayers() do
    if player ~= LocalPlayer then
        PX.createESP(player)
    end
end

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
    if type(filtergc) ~= "function" then return nil end

    local found
    pcall(function()
        found = filtergc("table", {Keys = {"TagsFrame", "Tags", "Viewport"}}, true)
    end)
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

    for i = 1, n do
        local item = list[i]
        local e = PX.mmapPool[i]
        if e then
            if e.mini then
                if miniOn then
                    local ok, tp = pcall(function() return mapObj:GetTagPosition(item.pos) end)
                    if ok and tp then
                        e.mini.Position = UDim2.fromOffset(tp.X, tp.Y)
                        e.mini.BackgroundColor3 = item.color
                        local okd, dist = pcall(function() return mapObj:GetDistanceFromCenter(tp) end)
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
                    local ok, ep = pcall(function() return mapObj:TransformPosition(item.pos) end)
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
PX.ABS_FULL_INTERVAL = 2   -- seconds between unconditional sweeps

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
    local pg = LocalPlayer:FindFirstChild("PlayerGui")
    local sg = pg and pg:FindFirstChild("SleepGui")
    if sg then
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
        PX.weatherCtrl = require(PX.WATER_RS.Packages.Knit).GetController("WeatherController")
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
    local WC = PX.getWeatherController()
    if not (WC and PX.customTime) then return end
    pcall(function() WC:ApplyLightingTransition(0, true) end)
    pcall(function() WC:ApplyRenderClockTime(PX.customTimeHour, PX.timePresetFor(PX.customTimeHour)) end)
end

function PX.setCustomTime(on)
    PX.customTime = on
    local WC = PX.getWeatherController()
    if not WC then
        -- Knit unreachable: the RenderStep below still pins ClockTime, which is all the old version
        -- ever did. Say so rather than leaving a toggle that looks live but can't light anything.
        pcall(function() Hub:Notify("Custom Time: weather controller unreachable — clock only, lighting unchanged", 6) end)
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
PX.NO_FOG = false
do
    local saved = nil
    PX.enableNoFog = function()
        if saved then return end
        saved = { FogEnd = Lighting.FogEnd, FogStart = Lighting.FogStart, atmos = {} }
        pcall(function()
            for _, e in ipairs(Lighting:GetChildren()) do
                if e:IsA("Atmosphere") then
                    saved.atmos[e] = { Density = e.Density, Haze = e.Haze }
                end
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
                    end
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
            local Knit = require(PX.WATER_RS.Packages.Knit)
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

-- Auto Water: hold Water at the cap, continuously, WITHOUT freezing it.
--
-- Freezing (holding the "Drinking" action open forever) is a separate feature and a different
-- trade — it suppresses the drain tick, which is visible server-side for as long as it is held.
-- This keeps the stat genuinely topped up instead: it watches the replica, and the moment Water
-- dips below the cap it opens the drinking state, sips until full, then RELEASES the state again.
-- Between top-ups nothing is held, so it is not a freeze.
--
-- The old loop polled once a second whether or not anything had changed, so a dip could sit
-- unfilled for up to a second and the bar visibly sawtoothed. Now the poll interval is driven by
-- what it finds: quick while refilling, relaxed while full. Sustained sip rate while topped up
-- stays near the legit 1/sec because a full bar only needs the occasional sip.
task.spawn(function()
    local drinkingActive = false
    local warnedNoReplica = false
    local function setDrinking(state)
        -- Freeze Water owns the "Drinking" state while it's on; Auto Water finishing a top-up must
        -- not clear it, or the freeze would silently release the moment water hit full.
        if state == false and PX.FREEZE_WATER then return end
        local charId = getCharReplicaId()
        if charId and ReplicaSignal then
            pcall(function() ReplicaSignal:FireServer(charId, "SetAction", "Drinking", state) end)
        end
        drinkingActive = state
    end

    -- Clear a "Drinking" state left asserted by an earlier build or config. Done once, and never
    -- against Freeze Water, which owns that state deliberately.
    local clearedStale = false

    while not PX.UNLOADED do
        pcall(function()
            if not clearedStale then
                clearedStale = true
                if not PX.FREEZE_WATER then setDrinking(false) end
            end

            -- AFK Farm keeps water topped up on its own, the same way it eats.
            if not ((PX.AUTO_WATER or PX.AFK_FARM) and ReplicaSignal) then return end

            local cid = PX.getConsumptionReplicaId()
            if not cid then
                -- Say so instead of doing nothing quietly. This is exactly the failure that used
                -- to look like "Auto Water is broken" with no way to tell why.
                if not warnedNoReplica then
                    warnedNoReplica = true
                    -- PX.Hub, not Hub: the `local Hub` is declared further down the file, so the
                    -- bare name would be a nil global from up here.
                    pcall(function()
                        if PX.Hub then
                            PX.Hub:Notify("Auto Water: waiting for the consumption replica - walk near any food or water once", 6)
                        end
                    end)
                end
                return
            end
            warnedNoReplica = false

            -- HOW FULL IS FULL — and why the old test failed on a decimal bar.
            --
            -- Water is not scaled like Food. A live replica read: MaxStats.Water = 3.81 with
            -- Stats.Water = 0.85. Against a maximum of 3.81, the old "cur < max - 0.5" test left a
            -- dead zone worth THIRTEEN PERCENT of the whole bar — anything above 3.31 counted as
            -- full and no sip was sent. That is exactly the "doesn't fill when it's in . form"
            -- symptom: on a small decimal maximum the constant margin swallows most of the bar.
            -- The margin is a fraction of the bar now, so it behaves the same whether the maximum
            -- is 3.8 or 3800.
            local cur, max = PX.myWater()
            local wantSip = true
            if cur and max and max > 0 then
                wantSip = cur < max - math.max(max * 0.002, 0.001)
            end
            -- Unreadable Water (nil) keeps sipping, the same call Force Eat makes for Food:
            -- better to top up needlessly than to sit dry because a stat could not be read.

            if wantSip then
                -- ONE sip per tick, never stacked into a frame. Rate is the tick period below.
                -- Stacking four into a single frame is what made Bite credit nothing at all.
                ReplicaSignal:FireServer(cid, "Sip")
            end

            -- NO "Drinking" STATE IS HELD. Force Eat found the same thing for Food and the note
            -- above its loop spells it out: asserting the action state is what FREEZES the stat,
            -- because the drain tick stops while you are in it. The gain comes from the Sip
            -- action itself, not from the state. Holding it here would make Auto Water a second
            -- Freeze Water, which is the thing this must not be.
            if drinkingActive then setDrinking(false) end
        end)

        -- Clamped at 20/sec so a bad config value cannot re-create the burst that broke Bite.
        task.wait(1 / math.clamp(PX.SIP_RATE or 4, 0.5, 20))
    end
end)

-- ═══════════════════════════════════════
-- FREEZE FOOD / FREEZE WATER
-- ═══════════════════════════════════════
-- The game suppresses a stat's drain tick while you're in that stat's action state. We found this
-- the hard way: Force Eat used to hold SetAction "Consuming" for as long as it ran, and Food stopped
-- draining entirely. Holding the state on purpose is therefore the freeze, and "Drinking" is the
-- same mechanism for Water.
--
-- Re-asserted on a timer rather than set once, because a respawn (or any server-side state reset)
-- clears it — a fire-and-forget freeze would quietly stop working after your first growth respawn.
task.spawn(function()
    local prevFood, prevWater = false, false
    local function setAction(name, state)
        local charId = getCharReplicaId()
        if charId and ReplicaSignal then
            pcall(function() ReplicaSignal:FireServer(charId, "SetAction", name, state) end)
        end
    end
    while not PX.UNLOADED do
        -- Food. On the off->on and on->off edges we send once; while held we keep re-asserting.
        if PX.FREEZE_FOOD then
            setAction("Consuming", true)
        elseif prevFood then
            setAction("Consuming", false)      -- released: let Food drain normally again
        end
        prevFood = PX.FREEZE_FOOD

        if PX.FREEZE_WATER then
            setAction("Drinking", true)
        elseif prevWater then
            setAction("Drinking", false)
        end
        prevWater = PX.FREEZE_WATER

        task.wait(1.0)
    end
    -- Unloading with a freeze still on would strand the character in the eating/drinking state.
    if prevFood then pcall(setAction, "Consuming", false) end
    if prevWater then pcall(setAction, "Drinking", false) end
end)

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
    pcall(function() CData = require(PX.WATER_RS.Shared.ConsumptionData) end)
    pcall(function() CState = require(PX.WATER_RS.Common.CharacterState) end)
    pcall(function() CC = require(PX.WATER_RS.Packages.Knit).GetController("ConsumptionController") end)  -- CorpseData (meat)
    pcall(function() CBuf = require(PX.WATER_RS.Common.Buffers.ConsumableBuffer) end)
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
        -- Freeze Food owns the "Consuming" state while it's on — don't let Force Eat clear it.
        if state == false and PX.FREEZE_FOOD then return end
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
    local function actionsFor(name, id)
        local res = {}
        local entry = CData and CData.FoliageConsumables and CData.FoliageConsumables[name]
        local actions = entry and entry.Actions
        if type(actions) == "table" then
            for i, a in ipairs(actions) do
                if type(a) == "table" then
                    local food, water, spawned = bufferCheck(id, i)
                    if food ~= nil then
                        if not spawned or (food + (water or 0)) <= 0 then continue end
                    end
                    res[#res + 1] = { index = i, nutrition = a.Nutrition or {},
                        allowed = a.Category ~= nil and dietAllowed(a.Category),
                        food = food or 0 }
                end
            end
        end
        if #res == 0 then
            local food, water, spawned = bufferCheck(id, 1)
            if food and spawned and (food + (water or 0)) > 0 then
                res[1] = { index = 1, nutrition = {}, allowed = false, food = food }
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
                allowed = a.Category ~= nil and dietAllowed(a.Category) }
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
        local bId, bIdx, bDist   -- 1) provides the wanted (lowest) nutrient
        local aId, aIdx, aDist   -- 2) diet-allowed (gives nutrition)
        local fId, fIdx, fDist   -- 3) anything at all (vegetation included)
        local function consider(id, idx, nutrition, allowed, dist)
            if not id then return end
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
        for _, tagged in ipairs(Collection:GetTagged("ConsumableFoliage")) do
            local id = tagged:GetAttribute("ID")
            if id then
                local pos
                pcall(function() pos = tagged:GetPivot().Position end)
                if pos then
                    local d = (pos - rootPos).Magnitude
                    local acts = actionsFor(tagged.Name, id)
                    for _, a in ipairs(acts) do consider(tonumber(id), a.index, a.nutrition, a.allowed, d) end
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
                    if pos then consider(tonumber(id), act.index, act.nutrition, act.allowed, (pos - rootPos).Magnitude) end
                end
            end
        end
        if rId then return rId, rIdx end   -- in range, so it will actually connect
        if bId then return bId, bIdx end
        if aId then return aId, aIdx end
        return fId, fIdx
    end
    -- Fallback (require unavailable): old behavior — nearest consumable, action 1.
    local function nearestAny(rootPos)
        local bestId, bestDist
        for _, tagged in ipairs(Collection:GetTagged("ConsumableFoliage")) do
            local id = tagged:GetAttribute("ID")
            if id then
                local pos
                pcall(function() pos = tagged:GetPivot().Position end)
                if pos then
                    local d = (pos - rootPos).Magnitude
                    if not bestDist or d < bestDist then bestId, bestDist = tonumber(id), d end
                end
            end
        end
        return bestId, 1
    end
    local cachedId, cachedIdx, lastScan = nil, nil, 0
    -- Was 2s. That's the other half of "I'm in range and it won't eat": walking up to a plant left
    -- the old, far target cached for up to two seconds before anything noticed the better one at
    -- your feet. Half a second is responsive enough to feel immediate and still only twice a
    -- second on a list this size.
    local SCAN_INTERVAL = 0.5   -- re-scan for a new target (the expensive part)
        -- ── AFK Farm helpers (exposed on PX so the flight loop can reach them) ──
    PX.afkConsumeId = consumeId
    PX.afkBufCheck = bufferCheck

    function PX.afkPickFood(rootPos, exclude)
        local EAT = 22
        pcall(function() if PX.khRange then EAT = PX.khRange() end end)
        local avoidR = PX.AFK_FARM_AVOID or 200

        local wantCalcium = false
        pcall(function()
            if CState and CState.Wellbeing and CState.Wellbeing.SavableStats then
                local cal = CState.Wellbeing.SavableStats.Calcium
                if cal and cal < 1 then wantCalcium = true end
            end
        end)
        local want = wantCalcium and "Calcium" or lowestNutrient()

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

        local bestId, bestIdx, bestPos, bestScore

        local function consider(id, idx, nutrition, allowed, dist, pos)
            if not id or not pos then return end
            if exclude and exclude[id] then return end
            for _, pp in ipairs(playerPositions) do
                if (pp - pos).Magnitude <= avoidR then return end
            end
            local s = 0
            if want and nutrition[want] and nutrition[want] > 0 then s = s + 10000 end
            if allowed then s = s + 5000 end
            s = s - dist
            if not bestScore or s > bestScore then
                bestId, bestIdx, bestPos, bestScore = id, idx, pos, s
            end
        end

        for _, tagged in ipairs(Collection:GetTagged("ConsumableFoliage")) do
            local id = tagged:GetAttribute("ID")
            if id then
                local pos
                pcall(function() pos = tagged:GetPivot().Position end)
                if pos then
                    local d = (pos - rootPos).Magnitude
                    local acts = actionsFor(tagged.Name, id)
                    for _, a in ipairs(acts) do consider(tonumber(id), a.index, a.nutrition, a.allowed, d, pos) end
                end
            end
        end
        if PX.AFK_FARM_MEAT and CC and CC.CorpseData then
            for id, data in pairs(CC.CorpseData) do
                local act = data and corpseAction(data.Name)
                local croot = act and data.Root
                if croot then
                    local pos
                    pcall(function() pos = croot:IsA("BasePart") and croot.Position or croot:GetPivot().Position end)
                    if pos then consider(tonumber(id), act.index, act.nutrition, act.allowed, (pos - rootPos).Magnitude, pos) end
                end
            end
        end
        return bestId, bestIdx, bestPos
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
    local STALL_LIMIT = 5          -- switch targets after this many stalled bites (matches the game)
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
                        if fcur >= fmax - 0.05 then hungry = false end                       -- full
                    elseif fcur <= fmax - 1 then
                        hungry = true                                                        -- 1 food down
                    end
                    wantEat = hungry
                end
                -- Unreadable Food (nil) leaves wantEat true: better to keep eating than to starve.
            end
            if PX.FORCE_EAT and not PX.AFK_FARM and ReplicaSignal and cid and wantEat then
                -- Re-scan for a target only every SCAN_INTERVAL seconds (the expensive part)
                local now = os.clock()
                local forceRescan = stallCount >= STALL_LIMIT
                if now - lastScan >= SCAN_INTERVAL or not cachedId or forceRescan then
                    if forceRescan then
                        stallCount = 0; lastBiteFood = nil; stallTarget = nil
                    end
                    lastScan = now
                    local char = LocalPlayer.Character
                    local root = char and (char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Body")
                        or char:FindFirstChildWhichIsA("BasePart"))
                    if root then
                        local newId, newIdx
                        if CData and CState then
                            newId, newIdx = pickBite(root.Position, lowestNutrient())
                        else
                            newId, newIdx = nearestAny(root.Position)
                        end
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
                        if food ~= nil and ((not spawned or total <= 0) or (PX.LEAVE_SCRAPS and food <= 5)) then
                            cachedId = nil  -- force rescan next tick
                        else
                            local b = buffer.create(5)
                            buffer.writeu32(b, 0, math.floor(id))
                            buffer.writeu8(b, 4, idx or 1)
                            ReplicaSignal:FireServer(cid, "Bite", b)
                            -- Stall detection: the game cancels after 5 bites that don't reduce food.
                            if food then
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
        -- Fast: PX.FAST_EAT_RATE bites/sec. Normal: the game's own 1-bite-per-0.8s rate.
        -- Clamped at 20/sec so a bad config value cannot re-create the burst that broke this.
        task.wait(PX.FAST_EAT and (1 / math.clamp(PX.FAST_EAT_RATE or 4, 0.5, 20)) or 0.8)
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
task.spawn(function()
    local cleaning = false
    local function setCleaning(state, force)
        -- Infinite Oxygen owns the cleaning state while it's on, so Auto Cleanliness reaching full
        -- must not clear it or the oxygen hold would silently release. Same guard Freeze Water uses
        -- over Auto Water's setDrinking(false).
        if state == false and PX.INF_OXYGEN then return end
        if state == cleaning and not force then return end
        local charId = getCharReplicaId()
        if charId and ReplicaSignal then
            pcall(function() ReplicaSignal:FireServer(charId, state and "CleanlinessStart" or "CleanlinessStop") end)
        end
        cleaning = state
    end
    local oxyTick = 0
    while not PX.UNLOADED do
        if PX.INF_OXYGEN and ReplicaSignal then
            -- Held unconditionally, ignoring cleanliness — the point is the STATE, not the stat.
            -- Forced re-assert every 5s because the server may end the action on its own once
            -- you're fully clean, and the dedupe above would otherwise never re-fire it.
            oxyTick = oxyTick + 1
            setCleaning(true, (oxyTick % 5) == 0)
        elseif PX.AUTO_CLEAN and ReplicaSignal then
            local charId = getCharReplicaId()
            local val = charId and PX.cleanliness[charId]      -- nil until the first ReplicaSet update
            if val and val >= 99 then
                setCleaning(false)                             -- clean enough → leave the state
            else
                setCleaning(true)                              -- dirty (or unknown) → keep cleaning
            end
        elseif cleaning then
            setCleaning(false)
        end
        task.wait(1.0)
    end
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
-- MOVEMENT GOVERNOR  (the "we detected teleport" fix)
-- ═══════════════════════════════════════
-- The server now kicks with "we detected teleport". Confirmed SERVER-side by SpeedGuardScan:
-- 463 client modules scanned, the kick text is in none of them, and a hook on Kick() never fires.
-- So there is nothing to disable — the only lever is not tripping it.
--
-- WHAT IT ACTUALLY MEASURES. The wording names displacement, not speed, and that distinction is
-- the whole design. Character CFrame replicates on its own schedule (~20 Hz), NOT once per frame,
-- so what the server compares is the gap between two consecutive samples:
--
--     studs per sample  =  speed / sampleRate
--
-- Which means a smooth 5000 studs/s glide and a single 250-stud hop are the SAME EVENT to the
-- server. That is why Biome Travel (5000) and warpToCorpse (one instant jump)
-- all trip the same detector despite looking like different features — and why fixing them
-- one at a time, each with its own hand-tuned number, would be eight chances to get it wrong.
-- Everything that moves the root goes through here instead.
--
-- TWO SEPARATE BUDGETS, because they are separate failure modes:
--   GOV_SPEED     sustained studs/second — bounds a glide
--   GOV_STEP_MAX  studs in any ONE CFrame write — bounds a hop, and is what actually stops a
--                 teleport from ever existing as a teleport
-- A mover can satisfy one and violate the other, so both are enforced on every write.
-- WHERE THE NUMBERS COME FROM. TeleportRuleScan measured a Juvenile Concavenator's real top
-- sprint at 25.4 studs/s, and the replica turned out to carry the server's own idea of your
-- allowed speed: BaseServerSpeed / ServerSpeed / SprintSpeed / RunSpeed are all replicated to us.
-- That is the number to design against, and it is why a single hardcoded ceiling was always going
-- to be wrong — it changes with the dino, its growth stage and its multipliers. The cap is
-- therefore a MULTIPLE of your own speed, resolved live, with a flat ceiling as a backstop.
--
-- 400 studs/s was kicked in testing. Against a 25 studs/s dino that is 16x, so the old provisional
-- 120 (about 5x) would very likely have been kicked too.
-- NONE OF THIS IS USER-FACING. There is no toggle, no slider and no menu section for the governor,
-- and it cannot be switched off. That is deliberate: the first build exposed five controls for it,
-- and every one of them ended up dragged to maximum — a safety layer you have to configure isn't
-- one. The features are simply built to be safe, and this enforces it underneath.
--
-- Observed in play: 4x the dino's own speed (~101 studs/s) flew clean; 16x (400) was kicked. Every
-- speed slider in the hub is now capped at 100, which is that same clean 4x on a normal dino — so
-- the clamp below should never actually bind. It stays as the backstop for the cases a slider
-- range cannot cover: an unusually slow dino, a growth stage change, or a mover with no slider.
PX.GOVERNOR = true               -- always on; not exposed, not configurable
PX.GOV_MULT = 4                  -- cap = this many times YOUR dino's own top speed
PX.GOV_SPEED = 150               -- flat studs/s backstop on top of the multiple
PX.GOV_STEP_MAX = 25             -- studs per single CFrame write. Roughly one body length.
PX.GOV_MIN = 20                  -- floor for the automatic backoff below
-- The probe-upward path is gone. It existed to creep the speed back up while nothing went wrong,
-- which is a slow walk into a kick — and with the sliders now capped at a known-safe value there
-- is nothing left for it to discover.
PX.govCommanded = nil            -- last position we asked for
PX.govCommandT = 0               -- when we asked (os.clock)
PX.govReverts = 0                -- reverts seen this session
PX.govLastRevert = 0
PX.govCleanSince = 0

-- Your dino's own legitimate top speed, straight off the replica — the same value the server
-- holds, so it is the one thing here that is not a guess. Preference order matters: Sprint is the
-- fastest state a player can legitimately reach, so validating against Walk would leave normal
-- sprinting looking illegal and drag the cap below what the game itself allows.
--
-- Cached for a second because this runs inside per-frame movers and a require + table walk every
-- frame is real cost for a number that only changes on growth or a buff.
function PX.govLegit()
    local now = os.clock()
    if PX.govLegitVal and (now - (PX.govLegitT or 0)) < 1 then return PX.govLegitVal end
    local v
    pcall(function()
        local CS = PX.getCS()
        local d = CS and CS.Replica and CS.Replica.Data
        if not d then return end
        for _, k in ipairs({ "SprintSpeed", "ServerSpeed", "RunSpeed",
                             "BaseSprintSpeed", "BaseServerSpeed", "BaseWalkSpeed" }) do
            local n = tonumber(d[k])
            if n and n > 1 then v = math.max(v or 0, n) end
        end
    end)
    -- 25 is the measured fallback, not an invented one: TeleportRuleScan clocked a real dino at
    -- 25.4 studs/s. If the replica is unreadable we assume a normal dino rather than assuming
    -- something fast, because guessing high here is what gets you disconnected.
    PX.govLegitVal = v or 25
    PX.govLegitT = now
    return PX.govLegitVal
end

-- The effective ceiling: the lower of "a multiple of what this dino can actually do" and the flat
-- backstop. Both apply, so raising the slider cannot lift you past what your dino justifies.
function PX.govCeiling()
    return math.min(PX.GOV_SPEED, PX.govLegit() * (PX.GOV_MULT or 1.5))
end

-- Clamp one movement step. Callers pass where they ARE, where they WANT to be, the frame delta
-- and the speed they'd like; they get back the furthest point they're allowed to occupy.
--
-- Returns the clamped position AND whether it was clamped, so a mover can tell "arrived" from
-- "still travelling" — without that second return a governed mover reads its own throttling as
-- having reached the destination and stops short.
function PX.govNext(fromPos, toPos, dt, wantSpeed)
    local delta = toPos - fromPos
    local dist = delta.Magnitude
    if dist < 0.001 then return toPos, false end
    if not PX.GOVERNOR then
        PX.govCommanded, PX.govCommandT = toPos, os.clock()
        return toPos, false
    end

    -- dt is clamped before use: a frame hitch (alt-tab, streaming stall) produces a huge dt, and
    -- speed*dt would then authorise exactly the giant jump this function exists to prevent.
    local ceiling = PX.govCeiling()
    local budget = math.min(ceiling, wantSpeed or ceiling) * math.min(dt or 0.016, 0.1)
    if budget > PX.GOV_STEP_MAX then budget = PX.GOV_STEP_MAX end

    local out, clamped
    if dist <= budget then out, clamped = toPos, false
    else out, clamped = fromPos + delta.Unit * budget, true end
    PX.govCommanded, PX.govCommandT = out, os.clock()
    return out, clamped
end

-- Glide to a destination that a caller would previously have jumped to. YIELDS — call it from a
-- task.spawn, never from inside a PX.addStep (a wait in a step stalls every system after it).
-- Returns true if we got within `arrive` studs before the timeout.
function PX.govGlide(root, destPos, wantSpeed, timeout, arrive, faceCF)
    local deadline = os.clock() + (timeout or 20)
    local hit = arrive or 6
    while not PX.UNLOADED and os.clock() < deadline do
        if not (root and root.Parent) then return false end
        local pos = root.Position
        if (destPos - pos).Magnitude <= hit then return true end
        local nextPos = PX.govNext(pos, destPos, 0.03, wantSpeed)
        pcall(function()
            root.CFrame = faceCF and (CFrame.new(nextPos) * faceCF) or CFrame.new(nextPos)
            root.AssemblyLinearVelocity = Vector3.zero
            root.AssemblyAngularVelocity = Vector3.zero
        end)
        task.wait(0.03)
    end
    return (root and root.Parent and (destPos - root.Position).Magnitude <= hit) or false
end

-- ═══════════════════════════════════════
-- SPEED BOOST + ESCAPE BURST (physics velocity, NOT CFrame — governor does not interfere)
-- ═══════════════════════════════════════
-- Pipeline: ServerSpeed → Movement._speed → tweened NumberValue → MoveSpeed → LinearVelocity.
-- We multiply _speed every frame; the tween picks up the new target and the velocity chain
-- follows naturally. The game's own 1.25x velocity clamp (SpeedOverride*1.25) gives headroom
-- for both multipliers (1.35x → clamp at 1.69x; 1.45x → clamp at 1.81x), and the server
-- anti-cheat ceiling (~1.45x ServerSpeed + 2) is cleared by both targets.
--
-- Instant Acceleration zeroes BaseAcceleration so the tween snaps instead of interpolating.
-- We restore the original value when the toggle is off or on unload.
PX.speedOrigAccel = nil          -- original BaseAcceleration value, saved on first override
PX.speedConn = nil               -- the Heartbeat connection (disconnected on unload)

table.insert(allConnections, RunService.Heartbeat:Connect(function()
    if PX.UNLOADED then return end

    local speedActive = PX.SPEED_BOOST or PX.SPEED_BURST_ACTIVE
    local accelActive = PX.INSTANT_ACCEL

    if not speedActive and not accelActive then return end

    local CS = PX.getCS()
    if not CS then return end
    local mov = CS.Movement
    local rep = CS.Replica
    if not mov or not rep then return end
    local data = rep.Data
    if not data then return end

    local serverSpeed = tonumber(data.ServerSpeed)
    if not serverSpeed or serverSpeed < 0.1 then return end

    -- Burst timing
    if PX.SPEED_BURST_ACTIVE then
        local elapsed = os.clock() - PX.SPEED_BURST_T
        if elapsed >= PX.SPEED_BURST_DUR then
            PX.SPEED_BURST_ACTIVE = false
            PX.SPEED_BURST_READY = false
            task.delay(PX.SPEED_BURST_CD, function()
                PX.SPEED_BURST_READY = true
            end)
        end
    end

    -- Determine effective multiplier
    if speedActive then
        local mult = 1
        if PX.SPEED_BURST_ACTIVE then
            mult = PX.SPEED_BURST_MULT
        elseif PX.SPEED_BOOST then
            mult = PX.SPEED_MULT
        end
        local boosted = serverSpeed * mult
        pcall(function() mov._speed = boosted end)
        pcall(function()
            if mov._nextSpeed then mov._nextSpeed = boosted end
        end)
    end

    -- Instant Acceleration: zero the tween time so speed snaps
    if accelActive then
        pcall(function()
            if PX.speedOrigAccel == nil and mov.BaseAcceleration then
                PX.speedOrigAccel = mov.BaseAcceleration
            end
            mov.BaseAcceleration = 0
        end)
    elseif PX.speedOrigAccel ~= nil then
        pcall(function() mov.BaseAcceleration = PX.speedOrigAccel end)
        PX.speedOrigAccel = nil
    end
end))

-- Revert watcher. If the server disagrees with where we put ourselves it snaps us back, and that
-- snap is the same judgement the kick is built on — so a revert is a free warning shot and the
-- only honest feedback available from a server-side rule we cannot read.
--
-- Only judged inside 0.2s of a command: once a mover stops commanding, physics legitimately moves
-- us and the gap would otherwise read as a revert forever.
PX.addStep(1, function()
    if PX.UNLOADED or not PX.GOVERNOR or not PX.govCommanded then return end
    local now = os.clock()
    if now - PX.govCommandT > 0.2 then return end
    local root = PX.getLocalPhysicsRoot()
    if not (root and root.Parent) then return end

    -- 50 studs clears ordinary physics jitter without hiding a real snap-back.
    if (root.Position - PX.govCommanded).Magnitude > 50 then
        -- Rate-limited: one revert produces a burst of frames that all look reverted, and
        -- backing off once per frame would collapse the budget to the floor in half a second.
        if now - PX.govLastRevert < 2 then return end
        PX.govLastRevert = now
        PX.govReverts = PX.govReverts + 1
        PX.govCleanSince = now
        do
            local was = PX.GOV_SPEED
            PX.GOV_SPEED = math.max(PX.GOV_MIN, math.floor(PX.GOV_SPEED * 0.6))
            if was ~= PX.GOV_SPEED then
                -- PX.Hub, not Hub: `local Hub` is declared far below this point, so the bare name
                -- here resolves to a nil global and the notify dies inside its own pcall. This
                -- message is the only visible sign the governor is working, so it has to land.
                pcall(function()
                    if PX.Hub then
                        PX.Hub:Notify("Server pushed back — move speed cut " .. was .. " to "
                            .. PX.GOV_SPEED .. " (revert #" .. PX.govReverts .. ")", 6)
                    end
                end)
            end
        end
    end
end)

-- ═══════════════════════════════════════
-- PX.FLY  (v2 — CFrame teleport-drive + "Teleporting" leniency; NO state spoof)
-- ═══════════════════════════════════════
-- v1 got kicked: a non-flight dino can't hold the "Flying" state (needs Data.Abilities.Flight), and the
-- server reverts/flags FLOATING dinos (see Fossil Farm's "feet planted" note). So v2 makes NO state
-- claim. Instead we set the game's own "Teleporting" attribute — the same leniency flag the hub's
-- teleports use so the server doesn't kill/flag an off-ground move — and drive our OWN target position
-- by CFrame each frame, re-asserting it (like Save Dino's pin) so a server revert can't drag us down.
-- No velocity (zeroed) so physics never fights it. WASD camera-relative, Space up, Ctrl/Shift down.
do
    local FLY_UIS = game:GetService("UserInputService")
    local function flyRoot()
        local ch = LocalPlayer.Character
        if not ch then return nil end
        return ch:FindFirstChild("HumanoidRootPart") or ch:FindFirstChild("Body")
            or ch:FindFirstChildWhichIsA("BasePart")
    end
    local function setTP(on)   -- the game's own teleport-leniency flag
        local ch = LocalPlayer.Character
        if ch then pcall(function() ch:SetAttribute("Teleporting", on and true or nil) end) end
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
        setTP(true)

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

        -- Governed. Fly is direction-driven rather than destination-driven, so we work out where
        -- the raw input WANTS us next and let the governor decide how much of that we may have.
        -- Clamping the input speed instead would not be equivalent: a frame hitch makes even a
        -- legal speed produce an illegal single step, and that step is what the server sees.
        local flyFrom = flyPos or root.Position
        flyPos = PX.govNext(flyFrom,
            flyFrom + dir * (PX.FLY_SPEED * math.min(dt or 0.016, 0.1)), dt, PX.FLY_SPEED)
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
        if PX.UNLOADED or not PX.FLY or not flyCF then return end
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
function PX.afGroundY(pos)
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = { LocalPlayer.Character }
    local hit = workspace:Raycast(pos + Vector3.new(0, 600, 0), Vector3.new(0, -4000, 0), params)
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

    if ch and ch:GetAttribute("Teleporting") ~= true then
        pcall(function() ch:SetAttribute("Teleporting", true) end)
    end

    PX.afAngle = (PX.afAngle + (PX.AUTO_FLY_SPEED / radius) * dt) % (math.pi * 2)

    -- Raycasts throttled to ~5/sec. At 25 studs/s the ground below barely moves between frames,
    -- and casting twice per frame (120/sec) is real cost for no accuracy gain.
    PX.afProbeT = (PX.afProbeT or 0) + dt
    local probe = PX.afProbeT >= 0.2
    if probe then PX.afProbeT = 0 end

    -- Drift the centre, testing a full radius AHEAD so the whole circle stays on the map,
    -- not merely its centre. No ground under that point = map edge / void ahead.
    local nextCentre = PX.afCentre + PX.afDriftDir * ((PX.AUTO_FLY_DRIFT or 10) * dt)
    if (not probe) or PX.afGroundY(nextCentre + PX.afDriftDir * radius) then
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
    if probe then PX.afGroundCache = PX.afGroundY(want) end
    local g = PX.afGroundCache
    local wantY = g and (g + (PX.AUTO_FLY_ALT or 300)) or PX.afPos.Y
    -- Rate-limit the climb/descent: snapping hundreds of studs up a cliff in one frame swings
    -- the movement vector off-heading and would cost that tick's credit.
    local dy = math.clamp(wantY - PX.afPos.Y, -60 * dt, 60 * dt)
    -- Governed. The budget carries the +60 climb allowance because dy is folded into the same
    -- vector: without it the governor would read a legal climb as overspeed and throttle the
    -- orbit, dragging the circle off its heading — which costs travel credit for no safety gain.
    PX.afPos = PX.govNext(PX.afPos, Vector3.new(want.X, PX.afPos.Y + dy, want.Z), dt,
        (PX.AUTO_FLY_SPEED or 25) + 60)

    local tangent = Vector3.new(-math.sin(PX.afAngle), 0, math.cos(PX.afAngle))
    PX.afCF = CFrame.lookAt(PX.afPos, PX.afPos + tangent)
    pcall(function()
        root.CFrame = PX.afCF
        root.AssemblyLinearVelocity = Vector3.zero
        root.AssemblyAngularVelocity = Vector3.zero
    end)
end

-- Re-assert after physics so a server revert can't drag us down (same as manual Fly's pin).
function PX.afPin()
    if PX.UNLOADED or not PX.AUTO_FLY or PX.FLY or not PX.afCF then return end
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

    -- Safety: fly underground and rest when health is low
    PX.afkSafetyState = nil    -- nil | "diving" | "settling" | "resting" | "rising"
    PX.afkSafetyDest = nil
    PX.afkSafetyReturn = nil
    PX.afkSafetyPlatform = nil
    PX.afkSafetyT = 0
    local SAFETY_DEPTH = 200
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

    -- Unfiltered rays land on tree canopies in forest; terrain-only rays find the real ground.
    local function terrainY(pos)
        local hit = workspace:Raycast(Vector3.new(pos.X, pos.Y + 100, pos.Z), Vector3.new(0, -2000, 0), TERRAIN_RAY)
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

    local function writeRoot(root, cf)
        pcall(function()
            root.CFrame = cf
            root.AssemblyLinearVelocity = Vector3.zero
            root.AssemblyAngularVelocity = Vector3.zero
        end)
    end

    local function dropTarget(exclude)
        local tgt = PX.afkTarget
        if exclude and tgt and tgt.id then PX.afkExclude[tgt.id] = os.clock() + EXCLUDE_TIME end
        PX.afkTarget = nil
        PX.afkLastScan = 0
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
        PX.afkCF, PX.afkPos, PX.afkTarget = nil, nil, nil
        PX.afkStopWalk()
        if PX.afkSafetyState then
            if PX.afkSafetyState == "resting" then
                pcall(function() PX.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
                pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
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
        if not PX.AFK_FARM or PX.FLY or PX.AUTO_FLY or PX.SAVE_DINO_ACTIVE then
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
        end
        if (root.Position - PX.afkPos).Magnitude > 50 then
            PX.afkPos = root.Position
        end

        noclipOn(ch)

        -- Walk simulation for Activity gain (not while hiding underground)
        if PX.afkSafetyState then
            PX.afkStopWalk()
        elseif PX.AFK_FARM_WALK then PX.afkStartWalk() else PX.afkStopWalk() end

        local now = os.clock()
        local rootPos = root.Position
        local speed = math.max(PX.AFK_FARM_SPEED or 50, 5)

        -- ── Safety: underground rest when health is low ──
        if PX.AFK_FARM_SAFETY then
            local hp, maxHp
            pcall(function() hp = ch:GetAttribute("Health"); maxHp = ch:GetAttribute("MaxHealth") end)
            if type(hp) == "number" and type(maxHp) == "number" and maxHp > 0 then
                local pct = hp / maxHp
                if not PX.afkSafetyState and pct < 0.5 then
                    PX.afkSafetyState = "diving"
                    PX.afkSafetyReturn = rootPos
                    local groundY = terrainY(rootPos) or rootPos.Y
                    local targetY = groundY - SAFETY_DEPTH
                    local voidY
                    pcall(function() voidY = workspace.FallenPartsDestroyHeight end)
                    if voidY and targetY < voidY + 50 then targetY = voidY + 50 end
                    PX.afkSafetyDest = Vector3.new(rootPos.X, targetY, rootPos.Z)
                    PX.afkTarget = nil
                end
                if PX.afkSafetyState == "resting" and pct >= 0.99 then
                    PX.afkSafetyState = "rising"
                    PX.afkSafetyT = now
                    -- Stand up (press R to toggle off rest)
                    pcall(function() PX.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
                    pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
                    if PX.afkSafetyPlatform then pcall(function() PX.afkSafetyPlatform:Destroy() end); PX.afkSafetyPlatform = nil end
                    pcall(function() root.Anchored = false end)
                end
            end
        elseif PX.afkSafetyState then
            -- Safety was toggled off mid-hide. Only send R if we actually laid down (resting).
            if PX.afkSafetyState == "resting" then
                pcall(function() PX.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
                pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
            end
            if PX.afkSafetyPlatform then pcall(function() PX.afkSafetyPlatform:Destroy() end); PX.afkSafetyPlatform = nil end
            pcall(function() root.Anchored = false end)
            PX.afkSafetyState = nil
        end

        if PX.afkSafetyState then
            if PX.afkSafetyState == "diving" then
                PX.afkPos = PX.govNext(PX.afkPos, PX.afkSafetyDest, dt, speed)
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
                    pcall(function() PX.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
                    pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
                    PX.afkSafetyState = "resting"
                    PX.afkSafetyT = now
                end
            elseif PX.afkSafetyState == "resting" then
                writeRoot(root, PX.afkCF)
            elseif PX.afkSafetyState == "rising" then
                local dest = PX.afkSafetyReturn or (PX.afkPos + Vector3.new(0, SAFETY_DEPTH + 50, 0))
                PX.afkPos = PX.govNext(PX.afkPos, dest, dt, speed)
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

        -- ── Pick a target (only when we have none; a target is kept until eaten out or given up) ──
        if not PX.afkTarget and PX.afkPickFood and now - PX.afkLastScan >= SCAN_INTERVAL then
            PX.afkLastScan = now
            for id, t in pairs(PX.afkExclude) do
                if t <= now then PX.afkExclude[id] = nil end
            end
            local id, idx, pos = PX.afkPickFood(rootPos, PX.afkExclude)
            if id and pos then
                PX.afkTarget = { id = id, idx = idx, pos = pos, groundY = terrainY(pos), misses = 0,
                    deadline = now + (pos - rootPos).Magnitude / speed * 2 + 10 }
            end
        end

        local tgt = PX.afkTarget
        if not tgt then
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
            local floorHere = (terrainY(PX.afkPos) or -math.huge) + stand
            PX.afkPos = PX.govNext(PX.afkPos, Vector3.new(dest.X, math.max(dest.Y, floorHere), dest.Z), dt, speed)
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
        if (tgt.pos - rootPos).Magnitude <= eatRange and now - PX.afkLastBite >= 1 / math.clamp(PX.FAST_EAT_RATE or 4, 0.5, 20) then
            PX.afkLastBite = now
            local fcur, fmax = PX.myFood()
            if fcur and fmax and fmax > 0 then
                if PX.afkHungry then
                    if fcur >= fmax - 0.05 then PX.afkHungry = false end
                elseif fcur <= fmax - 1 then
                    PX.afkHungry = true
                end
            end
            local cid = PX.afkHungry and PX.afkConsumeId and PX.afkConsumeId()
            if cid and ReplicaSignal then
                local food, water, spawned = PX.afkBufCheck(tgt.id, tgt.idx)
                if food ~= nil and (not spawned or food + (water or 0) <= 0 or (PX.LEAVE_SCRAPS and food <= 5)) then
                    dropTarget(false)
                    return
                end
                if tgt.bitten then
                    if food and tgt.lastFood and food < tgt.lastFood then
                        tgt.misses = 0
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
        end
    end

    function PX.afkFarmPin()
        if PX.UNLOADED or not PX.AFK_FARM or PX.FLY or PX.AUTO_FLY or not PX.afkCF then return end
        if PX.afkSafetyState == "resting" then return end
        local root = PX.getLocalPhysicsRoot()
        if root and not root.Anchored then writeRoot(root, PX.afkCF) end
        local ch = LocalPlayer.Character
        holdAt(ch, PX.afkCF.Position.Y)
        noclipOn(ch)
    end

    table.insert(allConnections, RunService.RenderStepped:Connect(PX.afkFarmAdvance))
    table.insert(allConnections, RunService.Heartbeat:Connect(PX.afkFarmPin))
end

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
        if PX.UNLOADED or not PX.ANTI_AFK then return end
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
-- ═══════════════════════════════════════
-- Reads the same live values the game's Wellbeing menu uses: growth/mass/weight from
-- CharacterState.Replica.Data, nutrition/wellbeing % from CharacterState.Wellbeing.SavableStats.
-- Growth is server-driven, so the "next growth hit" timer anchors to Growth.Mass replica updates and
-- uses the median interval (stable). Sections toggle independently; the card resizes to fit.
do
    local okCS, CS = pcall(function() return require(PX.WATER_RS.Common.CharacterState) end)
    if okCS and CS and PX.ReplicaSetRemote then
        local lastGrowthT, growthInterval, intervals = os.clock(), 60, {}
        local function median(t)
            if #t == 0 then return growthInterval end
            local s = table.clone(t); table.sort(s); return s[math.ceil(#s / 2)]
        end
        table.insert(allConnections, PX.ReplicaSetRemote.OnClientEvent:Connect(function(id, path)
            if PX.UNLOADED or typeof(path) ~= "table" then return end
            if path[1] == "Growth" and path[2] == "Mass" then          -- each Mass update = one growth hit
                local rep = CS.Replica
                if rep and id == rep.Id then
                    local now = os.clock()
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

        local function D() return CS.Replica and CS.Replica.Data end
        local function wbStat(name)
            local v; pcall(function() v = CS.Wellbeing.SavableStats[name] end)
            return type(v) == "number" and math.floor(v) or nil
        end
        local function avg3(a, b, c)
            local s, n = 0, 0; for _, x in ipairs({ a, b, c }) do if x then s = s + x; n = n + 1 end end
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
        title.Text = "STATS"; title.Parent = card
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
                        lStage.Visible = PX.SC_GROWTH; lProg.Visible = PX.SC_GROWTH
                        if PX.SC_GROWTH then
                            local stage = (d and d.Growth and d.Growth.Stage) or (ch and ch:GetAttribute("Stage")) or "?"
                            local nextS = (d and d.Growth and d.Growth.NextStage) or "?"
                            local delta = (d and d.Growth and d.Growth.Delta) or 0
                            lStage.Text = "Growth Stage:  <b>" .. tostring(stage) .. "</b>"
                            lProg.Text = "Progress to " .. tostring(nextS) .. ":  " .. math.floor(delta * 100) .. "%"
                        end
                        lMass.Visible = PX.SC_MASS
                        if PX.SC_MASS then lMass.Text = "Mass Gain Multiplier:  <b>" .. massGainStr() .. "%</b>" end
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
                        lNutHdr.Visible = PX.SC_NUTRITION; lNut.Visible = PX.SC_NUTRITION
                        if PX.SC_NUTRITION then
                            local p, f, c = wbStat("Proteins"), wbStat("Fats"), wbStat("Calcium")
                            lNutHdr.Text = "Nutrition:  " .. avg3(p, f, c) .. "%"
                            lNut.Text = "Proteins " .. fmt(p) .. "   Fats " .. fmt(f) .. "   Calcium " .. fmt(c)
                        end
                        lWbHdr.Visible = PX.SC_WELLBEING; lWb.Visible = PX.SC_WELLBEING; lImm.Visible = PX.SC_WELLBEING
                        if PX.SC_WELLBEING then
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
                        card.Size = UDim2.new(0, (PX.SC_NUTRITION or PX.SC_WELLBEING) and 500 or 270, 0, 40 + math.max(leftH, rightH) + 8)
                    end)
                else
                    card.Visible = false
                end
                task.wait(0.3)
            end
            pcall(function() gui:Destroy() end)   -- clean up on unload
        end)
    end
end

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
    local okSD, SkinData = pcall(function() return require(PX.WATER_RS.Shared.SkinData) end)
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
            local keep = false
            for _, s in ipairs(items) do if s == PX.SKIN_SELECTED then keep = true break end end
            if not keep then PX.SKIN_SELECTED = "Default" end
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
                if dino then pcall(function() PX.skinDropdown:Refresh(items, true) end) end
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
        if not PX.vegCData then pcall(function() PX.vegCData = require(PX.WATER_RS.Shared.ConsumptionData) end) end
        if not PX.vegCState then pcall(function() PX.vegCState = require(PX.WATER_RS.Common.CharacterState) end) end
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

        local found, seen = {}, {}
        pcall(function()
            for _, inst in ipairs(PX.VEG_CS:GetTagged("FoliageStreamable")) do
                local par = inst.Parent
                local id = par and par:GetAttribute("ID")
                -- Two filters, both learned from the scan:
                --   * No ID means the game can't bite it either, so it isn't food.
                --   * ONE PLANT TAGS SEVERAL OF ITS OWN PARTS — a RechteniiSmall tags its trunk,
                --     its branches AND its leaves, all sharing the parent's ID. Without keying on
                --     that ID the pool draws three labels on one bush and the useful range of the
                --     ESP collapses to a third of its slots.
                --   * Foliage also exists under ReplicatedStorage.SelectionBackground.Map (the
                --     dino-selection backdrop). It is not in the world, so its distance is
                --     meaningless and it must never be labelled.
                local model
                model, id = PX.vegResolve(inst)
                par = model or par
                if id and not seen[id] and par:IsDescendantOf(workspace) then
                    -- Recursive: on nested foliage the tagged instance may be a Model, and a
                    -- shallow search finds nothing to hang the label on.
                    local part = inst:IsA("BasePart") and inst
                        or inst:FindFirstChildWhichIsA("BasePart", true)
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
    PX.MOB_SHOW_TURN = true      -- Settings > Mobile can switch this off if it's in the way
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
    MAIN = { "Stats", "Combat", "Render", "Tools" },
    RENAME = { ["Enable ESP"] = "Players",
        ["Players on Minimap"] = "Players", ["Corpses on Minimap"] = "Corpses", ["Fossils on Minimap"] = "Fossils",
        ["Small Fossil Distance"] = "Distance", ["Medium Fossil Distance"] = "Distance", ["Large Fossil Distance"] = "Distance" },
    SUB_MAIN = {
        ["Fossil Farm"] = "AutoFarm", ["Autofarm"] = "Stats", ["Auto Spawn"] = "AutoFarm",
        ["Hitbox Expander"] = "Combat", ["Reach"] = "Combat", ["Attack Tools"] = "Combat",
        ["ESP"] = "Render", ["World"] = "Render", ["Tools"] = "Render",
        ["Save Dino"] = "Tools", ["Movement"] = "Tools", ["Mod Check"] = "Tools", ["Config"] = "Tools",
    },
    WHERE = {
        ["AFK Farm"] = "AutoFarm", ["Anti AFK"] = "AutoFarm", ["Auto Grow"] = "Tools",
        ["Show Module List"] = "Tools", ["Stats Card"] = "Tools", ["Reset Stats Card Position"] = "Tools",
        ["Unlimited Zoom"] = "Tools", ["FOV Changer"] = "Tools",
        ["Minimap"] = "Tools",
    },
    NEST = {
        ["Fossil Farm"] = { "Fossil Farm Speed" },
        ["Force Eat"] = { "Fast Eat", "Eat Only When Hungry", "Leave Scraps" },
        ["AFK Farm"] = { "Farm Speed", "Player Avoid Radius", "Simulate Walking", "Target Meat", "Safety (Hide & Heal)", "Admin Kick" },
        ["Enable Hitbox Expander"] = { "Visualize Hitboxes", "Visual Opacity", "Hitbox Multiplier", "Hitbox Expander/Parts" },
        ["Enable Reach"] = { "Visualize Reach", "Reach Visual Opacity", "Reach Multiplier", "Reach/Parts" },
        ["Instant Attack"] = { "Attack Speed" },
        ["Enable Silent Aim"] = { "Attack Tools/Parts" },
        ["Save Dino"] = { "Save Direction", "Auto-Save at Health %", "Include Bleed", "Auto-Save Threshold %" },
        ["Fly"] = { "Fly Speed" },
        ["Quick Turn"] = { "Turn Strength" },
        ["Enable ESP"] = { "Show Name", "Show Dino Type", "Show Stage", "Show Gender", "Show Health", "Show Stamina",
            "Food Bar", "Food Number", "Water Bar", "Water Number", "Infection Bar", "Infection Number",
            "Show Weight", "Bleed ESP", "Pack ESP", "Pack Leader ESP", "Show Distance", "Text Highlight",
            "Text Size", "Health Bar Height", "Health Bar Width", "Stamina Bar Height", "Stamina Bar Width",
            "ESP Distance", "Enable Chams" },
        ["Enable Chams"] = { "Chams Fill Transparency", "Chams Outline Transparency" },
        ["Show Corpses"] = { "Corpse/Meat Text Size", "Corpse Distance" },
        ["Show Meat"] = { "Meat Distance" },
        ["FOV Changer"] = { "FOV" },
        ["Stats Card"] = { "Growth Stage", "Mass Gain Multiplier", "Weight", "Growth Timer", "Nutrition Stats",
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
        AutoFarm = { "Fossil Farm", "AFK Farm", "Auto Spawn" },
        Stats = { "Force Eat", "Auto Water", "Auto Cleanliness", "Infinite Oxygen", "Freeze Food", "Freeze Water" },
    },
    HEADERS = {},
    LOCKED = {
        -- AutoFarm
        "Fossil Farm", "AFK Farm", "Auto Spawn", "Anti AFK",
        -- Stats
        "Force Eat",
        -- Combat
        "No Attack Cooldown",
        -- Render
        "Custom Time", "No Blur", "Skin", "Fish ESP",
        -- Tools
        "Fly", "Insta Turn", "Quick Turn", "Show Turn Buttons", "Auto-Save at Health %", "Include Bleed", "Auto-Save Threshold %", "Auto Leave", "Stats Card", "Reset Stats Card Position", "Show Module List", "Minimap", "Unlimited Zoom", "FOV Changer",
    },
}

-- FREE BUILD (generated by Tools/build-free.js): the premium features' flags are forced off now
-- and after every config load, behind their locked menu rows.
function PX.freeLock()
    PX.FOSSIL_FARM, PX.AFK_FARM, PX.ANTI_AFK, PX.FORCE_EAT = false, false, false, false
    PX.NO_ATK_COOLDOWN, PX.FISH_ESP, PX.NO_BLUR = false, false, false
    PX.SKIN_SELECTED = "Default"
    PX.FLY, PX.QUICK_TURN, PX.MOB_SHOW_TURN = false, false, false
    PX.AUTO_SAVE, PX.AUTO_SAVE_BLEED, PX.MOD_KICK = false, false, false
    PX.STATS_CARD, PX.SHOW_INDICATORS, PX.MMAP_ON = false, false, false
    PX.UNLIMITED_ZOOM, PX.FOV_ENABLED = false, false
    if (tonumber(PX.HITBOX_MULTIPLIER) or 1) > 5 then PX.HITBOX_MULTIPLIER = 5 end
    if (tonumber(PX.REACH_MULTIPLIER) or 1) > 5 then PX.REACH_MULTIPLIER = 5 end
end
PX.freeLock()

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
            if silent then t:Set(v and true or false) else t:SetEnabled(v and true or false) end
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
            h:Set(v, not silent)
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
            h:Set(v)
            if not silent then pcall(cb, h.Value) end
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
            h:Set(v)
            if not silent then pcall(cb, v) end
        end
        function obj:Refresh(newItems, _keep)
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

        function proxy:AddSection(cfg)
            section = type(cfg) == "table" and cfg.Name or cfg
            notes = (type(cfg) == "table" and cfg.Info) and parseInfo(cfg.Info) or {}
            return nil
        end

        function proxy:AddToggle(cfg)
            cfg = cfg or {}
            if isLocked(cfg.Name) then return lockedRow() end
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
            if isLocked(cfg.Name) then return lockedRow() end
            return wrapSlider(hostFor(cfg.Name, true), cfg)
        end

        function proxy:AddDropdown(cfg)
            cfg = cfg or {}
            if isLocked(cfg.Name) then return lockedRow() end
            local host = hostFor(cfg.Name, true)
            if cfg.Multi then return multiDropdown(host, cfg) end
            return wrapDropdown(host, cfg)
        end

        function proxy:AddButton(cfg)
            cfg = cfg or {}
            if isLocked(cfg.Name) then return lockedRow() end
            return (hostFor(cfg.Name, false)):AddButton({ Name = trim(cfg.Name), Callback = cfg.Callback })
        end

        function proxy:AddKeybind(cfg)
            cfg = cfg or {}
            if isLocked(cfg.Name) then return lockedRow() end
            return keybindRow((hostFor(cfg.Name, false)), cfg)
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

        local win = EZ:CreateWindow({
            Title = cfg.Title or "EazyCheats",
            Website = "eazycheats.com",
            Discord = "discord.gg/uVXQTGefvq",
            OnUnload = function()
                if unloading then return end
                unloading = true
                if Hub.onUnload then pcall(Hub.onUnload) end
                releaseMouse()
            end,
        })
        genv.__PX_EZ_WIN = win

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
        local ctx = { win = win, tabs = {}, masters = {}, parentOf = parentOf, lastHeader = {}, rank = rank, hasKids = hasKids, locked = locked }
        for _, n in ipairs(LAYOUT.MAIN) do ctx.tabs[n] = win:AddTab(n) end

        -- The game locks the cursor for camera control. Like the old library: while the menu is up,
        -- a visible Modal button plus a write after the camera step keep the mouse free.
        local modal = Instance.new("TextButton")
        modal.Name = "PX_Modal"
        modal.Modal = true
        modal.Text = ""
        modal.AutoButtonColor = false
        modal.BackgroundTransparency = 1
        modal.Size = UDim2.new(0, 1, 0, 1)
        modal.Visible = false
        modal.Parent = win._gui
        pcall(function()
            RS:BindToRenderStep(BIND, Enum.RenderPriority.Camera.Value + 1, function()
                if win._gui and win._visible then
                    if not freed then
                        freed = true
                        modal.Visible = true
                    else
                        -- Anything other than our Default / shown since last frame is the game's.
                        if UIS.MouseBehavior ~= Enum.MouseBehavior.Default then gameBehavior = UIS.MouseBehavior end
                        if not UIS.MouseIconEnabled then gameIcon = false end
                    end
                    UIS.MouseBehavior = Enum.MouseBehavior.Default
                    UIS.MouseIconEnabled = true
                elseif freed then
                    freed = false
                    modal.Visible = false
                    handBack()
                end
            end)
        end)

        function Hub:IsVisible()
            return win._gui ~= nil and win._visible == true
        end
        function Hub:Notify(text, duration)
            if win._gui then return win:Notify(text, duration or 3) end
            return nil
        end
        function Hub:SetConfig(opts)
            return win:SetConfig(opts)
        end
        function Hub:Destroy()
            unloading = true
            releaseMouse()
            pcall(function() win:Destroy() end)
            if genv.__PX_EZ_WIN == win then genv.__PX_EZ_WIN = nil end
        end
        -- The old main tabs hold no controls; their sub-tabs are routed by PX.MENU_LAYOUT.
        function Hub:AddTab(_tcfg)
            local root = {}
            function root:AddSubTab(scfg)
                return makeSub(ctx, type(scfg) == "table" and scfg.Name or tostring(scfg))
            end
            return root
        end
        Hub.tabs.Settings = makeSub(ctx, "Config")
        return Hub
    end

    return Bridge
end

function PX.loadLibrary()
    local GUI_URL = "https://eazycheats.com/s/ez-gui"
    -- LOCAL DEV: a GUI build saved as <executor workspace>/EazyCheats_ez-gui.lua is used instead of
    -- the hosted copy, so the menu can be iterated without deploying the site. The name is specific
    -- on purpose, so a customer's unrelated ez-gui.lua can never replace their menu.
    local LOCAL_FILE = "EazyCheats_ez-gui.lua"
    local function build(src, where)
        local chunk, compileErr = loadstring(src)
        if not chunk then return nil, where .. " failed to compile: " .. tostring(compileErr) end
        local ranOk, lib = pcall(chunk)
        if ranOk and type(lib) == "table" then return PX.ezBridge(lib) end
        return nil, where .. " errored: " .. tostring(lib)
    end
    local okLocal, localSrc = pcall(function()
        if type(isfile) == "function" and not isfile(LOCAL_FILE) then return nil end
        return readfile(LOCAL_FILE)
    end)
    if okLocal and type(localSrc) == "string" and #localSrc > 0 then return build(localSrc, "Local EZ GUI") end
    local lastErr = "unknown error"
    for attempt = 1, 3 do
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
if not PX.Library then
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "EazyCheats", Text = "GUI failed to load: " .. tostring(PX.libErr) .. ". Try again in a moment.", Duration = 10,
        })
    end)
    warn("[EazyCheats] " .. tostring(PX.libErr))
    return
end
local Hub = PX.Library.new({Title = "EazyCheats"})
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
-- Fly-based Save Dino: on activate the dino drives straight DOWN (under the map, PX.SAVE_DINO_DEPTH
-- below the surface) or straight UP (PX.SAVE_UP_HEIGHT into the sky) via the server-lenient Teleporting
-- flag, then pins there (untouchable). No horizontal movement. Direction set by PX.SAVE_DIR.
-- Fall immunity is held the whole time + for 10s on release, then you're lifted safely to the ground.
PX.SAVE_FLY_SPEED = 250
PX.SAVE_DIR = "Down"             -- "Down" (under the map) or "Up" (into the sky)
PX.SAVE_UP_HEIGHT = 1000         -- studs to rise when saving UP (fixed; no slider by design)
-- On release we lift you back to the surface and hold fall immunity for this long so the move
-- can't register as a fall, then clear it once you've settled.
PX.SAVE_RELEASE_GRACE = 10
local saveReleasing = false        -- true during the post-release grace window
local saveDinoToggle = nil        -- the Save Dino switch (assigned when the toggle is built)
PX.AUTO_SAVE_PCT = 30           -- health % at/below which auto-save fires
PX.AUTO_SAVE = false               -- gates the above; "Auto-Save at Health %" toggle
-- Include Bleed: count pending bleed against you when deciding whether to auto-save. Bleed is
-- damage already committed — the server drains it over the next few seconds whatever you do — so
-- 40% health with a 35% bleed forecast is really 5%. Off by default because it makes auto-save
-- fire noticeably earlier, which is the point but also a behaviour change.
PX.AUTO_SAVE_BLEED = false
-- Resting while saved: drop the "Teleporting" leniency flag once parked, so the game's own gates
-- let you lay down / sleep (and therefore heal). See the pin loop for why the flag is held in the
-- first place, and what re-asserts it if the server starts pulling. Always on — it had a toggle
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
function PX.getCS()
    if PX.csCache then return PX.csCache end
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
-- laying down did nothing while saved. It is only actually needed while MOVING — it is what stops
-- the server rejecting the rapid CFrame steps of the dive. Once parked and anchored there is
-- nothing for the server to reject, so we drop it and let the game's own rest logic work.
--
-- If the server does start pulling us off the spot, the pin re-asserts the flag for a moment,
-- snaps back, and clears it again. Held on demand instead of permanently.
local saveFlagHeld = false
local function setSaveTeleportFlag(on)
    if saveFlagHeld == on then return end
    saveFlagHeld = on
    pcall(function()
        local ch = LocalPlayer.Character
        if ch then ch:SetAttribute("Teleporting", on and true or nil) end
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
    -- Flags first (fall immunity + the game's teleport-leniency flag, same as Fly uses).
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
    local goingUp = (PX.SAVE_DIR == "Up")
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
        elseif phase ~= "pinned" then setSaveTeleportFlag(true) end

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
        if PX.UNLOADED or not PX.SAVE_DINO_ACTIVE then return end
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
                -- Real displacement means the server moved us, which is the one case the
                -- leniency flag is still needed for: re-assert it, snap back, and the advance
                -- loop drops it again on the next frame.
                if (r.Position - saveTargetCFrame.Position).Magnitude > 5 then
                    setSaveTeleportFlag(true)
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
-- reverts, while stepped movement under the "Teleporting" leniency flag is what Fossil Farm
-- already uses to cross the map without being snapped back.
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

        local speed = PX.SAVE_FLY_SPEED or 250
        local function glideTo(dest, timeout)
            -- Timeout scaled by the governor's slowdown: the caller's seconds were chosen for the
            -- ungoverned speed, and an unscaled deadline would strand the dino mid-return.
            local deadline = os.clock() + (timeout or 10)
                * math.max(1, speed / math.max(PX.govCeiling(), 1))
            while not PX.UNLOADED and not PX.SAVE_DINO_ACTIVE and os.clock() < deadline do
                local r = getAutoGrowRoot()
                if not (r and r.Parent) then return end
                local delta = dest - r.Position
                if delta.Magnitude < 3 then return end
                local newPos = PX.govNext(r.Position, dest, 0.03, speed)   -- governed
                pcall(function()
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
    -- Now we glide to the recorded spot under the leniency flag (the same technique Fossil Farm
    -- uses for travel, which the server tolerates) and finish with a solid landing.
    setSaveTeleportFlag(true)          -- moving again: the flag is needed for the trip back
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
        or PX.AUTO_FLY or PX.AFK_FARM
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
    local wantFlag = (PX.SAVE_DINO_ACTIVE and saveFlagHeld) or saveReleasing
    if wantFlag and char and char:GetAttribute("Teleporting") ~= true then
        pcall(function() char:SetAttribute("Teleporting", true) end)
    end
end)

-- === NO BLUR ===
-- The "broken head" concussion effect ramps a full-screen BlurEffect (separate from the gun's
-- depth-of-field, which is a DepthOfFieldEffect and still left untouched).
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
local spedTracks = {}

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
    spedTracks = {}
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
do
    local okCS, CS = pcall(function() return require(PX.WATER_RS.Common.CharacterState) end)
    if okCS and CS then
        PX.addStep(1, function()
            if not PX.NO_ATK_COOLDOWN or PX.UNLOADED then return end
            pcall(function()
                if type(CS.Growth) == "table" and CS.Growth.attackCooldownMultiplier ~= nil then
                    CS.Growth.attackCooldownMultiplier = 0
                end
            end)
        end)
    end
end

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

-- === TELEPORT TO BIOME ===
-- workspace.Biomes holds one folder per biome. Folders have no position of their own, so a point
-- to travel to is worked out from the parts inside: the average of what is sampled (steadier than
-- a bounding-box centre on an oddly shaped biome), then a raycast straight down for the ground.
--
-- Sampling is capped and depth-limited. Walking a whole biome is exactly the kind of thing that
-- crashes this game, and the average settles long before the cap is reached.
PX.BIOME_TARGET = nil
PX.BIOME_SPEED = 5000            -- studs per second
PX.BIOME_TRAVEL = false          -- true while a trip is running; clearing it aborts the glide
PX.biomeTravelling = false       -- re-entry guard, so two trips cannot overlap
PX.biomeToggle = nil             -- the switch, so the trip can turn itself off on arrival
PX.biomePointCache = {}
-- Filled in from BiomeLocationScan if a live reading ever proves unreliable; checked first.
PX.BIOME_POINTS = {}

function PX.biomeNames()
    local names = {}
    pcall(function()
        local root = workspace:FindFirstChild("Biomes")
        if not root then return end
        for _, f in ipairs(root:GetChildren()) do
            -- Barrier is the map boundary, not somewhere you would ever want to stand.
            if f.Name ~= "Barrier" then names[#names + 1] = f.Name end
        end
    end)
    table.sort(names)
    return names
end

function PX.biomePoint(name)
    if PX.BIOME_POINTS[name] then return PX.BIOME_POINTS[name] end
    if PX.biomePointCache[name] then return PX.biomePointCache[name] end

    local result
    pcall(function()
        local root = workspace:FindFirstChild("Biomes")
        local folder = root and root:FindFirstChild(name)
        if not folder then return end

        -- Depth 6, not 2. The terrain sits several folders down - a biome's geometry is at
        -- Biomes.<Name>.Rocks.MountainMesh.MountainMesh and similar - so a shallow walk finds
        -- nothing at all. The part CAP is what keeps this safe to run, not the depth limit.
        local pts, sum, count = {}, Vector3.new(), 0
        local MAX, DEPTH = 400, 6
        local function walk(inst, depth)
            if depth > DEPTH or count >= MAX then return end
            for _, child in ipairs(inst:GetChildren()) do
                if count >= MAX then return end
                if child:IsA("BasePart") then
                    pts[#pts + 1] = child.Position; sum = sum + child.Position; count = count + 1
                elseif child:IsA("Model") then
                    pcall(function()
                        local p = child:GetPivot().Position
                        pts[#pts + 1] = p; sum = sum + p; count = count + 1
                    end)
                    walk(child, depth + 1)
                elseif child:IsA("Folder") then
                    walk(child, depth + 1)
                end
            end
        end
        walk(folder, 1)
        if count == 0 then return end

        -- Land where a part actually stands, not on a computed centre. On a long or curved biome
        -- the average falls outside the geometry and the raycast finds nothing but sky, so the
        -- average is only the FIRST candidate - a spread of real parts follows it.
        local avg = sum / count
        local params = RaycastParams.new()
        params.FilterType = Enum.RaycastFilterType.Exclude
        -- CharacterIgnore holds the foliage object cache. Without excluding it the downward ray
        -- stops on the first tree canopy it meets and calls that the ground - the scan landed
        -- Upland Forest and Mixed Woodland on PineLeavesModel and GinkgoLeavesModel doing exactly
        -- that. It is the same trap the marathon flight documents: in a forest the first thing a
        -- ray hits is leaves, not floor.
        params.FilterDescendantsInstances = { LocalPlayer.Character, workspace:FindFirstChild("CharacterIgnore") }

        local candidates = { avg }
        local stride = math.max(1, math.floor(#pts / 12))
        for k = 1, #pts, stride do
            candidates[#candidates + 1] = pts[k]
            if #candidates >= 14 then break end
        end

        for _, cand in ipairs(candidates) do
            local hit
            pcall(function()
                hit = workspace:Raycast(Vector3.new(cand.X, cand.Y + 2000, cand.Z),
                                        Vector3.new(0, -6000, 0), params)
            end)
            -- Water is not somewhere to arrive. The scan put Fluvial Forest 76 studs down in a
            -- lake; a land dino dropped there starts drowning on arrival. Skip to the next
            -- candidate instead of accepting it.
            if hit and hit.Material ~= Enum.Material.Water then
                result = Vector3.new(cand.X, hit.Position.Y, cand.Z)
                break
            end
        end
        -- Nothing found dry ground: fall back to the average so the trip still goes somewhere
        -- sane rather than refusing outright.
        if not result then result = avg end
    end)

    if result then PX.biomePointCache[name] = result end
    return result
end

-- Fly there, land, switch off. One shot — this is a way to get somewhere, not a mode to sit in.
function PX.travelToBiome(name)
    if PX.biomeTravelling then return end
    PX.biomeTravelling = true

    local finished = pcall(function()
        local target = PX.biomePoint(name)
        if not target then
            pcall(function() Hub:Notify("Biome Teleport: could not find " .. tostring(name)) end)
            return
        end
        local root = getAutoGrowRoot()
        if not (root and root.Parent) then
            pcall(function() Hub:Notify("Biome Teleport: no character found") end)
            return
        end

        local half = 3
        pcall(function() half = root.Size.Y * 0.5 end)

        -- Level heading, so arriving does not leave the dino tilted at whatever angle it set off at.
        local look = root.CFrame.LookVector
        local flat = Vector3.new(look.X, 0, look.Z)
        local yawCF = (flat.Magnitude > 0.01) and CFrame.lookAt(Vector3.new(), flat.Unit) or CFrame.new()

        local ch = LocalPlayer.Character
        pcall(function()
            if ch then ch:SetAttribute("FallDamageImmunity", true); ch:SetAttribute("Teleporting", true) end
            root.Anchored = false
        end)

        local speed = PX.BIOME_SPEED or 5000
        local cruiseY = math.max(root.Position.Y, target.Y) + 250   -- clear the terrain between here and there

        -- Timeouts are now DERIVED from the distance and the governed speed, not fixed seconds.
        -- They used to be 8/30/15, which suited 5000 studs/s. Under the governor a cross-map leg
        -- can legitimately take minutes, and a fixed 30s deadline would abort it in mid-air over
        -- open ground — the trip would read as "Biome Teleport just stops working", when in fact
        -- it was cut off on a stopwatch that no longer matches how fast we are allowed to move.
        local function legTimeout(from, dest)
            local eff = math.max(math.min(speed, PX.GOVERNOR and PX.govCeiling() or speed), 1)
            return (dest - from).Magnitude / eff * 1.6 + 8      -- 60% slack, plus a floor
        end

        local function glideTo(dest, timeout)
            local r0 = getAutoGrowRoot()
            if not (r0 and r0.Parent) then return end
            local deadline = os.clock() + (timeout or legTimeout(r0.Position, dest))
            while not PX.UNLOADED and PX.BIOME_TRAVEL and os.clock() < deadline do
                local r = getAutoGrowRoot()
                if not (r and r.Parent) then return end
                if ch then pcall(function() ch:SetAttribute("Teleporting", true) end) end
                if (dest - r.Position).Magnitude < 8 then return end
                -- Governed: this was `speed * 0.03` per step, which at the default 5000 studs/s
                -- moved 150 studs per write. That is a teleport by any measure the server takes.
                local newPos = PX.govNext(r.Position, dest, 0.03, speed)
                pcall(function()
                    r.CFrame = CFrame.new(newPos) * yawCF
                    r.AssemblyLinearVelocity = Vector3.zero
                    r.AssemblyAngularVelocity = Vector3.zero
                end)
                task.wait(0.03)
            end
        end

        glideTo(Vector3.new(root.Position.X, cruiseY, root.Position.Z))     -- straight up first
        if not PX.BIOME_TRAVEL then return end
        glideTo(Vector3.new(target.X, cruiseY, target.Z))                   -- across at altitude
        if not PX.BIOME_TRAVEL then return end
        glideTo(Vector3.new(target.X, target.Y + half + 1, target.Z))       -- down onto it
        if not PX.BIOME_TRAVEL then return end

        -- Land the same way Save Dino's return does: settle under gravity rather than trying to
        -- place exactly, then correct once if it clipped through or hung in the air.
        local r = getAutoGrowRoot()
        if r and r.Parent then
            pcall(function()
                r.CFrame = CFrame.new(target + Vector3.new(0, half + 1, 0)) * yawCF
                r.AssemblyLinearVelocity = Vector3.zero
                r.AssemblyAngularVelocity = Vector3.zero
                r.Anchored = true
            end)
            task.wait(0.2)
            pcall(function()
                r.Anchored = false
                r.AssemblyLinearVelocity = Vector3.zero
                r.AssemblyAngularVelocity = Vector3.zero
            end)
            task.wait(0.3)
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
        pcall(function() Hub:Notify("Arrived: " .. tostring(name)) end)
    end)

    -- Hand movement straight back. Leaving the teleport flag set is what makes walking feel broken
    -- afterwards, so it goes the moment we are down, whether the trip finished or errored.
    pcall(function()
        local ch = LocalPlayer.Character
        if ch then ch:SetAttribute("Teleporting", nil) end
        local r = getAutoGrowRoot()
        if r then r.Anchored = false end
    end)
    task.delay(6, function()
        if not (PX.NO_FALL_DAMAGE or PX.FOSSIL_FARM or PX.SAVE_DINO_ACTIVE) then
            local c = LocalPlayer.Character
            if c then pcall(function() c:SetAttribute("FallDamageImmunity", nil) end) end
        end
    end)

    if not finished then
        pcall(function() Hub:Notify("Biome Teleport: the trip failed - you are where you stopped") end)
    end
    PX.biomeTravelling = false
    PX.BIOME_TRAVEL = false
    if PX.biomeToggle then pcall(function() PX.biomeToggle:Set(false) end) end
end

-- === FOSSIL FARM ===
-- Fossils live in workspace.SpawnedFossils. Each model contains a size mesh (FossilS/M/Sphere)
-- with a ProximityPrompt child named "Fossil" (HoldDuration=0.5, Range=25, Key=E).
-- Collection: get within range, hold E for HoldDuration, the game's FossilController handles
-- the Knit call. Same CFrame-fly technique as AFK Farm (governed, Teleporting attribute).
PX.fossilFarmToggle = nil
PX.FOSSIL_FARM_SPEED = 50

local function fossilPromptOf(fossil)
    for _, d in ipairs(fossil:GetDescendants()) do
        if d:IsA("ProximityPrompt") and d.Name == "Fossil" then return d end
    end
    return nil
end

 function PX.fossilPosOf(fossil)
    local ok, p = pcall(function() return fossil:GetPivot().Position end)
    if ok then return p end
    return nil
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
        if prompt and prompt.Enabled ~= false then
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
    local function mkRect(props)
        local d = Drawing.new("Square")
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
    local Knit = require(ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"))
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

do
    function PX.fossilFarmAdvance(dt)
        if PX.UNLOADED then return end
        if not PX.FOSSIL_FARM then
            if PX.ffState then
                PX.fossilFarmCleanup()
                local ch = LocalPlayer.Character
                if ch and not PX.AFK_FARM then pcall(function() ch:SetAttribute("Teleporting", nil) end) end
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
        if ch and ch:GetAttribute("Teleporting") ~= true then
            pcall(function() ch:SetAttribute("Teleporting", true) end)
        end

        local speed = math.max(PX.FOSSIL_FARM_SPEED or 50, 5)
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

            local fossil = PX.nearestFossil(rootPos)
            if fossil then
                PX.ffTarget = fossil
                PX.ffState = "flying"
                PX.ffEmptyChecks = 0

                local fp = PX.fossilPosOf(fossil)
                if fp then
                    local half = 3
                    pcall(function() half = root.Size.Y * 0.5 end)
                    PX.ffDest = fp + Vector3.new(0, half + 0.5, 0)
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
                    pcall(function() Hub:Notify("All fossils farmed", 8) end)
                end
                return
            end
        end

        if PX.ffState == "flying" and PX.ffDest then
            -- Fly toward the fossil (same as AFK farm)
            PX.ffPos = PX.govNext(PX.ffPos, PX.ffDest, dt, speed)
            local lookDir = (PX.ffDest - PX.ffPos)
            if lookDir.Magnitude < 0.1 then lookDir = Vector3.new(0, 0, 1) end
            PX.ffCF = CFrame.lookAt(PX.ffPos, PX.ffPos + lookDir)

            pcall(function()
                root.CFrame = PX.ffCF
                root.AssemblyLinearVelocity = Vector3.zero
                root.AssemblyAngularVelocity = Vector3.zero
            end)

            -- Check if we arrived (within prompt range)
            if (PX.ffPos - PX.ffDest).Magnitude < 8 then
                PX.ffState = "collecting"
                PX.ffCollectStart = os.clock()

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
        if PX.UNLOADED or not PX.FOSSIL_FARM or not PX.ffCF then return end
        local root = PX.getLocalPhysicsRoot()
        if root and not root.Anchored then
            pcall(function()
                root.CFrame = PX.ffCF
                root.AssemblyLinearVelocity = Vector3.zero
                root.AssemblyAngularVelocity = Vector3.zero
            end)
        end
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
        PX.ffHoldDuration = nil
        PX.ffEmptyChecks = 0
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
    end

    table.insert(allConnections, RunService.RenderStepped:Connect(PX.fossilFarmAdvance))
    table.insert(allConnections, RunService.Heartbeat:Connect(PX.fossilFarmPin))
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
        PX.ccCache = require(PX.WATER_RS.Packages.Knit).GetController("ConsumptionController")
    end)
    return PX.ccCache
end

function PX.khRange()
    local r
    pcall(function() r = PX.getCC():GetConsumeRange() end)
    if type(r) ~= "number" or r <= 0 then r = 22 end
    return r
end

-- Nearest corpse that still has meat on it. A picked-clean corpse stays in CorpseData with
-- Weight 0, so without the weight filter you'd warp to a bare skeleton and sit there.
function PX.nearestCorpse(fromPos)
    local CC = PX.getCC()
    if not (CC and CC.CorpseData and fromPos) then return nil end
    local bId, bRoot, bDist
    for id, data in pairs(CC.CorpseData) do
        local root = data and data.Root
        if root and root.Parent and (tonumber(data.Weight) or 0) > 0 then
            local pos
            pcall(function()
                pos = root:IsA("BasePart") and root.Position or root:GetPivot().Position
            end)
            if pos then
                local d = (pos - fromPos).Magnitude
                if not bDist or d < bDist then bId, bRoot, bDist = id, root, d end
            end
        end
    end
    return bId, bRoot, bDist
end

-- Plant the dino beside a corpse and hold the spot. Returns true only once arrival is verified.
function PX.warpToCorpse(root, corpseRoot)
    local cpos
    pcall(function()
        cpos = corpseRoot:IsA("BasePart") and corpseRoot.Position or corpseRoot:GetPivot().Position
    end)
    if not cpos then return false end

    -- Offset to the side: landing co-located with a 40-part ragdoll can wedge the dino inside
    -- its collision hull. Fall back to the corpse's own column if there's no ground beside it.
    local half = 3
    pcall(function() half = root.Size.Y * 0.5 end)
    local off = Vector3.new(PX.TP_OFFSET or 8, 0, 0)
    local ground = PX.groundUnder(cpos + off) or PX.groundUnder(cpos)
    local standPos = ground and (ground + Vector3.new(0, half + 0.5, 0)) or (cpos + Vector3.new(0, 4, 0))

    -- Every exit clears the teleport flag. The old instant hop never set it, so nothing here had
    -- to clean up; the flown version holds it for the whole trip, and leaving it set is what
    -- makes walking feel broken afterwards (same trap Biome Travel documents at its own exit).
    local function finish(ok)
        local c = LocalPlayer.Character
        if c then pcall(function() c:SetAttribute("Teleporting", nil) end) end
        return ok
    end

    -- This used to be a single `root.CFrame = target` — one instant hop of however far the corpse
    -- happened to be. That is precisely the event the "we detected teleport" kick names, so the
    -- hop is now flown instead: up, across, down, every leg governed. Slower, but it is the
    -- difference between arriving and being disconnected.
    --
    -- Flown as an ARC rather than straight at the corpse because a direct line at ground level
    -- runs into whatever terrain is in between; the old instant jump never had to care, and
    -- inheriting its straight-line target without the altitude would swap a kick for getting
    -- wedged in a hillside.
    local ch = LocalPlayer.Character
    local cruiseY = math.max(root.Position.Y, standPos.Y) + 60

    for _ = 1, 3 do
        if PX.UNLOADED or not PX.TP_CORPSE then return finish(false) end
        if ch then pcall(function() ch:SetAttribute("Teleporting", true) end) end

        local here = root.Position
        PX.govGlide(root, Vector3.new(here.X, cruiseY, here.Z), nil, 12, 6)
        if PX.UNLOADED or not PX.TP_CORPSE then return finish(false) end
        local crossTo = Vector3.new(standPos.X, cruiseY, standPos.Z)
        PX.govGlide(root, crossTo, nil,
            (crossTo - root.Position).Magnitude / math.max(PX.govCeiling(), 1) * 1.6 + 8, 6)
        if PX.UNLOADED or not PX.TP_CORPSE then return finish(false) end
        PX.govGlide(root, standPos, nil, 15, 4)

        task.wait(0.35)                                   -- give the server its chance to revert
        if (root.Position - standPos).Magnitude < 25 then
            -- Solid landing: pin for a beat so leftover momentum from a long hop can't slide or
            -- bounce us back out of eat range, then hand physics back. Safe to anchor here
            -- precisely BECAUSE we verified we're grounded — anchoring while floating is the
            -- thing the server rejects.
            if PX.TP_SOLID then
                pcall(function() root.Anchored = true end)
                task.wait(0.25)
                pcall(function()
                    root.Anchored = false
                    root.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                end)
            end
            return finish(true)
        end
        task.wait(0.5)                                    -- reverted — let it settle, then retry
    end
    return finish(false)
end

-- Driver. Only DETECTS work here and hands the warp to a task.spawn: steps run inside the
-- shared Heartbeat, and task.wait in one would stall every system registered after it.
PX.addStep(30, function()
    if PX.UNLOADED or not PX.TP_CORPSE or PX.tpBusy then return end
    if PX.tpDone and not PX.TP_CHAIN then return end     -- one-shot already served
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
    if not id then return end

    PX.tpBusy = true
    task.spawn(function()
        PX.applyFallImmunity(true)                       -- a long hop must not land as fall damage
        local arrived = PX.warpToCorpse(root, corpseRoot)
        PX.tpTargetId = arrived and id or nil
        if arrived and not PX.TP_CHAIN then PX.tpDone = true end
        pcall(function()
            Hub:Notify(arrived
                and ("Teleported to corpse (" .. math.floor(dist or 0) .. " studs)")
                or "Couldn't hold the corpse spot — server reverted the hop", 5)
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
local afRoot     = Hub:AddTab({Name = "Autofarm"})
local combatRoot = Hub:AddTab({Name = "Combat"})
local moveRoot   = Hub:AddTab({Name = "Movement"})
local renderRoot = Hub:AddTab({Name = "Render"})

local ui = {}    -- all UI element refs (used by the config save/restore)
local tab        -- reusable handle, repointed to the current sub-tab before each group

-- ============ AUTOFARM : Fossil Farm ============
tab = patchTabNotify(afRoot:AddSubTab({Name = "Fossil Farm"}))
PX.section(tab, "Fossil Farm", [[Collects fossils for you automatically.

Fossil Farm: flies to each nearby fossil, collects it, then moves to the next.
Fossil Farm Speed: how fast it flies between fossils.]])
PX.fossilFarmToggle = tab:AddToggle({
    Name = "Fossil Farm",
    Skull = true,
    Default = false,
    Callback = function(v)
        PX.FOSSIL_FARM = v
        if v then PX.startFossilFarm() else farmCleanup() end
    end
})
PX.fossilFarmSpeedSlider = tab:AddSlider({
    Name = "Fossil Farm Speed",
    Skull = true,
    Min = 10, Max = 50, Default = 50,
    Callback = function(v) PX.FOSSIL_FARM_SPEED = v end
})

-- ============ AUTOFARM : Autofarm ============
tab = patchTabNotify(afRoot:AddSubTab({Name = "Autofarm"}))
PX.section(tab, "Autofarm", [[Auto Water: keeps your water full. No lake needed, no drinking animation. Water still drains normally, it just gets refilled faster than it drops.
Force Eat: eats the nearest food no matter what your dino's diet is, including plants a carnivore normally cannot touch.]])
PX.autoWaterToggle = tab:AddToggle({
    Name = "Auto Water",
    Default = false,
    Callback = function(v) PX.AUTO_WATER = v end
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

Fast Eat: eats fast enough to hold your food bar at full. Off eats at the game's normal speed, which fills you up gradually instead.
Eat Only When Hungry: waits until your food drops a little before topping up, so nothing is wasted. Off means it eats constantly.
Leave Scraps: stops eating a food source before fully depleting it, leaving a tiny bit behind so it does not despawn.]])
-- ON: burst-bites hard enough to hold Food pinned at the cap.
-- OFF: the game's own 1-bite-per-0.8s pace — fills gradually instead of staying pinned.
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
PX.section(tab, "AFK Farm", [[Flies your dino to the nearest food, eats it, then flies to the next — all on its own.

AFK Farm: turns it on. Disables if manual Fly or Auto Fly is active.
Farm Speed: how fast to fly between food sources. Higher is faster but draws more attention.
Player Avoid Radius: skips food within this many studs of another player. Set to 0 to disable.
Simulate Walking: presses the walk key while flying so the server may count the movement for Activity (growth boost). Experimental.
Target Meat: also flies to corpses and meat chunks, still skipping any near other players.
Safety (Hide & Heal): when your health drops below half, hides underground and rests until you are back to full, then carries on farming.
Admin Kick: leaves the server if an admin joins, or is already here, while AFK Farm runs.]])
PX.afkFarmToggle = tab:AddToggle({
    Name = "AFK Farm",
    Skull = true,
    Default = false,
    Callback = function(v)
        PX.AFK_FARM = v
        if v then
            if PX.FLY and PX.flyToggle then pcall(function() PX.flyToggle:Set(false) end) end
            if PX.AUTO_FLY and PX.autoFlyToggle then pcall(function() PX.autoFlyToggle:Set(false) end) end
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
ui.afkFarmSpeed = tab:AddSlider({
    Name = "Farm Speed",
    Min = 10, Max = 50, Default = 50,
    Callback = function(v) PX.AFK_FARM_SPEED = v end
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
ui.afkFarmMeat = tab:AddToggle({
    Name = "Target Meat",
    Default = false,
    Callback = function(v) PX.AFK_FARM_MEAT = v end
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
PX.antiAfkToggle = tab:AddToggle({
    Name = "Anti AFK",
    Default = false,
    Callback = function(v) PX.ANTI_AFK = v end
})
PX.section(tab, "Cleanliness", [[Auto Cleanliness: keeps you clean automatically.
Infinite Oxygen: stops your oxygen draining underwater.]])
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

PX.section(tab, "Freeze Stats", [[Freeze Food: stops your food bar falling.
Freeze Water: stops your water bar falling.]])
-- Holds the game's own eating/drinking action state, which suppresses that stat's drain tick.
ui.freezeFood = tab:AddToggle({
    Name = "Freeze Food",
    Default = false,
    Callback = function(v) PX.FREEZE_FOOD = v end
})
ui.freezeWater = tab:AddToggle({
    Name = "Freeze Water",
    Default = false,
    Callback = function(v) PX.FREEZE_WATER = v end
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
Hitbox Multiplier: how much bigger the parts get, up to 5x (10x with Premium). Anything from 5x carries a skull and is very obvious to anyone watching a fight.]])
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
    Min = 1, Max = 5, Default = 1,
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
Reach Multiplier: how far your range extends, up to 5x (10x with Premium). Anything from 5x carries a skull and is very obvious. Raise it a little at a time - the server checks this, and too much gets ignored.
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
    Min = 1, Max = 5, Default = 1,
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
ui.noAtkCooldown = tab:AddToggle({
    Name = "No Attack Cooldown",
    Skull = true,
    Default = false,
    Callback = function(v) PX.NO_ATK_COOLDOWN = v end
})
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

Save Dino: takes you 700 studs under the map, or 1000 studs into the sky, and holds you there frozen. Turning it off flies you back to the exact spot you started from and lands you on your feet. You can still lie down and sleep while hidden, so you heal.
Save Direction: down under the map, or up into the sky.
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
tab:AddDropdown({
    Name = "Save Direction",
    Skull = true,
    Items = { "Down", "Up" },
    Default = "Down",
    Callback = function(v) PX.SAVE_DIR = v end
})
-- Depth (700 down) and height (1000 up) are fixed constants, not sliders. This section is
-- deliberately five controls: Save Dino, Save Direction, Auto-Save at Health %, Include Bleed,
-- Auto-Save Threshold %.
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
    Default = false,
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

-- BIOME TELEPORT — deferred to the next update, no menu controls built.
--
-- The travel and landing code below still exists and works; what is missing is a dependable
-- place to land. Reading a biome's geometry live cannot be trusted because Roblox streams the
-- map, so a biome on the far side has nothing loaded to measure, and the auto scanner that was
-- meant to solve that flies too slowly to finish a sweep — it drives the wrong part of the
-- character, so each hop runs to its timeout instead of arriving.
--
-- Next update: fix the scanner's root selection, run a full sweep, paste the coordinates into
-- PX.BIOME_POINTS, and re-add the dropdown and toggle here.

-- NO SPEED LIMIT SECTION. The governor is infrastructure, not a feature — it has no toggle, no
-- sliders and no section, and it cannot be switched off. A safety layer the user has to configure
-- is not a safety layer: the first build exposed five controls for it and every one of them ended
-- up dragged to maximum, which is how the kick happened in the first place.
--
-- What replaces it: every speed slider in the hub now STOPS at a safe value. The limit is enforced
-- by the range of the controls themselves, so there is nothing to understand and nothing to get
-- wrong. See PX.govCeiling — the movers are still clamped underneath, but that clamp should now
-- never be the thing you notice, because no slider can ask for more than it allows.

PX.section(tab, "Speed Boost", [[Speed Boost: makes your dino sprint faster. Uses the game's own physics so it looks natural.
Multiplier: how much faster (1.35 = 35% faster). Stays within anti-cheat tolerance.]])
PX.speedBoostToggle = tab:AddToggle({
    Name = "Speed Boost",
    Skull = true,
    Default = false,
    Keybind = true,
    Callback = function(v) PX.SPEED_BOOST = v end
})
PX.speedMultSlider = tab:AddSlider({
    Name = "Multiplier",
    Skull = true,
    Min = 100, Max = 140, Default = 135,
    Callback = function(v) PX.SPEED_MULT = v / 100 end
})

PX.section(tab, "Escape Burst", [[Escape Burst: press the key for a short sprint burst to escape chasers. Cooldown between uses.
Burst Speed: how fast the burst is. Duration: how many seconds it lasts. Cooldown: wait time between bursts.]])
ui.speedBurstToggle = tab:AddToggle({
    Name = "Escape Burst",
    Skull = true,
    Default = false,
    Keybind = true,
    Callback = function(v) PX.SPEED_BURST = v end
})
PX.burstKeybind = tab:AddKeybind({
    Name = "Burst Key",
    Default = Enum.KeyCode.Unknown,
    Callback = function()
        if not PX.SPEED_BURST then return end
        if PX.SPEED_BURST_ACTIVE then return end
        if not PX.SPEED_BURST_READY then
            pcall(function() Hub:Notify("Burst on cooldown") end)
            return
        end
        PX.SPEED_BURST_ACTIVE = true
        PX.SPEED_BURST_T = os.clock()
        pcall(function() Hub:Notify("Burst!") end)
    end
})
PX.burstMultSlider = tab:AddSlider({
    Name = "Burst Speed",
    Skull = true,
    Min = 100, Max = 150, Default = 145,
    Callback = function(v) PX.SPEED_BURST_MULT = v / 100 end
})
PX.burstDurSlider = tab:AddSlider({
    Name = "Duration",
    Skull = true,
    Min = 1, Max = 8, Default = 4,
    Callback = function(v) PX.SPEED_BURST_DUR = v end
})
PX.burstCdSlider = tab:AddSlider({
    Name = "Cooldown",
    Skull = true,
    Min = 5, Max = 30, Default = 15,
    Callback = function(v) PX.SPEED_BURST_CD = v end
})

PX.section(tab, "Instant Acceleration", [[Instant Acceleration: removes the speed-up delay so your dino reaches full sprint immediately.]])
PX.instaAccelToggle = tab:AddToggle({
    Name = "Instant Accel",
    Default = false,
    Keybind = true,
    Callback = function(v) PX.INSTANT_ACCEL = v end
})

PX.section(tab, "Fly", [[Fly: full manual flight. WASD to move, Space to go up, Ctrl to go down. Movement follows your camera.
Fly Speed: how fast you fly.]])
PX.flyToggle = tab:AddToggle({
    Name = "Fly",
    Skull = true,
    Default = false,
    Callback = function(v) PX.FLY = v end
})
-- Was Min 10 / Max 2000 / Default 70. The 2000 ceiling was a lie — the governor clamped far below
-- it, so the slider reported a speed that was never actually flown. 100 is the real ceiling: 4x the
-- measured 25 studs/s dino, which is the fastest multiple flown clean in testing (400, or 16x, is
-- what got kicked). Every position on this slider is now both reachable AND safe, which is the
-- whole point — the number shown is the number you get, and the top of the range is not a hazard.
PX.flySpeedSlider = tab:AddSlider({
    Name = "Fly Speed",
    Skull = true,
    Min = 10, Max = 100, Default = 50,
    Callback = function(v) PX.FLY_SPEED = v end
})

-- Auto Fly, Anti AFK and Teleport to Corpse removed from the menu by request.
-- Their code is left intact further up the file (PX.afAdvance, PX.warpToCorpse and their steps)
-- and stays governed — they simply have no controls, and PX.AUTO_FLY / PX.TP_CORPSE are never
-- set true, so the steps idle out on their first line.

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
Corpse Distance: how far away corpses are still labelled.]])
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
    Default = true,
    Callback = function(v) PX.SHOW_INDICATORS = v end
})
PX.section(tab, "Stats Card", [[A movable card showing your own dino's live stats.

Stats Card: shows the card.
The indented toggles choose what appears on it: growth stage, mass gain multiplier, weight, growth timer, nutrition and wellbeing.
Drag Stats Card: lets you move the card. Turn it off to lock it in place.
Hide While Menu Open: hides the card while the menu is open, so it does not cover it.
Reset Stats Card Position: puts it back in its corner if you lose it off-screen.]])
ui.statsCard   = tab:AddToggle({ Name = "Stats Card", Default = false, Callback = function(v) PX.STATS_CARD = v end })
ui.scGrowth    = tab:AddToggle({ Name = "  Growth Stage",         Default = true,  Callback = function(v) PX.SC_GROWTH = v end })
ui.scMass      = tab:AddToggle({ Name = "  Mass Gain Multiplier", Default = true,  Callback = function(v) PX.SC_MASS = v end })
ui.scWeight    = tab:AddToggle({ Name = "  Weight",               Default = true,  Callback = function(v) PX.SC_WEIGHT = v end })
ui.scTimer     = tab:AddToggle({ Name = "  Growth Timer",         Default = true,  Callback = function(v) PX.SC_TIMER = v end })
ui.scNutrition = tab:AddToggle({ Name = "  Nutrition Stats",      Default = true,  Callback = function(v) PX.SC_NUTRITION = v end })
ui.scWellbeing = tab:AddToggle({ Name = "  Wellbeing Stats",      Default = true,  Callback = function(v) PX.SC_WELLBEING = v end })
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
PX.section(tab, "Skin Changer", [[Skin: changes how your dino looks to you only. Everyone else still sees your real skin.]])
do
    local items = (PX.skinsForCurrentDino and (PX.skinsForCurrentDino())) or { "Default" }
    PX.skinDropdown = tab:AddDropdown({
        Name = "Skin",
        Items = items,
        Default = "Default",
        Callback = function(v)
            if type(v) ~= "string" then return end
            PX.SKIN_SELECTED = v
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
PX.section(tab, "Fog", [[No Fog: removes fog and haze.]])
ui.noFog = tab:AddToggle({
    Name = "No Fog",
    Default = false,
    Callback = function(v)
        PX.NO_FOG = v
        if v then PX.enableNoFog() else PX.restoreNoFog() end
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
                if PX.MOD_KICK or (PX.AFK_FARM and PX.AFK_FARM_ADMIN_KICK) then
                    pcall(function() LocalPlayer:Kick("[EazyCheats] Admin detected: " .. player.DisplayName) end)
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
        if PX.MOD_CHECK or PX.MOD_KICK or (PX.AFK_FARM and PX.AFK_FARM_ADMIN_KICK) then
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
            pcall(function() PX.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
            pcall(function() PX.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
        end
        if PX.afkSafetyPlatform then pcall(function() PX.afkSafetyPlatform:Destroy() end); PX.afkSafetyPlatform = nil end
        pcall(function()
            local r = PX.getLocalPhysicsRoot()
            if r then r.Anchored = false end
        end)
        PX.afkSafetyState = nil
    end
    -- Speed Boost / Escape Burst / Instant Accel teardown
    PX.SPEED_BOOST = false
    PX.SPEED_BURST = false
    PX.SPEED_BURST_ACTIVE = false
    PX.INSTANT_ACCEL = false
    if PX.speedOrigAccel ~= nil then
        pcall(function()
            local CS = PX.getCS()
            if CS and CS.Movement then CS.Movement.BaseAcceleration = PX.speedOrigAccel end
        end)
        PX.speedOrigAccel = nil
    end
    PX.NO_FOG = false
    pcall(function() RunService:UnbindFromRenderStep("PX_NoFog") end)
    pcall(function() if PX.restoreNoFog then PX.restoreNoFog() end end)
    pcall(function() PX.setCustomTime(false) end)   -- hand the controller's own methods back
    PX.customTime = false
    pcall(function() RunService:UnbindFromRenderStep("PX_CustomTime") end)
    PX.autoSpawnCleanup()
    PX.stopAutoGrow()
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
    pcall(function()
        local names = {
            EazyCheats = true, EazyCheatsIndicator = true, EazyCheatsModAlert = true,
            EazyCheatsVegESP = true, PD_StatsCard = true,
        }
        for _, where in ipairs({ game:GetService("CoreGui"), LocalPlayer:FindFirstChild("PlayerGui") }) do
            if where then
                for _, gui in ipairs(where:GetChildren()) do
                    if names[gui.Name] then pcall(function() gui:Destroy() end) end
                end
            end
        end
    end)
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
                               "EZ_UnlimitedZoom", "EZ_UnlimitedZoomFix" }) do
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
    if g then g.EazyCheats_Unload = PX.unloadScript end
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
        CORPSE_DISTANCE = PX.CORPSE_DISTANCE,
        WORLD_TEXT_SIZE = PX.WORLD_TEXT_SIZE,
        STATS_CARD = PX.STATS_CARD, SC_GROWTH = PX.SC_GROWTH, SC_MASS = PX.SC_MASS, SC_WEIGHT = PX.SC_WEIGHT,
        SC_TIMER = PX.SC_TIMER, SC_NUTRITION = PX.SC_NUTRITION, SC_WELLBEING = PX.SC_WELLBEING,
        SC_DRAG = PX.SC_DRAG,
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
        FREEZE_FOOD = PX.FREEZE_FOOD, FREEZE_WATER = PX.FREEZE_WATER,
        AUTO_CLEAN = PX.AUTO_CLEAN,
        INF_OXYGEN = PX.INF_OXYGEN,
        EAT_WHEN_HUNGRY = PX.EAT_WHEN_HUNGRY,
        LEAVE_SCRAPS = PX.LEAVE_SCRAPS,
        NO_FALL_DAMAGE = PX.NO_FALL_DAMAGE,
        -- Movement governor. Saved so a speed the server already proved is safe survives a
        -- rejoin — rediscovering it costs another round of pushback, and pushback is one step
        -- from a kick.
        -- Governor keys are deliberately NOT saved. They are fixed constants with no controls, so
        -- there is nothing for a user to have chosen — and a config written by the earlier build
        -- carries the maxed-out values that caused the kick, so making them loadable would let an
        -- old save quietly restore an unsafe setup behind a menu that no longer shows it.
        -- Auto Fly's tuning persists, but deliberately NOT the toggle: auto-loading straight
        -- into flight on join would teleport you off your spawn before you could react.
        AUTO_FLY_SPEED = PX.AUTO_FLY_SPEED,
        AUTO_FLY_RADIUS = PX.AUTO_FLY_RADIUS,
        AUTO_FLY_DRIFT = PX.AUTO_FLY_DRIFT,
        AUTO_FLY_ALT = PX.AUTO_FLY_ALT,
        -- Anti AFK DOES persist: unlike Auto Fly it moves nothing, so restoring it on load
        -- is harmless, and it's the setting you'd be most annoyed to lose before going AFK.
        ANTI_AFK = PX.ANTI_AFK,
        -- AFK Farm tuning persists; the toggle deliberately does not (same reason as Auto Fly).
        AFK_FARM_SPEED = PX.AFK_FARM_SPEED,
        AFK_FARM_AVOID = PX.AFK_FARM_AVOID,
        AFK_FARM_WALK = PX.AFK_FARM_WALK,
        AFK_FARM_MEAT = PX.AFK_FARM_MEAT,
        AFK_FARM_SAFETY = PX.AFK_FARM_SAFETY,
        AFK_FARM_ADMIN_KICK = PX.AFK_FARM_ADMIN_KICK,
        FOSSIL_FARM_SPEED = PX.FOSSIL_FARM_SPEED,
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
        -- Speed Boost / Escape Burst / Instant Accel: sliders and keybind persist, toggles
        -- deliberately do NOT — same reasoning as Auto Fly: auto-loading into boosted speed on
        -- join would draw attention before the menu even drew.
        SPEED_MULT = PX.SPEED_MULT,
        SPEED_BURST_MULT = PX.SPEED_BURST_MULT,
        SPEED_BURST_DUR = PX.SPEED_BURST_DUR,
        SPEED_BURST_CD = PX.SPEED_BURST_CD,
        BURST_KEY = (PX.burstKeybind and PX.burstKeybind.Key and PX.burstKeybind.Key ~= Enum.KeyCode.Unknown) and PX.burstKeybind.Key.Name or nil,
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
    setToggle(ui.showWeight, cfg.SHOW_WEIGHT)
    setToggle(ui.bleed, cfg.BLEED_ESP)
    if cfg.PACK_ESP ~= nil then setToggle(ui.packESP, cfg.PACK_ESP) end
    if cfg.PACK_LEADER_ESP ~= nil then setToggle(ui.packLeader, cfg.PACK_LEADER_ESP) end
    setToggle(ui.showDist, cfg.SHOW_DISTANCE)
    setToggle(ui.textHL, cfg.TEXT_HIGHLIGHT)
    setSlider(ui.textSize, cfg.TEXT_SIZE)
    setSlider(ui.hbHeight, cfg.HEALTH_BAR_HEIGHT)
    if cfg.HEALTH_BAR_WIDTH then
        setSlider(ui.hbWidth, math.floor(cfg.HEALTH_BAR_WIDTH * 100))
    end
    if cfg.STAM_BAR_HEIGHT then setSlider(ui.sbHeight, cfg.STAM_BAR_HEIGHT) end
    if cfg.STAM_BAR_WIDTH then setSlider(ui.sbWidth, math.floor(cfg.STAM_BAR_WIDTH * 100)) end
    setSlider(ui.espDist, cfg.ESP_DISTANCE)
    if cfg.CHAMS_FILL_TRANSPARENCY then
        setSlider(ui.chamsFill, math.floor(cfg.CHAMS_FILL_TRANSPARENCY * 100))
    end
    if cfg.CHAMS_OUTLINE_TRANSPARENCY then
        setSlider(ui.chamsOutline, math.floor(cfg.CHAMS_OUTLINE_TRANSPARENCY * 100))
    end
    setToggle(ui.corpse, cfg.CORPSE_ESP)
    setSlider(ui.worldTextSize, cfg.WORLD_TEXT_SIZE)
    setSlider(ui.corpseDist, cfg.CORPSE_DISTANCE)
    if cfg.STATS_CARD ~= nil then setToggle(ui.statsCard, cfg.STATS_CARD) end
    if cfg.SC_GROWTH ~= nil then setToggle(ui.scGrowth, cfg.SC_GROWTH) end
    if cfg.SC_MASS ~= nil then setToggle(ui.scMass, cfg.SC_MASS) end
    if cfg.SC_WEIGHT ~= nil then setToggle(ui.scWeight, cfg.SC_WEIGHT) end
    if cfg.SC_TIMER ~= nil then setToggle(ui.scTimer, cfg.SC_TIMER) end
    if cfg.SC_NUTRITION ~= nil then setToggle(ui.scNutrition, cfg.SC_NUTRITION) end
    if cfg.SC_WELLBEING ~= nil then setToggle(ui.scWellbeing, cfg.SC_WELLBEING) end
    if cfg.SC_DRAG ~= nil then setToggle(ui.scDrag, cfg.SC_DRAG) end
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
    -- Speed Boost / Escape Burst / Instant Accel: sliders only (toggles not restored, same as Auto Fly).
    if cfg.SPEED_MULT then setSlider(PX.speedMultSlider, math.floor(cfg.SPEED_MULT * 100)) end
    if cfg.SPEED_BURST_MULT then setSlider(PX.burstMultSlider, math.floor(cfg.SPEED_BURST_MULT * 100)) end
    if cfg.SPEED_BURST_DUR then setSlider(PX.burstDurSlider, cfg.SPEED_BURST_DUR) end
    if cfg.SPEED_BURST_CD then setSlider(PX.burstCdSlider, cfg.SPEED_BURST_CD) end
    if cfg.BURST_KEY and PX.burstKeybind then
        pcall(function()
            local kc = Enum.KeyCode[cfg.BURST_KEY]
            if kc then PX.burstKeybind:Set(kc, true) end
        end)
    end
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
        setSlider(ui.hitboxVisOpacity, math.floor((1 - cfg.HITBOX_VIS_TRANSPARENCY) * 100))
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
        setSlider(ui.reachVisOpacity, math.floor((1 - cfg.REACH_VIS_TRANSPARENCY) * 100))
    end
    if cfg.REACH_VISUALIZE ~= nil then setToggle(ui.reachVis, cfg.REACH_VISUALIZE) end
    setToggle(ui.reach, cfg.REACH_ENABLED)
    setToggle(PX.autoWaterToggle, cfg.AUTO_WATER)
    if cfg.FORCE_EAT ~= nil then setToggle(PX.forceEatToggle, cfg.FORCE_EAT) end
    if cfg.FAST_EAT ~= nil then setToggle(ui.fastEat, cfg.FAST_EAT) end
    if cfg.FREEZE_FOOD ~= nil then setToggle(ui.freezeFood, cfg.FREEZE_FOOD) end
    if cfg.FREEZE_WATER ~= nil then setToggle(ui.freezeWater, cfg.FREEZE_WATER) end
    if cfg.AUTO_CLEAN ~= nil then setToggle(PX.autoCleanToggle, cfg.AUTO_CLEAN) end
    if cfg.INF_OXYGEN ~= nil then setToggle(ui.infOxygen, cfg.INF_OXYGEN) end
    if cfg.EAT_WHEN_HUNGRY ~= nil then setToggle(ui.eatWhenHungry, cfg.EAT_WHEN_HUNGRY) end
    if cfg.LEAVE_SCRAPS ~= nil then setToggle(ui.leaveScraps, cfg.LEAVE_SCRAPS) end
    setToggle(PX.noFallToggle, cfg.NO_FALL_DAMAGE)
    -- Governor keys are intentionally NOT read back (see getConfigData). A config written by the
    -- earlier build still holds GOVERNOR = false and a maxed-out GOV_SPEED; honouring either would
    -- disable the limit from a saved file, with nothing left in the menu to reveal that it had
    -- happened. The governor is a constant now, so there is no user choice to restore.
    -- Auto Fly sliders only (see getConfigData: the toggle is intentionally never restored).
    if cfg.AUTO_FLY_SPEED then setSlider(PX.autoFlySpeedSlider, cfg.AUTO_FLY_SPEED) end
    if cfg.AUTO_FLY_RADIUS then setSlider(PX.autoFlyRadiusSlider, cfg.AUTO_FLY_RADIUS) end
    if cfg.AUTO_FLY_DRIFT then setSlider(PX.autoFlyDriftSlider, cfg.AUTO_FLY_DRIFT) end
    if cfg.AUTO_FLY_ALT then setSlider(PX.autoFlyAltSlider, cfg.AUTO_FLY_ALT) end
    if cfg.ANTI_AFK ~= nil then setToggle(PX.antiAfkToggle, cfg.ANTI_AFK) end
    -- AFK Farm sliders (toggle intentionally not restored, same reason as Auto Fly)
    if cfg.AFK_FARM_SPEED then setSlider(ui.afkFarmSpeed, cfg.AFK_FARM_SPEED) end
    if cfg.FOSSIL_FARM_SPEED then setSlider(PX.fossilFarmSpeedSlider, cfg.FOSSIL_FARM_SPEED) end
    if cfg.AFK_FARM_AVOID then setSlider(ui.afkFarmAvoid, cfg.AFK_FARM_AVOID) end
    if cfg.AFK_FARM_WALK ~= nil then setToggle(ui.afkFarmWalk, cfg.AFK_FARM_WALK) end
    if cfg.AFK_FARM_MEAT ~= nil then setToggle(ui.afkFarmMeat, cfg.AFK_FARM_MEAT) end
    if cfg.AFK_FARM_SAFETY ~= nil then setToggle(ui.afkFarmSafety, cfg.AFK_FARM_SAFETY) end
    if cfg.AFK_FARM_ADMIN_KICK ~= nil then setToggle(ui.afkFarmAdminKick, cfg.AFK_FARM_ADMIN_KICK) end
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

    -- Restore each toggle's saved keybind (matched by toggle name).
    if type(cfg.KEYBINDS) == "table" then
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

    if cfg.AUTO_GROW then
        setToggle(PX.autoGrowToggle, true)
    end

    PX.freeLock()   -- free build: premium flags stay off whatever the config file says
    PX.SUPPRESS_TOGGLE_NOTIFY = false   -- re-enable per-toggle toasts after the config is applied
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

-- Mobile only: the pads are additive, but the turn pad sits over the bottom-right of the screen
-- and some players would rather have that space back.
if PX.IS_MOBILE then
    PX.section(settingsTab, "Mobile", [[Show Turn Buttons: shows the on-screen turn pad. Turn it off if it covers something you need to tap.]])
    PX.mobTurnToggle = settingsTab:AddToggle({
        Name = "Show Turn Buttons",
        Default = true,
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
    {name = "Freeze Food", order = 17, getState = function() return PX.FREEZE_FOOD end},
    {name = "Freeze Water", order = 18, getState = function() return PX.FREEZE_WATER end},
    {name = "AFK Farm", order = 18.5, getState = function() return PX.AFK_FARM end},
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
