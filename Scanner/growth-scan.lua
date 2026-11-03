-- Prior Extinction: READ-ONLY growth scan (Stage Timer v3, Plan/Stage Timer v3.md section 4).
-- One snapshot of everything that decides how fast YOUR dino grows, written to
-- EazyCheats_growthscan-<UserId>.json in the executor workspace and returned as a string:
--   the dino's attributes, its species growth tables (stage weights, MassGainStages, StateMultipliers, Monster),
--   the nutrition -> mass gain table and every other "MassGain"/"Growth"/"Boost" key in the game's data modules,
--   the live character replica (Growth, Multipliers, Stats), wellbeing stats, the account's boost data, and the
--   constants of every client function that touches MassGain (how the game itself uses it).
-- Sends nothing to the server, calls no game methods (fields are only read), never moves the dino.
local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local LP = Players.LocalPlayer
local OUT = { t = os.time(), place = game.PlaceId, job = game.JobId }
local seen = {}

-- Plain copy: numbers/strings/booleans, nested tables to `depth`, Instances as their path. Cycles cut.
local function copy(v, depth)
    local tv = typeof(v)
    if tv == "number" or tv == "string" or tv == "boolean" then return v end
    if tv == "Instance" then return "<" .. v:GetFullName() .. ">" end
    if tv == "EnumItem" or tv == "Vector3" or tv == "Color3" then return tostring(v) end
    if tv ~= "table" then return "<" .. tv .. ">" end
    if seen[v] then return "<cycle>" end
    if (depth or 0) <= 0 then return "<table>" end
    seen[v] = true
    local out = {}
    for k, x in pairs(v) do
        if type(x) ~= "function" then out[tostring(k)] = copy(x, depth - 1) end
    end
    seen[v] = nil
    return out
end

-- Every key under `t` (to `depth`) whose name matches `pat`, as "a.b.c" = value.
local function find(t, pat, depth, prefix, hits, visited)
    hits, visited = hits or {}, visited or {}
    if type(t) ~= "table" or visited[t] or depth < 0 then return hits end
    visited[t] = true
    for k, v in pairs(t) do
        local path = (prefix and (prefix .. ".") or "") .. tostring(k)
        if string.find(string.lower(tostring(k)), pat) then hits[path] = copy(v, 3) end
        if type(v) == "table" then find(v, pat, depth - 1, path, hits, visited) end
    end
    return hits
end

local exec = ""
pcall(function() exec = tostring((identifyexecutor and select(1, identifyexecutor())) or "") end)
OUT.exec = exec
local XENO = string.find(string.lower(exec), "xeno", 1, true) ~= nil

-- 1. The dino and the player, as attributes.
local ch = LP.Character
pcall(function() OUT.charAttrs = copy(ch:GetAttributes(), 1) end)
pcall(function() OUT.playerAttrs = copy(LP:GetAttributes(), 1) end)
OUT.players = #Players:GetPlayers()
local sp = ch and ch:GetAttribute("Type")
OUT.species = sp

-- 2. The species' growth data.
pcall(function()
    local m = require(RS.DinosaurData[sp])
    OUT.topKeys = {}
    for k in pairs(m) do table.insert(OUT.topKeys, tostring(k)) end
    local stages = {}
    for st, row in pairs(m.GrowthStages) do
        local e = { keys = {} }
        for k, v in pairs(row) do
            table.insert(e.keys, tostring(k))
            if type(v) == "table" and (k == "Male" or k == "Female" or k == "M" or k == "F") then
                e[tostring(k)] = { CoreStats = copy(v.CoreStats, 2) }
            end
        end
        e.CoreStats = copy(row.CoreStats, 2)
        e.Balancing = copy(row.Balancing, 3)
        e.Diet = copy(row.Diet, 3)
        e.growthKeys = find(row, "mass", 4)
        stages[tostring(st)] = e
    end
    OUT.growthStages = stages
    OUT.sharedGrowth = copy(m.Shared and m.Shared.Growth, 5)
    OUT.sharedKeys = {}
    for k in pairs(m.Shared or {}) do table.insert(OUT.sharedKeys, tostring(k)) end
    OUT.sharedDiet = copy(m.Shared and m.Shared.Diet, 3)
    OUT.monsterMilestones = copy(m.MonsterMilestones, 2)
end)

