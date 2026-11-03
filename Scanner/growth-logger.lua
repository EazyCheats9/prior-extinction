-- Prior Extinction: READ-ONLY growth logger (Stage Timer v3 plan, Plan/Stage Timer v3.md section 4).
-- Records every growth tick of YOUR dino, and what it was doing, to EazyCheats_growthlog-<UserId>.txt in the
-- executor workspace. It sends nothing to the server, never moves the dino and changes nothing in the game or
-- the hub: it only reads replicated values and listens to the game's own update events.
-- Stops by itself after 45 minutes; getgenv().PriorGrowthLog_Stop() stops it early. Running it again restarts it.
local env = getgenv and getgenv() or _G
if env.PriorGrowthLog_Stop then pcall(env.PriorGrowthLog_Stop) end

local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local LP = Players.LocalPlayer
local RUN_SECS, SAMPLE_SECS, FLUSH_SECS = 45 * 60, 2, 10
local FILE = "EazyCheats_growthlog-" .. tostring(LP.UserId) .. ".txt"

local stopped, conns, lines, pending, T0 = false, {}, {}, {}, os.clock()
local function put(t)
    t.t = math.floor((os.clock() - T0) * 100 + 0.5) / 100
    local ok, s = pcall(function() return HttpService:JSONEncode(t) end)
    if ok then pending[#pending + 1] = s end
end
local function flush()
    if #pending == 0 then return end
    local chunk = table.concat(pending, "\n") .. "\n"
    for _, s in ipairs(pending) do lines[#lines + 1] = s end
    pending = {}
    local ok = type(appendfile) == "function" and pcall(appendfile, FILE, chunk)
    if not ok then pcall(writefile, FILE, table.concat(lines, "\n") .. "\n") end
end

-- Plain copy of a small table (numbers, strings, booleans; nested one level), for the log.
local function copy(t, depth)
    if type(t) ~= "table" then return t end
    local out = {}
    for k, v in pairs(t) do
        local tv = type(v)
        if tv == "number" or tv == "string" or tv == "boolean" then out[tostring(k)] = v
        elseif tv == "table" and (depth or 0) < 2 then out[tostring(k)] = copy(v, (depth or 0) + 1) end
    end
    return out
end

local exec = ""
pcall(function() exec = tostring((identifyexecutor and select(1, identifyexecutor())) or "") end)
local XENO = string.find(string.lower(exec), "xeno", 1, true) ~= nil   -- CharacterState freezes Xeno: never require it there

local CS
if not XENO then pcall(function() CS = require(RS.Common.CharacterState) end) end
local WB
pcall(function() WB = require(RS.Shared.WellbeingData) end)

-- Once per dino: the species' growth rules and stage weights, so the log can be read on its own.
local headerFor
local function header(ch)
    local sp = ch and ch:GetAttribute("Type")
    if not sp or headerFor == ch then return end
    headerFor = ch
    local h = { ev = "dino", sp = sp, gender = ch:GetAttribute("Gender"), exec = exec, place = game.PlaceId,
        job = game.JobId, players = #Players:GetPlayers(), unix = os.time() }
    pcall(function()
        local m = require(RS.DinosaurData[sp])
        local w = {}
        for st, row in pairs(m.GrowthStages) do
            if row.CoreStats and type(row.CoreStats.Weight) == "number" then w[tostring(st)] = row.CoreStats.Weight end
        end
        h.weights = w
        local g = m.Shared and m.Shared.Growth
        if g then
            h.massGainStages = copy(g.MassGainStages, 0)
            h.stateMult = copy(g.StateMultipliers, 1)
            h.monster = copy(g.Monster, 1)
        end
        if m.MonsterMilestones and m.MonsterMilestones.Rewards then
            local ks = {}
            for k in pairs(m.MonsterMilestones.Rewards) do ks[#ks + 1] = tostring(k) end
            table.sort(ks)
            h.milestones = ks
        end
    end)
    pcall(function() h.nutritionTable = copy(WB.NutritionSettings.MassGainMultiplier, 0) end)
    put(h)
end

local function myReplicaId()
    local id
    pcall(function() id = CS and CS.Replica and CS.Replica.Id end)
    if id == nil then
        pcall(function() local b = LP.Character:FindFirstChild("ReplicaBind"); id = b and b.Value end)
    end
    return id
end

-- The game's own replica update events: our dino's growth and multipliers, and any SavableStats update (the
-- wellbeing replica - worth knowing for Xeno, which cannot read CharacterState).
local remotes = RS:FindFirstChild("RemoteEvents")
if remotes then
    for _, name in ipairs({ "ReplicaSet", "ReplicaSetValues" }) do
        local r = remotes:FindFirstChild(name)
        if r and r:IsA("RemoteEvent") then
            conns[#conns + 1] = r.OnClientEvent:Connect(function(id, path, value)
                if stopped or type(path) ~= "table" then return end
                local p1 = path[1]
                local mine = id == myReplicaId()
                if (mine and (p1 == "Growth" or p1 == "Multipliers")) or p1 == "SavableStats" then
                    local v = value
                    if type(v) == "table" then v = copy(v, 0) end
                    put({ ev = name, id = id, mine = mine, path = copy(path, 0), v = v })
                end
            end)
        end
    end
end

-- Every growth tick also changes the Weight attribute (works on every executor).
local wConn
local function hookChar(ch)
    if wConn then pcall(function() wConn:Disconnect() end) end
    wConn = nil
    if not ch then return end
    put({ ev = "character", sp = ch:GetAttribute("Type"), stage = ch:GetAttribute("Stage") })
    wConn = ch:GetAttributeChangedSignal("Weight"):Connect(function()
        if not stopped then put({ ev = "weight", w = ch:GetAttribute("Weight"), stage = ch:GetAttribute("Stage") }) end
    end)
end
hookChar(LP.Character)
conns[#conns + 1] = LP.CharacterAdded:Connect(hookChar)

local function sample()
    local ch = LP.Character
    if not (ch and ch.Parent) then put({ ev = "s", alive = false }) return end
    header(ch)
    local s = { ev = "s", w = ch:GetAttribute("Weight"), stage = ch:GetAttribute("Stage"),
        players = #Players:GetPlayers(), empty = LP:GetAttribute("EmptyMultiplier") }
    pcall(function() s.status = env.EazyCheats_Status end)
    if CS then
        pcall(function()
            local d = CS.Replica.Data
            local g = d.Growth
            s.mass, s.delta, s.gstage, s.next, s.paused = g.Mass, g.Delta, g.Stage, g.NextStage, g.Paused
            s.mult = copy(d.Multipliers, 0)
            s.food, s.foodMax = d.Stats and d.Stats.Food, d.MaxStats and d.MaxStats.Food
        end)
        pcall(function() s.gait = CS.Movement:GetGaitKey() end)
        pcall(function() s.moving = CS.Movement.isMoving end)
        pcall(function()
            local a = CS.Actions
            s.act = { F = a.Forward, Run = a.Run, Spr = a.Sprint, Trot = a.Trot, Rest = a.Rest, Sleep = a.Sleep,
                Eat = a.Consuming, Crouch = a.Crouch }
        end)
        pcall(function()
            local w = CS.Wellbeing.SavableStats
            s.nut = { P = w.Proteins, F = w.Fats, Ca = w.Calcium, Fi = w.Fiber, Cb = w.Carbohydrates,
                Act = w.Activity, Com = w.Comfort, Cl = w.Cleanliness, Imm = w.Immunity }
        end)
    end
    put(s)
end

put({ ev = "start", exec = exec, xeno = XENO, cs = CS ~= nil, place = game.PlaceId, job = game.JobId, unix = os.time() })
pcall(function()
    game:GetService("StarterGui"):SetCore("SendNotification", { Title = "Growth logger",
        Text = "Logging growth for 45 min (read-only).", Duration = 6 })
end)

env.PriorGrowthLog_Stop = function()
    if stopped then return end
    stopped = true
    for _, c in ipairs(conns) do pcall(function() c:Disconnect() end) end
    if wConn then pcall(function() wConn:Disconnect() end) end
    put({ ev = "stop", unix = os.time() })
    flush()
    env.PriorGrowthLog_Stop = nil
end

task.spawn(function()
    local lastFlush = os.clock()
    while not stopped and os.clock() - T0 < RUN_SECS do
        pcall(sample)
        if os.clock() - lastFlush >= FLUSH_SECS then flush(); lastFlush = os.clock() end
        task.wait(SAMPLE_SECS)
    end
    if env.PriorGrowthLog_Stop then env.PriorGrowthLog_Stop() end
end)
