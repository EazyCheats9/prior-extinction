-- Passive fall recorder. Listens to attributes and samples position, writes prior-fallscan.log.
-- Sends no remotes, sets no attributes, moves nothing, installs no hooks. Stops itself after 90 minutes.
-- Load with live-reload, label prior-fallscan (STATE comes from live-reload).
if game.GameId ~= 2527789729 then return "wrong game" end

local LOG = "prior-fallscan.log"
local RUN_FOR = 90 * 60
local SAMPLE = 0.2
local RING = 1500   -- 5 minutes of path
local DROP_PCT = 1

local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local started = os.clock()

local function stamp() return os.date("!%H:%M:%S") .. string.format(" +%.2f", os.clock() - started) end
local function write(s) pcall(appendfile, LOG, stamp() .. " " .. s .. "\n") end

local CS
pcall(function() CS = require(game:GetService("ReplicatedStorage").Common.CharacterState) end)
local function replicaCF()
    local d = CS and CS.Replica and CS.Replica.Data
    return d and d.CFrame
end
local function posLine()
    local ch = lp.Character
    local r = ch and ch.PrimaryPart
    return string.format("client=%s server=%s replica=%s falling=%s water=%s state=%s", r and tostring(r.Position) or "nil",
        tostring(lp:GetAttribute("ServerPosition")), tostring(replicaCF() and replicaCF().Position),
        tostring(CS and CS.Falling), tostring(CS and CS.IsInWater), tostring(CS and CS.MovementState))
end

-- What the dino was doing when an immunity changed.
local function actionLine()
    local on = {}
    pcall(function()
        for k, v in pairs(CS.Actions) do if v == true then on[#on + 1] = tostring(k) end end
    end)
    return #on > 0 and table.concat(on, ",") or "none"
end

local ring = {}
local function dumpRing(why)
    local n = #ring
    if n == 0 then return end
    local parts = {}
    for i = math.max(1, n - 25), n do
        local s = ring[i]
        parts[#parts + 1] = string.format("%.2f:%.1f", s.t, s.y)
    end
    write("  ring[" .. why .. "] " .. table.concat(parts, " "))
end

-- Where on the recorded path is this point? Answers how old a snap-back's landing spot is.
local function nearestOnPath(target, skip)
    local best, age
    local now = os.clock() - started
    for _, s in ipairs(ring) do
        if now - s.t > skip then
            local d = (s.p - target).Magnitude
            if not best or d < best then best, age = d, now - s.t end
        end
    end
    if best then write(string.format("  target is %.1f studs from the path, as it was %.1f s ago", best, age)) end
end

local function bindChar(ch)
    if not ch then return end
    write(string.format("char %s %s stage=%s tid=%s tfi=%s fdi=%s", tostring(ch.Name),
        tostring(ch:GetAttribute("Type")), tostring(ch:GetAttribute("Stage")), tostring(ch:GetAttribute("TeleportId")),
        tostring(ch:GetAttribute("TeleportFallImmunity")), tostring(ch:GetAttribute("FallDamageImmunity"))))

    for _, name in ipairs({ "TeleportFallImmunity", "FallDamageImmunity", "TeleportId", "Teleporting", "Attached" }) do
        local last = ch:GetAttribute(name)
        STATE.connect(ch:GetAttributeChangedSignal(name), function()
            local v = ch:GetAttribute(name)
            if name == "Teleporting" and (v == nil) == (last == nil) then last = v; return end   -- hub writes it every frame
            local r = ch.PrimaryPart
            write(string.format("ATTR %s %s -> %s y=%.1f server=%s", name, tostring(last), tostring(v),
                r and r.Position.Y or 0/0, tostring(lp:GetAttribute("ServerPosition"))))
            last = v
            if name == "TeleportFallImmunity" or name == "TeleportId" or name == "FallDamageImmunity" then
                write("  pos " .. posLine() .. " actions=" .. actionLine())
                dumpRing(name)
                if name == "TeleportId" and r then nearestOnPath(r.Position, 0.3) end
            end
        end)
    end

    -- Any other attribute with immunity in its name, on the body or the player, the moment the server writes it.
    local known = { TeleportFallImmunity = true, FallDamageImmunity = true }
    local function anyImmunity(owner, who)
        STATE.connect(owner.AttributeChanged, function(name)
            local low = name:lower()
            if not known[name] and (low:find("immun") or low:find("invinc") or low:find("protect")) then
                write(string.format("ATTR %s %s = %s actions=%s  %s", who, name, tostring(owner:GetAttribute(name)), actionLine(), posLine()))
            end
        end)
    end
    anyImmunity(ch, "body")
    anyImmunity(lp, "player")

    local hp = ch:GetAttribute("Health")
    STATE.connect(ch:GetAttributeChangedSignal("Health"), function()
        local v = ch:GetAttribute("Health")
        local max = ch:GetAttribute("MaxHealth")
        if hp and v and max and max > 0 then
            local pct = (hp - v) / max * 100
            if pct >= DROP_PCT then
                local r = ch.PrimaryPart
                write(string.format("HIT -%.1f = %.2f%% of max %.0f y=%.1f tfi=%s tid=%s", hp - v, pct, max,
                    r and r.Position.Y or 0/0, tostring(ch:GetAttribute("TeleportFallImmunity")),
                    tostring(ch:GetAttribute("TeleportId"))))
                dumpRing("hit")
            end
        end
        hp = v
    end)
end

for _, name in ipairs({ "SpawnInvincible", "DeathType", "QueuedForTeleport" }) do
    local last = lp:GetAttribute(name)
    STATE.connect(lp:GetAttributeChangedSignal(name), function()
        local v = lp:GetAttribute(name)
        write(string.format("PLAYER %s %s -> %s", name, tostring(last), tostring(v)))
        last = v
    end)
end

write("watch on place " .. tostring(game.PlaceId) .. " version " .. tostring(game.PlaceVersion))
bindChar(lp.Character)
STATE.connect(lp.CharacterAdded, bindChar)

task.spawn(function()
    local lastCF = replicaCF()
    write("  pos " .. posLine())
    while STATE.alive() and os.clock() - started < RUN_FOR do
        local ch = lp.Character
        local r = ch and ch.PrimaryPart
        if r then
            ring[#ring + 1] = { t = os.clock() - started, y = r.Position.Y, p = r.Position }
            if #ring > RING then table.remove(ring, 1) end
        end
        local cf = replicaCF()
        if cf ~= lastCF then
            lastCF = cf
            write("REPLICA CFrame changed  " .. posLine())
        end
        task.wait(SAMPLE)
    end
    if STATE.alive() then write("watch off (time up)") end
end)

STATE.onCleanup(function() write("watch off") end)
return "armed"