-- 3. Growth-looking keys in the few shared data modules that can hold them (a light pass: the client may be
-- farming, so no sweep over every module), and the names of the rest.
OUT.dataHits, OUT.sharedModules = {}, {}
pcall(function()
    for _, mod in ipairs(RS.Shared:GetChildren()) do
        if mod:IsA("ModuleScript") then
            table.insert(OUT.sharedModules, mod.Name)
            local n = string.lower(mod.Name)
            if n == "wellbeingdata" or n == "packdata" or string.find(n, "boost") or string.find(n, "growth") then
                local ok, t = pcall(require, mod)
                if ok and type(t) == "table" then
                    local hits = find(t, "mass", 5)
                    for k, v in pairs(find(t, "growth", 5)) do hits[k] = v end
                    for k, v in pairs(find(t, "boost", 5)) do hits[k] = v end
                    if next(hits) then OUT.dataHits[mod.Name] = hits end
                end
            end
        end
    end
end)
pcall(function() OUT.nutritionSettings = copy(require(RS.Shared.WellbeingData).NutritionSettings, 4) end)

-- 4. The live character state (not on Xeno: requiring CharacterState freezes it).
if not XENO then
    pcall(function()
        local CS = require(RS.Common.CharacterState)
        local d = CS.Replica.Data
        OUT.replicaKeys = {}
        for k in pairs(d) do table.insert(OUT.replicaKeys, tostring(k)) end
        OUT.growth = copy(d.Growth, 3)
        OUT.multipliers = copy(d.Multipliers, 3)
        OUT.stats, OUT.maxStats = copy(d.Stats, 2), copy(d.MaxStats, 2)
        OUT.replicaGrowthHits = find(d, "growth", 3)
        for k, v in pairs(find(d, "boost", 3)) do OUT.replicaGrowthHits[k] = v end
        OUT.savable = copy(CS.Wellbeing and CS.Wellbeing.SavableStats, 2)
        OUT.csGrowth = copy(CS.Growth, 2)
        pcall(function() OUT.gait = CS.Movement:GetGaitKey() end)
        pcall(function() OUT.moving = CS.Movement.isMoving end)
        OUT.actions = copy(CS.Actions, 1)
    end)
    -- 5. The account's boosts (DataController's own data; fields only, no calls).
    pcall(function()
        local Knit = require(RS.Packages.Knit)
        local DC = Knit.GetController("DataController")
        OUT.dataControllerBoosts = find(DC, "boost", 4)
        pcall(function() OUT.accountBoosts = find(DC.Replica.Data, "boost", 4) end)
    end)
    -- 6. How the client itself uses MassGain: constants of every function that mentions it.
    pcall(function()
        local fns = {}
        if type(filtergc) == "function" then
            for _, key in ipairs({ "MassGain", "MassGainStages", "DecayCurveRate", "GrowthBoost", "FasterMonsterBoost",
                "New Additional Mass:", "New Additional Mass: " }) do
                local ok, list = pcall(filtergc, "function", { Constants = { key } }, false)
                if ok and type(list) == "table" then
                    for _, f in ipairs(list) do fns[f] = true end
                end
            end
        end
        local out, n = {}, 0
        for f in pairs(fns) do
            n = n + 1
            if n > 30 then break end
            local e = {}
            pcall(function() e.src, e.line, e.name = debug.info(f, "sln") end)
            pcall(function()
                local cs = {}
                for i, c in ipairs(debug.getconstants(f)) do
                    if type(c) == "string" or type(c) == "number" then cs[#cs + 1] = c end
                    if i > 200 then break end
                end
                e.constants = cs
            end)
            out[#out + 1] = e
        end
        OUT.massGainFunctions = out
    end)
end

-- 7. The replica remotes the game has (names only).
pcall(function()
    OUT.remotes = {}
    for _, r in ipairs(RS.RemoteEvents:GetChildren()) do table.insert(OUT.remotes, r.Name) end
end)

local json = HttpService:JSONEncode(OUT)
pcall(writefile, "EazyCheats_growthscan-" .. tostring(LP.UserId) .. ".json", json)
return json
