--EZ:__EZ_WM__
-- EazyCheats | Prior Extinction Hub | FREE
local _pguo do local B="" for c=65,90 do B=B..string.char(c) end for c=97,122 do B=B..string.char(c) end for c=48,57 do B=B..string.char(c) end B=B..string.char(43)..string.char(47) local L={} for i=1,#B do L[B:sub(i,i)]=i-1 end local Kr={90,170,214,100,75,120,228,156} local m=228 local bx=bit32.bxor local ch=string.char local K={} for i=1,#Kr do K[i]=bx(Kr[i],m) end local C={} _pguo=function(s) local c=C[s] if c then return c end local o={} local a,b,n=0,0,0 for i=1,#s do local v=L[s:sub(i,i)] if v then a=a*64+v b=b+6 if b>=8 then b=b-8 local by=math.floor(a/2^b)%256 a=a%(2^b) o[#o+1]=ch(bx(by,K[n%8+1])) n=n+1 end end end local r=table.concat(o) C[s]=r return r end end

local _v0 = game:GetService(_pguo("7iJT+crucw=="))
local _v1 = game:GetService(_pguo("7Dtc08rudhHdKw=="))
local _v2 = _v0.LocalPlayer
local _v3 = workspace.CurrentCamera
local _v4 = {}
_v4.BUILD_TAG = _pguo("4RF32vDLTSfh")
_v4.ESP_ENABLED = false
_v4.CHAMS_ENABLED = false
_v4.TRACERS_ENABLED = false
_v4.SHOW_NAME = true
_v4.SHOW_DINO = true
_v4.SHOW_STAGE = true
_v4.SHOW_GENDER = true
_v4.SHOW_HEALTH = true
_v4.SHOW_STAMINA = true
_v4.SHOW_WEIGHT = true
_v4.SHOW_DISTANCE = true
_v4.ESP_DISTANCE = 5000
_v4.ESP_COLOR = Color3.fromRGB(0, 255, 100)
_v4.HEALTH_COLOR_FULL = Color3.fromRGB(0, 255, 0)
_v4.HEALTH_COLOR_MID = Color3.fromRGB(255, 255, 0)
_v4.HEALTH_COLOR_LOW = Color3.fromRGB(255, 0, 0)
_v4.STAMINA_COLOR = Color3.fromRGB(70, 170, 255)
_v4.WEIGHT_COLOR = Color3.fromRGB(255, 210, 70)
_v4.staminaCur = {}
_v4.staminaMax = {}
_v4.SHOW_FOOD_BAR, _v4.SHOW_FOOD_NUM = false, false
_v4.SHOW_WATER_BAR, _v4.SHOW_WATER_NUM = false, false
_v4.SHOW_INFECT_BAR, _v4.SHOW_INFECT_NUM = false, false
_v4.FOOD_COLOR = Color3.fromRGB(230, 140, 50)
_v4.WATER_COLOR = Color3.fromRGB(40, 210, 230)
_v4.INFECT_COLOR = Color3.fromRGB(175, 90, 230)
_v4.INFECT_MAX = 100
_v4.infectCur = {}
_v4.foodSeenMax, _v4.waterSeenMax = {}, {}
function _v4.espVital(_v5, _v6, _v7, _v8, _v9, _va, _vb, _vc, _vd)
local _ve = type(_v8) == _pguo("0Dtf4sru")
local _vf = _vc and _ve
if _v5 then
_v5.Visible = _vf
if _vf then
local _vg = _v5:FindFirstChild(_pguo("+Cde7A=="))
if _vg then _vg.Size = UDim2.new(math.clamp(_v8 / math.max(_v9 or _v8, 1), 0, 1), 0, 1, 0) end
local _vh = _v5:FindFirstChild(_pguo("6itK9A=="))
if _vh then _vh.Text = _v7 .. " " .. math.floor(_v8) .. (_va and ("/" .. math.floor(_va)) or "") end
end
end
if _vd and not _vf and _ve then
_v6[#_v6 + 1] = string.format(_pguo("gihd7tu8YxfSIUC9jb8lC5xwF/OPuWREkShd7tui"), _vb:ToHex(), _v7, math.floor(_v8))
end
end
_v4.BLEED_ESP = false
_v4.BLEED_COLOR = Color3.fromRGB(190, 30, 30)
_v4.bleedForecast = {}
_v4.PACK_ESP = false
_v4.PACK_ESP_COLOR = Color3.fromRGB(180, 220, 255)
_v4.PACK_LEADER_ESP = false
_v4.PACK_LEADER_COLOR = Color3.fromRGB(255, 215, 0)
_v4.packMembers = {}
_v4.packLeaders = {}
_v4.CHAMS_FILL_TRANSPARENCY = 0.7
_v4.CHAMS_OUTLINE_TRANSPARENCY = 0
_v4.TEXT_SIZE = 14
_v4.HEALTH_BAR_HEIGHT = 6
_v4.HEALTH_BAR_WIDTH = 0.8
_v4.STAM_BAR_HEIGHT = 6
_v4.STAM_BAR_WIDTH = 0.8
_v4.CORPSE_ESP = false
_v4.CORPSE_DISTANCE = 5000
_v4.CORPSE_COLOR = Color3.fromRGB(255, 100, 100)
_v4.CORPSE_INF_ESP = true
_v4.FOSSIL_SMALL = false
_v4.FOSSIL_MEDIUM = false
_v4.FOSSIL_LARGE = false
_v4.FOSSIL_DIST_SMALL = 1500
_v4.FOSSIL_DIST_MEDIUM = 3000
_v4.FOSSIL_DIST_LARGE = 5000
_v4.FOSSIL_COLOR_S = Color3.fromRGB(200, 180, 80)
_v4.FOSSIL_COLOR_M = Color3.fromRGB(255, 200, 50)
_v4.FOSSIL_COLOR_L = Color3.fromRGB(255, 160, 0)
_v4.MEAT_ESP = false
_v4.MEAT_DISTANCE = 5000
_v4.MEAT_COLOR = Color3.fromRGB(255, 150, 50)
_v4.CLAY_ESP = false
_v4.CLAY_DISTANCE = 5000
_v4.CLAY_COLOR = Color3.fromRGB(210, 160, 100)
_v4.TEXT_HIGHLIGHT = false
_v4.WORLD_TEXT_SIZE = 12
_v4.ANTI_BLACKSCREEN = false
_v4.SHOW_INDICATORS = true
_v4.AUTO_GROW = false
_v4.AUTO_WATER = false
_v4.SIP_RATE = 4
_v4.FORCE_EAT = false
_v4.LEAVE_SCRAPS = false
_v4.scrapBite, _v4.scrapBiteType = nil, nil
function _v4.noteBiteDrop(_vi)
local _vj
pcall(function() _vj = _v2.Character:GetAttribute(_pguo("6jdC5Q==")) end)
if _vj ~= _v4.scrapBiteType then _v4.scrapBite, _v4.scrapBiteType = nil, _vj end
if type(_vi) == _pguo("0Dtf4sru") and _vi > 0 and _vi < 1e6 then
_v4.scrapBite = math.max(_vi, (_v4.scrapBite or 0) * 0.9)
end
end
function _v4.isScraps(_vk)
if type(_vk) ~= _pguo("0Dtf4sru") then return false end
local _vl
pcall(function() _vl = _v2.Character:GetAttribute(_pguo("6jdC5Q==")) end)
local _vm = (_vl == _v4.scrapBiteType) and _v4.scrapBite or nil
return _vk <= math.max(5, (_vm or 0) * 2.2)
end
function _v4.scrapsWanted()
return _v4.LEAVE_SCRAPS or (_v4.LEGIT_FARM and _v4.LF_SCRAPS) or false
end
_v4.FAST_EAT = true
_v4.FAST_EAT_RATE = 4
_v4.FREEZE_FOOD = false
_v4.FREEZE_WATER = false
_v4.EAT_WHEN_HUNGRY = false
_v4.foodCur = {}
_v4.foodMax = {}
_v4.STATS_CARD = false
_v4.SC_GROWTH, _v4.SC_MASS, _v4.SC_WEIGHT, _v4.SC_TIMER, _v4.SC_NUTRITION, _v4.SC_WELLBEING = true, true, true, true, true, true
_v4.SC_NAME = true
_v4.SC_DRAG = false
_v4.SC_HIDE_WITH_MENU = true
_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO = 0.62, 0, 0, 16
_v4.SKIN_SELECTED = _pguo("+itU4drwdA==")
_v4.FISH_ESP = false
_v4.FLY = false
_v4.FLY_SPEED = 70
_v4.AUTO_FLY = false
_v4.AUTO_FLY_SPEED = 25
_v4.AUTO_FLY_RADIUS = 1000
_v4.AUTO_FLY_DRIFT = 10
_v4.AUTO_FLY_ALT = 300
_v4.ANTI_AFK = false
_v4.AFK_FARM = false
_v4.AFK_FARM_SPEED = 50
_v4.AFK_FARM_AVOID = 200
_v4.AFK_FARM_WALK = true
function _v4.dinoEatsMeat()
local _vn, _vo = pcall(function()
return require(game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s=")).Common.CharacterState).Data.Diet.Categories.Meat ~= nil
end)
return _vn and _vo == true
end
_v4.OTHER_FOOD = { [_pguo("/CFc5dy8Jlj9Jlv0xvI=")] = true, Shellfish = true, Eggs = true, Insects = true }
_v4.NUTRIENTS = { _pguo("7jxd9Mr1bgs="), _pguo("+C9G8w=="), _pguo("/S9e48bpbQ=="), _pguo("/S9A4sD0eRzML0bl3A=="), _pguo("+CdQ5d0=") }
_v4.AFK_FARM_SAFETY = true
_v4.AMBER_FARM = false
_v4.AMBER_MINUTES = 120
_v4.AFK_FARM_ADMIN_KICK = true
_v4.AFK_FARM_FLEE = true
_v4.AFK_FARM_UNSTUCK = false
_v4.UNSTUCK_EAT_SECS = 25
_v4.NO_GAIN_SECS = 12
_v4.NO_GAIN_SKIP = 1200
function _v4.foodGap(_vp, _vq)
return math.min(_vq, _vp * _vq / 20)
end
function _v4.foodNoGain(_vr, _vs)
local _vt, _vu = _v4.myFood()
if not (_vt and _vu and _vu > 0) or _vt >= _vu - _v4.foodGap(_vu, 1) then
_vr.gainT, _vr.gainFood = nil, nil
return false
end
if not _vr.gainT or (_vr.gainFood and _vt > _vr.gainFood + 0.001) then _vr.gainT = _vs end
_vr.gainFood = _vt
return _vs - _vr.gainT > _v4.NO_GAIN_SECS
end
function _v4.tookDamage(_vv, _vw)
if type(_vw) ~= _pguo("0Dtf4sru") then return false end
local _vx, _vy = _v4.hurtHp, _v4.hurtChar
_v4.hurtHp, _v4.hurtChar = _vw, _vv
return _vy == _vv and _vx ~= nil and _vw < _vx - 0.5
end
_v4.LEGIT_FARM = false
_v4.LF_AVOID = 200
_v4.LF_RUN_DIST = 100
_v4.LF_MAX_DIST = 1000
_v4.LF_SCRAPS = false
_v4.LF_FLEE = false
_v4.LF_UNSTUCK = true
_v4.LF_REST = true
_v4.LF_ADMIN_KICK = true
_v4.LF_FLYAWAY = true
_v4.LF_FLYAWAY_RADIUS = 150
_v4.AUTO_SWITCH = false
_v4.AS_BUSY = false
_v4.AS_SLOTS = {}
_v4.AS_GENDER = _pguo("8y9e5Q==")
_v4.AS_AUTOBUY = false
_v4.AS_AUTO_ORDER = false
_v4.FARM_TIMER = false
_v4.FT_MINUTES = 120
_v4.REJOIN = false
_v4.REJOIN_MAP = _pguo("8i9B9I/MbBnHK1Y=")
_v4.REJOIN_OK = false
_v4.REJOIN_OK = false
_v4.REJOIN_FILE = _pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HfLK9m8R0GBY88Dy")
pcall(function() _v4.REJOIN_FILE = _pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HfLK9m8R0GM=") .. _v2.UserId .. _pguo("kCRB78E=") end)
_v4.LOBBY_PLACE = 6698800091
_v4.TP_CORPSE = false
_v4.TP_SOLID = true
_v4.TP_CHAIN = false
_v4.TP_OFFSET = 8
_v4.tpBusy = false
_v4.tpTargetId = nil
_v4.tpDone = false
_v4.AUTO_CLEAN = false
_v4.INF_OXYGEN = false
_v4.NO_BLUR = false
_v4.NO_FALL_DAMAGE = false
_v4.FOSSIL_FARM = false
_v4.UNLIMITED_ZOOM = false
_v4.AUTO_SPAWN = false
_v4.AUTO_SPAWN_TARGET = nil
_v4.AUTO_SPAWN_GENDER = nil
_v4.AUTO_SPAWN_ATTEMPTS = 0
_v4.AUTO_SPAWN_DRAWS = {}
_v4.MOD_CHECK = false
_v4.MOD_KICK = false
_v4.MOD_ADMIN_KEYWORDS = {_pguo("0yFW5d39dBfM"), _pguo("3ypf6cE="), _pguo("2itE5cPzcB3M"), _pguo("0Tlc5d0="), _pguo("zTpT5sk="), _pguo("0y9c4cj5cg=="), _pguo("0itT5A==")}
_v4.modAdmins = {}
_v4.tracerLines = {}
_v4.UNLOADED = false
local _vz = {}
_v4.OWN_GUIS = {
EazyCheats = true, EazyCheatsIndicator = true, EazyCheatsModAlert = true, EazyCheatsVegESP = true,
PD_StatsCard = true, EZGuiV1 = true, EazyCheatsTouch = true, EazyCheatsKey = true,
}
function _v4.sweepOwnGuis(_v10)
local _v11, _v12 = {}, {}
local function _v13(_v14) if _v14 and not _v12[_v14] then _v12[_v14] = true; _v11[#_v11 + 1] = _v14 end end
pcall(function() if gethui then _v13(gethui()) end end)
pcall(function() _v13(game:GetService(_pguo("/SFA5ejpaQ=="))) end)
pcall(function() _v13(_v2:FindFirstChild(_pguo("7iJT+cruRw3X"))) end)
for _v15, _v16 in ipairs(_v11) do
for _v15, _v18 in ipairs(_v16:GetChildren()) do
local _v19 = _v18.Name
if _v4.OWN_GUIS[_v19] and not (_v10 and (_v19 == _pguo("+y9I+ez0ZRnKPQ==") or _v19 == _pguo("+y9I+ez0ZRnKPXnl1g=="))) then
pcall(function() _v18:Destroy() end)
end
end
end
end
pcall(_v4.sweepOwnGuis, true)
pcall(function()
local _v1a = getgenv and getgenv()
if _v1a and type(_v1a.EazyCheats_Unload) == _pguo("2Dtc49v1bxY=") then
local _v1b = _v1a.EazyCheats_Unload
_v4.rjReloaded = _v1a.EazyCheats_Unload_Job == game.JobId
_v1a.EazyCheats_Unload = nil
_v1a.EazyCheats_Handoff = true
local _v1c = false
task.spawn(function() pcall(_v1b) _v1c = true end)
local _v1d = os.clock()
while not _v1c and os.clock() - _v1d < 10 do task.wait() end
_v1a.EazyCheats_Handoff = nil
end
end)
pcall(function()
for _v1e, _v1f in ipairs(workspace:GetChildren()) do
if _v1f.Name == _pguo("+y9I+ez0ZRnKPXHp3f9sHQ==") or _v1f.Name == _pguo("+y9I+ez0ZRnKPWLh2/Q=") then _v1f:Destroy() end
end
end)
function _v4.rejoinRead()
local _v1g, _v1h = pcall(function()
return game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONDecode(readfile(_v4.REJOIN_FILE))
end)
return (_v1g and type(_v1h) == _pguo("yi9Q7Mo=")) and _v1h or {}
end
function _v4.rejoinWrite(_v1i)
pcall(function()
if not isfolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) then makefolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) end
writefile(_v4.REJOIN_FILE, game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONEncode(_v1i))
end)
end
function _v4.leaveNote(_v1j, _v1k)
if not _v4.REJOIN_OK then return end
pcall(function()
if not isfolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) then makefolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) end
writefile(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HezK+nRV") .. _v2.Name .. _pguo("kCRB78E="), game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONEncode({
reason = _v1j, finished = _v1k and true or false, t = os.time() }))
end)
if _v1k then
_v4.rjFinished = true
pcall(function()
local _v1l = _v4.rejoinRead()
_v1l.farms, _v1l.pending = {}, nil
_v4.rejoinWrite(_v1l)
end)
end
end
pcall(function()
local _v1m = _v4.rejoinRead()
_v4.REJOIN = _v4.REJOIN_OK and _v1m.on == true
if type(_v1m.map) == _pguo("zTpA6cH7") then _v4.REJOIN_MAP = _v1m.map end
end)
function _v4.lobbyJoin(_v1n)
local _v1o = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local function _v1p(_v1q, _v1r, _v1s, _v1t)
pcall(function()
local _v1u = { Title = _pguo("+y9I+ez0ZRnKPRLSyvZvEdA="), Text = _v1q, Duration = _v1r or 6 }
if _v1s then _v1u.Button1, _v1u.Callback = _v1s, _v1t end
game:GetService(_pguo("7TpT8tv5cj/LJw==")):SetCore(_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="), _v1u)
end)
end
local function _v1v(_v1w)
pcall(function() getgenv().EazyCheats_Unload_State = _v1w end)
end
local _v1x = require(_v1o:WaitForChild(_pguo("7i9R6877ZQs=")):WaitForChild(_pguo("9SBb9A==")))
pcall(function() _v1x.OnStart():await() end)
local _v1y = _v1x.GetService(_pguo("7StA9sruTRnQL1XlwvluDO0rQPbG/2U="))
local _v1z = _pguo("7CtR78v5")
pcall(function() _v1z = _v1x.GetController(_pguo("8iFQ4tbfbxbKPF3sw/ly")).ChosenVersion or _v1z end)
local _v20 = {}
pcall(function()
for _v21, _v22 in pairs(require(_v1o.Shared.LobbyData).Gamemodes[_v1z].Survival.Ecosystems) do
if not _v22.Maintenance then _v20[_v21] = true end
end
end)
local _v23 = _v1n.map
if not _v20[_v23] then _v23 = _v1n.lastMap end
if not _v20[_v23] then _v23 = _v20.Jurassic and _pguo("9DtA4dzvaRs=") or next(_v20) end
if not _v23 then _v1v(_pguo("2S9E5Y/pcA==")) _v1p(_pguo("3SFH7Mu8bhfKbkDlzvggDNYrEu3O7CAU1z1GoIK8cBHdJRLhj+9lCsgrQKDW83UKzSte5g=="), 10) return end
local _v24 = false
local _v25 = Instance.new(_pguo("/Cdc5M7+bB34O1zj2/VvFg=="))
_v25.OnInvoke = function() _v24 = true end
_v1p(_pguo("1CFb7sbyZ1jtO0D2xuphFJ5jEg==") .. _v23 .. _pguo("nidcoJfv"), 8, _pguo("/S9c48rw"), _v25)
for _v26 = 1, 80 do
if _v24 or _v4.UNLOADED then
if _v24 then _v1v(_pguo("3S9c48rwbB3a")) end
_v1p(_pguo("3S9c48rwbB3abh+g3/VjE54vEvPK7nYdzG5L79rucx3SKA=="), 6)
return
end
task.wait(0.1)
end
local _v27 = {}
for _v28 = 1, 8 do
if _v24 or _v4.UNLOADED then return end
local _v29
pcall(function() _v29 = _v1y:GetAllServersForGamemode(_pguo("7TtA9sbqYRQ="), _v23) end)
local _v2a = {}
for _v2b, _v2c in pairs(type(_v29) == _pguo("yi9Q7Mo=") and _v29 or {}) do
local _v2d = 0
for _v28 in pairs(type(_v2c.Players) == _pguo("yi9Q7Mo=") and _v2c.Players or {}) do _v2d = _v2d + 1 end
local _v2f = tonumber(_v2c.MaxPlayerCount) or 150
if _v2d > 0 and _v2d <= _v2f - 2 and not _v27[_v2b] and _v2b ~= _v1n.lastJob then
_v2a[#_v2a + 1] = { id = _v2b, n = _v2d, cap = _v2f }
end
end
table.sort(_v2a, function(_v2g, _v2h) return _v2g.n > _v2h.n end)
local _v2i = _v2a[math.random(1, math.max(1, math.min(3, #_v2a)))]
_v1n.pending = os.time()
_v4.rejoinWrite(_v1n)
local _v2j, _v2k
if _v2i then
_v27[_v2i.id] = true
_v1p(_pguo("1CFb7sbyZ1jfbg==") .. _v23 .. _pguo("nj1X8tn5cliW") .. _v2i.n .. "/" .. _v2i.cap .. _pguo("nj5e4db5cguX"), 6)
_v2j, _v2k = pcall(function() return _v1y:RequestJoinServer(_v1z, _pguo("7TtA9sbqYRQ="), _v23, _v2i.id) end)
else
_v1p(_pguo("0CES79/5blg=") .. _v23 .. _pguo("nj1X8tn5cljSJ0H0yvggVZ4kXenB9W4fni8S8s7yZBfTbl3uyg=="), 6)
_v2j, _v2k = pcall(function() return _v1y:RequestJoinRandomServer(_v1z, _pguo("7TtA9sbqYRQ="), _v23) end)
end
if not _v2j then
_v1p(_pguo("1CFb7o/6YRHSK1a6jw==") .. tostring(_v2k), 6)
elseif type(_v2k) == _pguo("yi9Q7Mo=") and _v2k.Success == false then
_v1p(_pguo("zStA9sruIAvfJ1agwfM6WA==") .. tostring(_v2k.Message), 6)
else
local _v2l = os.clock()
while os.clock() - _v2l < 45 do
if _v24 or _v4.UNLOADED then return end
task.wait(0.5)
end
end
task.wait(3)
end
if not _v4.UNLOADED then _v1v(_pguo("2S9E5Y/pcA==")) end
_v1p(_pguo("3SFH7Mu8bhfKblXl27xpFsohEuGP72UKyCtAoIK8dArHblPnzvVuWNg8Xe2P6Ggdnj1G4d3oIAvdPFflwQ=="), 10)
end
if _v4.REJOIN and (function()
local _v2m, _v2n = pcall(function() return game.PlaceId end)
return _v2m and _v2n == _v4.LOBBY_PLACE
end)() then
pcall(function()
local _v2o = getgenv and getgenv()
if _v2o then
if type(_v2o.EazyCheats_Unload) == _pguo("2Dtc49v1bxY=") then
_v2o.EazyCheats_Handoff = true
pcall(_v2o.EazyCheats_Unload)
_v2o.EazyCheats_Handoff = nil
end
_v2o.EazyCheats_Unload = function() _v4.UNLOADED = true end
_v2o.EazyCheats_Unload_Job = game.JobId
_v2o.EazyCheats_Unload_State = _pguo("1CFb7sbyZw==")
end
end)
task.spawn(function()
local _v2p, _v2q = pcall(_v4.lobbyJoin, _v4.rejoinRead())
if not _v2p then warn(_pguo("5QtT+tbfaB3fOkHdj85lEtEnXLqP") .. tostring(_v2q)) end
end)
return
end
_v4.steps = {}
function _v4.addStep(_v2r, _v2s)
_v4.steps[#_v4.steps + 1] = { interval = _v2r or 1, fn = _v2s }
end
_v4.frameN = 0
table.insert(_vz, _v1.Heartbeat:Connect(function(_v2t)
if _v4.UNLOADED then return end
local _v2u = _v4.frameN + 1
if _v2u >= 2147483000 then _v2u = 0 end
_v4.frameN = _v2u
local _v2v = _v4.steps
for _v2w = 1, #_v2v do
local _v2x = _v2v[_v2w]
if _v2x.interval == 1 or _v2u % _v2x.interval == 0 then
pcall(_v2x.fn, _v2t)
end
end
end))
_v4.rootCacheVisual = setmetatable({}, { __mode = "k" })
_v4.rootCachePhysics = setmetatable({}, { __mode = "k" })
function _v4.resolveRoot(_v2y, _v2z)
if not _v2y then return nil end
local _v30 = _v2y:FindFirstChild(_pguo("/CFW+Q=="))
local _v31 = _v2y:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA=="))
local _v32, _v33
if _v2z then _v32, _v33 = _v31, _v30 else _v32, _v33 = _v30, _v31 end
if _v32 and _v32:IsA(_pguo("/C9B5f/9cgw=")) then return _v32 end
if _v33 and _v33:IsA(_pguo("/C9B5f/9cgw=")) then return _v33 end
local _v34 = _v2y.PrimaryPart
if _v34 and _v34:IsA(_pguo("/C9B5f/9cgw=")) then return _v34 end
local _v35 = _v2y:FindFirstChild(_pguo("9idG4sDk"))
if _v35 then
local _v36 = _v35:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA=="))
if _v36 and _v36:IsA(_pguo("/C9B5f/9cgw=")) then return _v36 end
end
for _v37, _v38 in _v2y:GetChildren() do
if _v38:IsA(_pguo("/C9B5f/9cgw=")) and _v38.Name ~= _pguo("8yFH9MfMYQrK") and _v38.Name ~= _pguo("9idGwsDk") and _v38.Name ~= _pguo("/S9f5d39UBnMOg==") then
return _v38
end
end
local _v39 = _v2y:FindFirstChild(_pguo("9idGwsDk"))
if _v39 and _v39:IsA(_pguo("/C9B5f/9cgw=")) then return _v39 end
for _v3a, _v3b in _v2y:GetDescendants() do
if _v3b:IsA(_pguo("/C9B5f/9cgw=")) and _v3b.Name ~= _pguo("8yFH9MfMYQrK") and _v3b.Name ~= _pguo("/S9f5d39UBnMOg==") then
return _v3b
end
end
return nil
end
function _v4.getRootOf(_v3c, _v3d)
if not _v3c then return nil end
local _v3e = _v3d and _v4.rootCachePhysics or _v4.rootCacheVisual
local _v3f = _v3e[_v3c]
if _v3f and _v3f.Parent then return _v3f end
local _v3g = _v4.resolveRoot(_v3c, _v3d)
_v3e[_v3c] = _v3g
return _v3g
end
function _v4.getLocalRoot()
return _v4.getRootOf(_v2.Character, false)
end
function _v4.getLocalPhysicsRoot()
return _v4.getRootOf(_v2.Character, true)
end
_v4.HITBOX_EXPANDER = false
_v4.HITBOX_VISUALIZE = false
_v4.HITBOX_MULTIPLIER = 1
_v4.HITBOX_VIS_COLOR = Color3.fromRGB(255, 0, 0)
_v4.HITBOX_VIS_TRANSPARENCY = 0.5
local _v3h = {}
local _v3i = {}
_v4.hbShown = setmetatable({}, { __mode = "k" })
_v4.HITBOX_GROUPS = {
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
_v4.SILENT_AIM = false
_v4.SILENT_GROUPS = {
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
_v4.REACH_ENABLED = false
_v4.REACH_MULTIPLIER = 1
_v4.REACH_VISUALIZE = false
_v4.REACH_VIS_TRANSPARENCY = 0.5
local _v3j = {}
_v4.REACH_GROUPS = {
Head = true,
Jaw = true,
Arm = false,
Leg = false,
TailBase = false,
TailMid = false,
TailTip = false,
Thagomizer = false,
}
_v4.PART_GROUP_ORDER = {_pguo("9itT5A=="),_pguo("9C9F"),_pguo("8CtR6w=="),_pguo("/CFW+Q=="),_pguo("/zxf"),_pguo("8itV"),_pguo("6i9b7O39cx0="),_pguo("6i9b7OL1ZA=="),_pguo("6i9b7Pv1cA=="),_pguo("6iZT58DxaQLbPA==")}
_v4.REACH_GROUP_ORDER = {_pguo("9itT5A=="),_pguo("9C9F"),_pguo("/zxf"),_pguo("8itV"),_pguo("6i9b7O39cx0="),_pguo("6i9b7OL1ZA=="),_pguo("6i9b7Pv1cA=="),_pguo("6iZT58DxaQLbPA==")}
_v4.GROUP_LABELS = {
Head = _pguo("9itT5A=="), Jaw = _pguo("9C9F"), Neck = _pguo("8CtR6w=="), Body = _pguo("/CFW+Q=="), Arm = _pguo("/zxf"), Leg = _pguo("8itV"),
TailBase = _pguo("6i9b7I/eYQvb"), TailMid = _pguo("6i9b7I/RaRw="), TailTip = _pguo("6i9b7I/IaQg="),
Thagomizer = _pguo("6iZT58DxaQLbPA=="), Tail = _pguo("6i9b7A=="),
}
function _v4.groupDropdown(_v3k, _v3l, _v3m, _v3n, _v3o)
local _v3p, _v3q, _v3r = {}, {}, {}
for _v3s, _v3t in ipairs(_v3n) do
local _v3u = _v4.GROUP_LABELS[_v3t] or _v3t
_v3p[_v3u] = _v3t
_v3q[#_v3q + 1] = _v3u
if _v3m[_v3t] then _v3r[#_v3r + 1] = _v3u end
end
local dd = _v3k:AddDropdown({
Name = _v3l,
Items = _v3q,
Multi = true,
Default = _v3r,
Callback = function(_v3v)
for _v3w, _v3x in ipairs(_v3n) do _v3m[_v3x] = false end
if type(_v3v) == _pguo("yi9Q7Mo=") then
for _v3y, _v3z in pairs(_v3v) do
local _v40 = _v3p[_v3y]
if _v3z and _v40 then _v3m[_v40] = true end
end
end
if _v3o then _v3o() end
end,
})
dd.Refill = function()
local _v41 = {}
for _v42, _v43 in ipairs(_v3n) do
if _v3m[_v43] then _v41[_v4.GROUP_LABELS[_v43] or _v43] = true end
end
dd:Set(_v41, true)
end
return dd
end
function _v4.getTailSubGroup(_v44)
local _v45 = _v44:lower()
if _v45:find(_pguo("yiZT58DxaQLbPA==")) then return _pguo("6iZT58DxaQLbPA==") end
local _v46 = tonumber(_v44:match(_pguo("6i9b7IqyKF3aZRs=")))
if not _v46 then return _pguo("6i9b7O39cx0=") end
if _v46 <= 4 then return _pguo("6i9b7O39cx0=")
elseif _v46 <= 9 then return _pguo("6i9b7OL1ZA==")
else return _pguo("6i9b7Pv1cA==")
end
end
local _v47 = {}
_v4.espCache = {}
function _v4.getHealthColor(_v48)
if _v48 > 0.5 then return _v4.HEALTH_COLOR_FULL
elseif _v48 > 0.25 then return _v4.HEALTH_COLOR_MID
else return _v4.HEALTH_COLOR_LOW end
end
function _v4.createESP(_v49)
if _v49 == _v2 then return end
if _v4.espCache[_v49] then return end
local _v4a = {
billboard = nil,
highlight = nil,
connections = {},
tracer = nil,
}
_v4.espCache[_v49] = _v4a
end
function _v4.destroyESP(_v4b)
local _v4c = _v4.espCache[_v4b]
if not _v4c then return end
if _v4c.billboard then
pcall(function() _v4c.billboard:Destroy() end)
end
if _v4c.highlight then
pcall(function() _v4c.highlight:Destroy() end)
end
if _v4c.tracer then
pcall(function() _v4c.tracer:Remove() end)
end
for _v4d, _v4e in pairs(_v4c.connections) do
pcall(function() _v4e:Disconnect() end)
end
_v4.espCache[_v4b] = nil
end
function _v4.updateESP(_v4f)
local _v4g = _v4.espCache[_v4f]
if not _v4g then return end
local _v4h = _v4f.Character
if not _v4h then
if _v4g.billboard then _v4g.billboard.Enabled = false end
if _v4g.highlight then _v4g.highlight.Enabled = false end
return
end
local _v4i = _v4h:GetAttribute(_pguo("9itT7Nv0")) or 0
if _v4i <= 0 then
if _v4g.billboard then _v4g.billboard.Enabled = false end
if _v4g.highlight then _v4g.highlight.Enabled = false end
return
end
local _v4j = _v4.getRootOf(_v4h, false)
if not _v4j then return end
local _v4k = _v4.getLocalRoot()
local _v4l = _v4k and (_v4k.Position - _v4j.Position).Magnitude or 0
if _v4l > _v4.ESP_DISTANCE then
if _v4g.billboard then _v4g.billboard.Enabled = false end
if _v4g.highlight then _v4g.highlight.Enabled = false end
return
end
if _v4.ESP_ENABLED then
if _v4g.billboard and _v4g.billboard.Parent ~= _v4j then
pcall(function()
_v4g.billboard.Adornee = _v4j
_v4g.billboard.Parent = _v4j
end)
end
if not _v4g.billboard or not _v4g.billboard.Parent then
local _v4m = Instance.new(_pguo("/Cde7M3zYQraCUfp"))
_v4m.Name = _pguo("+idc7+rPUA==")
_v4m.Size = UDim2.new(0, 240, 0, 122)
_v4m.StudsOffset = Vector3.new(0, 5, 0)
_v4m.AlwaysOnTop = true
_v4m.LightInfluence = 0
_v4m.MaxDistance = _v4.ESP_DISTANCE
local _v4n = Instance.new(_pguo("+DxT7co="))
_v4n.Name = _pguo("/SFc9M71bh3M")
_v4n.Size = UDim2.new(1, 0, 1, 0)
_v4n.BackgroundTransparency = 1
_v4n.Parent = _v4m
local _v4o = Instance.new(_pguo("6wd+6dzoTBnHIUf0"))
_v4o.FillDirection = Enum.FillDirection.Vertical
_v4o.HorizontalAlignment = Enum.HorizontalAlignment.Center
_v4o.VerticalAlignment = Enum.VerticalAlignment.Bottom
_v4o.SortOrder = Enum.SortOrder.LayoutOrder
_v4o.Padding = UDim.new(0, 2)
_v4o.Parent = _v4n
local function _v4p(_v4q, _v4r, _v4s, _v4t, _v4u)
local _v4v = Instance.new(_pguo("6itK9OP9Yh3S"))
_v4v.Name = _v4q; _v4v.LayoutOrder = _v4r
_v4v.Size = UDim2.new(1, 0, 0, _v4s + 3)
_v4v.BackgroundTransparency = 1
_v4v.TextColor3 = _v4u
_v4v.TextStrokeTransparency = 0; _v4v.TextStrokeColor3 = Color3.new(0, 0, 0)
_v4v.Font = _v4t; _v4v.TextSize = _v4s; _v4v.TextScaled = false
_v4v.Parent = _v4n
return _v4v
end
local function _v4w(_v4x, _v4y, _v4z)
local _v50 = Instance.new(_pguo("+DxT7co="))
_v50.Name = _v4x; _v50.LayoutOrder = _v4y
_v50.Size = UDim2.new(0.92, 0, 0, 15)
_v50.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
_v50.BorderSizePixel = 0; _v50.Parent = _v4n
Instance.new(_pguo("6wdx793yZQo="), _v50).CornerRadius = UDim.new(1, 0)
local _v51 = Instance.new(_pguo("+DxT7co="))
_v51.Name = _pguo("+Cde7A=="); _v51.Size = UDim2.new(1, 0, 1, 0)
_v51.BackgroundColor3 = _v4z; _v51.BorderSizePixel = 0; _v51.Parent = _v50
Instance.new(_pguo("6wdx793yZQo="), _v51).CornerRadius = UDim.new(1, 0)
local _v52 = Instance.new(_pguo("6itK9OP9Yh3S"))
_v52.Name = _pguo("6itK9A=="); _v52.Size = UDim2.new(1, 0, 1, 0)
_v52.BackgroundTransparency = 1; _v52.TextColor3 = Color3.new(1, 1, 1)
_v52.TextStrokeTransparency = 0.3; _v52.TextStrokeColor3 = Color3.new(0, 0, 0)
_v52.Font = Enum.Font.GothamBold; _v52.TextSize = _v4.TEXT_SIZE - 4
_v52.ZIndex = 3; _v52.Parent = _v50
return _v50
end
_v4p(_pguo("8C9f5eP9Yh3S"), 1, _v4.TEXT_SIZE, Enum.Font.GothamBold, Color3.new(1, 1, 1))
_v4p(_pguo("9yBU7+P9Yh3S"), 2, _v4.TEXT_SIZE - 2, Enum.Font.GothamSemibold, Color3.fromRGB(235, 235, 235))
local _v53 = _v4w(_pguo("9itT7Nv0Qj8="), 3, _v4.HEALTH_COLOR_FULL)
local _v54 = Instance.new(_pguo("+DxT7co="))
_v54.Name = _pguo("/CJX5cvaaRTS"); _v54.Size = UDim2.new(0, 0, 1, 0)
_v54.Position = UDim2.new(1, 0, 0, 0); _v54.BackgroundColor3 = _v4.BLEED_COLOR
_v54.BorderSizePixel = 0; _v54.ZIndex = 2; _v54.Visible = false
_v54.Parent = _v53
_v4w(_pguo("7TpT7e3b"), 4, _v4.STAMINA_COLOR)
_v4w(_pguo("+CFd5O3b"), 5, _v4.FOOD_COLOR)
_v4w(_pguo("6S9G5d3eRw=="), 6, _v4.WATER_COLOR)
_v4w(_pguo("9yBU5czoQj8="), 7, _v4.INFECT_COLOR)
_v4p(_pguo("6CdG4cPvTBncK14="), 8, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, Color3.new(1, 1, 1)).RichText = true
_v4p(_pguo("6Stb58foTBncK14="), 9, _v4.TEXT_SIZE - 3, Enum.Font.GothamSemibold, _v4.WEIGHT_COLOR)
_v4p(_pguo("/CJX5cvQYRrbIg=="), 10, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, _v4.BLEED_COLOR)
_v4m.Adornee = _v4j
_v4m.Parent = _v4j
_v4g.billboard = _v4m
end
local _v55 = _v4g.billboard
_v55.Enabled = true
local _v56 = _v55:FindFirstChild(_pguo("/SFc9M71bh3M"))
if _v56 then
local _v57 = _v56:FindFirstChild(_pguo("8C9f5eP9Yh3S"))
local _v58 = _v56:FindFirstChild(_pguo("9yBU7+P9Yh3S"))
local _v59 = _v56:FindFirstChild(_pguo("9itT7Nv0Qj8="))
local _v5a = _v56:FindFirstChild(_pguo("7TpT7e3b"))
local _v5b = _v56:FindFirstChild(_pguo("6Stb58foTBncK14="))
local _v5c = _v56:FindFirstChild(_pguo("/CJX5cvQYRrbIg=="))
if _v57 then _v57.TextSize = _v4.TEXT_SIZE; _v57.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE + 3) end
if _v58 then _v58.TextSize = math.max(6, _v4.TEXT_SIZE - 2); _v58.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE + 1) end
if _v5b then _v5b.TextSize = math.max(6, _v4.TEXT_SIZE - 3); _v5b.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE) end
if _v5c then _v5c.TextSize = math.max(6, _v4.TEXT_SIZE - 3); _v5c.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE) end
if _v59 then
_v59.Size = UDim2.new(_v4.HEALTH_BAR_WIDTH, 0, 0, _v4.HEALTH_BAR_HEIGHT)
local _v5d = _v59:FindFirstChild(_pguo("6itK9A==")); if _v5d then _v5d.TextSize = math.clamp(_v4.HEALTH_BAR_HEIGHT + 2, 7, 18) end
end
if _v5a then
_v5a.Size = UDim2.new(_v4.STAM_BAR_WIDTH, 0, 0, _v4.STAM_BAR_HEIGHT)
local _v5e = _v5a:FindFirstChild(_pguo("6itK9A==")); if _v5e then _v5e.TextSize = math.clamp(_v4.STAM_BAR_HEIGHT + 2, 7, 18) end
end
local _v5f
do local _v5g = _v4h:FindFirstChild(_pguo("7CtC7Mb/YTrXIFY=")); _v5f = _v5g and _v5g.Value end
local _v5h = _v4.MOD_CHECK and _v4.modAdmins[_v4f]
if _v57 then
local _v5i = ""
if _v4.SHOW_NAME then
local _v5j = (_v4f.MembershipType == Enum.MembershipType.Premium) and _pguo("8ytf4sru") or _pguo("+TtX89s=")
_v5i = _v4f.DisplayName .. "  " .. _v5j
end
if _v4.SHOW_DISTANCE then
_v5i = (_v5i ~= "" and (_v5i .. "  ") or "") .. "[" .. math.floor(_v4l) .. "m]"
end
_v57.Visible = _v5i ~= ""
_v57.Text = _v5i
_v57.TextColor3 = _v5h and Color3.fromRGB(255, 50, 50) or Color3.new(1, 1, 1)
end
local _v5k = _v56:FindFirstChild(_pguo("/ypf6cHQYRrbIg=="))
if _v5h then
if not _v5k then
_v5k = Instance.new(_pguo("6itK9OP9Yh3S"))
_v5k.Name = _pguo("/ypf6cHQYRrbIg=="); _v5k.LayoutOrder = 0
_v5k.Size = UDim2.new(1, 0, 0, 26)
_v5k.BackgroundTransparency = 1
_v5k.TextColor3 = Color3.fromRGB(255, 0, 0)
_v5k.TextStrokeTransparency = 0
_v5k.TextStrokeColor3 = Color3.new(0, 0, 0)
_v5k.Font = Enum.Font.GothamBold
_v5k.TextSize = 22; _v5k.TextScaled = false
_v5k.Parent = _v56
end
local _v5l = _v4.modAdmins[_v4f]
_v5k.Text = (type(_v5l) == _pguo("zTpA6cH7")) and string.upper(_v5l) or _pguo("/wp/yeE=")
_v5k.Visible = true
elseif _v5k then
_v5k.Visible = false
end
local _v5m = _v56:FindFirstChild(_pguo("7i9R6+P5YRzbPH7hzfls"))
local _v5n = _v4.PACK_LEADER_ESP and _v4.packLeaders[_v4f]
if _v5n then
if not _v5m then
_v5m = Instance.new(_pguo("6itK9OP9Yh3S"))
_v5m.Name = _pguo("7i9R6+P5YRzbPH7hzfls"); _v5m.LayoutOrder = 0
_v5m.Size = UDim2.new(1, 0, 0, 20)
_v5m.BackgroundTransparency = 1
_v5m.TextColor3 = _v4.PACK_LEADER_COLOR
_v5m.TextStrokeTransparency = 0
_v5m.TextStrokeColor3 = Color3.new(0, 0, 0)
_v5m.Font = Enum.Font.GothamBold
_v5m.TextSize = _v4.TEXT_SIZE; _v5m.TextScaled = false
_v5m.Parent = _v56
end
_v5m.Text = _v5n ~= "" and (_pguo("8gtzxOrOICM=") .. _v5n .. "]") or _pguo("7g9xy4/QRTn6C2A=")
_v5m.Visible = true
elseif _v5m then
_v5m.Visible = false
end
local _v5o = _v56:FindFirstChild(_pguo("7i9R6+P9Yh3S"))
local _v5p = _v4.PACK_ESP and _v4.packMembers[_v4f]
if _v5p then
if not _v5o then
_v5o = Instance.new(_pguo("6itK9OP9Yh3S"))
_v5o.Name = _pguo("7i9R6+P9Yh3S"); _v5o.LayoutOrder = 1
_v5o.Size = UDim2.new(1, 0, 0, 18)
_v5o.BackgroundTransparency = 1
_v5o.TextColor3 = _v4.PACK_ESP_COLOR
_v5o.TextStrokeTransparency = 0
_v5o.TextStrokeColor3 = Color3.new(0, 0, 0)
_v5o.Font = Enum.Font.GothamMedium
_v5o.TextSize = _v4.TEXT_SIZE; _v5o.TextScaled = false
_v5o.Parent = _v56
end
local _v5q = _v5p.name ~= "" and _v5p.name or _pguo("9yAS0M7/aw==")
if _v5p.count > 0 then _v5q = _v5q .. " [" .. _v5p.count .. "]" end
_v5o.Text = _v5q
_v5o.Visible = true
elseif _v5o then
_v5o.Visible = false
end
if _v58 then
local _v5r = {}
if _v4.SHOW_DINO then table.insert(_v5r, _v4h:GetAttribute(_pguo("6jdC5Q==")) or _pguo("6yBZ7sDrbg==")) end
if _v4.SHOW_STAGE then
local _v5s = _v4h:GetAttribute(_pguo("7TpT58o=")) or ""
if _v5s ~= "" then
local _v5t = _v4h:GetAttribute(_pguo("+Txd99v0")) or _v4h:GetAttribute(_pguo("+Txd99v0UB3MLVfu2w=="))
or _v4h:GetAttribute(_pguo("+Txd99v0UArRKUDl3O8="))
if type(_v5t) == _pguo("0Dtf4sru") then
_v5s = _v5s .. " (" .. math.floor((_v5t <= 1 and _v5t * 100 or _v5t) + 0.5) .. "%)"
end
table.insert(_v5r, _v5s)
end
end
if _v4.SHOW_GENDER then
local _v5u = _v4h:GetAttribute(_pguo("+Stc5Mru")) or ""
if _v5u ~= "" then table.insert(_v5r, _v5u) end
end
_v58.Visible = #_v5r > 0
if #_v5r > 0 then _v58.Text = table.concat(_v5r, _pguo("njIS")) end
end
local _v5v = _v4h:GetAttribute(_pguo("9itT7Nv0")) or 0
local _v5w = _v4h:GetAttribute(_pguo("8y9KyMr9bAzW")) or 1
if _v5w <= 0 then _v5w = 1 end
local _v5x = math.clamp(_v5v / _v5w, 0, 1)
local _v5y = _v4.getHealthColor(_v5x)
local _v5z, _v60 = false, 0
if _v5f then
local _v61 = _v4.bleedForecast[_v5f]
if _v61 and _v61 > 0 then _v5z = true; _v60 = math.min(_v61, _v5v) end
end
local _v62 = _v5z and math.clamp(_v60 / _v5w, 0, _v5x) or 0
if _v59 then
_v59.Visible = _v4.SHOW_HEALTH
local _v63 = _v59:FindFirstChild(_pguo("+Cde7A=="))
if _v63 then _v63.Size = UDim2.new(_v5x, 0, 1, 0); _v63.BackgroundColor3 = _v5y end
local _v64 = _v59:FindFirstChild(_pguo("/CJX5cvaaRTS"))
if _v64 then
if _v4.BLEED_ESP and _v5z and _v4.SHOW_HEALTH and _v62 > 0 then
_v64.Position = UDim2.new(math.max(0, _v5x - _v62), 0, 0, 0)
_v64.Size = UDim2.new(_v62, 0, 1, 0); _v64.Visible = true
else _v64.Visible = false end
end
local _v65 = _v59:FindFirstChild(_pguo("6itK9A=="))
if _v65 then _v65.Text = _pguo("9h4S") .. math.floor(_v5v) .. "/" .. math.floor(_v5w) end
end
if _v5a then
local _v66 = _v5f and _v4.staminaCur[_v5f]
local _v67 = _v4.SHOW_STAMINA and type(_v66) == _pguo("0Dtf4sru")
_v5a.Visible = _v67
if _v67 then
local _v68 = _v5f and _v4.staminaMax[_v5f]
local _v69 = (type(_v68) == _pguo("0Dtf4sru") and _v68 > 0) and _v68 or math.max(_v66, 1)
local _v6a = _v5a:FindFirstChild(_pguo("+Cde7A=="))
if _v6a then _v6a.Size = UDim2.new(math.clamp(_v66 / _v69, 0, 1), 0, 1, 0) end
local _v6b = _v5a:FindFirstChild(_pguo("6itK9A=="))
if _v6b then _v6b.Text = _pguo("7TpT7cbyYVg=") .. math.floor(_v66) ..
((type(_v68) == _pguo("0Dtf4sru")) and ("/" .. math.floor(_v69)) or "") end
end
end
do
local _v6c, _v6d, _v6e = _v56:FindFirstChild(_pguo("+CFd5O3b")), _v56:FindFirstChild(_pguo("6S9G5d3eRw==")), _v56:FindFirstChild(_pguo("9yBU5czoQj8="))
local _v6f = UDim2.new(_v4.STAM_BAR_WIDTH, 0, 0, _v4.STAM_BAR_HEIGHT)
local _v6g = math.clamp(_v4.STAM_BAR_HEIGHT + 2, 7, 18)
for _v6h, _v6i in ipairs({ _v6c, _v6d, _v6e }) do
_v6i.Size = _v6f
local _v6j = _v6i:FindFirstChild(_pguo("6itK9A==")); if _v6j then _v6j.TextSize = _v6g end
end
local _v6k = {}
local _v6l, _v6m = _v5f and _v4.foodCur[_v5f], _v5f and _v4.foodMax[_v5f]
local _v6n, _v6o = _v5f and _v4.waterCur[_v5f], _v5f and _v4.waterMax[_v5f]
_v6m = type(_v6m) == _pguo("0Dtf4sru") and _v6m or nil
_v6o = type(_v6o) == _pguo("0Dtf4sru") and _v6o or nil
if type(_v6l) == _pguo("0Dtf4sru") then _v4.foodSeenMax[_v5f] = math.max(_v4.foodSeenMax[_v5f] or 0, _v6l) end
if type(_v6n) == _pguo("0Dtf4sru") then _v4.waterSeenMax[_v5f] = math.max(_v4.waterSeenMax[_v5f] or 0, _v6n) end
_v4.espVital(_v6c, _v6k, _pguo("+CFd5A=="), _v6l, _v6m or (_v5f and _v4.foodSeenMax[_v5f]), _v6m,
_v4.FOOD_COLOR, _v4.SHOW_FOOD_BAR, _v4.SHOW_FOOD_NUM)
_v4.espVital(_v6d, _v6k, _pguo("6S9G5d0="), _v6n, _v6o or (_v5f and _v4.waterSeenMax[_v5f]), _v6o,
_v4.WATER_COLOR, _v4.SHOW_WATER_BAR, _v4.SHOW_WATER_NUM)
_v4.espVital(_v6e, _v6k, _pguo("9yBU5czoaRfQ"), _v5f and _v4.infectCur[_v5f], _v4.INFECT_MAX, _v4.INFECT_MAX,
_v4.INFECT_COLOR, _v4.SHOW_INFECT_BAR, _v4.SHOW_INFECT_NUM)
local _v6p = _v56:FindFirstChild(_pguo("6CdG4cPvTBncK14="))
if _v6p then
_v6p.Visible = #_v6k > 0
_v6p.TextSize = math.max(6, _v4.TEXT_SIZE - 3); _v6p.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE)
if #_v6k > 0 then _v6p.Text = table.concat(_v6k, "  ") end
end
local _v6q = _v56:FindFirstChildOfClass(_pguo("6wd+6dzoTBnHIUf0"))
local _v6r = _v6q and math.max(122, math.ceil(_v6q.AbsoluteContentSize.Y) + 4)
if _v6r and _v55.Size.Y.Offset ~= _v6r then _v55.Size = UDim2.new(0, 240, 0, _v6r) end
end
if _v5b then
local _v6s = _v4h:GetAttribute(_pguo("6Stb58fo"))
local _v6t = _v4.SHOW_WEIGHT and type(_v6s) == _pguo("0Dtf4sru")
_v5b.Visible = _v6t
if _v6t then _v5b.Text = math.floor(_v6s) .. _pguo("niVV") end
end
if _v5c then
_v5c.Visible = _v4.BLEED_ESP
if _v4.BLEED_ESP then _v5c.Text = _pguo("/CJX5cu8") .. math.floor(_v60) end
end
end
local _v6u = _v4h:GetAttribute(_pguo("7S1T7Mo=")) or 1
_v55.StudsOffset = Vector3.new(0, 3 + (_v6u * 3), 0)
else
if _v4g.billboard then
_v4g.billboard.Enabled = false
end
end
if _v4.CHAMS_ENABLED then
if not _v4g.highlight or not _v4g.highlight.Parent then
local _v6v = Instance.new(_pguo("9idV6MP1ZxDK"))
_v6v.Name = _pguo("+idc7+z0YRXN")
_v6v.FillColor = _v4.ESP_COLOR
_v6v.OutlineColor = Color3.new(1, 1, 1)
_v6v.FillTransparency = _v4.CHAMS_FILL_TRANSPARENCY
_v6v.OutlineTransparency = _v4.CHAMS_OUTLINE_TRANSPARENCY
_v6v.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
_v6v.Adornee = _v4h
_v6v.Parent = _v4h
_v4g.highlight = _v6v
end
_v4g.highlight.Enabled = true
_v4g.highlight.FillColor = _v4.ESP_COLOR
_v4g.highlight.FillTransparency = _v4.CHAMS_FILL_TRANSPARENCY
_v4g.highlight.OutlineTransparency = _v4.CHAMS_OUTLINE_TRANSPARENCY
else
if _v4g.highlight then
_v4g.highlight.Enabled = false
end
end
if _v4.TRACERS_ENABLED and _v4k then
pcall(function()
if not _v4g.tracer then
_v4g.tracer = Drawing.new(_pguo("8idc5Q=="))
_v4g.tracer.Thickness = 1
_v4g.tracer.Transparency = 1
end
local _v6w, _v6x = _v3:WorldToViewportPoint(_v4j.Position)
_v4g.tracer.Visible = _v6x
_v4g.tracer.Color = _v4.ESP_COLOR
_v4g.tracer.From = Vector2.new(_v3.ViewportSize.X / 2, _v3.ViewportSize.Y)
_v4g.tracer.To = Vector2.new(_v6w.X, _v6w.Y)
end)
else
if _v4g.tracer then
pcall(function() _v4g.tracer.Visible = false end)
end
end
end
_v4.addStep(3, function()
if not _v4.ESP_ENABLED and not _v4.CHAMS_ENABLED and not _v4.TRACERS_ENABLED then return end
for _v6y, _v6z in _v0:GetPlayers() do
if _v6z == _v2 then continue end
if not _v4.espCache[_v6z] then _v4.createESP(_v6z) end
_v4.updateESP(_v6z)
end
end)
table.insert(_vz, _v0.PlayerRemoving:Connect(function(_v70)
_v4.destroyESP(_v70)
end))
for _v71, _v72 in _v0:GetPlayers() do
if _v72 ~= _v2 then
_v4.createESP(_v72)
end
end
_v4.getMyRoot = _v4.getLocalRoot
local function _v73(_v74, _v75, _v76, _v77)
if _v47[_v74] then
pcall(function() _v47[_v74]:Destroy() end)
end
local _v78 = nil
if _v74:IsA(_pguo("/C9B5f/9cgw=")) then
_v78 = _v74
elseif _v74:IsA(_pguo("8yFW5cM=")) then
_v78 = _v74:FindFirstChild(_pguo("/CFW+Q=="))
or _v74.PrimaryPart
or _v74:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA=="))
if not _v78 then
for _v79, _v7a in _v74:GetChildren() do
if _v7a:IsA(_pguo("/C9B5f/9cgw=")) and _v7a.Name ~= _pguo("8yFH9MfMYQrK") and _v7a.Name ~= _pguo("9idGwsDk") and _v7a.Name ~= _pguo("/S9f5d39UBnMOg==") then
_v78 = _v7a
break
end
end
end
if not _v78 then
_v78 = _v74:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="), true)
end
end
if not _v78 then return end
local _v7b = Instance.new(_pguo("/Cde7M3zYQraCUfp"))
_v7b.Name = _pguo("6SFA7MvZUyg=")
_v7b.Size = UDim2.new(0, 150, 0, 40)
_v7b.StudsOffset = Vector3.new(0, 3, 0)
_v7b.AlwaysOnTop = true
_v7b.LightInfluence = 0
_v7b.MaxDistance = _v77
local _v7c = Instance.new(_pguo("6itK9OP9Yh3S"))
_v7c.Name = _pguo("8i9Q5cM=")
_v7c.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
_v7c.Position = UDim2.new(0, 0, 0, 0)
_v7c.BackgroundColor3 = Color3.new(0, 0, 0)
_v7c.BackgroundTransparency = 1
_v7c.TextColor3 = _v76
_v7c.TextStrokeTransparency = 0
_v7c.TextStrokeColor3 = Color3.new(0, 0, 0)
_v7c.Font = Enum.Font.GothamBold
_v7c.TextSize = _v4.WORLD_TEXT_SIZE
_v7c.TextScaled = false
_v7c.Text = _v75
_v7c.Parent = _v7b
local _v7d = Instance.new(_pguo("6itK9OP9Yh3S"))
_v7d.Name = _pguo("+idB9OP9Yh3S")
_v7d.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_v7d.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
_v7d.BackgroundColor3 = Color3.new(0, 0, 0)
_v7d.BackgroundTransparency = 1
_v7d.TextColor3 = Color3.fromRGB(200, 200, 200)
_v7d.TextStrokeTransparency = 0
_v7d.TextStrokeColor3 = Color3.new(0, 0, 0)
_v7d.Font = Enum.Font.Gotham
_v7d.TextSize = _v4.WORLD_TEXT_SIZE - 2
_v7d.TextScaled = false
_v7d.Text = _pguo("jm5B9Nr4cw==")
_v7d.Parent = _v7b
_v7b.Parent = _v78
_v47[_v74] = _v7b
return _v7b
end
function _v4.destroyWorldESP(_v7e)
local _v7f = _v47[_v7e]
if _v7f then
pcall(function() _v7f:Destroy() end)
_v47[_v7e] = nil
end
end
function _v4.clearWorldESPByParent(_v7g)
for _v7h, _v7i in pairs(_v47) do
if _v7h:IsDescendantOf(_v7g) or _v7h == _v7g then
pcall(function() _v7i:Destroy() end)
_v47[_v7h] = nil
end
end
end
function _v4.getFossilSize(_v7j)
for _v7k, _v7l in _v7j:GetChildren() do
if _v7l:IsA(_pguo("/C9B5f/9cgw=")) then
local _v7m = _v7l.Name
if _v7m == _pguo("+CFB88bwUw==") then return "S"
elseif _v7m == _pguo("+CFB88bwTQ==") then return "M"
elseif _v7m == _pguo("+CFB88bwTA==") then return "L"
elseif _v7m == _pguo("7T5a5d35") then return _pguo("7C9A5Q==")
end
end
end
return "?"
end
function _v4.getFossilColor(_v7n)
if _v7n == "S" then return _v4.FOSSIL_COLOR_S
elseif _v7n == "M" then return _v4.FOSSIL_COLOR_M
elseif _v7n == "L" then return _v4.FOSSIL_COLOR_L
end
return _v4.FOSSIL_COLOR_M
end
function _v4.isFossilEnabled(_v7o)
if _v7o == "S" then return _v4.FOSSIL_SMALL
elseif _v7o == "M" then return _v4.FOSSIL_MEDIUM
elseif _v7o == "L" then return _v4.FOSSIL_LARGE
end
return false
end
function _v4.fossilDistance(_v7p)
if _v7p == "S" then return _v4.FOSSIL_DIST_SMALL end
if _v7p == "L" then return _v4.FOSSIL_DIST_LARGE end
return _v4.FOSSIL_DIST_MEDIUM
end
local function _v7q(_v7r)
local _v7s, _v7t, _v7u, _v7v
for _v7w, _v7x in ipairs({_pguo("8ytB6OLzZB3S"), _pguo("6CdB9c7w")}) do
local _v7y = _v7r:FindFirstChild(_v7x)
if _v7y then
_v7s = _v7s or _v7y:GetAttribute(_pguo("6jdC5Q=="))
_v7t = _v7t or _v7y:GetAttribute(_pguo("7TpT58o="))
_v7u = _v7u or _v7y:GetAttribute(_pguo("+Stc5Mru"))
_v7v = _v7v or _v7y:GetAttribute(_pguo("6Stb58fo"))
end
end
_v7s = _v7s or _v7r:GetAttribute(_pguo("7T5X48b5cw==")) or _v7r:GetAttribute(_pguo("6jdC5Q=="))
_v7t = _v7t or _v7r:GetAttribute(_pguo("+idc7/zoYR/b")) or _v7r:GetAttribute(_pguo("7TpT58o="))
_v7u = _v7u or _v7r:GetAttribute(_pguo("+Stc5Mru"))
_v7v = _v7v or _v7r:GetAttribute(_pguo("6Stb58fo"))
if not _v7v then
local _v7z = _v7r:FindFirstChild(_pguo("7iZL88b/cw=="))
if _v7z then _v7v = _v7z:GetAttribute(_pguo("6Stb58fo")) end
end
local _v80 = _pguo("/SFA8Nz5")
if _v7s then _v80 = tostring(_v7s) end
if _v7t then _v80 = _v80 .. " [" .. tostring(_v7t) .. "]" end
if _v7u then _v80 = _v80 .. " " .. (tostring(_v7u):sub(1, 1)) end
local _v81 = tonumber(_v7v)
if _v81 then _v80 = _v80 .. "  " .. string.format(_pguo("m2AC5g=="), _v81) .. "kg" end
return _v80
end
function _v4.getMeatWeight(_v82)
local _v83 = nil
pcall(function()
_v83 = _v82:GetAttribute(_pguo("6Stb58fo")) or _v82:GetAttribute(_pguo("8ytT9A==")) or _v82:GetAttribute(_pguo("+CFd5A=="))
end)
if not _v83 then
for _v84, _v85 in _v82:GetChildren() do
pcall(function()
if _v85:IsA(_pguo("8Dtf4sruVhnSO1c=")) and (_v85.Name:lower():find(_pguo("yStb58fo")) or _v85.Name:lower():find(_pguo("0ytT9A==")) or _v85.Name:lower():find(_pguo("2CFd5A=="))) then
_v83 = _v85.Value
end
end)
end
end
return _v83
end
function _v4.processFolder(_v86, _v87, _v88, _v89)
if not _v86 then return end
for _v8a, _v8b in _v86:GetChildren() do
if _v47[_v8b] then continue end
local _v8c = _v87
if _v8b:IsA(_pguo("8yFW5cM=")) then
local _v8d = _v8b:GetAttribute(_pguo("6jdC5Q=="))
if _v8d then
_v8c = _v87 .. " [" .. _v8d .. "]"
else
_v8c = _v87 .. " [" .. _v8b.Name .. "]"
end
elseif _v8b:IsA(_pguo("/C9B5f/9cgw=")) then
_v8c = _v87 .. " [" .. _v8b.Name .. "]"
end
_v73(_v8b, _v8c, _v88, _v89)
end
end
_v4.worldESPPart = setmetatable({}, { __mode = "k" })
function _v4.worldESPAnchor(_v8e)
local _v8f = _v4.worldESPPart[_v8e]
if _v8f and _v8f.Parent then return _v8f end
local _v8g
if _v8e:IsA(_pguo("/C9B5f/9cgw=")) then
_v8g = _v8e
elseif _v8e:IsA(_pguo("8yFW5cM=")) then
_v8g = _v8e:FindFirstChild(_pguo("/CFW+Q=="))
or _v8e.PrimaryPart
or _v8e:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA=="))
or _v8e:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="), true)
end
_v4.worldESPPart[_v8e] = _v8g
return _v8g
end
function _v4.infectionMods()
if _v4.infMods == nil then
_v4.infMods = false
pcall(function()
local _v8h = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
_v4.infMods = {
rotten = require(_v8h.Modules.Consumption.GetRottenSettings),
life = require(_v8h.Modules.Consumption.GetCorpseLifetime),
infect = require(_v8h.Modules.Combat.GetInfectionSettings),
data = require(_v8h.Shared.ConsumptionData),
}
end)
end
return _v4.infMods or nil
end
function _v4.infectionIndex()
local _v8i = os.clock()
if _v4.infIndex and _v8i - (_v4.infIndexT or 0) < 2 then return _v4.infIndex end
local _v8j = {}
pcall(function()
for _v8k, _v8l in pairs(_v4.getCC().CorpseData) do
local _v8m = _v8l and _v8l.Root
if _v8m then
_v8j[_v8m] = _v8l
local _v8n = _v8m.Parent
if _v8n and _v8n:IsA(_pguo("8yFW5cM=")) then
_v8j[_v8n] = _v8l
if _v8n.Parent and _v8n.Parent:IsA(_pguo("8yFW5cM=")) then _v8j[_v8n.Parent] = _v8l end
end
end
end
end)
_v4.infIndex, _v4.infIndexT = _v8j, _v8i
return _v8j
end
function _v4.infectionLine(_v8o)
local _v8p = _v4.infectionIndex()[_v8o]
local _v8q = _v8p and _v4.infectionMods()
local _v8r = _v8q and _v4.getCS()
if not (_v8r and _v8r.Data and _v8r.Data.Diet and _v8r.Replica) then return nil end
local _v8s = tostring(_v8p.Name or "")
local _v8t = (_v8s:sub(1, 4) == _pguo("8ytT9A==")) and _pguo("8ytT9A==") or (_v8q.data.CorpseTypes and _v8q.data.CorpseTypes[_v8s])
local _v8u = _v8t and _v8q.data.CorpseConsumables and _v8q.data.CorpseConsumables[_v8t]
local _v8v = _v8u and _v8u.Actions and _v8u.Actions[1]
if not _v8v then return nil end
local _v8w = _v8v.Rotten
local _v8x, _v8y = false, nil
local _v8z = _v8p.Root
local _v90 = _v8z and ((_v8z:GetAttribute(_pguo("/TxX4dv5ZDnK")) ~= nil and _v8z) or _v8z.Parent)
local _v91 = _v90 and _v90:GetAttribute(_pguo("/TxX4dv5ZDnK"))
local _v92 = tonumber(_v8p.Weight) or (_v90 and tonumber(_v90:GetAttribute(_pguo("6Stb58fo"))))
if _v8w and type(_v91) == _pguo("0Dtf4sru") and _v92 and _v92 > 0 then
local _v93 = _v8q.rotten.GetRotTime(_v8w, _v8q.life.FromWeight(_v92))
local _v94 = tick() - _v91
_v8x = _v94 >= _v93
if not _v8x then _v8y = _v93 - _v94 end
end
local _v95 = _v8q.rotten.GetInfectionGain(_v8x and _v8w or nil, _v8r.Data.Diet, _v8v.Category)
if type(_v95) ~= _pguo("0Dtf4sru") or _v95 <= 0 then return nil end
local _v96 = _v2.Character and _v2.Character:GetAttribute(_pguo("6jdC5Q=="))
if _v96 and _v8s == tostring(_v96) then return _pguo("9yBU5czoaRfQdBLv2PIgC84rUenK7yxY3S9cp9u8ZRnK") end
local _v97 = tonumber(_v8q.infect.GetRequiredAmount()) or 100
local _v98 = tonumber(_v8r.Replica.Data.Stats.Infection) or 0
local _v99 = "+" .. (math.floor(_v95 / _v97 * 10000 + 0.5) / 100) .. _pguo("m25b7sn5YwzXIVyvzfV0HQ==")
if _v98 >= _v97 then
_v99 = _v99 .. _pguo("njIS7croZQqeKEfsww==")
else
_v99 = _v99 .. _pguo("njIS") .. math.ceil((_v97 - _v98) / _v95) .. _pguo("njpdoMnpbBQ=")
end
if _v8x then
_v99 = _v99 .. _pguo("njIS8sDodB3Q")
elseif _v8y then
local _v9a = math.floor(_v8y / 60)
_v99 = _v99 .. _pguo("njIS8sDoc1g=") .. (_v9a >= 60 and (math.floor(_v9a / 60) .. "h" .. string.format(_pguo("m34A5A=="), _v9a % 60) .. "m") or (_v9a .. "m"))
end
return _v99
end
function _v4.updateWorldESPDistances()
local _v9b = _v4.getMyRoot()
if not _v9b then return end
local _v9c = _v9b.Position
pcall(function()
for _v9d, _v9e in pairs(_v47) do
if not _v9d.Parent then
_v4.destroyWorldESP(_v9d)
continue
end
local _v9f = _v4.worldESPAnchor(_v9d)
if not _v9f then continue end
local _v9g = (_v9c - _v9f.Position).Magnitude
local _v9h = _v9e:FindFirstChild(_pguo("8i9Q5cM="))
local _v9i = _v9e:FindFirstChild(_pguo("+idB9OP9Yh3S"))
if _v9h then
_v9h.BackgroundTransparency = 1
_v9h.TextSize = _v4.WORLD_TEXT_SIZE
_v9h.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
if _v4.TEXT_HIGHLIGHT then
_v9h.TextColor3 = Color3.new(1, 1, 1)
_v9h.TextStrokeTransparency = 0
end
end
if _v9i then
_v9i.Text = math.floor(_v9g) .. _pguo("nj1G9cvv")
_v9i.BackgroundTransparency = 1
_v9i.TextSize = _v4.WORLD_TEXT_SIZE - 2
_v9i.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_v9i.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
if _v4.TEXT_HIGHLIGHT then
_v9i.TextColor3 = Color3.new(1, 1, 1)
_v9i.TextStrokeTransparency = 0
end
end
local _v9j = _v9e:FindFirstChild(_pguo("9yBUzM7+ZRQ="))
local _v9k, _v9l = false, nil
if _v4.CORPSE_INF_ESP then _v9k, _v9l = pcall(_v4.infectionLine, _v9d) end
if _v9k and _v9l then
if not _v9j then
_v9j = Instance.new(_pguo("6itK9OP9Yh3S"))
_v9j.Name = _pguo("9yBUzM7+ZRQ=")
_v9j.BackgroundTransparency = 1
_v9j.TextStrokeTransparency = 0
_v9j.TextStrokeColor3 = Color3.new(0, 0, 0)
_v9j.Font = Enum.Font.GothamBold
_v9j.Parent = _v9e
end
_v9j.Text = _v9l
_v9j.TextColor3 = _v4.TEXT_HIGHLIGHT and Color3.new(1, 1, 1) or _v4.INFECT_COLOR
_v9j.TextSize = _v4.WORLD_TEXT_SIZE - 2
_v9j.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_v9j.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE * 2 + 2)
_v9e.Size = UDim2.new(0, 260, 0, _v4.WORLD_TEXT_SIZE * 3 + 4)
elseif _v9j then
_v9j:Destroy()
_v9e.Size = UDim2.new(0, 150, 0, 40)
end
end
end)
end
local function _v9m()
for _v9n, _v9o in pairs(_v47) do
pcall(function() _v9o:Destroy() end)
end
_v47 = {}
if _v4.CORPSE_ESP then
pcall(function()
local _v9p = workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l")) and workspace.CharacterIgnore:FindFirstChild(_pguo("8itU9Oz0YQrfLUbl3e8="))
if _v9p then
for _v9q, _v9r in _v9p:GetChildren() do
if _v47[_v9r] then continue end
local _v9s = _v7q(_v9r)
_v73(_v9r, _v9s, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _v9t = workspace:FindFirstChild(_pguo("+idc79z9dQrsL1XkwPBsCw=="))
if _v9t then
for _v9u, _v9v in _v9t:GetChildren() do
if _v47[_v9v] then continue end
local _v9w = _v7q(_v9v)
_v73(_v9v, _v9w, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _v9x = workspace:FindFirstChild(_pguo("7C9V5MDwbAs="))
if _v9x then
for _v9y, _v9z in _v9x:GetChildren() do
if _v47[_v9z] then continue end
local _va0 = _v7q(_v9z)
_v73(_v9z, _va0, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _va1 = workspace:FindFirstChild(_pguo("/wdg4cj4bxTSPQ=="))
if _va1 then
for _va2, _va3 in _va1:GetChildren() do
if _v47[_va3] then continue end
local _va4 = _v7q(_va3)
_v73(_va3, _va4, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _va5 = workspace:FindFirstChild(_pguo("7C9V5MDwbCvKIUDhyPk="))
if _va5 then
for _va6, _va7 in _va5:GetChildren() do
if _v47[_va7] then continue end
local _va8 = _v7q(_va7)
_v73(_va7, _va8, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _va9 = workspace:FindFirstChild(_pguo("+TxT4s35ZCrfKVbvw/Bz"))
if _va9 then
for _vaa, _vab in _va9:GetChildren() do
if _v47[_vab] then continue end
local _vac = _v7q(_vab)
_v73(_vab, _vac, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vad = workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l"))
if _vad then
local _vae = _vad:FindFirstChild(_pguo("7C9V5MDwbAs="))
if _vae then
for _vaf, _vag in _vae:GetChildren() do
if _v47[_vag] then continue end
local _vah = _v7q(_vag)
_v73(_vag, _vah, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end
end)
end
pcall(function()
local _vai = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if _vai then
for _vaj, _vak in _vai:GetChildren() do
if _v47[_vak] then continue end
local _val = _v4.getFossilSize(_vak)
if _v4.isFossilEnabled(_val) then
local _vam = {S = _pguo("7SNT7MM="), M = _pguo("8ytW6drx"), L = _pguo("8i9A58o=")}
local _van = _pguo("+CFB88bwIFA=") .. (_vam[_val] or _val) .. ")"
_v73(_vak, _van, _v4.getFossilColor(_val), _v4.fossilDistance(_val))
end
end
end
end)
if _v4.MEAT_ESP then
pcall(function()
local _vao = workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l")) and workspace.CharacterIgnore:FindFirstChild(_pguo("7T5T98H5ZDXbL0Y="))
if _vao then
for _vap, _vaq in _vao:GetChildren() do
if _v47[_vaq] then continue end
local _var = _pguo("8ytT9A==")
_v73(_vaq, _var, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end)
pcall(function()
local _vas = workspace:FindFirstChild(_pguo("+CFd5A=="))
if _vas then
local _vat = _vas:FindFirstChild(_pguo("8ytT9A=="))
if _vat then
for _vau, _vav in _vat:GetChildren() do
if _v47[_vav] then continue end
local _vaw = _pguo("8ytT9A==")
_v73(_vav, _vaw, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
local _vax = _vas:FindFirstChild(_pguo("/SFe7Mr/dB3aA1fh2w=="))
if _vax then
for _vay, _vaz in _vax:GetChildren() do
if _v47[_vaz] then continue end
local _vb0 = _pguo("8ytT9A==")
_v73(_vaz, _vb0, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end
end)
end
if _v4.CLAY_ESP then
pcall(function()
local _vb1 = workspace:FindFirstChild(_pguo("/C9G6Nw="))
local _vb2 = _vb1 and _vb1:FindFirstChild(_pguo("/SJT+ev5cBfNJ0bz"))
if _vb2 then
for _vb3, _vb4 in _vb2:GetChildren() do
if _v47[_vb4] then continue end
_v73(_vb4, _pguo("/SJT+Y/YZQjRPVv0"), _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end
end)
end
end
local function _vb5(_vb6, _vb7)
pcall(function()
local _vb8 = workspace
if _vb7 then
for _vb9, _vba in ipairs(_vb7) do
_vb8 = _vb8:FindFirstChild(_vba)
if not _vb8 then return end
end
end
local _vbb = _vb8:FindFirstChild(_vb6)
if not _vbb then return end
table.insert(_vz, _vbb.ChildAdded:Connect(function(_vbc)
task.wait(0.5)
local _vbd = {LeftCharacters=true, DinosaurRagdolls=true, Ragdolls=true, AIRagdolls=true, RagdollStorage=true, GrabbedRagdolls=true}
if _v4.CORPSE_ESP and _vbd[_vb6] then
local _vbe = _v7q(_vbc)
_v73(_vbc, _vbe, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
if _vb6 == _pguo("7T5T98H5ZD7RPUHpw+8=") then
local _vbf = _v4.getFossilSize(_vbc)
if _v4.isFossilEnabled(_vbf) then
local _vbg = {S = _pguo("7SNT7MM="), M = _pguo("8ytW6drx"), L = _pguo("8i9A58o=")}
local _vbh = _pguo("+CFB88bwIFA=") .. (_vbg[_vbf] or _vbf) .. ")"
_v73(_vbc, _vbh, _v4.getFossilColor(_vbf), _v4.fossilDistance(_vbf))
end
end
if _v4.MEAT_ESP and (_vb6 == _pguo("7T5T98H5ZDXbL0Y=") or _vb6 == _pguo("8ytT9A==") or _vb6 == _pguo("/SFe7Mr/dB3aA1fh2w==")) then
local _vbi = _pguo("8ytT9A==")
_v73(_vbc, _vbi, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
if _v4.CLAY_ESP and _vb6 == _pguo("/SJT+ev5cBfNJ0bz") then
_v73(_vbc, _pguo("/SJT+Y/YZQjRPVv0"), _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end))
table.insert(_vz, _vbb.ChildRemoved:Connect(function(_vbj)
_v4.destroyWorldESP(_vbj)
end))
end)
end
_vb5(_pguo("8itU9Oz0YQrfLUbl3e8="), {_pguo("/SZT8s7/dB3MB1XuwO5l")})
_vb5(_pguo("+idc79z9dQrsL1XkwPBsCw=="))
_vb5(_pguo("7C9V5MDwbAs="))
_vb5(_pguo("/wdg4cj4bxTSPQ=="))
_vb5(_pguo("7C9V5MDwbCvKIUDhyPk="))
_vb5(_pguo("+TxT4s35ZCrfKVbvw/Bz"))
_vb5(_pguo("7C9V5MDwbAs="), {_pguo("/SZT8s7/dB3MB1XuwO5l")})
_vb5(_pguo("7T5T98H5ZD7RPUHpw+8="))
_vb5(_pguo("7T5T98H5ZDXbL0Y="), {_pguo("/SZT8s7/dB3MB1XuwO5l")})
_vb5(_pguo("8ytT9A=="), {_pguo("+CFd5A==")})
_vb5(_pguo("/SFe7Mr/dB3aA1fh2w=="), {_pguo("+CFd5A==")})
_vb5(_pguo("/SJT+ev5cBfNJ0bz"), {_pguo("/C9G6Nw=")})
_v4.addStep(5, function()
if not _v4.CORPSE_ESP and not _v4.FOSSIL_SMALL and not _v4.FOSSIL_MEDIUM and not _v4.FOSSIL_LARGE and not _v4.MEAT_ESP and not _v4.CLAY_ESP then return end
_v4.updateWorldESPDistances()
end)
_v4.MMAP_ON = false
_v4.MMAP_PLAYERS = true
_v4.MMAP_CORPSES = true
_v4.MMAP_FOSSILS = true
_v4.MMAP_COLOR_PLAYER = Color3.fromRGB(60, 255, 90)
_v4.MMAP_COLOR_CORPSE = Color3.fromRGB(255, 60, 60)
_v4.MMAP_COLOR_FOSSIL = Color3.fromRGB(190, 190, 190)
_v4.MMAP_DOT = 7
_v4.MMAP_MAX = 120
_v4.mmapPool = {}
_v4.mmapShown = 0
_v4.MMAP_CORPSE_FOLDERS = {
{ _pguo("/SZT8s7/dB3MB1XuwO5l"), _pguo("8itU9Oz0YQrfLUbl3e8=") },
{ _pguo("+idc79z9dQrsL1XkwPBsCw==") },
{ _pguo("7C9V5MDwbAs=") },
{ _pguo("/wdg4cj4bxTSPQ==") },
{ _pguo("7C9V5MDwbCvKIUDhyPk=") },
{ _pguo("+TxT4s35ZCrfKVbvw/Bz") },
{ _pguo("/SZT8s7/dB3MB1XuwO5l"), _pguo("7C9V5MDwbAs=") },
}
function _v4.mmapFolder(_vbk)
local _vbl = workspace
for _vbm, _vbn in ipairs(_vbk) do
_vbl = _vbl:FindFirstChild(_vbn)
if not _vbl then return nil end
end
return _vbl
end
function _v4.mmapFind()
local _vbo = _v4.mmapCache
if _vbo then
local ok, alive = pcall(function()
local _vbp = rawget(_vbo, _pguo("6i9V8+nuYRXb"))
return _vbp ~= nil and _vbp.Parent ~= nil
end)
if ok and alive then return _vbo end
_v4.mmapCache = nil
end
local _vbq = os.clock()
if _v4.mmapNextScan and _vbq < _v4.mmapNextScan then return nil end
_v4.mmapNextScan = _vbq + 3
if type(filtergc) ~= _pguo("2Dtc49v1bxY=") then return nil end
local _vbr
pcall(function()
_vbr = filtergc(_pguo("yi9Q7Mo="), {Keys = {_pguo("6i9V8+nuYRXb"), _pguo("6i9V8w=="), _pguo("6CdX99/zcgw=")}}, true)
end)
_v4.mmapCache = _vbr
return _vbr
end
function _v4.mmapMakeDot(_vbs)
local _vbt = Instance.new(_pguo("+DxT7co="))
_vbt.Name = _pguo("+xRtxMDo")
_vbt.AnchorPoint = Vector2.new(0.5, 0.5)
_vbt.BorderSizePixel = 0
_vbt.BackgroundColor3 = Color3.new(1, 1, 1)
_vbt.Size = UDim2.fromOffset(_v4.MMAP_DOT, _v4.MMAP_DOT)
_vbt.ZIndex = 9
_vbt.Visible = false
local _vbu = Instance.new(_pguo("6wdx793yZQo="))
_vbu.CornerRadius = UDim.new(1, 0)
_vbu.Parent = _vbt
_vbt.Parent = _vbs
return _vbt
end
function _v4.mmapDestroyPool()
for _vbv, _vbw in ipairs(_v4.mmapPool) do
pcall(function() if _vbw.mini then _vbw.mini:Destroy() end end)
pcall(function() if _vbw.exp then _vbw.exp:Destroy() end end)
end
_v4.mmapPool = {}
_v4.mmapShown = 0
end
function _v4.mmapHideAll()
for _vbx, _vby in ipairs(_v4.mmapPool) do
if _vby.mini then _vby.mini.Visible = false end
if _vby.exp then _vby.exp.Visible = false end
end
_v4.mmapShown = 0
end
function _v4.mmapEnsure(_vbz, _vc0)
local _vc1 = _v4.mmapPool
local _vc2 = rawget(_vc0, _pguo("6i9V8+nuYRXb"))
local _vc3 = rawget(_vc0, _pguo("+zZC4cH4ZRz6K0bhxvBz"))
while #_vc1 < _vbz do
local _vc4 = {}
if _vc2 then _vc4.mini = _v4.mmapMakeDot(_vc2) end
if _vc3 then _vc4.exp = _v4.mmapMakeDot(_vc3) end
_vc1[#_vc1 + 1] = _vc4
end
end
function _v4.mmapCollect()
local _vc5 = {}
local _vc6 = _v4.getLocalRoot()
local _vc7 = _vc6 and _vc6.Position or Vector3.zero
local function _vc8(_vc9, _vca)
_vc5[#_vc5 + 1] = { pos = _vc9, color = _vca, d = (_vc9 - _vc7).Magnitude }
end
if _v4.MMAP_PLAYERS then
pcall(function()
for _vcb, _vcc in ipairs(_v0:GetPlayers()) do
if _vcc ~= _v2 then
local _vcd = _vcc.Character
local _vce = _vcd and _v4.getRootOf(_vcd, false)
if _vce then _vc8(_vce.Position, _v4.MMAP_COLOR_PLAYER) end
end
end
end)
end
if _v4.MMAP_CORPSES then
for _vcf, _vcg in ipairs(_v4.MMAP_CORPSE_FOLDERS) do
pcall(function()
local _vch = _v4.mmapFolder(_vcg)
if not _vch then return end
for _vcf, _vcj in ipairs(_vch:GetChildren()) do
local _vck = _v4.worldESPAnchor(_vcj)
if _vck then _vc8(_vck.Position, _v4.MMAP_COLOR_CORPSE) end
end
end)
end
end
if _v4.MMAP_FOSSILS then
pcall(function()
local _vcl = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if not _vcl then return end
for _vcm, _vcn in ipairs(_vcl:GetChildren()) do
local _vco = _v4.worldESPAnchor(_vcn)
if _vco then _vc8(_vco.Position, _v4.MMAP_COLOR_FOSSIL) end
end
end)
end
if #_vc5 > _v4.MMAP_MAX then
table.sort(_vc5, function(_vcp, _vcq) return _vcp.d < _vcq.d end)
end
_v4.mmapList = _vc5
end
function _v4.mmapStep()
if _v4.UNLOADED then return end
if not _v4.MMAP_ON or not (_v4.MMAP_PLAYERS or _v4.MMAP_CORPSES or _v4.MMAP_FOSSILS) then
if _v4.mmapShown > 0 then _v4.mmapHideAll() end
return
end
local _vcr = _v4.mmapFind()
if not _vcr then return end
if _v4.mmapBoundTo ~= _vcr then
_v4.mmapPool = {}
_v4.mmapShown = 0
_v4.mmapBoundTo = _vcr
end
_v4.mmapTick = (_v4.mmapTick or 0) + 1
if not _v4.mmapList or _v4.mmapTick % 5 == 1 then _v4.mmapCollect() end
local _vcs = _v4.mmapList
if not _vcs then return end
local _vct = math.min(#_vcs, _v4.MMAP_MAX)
_v4.mmapEnsure(_vct, _vcr)
local _vcu = rawget(_vcr, _pguo("8ydc6Q=="))
local _vcv = rawget(_vcr, _pguo("+zZC4cH4ZRw="))
local _vcw = rawget(_vcr, _pguo("6CdX99/zcgw="))
local _vcx = _vcu and _vcu.Visible
local _vcy = _vcv and _vcv.Visible
local _vcz = 0
pcall(function() if _vcw then _vcz = _vcw.AbsoluteSize.X * 0.5 end end)
for _vd0 = 1, _vct do
local _vd1 = _vcs[_vd0]
local _vd2 = _v4.mmapPool[_vd0]
if _vd2 then
if _vd2.mini then
if _vcx then
local _vd3, _vd4 = pcall(function() return _vcr:GetTagPosition(_vd1.pos) end)
if _vd3 and _vd4 then
_vd2.mini.Position = UDim2.fromOffset(_vd4.X, _vd4.Y)
_vd2.mini.BackgroundColor3 = _vd1.color
local _vd5, _vd6 = pcall(function() return _vcr:GetDistanceFromCenter(_vd4) end)
_vd2.mini.Visible = (not _vd5) or (_vd6 <= _vcz)
else
_vd2.mini.Visible = false
end
else
_vd2.mini.Visible = false
end
end
if _vd2.exp then
if _vcy then
local _vd7, _vd8 = pcall(function() return _vcr:TransformPosition(_vd1.pos) end)
if _vd7 and _vd8 then
_vd2.exp.Position = _vd8
_vd2.exp.BackgroundColor3 = _vd1.color
_vd2.exp.Visible = true
else
_vd2.exp.Visible = false
end
else
_vd2.exp.Visible = false
end
end
end
end
for _vd9 = _vct + 1, #_v4.mmapPool do
local _vda = _v4.mmapPool[_vd9]
if _vda.mini then _vda.mini.Visible = false end
if _vda.exp then _vda.exp.Visible = false end
end
_v4.mmapShown = _vct
end
_v4.addStep(3, _v4.mmapStep)
function _v4.expandPlayerHitbox(_vdb)
local _vdc = _vdb.Character
if not _vdc then return end
local _vdd = _vdc:FindFirstChild(_pguo("9idG4sDk"))
if not _vdd then return end
for _vde, _vdf in _vdd:GetChildren() do
if not _vdf:IsA(_pguo("/C9B5f/9cgw=")) then continue end
local _vdg = _vdf:GetAttribute(_pguo("+Txd9d8="))
if not _vdg then continue end
if _vdf:GetAttribute(_pguo("8idc6w==")) then continue end
local _vdh = (_vdg == _pguo("6i9b7A==")) and _v4.getTailSubGroup(_vdf.Name) or _vdg
if not _v3h[_vdf] then
_v3h[_vdf] = _vdf.Size
end
local _vdi = _v3h[_vdf]
pcall(function()
if _v4.HITBOX_EXPANDER and _v4.HITBOX_GROUPS[_vdh] then
_vdf.Size = _vdi * _v4.HITBOX_MULTIPLIER
else
_vdf.Size = _vdi
end
end)
pcall(function()
if _v4.SILENT_AIM then
_vdf.CanQuery = _v4.SILENT_GROUPS[_vdh] and true or false
else
_vdf.CanQuery = true
end
end)
end
end
function _v4.resetPlayerHitbox(_vdj)
local _vdk = _vdj.Character
if not _vdk then return end
local _vdl = _vdk:FindFirstChild(_pguo("9idG4sDk"))
if _vdl then
for _vdm, _vdn in _vdl:GetChildren() do
if not _vdn:IsA(_pguo("/C9B5f/9cgw=")) then continue end
local _vdo = _v3h[_vdn]
if _vdo then
pcall(function() _vdn.Size = _vdo; _vdn.CanQuery = true end)
_v3h[_vdn] = nil
end
end
end
local _vdp = _vdk:FindFirstChild(_pguo("9idGwsDk"))
if _vdp and _v3h[_vdp] then
pcall(function() _vdp.Size = _v3h[_vdp] end)
_v3h[_vdp] = nil
end
end
function _v4.visualizePlayerHitbox(_vdq, _vdr)
local _vds = _vdq.Character
if not _vds then return end
local _vdt = _vds:FindFirstChild(_pguo("9idG4sDk"))
if _vdt then
for _vdu, _vdv in _vdt:GetChildren() do
if not _vdv:IsA(_pguo("/C9B5f/9cgw=")) then continue end
local _vdw = _vdv:GetAttribute(_pguo("+Txd9d8=")) or _pguo("yyBV8sDpcB3a")
local _vdx = false
if _vdw == _pguo("6i9b7A==") then
local _vdy = _v4.getTailSubGroup(_vdv.Name)
_vdx = _v4.HITBOX_GROUPS[_vdy]
else
_vdx = _v4.HITBOX_GROUPS[_vdw]
end
pcall(function()
if _vdr and _vdx then
if not _v3i[_vdv] then
_v3i[_vdv] = { _vdv.Transparency, _vdv.Material, _vdv.Color }
end
_vdv.Transparency = _v4.HITBOX_VIS_TRANSPARENCY
_vdv.Color = _v4.HITBOX_VIS_COLOR
_vdv.Material = Enum.Material.Neon
else
local _vdz = _v3i[_vdv]
if _vdz then
_vdv.Transparency, _vdv.Material, _vdv.Color = _vdz[1], _vdz[2], _vdz[3]
_v3i[_vdv] = nil
else
_vdv.Transparency = 1
end
end
end)
end
end
local _ve0 = _vds:FindFirstChild(_pguo("9idGwsDk"))
if _ve0 and _ve0:IsA(_pguo("/C9B5f/9cgw=")) then
pcall(function()
if _vdr then
if not _v3i[_ve0] then
_v3i[_ve0] = { _ve0.Transparency, _ve0.Material, _ve0.Color }
end
_ve0.Transparency = _v4.HITBOX_VIS_TRANSPARENCY
_ve0.Color = _v4.HITBOX_VIS_COLOR
_ve0.Material = Enum.Material.Neon
else
local _ve1 = _v3i[_ve0]
if _ve1 then
_ve0.Transparency, _ve0.Material, _ve0.Color = _ve1[1], _ve1[2], _ve1[3]
_v3i[_ve0] = nil
else
_ve0.Transparency = 1
end
end
end)
end
end
function _v4.resetAllHitboxes()
for _ve2, _ve3 in _v0:GetPlayers() do
if _ve3 == _v2 then continue end
_v4.resetPlayerHitbox(_ve3)
_v4.visualizePlayerHitbox(_ve3, false)
_v4.hbShown[_ve3] = nil
end
end
function _v4.expandLocalReach()
local _ve4 = _v2.Character
if not _ve4 then return end
local _ve5 = _ve4:FindFirstChild(_pguo("9idG4sDk"))
if not _ve5 then return end
for _ve6, _ve7 in _ve5:GetChildren() do
if not _ve7:IsA(_pguo("/C9B5f/9cgw=")) then continue end
local _ve8 = _ve7:GetAttribute(_pguo("+Txd9d8="))
if not _ve8 then continue end
if _ve7:GetAttribute(_pguo("8idc6w==")) then continue end
local _ve9 = (_ve8 == _pguo("6i9b7A==")) and _v4.getTailSubGroup(_ve7.Name) or _ve8
if not _v4.REACH_GROUPS[_ve9] then continue end
if not _v3j[_ve7] then
_v3j[_ve7] = _ve7.Size
end
local _vea = _v3j[_ve7]
pcall(function()
_ve7.Size = _v4.REACH_ENABLED and (_vea * _v4.REACH_MULTIPLIER) or _vea
_ve7.CanQuery = true
if _v4.REACH_VISUALIZE then
_ve7.Transparency = _v4.REACH_VIS_TRANSPARENCY
_ve7.Color = Color3.fromRGB(150, 85, 235)
_ve7.Material = Enum.Material.ForceField
else
_ve7.Transparency = 1
end
end)
end
end
function _v4.resetLocalReach()
for _veb, _vec in pairs(_v3j) do
pcall(function() _veb.Size = _vec; _veb.Transparency = 1 end)
end
table.clear(_v3j)
end
local _ved = 0
table.insert(_vz, _v1.Heartbeat:Connect(function()
if _v4.UNLOADED then return end
local _vee = next(_v4.hbShown) ~= nil
if not _v4.HITBOX_EXPANDER and not _v4.HITBOX_VISUALIZE and not _v4.REACH_ENABLED
and not _v4.REACH_VISUALIZE and not _v4.SILENT_AIM
and not _vee then return end
if _v4.REACH_ENABLED or _v4.REACH_VISUALIZE then pcall(_v4.expandLocalReach) end
if not _v4.HITBOX_EXPANDER and not _v4.HITBOX_VISUALIZE and not _v4.SILENT_AIM
and not _vee then return end
_ved = _ved + 1
local _vef = (_ved % 5 == 0)
for _veg, _veh in _v0:GetPlayers() do
if _veh == _v2 then continue end
pcall(function()
if _v4.HITBOX_EXPANDER or _v4.SILENT_AIM then _v4.expandPlayerHitbox(_veh) end
if _vef then
if _v4.HITBOX_VISUALIZE then
_v4.visualizePlayerHitbox(_veh, true)
_v4.hbShown[_veh] = true
elseif _v4.hbShown[_veh] then
_v4.visualizePlayerHitbox(_veh, false)
_v4.hbShown[_veh] = nil
end
end
end)
end
end))
local _vei = game:GetService(_pguo("8idV6Nv1bh8="))
function _v4.isBlackOverlay(_vej)
if not _vej:IsA(_pguo("+DxT7co=")) and not _vej:IsA(_pguo("9yNT58rQYRrbIg==")) then return false end
if _vej.BackgroundTransparency > 0.1 then return false end
local _vek = _vej.BackgroundColor3
if _vek.R > 0.05 or _vek.G > 0.05 or _vek.B > 0.05 then return false end
local _vel = _vej.AbsoluteSize
local _vem, _ven = _v3.ViewportSize.X, _v3.ViewportSize.Y
if _vel.X < _vem * 0.8 or _vel.Y < _ven * 0.8 then return false end
return true
end
_v4.absDirty = true
_v4.absLastFull = 0
_v4.ABS_FULL_INTERVAL = 2
function _v4.markAbsDirty()
_v4.absDirty = true
end
pcall(function()
local _veo = _v2:FindFirstChild(_pguo("7iJT+cruRw3X"))
if _veo then table.insert(_vz, _veo.DescendantAdded:Connect(_v4.markAbsDirty)) end
end)
pcall(function()
table.insert(_vz, game:GetService(_pguo("/SFA5ejpaQ==")).DescendantAdded:Connect(_v4.markAbsDirty))
end)
function _v4.sweepGuiRoot(_vep)
for _veq, _ver in _vep:GetChildren() do
if not _ver:IsA(_pguo("7S1A5cryRw3X")) then continue end
if _ver.Name == _pguo("+y9I+ez0ZRnKPQ==") or _ver.Name == _pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA==") or _ver.Name == _pguo("7S1T7uHzdBHYNw==") then continue end
for _veq, _vet in _ver:GetDescendants() do
if _v4.isBlackOverlay(_vet) then
_vet.BackgroundTransparency = 1
end
end
end
end
function _v4.neutralizeBlackScreens()
local _veu = os.clock()
local _vev = (_veu - _v4.absLastFull) >= _v4.ABS_FULL_INTERVAL
if _v4.absDirty or _vev then
_v4.absDirty = false
if _vev then _v4.absLastFull = _veu end
pcall(function()
local _vew = _v2:FindFirstChild(_pguo("7iJT+cruRw3X"))
if _vew then _v4.sweepGuiRoot(_vew) end
end)
pcall(function() _v4.sweepGuiRoot(game:GetService(_pguo("/SFA5ejpaQ=="))) end)
end
pcall(function()
for _vex, _vey in _vei:GetChildren() do
if _vey:IsA(_pguo("/SFe793fbwrMK1H0xvNuPdgoV+Pb")) then
if _vey.Brightness < -0.3 then
_vey.Brightness = 0
end
if _vey.TintColor.R < 0.1 and _vey.TintColor.G < 0.1 and _vey.TintColor.B < 0.1 then
_vey.TintColor = Color3.new(1, 1, 1)
end
end
end
end)
pcall(function()
for _vez, _vf0 in _v3:GetChildren() do
if _vf0:IsA(_pguo("/C9B5f/9cgw=")) then
local _vf1 = _vf0.Color
if _vf1 and _vf1.R < 0.05 and _vf1.G < 0.05 and _vf1.B < 0.05 and _vf0.Transparency ~= 1 then
_vf0.Transparency = 1
end
end
end
end)
end
_v4.addStep(10, function()
if not _v4.ANTI_BLACKSCREEN then return end
_v4.neutralizeBlackScreens()
end)
_v4.addStep(1, function()
if not _v4.ANTI_BLACKSCREEN then return end
local _vf2 = _v2:FindFirstChild(_pguo("7iJT+cruRw3X"))
local _vf3 = _vf2 and _vf2:FindFirstChild(_pguo("7SJX5d/bdRE="))
if _vf3 then
pcall(function()
if _vf3:IsA(_pguo("7S1A5cryRw3X")) and _vf3.Enabled then _vf3.Enabled = false end
local _vf4 = _vf3:FindFirstChild(_pguo("+DxT7co="))
if _vf4 then
if _vf4.Visible then _vf4.Visible = false end
if _vf4:IsA(_pguo("+Ttbz832ZRvK")) and _vf4.BackgroundTransparency < 1 then _vf4.BackgroundTransparency = 1 end
end
end)
end
end)
_v4.customTime = false
_v4.customTimeHour = 12
_v4.wcOrig = nil
function _v4.getWeatherController()
if _v4.weatherCtrl then return _v4.weatherCtrl end
pcall(function()
_v4.weatherCtrl = require(_v4.WATER_RS.Packages.Knit).GetController(_pguo("6StT9Mf5cjvRIEbywPBsHcw="))
end)
return _v4.weatherCtrl
end
function _v4.isNightHour(_vf5)
return _vf5 >= 20 or _vf5 <= 5
end
function _v4.timePresetFor(_vf6)
if _v4.isNightHour(_vf6) then return _pguo("8CdV6Ns=") end
if _vf6 < 8 then return _pguo("7Ttc8sbvZQ==") end
if _vf6 >= 18 then return _pguo("7Ttc88ro") end
return _pguo("+i9L")
end
function _v4.refreshCustomTime()
task.spawn(function()
local _vf7 = _v4.getWeatherController()
if not (_vf7 and _v4.customTime) then return end
pcall(function() _vf7:ApplyLightingTransition(0, true) end)
pcall(function() _vf7:ApplyRenderClockTime(_v4.customTimeHour, _v4.timePresetFor(_v4.customTimeHour)) end)
end)
end
function _v4.setCustomTime(_vf8)
_v4.customTime = _vf8
task.spawn(_v4.applyCustomTime, _vf8)
end
function _v4.applyCustomTime(_vf9)
local _vfa = _v4.getWeatherController()
if not _vfa then
pcall(function() _v4.Hub:Notify(_pguo("/TtB9MDxICzXI1e6j+tlGcomV/KP/28Wyjxd7MP5cljLIEDlzv9oGdwiV6BNHJRY3SJd48S8bxbSNx6gw/VnEMonXOeP6W4b1i9c58r4"), 6) end)
return
end
if _vf9 then
if not _v4.wcOrig then
_v4.wcOrig = {
IsArtificialNight = _vfa.IsArtificialNight,
GetSimulationClockTime = _vfa.GetSimulationClockTime,
GetDesiredTransitionType = _vfa.GetDesiredTransitionType,
}
end
_vfa.IsArtificialNight = function() return _v4.isNightHour(_v4.customTimeHour) end
_vfa.GetSimulationClockTime = function() return _v4.customTimeHour end
_vfa.GetDesiredTransitionType = function() return _v4.timePresetFor(_v4.customTimeHour) end
_v4.refreshCustomTime()
elseif _v4.wcOrig then
_vfa.IsArtificialNight = _v4.wcOrig.IsArtificialNight
_vfa.GetSimulationClockTime = _v4.wcOrig.GetSimulationClockTime
_vfa.GetDesiredTransitionType = _v4.wcOrig.GetDesiredTransitionType
_v4.wcOrig = nil
pcall(function() _vfa:ApplyLightingTransition(0, true) end)
end
end
pcall(function()
_v1:BindToRenderStep(_pguo("7hZtw9rvdBfTGlvtyg=="), Enum.RenderPriority.Last.Value, function()
if _v4.customTime and not _v4.UNLOADED then
pcall(function() _vei.ClockTime = _v4.customTimeHour end)
end
end)
end)
_v4.FULLBRIGHT = false
do
local _vfb = nil
_v4.enableFullbright = function()
if _vfb then return end
_vfb = {
Brightness = _vei.Brightness,
Ambient = _vei.Ambient,
OutdoorAmbient = _vei.OutdoorAmbient,
GlobalShadows = _vei.GlobalShadows,
FogEnd = _vei.FogEnd,
ExposureCompensation = _vei.ExposureCompensation,
}
end
_v4.restoreFullbright = function()
if not _vfb then return end
pcall(function()
_vei.Brightness = _vfb.Brightness
_vei.Ambient = _vfb.Ambient
_vei.OutdoorAmbient = _vfb.OutdoorAmbient
_vei.GlobalShadows = _vfb.GlobalShadows
_vei.FogEnd = _vfb.FogEnd
_vei.ExposureCompensation = _vfb.ExposureCompensation
end)
_vfb = nil
end
pcall(function()
_v1:BindToRenderStep(_pguo("7hZtxtrwbBrMJ1Xo2w=="), Enum.RenderPriority.Last.Value + 1, function()
if _v4.FULLBRIGHT and not _v4.UNLOADED then
pcall(function()
_vei.Brightness = 2
_vei.Ambient = Color3.fromRGB(190, 190, 190)
_vei.OutdoorAmbient = Color3.fromRGB(190, 190, 190)
_vei.GlobalShadows = false
_vei.FogEnd = 1e9
_vei.ExposureCompensation = 0.15
for _vfc, _vfd in ipairs(_vei:GetChildren()) do
if _vfd:IsA(_pguo("/zpf79zsaB3MKw==")) and _vfd.Density > 0.3 then _vfd.Density = 0.3 end
end
end)
end
end)
end)
end
_v4.NO_FOG = false
do
local _vfe = nil
_v4.enableNoFog = function()
if _vfe then return end
_vfe = { FogEnd = _vei.FogEnd, FogStart = _vei.FogStart, atmos = {} }
pcall(function()
for _vff, _vfg in ipairs(_vei:GetChildren()) do
if _vfg:IsA(_pguo("/zpf79zsaB3MKw==")) then
_vfe.atmos[_vfg] = { Density = _vfg.Density, Haze = _vfg.Haze }
end
end
end)
end
_v4.restoreNoFog = function()
if not _vfe then return end
pcall(function()
_vei.FogEnd = _vfe.FogEnd
_vei.FogStart = _vfe.FogStart
end)
for _vfh, _vfi in pairs(_vfe.atmos) do
pcall(function()
if _vfh.Parent then _vfh.Density = _vfi.Density; _vfh.Haze = _vfi.Haze end
end)
end
_vfe = nil
end
pcall(function()
_v1:BindToRenderStep(_pguo("7hZtzsDabx8="), Enum.RenderPriority.Last.Value + 2, function()
if not _v4.NO_FOG or _v4.UNLOADED then return end
pcall(function()
if _vei.FogEnd < 1e6 then _vei.FogEnd = 1e6 end
if _vei.FogStart ~= 0 then _vei.FogStart = 0 end
for _vfj, _vfk in ipairs(_vei:GetChildren()) do
if _vfk:IsA(_pguo("/zpf79zsaB3MKw==")) then
if _vfk.Density ~= 0 then _vfk.Density = 0 end
if _vfk.Haze ~= 0 then _vfk.Haze = 0 end
end
end
end)
end)
end)
end
_v4.VIM = game:GetService(_pguo("6CdA9Nr9bDHQPkf04v1uGdkrQA=="))
local _vfl = nil
_v4.AG_UIS = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
local _vfm = true
table.insert(_vz, _v4.AG_UIS.WindowFocused:Connect(function() _vfm = true end))
table.insert(_vz, _v4.AG_UIS.WindowFocusReleased:Connect(function() _vfm = false end))
local _vfn = _v4.getLocalPhysicsRoot
_v4.AG_SPEED = 16
_v4.AG_TURN_RATE = math.rad(70)
function _v4.startAutoGrow()
if _vfl then return end
_vfl = task.spawn(function()
local _vfo = math.random() < 0.5 and Enum.KeyCode.A or Enum.KeyCode.D
local _vfp = (_vfo == Enum.KeyCode.A) and 1 or -1
local _vfq = false
local _vfr = _v4.AG_SPEED
local _vfs = _v4.AG_TURN_RATE * _vfp
local _vft = 1
local _vfu, _vfv
local function _vfw()
if not _vfq then return end
_vfq = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, _vfo, false, game) end)
end
while _v4.AUTO_GROW and not _v4.UNLOADED do
local _vfx = task.wait()
if _vfx <= 0 then _vfx = 1 / 60 end
local _vfy = _vfn()
if _vfm then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(true, _vfo, false, game) end)
_vfq = true
if _vfy then
pcall(function()
local _vfz = _vfy.CFrame.LookVector
local _vg0 = Vector3.new(_vfz.X, 0, _vfz.Z)
if _vg0.Magnitude > 0.01 then
local _vg1 = math.atan2(_vg0.X, _vg0.Z)
if _vfv then
local _vg2 = _vg1 - _vfv
if _vg2 > math.pi then _vg2 = _vg2 - 2 * math.pi
elseif _vg2 < -math.pi then _vg2 = _vg2 + 2 * math.pi end
local _vg3 = _vg2 / _vfx
if math.abs(_vg3) > 0.05 then _vfs = _vg3 end
end
_vfv = _vg1
end
if _vfu then
local _vg4 = _vfy.Position
local _vg5 = Vector3.new(_vg4.X - _vfu.X, 0, _vg4.Z - _vfu.Z).Magnitude
local _vg6 = _vg5 / _vfx
if _vg6 > 1 then _vfr = _vg6 end
end
_vfu = _vfy.Position
local _vg7 = _v2.Character and _v2.Character:GetAttribute(_pguo("7S1T7Mo="))
if type(_vg7) == _pguo("0Dtf4sru") and _vg7 > 0 then _vft = _vg7 end
end)
end
else
_vfw()
_vfu, _vfv = nil, nil
if _vfy and not _vfy.Anchored then
pcall(function()
local _vg8, _vg9 = _vfs, _vfr
local _vga = _v2.Character and _v2.Character:GetAttribute(_pguo("7S1T7Mo="))
if type(_vga) == _pguo("0Dtf4sru") and _vga > 0 and _vft > 0 then
local _vgb = _vft / _vga
_vg8 = _vfs * _vgb
_vg9 = _vfr * _vgb
end
local _vgc = _vfy.CFrame.LookVector
local _vgd = Vector3.new(_vgc.X, 0, _vgc.Z)
if _vgd.Magnitude < 0.01 then _vgd = Vector3.new(0, 0, 1) end
_vgd = _vgd.Unit
local _vge = _vg8 * _vfx
local _vgf, _vgg = math.cos(_vge), math.sin(_vge)
local _vgh = Vector3.new(_vgd.X * _vgf + _vgd.Z * _vgg, 0, -_vgd.X * _vgg + _vgd.Z * _vgf)
local _vgi = _vfy.Position
_vfy.CFrame = CFrame.lookAt(_vgi, _vgi + _vgh)
local _vgj = _vfy.AssemblyLinearVelocity
_vfy.AssemblyLinearVelocity = Vector3.new(_vgh.X * _vg9, _vgj.Y, _vgh.Z * _vg9)
end)
end
end
end
_vfw()
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, _vfo, false, game) end)
_vfl = nil
end)
end
function _v4.stopAutoGrow()
_v4.AUTO_GROW = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.A, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.D, false, game) end)
pcall(function()
local _vgk = _vfn()
if _vgk and not _vgk.Anchored then
local _vgl = _vgk.AssemblyLinearVelocity
_vgk.AssemblyLinearVelocity = Vector3.new(0, _vgl.Y, 0)
end
end)
_vfl = nil
end
_v4.WATER_RS = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local _vgm = _v4.WATER_RS:FindFirstChild(_pguo("7Ctf79v5RQ7bIEbz"))
local _vgn = _vgm and _vgm:FindFirstChild(_pguo("7CtC7Mb/YSvXKVzhww=="))
_v4.ReplicaSetRemote = _vgm and _vgm:FindFirstChild(_pguo("7CtC7Mb/YSvbOg=="))
local _vgo = nil
_v4.cleanliness = {}
_v4.waterCur = {}
_v4.waterMax = {}
if _v4.ReplicaSetRemote then
table.insert(_vz, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_vgp, _vgq, _vgr)
if typeof(_vgq) ~= _pguo("yi9Q7Mo=") then return end
if _vgq[1] == _pguo("/SFc89rxYRrSK3bh2/0=") then
_vgo = _vgp
elseif _vgq[1] == _pguo("7TpT9Nw=") and _vgq[2] == _pguo("/CJX5cvabwrbLVPz2w==") then
_v4.bleedForecast[_vgp] = (typeof(_vgr) == _pguo("0Dtf4sru") and _vgr) or 0
elseif _vgq[1] == _pguo("7TpT9Nw=") and _vgq[2] == _pguo("7TpT7cbyYQ==") then
if typeof(_vgr) == _pguo("0Dtf4sru") then _v4.staminaCur[_vgp] = _vgr end
elseif _vgq[1] == _pguo("8y9K09v9dAs=") and _vgq[2] == _pguo("7TpT7cbyYQ==") then
if typeof(_vgr) == _pguo("0Dtf4sru") then _v4.staminaMax[_vgp] = _vgr end
elseif _vgq[1] == _pguo("7TpT9Nw=") and _vgq[2] == _pguo("9yBU5czoaRfQ") then
if typeof(_vgr) == _pguo("0Dtf4sru") then _v4.infectCur[_vgp] = _vgr end
elseif _vgq[1] == _pguo("7TpT9Nw=") and _vgq[2] == _pguo("6S9G5d0=") then
if typeof(_vgr) == _pguo("0Dtf4sru") then _v4.waterCur[_vgp] = _vgr end
elseif _vgq[1] == _pguo("8y9K09v9dAs=") and _vgq[2] == _pguo("6S9G5d0=") then
if typeof(_vgr) == _pguo("0Dtf4sru") then _v4.waterMax[_vgp] = _vgr end
elseif _vgq[1] == _pguo("/SJX4cHwaRbbPUE=") and _vgq[2] == nil then
if typeof(_vgr) == _pguo("0Dtf4sru") then _v4.cleanliness[_vgp] = _vgr end
elseif _vgq[1] == _pguo("8y9K09v9dAs=") and _vgq[2] == _pguo("+CFd5A==") then
if typeof(_vgr) == _pguo("0Dtf4sru") then _v4.foodMax[_vgp] = _vgr end
elseif _vgq[1] == _pguo("7TpT9Nw=") and _vgq[2] == _pguo("+CFd5A==") then
if typeof(_vgr) == _pguo("0Dtf4sru") then _v4.foodCur[_vgp] = _vgr end
end
end))
end
_v4.ReplicaDestroyRemote = _vgm and _vgm:FindFirstChild(_pguo("7CtC7Mb/YTzbPUbywOU="))
if _v4.ReplicaDestroyRemote then
table.insert(_vz, _v4.ReplicaDestroyRemote.OnClientEvent:Connect(function(_vgs)
_v4.bleedForecast[_vgs] = nil
_v4.staminaCur[_vgs] = nil; _v4.staminaMax[_vgs] = nil
_v4.infectCur[_vgs] = nil; _v4.foodSeenMax[_vgs] = nil; _v4.waterSeenMax[_vgs] = nil
end))
end
local function _vgt()
local _vgu = _v2.Character
if not _vgu then return nil end
local _vgv = _vgu:FindFirstChild(_pguo("7CtC7Mb/YTrXIFY="))
return _vgv and _vgv.Value or nil
end
function _v4.readWaterStat()
local ok, cur, max = pcall(function()
local _vgw = _v2.PlayerGui.MainHUD.StatsFrame.Water.TextLabel.Text
_vgw = _vgw:gsub(",", "")
local _vgx, _vgy = _vgw:match(_pguo("lhUX5IqyXVOXa0GqgLlzUpYVF+SKsl1Tlw=="))
return tonumber(_vgx), tonumber(_vgy)
end)
if ok then return cur, max end
return nil, nil
end
function _v4.readFoodStat()
local ok, cur, max = pcall(function()
local function _vgz(_vh0)
if type(_vh0) ~= _pguo("zTpA6cH7") then return nil end
_vh0 = _vh0:gsub(",", ""):gsub("%s", "")
local _vh1 = _vh0:match(_pguo("5WtWpYHBKw=="))
local _vh2 = _vh1 and tonumber(_vh1)
if not _vh2 then return nil end
local _vh3 = _vh0:sub(-1):lower()
if _vh3 == "k" then _vh2 = _vh2 * 1e3
elseif _vh3 == "m" then _vh2 = _vh2 * 1e6
elseif _vh3 == "b" then _vh2 = _vh2 * 1e9 end
return _vh2
end
local _vh4 = _v2.PlayerGui.MainHUD.StatsFrame.Food.TextLabel.Text
local _vh5, _vh6 = _vh4:match(_pguo("lmAfqYrvKlebPRiogbcp"))
return _vgz(_vh5), _vgz(_vh6)
end)
if ok and cur and max and max > 5 then return cur, max end
return nil, nil
end
function _v4.myFood()
local _vh7 = _v2.Character
local _vh8 = _vh7 and _vh7:FindFirstChild(_pguo("7CtC7Mb/YTrXIFY="))
local _vh9 = _vh8 and _vh8.Value
if _vh9 then
local _vha, _vhb = _v4.foodCur[_vh9], _v4.foodMax[_vh9]
if _vha and _vhb then return _vha, _vhb end
end
return _v4.readFoodStat()
end
function _v4.myWater()
local _vhc = _vgt()
if _vhc then
local _vhd, _vhe = _v4.waterCur[_vhc], _v4.waterMax[_vhc]
if _vhd and _vhe and _vhe > 0 then return _vhd, _vhe end
end
return _v4.readWaterStat()
end
function _v4.getConsumptionReplicaId()
if _vgo then return _vgo end
pcall(function()
if type(_v4.getCC) ~= _pguo("2Dtc49v1bxY=") then return end
local _vhf = _v4.getCC()
local _vhg = _vhf and _vhf.Replica
if _vhg and _vhg.Id then _vgo = _vhg.Id end
end)
return _vgo
end
task.spawn(function()
while not _v4.UNLOADED do
pcall(function()
if not _v4.PACK_ESP and not _v4.PACK_LEADER_ESP then return end
local _vhh = require(_v4.WATER_RS.Packages.Knit)
local _vhi = _vhh.GetController(_pguo("7i9R6+zzbgzMIV7syu4="))
local _vhj = _vhi:GetMyPack()
local _vhk = {}
local _vhl = {}
if _vhj and _vhj.Parent then
for _vhm, _vhn in _vhj.Parent.Children do
local _vho = _vhm.Tags and _vhm.Tags.Name or _pguo("7i9R6w==")
local _vhp = _vhm.Data
if _vhp and _vhp.Members then
local _vhq = #_vhp.Members
local _vhr = _vhp.Leader and tostring(_vhp.Leader) or nil
for _vhn, _vht in ipairs(_vhp.Members) do
local _vhu = _v0:GetPlayerByUserId(_vht[1])
if _vhu then
local _vhv = _vhr and (_vhu.Name == _vhr or _vhu.DisplayName == _vhr)
_vhk[_vhu] = {name = _vho, count = _vhq, isLeader = _vhv}
if _vhv then _vhl[_vhu] = _vho end
end
end
end
end
else
for _vhw, _vhx in ipairs(_v0:GetPlayers()) do
if _vhx:GetAttribute(_pguo("9z177v/9YxM=")) then
_vhk[_vhx] = {name = "", count = 0, isLeader = false}
end
end
end
_v4.packMembers = _vhk
_v4.packLeaders = _vhl
end)
task.wait(3)
end
end)
task.spawn(function()
local _vhy = false
local _vhz = false
local function _vi0(_vi1)
if _vi1 == false and _v4.FREEZE_WATER then return end
local _vi2 = _vgt()
if _vi2 and _vgn then
pcall(function() _vgn:FireServer(_vi2, _pguo("7StGwczoaRfQ"), _pguo("+jxb7sT1bh8="), _vi1) end)
end
_vhy = _vi1
end
local _vi3 = false
while not _v4.UNLOADED do
pcall(function()
if not _vi3 then
_vi3 = true
if not _v4.FREEZE_WATER then _vi0(false) end
end
if not ((_v4.AUTO_WATER or _v4.AFK_FARM or _v4.LEGIT_FARM) and _vgn) then return end
local _vi4 = _v4.getConsumptionReplicaId()
if not _vi4 then
if not _vhz then
_vhz = true
pcall(function()
if _v4.Hub then
_v4.Hub:Notify(_pguo("/ztG74/LYQzbPAig2P1pDNcgVaDJ83JYyiZXoMzzbgvLI0L0xvNuWMwrQuzG/2FYk25F4cP3IBbbL0CgzvJ5WNghXeSP83JYyS9G5d28bxbdKw=="), 6)
end
end)
end
return
end
_vhz = false
local _vi5, _vi6 = _v4.myWater()
local _vi7 = true
if _vi5 and _vi6 and _vi6 > 0 then
_vi7 = _vi5 < _vi6 - math.max(_vi6 * 0.002, 0.001)
end
if _vi7 then
_vgn:FireServer(_vi4, _pguo("7SdC"))
end
if _vhy then _vi0(false) end
end)
task.wait(1 / math.clamp(_v4.SIP_RATE or 4, 0.5, 20))
end
end)
task.spawn(function()
local _vi8, _vi9 = false, false
local function _via(_vib, _vic)
local _vid = _vgt()
if _vid and _vgn then
pcall(function() _vgn:FireServer(_vid, _pguo("7StGwczoaRfQ"), _vib, _vic) end)
end
end
while not _v4.UNLOADED do
if _v4.FREEZE_FOOD then
_via(_pguo("/SFc89rxaRbZ"), true)
elseif _vi8 then
_via(_pguo("/SFc89rxaRbZ"), false)
end
_vi8 = _v4.FREEZE_FOOD
if _v4.FREEZE_WATER then
_via(_pguo("+jxb7sT1bh8="), true)
elseif _vi9 then
_via(_pguo("+jxb7sT1bh8="), false)
end
_vi9 = _v4.FREEZE_WATER
task.wait(1.0)
end
if _vi8 then pcall(_via, _pguo("/SFc89rxaRbZ"), false) end
if _vi9 then pcall(_via, _pguo("+jxb7sT1bh8="), false) end
end)
task.spawn(function()
local _vie = game:GetService(_pguo("/SFe7Mr/dBHRIGHl3eppG9s="))
local _vif, _vig, _vih, _vii
pcall(function() _vif = require(_v4.WATER_RS.Shared.ConsumptionData) end)
pcall(function() _vig = require(_v4.WATER_RS.Common.CharacterState) end)
pcall(function() _vih = require(_v4.WATER_RS.Packages.Knit).GetController(_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd")) end)
pcall(function() _vii = require(_v4.WATER_RS.Common.Buffers.ConsumableBuffer) end)
local _vij = _vii and _vii.FOOD or 9
local _vik = _vii and _vii.WATER or 13
local _vil = _vii and _vii.SPAWN or 17
local function _vim()
local _vin
pcall(function() _vin = _vih and _vih.Replica and _vih.Replica.Id end)
return _vin or _vgo
end
local _vio = false
local function _vip(_viq)
if _viq == false and _v4.FREEZE_FOOD then return end
if _viq == _vio then return end
_vio = _viq
local _vir = _vgt()
if _vir and _vgn then
pcall(function() _vgn:FireServer(_vir, _pguo("7StGwczoaRfQ"), _pguo("/SFc89rxaRbZ"), _viq) end)
end
end
local function _vis(_vit)
local _viu, _viv = pcall(function() return _vig.Data.Diet.Categories[_vit] ~= nil end)
return _viu and _viv
end
local function _viw()
local _vix
pcall(function() _vix = _vig.Wellbeing.WellbeingReplica.Data.SavableStats.Stats end)
if type(_vix) == _pguo("yi9Q7Mo=") and _vix.Proteins ~= nil then return _vix end
pcall(function() _vix = _vig.Wellbeing.SavableStats end)
if type(_vix) == _pguo("yi9Q7Mo=") and _vix.Proteins ~= nil then return _vix end
return nil
end
local function _viy()
local _viz = _viw()
if not _viz then return nil end
local _vj0 = {}
pcall(function()
for _vj1, _vj2 in ipairs(_vig.Data.Shared.Nutrition) do
if _vj2.Category then _vj0[#_vj0 + 1] = _vj2.Category end
end
end)
if #_vj0 == 0 then
for _vj3, _vj4 in ipairs(_v4.NUTRIENTS) do
if tonumber(_viz[_vj4]) then _vj0[#_vj0 + 1] = _vj4 end
end
end
local _vj5, _vj6
for _vj7, _vj8 in ipairs(_vj0) do
local _vj9 = tonumber(_viz[_vj8])
if _vj9 and (not _vj6 or _vj9 < _vj6) then _vj5, _vj6 = _vj8, _vj9 end
end
return _vj5
end
local function _vja(_vjb, _vjc)
if not _vih or not _vih.Replica or not _vih.Replica.Data then return nil end
local _vjd = _vih.Replica.Data.ConsumableData
local _vje = _vjd and (_vjd[tostring(_vjb)] or _vjd[_vjb])
if type(_vje) ~= _pguo("yi9Q7Mo=") then return nil end
local _vjf = _vje[_vjc or 1]
if typeof(_vjf) ~= _pguo("3DtU5sru") then return nil end
local _vjg, _vjh, _vji, _vjj = pcall(function()
return buffer.readu32(_vjf, _vij) / 100,
buffer.readu32(_vjf, _vik) / 100,
buffer.readu8(_vjf, _vil) == 1
end)
if _vjg then return _vjh, _vji, _vjj end
return nil
end
local function _vjk(_vjl, _vjm)
local _vjn = {}
local _vjo = _vif and _vif.FoliageConsumables and _vif.FoliageConsumables[_vjl]
local _vjp = _vjo and _vjo.Actions
if type(_vjp) == _pguo("yi9Q7Mo=") then
for _vjq, _vjr in ipairs(_vjp) do
if type(_vjr) == _pguo("yi9Q7Mo=") then
local _vjs, _vjt, _vju = _vja(_vjm, _vjq)
if _vjs ~= nil then
if not _vju or (_vjs + (_vjt or 0)) <= 0 then continue end
if _v4.scrapsWanted() and _v4.isScraps(_vjs) then continue end
end
_vjn[#_vjn + 1] = { index = _vjq, nutrition = _vjr.Nutrition or {},
allowed = _vjr.Category ~= nil and _vis(_vjr.Category),
category = _vjr.Category, food = _vjs or 0 }
end
end
end
if #_vjn == 0 then
local _vjv, _vjw, _vjx = _vja(_vjm, 1)
if _vjv and _vjx and (_vjv + (_vjw or 0)) > 0 and not (_v4.scrapsWanted() and _v4.isScraps(_vjv)) then
_vjn[1] = { index = 1, nutrition = {}, allowed = false, food = _vjv }
elseif _vjv == nil then
_vjn[1] = { index = 1, nutrition = {}, allowed = false, food = 0 }
end
end
return _vjn
end
local function _vjy(_vjz)
local _vk0 = (type(_vjz) == _pguo("zTpA6cH7") and _vjz:sub(1, 4) == _pguo("8ytT9A==")) and _pguo("8ytT9A==")
or (_vif and _vif.CorpseTypes and _vif.CorpseTypes[_vjz])
local _vk1 = _vk0 and _vif and _vif.CorpseConsumables and _vif.CorpseConsumables[_vk0]
local _vk2 = _vk1 and _vk1.Actions and _vk1.Actions[1]
if _vk2 then
return { index = 1, nutrition = _vk2.Nutrition or {},
allowed = _vk2.Category ~= nil and _vis(_vk2.Category), category = _vk2.Category }
end
return { index = 1, nutrition = {}, allowed = false }
end
local function _vk3(_vk4, _vk5)
local _vk6 = 22
pcall(function() if _v4.khRange then _vk6 = _v4.khRange() end end)
local _vk7 = math.max(_vk6 * 3, 60)
local _vk8, _vk9, _vka, _vkb
local _vkc, _vkd, _vke
local _vkf, _vkg, _vkh
local _vki, _vkj, _vkk
local function _vkl(_vkm, _vkn, _vko, _vkp, _vkq)
if not _vkm then return end
if _vkq <= _vk6 then
local _vkr = 2
if _vk5 and _vko[_vk5] then _vkr = 0 elseif _vkp then _vkr = 1 end
if (not _vk8) or _vkr < _vk8 or (_vkr == _vk8 and _vkq < (_vkb or math.huge)) then
_vk8, _vk9, _vka, _vkb = _vkr, _vkm, _vkn, _vkq
end
end
if not _vkk or _vkq < _vkk then _vki, _vkj, _vkk = _vkm, _vkn, _vkq end
if _vkq <= _vk7 then
if _vkp and (not _vkh or _vkq < _vkh) then _vkf, _vkg, _vkh = _vkm, _vkn, _vkq end
if _vk5 and _vko[_vk5] and (not _vke or _vkq < _vke) then _vkc, _vkd, _vke = _vkm, _vkn, _vkq end
end
end
local _vks = {}
for _vkt, _vku in ipairs(_vie:GetTagged(_pguo("/SFc89rxYRrSK3Tvw/VhH9s="))) do
local _vkv, _vkw = _v4.foodSpot(_vku)
if _vkv then
local _vkx = (_vkv - _vk4).Magnitude
if _vkx <= _vk7 then
local _vky = _vjk(_vku.Name, _vkw)
for _vkt, _vl0 in ipairs(_vky) do _vkl(tonumber(_vkw), _vl0.index, _vl0.nutrition, _vl0.allowed, _vkx) end
else
_vks[#_vks + 1] = { tagged = _vku, id = _vkw, d = _vkx }
end
end
end
if _vih and _vih.CorpseData then
for _vl1, _vl2 in pairs(_vih.CorpseData) do
local _vl3 = _vl2 and _vjy(_vl2.Name)
local _vl4 = _vl3 and _vl2.Root
if _vl4 then
local _vl5
pcall(function() _vl5 = _vl4:IsA(_pguo("/C9B5f/9cgw=")) and _vl4.Position or _vl4:GetPivot().Position end)
if _vl5 then _vkl(tonumber(_vl1), _vl3.index, _vl3.nutrition, _vl3.allowed, (_vl5 - _vk4).Magnitude) end
end
end
end
if #_vks > 0 and not (_vkk and _vkk <= _vk7) then
table.sort(_vks, function(_vl6, _vl7) return _vl6.d < _vl7.d end)
for _vl8, _vl9 in ipairs(_vks) do
if _vkk and _vl9.d >= _vkk then break end
local _vla = _vjk(_vl9.tagged.Name, _vl9.id)
if #_vla > 0 then
for _vl8, _vlc in ipairs(_vla) do _vkl(tonumber(_vl9.id), _vlc.index, _vlc.nutrition, _vlc.allowed, _vl9.d) end
break
end
end
end
if _vk9 then return _vk9, _vka end
if _vkc then return _vkc, _vkd end
if _vkf then return _vkf, _vkg end
return _vki, _vkj
end
local function _vld(_vle)
local _vlf, _vlg
for _vlh, _vli in ipairs(_vie:GetTagged(_pguo("/SFc89rxYRrSK3Tvw/VhH9s="))) do
local _vlj, _vlk = _v4.foodSpot(_vli)
if _vlj then
local _vll = (_vlj - _vle).Magnitude
if not _vlg or _vll < _vlg then _vlf, _vlg = tonumber(_vlk), _vll end
end
end
return _vlf, 1
end
_v4.foodSpotCache = setmetatable({}, { __mode = "k" })
function _v4.foodSpot(_vlm)
local _vln = _v4.foodSpotCache[_vlm]
if _vln then return _vln.pos, _vln.id end
local _vlo = _vlm:GetAttribute("ID")
if not _vlo then return nil, nil end
local _vlp
pcall(function() _vlp = _vlm:GetPivot().Position end)
if not _vlp then return nil, _vlo end
_v4.foodSpotCache[_vlm] = { pos = _vlp, id = _vlo }
return _vlp, _vlo
end
local _vlq, _vlr, _vls = nil, nil, 0
local _vlt = 0.5
_v4.afkConsumeId = _vim
_v4.afkBufCheck = _vja
function _v4.afkPickFood(_vlu, _vlv, _vlw)
local _vlx = 22
pcall(function() if _v4.khRange then _vlx = _v4.khRange() end end)
local _vly = (_vlw and _vlw.avoid) or _v4.AFK_FARM_AVOID or 200
local _vlz = _viy()
local _vm0, _vm1 = {}, {}
pcall(function()
local _vm2 = _viw()
if not _vm2 then return end
local _vm3 = {}
pcall(function()
for _vm4, _vm5 in ipairs(_vig.Data.Shared.Nutrition) do _vm3[#_vm3 + 1] = _vm5.Category end
end)
if #_vm3 == 0 then _vm3 = _v4.NUTRIENTS end
for _vm6, _vm7 in ipairs(_vm3) do
local _vm8 = _vm7 and tonumber(_vm2[_vm7])
if _vm8 and _vm8 <= 99 then _vm0[_vm7] = true end
if _vm8 and _vm8 <= 90 then _vm1[_vm7] = true end
end
end)
local function _vm9(_vma, _vmb)
for _vmc in pairs(_vmb) do
if (tonumber(_vma[_vmc]) or 0) >= 0.5 then return true end
end
return false
end
local _vmd = math.max(150, _vlx * 6)
local _vme, _vmf = _vlw and _vlw.yWeight, (_vlw and _vlw.feetY) or _vlu.Y
local function _vmg(_vmh)
if not _vme then return (_vmh - _vlu).Magnitude end
local _vmi = Vector3.new(_vmh.X - _vlu.X, 0, _vmh.Z - _vlu.Z).Magnitude
return _vmi + math.max(0, math.abs(_vmh.Y - _vmf) - 6) * _vme
end
local _vmj
pcall(function() _vmj = _v2.Character:GetAttribute(_pguo("6jdC5Q==")) end)
local _vmk = RaycastParams.new()
_vmk.FilterType = Enum.RaycastFilterType.Include
_vmk.FilterDescendantsInstances = { workspace.Terrain }
local function _vml(_vmm)
local _vmn = workspace:Raycast(Vector3.new(_vmm.X, 5000, _vmm.Z), Vector3.new(0, -12000, 0), _vmk)
return _vmn and _vmn.Position.Y
end
local _vmo = {}
if _vly > 0 then
for _vmp, _vmq in ipairs(game.Players:GetPlayers()) do
if _vmq ~= _v2 and _vmq.Character then
local _vmr = _v4.getRootOf(_vmq.Character, false)
if _vmr then _vmo[#_vmo + 1] = _vmr.Position end
end
end
end
local _vms, _vmt, _vmu, _vmv, _vmw
local function _vmx(_vmy, _vmz, _vn0, _vn1, _vn2, _vn3, _vn4, _vn5)
if not _vmy or not _vn3 then return end
if _vlv and _vlv[_vmy] then return end
if _vlw and _vlw.maxDist and _vn2 > _vlw.maxDist then return end
for _vn6, _vn7 in ipairs(_vmo) do
if (_vn7 - _vn3).Magnitude <= _vly then return end
end
local _vn8 = -_vn2
local _vn9 = _vn5 == _pguo("0Tpa5d0=")
if _vn1 and _vm9(_vn0, _vm0) and (not _vn9 or _vm9(_vn0, _vm1)) then
_vn8 = _vn8 + ((_vn5 == _pguo("0ytT9A==")) and 40000 or _vn9 and 20000 or 30000)
if _vlz and (tonumber(_vn0[_vlz]) or 0) >= 0.5 then _vn8 = _vn8 + 5000 end
elseif _vn5 == _pguo("0ytT9A==") then
_vn8 = _vn8 + ((_vn2 <= _vmd) and 10000 or -50000)
elseif _vn9 then
_vn8 = _vn8 - 100000
end
if not _vmv or _vn8 > _vmv then
if _vlw and _vlw.reach and not _vlw.reach(_vn3, _vn4) then return end
_vms, _vmt, _vmu, _vmv, _vmw = _vmy, _vmz, _vn3, _vn8, _vn4
end
end
for _vna, _vnb in ipairs(_vie:GetTagged(_pguo("/SFc89rxYRrSK3Tvw/VhH9s="))) do
local _vnc, _vnd = _v4.foodSpot(_vnb)
if _vnc then
local _vne = _vmg(_vnc)
local _vnf = _vjk(_vnb.Name, _vnd)
for _vna, _vnh in ipairs(_vnf) do
_vmx(tonumber(_vnd), _vnh.index, _vnh.nutrition, _vnh.allowed, _vne, _vnc, false,
_v4.OTHER_FOOD[_vnh.category or ""] and _pguo("0Tpa5d0=") or _pguo("ziJT7ts="))
end
end
end
if (_vlw and _vlw.meat or (not _vlw and _v4.dinoEatsMeat())) and _vih and _vih.CorpseData then
for _vni, _vnj in pairs(_vih.CorpseData) do
if _vnj and tostring(_vnj.Name) ~= tostring(_vmj) then
local _vnk = _vjy(_vnj.Name)
local _vnl = _vnk and _vnj.Root
if _vnl then
local _vnm
pcall(function() _vnm = _vnl:IsA(_pguo("/C9B5f/9cgw=")) and _vnl.Position or _vnl:GetPivot().Position end)
if _vnm then
local _vnn = _vml(_vnm)
local _vno = _vnn ~= nil and _vnm.Y < _vnn - _vlx
local _vnp, _vnq, _vnr = _vja(tonumber(_vni), _vnk.index)
if not _vno and _vnp ~= nil and _vnr and (_vnp + (_vnq or 0)) > 0 then
_vmx(tonumber(_vni), _vnk.index, _vnk.nutrition, _vnk.allowed, _vmg(_vnm), _vnm, true,
_v4.OTHER_FOOD[_vnk.category or ""] and _pguo("0Tpa5d0=") or _pguo("0ytT9A=="))
end
end
end
end
end
end
return _vms, _vmt, _vmu, _vmw
end
local _vns = true
local _vnt = 0
local _vnu = nil
local _vnv = nil
local _vnw = 5
while not _v4.UNLOADED do
pcall(function()
local _vnx = _vim()
local _vny = true
if _v4.EAT_WHEN_HUNGRY then
local _vnz, _vo0 = _v4.myFood()
if _vnz and _vo0 and _vo0 > 0 then
if _vns then
if _vnz >= _vo0 - _v4.foodGap(_vo0, 0.05) then _vns = false end
elseif _vnz <= _vo0 - _v4.foodGap(_vo0, 1) then
_vns = true
end
_vny = _vns
end
end
local _vo1 = _v4.LEGIT_FARM and _v4.lfEat
if (_v4.FORCE_EAT or _vo1) and not _v4.AFK_FARM and not (_v4.LEGIT_FARM and not _vo1)
and _vgn and _vnx and _vny then
local _vo2 = os.clock()
local _vo3 = _vnt >= _vnw
if _vo1 and (_vlq ~= _vo1.id or _vlr ~= _vo1.idx) then
_vlq, _vlr = _vo1.id, _vo1.idx
_vnt = 0; _vnu = nil; _vnv = _vo1.id
end
if not _vo1 and (_vo2 - _vls >= _vlt or not _vlq or _vo3) then
if _vo3 then
_vnt = 0; _vnu = nil; _vnv = nil
end
_vls = _vo2
local _vo4 = _v2.Character
local _vo5 = _vo4 and (_vo4:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA==")) or _vo4:FindFirstChild(_pguo("/CFW+Q=="))
or _vo4:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw=")))
if _vo5 then
local _vo6, _vo7
if _vif and _vig then
_vo6, _vo7 = _vk3(_vo5.Position, _viy())
else
_vo6, _vo7 = _vld(_vo5.Position)
end
if _vo6 then
_vlq, _vlr = _vo6, _vo7
if _vo6 ~= _vnv then
_vnt = 0; _vnu = nil; _vnv = _vo6
end
else
_vlq, _vlr = nil, nil
end
end
end
for _vo8 = 1, 1 do
local _vo9, _voa = _vlq, _vlr
if _vo9 and type(_vo9) == _pguo("0Dtf4sru") and _vo9 >= 0 and _vo9 < 4294967296 then
local _vob, _voc, _vod = _vja(_vo9, _voa)
local _voe = _vob and (_vob + (_voc or 0)) or nil
local _vof = (_vo1 and not _vo1.meat and (_v4.LF_SCRAPS or _v4.LEAVE_SCRAPS))
or (not _vo1 and _v4.LEAVE_SCRAPS)
if _vob ~= nil and ((not _vod or _voe <= 0) or (_vof and _v4.isScraps(_vob))) then
_vlq = nil
else
local _vog = buffer.create(5)
buffer.writeu32(_vog, 0, math.floor(_vo9))
buffer.writeu8(_vog, 4, _voa or 1)
_vgn:FireServer(_vnx, _pguo("/CdG5Q=="), _vog)
if _vo1 then _v4.lfBiteN = (_v4.lfBiteN or 0) + 1 end
if _vob then
if _vnu and _vnv == _vo9 and _vob < _vnu then
_v4.noteBiteDrop(_vnu - _vob)
end
if _vnu and _vob >= _vnu and _vnv == _vo9 then
_vnt = _vnt + 1
else
_vnt = 0
end
_vnu = _vob
_vnv = _vo9
end
end
end
end
end
if _vio then _vip(false) end
end)
task.wait(_v4.FAST_EAT and (1 / math.clamp(_v4.FAST_EAT_RATE or 4, 0.5, 20)) or 0.8)
end
end)
task.spawn(function()
local _voh = false
local function _voi(_voj, _vok)
if _voj == false and _v4.INF_OXYGEN then return end
if _voj == _voh and not _vok then return end
local _vol = _vgt()
if _vol and _vgn then
pcall(function() _vgn:FireServer(_vol, _voj and _pguo("/SJX4cHwaRbbPUHT2/1yDA==") or _pguo("/SJX4cHwaRbbPUHT2/Nw")) end)
end
_voh = _voj
end
local _vom = 0
while not _v4.UNLOADED do
if _v4.INF_OXYGEN and _vgn then
_vom = _vom + 1
_voi(true, (_vom % 5) == 0)
elseif (_v4.AUTO_CLEAN or _v4.AFK_FARM or _v4.LEGIT_FARM) and _vgn then
local _von = _vgt()
local _voo = _von and _v4.cleanliness[_von]
if _voo and _voo >= 99 then
_voi(false)
else
_voi(true)
end
elseif _voh then
_voi(false)
end
task.wait(1.0)
end
if _voh then
_v4.INF_OXYGEN = false
_voi(false)
end
end)
_v4.GOVERNOR = true
_v4.GOV_MULT = 4
_v4.GOV_SPEED = 150
_v4.GOV_STEP_MAX = 25
_v4.GOV_MIN = 20
_v4.govCommanded = nil
_v4.govCommandT = 0
_v4.govReverts = 0
_v4.govLastRevert = 0
_v4.govCleanSince = 0
function _v4.govLegit()
local _vop = os.clock()
if _v4.govLegitVal and (_vop - (_v4.govLegitT or 0)) < 1 then return _v4.govLegitVal end
local _voq
pcall(function()
local _vor = _v4.getCS()
local _vos = _vor and _vor.Replica and _vor.Replica.Data
if not _vos then return end
for _vot, _vou in ipairs({ _pguo("7T5A6cHoUwjbK1Y="), _pguo("7StA9sruUwjbK1Y="), _pguo("7Dtc09/5ZRw="),
_pguo("/C9B5fzschHQOmHwyvlk"), _pguo("/C9B5fz5cg7bPGHwyvlk"), _pguo("/C9B5fj9bBPtPlflyw==") }) do
local _vov = tonumber(_vos[_vou])
if _vov and _vov > 1 then _voq = math.max(_voq or 0, _vov) end
end
end)
_v4.govLegitVal = _voq or 25
_v4.govLegitT = _vop
return _v4.govLegitVal
end
function _v4.govCeiling()
return math.min(_v4.GOV_SPEED, _v4.govLegit() * (_v4.GOV_MULT or 1.5))
end
function _v4.govNext(_vow, _vox, _voy, _voz)
local _vp0 = _vox - _vow
local _vp1 = _vp0.Magnitude
if _vp1 < 0.001 then return _vox, false end
if not _v4.GOVERNOR then
_v4.govCommanded, _v4.govCommandT = _vox, os.clock()
return _vox, false
end
local _vp2 = _v4.govCeiling()
local _vp3 = math.min(_vp2, _voz or _vp2) * math.min(_voy or 0.016, 0.1)
if _vp3 > _v4.GOV_STEP_MAX then _vp3 = _v4.GOV_STEP_MAX end
local _vp4, _vp5
if _vp1 <= _vp3 then _vp4, _vp5 = _vox, false
else _vp4, _vp5 = _vow + _vp0.Unit * _vp3, true end
_v4.govCommanded, _v4.govCommandT = _vp4, os.clock()
return _vp4, _vp5
end
function _v4.govGlide(_vp6, _vp7, _vp8, _vp9, _vpa, _vpb)
local _vpc = os.clock() + (_vp9 or 20)
local _vpd = _vpa or 6
while not _v4.UNLOADED and os.clock() < _vpc do
if not (_vp6 and _vp6.Parent) then return false end
local _vpe = _vp6.Position
if (_vp7 - _vpe).Magnitude <= _vpd then return true end
local _vpf = _v4.govNext(_vpe, _vp7, 0.03, _vp8)
pcall(function()
_vp6.CFrame = _vpb and (CFrame.new(_vpf) * _vpb) or CFrame.new(_vpf)
_vp6.AssemblyLinearVelocity = Vector3.zero
_vp6.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
return (_vp6 and _vp6.Parent and (_vp7 - _vp6.Position).Magnitude <= _vpd) or false
end
_v4.addStep(1, function()
if _v4.UNLOADED or not _v4.GOVERNOR or not _v4.govCommanded then return end
local _vpg = os.clock()
if _vpg - _v4.govCommandT > 0.2 then return end
local _vph = _v4.getLocalPhysicsRoot()
if not (_vph and _vph.Parent) then return end
if (_vph.Position - _v4.govCommanded).Magnitude > 50 then
if _vpg - _v4.govLastRevert < 2 then return end
_v4.govLastRevert = _vpg
_v4.govReverts = _v4.govReverts + 1
_v4.govCleanSince = _vpg
do
local _vpi = _v4.GOV_SPEED
_v4.GOV_SPEED = math.max(_v4.GOV_MIN, math.floor(_v4.GOV_SPEED * 0.6))
if _vpi ~= _v4.GOV_SPEED then
pcall(function()
if _v4.Hub then
_v4.Hub:Notify(_pguo("7StA9sruIAjLPVrly7xiGd0lEmIvCCAV0ThXoNzsZR3ablH127w=") .. _vpi .. _pguo("njpdoA==")
.. _v4.GOV_SPEED .. _pguo("nmZA5dn5cgyebQ==") .. _v4.govReverts .. ")", 6)
end
end)
end
end
end
end)
do
local _vpj = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
local function _vpk()
local _vpl = _v2.Character
if not _vpl then return nil end
return _vpl:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA==")) or _vpl:FindFirstChild(_pguo("/CFW+Q=="))
or _vpl:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="))
end
local function _vpm(_vpn)
local _vpo = _v2.Character
if _vpo then pcall(function() _vpo:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _vpn and true or nil) end) end
end
local _vpp, _vpq, _vpr = false, nil, nil
local function _vps(_vpt)
if _v4.UNLOADED then return end
if not _v4.FLY then
if _vpp then
_vpp = false; _vpq = nil; _vpr = nil; _vpm(false)
_v4.flyLandUntil = os.clock() + 10
local _vpu = _v2.Character
if _vpu and _vpu:GetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3")) ~= true then
pcall(function() _vpu:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), true) end)
task.delay(10.2, function()
if os.clock() >= (_v4.flyLandUntil or 0) and not _v4.NO_FALL_DAMAGE then
local _vpv = _v2.Character
if _vpv == _vpu then pcall(function() _vpv:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), nil) end) end
end
end)
end
end
return
end
local _vpw = _vpk()
local _vpx = workspace.CurrentCamera
if not _vpw or not _vpx or _vpw.Anchored then return end
if not _vpp then _vpp = true; _vpq = _vpw.Position end
_vpm(true)
local _vpy = Vector3.zero
local _vpz, _vq0 = _vpx.CFrame.LookVector, _vpx.CFrame.RightVector
if _vpj:IsKeyDown(Enum.KeyCode.W) or _v4.mob.fwd then _vpy = _vpy + _vpz end
if _vpj:IsKeyDown(Enum.KeyCode.S) or _v4.mob.back then _vpy = _vpy - _vpz end
if _vpj:IsKeyDown(Enum.KeyCode.D) or _v4.mob.right then _vpy = _vpy + _vq0 end
if _vpj:IsKeyDown(Enum.KeyCode.A) or _v4.mob.left then _vpy = _vpy - _vq0 end
if _vpj:IsKeyDown(Enum.KeyCode.Space) or _v4.mob.up then _vpy = _vpy + Vector3.yAxis end
if _vpj:IsKeyDown(Enum.KeyCode.LeftControl) or _vpj:IsKeyDown(Enum.KeyCode.LeftShift)
or _v4.mob.down then
_vpy = _vpy - Vector3.yAxis
end
_vpy = (_vpy.Magnitude > 0.05) and _vpy.Unit or Vector3.zero
local _vq1 = _vpq or _vpw.Position
_vpq = _v4.govNext(_vq1,
_vq1 + _vpy * (_v4.FLY_SPEED * math.min(_vpt or 0.016, 0.1)), _vpt, _v4.FLY_SPEED)
local _vq2 = Vector3.new(_vpy.X, 0, _vpy.Z)
if _vq2.Magnitude > 0.05 then
_vpr = CFrame.lookAt(_vpq, _vpq + _vq2.Unit)
else
_vpr = CFrame.new(_vpq) * (_vpw.CFrame - _vpw.CFrame.Position)
end
pcall(function()
_vpw.CFrame = _vpr
_vpw.AssemblyLinearVelocity = Vector3.zero
_vpw.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _vq3()
if _v4.UNLOADED or not _v4.FLY or not _vpr then return end
local _vq4 = _vpk()
if _vq4 and not _vq4.Anchored then
pcall(function()
_vq4.CFrame = _vpr
_vq4.AssemblyLinearVelocity = Vector3.zero
_vq4.AssemblyAngularVelocity = Vector3.zero
end)
end
end
table.insert(_vz, _v1.RenderStepped:Connect(_vps))
table.insert(_vz, _v1.Heartbeat:Connect(_vq3))
end
function _v4.afGroundY(_vq5)
local _vq6 = RaycastParams.new()
_vq6.FilterType = Enum.RaycastFilterType.Exclude
_vq6.FilterDescendantsInstances = { _v2.Character }
local _vq7 = workspace:Raycast(_vq5 + Vector3.new(0, 600, 0), Vector3.new(0, -4000, 0), _vq6)
return _vq7 and _vq7.Position.Y or nil
end
function _v4.afAdvance(_vq8)
if _v4.UNLOADED then return end
if not _v4.AUTO_FLY or _v4.FLY then
if _v4.afWasOn then
_v4.afWasOn = false
_v4.afCF, _v4.afPos = nil, nil
local _vq9 = _v2.Character
if _vq9 then pcall(function() _vq9:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
_v4.flyLandUntil = os.clock() + 10
end
return
end
local _vqa = _v4.getLocalPhysicsRoot()
if not _vqa or _vqa.Anchored then return end
_vq8 = math.min(_vq8 or 0.016, 0.1)
local _vqb = _v2.Character
if _v4.afWasOn and _v4.afChar ~= _vqb then _v4.afWasOn = false end
local _vqc = math.max(_v4.AUTO_FLY_RADIUS or 1000, 100)
if not _v4.afWasOn then
_v4.afWasOn = true
_v4.afChar = _vqb
_v4.afPos = _vqa.Position
_v4.afGroundCache = _v4.afGroundY(_vqa.Position)
local _vqd = math.random() * math.pi * 2
_v4.afDriftDir = Vector3.new(math.cos(_vqd), 0, math.sin(_vqd))
_v4.afAngle = _vqd
_v4.afCentre = _vqa.Position - Vector3.new(math.cos(_vqd) * _vqc, 0, math.sin(_vqd) * _vqc)
end
if _vqb and _vqb:GetAttribute(_pguo("6ite5d/zcgzXIFU=")) ~= true then
pcall(function() _vqb:SetAttribute(_pguo("6ite5d/zcgzXIFU="), true) end)
end
_v4.afAngle = (_v4.afAngle + (_v4.AUTO_FLY_SPEED / _vqc) * _vq8) % (math.pi * 2)
_v4.afProbeT = (_v4.afProbeT or 0) + _vq8
local _vqe = _v4.afProbeT >= 0.2
if _vqe then _v4.afProbeT = 0 end
local _vqf = _v4.afCentre + _v4.afDriftDir * ((_v4.AUTO_FLY_DRIFT or 10) * _vq8)
if (not _vqe) or _v4.afGroundY(_vqf + _v4.afDriftDir * _vqc) then
_v4.afCentre = _vqf
else
local _vqg = (math.random() - 0.5) * 1.2
local _vqh = -_v4.afDriftDir
_v4.afDriftDir = Vector3.new(
_vqh.X * math.cos(_vqg) - _vqh.Z * math.sin(_vqg), 0,
_vqh.X * math.sin(_vqg) + _vqh.Z * math.cos(_vqg))
end
local _vqi = _v4.afCentre + Vector3.new(math.cos(_v4.afAngle) * _vqc, 0, math.sin(_v4.afAngle) * _vqc)
if _vqe then _v4.afGroundCache = _v4.afGroundY(_vqi) end
local _vqj = _v4.afGroundCache
local _vqk = _vqj and (_vqj + (_v4.AUTO_FLY_ALT or 300)) or _v4.afPos.Y
local _vql = math.clamp(_vqk - _v4.afPos.Y, -60 * _vq8, 60 * _vq8)
_v4.afPos = _v4.govNext(_v4.afPos, Vector3.new(_vqi.X, _v4.afPos.Y + _vql, _vqi.Z), _vq8,
(_v4.AUTO_FLY_SPEED or 25) + 60)
local _vqm = Vector3.new(-math.sin(_v4.afAngle), 0, math.cos(_v4.afAngle))
_v4.afCF = CFrame.lookAt(_v4.afPos, _v4.afPos + _vqm)
pcall(function()
_vqa.CFrame = _v4.afCF
_vqa.AssemblyLinearVelocity = Vector3.zero
_vqa.AssemblyAngularVelocity = Vector3.zero
end)
end
function _v4.afPin()
if _v4.UNLOADED or not _v4.AUTO_FLY or _v4.FLY or not _v4.afCF then return end
local _vqn = _v4.getLocalPhysicsRoot()
if _vqn and not _vqn.Anchored then
pcall(function()
_vqn.CFrame = _v4.afCF
_vqn.AssemblyLinearVelocity = Vector3.zero
_vqn.AssemblyAngularVelocity = Vector3.zero
end)
end
end
table.insert(_vz, _v1.RenderStepped:Connect(_v4.afAdvance))
table.insert(_vz, _v1.Heartbeat:Connect(_v4.afPin))
do
_v4.afkTarget = nil
_v4.afkLastScan = 0
_v4.afkLastBite = 0
_v4.afkWasOn = false
_v4.afkPos = nil
_v4.afkCF = nil
_v4.afkChar = nil
_v4.afkWalking = false
_v4.afkExclude = {}
_v4.afkColliders = nil
_v4.afkCollidersChar = nil
_v4.afkHungry = true
_v4.afkSafetyState = nil
_v4.afkSafetyDest = nil
_v4.afkSafetyReturn = nil
_v4.afkSafetyPlatform = nil
_v4.afkSafetyT = 0
local _vqo = 200
local _vqp = 0.3
local _vqq = 1.5
local _vqr = 5
local _vqs = 2
local _vqt = 0.5
local _vqu = 30
local _vqv = 22
local _vqw = RaycastParams.new()
_vqw.FilterType = Enum.RaycastFilterType.Include
_vqw.FilterDescendantsInstances = { workspace.Terrain }
local function _vqx(_vqy)
local _vqz = workspace:Raycast(Vector3.new(_vqy.X, _vqy.Y + 100, _vqy.Z), Vector3.new(0, -2000, 0), _vqw)
return _vqz and _vqz.Position.Y
end
local function _vr0()
local _vr1
pcall(function()
local _vr2 = _v4.getCS().Alignment
_vr1 = (_vr2.RideHeight or 0) + (_vr2.BodyHeightIncrease or 0)
end)
if type(_vr1) ~= _pguo("0Dtf4sru") or _vr1 <= 0 then _vr1 = 6 end
return _vr1
end
local function _vr3(_vr4, _vr5)
if _vr4 then pcall(function() _vr4:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _vr5) end) end
end
local function _vr6()
if _v4.afkColliders then
for _vr7 in pairs(_v4.afkColliders) do
if _vr7.Parent then pcall(function() _vr7.CanCollide = true end) end
end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
local function _vr8(_vr9)
if not _vr9 then return end
if _v4.afkCollidersChar ~= _vr9 then
_vr6()
local _vra = {}
for _vrb, _vrc in ipairs(_vr9:GetDescendants()) do
if _vrc:IsA(_pguo("/C9B5f/9cgw=")) and _vrc.CanCollide then _vra[_vrc] = true end
end
for _vrd, _vre in ipairs({ _pguo("/CFW+Q=="), _pguo("9idGwsDk") }) do
local _vrf = _vr9:FindFirstChild(_vre)
if _vrf and _vrf:IsA(_pguo("/C9B5f/9cgw=")) then _vra[_vrf] = true end
end
_v4.afkColliders, _v4.afkCollidersChar = _vra, _vr9
end
for _vrg in pairs(_v4.afkColliders) do
if _vrg.CanCollide then _vrg.CanCollide = false end
end
end
local function _vrh(_vri, _vrj)
local _vrk = Vector3.new(_vri.X, 0, _vri.Z)
if _vrk.Magnitude < 0.1 then return _vrj or Vector3.new(0, 0, 1) end
return _vrk.Unit
end
local function _vrl(_vrm, _vrn)
pcall(function()
_vrm.CFrame = _vrn
_vrm.AssemblyLinearVelocity = Vector3.zero
_vrm.AssemblyAngularVelocity = Vector3.zero
end)
end
_v4.afkGiveUps = _v4.afkGiveUps or {}
local function _vro(_vrp, _vrq)
local _vrr = _v4.afkTarget
if _vrp and _vrr and _vrr.id then
local _vrs = (_v4.afkGiveUps[_vrr.id] or 0) + 1
_v4.afkGiveUps[_vrr.id] = _vrs
_vrq = _vrq or _vqu
if _vrs >= 2 then _vrq = math.max(_vrq, 1800) end
_v4.afkExclude[_vrr.id] = os.clock() + _vrq
end
_v4.afkTarget = nil
_v4.afkLastScan = 0
_v4.afkStuckPos = nil
end
function _v4.afkStartWalk()
if _v4.afkWalking then return end
_v4.afkWalking = true
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.W, false, game) end)
end
function _v4.afkStopWalk()
if not _v4.afkWalking then return end
_v4.afkWalking = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.W, false, game) end)
end
local function _vrt()
_v4.afkWasOn = false
_v4.afkCF, _v4.afkPos, _v4.afkTarget = nil, nil, nil
_v4.afkStopWalk()
if _v4.afkSafetyState then
if _v4.afkSafetyState == _pguo("zCtB9MbyZw==") then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
local _vru = _v4.getLocalPhysicsRoot()
if _vru then pcall(function() _vru.Anchored = false end) end
_v4.afkSafetyState = nil
end
_vr6()
local _vrv = _v2.Character
if _vrv then pcall(function() _vrv:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
_v4.flyLandUntil = os.clock() + 10
end
function _v4.afkFarmAdvance(_vrw)
if _v4.UNLOADED then return end
if not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY then
if _v4.afkWasOn then _vrt() end
return
end
local _vrx = _v4.getLocalPhysicsRoot()
if not _vrx then return end
if _vrx.Anchored and not _v4.afkSafetyState then return end
_vrw = math.min(_vrw or 0.016, 0.1)
local _vry = _v2.Character
if _v4.afkWasOn and _v4.afkChar ~= _vry then _v4.afkWasOn = false end
if not _v4.afkWasOn then
_v4.afkWasOn = true
_v4.afkChar = _vry
_v4.afkPos = _vrx.Position
_v4.afkCF = CFrame.lookAt(_vrx.Position, _vrx.Position + _vrh(_vrx.CFrame.LookVector))
_v4.afkTarget = nil
_v4.afkLastScan = 0
end
if (_vrx.Position - _v4.afkPos).Magnitude > 50 then
_v4.afkPos = _vrx.Position
end
_vr8(_vry)
if _v4.afkSafetyState then
_v4.afkStopWalk()
elseif _v4.AFK_FARM_WALK then _v4.afkStartWalk() else _v4.afkStopWalk() end
local _vrz = os.clock()
local _vs0 = _vrx.Position
local _vs1 = math.max(_v4.AFK_FARM_SPEED or 50, 5)
if _v4.AFK_FARM_SAFETY then
local _vs2, _vs3
pcall(function() _vs2 = _vry:GetAttribute(_pguo("9itT7Nv0")); _vs3 = _vry:GetAttribute(_pguo("8y9KyMr9bAzW")) end)
if type(_vs2) == _pguo("0Dtf4sru") and type(_vs3) == _pguo("0Dtf4sru") and _vs3 > 0 then
local _vs4 = _vs2 / _vs3
local _vs5 = _v4.tookDamage(_vry, _vs2)
if not _v4.afkSafetyState and (_vs4 < 0.5 or (_vs5 and _vs4 < 0.99)) then
_v4.afkSafetyState = _pguo("2idE6cH7")
_v4.afkSafetyReturn = _vs0
local _vs6 = _vqx(_vs0) or _vs0.Y
local _vs7 = _vs6 - _vqo
local _vs8
pcall(function() _vs8 = workspace.FallenPartsDestroyHeight end)
if _vs8 and _vs7 < _vs8 + 50 then _vs7 = _vs8 + 50 end
_v4.afkSafetyDest = Vector3.new(_vs0.X, _vs7, _vs0.Z)
_v4.afkTarget = nil
end
if _v4.afkSafetyState == _pguo("zCtB9MbyZw==") and _vs4 >= 0.99 then
_v4.afkSafetyState = _pguo("zCdB6cH7")
_v4.afkSafetyT = _vrz
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _vrx.Anchored = false end)
end
end
elseif _v4.afkSafetyState then
if _v4.afkSafetyState == _pguo("zCtB9MbyZw==") then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _vrx.Anchored = false end)
_v4.afkSafetyState = nil
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _pguo("2idE6cH7") then
_v4.afkPos = _v4.govNext(_v4.afkPos, _v4.afkSafetyDest, _vrw, _vs1)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_vrl(_vrx, _v4.afkCF)
_vr3(_vry, _v4.afkPos.Y)
if (_v4.afkPos - _v4.afkSafetyDest).Magnitude < 5 then
_v4.afkSafetyState = _pguo("zStG9MP1bh8=")
_v4.afkSafetyT = _vrz
pcall(function()
local _vs9 = Instance.new(_pguo("7i9A9A=="))
_vs9.Size = Vector3.new(80, 4, 80)
_vs9.Position = _v4.afkPos - Vector3.new(0, 6, 0)
_vs9.Anchored = true
_vs9.Transparency = 1
_vs9.CanCollide = true
_vs9.CanQuery = false
_vs9.Parent = workspace
_v4.afkSafetyPlatform = _vs9
end)
end
elseif _v4.afkSafetyState == _pguo("zStG9MP1bh8=") then
_vrl(_vrx, _v4.afkCF)
if _vrz - _v4.afkSafetyT >= _vqp then
pcall(function() _vrx.Anchored = true end)
pcall(function() _vry:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
_v4.afkSafetyState = _pguo("zCtB9MbyZw==")
_v4.afkSafetyT = _vrz
end
elseif _v4.afkSafetyState == _pguo("zCtB9MbyZw==") then
_vrl(_vrx, _v4.afkCF)
elseif _v4.afkSafetyState == _pguo("zCdB6cH7") then
local _vsa = _v4.afkSafetyReturn or (_v4.afkPos + Vector3.new(0, _vqo + 50, 0))
_v4.afkPos = _v4.govNext(_v4.afkPos, _vsa, _vrw, _vs1)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_vrl(_vrx, _v4.afkCF)
_vr3(_vry, _v4.afkPos.Y)
if (_v4.afkPos - _vsa).Magnitude < 10 then
_v4.afkSafetyState = nil
_v4.afkSafetyReturn = nil
_v4.afkTarget = nil
_v4.afkLastScan = 0
end
end
return
end
if _v4.AFK_FARM_FLEE then
local _vsb = _v4.AFK_FARM_AVOID or 200
local _vsc, _vsd
if _vsb > 0 then
for _vse, _vsf in ipairs(game.Players:GetPlayers()) do
if _vsf ~= _v2 and _vsf.Character then
local _vsg = _v4.getRootOf(_vsf.Character, false)
if _vsg then
local _vsh = (_vsg.Position - _vs0).Magnitude
if not _vsd or _vsh < _vsd then _vsc, _vsd = _vsg.Position, _vsh end
end
end
end
end
if _vsc and (_vsd <= _vsb or (_v4.afkFleeing and _vsd <= _vsb * 1.5)) then
_v4.afkFleeing = true
_v4.afkTarget = nil
local _vsi = _vrh(_vs0 - _vsc, _vrh(_v4.afkCF and _v4.afkCF.LookVector))
local _vsj = math.max(_v4.afkPos.Y, (_vqx(_vs0) or _vs0.Y) + _vr0())
local _vsk = Vector3.new(_vs0.X + _vsi.X * 300, _vsj, _vs0.Z + _vsi.Z * 300)
_v4.afkPos = _v4.govNext(_v4.afkPos, _vsk, _vrw, _vs1)
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _vsi)
_vrl(_vrx, _v4.afkCF)
_vr3(_vry, _v4.afkPos.Y)
return
end
_v4.afkFleeing = false
end
if not _v4.afkTarget and _v4.afkPickFood and _vrz - _v4.afkLastScan >= _vqq then
_v4.afkLastScan = _vrz
for _vsl, _vsm in pairs(_v4.afkExclude) do
if _vsm <= _vrz then _v4.afkExclude[_vsl] = nil end
end
local _vsn, _vso, _vsp, _vsq = _v4.afkPickFood(_vs0, _v4.afkExclude)
if _vsn and _vsp then
_v4.afkTarget = { id = _vsn, idx = _vso, pos = _vsp, isMeat = _vsq, groundY = _vqx(_vsp), misses = 0,
deadline = _vrz + (_vsp - _vs0).Magnitude / _vs1 * 2 + 10 }
end
end
local _vsr = _v4.afkTarget
if not _vsr then
_v4.afkStuckPos = nil
_vr3(_vry, _v4.afkPos.Y)
return
end
local _vss = _vqv
pcall(function() if _v4.khRange then _vss = _v4.khRange() end end)
local _vst = _vr0()
local _vsu = _vsr.creep and _vsr.pos.Y or (_vsr.pos.Y - _vss * _vqt)
local _vsv = math.max(_vsu, (_vsr.groundY or -math.huge) + _vst)
local _vsw = Vector3.new(_vsr.pos.X, _vsv, _vsr.pos.Z)
if not _vsr.holding and not _vsr.creep and (_vsr.pos - _v4.afkPos).Magnitude <= _vss * _vqt then
_vsr.holding = true
end
if not _vsr.holding then
local _vsx = (_vqx(_v4.afkPos) or -math.huge) + _vst
_v4.afkPos = _v4.govNext(_v4.afkPos, Vector3.new(_vsw.X, math.max(_vsw.Y, _vsx), _vsw.Z), _vrw, _vs1)
if _v4.AFK_FARM_UNSTUCK and (_vsr.pos - _vs0).Magnitude > _vss then
if not _v4.afkStuckPos or (_vs0 - _v4.afkStuckPos).Magnitude > 4 then
_v4.afkStuckPos, _v4.afkStuckT = _vs0, _vrz
elseif _vrz - (_v4.afkStuckT or _vrz) > 2.5 then
_v4.afkStuckPos, _v4.afkStuckT = nil, nil
local _vsy = math.random() * math.pi * 2
_v4.afkPos = _vs0 + Vector3.new(math.cos(_vsy) * 30, 45, math.sin(_vsy) * 30)
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + Vector3.new(math.cos(_vsy), 0, math.sin(_vsy)))
_vrl(_vrx, _v4.afkCF)
_vr3(_vry, _v4.afkPos.Y)
_vro(true)
return
end
end
else
_v4.afkStuckPos = nil
if (_vsw - _v4.afkPos).Magnitude > _vss * _vqt + 4 then
_v4.afkPos = _v4.govNext(_v4.afkPos, _vsw, _vrw, _vs1)
elseif _v4.AFK_FARM_WALK then
_vsr.orbit = (_vsr.orbit or 0) + _vrw * 2.5
local _vsz = math.min(3, _vss * 0.2)
_v4.afkPos = Vector3.new(_vsw.X + math.cos(_vsr.orbit) * _vsz, _vsw.Y, _vsw.Z + math.sin(_vsr.orbit) * _vsz)
else
_v4.afkPos = _vsw
end
end
local _vt0 = (_vsw - _v4.afkPos).Magnitude < 3
if _vsr.creep and _vt0 and not _vsr.holding then
_vsr.holding = true
_vsr.misses = 0
end
local _vt1 = _vrh(_v4.afkCF and _v4.afkCF.LookVector or Vector3.new(0, 0, 1))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _vrh(_vsr.pos - _v4.afkPos, _vt1))
_vrl(_vrx, _v4.afkCF)
_vr3(_vry, _v4.afkPos.Y)
if not _vsr.holding and not _vt0 and _vrz > _vsr.deadline then
_vro(true)
return
end
if (_vsr.pos - _vs0).Magnitude <= _vss and _vrz - _v4.afkLastBite >= 1 / math.clamp(_v4.FAST_EAT_RATE or 4, 0.5, 20) then
_v4.afkLastBite = _vrz
local _vt2, _vt3 = _v4.myFood()
if _vt2 and _vt3 and _vt3 > 0 then
if _v4.afkHungry then
if _vt2 >= _vt3 - _v4.foodGap(_vt3, 0.05) then _v4.afkHungry = false end
elseif _vt2 <= _vt3 - _v4.foodGap(_vt3, 1) then
_v4.afkHungry = true
end
end
local _vt4 = _v4.afkHungry and _v4.afkConsumeId and _v4.afkConsumeId()
if _vt4 and _vgn then
local _vt5, _vt6, _vt7 = _v4.afkBufCheck(_vsr.id, _vsr.idx)
if _vsr.isMeat and _vt5 == nil then _vro(true) return end
if _vt5 ~= nil and (not _vt7 or _vt5 + (_vt6 or 0) <= 0) then
_vro(false)
return
end
if _vt5 ~= nil and _v4.LEAVE_SCRAPS and not _vsr.isMeat and _v4.isScraps(_vt5) then
_v4.afkExclude[_vsr.id] = os.clock() + 300
_vro(false)
return
end
if _vsr.bitten then
if _vt5 and _vsr.lastFood and _vt5 < _vsr.lastFood then
_v4.noteBiteDrop(_vsr.lastFood - _vt5)
_vsr.misses = 0
_vsr.lastEat = _vrz
else
_vsr.misses = _vsr.misses + 1
end
end
_vsr.lastFood = _vt5
_vsr.bitten = true
local _vt8 = buffer.create(5)
buffer.writeu32(_vt8, 0, math.floor(_vsr.id))
buffer.writeu8(_vt8, 4, _vsr.idx or 1)
_vgn:FireServer(_vt4, _pguo("/CdG5Q=="), _vt8)
end
end
if not _vsr.creep and _vsr.misses >= _vqs then
_vsr.creep, _vsr.holding = true, false
_vsr.deadline = _vrz + (_vsr.pos - _v4.afkPos).Magnitude / _vs1 * 2 + 10
elseif _vsr.creep and _vsr.holding and _vsr.misses >= _vqr then
_vro(true)
return
end
if (_vsr.pos - _vs0).Magnitude <= _vss and _v4.afkHungry then
if _v4.foodNoGain(_vsr, _vrz) then _vro(true, _v4.NO_GAIN_SKIP) return end
else
_vsr.gainT = nil
end
if _v4.AFK_FARM_UNSTUCK and _vsr.holding then
local _vt9, _vta = _v4.myFood()
if _vt9 and _vta and _vta > 0 and _vt9 < _vta - _v4.foodGap(_vta, 1) then
_vsr.hungrySince = _vsr.hungrySince or _vrz
if _vrz - math.max(_vsr.lastEat or 0, _vsr.hungrySince) > (_v4.UNSTUCK_EAT_SECS or 25) then
_vro(true)
end
else
_vsr.hungrySince = nil
end
end
end
function _v4.afkFarmPin()
if _v4.UNLOADED or not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.AS_BUSY or not _v4.afkCF then return end
if _v4.afkSafetyState == _pguo("zCtB9MbyZw==") then return end
local _vtb = _v4.getLocalPhysicsRoot()
if _vtb and not _vtb.Anchored then _vrl(_vtb, _v4.afkCF) end
local _vtc = _v2.Character
_vr3(_vtc, _v4.afkCF.Position.Y)
_vr8(_vtc)
end
table.insert(_vz, _v1.RenderStepped:Connect(_v4.afkFarmAdvance))
table.insert(_vz, _v1.Heartbeat:Connect(_v4.afkFarmPin))
end
function _v4.lfSetup()
local _vtd = 0.7
local _vte = 0.85
local _vtf = 1.5
local _vtg = 45
local _vth = 1800
local _vti = 8
local _vtj, _vtk = 3, 5
local _vtl, _vtm = 4, 3
local _vtn, _vto, _vtp = 60, 60, 40
local _vtq, _vtr = 30, 45
local _vts, _vtt = 0.2, 0.6
local _vtu = math.rad(150)
local _vtv = 30
local _vtw, _vtx = 80, 60
local _vty, _vtz = 150, 90
local _vu0 = { DEPTH = 30, MIN_SAFE = 400, MAX_DIST = 2000, MAX_TIME = 120 }
_v4.lfEsc = { starts = {}, revs = {} }
_v4.lfExclude = {}
_v4.lfGiveUps = {}
_v4.lfHeld = {}
_v4.lfBarriers = {}
_v4.lfBiteN = 0
_v4.lfStatus = _pguo("0ShU")
local _vu1, _vu2
local function _vu3()
if not _vu2 then
_vu2 = true
pcall(function() _vu1 = require(_v4.WATER_RS.Common.RayParams).AlignmentParams end)
if not _vu1 then
_vu1 = RaycastParams.new()
_vu1.FilterType = Enum.RaycastFilterType.Include
local _vu4 = { workspace.Terrain }
local _vu5 = workspace:FindFirstChild(_pguo("6SFA7Ms="))
local _vu6 = _vu5 and _vu5:FindFirstChild(_pguo("8yFH7tv9aRbN"))
if _vu6 then _vu4[2] = _vu6 end
_vu1.FilterDescendantsInstances = _vu4
_vu1.IgnoreWater = true
end
end
return _vu1
end
local function _vu7(_vu8, _vu9, _vua)
local _vub = workspace:Raycast(Vector3.new(_vu8, _vu9, _vua), Vector3.new(0, -500, 0), _vu3())
return _vub and _vub.Position.Y
end
local function _vuc()
local _vud
pcall(function()
local _vue = _v4.getCS().Alignment
_vud = (_vue.RideHeight or 0) + (_vue.BodyHeightIncrease or 0)
end)
if type(_vud) ~= _pguo("0Dtf4sru") or _vud <= 0 then _vud = 6 end
return _vud
end
local function _vuf()
local _vug
pcall(function() _vug = _v4.getCS().Instances.Mesh end)
return _vug
end
local function _vuh(_vui, _vuj)
local _vuk = Vector3.new(_vui.X, 0, _vui.Z)
if _vuk.Magnitude < 0.1 then return _vuj end
return _vuk.Unit
end
local function _vul(_vum, _vun)
if _vum then pcall(function() _vum:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _vun) end) end
end
local function _vuo(_vup, _vuq)
pcall(function()
_vup.CFrame = _vuq
_vup.AssemblyLinearVelocity = Vector3.zero
_vup.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _vur()
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
local function _vus(_vut, _vuu)
local _vuv = _v4.getCS()
local _vuw = (_vuv and _vuv.Actions and _vuv.Actions[_vut]) == true
if _vuw == _vuu then return end
local _vux = _vuv and _vuv.Controls and pcall(function() _vuv.Controls:HandleAction(_vut, _vuu) end)
if not _vux and _vut == _pguo("+CFA987uZA==") then
pcall(function() _v4.VIM:SendKeyEvent(_vuu, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = _vuu or nil
end
_v4.lfHeld[_vut] = _vuu or nil
end
local function _vuy()
for _vuz in pairs(_v4.lfHeld) do
pcall(function() _v4.getCS().Controls:HandleAction(_vuz, false) end)
end
_v4.lfHeld = {}
if _v4.lfVimW then
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = nil
end
end
local function _vv0()
if _v4.lfColliders then
for _vv1 in pairs(_v4.lfColliders) do
if _vv1.Parent then pcall(function() _vv1.CanCollide = true end) end
end
end
_v4.lfColliders, _v4.lfCollidersChar = nil, nil
end
local function _vv2(_vv3)
if _v4.lfCollidersChar ~= _vv3 then
_vv0()
local _vv4 = {}
for _vv5, _vv6 in ipairs(_vv3:GetDescendants()) do
if _vv6:IsA(_pguo("/C9B5f/9cgw=")) and _vv6.CanCollide then _vv4[_vv6] = true end
end
for _vv7, _vv8 in ipairs({ _pguo("/CFW+Q=="), _pguo("9idGwsDk") }) do
local _vv9 = _vv3:FindFirstChild(_vv8)
if _vv9 and _vv9:IsA(_pguo("/C9B5f/9cgw=")) then _vv4[_vv9] = true end
end
_v4.lfColliders, _v4.lfCollidersChar = _vv4, _vv3
end
for _vva in pairs(_v4.lfColliders) do
if _vva.Parent and _vva.CanCollide then _vva.CanCollide = false end
end
end
local function _vvb(_vvc)
local _vvd = workspace:FindFirstChild(_pguo("/Cdd7crv"))
local _vve = _vvc.Parent
while _vve and _vve ~= _vvd and _vve ~= workspace do
if _vve.Name == _pguo("/C9A8sb5cg==") then return true end
_vve = _vve.Parent
end
return false
end
local function _vvf()
if _v4.lfBarriersTracked then return end
local _vvg = workspace:FindFirstChild(_pguo("/Cdd7crv"))
if not _vvg then return end
_v4.lfBarriersTracked = true
local function _vvh(_vvi)
if _vvi:IsA(_pguo("/C9B5f/9cgw=")) and _vvb(_vvi) then _v4.lfBarriers[_vvi] = true end
end
for _vvj, _vvk in ipairs(_vvg:GetChildren()) do
local _vvl = (_vvk.Name == _pguo("/C9A8sb5cg==")) and _vvk or _vvk:FindFirstChild(_pguo("/C9A8sb5cg=="))
if _vvl then
for _vvj, _vvn in ipairs(_vvl:GetDescendants()) do _vvh(_vvn) end
end
end
table.insert(_vz, _vvg.DescendantAdded:Connect(function(_vvo)
if not _v4.UNLOADED then _vvh(_vvo) end
end))
table.insert(_vz, _vvg.DescendantRemoving:Connect(function(_vvp)
_v4.lfBarriers[_vvp] = nil
end))
end
local function _vvq(_vvr, _vvs)
for _vvt in pairs(_v4.lfBarriers) do
if _vvt.Parent then
local _vvu = _vvt.CFrame:PointToObjectSpace(_vvr)
local _vvv = _vvt.Size * 0.5
local _vvw = Vector3.new(math.max(math.abs(_vvu.X) - _vvv.X, 0), math.max(math.abs(_vvu.Y) - _vvv.Y, 0),
math.max(math.abs(_vvu.Z) - _vvv.Z, 0))
if _vvw.Magnitude < _vvs then return true end
else
_v4.lfBarriers[_vvt] = nil
end
end
return false
end
local function _vvx(_vvy, _vvz)
if next(_v4.lfBarriers) == nil then return true end
local _vw0 = _vvz - _vvy
local _vw1 = math.clamp(math.ceil(_vw0.Magnitude / 25), 1, 80)
for _vw2 = 0, _vw1 do
if _vvq(_vvy + _vw0 * (_vw2 / _vw1), _vtv) then return false end
end
return true
end
local _vw3
local function _vw4(_vw5, _vw6, _vw7)
if not _vw3 then
_vw3 = RaycastParams.new()
_vw3.FilterType = Enum.RaycastFilterType.Include
local _vw8 = { workspace.Terrain }
local _vw9 = workspace:FindFirstChild(_pguo("6SFA7Ms="))
local _vwa = _vw9 and _vw9:FindFirstChild(_pguo("8yFH7tv9aRbN"))
if _vwa then _vw8[2] = _vwa end
_vw3.FilterDescendantsInstances = _vw8
_vw3.IgnoreWater = true
end
local _vwb = workspace:Raycast(Vector3.new(_vw5, _vw7, _vw6), Vector3.new(0, -2500, 0), _vw3)
return _vwb and _vwb.Position.Y
end
local function _vwc(_vwd, _vwe, _vwf)
_vwe = _vwe or _vu7(_vwd.X, _vwd.Y + 5, _vwd.Z) or _vwd.Y
local _vwg = _vw4(_vwd.X, _vwd.Z, _vwd.Y + 1200)
return _vwg ~= nil and _vwg - _vwe > math.max(_vwf * 2, 25)
end
local function _vwh(_vwi, _vwj, _vwk, _vwl)
local _vwm = _vu7(_vwi.X, _vwi.Y + 60, _vwi.Z) or _vu7(_vwi.X, _vwi.Y + 300, _vwi.Z)
if _vwm == nil or math.abs(_vwi.Y - (_vwm + _vwk + _vwl)) > _vwj * _vte then return false end
return not _vwc(_vwi, _vwm, _vwk)
end
local function _vwn()
local _vwo
pcall(function()
local _vwp = _v4.getCS().Replica.Data
_vwo = _vwp.Stats.Stamina / math.max(_vwp.MaxStats.Stamina, 1)
end)
if not _vwo then return end
if _v4.lfTired then
if _vwo >= _vtt then _v4.lfTired = false end
elseif _vwo <= _vts then
_v4.lfTired = true
end
end
local function _vwq(_vwr)
local _vws, _vwt = 20, 5
pcall(function()
local _vwu = _v4.getCS().Data.Movement.Speeds.Land
_vws, _vwt = _vwu.Run or _vws, _vwu.Normal or _vwt
end)
local _vwv = _v4.LF_RUN_DIST or 100
return (math.max(_vwr - _vwv, 0) / math.max(_vws, 1) + math.min(_vwr, _vwv) / math.max(_vwt, 1)) * 1.6 + 20
end
local function _vww(_vwx)
local _vwy = _v4.lfTarget
if _vwx and _vwy and _vwy.id then
if _vwx >= _vtg then
local _vwz = (_v4.lfGiveUps[_vwy.id] or 0) + 1
_v4.lfGiveUps[_vwy.id] = _vwz
if _vwz >= 2 then _vwx = math.max(_vwx, _vth) end
end
_v4.lfExclude[_vwy.id] = os.clock() + _vwx
end
_v4.lfTarget, _v4.lfEat = nil, nil
_v4.lfLastScan = 0
_v4.lfProgPos = nil
end
local function _vx0(_vx1, _vx2, _vx3)
_vuy()
_v4.lfEat = nil
local _vx4 = _vu7(_vx2.X, _vx2.Y + 5, _vx2.Z) or (_vx2.Y - _vx3)
local _vx5 = _v4.lfHeading or _vuh(_vx1.CFrame.LookVector, Vector3.new(0, 0, -1))
_v4.lfFly = { phase = "up", pos = _vx2, dest = Vector3.new(_vx2.X, _vx4 + _vx3 + _vtn, _vx2.Z), dir = _vx5 }
_v4.lfProgPos = nil
end
local function _vx6(_vx7)
local _vx8, _vx9
for _vxa, _vxb in ipairs(_v0:GetPlayers()) do
if _vxb ~= _v2 and _vxb.Character then
local _vxc = _v4.getRootOf(_vxb.Character, false)
if _vxc then
local _vxd = (_vxc.Position - _vx7).Magnitude
if not _vx9 or _vxd < _vx9 then _vx8, _vx9 = _vxc.Position, _vxd end
end
end
end
return _vx8, _vx9
end
function _vu0.noteStart(_vxe)
local _vxf, _vxg = _v4.lfEsc, {}
for _vxh, _vxi in ipairs(_vxf.starts) do if _vxe - _vxi < 60 then _vxg[#_vxg + 1] = _vxi end end
_vxg[#_vxg + 1] = _vxe
_vxf.starts = _vxg
end
function _vu0.noteDir(_vxj, _vxk, _vxl)
local _vxm = _v4.lfEsc
_vxm.fleeSince = _vxm.fleeSince or _vxl
if not _vxm.baseDir or _vxl - _vxm.baseT >= 2 then
if _vxm.baseDir and _vxj:Dot(_vxm.baseDir) < -0.3 then
local _vxn = {}
for _vxo, _vxp in ipairs(_vxm.revs) do if _vxl - _vxp < 25 then _vxn[#_vxn + 1] = _vxp end end
_vxn[#_vxn + 1] = _vxl
_vxm.revs = _vxn
end
_vxm.baseDir, _vxm.baseT = _vxj, _vxl
end
if not _vxm.trailT or _vxl - _vxm.trailT >= 1 then
_vxm.trail = _vxm.trail or {}
table.insert(_vxm.trail, { t = _vxl, pos = _vxk })
while #_vxm.trail > 0 and _vxl - _vxm.trail[1].t > 20 do table.remove(_vxm.trail, 1) end
_vxm.trailT = _vxl
end
end
function _vu0.boxed(_vxq, _vxr)
local _vxs = _v4.lfEsc
if _vxq < (_vxs.lockUntil or 0) then return false end
local _vxt, _vxu = 0, 0
for _vxv, _vxw in ipairs(_vxs.revs) do if _vxq - _vxw < 25 then _vxt = _vxt + 1 end end
for _vxx, _vxy in ipairs(_vxs.starts) do if _vxq - _vxy < 60 then _vxu = _vxu + 1 end end
if _vxt >= 3 or _vxu >= 3 then return true end
if _vxs.fleeSince and _vxq - _vxs.fleeSince >= 15 and _vxs.trail then
for _vxz, _vy0 in ipairs(_vxs.trail) do
if _vxq - _vy0.t >= 15 then
return Vector3.new(_vxr.X - _vy0.pos.X, 0, _vxr.Z - _vy0.pos.Z).Magnitude < 60
end
end
end
return false
end
function _vu0.pick(_vy1, _vy2)
local _vy3 = {}
for _vy4, _vy5 in ipairs(_v0:GetPlayers()) do
if _vy5 ~= _v2 and _vy5.Character then
local _vy6 = _v4.getRootOf(_vy5.Character, false)
if _vy6 then _vy3[#_vy3 + 1] = _vy6.Position end
end
end
local _vy7 = math.max(_vu0.MIN_SAFE, (_v4.LF_FLYAWAY_RADIUS or 150) * 2 + 50, (_v4.LF_AVOID or 200) * 1.5)
if _v4.afkPickFood then
local _vy8 = _v4.khRange()
local _vy9 = _vuf()
local _vya = _vy9 and (_vy9.Position.Y - _vy1.Y) or 8
local _vyd, _vye, _vyf, _vyg = pcall(_v4.afkPickFood, _vy1, _v4.lfExclude, {
avoid = _vy7, meat = _v4.dinoEatsMeat(), maxDist = _vu0.MAX_DIST,
feetY = _vy1.Y - _vy2, yWeight = 5,
reach = function(_vyb, _vyc)
if not _vvx(_vy1, _vyb) then return false end
if _vyc then return not _vwc(_vyb, nil, _vy2) end
return _vwh(_vyb, _vy8, _vy2, _vya)
end,
})
if _vyd and _vye and _vyg then return _vyg end
end
local _vyh, _vyi
for _vyj = 0, 15 do
local _vyk = _vyj * math.pi / 8
local _vyl = Vector3.new(math.cos(_vyk), 0, math.sin(_vyk))
for _vym, _vyn in ipairs({ _vy7 + 150, _vy7 + 400 }) do
local _vyo = _vy1 + _vyl * _vyn
if _vvx(_vy1, _vyo) then
local _vyp = math.huge
for _vym, _vyr in ipairs(_vy3) do
_vyp = math.min(_vyp, Vector3.new(_vyr.X - _vyo.X, 0, _vyr.Z - _vyo.Z).Magnitude)
end
if not _vyi or _vyp > _vyi then _vyh, _vyi = _vyo, _vyp end
end
end
end
return _vyh
end
function _vu0.start(_vys, _vyt, _vyu, _vyv)
local _vyw = _v4.lfEsc
local _vyx = _vu0.pick(_vyt, _vyu)
_vyw.revs, _vyw.starts, _vyw.trail, _vyw.trailT, _vyw.baseDir, _vyw.fleeSince = {}, {}, nil, nil, nil, nil
if not _vyx then _vyw.lockUntil = _vyv + 20 return false end
_vyw.lockUntil = _vyv + 45
_vuy()
_vww(nil)
_v4.lfFleeing = false
local _vyy = -math.huge
pcall(function() _vyy = workspace.FallenPartsDestroyHeight + 50 end)
local _vyz = _vu7(_vyt.X, _vyt.Y + 5, _vyt.Z) or (_vyt.Y - _vyu)
local _vz0 = _vuh(_vyx - _vyt, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _pguo("2z1R4d/5"), phase = _pguo("2iFF7g=="), pos = _vyt, start = _vyt, dir = _vz0, goal = _vyx, t0 = _vyv,
voidY = _vyy, cf = CFrame.lookAt(_vyt, _vyt + _vz0),
dest = Vector3.new(_vyt.X, math.max(_vyz - _vu0.DEPTH, _vyy), _vyt.Z) }
_v4.lfHeading = _vz0
_v4.lfProgPos = nil
return true
end
local function _vz1(_vz2, _vz3, _vz4, _vz5)
local _vz6 = os.clock()
_vu0.noteStart(_vz6)
if _vu0.boxed(_vz6, _vz3) and _vu0.start(_vz2, _vz3, _vz4, _vz6) then return end
_vuy()
_vww(nil)
local _vz7 = _vu7(_vz3.X, _vz3.Y + 5, _vz3.Z) or (_vz3.Y - _vz4)
local _vz8 = _vuh(_vz3 - _vz5, _v4.lfHeading or _vuh(_vz2.CFrame.LookVector, Vector3.new(0, 0, -1)))
_v4.lfFly = { kind = _pguo("2CJX5Q=="), phase = "up", pos = _vz3, start = _vz3, dir = _vz8, t0 = os.clock(),
dest = Vector3.new(_vz3.X, _vz7 + _vz4 + _vtw, _vz3.Z) }
_v4.lfProgPos = nil
end
function _v4.lfStop(_vz9)
if _v4.lfResting == _pguo("zCtB9MbyZw==") and _v4.saveIsResting() then _vur() end
if _v4.lfAnchored then
local _vza = _v4.getLocalPhysicsRoot()
if _vza then pcall(function() _vza.Anchored = false end) end
_v4.lfAnchored = nil
end
_v4.lfResting, _v4.lfFly, _v4.lfHealUp = nil, nil, nil
_vuy()
_vv0()
if not _vz9 then
local _vzb = _v2.Character
if _vzb then pcall(function() _vzb:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
end
_v4.lfWasOn, _v4.lfChar = false, nil
_v4.lfTarget, _v4.lfEat, _v4.lfHeading, _v4.lfProgPos, _v4.lfFleeing = nil, nil, nil, nil, false
_v4.lfStatus = _pguo("0ShU")
_v4.lfEsc = { starts = {}, revs = {} }
_v4.flyLandUntil = os.clock() + 10
end
function _v4.lfAdvance(_vzc)
if _v4.UNLOADED then return end
local _vzd = _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY
or _v4.AMBER_FARM or _v4.amberState
if not _v4.LEGIT_FARM or _vzd then
if _v4.lfWasOn then _v4.lfStop(_vzd) end
return
end
local _vze = _v2.Character
local _vzf = _v4.getLocalPhysicsRoot()
if not (_vze and _vzf) then return end
_vzc = math.min(_vzc or 0.016, 0.1)
if _v4.lfWasOn and _v4.lfChar ~= _vze then _v4.lfStop(false) end
if not _v4.lfWasOn then
_v4.lfWasOn, _v4.lfChar = true, _vze
_v4.lfY = _vzf.Position.Y
_v4.lfTarget, _v4.lfEat, _v4.lfLastScan = nil, nil, 0
_vvf()
end
local _vzg = os.clock()
local _vzh = _vzf.Position
local _vzi = _vuc()
local _vzj = _v4.getCS()
local _vzk, _vzl
pcall(function() _vzk = _vze:GetAttribute(_pguo("9itT7Nv0")); _vzl = _vze:GetAttribute(_pguo("8y9KyMr9bAzW")) end)
local _vzm = (type(_vzk) == _pguo("0Dtf4sru") and type(_vzl) == _pguo("0Dtf4sru") and _vzl > 0) and _vzk / _vzl or 1
if _v4.tookDamage(_vze, _vzk) then
_v4.lfHealUp = true
if not _v4.lfFly and not _v4.lfResting then
local _vzn, _vzo = _vx6(_vzh)
if _vzn and _vzo <= 400 then _vz1(_vzf, _vzh, _vzi, _vzn) end
end
end
local _vzp = _vzm < 0.5 or (_v4.lfHealUp and _vzm < 0.99)
if _v4.LF_REST and not _v4.lfResting and not _v4.lfFly and _vzp then
local _vzq, _vzr = _vx6(_vzh)
if _vzq and _vzr <= math.max(_v4.LF_FLYAWAY_RADIUS or 150, 150) then
_vz1(_vzf, _vzh, _vzi, _vzq)
else
_v4.lfResting, _v4.lfRestT = _pguo("zStG9MP1bh8="), _vzg
_vww(nil)
_vuy()
_v4.lfHeading = nil
end
elseif _v4.lfResting and (_vzm >= 0.99 or not _v4.LF_REST) then
if _v4.saveIsResting() then _vur() end
if _v4.lfAnchored then pcall(function() _vzf.Anchored = false end); _v4.lfAnchored = nil end
_v4.lfResting = nil
_v4.lfHealUp = nil
_v4.lfY = _vzh.Y
end
if _vzm >= 0.99 then _v4.lfHealUp = nil end
if _v4.lfResting then
if _v4.lfResting == _pguo("zStG9MP1bh8=") then
_vul(_vze, _v4.lfY)
if _vzg - _v4.lfRestT >= 1 then
pcall(function() _vzf.Anchored = true end)
_v4.lfAnchored = true
_vul(_vze, nil)
_vur()
_v4.lfResting, _v4.lfRestT = _pguo("zCtB9MbyZw=="), _vzg
end
elseif not _v4.saveIsResting() and _vzg - _v4.lfRestT > 6 then
_vur()
_v4.lfRestT = _vzg
end
_v4.lfStatus = _pguo("zCtB9MbyZ1jKIRLoyv1sWJY=") .. math.floor(_vzm * 100) .. "%)"
return
end
if _vzf.Anchored then return end
_vv2(_vze)
if _v4.lfSteerPatch then _v4.lfSteerPatch() end
if not _v4.lfFly then
local _vzs = getgenv and getgenv()
if _vzs and _vzs.EazyCheats_LfEscapeTest then
_vzs.EazyCheats_LfEscapeTest = nil
if _vu0.start(_vzf, _vzh, _vzi, _vzg) then return end
end
end
if _v4.LF_FLYAWAY and not _v4.lfFly then
local _vzt, _vzu = _vx6(_vzh)
if _vzt and _vzu <= (_v4.LF_FLYAWAY_RADIUS or 150) then _vz1(_vzf, _vzh, _vzi, _vzt) end
end
if _v4.lfFly then
local _vzv = _v4.lfFly
if _vzv.kind == _pguo("2CJX5Q==") and _vzv.phase == _pguo("3zlT+Q==") then
local _vzw, _vzx = _vx6(_vzv.pos)
if _vzw then _vzv.dir = _vuh(_vzv.pos - _vzw, _vzv.dir) end
if next(_v4.lfBarriers) and _vvq(_vzv.pos + _vzv.dir * _vtv, _vtv * 0.5) then
_vzv.dir = Vector3.new(-_vzv.dir.Z, 0, _vzv.dir.X)
end
_vu0.noteDir(_vzv.dir, _vzv.pos, _vzg)
if _vu0.boxed(_vzg, _vzv.pos) and _vu0.start(_vzf, _vzv.pos, _vzi, _vzg) then return end
local _vzy = _vzv.pos + _vzv.dir * 40
local _vzz = _vu7(_vzv.pos.X, _vzv.pos.Y + 150, _vzv.pos.Z)
local _v100 = _vu7(_vzy.X, _vzv.pos.Y + 150, _vzy.Z)
local _v101 = math.max(_vzz or -math.huge, _v100 or -math.huge)
local _v102 = (_v101 > -math.huge) and (_v101 + _vzi + _vtw) or _vzv.pos.Y
_vzv.dest = Vector3.new(_vzv.pos.X + _vzv.dir.X * 50, _v102, _vzv.pos.Z + _vzv.dir.Z * 50)
local _v103 = not _vzw or _vzx > (_v4.LF_FLYAWAY_RADIUS or 150) * 2
local _v104 = Vector3.new(_vzv.pos.X - _vzv.start.X, 0, _vzv.pos.Z - _vzv.start.Z).Magnitude
if (_v103 and _v104 >= _vty) or os.clock() - _vzv.t0 > _vtz then
local _v105 = _vu7(_vzv.pos.X, _vzv.pos.Y, _vzv.pos.Z)
_vzv.phase, _vzv.dest = _pguo("0i9c5A=="), Vector3.new(_vzv.pos.X, (_v105 or (_vzv.pos.Y - _vtw - _vzi)) + _vzi, _vzv.pos.Z)
end
end
if _vzv.kind == _pguo("2z1R4d/5") and _vzv.phase == _pguo("yjtc7srw") then
local _v106 = Vector3.new(_vzv.goal.X - _vzv.pos.X, 0, _vzv.goal.Z - _vzv.pos.Z)
local _v107 = _v106.Magnitude
_vzv.dir = _vuh(_v106, _vzv.dir)
local _v108 = _vzv.pos.Y + 1500
local _v109 = _vzv.pos + _vzv.dir * math.min(40, _v107)
local _v10a = next(_v4.lfBarriers) and _vvq(_v109, _vtv)
local _v10b = math.min(_vw4(_vzv.pos.X, _vzv.pos.Z, _v108) or math.huge,
_vw4(_v109.X, _v109.Z, _v108) or math.huge)
local _v10c = (_v10b < math.huge) and math.max(_v10b - _vu0.DEPTH, _vzv.voidY) or _vzv.pos.Y
local _v10d = math.min(50, _v107)
_vzv.dest = Vector3.new(_vzv.pos.X + _vzv.dir.X * _v10d, _v10c, _vzv.pos.Z + _vzv.dir.Z * _v10d)
if _v107 <= 12 or _v10a or _vzg - _vzv.t0 > _vu0.MAX_TIME then
local _v10e = _vw4(_vzv.pos.X, _vzv.pos.Z, _v108) or (_vzv.pos.Y + _vu0.DEPTH)
_vzv.phase, _vzv.dest = "up", Vector3.new(_vzv.pos.X, _v10e + _vzi, _vzv.pos.Z)
end
end
_vzv.pos = _v4.govNext(_vzv.pos, _vzv.dest, _vzc, (_vzv.kind == _pguo("2CJX5Q==") or _vzv.kind == _pguo("2z1R4d/5")) and _vtx or _vtp)
_vzv.cf = CFrame.lookAt(_vzv.pos, _vzv.pos + _vzv.dir)
_vuo(_vzf, _vzv.cf)
_vul(_vze, _vzv.pos.Y)
_v4.lfY = _vzv.pos.Y
if _vzv.kind == _pguo("2z1R4d/5") then
_v4.lfStatus = _pguo("3CFK5cu8aRaeLEug3/BhAds8QaCCvHUW2itAoMjubw3QKhL0wLxzGdgrEubA82RCng==") .. _vzv.phase .. " ("
.. math.floor(Vector3.new(_vzv.goal.X - _vzv.pos.X, 0, _vzv.goal.Z - _vzv.pos.Z).Magnitude) .. _pguo("nj1G9cvvKQ==")
else
_v4.lfStatus = (_vzv.kind == _pguo("2CJX5Q==") and _pguo("2CJL6cH7IBnJL0ugye5vFZ4vEvDD/XkdzHQS") or _pguo("yyBB9Nr/a0Ke")) .. _vzv.phase
end
if (_vzv.pos - _vzv.dest).Magnitude < 2 then
if _vzv.kind == _pguo("2z1R4d/5") then
if _vzv.phase == _pguo("2iFF7g==") then
_vzv.phase = _pguo("yjtc7srw")
elseif _vzv.phase == "up" then
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
_v4.lfY, _v4.lfLastScan, _v4.lfHeading = _vzv.pos.Y, 0, _vzv.dir
end
elseif _vzv.phase == "up" and _vzv.kind == _pguo("2CJX5Q==") then
_vzv.phase = _pguo("3zlT+Q==")
elseif _vzv.phase == "up" then
local _v10f = _vzv.dest + _vzv.dir * _vto
if next(_v4.lfBarriers) and _vvq(_v10f, _vtv) then _v10f = _vzv.dest - _vzv.dir * _vto end
_vzv.phase, _vzv.dest = _pguo("0ThX8g=="), _v10f
elseif _vzv.phase == _pguo("0ThX8g==") then
local _v10g = _vu7(_vzv.dest.X, _vzv.dest.Y, _vzv.dest.Z)
_vzv.phase, _vzv.dest = _pguo("0i9c5A=="), Vector3.new(_vzv.dest.X, (_v10g or (_vzv.dest.Y - _vtn)) + _vzi, _vzv.dest.Z)
else
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
end
end
return
end
local _v10h = _vzj and _vzj.MovementState == _pguo("7Tlb7cL1bh8=")
if _v10h then
_vul(_vze, nil)
_v4.lfY = _vzh.Y
else
if math.abs(_vzh.Y - _v4.lfY) > 25 then _v4.lfY = _vzh.Y end
local _v10i = _v4.lfY - _vzi
local _v10j = _vu7(_vzh.X, _v10i + math.max(_vzi * 0.75, 4), _vzh.Z)
or _vu7(_vzh.X, _v10i + 90, _vzh.Z)
if _v10j then
_v4.lfY = _v4.lfY + math.clamp(_v10j + _vzi - _v4.lfY, -_vtr * _vzc, _vtq * _vzc)
end
_vul(_vze, _v4.lfY)
end
_vwn()
if _v4.LF_FLEE then
local _v10k = _v4.LF_AVOID or 200
local _v10l, _v10m
if _v10k > 0 then
for _v10n, _v10o in ipairs(_v0:GetPlayers()) do
if _v10o ~= _v2 and _v10o.Character then
local _v10p = _v4.getRootOf(_v10o.Character, false)
if _v10p then
local _v10q = (_v10p.Position - _vzh).Magnitude
if not _v10m or _v10q < _v10m then _v10l, _v10m = _v10p.Position, _v10q end
end
end
end
end
if _v10l and (_v10m <= _v10k or (_v4.lfFleeing and _v10m <= _v10k * 1.5)) then
if not _v4.lfFleeing then _vww(nil) end
_v4.lfFleeing = true
_v4.lfHeading = _vuh(_vzh - _v10l, _v4.lfHeading or Vector3.new(0, 0, -1))
if next(_v4.lfBarriers) and _vvq(_vzh + _v4.lfHeading * _vtv, _vtv * 0.5) then
_v4.lfHeading = Vector3.new(-_v4.lfHeading.Z, 0, _v4.lfHeading.X)
end
_vu0.noteDir(_v4.lfHeading, _vzh, _vzg)
if _vu0.boxed(_vzg, _vzh) and _vu0.start(_vzf, _vzh, _vzi, _vzg) then return end
_v4.lfEat = nil
_vus(_pguo("+CFA987uZA=="), true)
_vus(_pguo("7Dtc"), not _v4.lfTired)
_v4.lfStatus = _pguo("2CJX5cbyZ1jfbkLszuVlCp4=") .. math.floor(_v10m) .. _pguo("nj1G9cvvIBnJL0s=")
return
end
_v4.lfFleeing = false
end
_v4.lfEsc.fleeSince, _v4.lfEsc.trail, _v4.lfEsc.baseDir = nil, nil, nil
if not _v4.lfTarget and _vzg - (_v4.lfLastScan or 0) >= _vtf then
_v4.lfLastScan = _vzg
for _v10r, _v10s in pairs(_v4.lfExclude) do
if _v10s <= _vzg then _v4.lfExclude[_v10r] = nil end
end
if _v4.afkPickFood then
local _v10t = _v4.khRange()
local _v10u = _vuf()
local _v10v = _v10u and (_v10u.Position.Y - _vzh.Y) or 8
local _v10y, _v10z, _v110, _v111 = _v4.afkPickFood(_vzh, _v4.lfExclude, {
avoid = _v4.LF_AVOID or 200,
meat = _v4.dinoEatsMeat(),
maxDist = _v4.LF_MAX_DIST or 1000,
feetY = _vzh.Y - _vzi, yWeight = 5,
reach = function(_v10w, _v10x)
if not _vvx(_vzh, _v10w) then return false end
if _v10x then return not _vwc(_v10w, nil, _vzi) end
return _vwh(_v10w, _v10t, _vzi, _v10v)
end,
})
if _v10y and _v110 then
local _v112 = Vector3.new(_v110.X - _vzh.X, 0, _v110.Z - _vzh.Z).Magnitude
_v4.lfTarget = { id = _v10y, idx = _v10z, pos = _v110, isMeat = _v111, misses = 0, flyOuts = 0,
biteSeen = _v4.lfBiteN, eat = { id = _v10y, idx = _v10z, meat = _v111 }, deadline = _vzg + _vwq(_v112) }
end
end
end
local _v113 = _v4.lfTarget
if not _v113 then
_vuy()
_v4.lfEat, _v4.lfHeading, _v4.lfProgPos = nil, nil, nil
_v4.lfStatus = _v4.afkPickFood and _pguo("0iFd68byZ1jYIUCg3flhG9YvUOzKvGYX0So=") or _pguo("yS9b9MbyZ1jYIUCgyfNvHJ4qU/TO")
return
end
local _v114, _v115, _v116 = _v4.afkBufCheck(_v113.id, _v113.idx)
if _v113.isMeat and _v114 == nil then _vww(_vtg) return end
if _v114 ~= nil and (not _v116 or _v114 + (_v115 or 0) <= 0) then
_vww(5)
return
end
if _v114 ~= nil and not _v113.isMeat and (_v4.LF_SCRAPS or _v4.LEAVE_SCRAPS) and _v4.isScraps(_v114) then
_v4.lfExclude[_v113.id] = os.clock() + 300
_vww(nil)
return
end
local _v117 = _vuf()
local _v118 = _v117 and _v117.Position or _vzh
local _v119 = _v4.khRange()
local _v11a = _v113.pos - _v118
local _v11b = Vector3.new(_v11a.X, 0, _v11a.Z).Magnitude
local _v11c = math.sqrt(math.max((_v119 * 0.9) ^ 2 - _v11a.Y * _v11a.Y, 0))
local _v11d = _v113.creep and 3 or math.max(_v11c * _vtd, 3)
if _v11b <= math.max(_v119 * 1.5, 20) and math.abs(_v11a.Y) > _v119 * 0.95 then
_v113.vertSince = _v113.vertSince or _vzg
if _vzg - _v113.vertSince > _vti then
_vww(_vth)
return
end
else
_v113.vertSince = nil
end
if _v113.holding then
if _v11b > _v11d + 6 then _v113.holding = false end
elseif _v11b <= _v11d then
_v113.holding = true
end
_v4.lfHeading = _vuh(_v113.pos - _vzh, _v4.lfHeading)
_v4.lfEat = (_v11a.Magnitude <= _v119 * 0.95) and _v113.eat or nil
local _v11e, _v11f = _v4.myFood()
local _v11g = _v11e and _v11f and _v11f > 0 and _v11e >= _v11f - _v4.foodGap(_v11f, 1)
if _v4.lfBiteN ~= _v113.biteSeen then
_v113.biteSeen = _v4.lfBiteN
if _v114 and _v113.lastFood and _v114 < _v113.lastFood then
_v4.noteBiteDrop(_v113.lastFood - _v114)
_v113.misses = 0
_v113.lastEat = _vzg
elseif _v113.lastFood ~= nil and not _v11g then
_v113.misses = _v113.misses + 1
end
_v113.lastFood = _v114
end
if _v113.holding and not _v113.creep and _v113.misses >= _vtj then
_v113.creep, _v113.holding, _v113.misses = true, false, 0
_v113.deadline = _vzg + _vwq(_v11b)
elseif _v113.creep and _v113.holding and _v113.misses >= _vtk then
_vww(_vtg)
return
end
if _v113.holding and _v4.lfEat then
if _v4.foodNoGain(_v113, _vzg) then _vww(_v4.NO_GAIN_SKIP) return end
else
_v113.gainT = nil
end
if _v4.LF_UNSTUCK and _v113.holding and not _v11g then
_v113.hungrySince = _v113.hungrySince or _vzg
if _vzg - math.max(_v113.lastEat or 0, _v113.hungrySince) > (_v4.UNSTUCK_EAT_SECS or 25) then
_vww(_vtg)
return
end
elseif _v11g then
_v113.hungrySince = nil
end
if _v113.holding then
_vus(_pguo("+CFA987uZA=="), false)
_vus(_pguo("7Dtc"), false)
_v4.lfProgPos = nil
_v4.lfStatus = _pguo("2y9G6cH7IFs=") .. _v113.id .. " (" .. math.floor(_v11b) .. _pguo("nj1G9cvvLFjTJ0Hzyu8g") .. _v113.misses .. ")"
return
end
if next(_v4.lfBarriers) and _v4.lfHeading
and _vvq(_vzh + _v4.lfHeading * _vtv, _vtv * 0.5) then
_vuy()
_vww(_vtg)
return
end
if _v113.deadline and _vzg > _v113.deadline then _vww(_vtg) return end
local _v11h = _v11b > (_v4.LF_RUN_DIST or 100) and not _v4.lfTired
_vus(_pguo("+CFA987uZA=="), true)
_vus(_pguo("7Dtc"), _v11h)
local _v11i = _vzj and _vzj.Movement and _vzj.Movement.MoveActionsBlocked
if _v4.LF_UNSTUCK and not _v11i then
if not _v4.lfProgPos
or Vector3.new(_vzh.X - _v4.lfProgPos.X, 0, _vzh.Z - _v4.lfProgPos.Z).Magnitude > _vtm then
_v4.lfProgPos, _v4.lfProgT = _vzh, _vzg
elseif _vzg - _v4.lfProgT > _vtl then
_v113.flyOuts = _v113.flyOuts + 1
_vx0(_vzf, _vzh, _vzi)
if _v113.flyOuts >= 2 then _vww(_vtg) end
return
end
end
_v4.lfStatus = (_v11h and _pguo("zDtc7sbyZw==") or (_v10h and _pguo("zTlb7cL1bh8=") or _pguo("yS9e68byZw=="))) .. _pguo("njpdoIw=") .. _v113.id
.. " (" .. math.floor(_v11b) .. _pguo("nj1G9cvvKQ==")
end
function _v4.lfPin()
local _v11j = _v4.lfFly
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _v11j or not _v11j.cf then return end
local _v11k = _v4.getLocalPhysicsRoot()
if _v11k and not _v11k.Anchored then _vuo(_v11k, _v11j.cf) end
end
local function _v11l()
if _v4.lfWalkState then return true end
pcall(function()
local _v11m = require(_v2.PlayerScripts.Client.Classes.Character.Movement.States.Walking)
local _v11n = rawget(_v11m, _pguo("/ypY9dzoRBHMK1H0xvNu"))
if type(_v11n) ~= _pguo("2Dtc49v1bxY=") then return end
_v11m.AdjustDirection = function(self, _v11o, ...)
local _v11p = _v4.lfHeading
if _v11p and _v4.LEGIT_FARM and _v4.lfWasOn and not _v4.lfFly and not _v4.lfResting
and _v4.lfHeld and _v4.lfHeld.Forward then
return _v11p
end
return _v11n(self, _v11o, ...)
end
_v4.lfWalkState = { mod = _v11m, orig = _v11n }
end)
return _v4.lfWalkState ~= nil
end
_v4.lfSteerPatch = _v11l
function _v4.lfSteer(_v11q)
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _v4.lfWasOn or _v4.lfFly or _v4.lfResting then return end
if _v4.lfWalkState then
local _v11r = _v4.getCS()
if not (_v11r and _v11r.MovementState == _pguo("7Tlb7cL1bh8=")) then return end
end
local _v11s = _v4.lfHeading
local _v11t = workspace.CurrentCamera
if not _v11s or not _v11t or _v11t.CameraType ~= Enum.CameraType.Custom then return end
local _v11u = _v11t.CFrame
local _v11v = _v11u.LookVector
if Vector3.new(_v11v.X, 0, _v11v.Z).Magnitude < 1e-3 then return end
local _v11w = math.atan2(-_v11v.X, -_v11v.Z)
local _v11x = math.atan2(-_v11s.X, -_v11s.Z)
local _v11y = math.clamp(math.atan2(math.sin(_v11x - _v11w), math.cos(_v11x - _v11w)),
-_vtu * (_v11q or 0.016), _vtu * (_v11q or 0.016))
if math.abs(_v11y) < 1e-4 then return end
local _v11z = CFrame.Angles(0, _v11y, 0)
local _v120 = _v11t.Focus.Position
_v11t.CFrame = CFrame.new(_v120 + _v11z * (_v11u.Position - _v120)) * (_v11z * _v11u.Rotation)
end
table.insert(_vz, _v1.RenderStepped:Connect(_v4.lfAdvance))
table.insert(_vz, _v1.Heartbeat:Connect(_v4.lfPin))
pcall(function()
_v1:BindToRenderStep(_pguo("7hZtzMr7aQztOlfl3Q=="), Enum.RenderPriority.Camera.Value + 2, _v4.lfSteer)
end)
end
_v4.lfSetup()
function _v4.asSetup()
local _v121 = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
_v4.asDone = {}
_v4.asSkip = {}
_v4.asStatus = _pguo("0ShU")
local function _v122()
local _v123
pcall(function() _v123 = require(_v121.Packages.Knit) end)
return _v123
end
local function _v124()
local _v125
pcall(function() _v125 = _v122().GetController(_pguo("+i9G4ezzbgzMIV7syu4=")) end)
return _v125
end
local function _v126(_v127)
local _v128
pcall(function() _v128 = require(_v121.DinosaurData[_v127]) end)
return _v128
end
local function _v129(_v12a, _v12b)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("/ztG74/PdxHKLVq6jw==") .. _v12a, _v12b or 6) end end)
end
local function _v12c()
local _v12d = _v122()
return (_v12d and _v12d.Roster) or {}
end
local function _v12e(_v12f)
local _v12g
pcall(function() _v12g = _v124().Dinosaurs[_v12f] end)
return _v12g and true or false
end
local function _v12h(_v12i)
local _v12j
pcall(function()
local _v12k = tonumber(_v124().DinosaursData[_v12i].Pricing.Amber)
if _v12k and _v12k > 0 then
_v12j = _v122().GetController(_pguo("7jtA48f9cxHQKXHvwehyF9IiV/I=")):GetDinosaurAmberCost(_v12i)
end
end)
return tonumber(_v12j)
end
local function _v12l()
local _v12m
pcall(function() _v12m = _v124().Currencies.Amber end)
return tonumber(_v12m) or 0
end
local function _v12n(_v12o)
if _v12o >= 1e6 then return (math.floor(_v12o / 1e4 + 0.5) / 100) .. "M" end
if _v12o >= 1e3 then return math.floor(_v12o / 1e3 + 0.5) .. "K" end
return tostring(math.floor(_v12o))
end
function _v4.asAvailable()
local _v12p = {}
for _v12q, _v12r in ipairs(_v12c()) do
if _v12e(_v12r) then _v12p[#_v12p + 1] = _v12r end
end
return _v12p
end
function _v4.asLabel(_v12s)
if not _v12s or _v12s == _pguo("liBd7sq1") then return _pguo("liBd7sq1") end
if _v12e(_v12s) then return _v12s .. _pguo("nmMS9cHwbxvVK1Y=") end
local _v12t = _v12h(_v12s)
return _v12s .. (_v12t and (_pguo("nmMS7MD/ax3aYhI=") .. _v12n(_v12t) .. _pguo("ng9f4sru")) or _pguo("nmMS7MD/ax3aYhLSwP51AJ4hXOzW"))
end
function _v4.asNameOf(_v12u)
if type(_v12u) ~= _pguo("zTpA6cH7") then return nil end
return _v12u:match(_pguo("4GYcrYa8JVWe")) or _v12u
end
function _v4.asItems()
local _v12v = { _pguo("liBd7sq1") }
for _v12w, _v12x in ipairs(_v12c()) do _v12v[#_v12v + 1] = _v4.asLabel(_v12x) end
return _v12v
end
_v4.asDropdowns = {}
function _v4.asRefreshLists()
local _v12y = _v4.asItems()
for _v12z = 1, 6 do
local _v130 = _v4.asDropdowns[_v12z]
if _v130 and _v130.Refresh then pcall(function() _v130:Refresh(_v12y, true) end) end
local _v131 = _v4.AS_SLOTS and _v4.AS_SLOTS[_v12z]
if _v130 and _v130.Set and _v131 and _v131 ~= _pguo("liBd7sq1") then pcall(function() _v130:Set(_v4.asLabel(_v131), true) end) end
end
end
local function _v132(_v133)
local _v134, _v135 = _v126(_v133), nil
pcall(function() _v135 = require(_v121.Common.GetGrowthIndex):GetHighestGrowthStage(_v134.GrowthStages) end)
return _v135
end
local function _v136(_v137)
local _v138
pcall(function()
_v138 = _v124().Replica.Data[_pguo("/SZT8s7/dB3MClP0zsM=") .. _v137 .. "_" .. (_v4.AS_GENDER or _pguo("8y9e5Q==")) .. "_1"].Growth.Stage
end)
return _v138
end
local function _v139(_v13a, _v13b)
if not _v13b then return false end
if _v13b == _pguo("8yFc89v5cg==") then return true, _pguo("zCtT48f5ZFjzIVzz2/ly") end
if _v13b == _v132(_v13a) then return true, _pguo("zCtT48f5ZFg=") .. _v13b .. _pguo("km5b9Ny8ZhHQL16g3OhhH9s=") end
return false
end
pcall(function() _v4.AS_DONE_FILE = _pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHc+G8W22M=") .. _v2.UserId .. _pguo("kCRB78E=") end)
function _v4.asDoneRead()
local _v13c, _v13d = pcall(function()
return game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONDecode(readfile(_v4.AS_DONE_FILE))
end)
return (_v13c and type(_v13d) == _pguo("yi9Q7Mo=") and type(_v13d.list) == _pguo("yi9Q7Mo=")) and _v13d or { list = {} }
end
function _v4.asDoneAdd(_v13e, _v13f)
if type(_v13e) ~= _pguo("zTpA6cH7") or not _v4.AS_DONE_FILE then return end
_v13f = (_v13f == "F" or _v13f == _pguo("+Ctf4cP5")) and _pguo("+Ctf4cP5") or _pguo("8y9e5Q==")
local _v13g = _v4.asDoneRead()
for _v13h, _v13i in ipairs(_v13g.list) do
if _v13i.sp == _v13e and _v13i.g == _v13f then return end
end
local _v13j
pcall(function() _v13j = _v122().Ecosystem end)
table.insert(_v13g.list, { sp = _v13e, g = _v13f, map = _v13j, t = os.time() })
pcall(function()
if not isfolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) then makefolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) end
writefile(_v4.AS_DONE_FILE, game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONEncode(_v13g))
end)
end
function _v4.asRefreshDone()
for _v13k, _v13l in ipairs(_v12c()) do
if _v12e(_v13l) and _v139(_v13l, _v136(_v13l)) then _v4.asDoneAdd(_v13l, _v4.AS_GENDER) end
end
local _v13m = {}
for _v13n, _v13o in ipairs(_v4.asDoneRead().list) do
_v13m[#_v13m + 1] = tostring(_v13o.sp) .. (_v13o.g == _pguo("+Ctf4cP5") and _pguo("nmZ0qQ==") or _pguo("nmZ/qQ=="))
end
local _v13p = #_v13m > 0 and (_pguo("+Cdc6dz0ZRyeZg==") .. #_v13m .. _pguo("l3QS") .. table.concat(_v13m, ", ")) or _pguo("+Cdc6dz0ZRyEblzvwfkgAds6")
local _v13q = _v4.asDoneLabel
if _v13q and _v13q.SetText then pcall(function() _v13q:SetText(_v13p) end) end
return _v13p
end
local function _v13r()
local _v13s = _v2.Character
return (_v13s and _v13s:GetAttribute(_pguo("6jdC5Q=="))) or _v2:GetAttribute(_pguo("/TtA8srydCjSL0vhzfBl"))
end
local function _v13t()
local _v13u = _v4.getCS()
local _v13v
pcall(function() _v13v = _v13u.Replica.Data.Growth end)
local _v13w = _v13r()
if type(_v13v) ~= _pguo("yi9Q7Mo=") or not _v13w then return false end
if _v13v.Stage == _pguo("8yFc89v5cg==") then return true, _pguo("zCtT48f5ZFjzIVzz2/ly") end
if _v13v.NextStage == _pguo("8yFc89v5cg==") then return true, _pguo("zCtT48f5ZFg=") .. tostring(_v13v.Stage) .. _pguo("km5b9Ny8ZhHQL16g3OhhH9s=") end
return false
end
local _v13x = {}
local function _v13y(_v13z)
if _v13x[_v13z] then return _v13x[_v13z] end
local _v140
pcall(function()
local _v141 = _v126(_v13z).GrowthStages[_v132(_v13z)]
_v141 = _v141[_v4.AS_GENDER or _pguo("8y9e5Q==")] or _v141.Male or _v141
_v140 = tonumber(_v141.CoreStats.Weight)
end)
_v13x[_v13z] = _v140 or math.huge
return _v13x[_v13z]
end
local function _v142()
local _v143 = {}
if not _v4.AS_AUTO_ORDER then
for _v144 = 1, 6 do
local _v145 = _v4.AS_SLOTS[_v144]
if _v145 and _v145 ~= _pguo("liBd7sq1") then _v143[#_v143 + 1] = _v145 end
end
if #_v143 > 0 then return _v143 end
end
for _v146, _v147 in ipairs(_v12c()) do _v143[#_v143 + 1] = _v147 end
table.sort(_v143, function(_v148, _v149)
local _v14a, _v14b = _v12e(_v148), _v12e(_v149)
if _v14a ~= _v14b then return _v14a end
local _v14c, _v14d = _v13y(_v148), _v13y(_v149)
if _v14c ~= _v14d then return _v14c < _v14d end
return _v148 < _v149
end)
return _v143
end
local function _v14e(_v14f)
local _v14g = {}
for _v14h, _v14i in ipairs(_v12c()) do _v14g[_v14i] = true end
local _v14j = _v12l()
for _v14k, _v14l in ipairs(_v142()) do
if _v14l and _v14l ~= _pguo("liBd7sq1") and _v14l ~= _v14f and _v14g[_v14l] and not _v4.asDone[_v14l] and not _v4.asSkip[_v14l] then
if _v12e(_v14l) then
if not _v139(_v14l, _v136(_v14l)) then return _v14l end
elseif _v4.AS_AUTOBUY then
local _v14m = _v12h(_v14l)
if _v14m and _v14m <= _v14j then return _v14l, _v14m end
end
end
end
return nil
end
local function _v14n(_v14o)
local _v14p, _v14q = {}, 0
for _v14r, _v14s in ipairs(_v142()) do
if _v14s and _v14s ~= _pguo("liBd7sq1") then
if _v4.asSkip[_v14s] or not _v12e(_v14s) then
_v14q = _v14q + 1
elseif _v14s == _v14o or _v4.asDone[_v14s] or _v139(_v14s, _v136(_v14s)) then
_v14p[#_v14p + 1] = _v14s
end
end
end
local _v14t = (#_v14p > 0) and (_pguo("3zoS9Mf5aQqeKFvuzvAgC8ovVeWVvA==") .. table.concat(_v14p, ", ")) or _pguo("0CES9cHwbxvVK1agy/VuF546XaDI7m8P")
if _v14q > 0 then _v14t = _v14t .. "; " .. _v14q .. (_v4.AS_AUTOBUY and _pguo("niJd48T5ZFiWIF30j/luF8spWqDu8WIdzGc=") or _pguo("niJd48T5ZA==")) end
return _v14t .. _pguo("nmMS78HweVjaJ1zv3LxvFp46WuncvG0Zzm5R4cG8Yh2eO0Hlyw==")
end
local function _v14u(_v14v)
return _v14v and _v14v.FoundWater and not (_v14v.Classifications and _v14v.Classifications.IsSemiAquatic)
end
local function _v14w()
local _v14x = _v4.getCS()
if _v2:GetAttribute(_pguo("9z177uzzbRrfOg==")) then return false, _pguo("1yAS48DxYhnK") end
if _v14x and _v14x.MovementState == _pguo("+CJL6cH7") then return false, _pguo("2CJL6cH7") end
if _v14u(_v14x) then return false, _pguo("1yAS987oZQo=") end
if _v14x and _v14x.UsingTimedAction then return false, _pguo("3yBd9Mf5cljKJ1/ly7xhG8onXe6P9XNYzDtc7sbyZw==") end
local _v14y = false
pcall(function() _v14y = _v14x.Classifications.IsApex and _v14x.Movement:IsMoving() end)
if _v14y then return false, _pguo("zTpb7MO8bRfIJ1znj7RhCNs2Eu3a73RYzTpT7su8cwzXIl6p") end
return true
end
local function _v14z(_v150)
local _v151 = _v122()
local _v152 = _v151.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="))
local _v153 = _v151.GetController(_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="))
local _v154 = _v4.getCS()
_v154.UsingTimedAction = true
_v2:SetAttribute(_pguo("7CtG9d3yaRbZGl3NyvJ1"), true)
_v152:BeginReturnToMenu()
local _v155 = tonumber(_v152:GetReturnToMenuDuration()) or 30
local _v156 = os.clock() + _v155 + 1
local _v157 = true
while os.clock() < _v156 do
_v4.asStatus = _pguo("zCtG9d3yaRbZbkbvj/FlFstuGg==") .. math.ceil(_v156 - os.clock()) .. "s)"
local _v158 = false
pcall(function() _v158 = _v154.Classifications.IsApex and _v154.Movement:IsMoving() end)
if _v4.UNLOADED or not _v150() or _v2:GetAttribute(_pguo("9z177uzzbRrfOg=="))
or (_v154.Actions and _v154.Actions.Run) or _v14u(_v154) or _v158 then
_v157 = false
break
end
task.wait(0.2)
end
if _v157 then
_v152:Despawn()
_v153:StartMainMenu()
end
_v2:SetAttribute(_pguo("7CtG9d3yaRbZGl3NyvJ1"), false)
_v154.UsingTimedAction = false
return _v157
end
_v4.asSafeToLeave, _v4.asReturnToMenu = _v14w, _v14z
local function _v159(_v15a, _v15b)
local _v15c = _v122()
local _v15d = _v15c.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="))
local _v15e = _pguo("+itU4drwdA==")
pcall(function() _v15e = _v124().Replica.Data.SkinInventory[_v15a].LastSelected or _pguo("+itU4drwdA==") end)
local _v15f = false
pcall(function() _v15f = table.find(require(_v121.Shared.DinosaursData).Apex, _v15a) ~= nil end)
if _v15f then
local _v15g = _v15c.GetController(_pguo("/z5X+OzzbgzMIV7syu4="))
local _v15h, _v15i = os.clock() + 600, false
while os.clock() < _v15h and (_v4.AUTO_SWITCH or _v4.rjSpawning) and not _v4.UNLOADED do
local _v15j, _v15k = pcall(function() return _v15g:RequestSlot(_v15a) end)
if _v15j and _v15k then _v15i = true break end
_v4.asStatus = _pguo("yS9b9MbyZ1jYIUCgzvIgGc4rSqDc8G8Mnihd8o8=") .. _v15a
task.wait(3)
end
if not _v15i then return false end
end
_v4.asStatus = _pguo("zT5T98H1bh+e") .. _v15a
pcall(function()
_v15d:InitiateSpawning({ Species = _v15a, Gender = _v15b or _v4.AS_GENDER or _pguo("8y9e5Q=="), Skin = _v15e, Variant = _pguo("+itU4drwdA==") })
end)
local _v15l = os.clock() + 60
while os.clock() < _v15l do
local _v15m = _v2.Character
if _v15m and _v15m:GetAttribute(_pguo("6jdC5Q==")) == _v15a then break end
task.wait(0.5)
end
pcall(_v4.autoSpawnCleanupGUI)
local _v15n = _v2.Character
return _v15n ~= nil and _v15n:GetAttribute(_pguo("6jdC5Q==")) == _v15a
end
_v4.asSpawnDino = _v159
function _v4.asResumeTarget(_v15o)
if _v4.AS_AUTO_ORDER then
local _v15p, _v15q = _v14e(nil)
if _v15p then return _v15p, _v15q end
end
if _v15o and _v12e(_v15o) and not _v139(_v15o, _v136(_v15o)) then return _v15o end
local _v15r, _v15s = _v14e(_v15o)
if _v15r and not _v15s then return _v15r end
return _v15o
end
function _v4.asBuy(_v15t)
local _v15u, _v15v = false, nil
pcall(function() _v15u, _v15v = _v122().GetService(_pguo("7jtA48f9cxHQKWHl3eppG9s=")):PurchaseDinosaurWithAmber(_v15t) end)
if _v15u or _v12e(_v15t) then
pcall(_v4.asRefreshLists)
return true
end
_v4.asSkip[_v15t] = true
return false, _v15v
end
local function _v15w(_v15x, _v15y)
_v4.asDone[_v15x] = true
pcall(function()
local _v15z = _v2.Character
_v4.asDoneAdd(_v15x, (_v15z and _v15z:GetAttribute(_pguo("+Stc5Mru"))) or _v4.AS_GENDER)
_v4.asRefreshDone()
end)
local _v160, _v161 = _v14e(_v15x)
_v129(_v15x .. _pguo("nidBoMvzbh2eZg==") .. _v15y .. _pguo("l2AS") .. (_v160 and (_pguo("8CtK9JW8") .. _v160 .. (_v161 and (_pguo("nmZQ9db1bh+eJ0agyfNyWA==") .. _v12n(_v161) .. _pguo("ng9f4sruKQ==")) or "") .. ".")
or (_pguo("8CES5MbybwueIlfm27wo") .. _v14n(_v15x) .. _pguo("l24foMP5YQ7XIFWgzvp0HcxuXu/I+2kW2W5d9duy"))), 10)
_v4.AS_BUSY = true
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
_v4.flyLandUntil = os.clock() + 15
while _v4.AUTO_SWITCH and not _v4.UNLOADED do
local _v162, _v163 = _v14w()
if _v162 then break end
_v4.asStatus = _pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA=") .. _v163
task.wait(1)
end
if not (_v4.AUTO_SWITCH and not _v4.UNLOADED) then return end
if not _v14z(function() return _v4.AUTO_SWITCH end) then
_v4.asDone[_v15x] = nil
_v129(_pguo("0iFV79roIA/fPRLpwehlCsw7QvTK+CBVnjlb7MO8dArHblPnzvVu"), 6)
return
end
task.wait(3)
while _v160 and _v161 do
local _v164, _v165 = false, nil
pcall(function() _v164, _v165 = _v122().GetService(_pguo("7jtA48f9cxHQKWHl3eppG9s=")):PurchaseDinosaurWithAmber(_v160) end)
if _v164 or _v12e(_v160) then
_v129(_pguo("3CFH58foIA==") .. _v160 .. _pguo("nihd8o8=") .. _v12n(_v161) .. _pguo("ng9f4sru"), 8)
pcall(_v4.asRefreshLists)
break
end
_v129(_pguo("3SFH7Mu8bhfKblD11rw=") .. _v160 .. " (" .. tostring(_v165 or _pguo("2C9b7Mr4")) .. _pguo("l24foNvueRHQKRL0x/kgFts2RqDL9W4X"), 8)
_v4.asSkip[_v160] = true
task.wait(3)
_v160, _v161 = _v14e(_v15x)
end
if not _v160 then
local _v166 = _v14n(_v15x)
_v129(_pguo("2zhX8ta8ZBHQIRLpwbx0ENtuXunc6CARzW5W78H5IFWeO1zswP1kEdApEuHB+CAU2y9E6cH7"), 6)
task.wait(3)
pcall(function() _v4.unloadScript() end)
pcall(_v4.leaveNote, _pguo("/ztG74/PdxHKLVqgyfVuEc0mV+Q="), true)
pcall(function() _v2:Kick(_pguo("5QtT+tbfaB3fOkHdj911DNFuYffG6GMQnihb7sbvaB3abh+g") .. _v166 .. ".") end)
return
end
if not _v159(_v160) then
_v129(_pguo("3SFH7Mu8bhfKbkHwzutuWA==") .. _v160 .. _pguo("nmMSwdrob1jtOVv0zPQgDMs8XOXLvG8e2A=="), 8)
if _v4.autoSwitchToggle then pcall(function() _v4.autoSwitchToggle:Set(false) end) end
else
_v129(_pguo("0CFFoMjubw/XIFWg") .. _v160, 6)
end
end
_v4.ftElapsed, _v4.ftStatus = 0, _pguo("0ShU")
local function _v167()
_v129(_pguo("yidf5Y/1c1jLPhKtj+h1CtAnXOeP6GgdnihT8sLvIBfYKBLhwfggFNsvROnB+w=="), 8)
for _v168, _v169 in ipairs({ { _pguo("/wh53+ndUjU="), _pguo("3yhZxs7ubSzRKVXsyg==") }, { _pguo("8gt1yfvDRjnsAw=="), _pguo("0itV6dvaYQrTGl3nyPBl") },
{ _pguo("/xtmz/DPVzHqDXo="), _pguo("3ztG7/zraQzdJmbvyPtsHQ==") } }) do
if _v4[_v169[1]] and _v4[_v169[2]] then pcall(function() _v4[_v169[2]]:Set(false) end) end
_v4[_v169[1]] = false
end
task.wait(2)
pcall(function() _v2.Character:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v16a = function() return _v4.FARM_TIMER and not _v4.UNLOADED end
local _v16b = os.clock() + 300
while _v16a() and _v2.Character and os.clock() < _v16b do
local _v16c, _v16d = _v14w()
if _v16c then
if _v14z(_v16a) then break end
else
_v4.ftStatus = _pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA=") .. _v16d
end
task.wait(1)
end
if not _v16a() then return end
pcall(_v4.leaveNote, _pguo("+C9A7Y/IaRXbPBLmxvJpC9YrVg=="), true)
pcall(function()
_v2:Kick(_pguo("5QtT+tbfaB3fOkHdj9phCtNuZunC+XJY2Cdc6dz0ZRyeL1T0yu4g") .. math.floor(_v4.FT_MINUTES or 0) .. _pguo("niNb7troZQueIVSgyf1yFdcgVa4="))
end)
end
task.spawn(function()
local _v16e = os.clock()
while not _v4.UNLOADED do
task.wait(1)
local _v16f = os.clock()
local _v16g = math.min(_v16f - _v16e, 5)
_v16e = _v16f
if _v4.FARM_TIMER and (_v4.AFK_FARM or _v4.LEGIT_FARM) then
_v4.ftElapsed = _v4.ftElapsed + _v16g
local _v16h = (_v4.FT_MINUTES or 120) * 60 - _v4.ftElapsed
_v4.ftStatus = _pguo("0itT9sbyZ1jXIBI=") .. math.max(0, math.ceil(_v16h / 60)) .. _pguo("niNb7g==")
if _v16h <= 300 and not _v4.ftWarned then
_v4.ftWarned = true
_v129(_pguo("+C9A7Y/IaRXbPAigmrxtEdA7RuXcvGwd2DoeoNv0ZRaeOlrlj/phCtM9EvTa7m5Y0ShUoM7yZFjHIUegw/lhDts="), 8)
end
if _v16h <= 0 and not _v4.AS_BUSY then
local _v16i, _v16j = pcall(_v167)
if not _v16i then _v129(_pguo("+C9A7Y/IaRXbPBLl3e5vCoRu") .. tostring(_v16j), 8) end
_v4.ftElapsed, _v4.ftWarned = 0, false
end
end
end
end)
task.spawn(function()
task.wait(5)
pcall(_v4.asRefreshLists)
while not _v4.UNLOADED do
task.wait(2)
if _v4.AUTO_SWITCH and not _v4.AS_BUSY and _v2.Character then
local _v16k, _v16l = _v13t()
if _v16k then
local _v16m, _v16n = pcall(_v15w, _v13r(), _v16l)
if not _v16m then _v129(_pguo("2zxA792mIA==") .. tostring(_v16n), 8) end
_v4.AS_BUSY = false
else
_v4.asStatus = _pguo("2Txd98byZ1g=") .. tostring(_v13r())
end
end
end
end)
end
_v4.asSetup()
_v4.RJ_FARMS = {
{ _pguo("/xtmz/DPVzHqDXo="), _pguo("3ztG7/zraQzdJmbvyPtsHQ=="), _pguo("/ztG74/PdxHKLVqg6/VuFw==") }, { _pguo("/wh53+ndUjU="), _pguo("3yhZxs7ubSzRKVXsyg=="), _pguo("/wh5oOn9chU=") },
{ _pguo("8gt1yfvDRjnsAw=="), _pguo("0itV6dvaYQrTGl3nyPBl"), _pguo("8itV6du8RhnMIw==") }, { _pguo("+AFh0+bQXz7/HH8="), _pguo("2CFB88bwRhnMI2bvyPtsHQ=="), _pguo("+CFB88bwID7fPF8=") },
{ _pguo("/wNwxf3DRjnsAw=="), _pguo("3yNQ5d3aYQrTGl3nyPBl"), _pguo("/wh5oO7xYh3MbnTh3fE=") }, { _pguo("+A9gzfDISTX7HA=="), _pguo("2C9A7fv1bR3MGl3nyPBl"), _pguo("+C9A7Y/IaRXbPA==") },
}
function _v4.rejoinSetup()
local _v16o = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local function _v16p()
local _v16q
pcall(function() _v16q = require(_v16o.Packages.Knit) end)
return _v16q
end
local function _v16r(_v16s, _v16t)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("7CtY78byOlg=") .. _v16s, _v16t or 6) end end)
end
local function _v16u()
local _v16v = _v2.Character
return _v16v ~= nil and _v16v.Parent ~= nil
end
function _v4.rejoinSave()
if not _v4.REJOIN_OK or _v4.rjResuming then return end
local _v16w = _v4.rejoinRead()
_v16w.on, _v16w.map = _v4.REJOIN and true or false, _v4.REJOIN_MAP
pcall(function() _v16w.lastMap = _v16p().Ecosystem end)
_v16w.lastJob = game.JobId
_v16w.farms = {}
for _v16x, _v16y in ipairs(_v4.RJ_FARMS) do _v16w.farms[_v16y[1]] = _v4[_v16y[1]] and true or false end
if _v4.rjKeep then _v16w.farms = _v4.rjKeep.farms end
if _v4.rjFinished then _v16w.farms = {} end
_v16w.ftElapsed = _v4.ftElapsed
_v16w.amberLeft = nil
if _v4.AMBER_FARM and _v4.amberT0 then
_v16w.amberLeft = math.max(0, (_v4.AMBER_MINUTES or 0) * 60 - (os.clock() - _v4.amberT0))
end
_v16w.t = os.time()
_v4.rejoinWrite(_v16w)
end
function _v4.rejoinLeave(_v16z)
if _v4.rjLeaving then return true end
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
_v4.rjLeaving = true
_v4.rejoinSave()
_v16r(_pguo("0itT9sbyZ1iTbg==") .. _v16z .. _pguo("nmMS4s7/a1jKIRL0x/kgC8ovQPSP72MK2ytc"), 6)
local _v170 = pcall(function() game:GetService(_pguo("6ite5d/zcgztK0D2xv9l")):Teleport(_v4.LOBBY_PLACE, _v2) end)
if not _v170 then _v4.rjLeaving = false return false end
task.delay(30, function()
if _v4.UNLOADED then return end
pcall(_v4.leaveNote, _pguo("3ypf6cG8ZB3KK1H0yvg="), false)
pcall(function() _v2:Kick(_pguo("5QtT+tbfaB3fOkHdj91kFdcgEuTK6GUbyitWoIc=") .. _v16z .. ")") end)
end)
return true
end
local function _v171(_v172)
local _v173
pcall(function() _v173 = _v16p().GetController(_pguo("+i9G4ezzbgzMIV7syu4=")).Replica.Data[_pguo("8i9B9Oz0YQrfLUbl3cM=") .. _v172] end)
if type(_v173) == _pguo("yi9Q7Mo=") and type(_v173[1]) == _pguo("zTpA6cH7") then return _v173[1], _v173[2] end
return nil
end
local function _v174(_v175, _v176)
local _v177 = {}
for _v178, _v179 in ipairs(_v4.RJ_FARMS) do
if _v175[_v179[1]] and _v4[_v179[2]] and not _v4[_v179[1]] and not _v4.UNLOADED then
pcall(function() _v4[_v179[2]]:Set(true) end)
_v177[#_v177 + 1] = _v179[3]
end
end
if _v175.FARM_TIMER and tonumber(_v176.ftElapsed) then _v4.ftElapsed = tonumber(_v176.ftElapsed) end
if _v175.AMBER_FARM and tonumber(_v176.amberLeft) then
_v4.amberT0 = os.clock() - math.max(0, (_v4.AMBER_MINUTES or 0) * 60 - tonumber(_v176.amberLeft))
end
_v16r(#_v177 > 0 and (_pguo("3C9R64/zbkKe") .. table.concat(_v177, ", ")) or _pguo("zT5T98H5ZFiTblzv2/RpFtluV+zc+SAP3z0S8trybhHQKQ=="), 8)
end
local function _v17a(_v17b)
local _v17c = type(_v17b.farms) == _pguo("yi9Q7Mo=") and _v17b.farms or {}
local _v17d = (getgenv and getgenv()) or {}
local _v17e = tonumber(_v17d.EazyCheats_RjSpawnAt)
if not _v16u() and _v17e and os.clock() - _v17e < 75 then
local _v17f = _v17e + 75
while not _v16u() and os.clock() < _v17f and not _v4.UNLOADED do task.wait(0.5) end
end
if not _v16u() then
local _v17g
pcall(function() _v17g = _v16p().Ecosystem end)
local _v17h, _v17i = _v171(tostring(_v17g))
if _v17c.AUTO_SWITCH and _v4.asResumeTarget then
for _v17j = 1, 4 do
local _v17k, _v17l = _v4.asResumeTarget(_v17h)
if not _v17k then break end
if _v17l then
_v16r(_pguo("yyBe78z3aRbZbg==") .. _v17k .. " (" .. tostring(_v17l) .. _pguo("ng9f4sruKQ=="), 6)
if not _v4.asBuy(_v17k) then
_v16r(_pguo("3SFH7Mu8bhfKbkfuw/NjE54=") .. _v17k .. _pguo("nmMS9N3laRbZbkboyrxuHcY6EuTG8m8="), 6)
task.wait(3)
continue
end
task.wait(2)
end
if _v17k ~= _v17h then _v17h, _v17i = _v17k, _v4.AS_GENDER end
break
end
end
if not _v17h then
_v4.rjKeep = { farms = _v17c, st = _v17b }
_v16r(_pguo("0CES5Mbyb1jOIlP5yvggF9Bu") .. tostring(_v17g) .. _pguo("njdX9I+xIAvOL0Xuj/NuHZ4vXOSP6GgdnihT8sLvIBvRI1egzf1jE54hXA=="), 10)
return
end
_v16r(_pguo("zT5T98H1bh+e") .. _v17h .. " (" .. tostring(_v17i or _pguo("8y9e5Q==")) .. ")", 6)
_v4.rjSpawning = true
local _v17m = false
for _v17n = 1, 3 do
if _v4.UNLOADED or not _v4.REJOIN then break end
if _v16u() then _v17m = true break end
_v17d.EazyCheats_RjSpawnAt = os.clock()
local _v17o, _v17p = pcall(_v4.asSpawnDino, _v17h, _v17i)
if (_v17o and _v17p) or _v16u() then _v17m = true break end
task.wait(10)
end
_v4.rjSpawning = false
if _v4.UNLOADED then return end
if not _v17m then
_v4.rjKeep = { farms = _v17c, st = _v17b }
_v16r(_pguo("3SFH7Mu8bhfKbkHwzutuWA==") .. _v17h .. _pguo("nmMS89/9dxaeN1313e9lFNhuU+7LvHQQ225U4d3xc1jdIV/lj/5hG9VuXe4="), 10)
return
end
task.wait(3)
end
_v174(_v17c, _v17b)
end
local _v17q = { _pguo("/x1twfrITyfxHHbF/Q=="), _pguo("/x1twfrITzrrFw=="), _pguo("/x1tx+rSRD3s"), _pguo("8ghtwfnTSTw="), _pguo("8ght0vrSXzz3HWY="), _pguo("8ghtze7EXzz3HWY="),
_pguo("8ght0+zOQSjt"), _pguo("8ghtxuPZRQ=="), _pguo("8ght1eHPVC39BQ=="), _pguo("8ght0urPVA=="), _pguo("8ghtwevRSTbhBXvD5A=="), _pguo("8ghtxuPFQS//Fw=="), _pguo("8ghtxuPFQS//F23S7thJLe0="),
_pguo("/wBmyfDdRjM="), _pguo("+w9m3/jURTbhBmfO6M5Z"), _pguo("+A9h1PDZQSw="), _pguo("8gtz1urDUzvsD2LT") }
local function _v17r()
local _v17s = game:GetService(_pguo("9jpG8Pz5cg7XLVc="))
local _v17t
pcall(function() _v17t = readfile(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHa6G8U0S9WrtvkdA==")):gsub(_pguo("mz0ZpA=="), "") end)
if not _v17t or _v17t == "" then return end
local _v17u = os.clock() + 60
while not _v4.cfgApplied and os.clock() < _v17u and not _v4.UNLOADED do task.wait(1) end
pcall(function()
local _v17v = _v17s:JSONDecode(readfile(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HQ==") .. _v17t .. _pguo("kCRB78E=")))
for _v17w, _v17x in ipairs(_v17q) do
if _v17v[_v17x] ~= nil then _v4[_v17x] = _v17v[_v17x] end
end
end)
end
task.spawn(function()
task.wait(8)
local _v17y = _v4.rejoinRead()
local _v17z = tonumber(_v17y.pending) and os.time() - _v17y.pending < 900
local _v180 = false
for _v181, _v182 in pairs(type(_v17y.farms) == _pguo("yi9Q7Mo=") and _v17y.farms or {}) do
if _v182 == true then _v180 = true end
end
local _v183 = tonumber(_v17y.t) ~= nil and os.time() - tonumber(_v17y.t) < 1800
local _v184 = _v180 and _v183 and _v17y.lastJob ~= nil and _v17y.lastJob ~= game.JobId
local _v185 = _v180 and _v183 and _v4.rjReloaded and _v17y.lastJob == game.JobId
if _v4.REJOIN_OK and _v4.REJOIN and (_v17z or _v184 or _v185) then
_v17r()
_v4.rjResuming = true
local _v186, _v187 = pcall(_v17a, _v17y)
_v4.rjResuming, _v4.rjSpawning = false, false
if not _v4.UNLOADED then
local _v188 = _v4.rejoinRead()
_v188.pending = nil
_v4.rejoinWrite(_v188)
end
if not _v186 then _v16r(_pguo("2zxA792mIA==") .. tostring(_v187), 8) end
end
while not _v4.UNLOADED do
if _v4.rjKeep and (not _v4.REJOIN or not _v4.REJOIN_OK) then _v4.rjKeep = nil end
if _v4.rjKeep and _v16u() then
local _v189 = _v4.rjKeep
task.wait(3)
_v4.rjKeep = nil
if _v16u() then pcall(_v174, _v189.farms, _v189.st) end
end
if _v4.REJOIN then _v4.rejoinSave() end
pcall(function()
local _v18a = (_v4.LEGIT_FARM and (_pguo("8itV6du8RhnMIwig") .. tostring(_v4.lfStatus)))
or (_v4.AFK_FARM and _pguo("/wh5oOn9chWeIVw=")) or _pguo("0CES5s7ubQ==")
local _v18b = _v4.AUTO_SWITCH and (_pguo("/ztG74/PdxHKLVo=") .. (_v4.AS_AUTO_ORDER and _pguo("nmZB7c7wbB3NOhLmxu5zDJc=") or "")
.. ": " .. tostring(_v4.asStatus)) or _pguo("/ztG74/PdxHKLVqgwPpm")
getgenv().EazyCheats_Status = _v18a .. _pguo("njIS") .. _v18b
end)
task.wait(5)
end
end)
end
_v4.rejoinSetup()
function _v4.deathSetup()
local _v18c = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local function _v18d()
local _v18e
pcall(function() _v18e = require(_v18c.Packages.Knit) end)
return _v18e
end
local function _v18f(_v18g, _v18h)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("7CtB8M7rbkKe") .. _v18g, _v18h or 6) end end)
end
local function _v18i()
return _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.AUTO_SWITCH or _v4.AMBER_FARM
end
local function _v18j(_v18k)
pcall(function() _v1:UnbindFromRenderStep(_pguo("7CtE6dn9bDvfI1fyzs93Gcc=")) end)
if not pcall(function() _v18k:Destroy() end) then
pcall(function() if _v18k.gui then _v18k.gui.Enabled = false end end)
end
pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end
local function _v18l(_v18m)
local _v18n, _v18o = _v18m.dinosaur, _v18m.gender
if type(_v18n) ~= _pguo("zTpA6cH7") then return end
_v18f(_pguo("2idX5I+xIArbPULh2PJpFtluU/OP") .. _v18n, 6)
task.wait(4)
if _v18m.finished or not _v18i() or _v4.UNLOADED then return end
_v18m.finished = true
local _v18p = _v18d()
pcall(function() _v18p.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ==")):RevivalScreenClosed() end)
pcall(function() _v18p.GetController(_pguo("/z5X+OzzbgzMIV7syu4=")):EndDeathGrace(_v18n) end)
_v4.rjSpawning = true
local _v18q, _v18r = pcall(_v4.asSpawnDino, _v18n, _v18o)
_v4.rjSpawning = false
if _v18q and _v18r then
_v18j(_v18m)
_v18f(_pguo("3C9R64/9c1g=") .. _v18n .. _pguo("nmMS5s7ubRHQKRLvwQ=="), 6)
else
_v18m.finished = false
_v18f(_pguo("3SFH7Mu8bhfKbkDl3OxhD9Bu") .. _v18n .. _pguo("nmMS8Mb/a1jsK0HwzutuWNE8Es3O9W5Y8ytc9Y/lbw3MPVfsyQ=="), 10)
end
end
task.spawn(function()
while not _v4.UNLOADED do
task.wait(1)
local _v18s
pcall(function() _v18s = _v18d().GetController(_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA==")).RevivalGui end)
if _v18s and not _v18s.fromMenu and not _v18s.finished and _v18i() and _v4.asSpawnDino and not _v4.deathBusy then
_v4.deathBusy = true
local _v18t, _v18u = pcall(_v18l, _v18s)
if not _v18t then _v18f(_pguo("2zxA792mIA==") .. tostring(_v18u), 8) end
_v4.deathBusy = false
end
end
end)
end
_v4.deathSetup()
function _v4.amberSetup()
local _v18v, _v18w, _v18x = 100, 50, 0.3
_v4.amberState = nil
_v4.amberStatus = _pguo("0ShU")
local _v18y = RaycastParams.new()
_v18y.FilterType = Enum.RaycastFilterType.Include
_v18y.FilterDescendantsInstances = { workspace.Terrain }
local function _v18z(_v190)
local _v191 = workspace:Raycast(Vector3.new(_v190.X, _v190.Y + 100, _v190.Z), Vector3.new(0, -2000, 0), _v18y)
return _v191 and _v191.Position.Y
end
local function _v192(_v193, _v194)
pcall(function()
_v193.CFrame = _v194
_v193.AssemblyLinearVelocity = Vector3.zero
_v193.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v195(_v196, _v197)
if _v196 then pcall(function() _v196:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v197) end) end
end
local function _v198(_v199, _v19a)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("/wh5oO7xYh3MbnTh3fE6WA==") .. _v199, _v19a or 6) end end)
end
local function _v19b(_v19c, _v19d)
if _v19d and _v19c then
_v4.amberColliders = _v4.amberColliders or {}
for _v19e, _v19f in ipairs(_v19c:GetDescendants()) do
if _v19f:IsA(_pguo("/C9B5f/9cgw=")) and _v19f.CanCollide then _v4.amberColliders[_v19f] = true; _v19f.CanCollide = false end
end
elseif not _v19d and _v4.amberColliders then
for _v19g in pairs(_v4.amberColliders) do
if _v19g.Parent then pcall(function() _v19g.CanCollide = true end) end
end
_v4.amberColliders = nil
end
end
local function _v19h(_v19i, _v19j)
pcall(function() if _v19i and _v19i.Set then _v19i:Set(_v19j) end end)
end
local function _v19k()
if not _v4.amberPrev then
_v4.amberPrev = { food = _v4.FREEZE_FOOD, water = _v4.FREEZE_WATER, clean = _v4.AUTO_CLEAN }
end
_v4.SUPPRESS_TOGGLE_NOTIFY = true
if not _v4.FREEZE_FOOD then _v19h(_v4.freezeFoodToggle, true) end
if not _v4.FREEZE_WATER then _v19h(_v4.freezeWaterToggle, true) end
if not _v4.AUTO_CLEAN then _v19h(_v4.autoCleanToggle, true) end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.FREEZE_FOOD, _v4.FREEZE_WATER, _v4.AUTO_CLEAN = true, true, true
end
local function _v19l()
local _v19m = _v4.amberPrev
_v4.amberPrev = nil
if not _v19m then return end
_v4.SUPPRESS_TOGGLE_NOTIFY = true
if not _v19m.food then _v19h(_v4.freezeFoodToggle, false); _v4.FREEZE_FOOD = false end
if not _v19m.water then _v19h(_v4.freezeWaterToggle, false); _v4.FREEZE_WATER = false end
if not _v19m.clean then _v19h(_v4.autoCleanToggle, false); _v4.AUTO_CLEAN = false end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
end
local function _v19n()
if _v4.amberPlatform then pcall(function() _v4.amberPlatform:Destroy() end); _v4.amberPlatform = nil end
end
local function _v19o()
if _v4.amberAnchored then
local _v19p = _v4.getLocalPhysicsRoot()
if _v19p then pcall(function() _v19p.Anchored = false end) end
_v4.amberAnchored = nil
end
end
function _v4.amberStop(_v19q)
_v19o()
_v19n()
_v19b(nil, false)
if _v4.amberState then _v195(_v2.Character, nil) end
if not _v19q then _v19l() end
_v4.amberState, _v4.amberPos, _v4.amberCF, _v4.amberDest, _v4.amberReturn = nil, nil, nil, nil, nil
_v4.amberT0, _v4.amberWarned, _v4.amberChar = nil, false, nil
_v4.amberStatus = _pguo("0ShU")
_v4.flyLandUntil = os.clock() + 10
end
function _v4.amberRise(_v19r)
local _v19s = _v4.amberState
if not _v19s or _v19s == _pguo("zCdB6cH7") or _v19s == _pguo("0itT9sbyZw==") then return end
_v4.amberFinish = _v19r and true or false
_v19o()
_v19n()
_v19b(_v2.Character, true)
if not _v4.amberReturn then _v4.amberStop(false) return end
_v4.amberState = _pguo("zCdB6cH7")
end
local function _v19t()
_v4.amberStatus = _pguo("0iFV58byZ1jRO0Y=")
task.wait(2)
local _v19u = function() return not _v4.UNLOADED and _v4.amberState == _pguo("0itT9sbyZw==") end
local _v19v = os.clock() + 300
while _v19u() and _v2.Character and os.clock() < _v19v do
local _v19w, _v19x = true, nil
if _v4.asSafeToLeave then _v19w, _v19x = _v4.asSafeToLeave() end
if _v19w and _v4.asReturnToMenu then
if _v4.asReturnToMenu(_v19u) then break end
elseif not _v19w then
_v4.amberStatus = _pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA=") .. tostring(_v19x)
end
task.wait(1)
end
if not _v19u() then return end
pcall(_v4.leaveNote, _pguo("/wh5oO7xYh3MbnTh3fEgHtcgW/PH+WQ="), true)
pcall(function()
_v2:Kick(_pguo("5QtT+tbfaB3fOkHdj91GM54PX+LK7iA+3zxfoMn1bhHNJlfkj/1mDNs8Eg==") .. math.floor(_v4.AMBER_MINUTES or 0) .. _pguo("niNb7troZQuQ"))
end)
end
function _v4.amberAdvance(_v19y)
if _v4.UNLOADED then return end
local _v19z = _v4.amberState
if _v19z == _pguo("0itT9sbyZw==") or (not _v4.AMBER_FARM and not _v19z) then return end
local _v1a0 = _v2.Character
local _v1a1 = _v4.getLocalPhysicsRoot()
if not (_v1a0 and _v1a1) then return end
_v19y = math.min(_v19y or 0.016, 0.1)
local _v1a2 = os.clock()
if _v19z and _v4.amberChar and _v4.amberChar ~= _v1a0 then
_v4.amberStop(false)
_v4.AMBER_FARM = false
if _v4.amberFarmToggle then pcall(function() _v4.amberFarmToggle:Set(false) end) end
_v198(_pguo("zTpd8N/5ZFiTbkvv2u4gHNcgXaDd+XMI3zlc5cs="), 6)
return
end
if _v4.AMBER_FARM and (_v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FLY or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE) then
_v4.AMBER_FARM = false
if _v4.amberFarmToggle then pcall(function() _v4.amberFarmToggle:Set(false) end) end
if _v4.LEGIT_FARM then _v4.amberRise(false) else _v4.amberStop(false) end
return
end
if _v4.AMBER_FARM and not _v19z then
local _v1a3 = _v1a1.Position
local _v1a4 = (_v18z(_v1a3) or _v1a3.Y) - _v18v
local _v1a5
pcall(function() _v1a5 = workspace.FallenPartsDestroyHeight end)
if _v1a5 and _v1a4 < _v1a5 + 50 then _v1a4 = _v1a5 + 50 end
_v4.amberReturn, _v4.amberPos, _v4.amberCF = _v1a3, _v1a3, _v1a1.CFrame
_v4.amberDest = Vector3.new(_v1a3.X, _v1a4, _v1a3.Z)
_v4.amberT0 = _v4.amberT0 or _v1a2
_v4.amberChar = _v1a0
_v19b(_v1a0, true)
_v19k()
_v4.amberState, _v19z = _pguo("2idE6cH7"), _pguo("2idE6cH7")
end
if _v19z == _pguo("2idE6cH7") or _v19z == _pguo("zCdB6cH7") then
local _v1a6 = (_v19z == _pguo("2idE6cH7")) and _v4.amberDest or _v4.amberReturn
_v4.amberPos = _v4.govNext(_v4.amberPos, _v1a6, _v19y, _v18w)
_v4.amberCF = CFrame.new(_v4.amberPos) * _v4.amberCF.Rotation
_v192(_v1a1, _v4.amberCF)
_v195(_v1a0, _v4.amberPos.Y)
_v4.amberStatus = (_v19z == _pguo("2idE6cH7")) and _pguo("2SFb7si8dRbaK0Cg2/RlWNMvQg==") or _pguo("3SFf6cH7IBrfLVmg2uw=")
if (_v4.amberPos - _v1a6).Magnitude < 3 then
if _v19z == _pguo("2idE6cH7") then
pcall(function()
local _v1a7 = Instance.new(_pguo("7i9A9A=="))
_v1a7.Size = Vector3.new(80, 4, 80)
_v1a7.Position = _v4.amberPos - Vector3.new(0, 6, 0)
_v1a7.Anchored, _v1a7.Transparency, _v1a7.CanCollide, _v1a7.CanQuery = true, 1, true, false
_v1a7.Parent = workspace
_v4.amberPlatform = _v1a7
end)
_v4.amberState, _v4.amberSettleT = _pguo("zStG9MP1bh8="), _v1a2
else
local _v1a8 = _v4.amberFinish
_v4.amberStop(_v1a8)
if _v1a8 then
_v4.amberState = _pguo("0itT9sbyZw==")
task.spawn(_v19t)
end
end
end
return
end
if _v19z == _pguo("zStG9MP1bh8=") then
_v192(_v1a1, _v4.amberCF)
_v195(_v1a0, _v4.amberPos.Y)
if _v1a2 - _v4.amberSettleT >= _v18x then
pcall(function() _v1a1.Anchored = true end)
_v4.amberAnchored = true
_v4.amberState = _pguo("1iFe5MbyZw==")
end
return
end
if _v19z == _pguo("1iFe5MbyZw==") then
if not _v1a1.Anchored then
pcall(function() _v1a1.Anchored = true end)
_v4.amberAnchored = true
end
_v192(_v1a1, _v4.amberCF)
local _v1a9 = (_v4.AMBER_MINUTES or 120) * 60 - (_v1a2 - (_v4.amberT0 or _v1a2))
_v4.amberStatus = _pguo("yyBW5d28dBDbbl/h37wtWNIrU/bG8mdY1yAS") .. math.max(0, math.ceil(_v1a9 / 60)) .. _pguo("niNb7g==")
if _v1a9 <= 300 and not _v4.amberWarned then
_v4.amberWarned = true
_v198(_pguo("i25f6cHpdB3Nbl7lyegsWMomV+6P9XRY3SFf5dy8YhndJRL137AgFNEpQaDA6XRY3yBWoMP5YQ7bPQ=="), 8)
end
if _v1a9 <= 0 then
_v198(_pguo("yidf5Y/1c1jLPhKtj/9vFdcgVaDN/WMTnjtCoNvzIBTRKRLv2ug="), 6)
_v4.amberRise(true)
end
end
end
function _v4.amberPin()
local _v1aa = _v4.amberState
if _v4.UNLOADED or not _v4.amberCF or not (_v1aa == _pguo("2idE6cH7") or _v1aa == _pguo("zCdB6cH7") or _v1aa == _pguo("zStG9MP1bh8=")) then return end
local _v1ab = _v4.getLocalPhysicsRoot()
if _v1ab and not _v1ab.Anchored then _v192(_v1ab, _v4.amberCF) end
end
table.insert(_vz, _v1.RenderStepped:Connect(_v4.amberAdvance))
table.insert(_vz, _v1.Heartbeat:Connect(_v4.amberPin))
end
_v4.amberSetup()
pcall(function() _v4.VirtualUser = game:GetService(_pguo("6CdA9Nr9bC3NK0A=")) end)
if _v4.VirtualUser then
table.insert(_vz, _v2.Idled:Connect(function()
if _v4.UNLOADED or not (_v4.ANTI_AFK or _v4.AMBER_FARM or _v4.LEGIT_FARM) then return end
pcall(function()
_v4.VirtualUser:CaptureController()
_v4.VirtualUser:MoveMouse(Vector2.new(1, 1))
_v4.VirtualUser:MoveMouse(Vector2.new(0, 0))
end)
_v4.antiAfkCount = (_v4.antiAfkCount or 0) + 1
end))
end
do
local _v1ac, _v1ad = pcall(function() return require(_v4.WATER_RS.Common.CharacterState) end)
if _v1ac and _v1ad and _v4.ReplicaSetRemote then
local _v1ae, _v1af, _v1ag = os.clock(), 60, {}
local function _v1ah(_v1ai)
if #_v1ai == 0 then return _v1af end
local _v1aj = table.clone(_v1ai); table.sort(_v1aj); return _v1aj[math.ceil(#_v1aj / 2)]
end
table.insert(_vz, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_v1ak, _v1al)
if _v4.UNLOADED or typeof(_v1al) ~= _pguo("yi9Q7Mo=") then return end
if _v1al[1] == _pguo("+Txd99v0") and _v1al[2] == _pguo("8y9B8w==") then
local _v1am = _v1ad.Replica
if _v1am and _v1ak == _v1am.Id then
local _v1an = os.clock()
local _v1ao = _v1an - _v1ae
if _v1ao > 5 and _v1ao < 300 then
_v1ag[#_v1ag + 1] = _v1ao
if #_v1ag > 6 then table.remove(_v1ag, 1) end
_v1af = _v1ah(_v1ag)
end
_v1ae = _v1an
end
end
end))
local function _v1ap() return _v1ad.Replica and _v1ad.Replica.Data end
local function _v1aq(_v1ar)
local _v1as; pcall(function() _v1as = _v1ad.Wellbeing.SavableStats[_v1ar] end)
return type(_v1as) == _pguo("0Dtf4sru") and math.floor(_v1as) or nil
end
local function _v1at(_v1au, _v1av, _v1aw)
local _v1ax, _v1ay = 0, 0; for _v1az, _v1b0 in ipairs({ _v1au, _v1av, _v1aw }) do if _v1b0 then _v1ax = _v1ax + _v1b0; _v1ay = _v1ay + 1 end end
return _v1ay > 0 and math.floor(_v1ax / _v1ay) or 0
end
local function _v1b1()
local _v1b2 = _v1ap(); local _v1b3; pcall(function() _v1b3 = _v1b2.Multipliers.MassGain end)
if type(_v1b3) ~= _pguo("0Dtf4sru") then return "?" end
if _v1b3 > 1 then return tostring(math.floor(_v1b3 * 10) * 10)
elseif _v1b3 < 0.1 then return tostring(math.floor(_v1b3 * 1000) / 10)
else return tostring(math.floor(_v1b3 * 100)) end
end
local function _v1b4(_v1b5) return _v1b5 and (_v1b5 .. "%") or "?" end
local _v1b6 = (gethui and gethui()) or game:GetService(_pguo("/SFA5ejpaQ=="))
if not _v1b6 then _v1b6 = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
local _v1b7 = Instance.new(_pguo("7S1A5cryRw3X")); _v1b7.Name = _pguo("7gpt09v9dAv9L0Dk"); _v1b7.ResetOnSpawn = false; _v1b7.IgnoreGuiInset = true
pcall(function() _v1b7.Parent = _v1b6 end)
local _v1b8 = Instance.new(_pguo("+DxT7co="))
_v1b8.Size = UDim2.new(0, 500, 0, 168); _v1b8.AnchorPoint = Vector2.new(0.5, 0)
_v1b8.Position = UDim2.new(0.62, 0, 0, 16)
_v1b8.BackgroundColor3 = Color3.fromRGB(24, 16, 38); _v1b8.BackgroundTransparency = 0.1
_v1b8.BorderSizePixel = 0; _v1b8.Visible = false; _v1b8.Parent = _v1b7
Instance.new(_pguo("6wdx793yZQo="), _v1b8).CornerRadius = UDim.new(0, 10)
do
local _v1b9 = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
local _v1ba, _v1bb, _v1bc = false, nil, nil
local function _v1bd()
_v1b8.Position = UDim2.new(_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO)
end
_v1bd()
_v4.setStatsCardPos = function(_v1be, _v1bf, _v1bg, _v1bh)
_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO = _v1be, _v1bf, _v1bg, _v1bh
pcall(_v1bd)
end
table.insert(_vz, _v1b8.InputBegan:Connect(function(_v1bi)
if _v4.UNLOADED or not _v4.SC_DRAG then return end
if _v1bi.UserInputType == Enum.UserInputType.MouseButton1
or _v1bi.UserInputType == Enum.UserInputType.Touch then
_v1ba, _v1bb, _v1bc = true, _v1bi.Position, _v1b8.Position
end
end))
table.insert(_vz, _v1b8.InputEnded:Connect(function(_v1bj)
if _v1bj.UserInputType == Enum.UserInputType.MouseButton1
or _v1bj.UserInputType == Enum.UserInputType.Touch then
if _v1ba then
_v1ba = false
_v4.SC_POS_XS, _v4.SC_POS_XO = _v1b8.Position.X.Scale, _v1b8.Position.X.Offset
_v4.SC_POS_YS, _v4.SC_POS_YO = _v1b8.Position.Y.Scale, _v1b8.Position.Y.Offset
end
end
end))
table.insert(_vz, _v1b9.InputChanged:Connect(function(_v1bk)
if _v4.UNLOADED or not _v1ba or not _v4.SC_DRAG then return end
if _v1bk.UserInputType == Enum.UserInputType.MouseMovement
or _v1bk.UserInputType == Enum.UserInputType.Touch then
local _v1bl = _v1bk.Position - _v1bb
_v1b8.Position = UDim2.new(_v1bc.X.Scale, _v1bc.X.Offset + _v1bl.X,
_v1bc.Y.Scale, _v1bc.Y.Offset + _v1bl.Y)
end
end))
end
local _v1bm = Instance.new(_pguo("6wdh9N3zax0="), _v1b8); _v1bm.Color = Color3.fromRGB(150, 90, 255); _v1bm.Thickness = 1.5
local _v1bn = Instance.new(_pguo("6itK9OP9Yh3S"))
_v1bn.Size = UDim2.new(1, 0, 0, 24); _v1bn.Position = UDim2.new(0, 0, 0, 8); _v1bn.BackgroundTransparency = 1
_v1bn.Font = Enum.Font.GothamBold; _v1bn.TextSize = 18; _v1bn.TextColor3 = Color3.fromRGB(190, 140, 255)
_v1bn.Text = _pguo("7Rpz1Pw="); _v1bn.TextTruncate = Enum.TextTruncate.AtEnd; _v1bn.Parent = _v1b8
local function _v1bo(_v1bp)
local _v1bq = Instance.new(_pguo("+DxT7co="))
_v1bq.Size = UDim2.new(0.5, -20, 0, 0); _v1bq.Position = UDim2.new(_v1bp, _v1bp == 0 and 14 or 6, 0, 38)
_v1bq.BackgroundTransparency = 1; _v1bq.Parent = _v1b8
local _v1br = Instance.new(_pguo("6wd+6dzoTBnHIUf0"), _v1bq)
_v1br.FillDirection = Enum.FillDirection.Vertical; _v1br.SortOrder = Enum.SortOrder.LayoutOrder
_v1br.Padding = UDim.new(0, 3)
return _v1bq, _v1br
end
local _v1bs, _v1bt = _v1bo(0)
local _v1bu, _v1bv = _v1bo(0.5)
local function _v1bw(_v1bx, _v1by, _v1bz)
local _v1c0 = Instance.new(_pguo("6itK9OP9Yh3S"))
_v1c0.Size = UDim2.new(1, 0, 0, _v1by + 5); _v1c0.BackgroundTransparency = 1; _v1c0.Font = Enum.Font.GothamSemibold
_v1c0.TextSize = _v1by; _v1c0.TextXAlignment = Enum.TextXAlignment.Left
_v1c0.TextColor3 = _v1bz or Color3.fromRGB(220, 210, 240); _v1c0.RichText = true; _v1c0.Parent = _v1bx; return _v1c0
end
local _v1c1 = _v1bw(_v1bs, 14)
local _v1c2 = _v1bw(_v1bs, 13, Color3.fromRGB(170, 160, 190))
local _v1c3 = _v1bw(_v1bs, 14)
local _v1c4 = _v1bw(_v1bs, 14)
local _v1c5 = _v1bw(_v1bs, 15, Color3.fromRGB(120, 230, 140))
local _v1c6 = _v1bw(_v1bu, 14, Color3.fromRGB(190, 140, 255)); _v1c6.Font = Enum.Font.GothamBold
local _v1c7 = _v1bw(_v1bu, 13)
local _v1c8 = _v1bw(_v1bu, 14, Color3.fromRGB(190, 140, 255)); _v1c8.Font = Enum.Font.GothamBold
local _v1c9 = _v1bw(_v1bu, 13)
local _v1ca = _v1bw(_v1bu, 13)
task.spawn(function()
while not _v4.UNLOADED do
if _v4.STATS_CARD and not (_v4.SC_HIDE_WITH_MENU and _v4.Hub and _v4.Hub.IsVisible and _v4.Hub:IsVisible()) then
_v1b8.Visible = true
if _v1b8.Active ~= _v4.SC_DRAG then _v1b8.Active = _v4.SC_DRAG end
pcall(function()
local _v1cb = _v2.Character
local _v1cc = _v1ap()
local _v1cd = _v4.SC_NAME and _v1cb and _v1cb:GetAttribute(_pguo("6jdC5Q=="))
if _v1cd then
local _v1ce = _v1cb:GetAttribute(_pguo("+Stc5Mru"))
_v1bn.Text = tostring(_v1cd) .. ((_v1ce == "M" and _pguo("nm4azc7wZVE=")) or (_v1ce == "F" and _pguo("nm4axsrxYRTbZw==")) or "")
else
_v1bn.Text = _pguo("7Rpz1Pw=")
end
_v1c1.Visible = _v4.SC_GROWTH; _v1c2.Visible = _v4.SC_GROWTH
if _v4.SC_GROWTH then
local _v1cf = (_v1cc and _v1cc.Growth and _v1cc.Growth.Stage) or (_v1cb and _v1cb:GetAttribute(_pguo("7TpT58o="))) or "?"
local _v1cg = (_v1cc and _v1cc.Growth and _v1cc.Growth.NextStage) or "?"
local _v1ch = (_v1cc and _v1cc.Growth and _v1cc.Growth.Delta) or 0
_v1c1.Text = _pguo("+Txd99v0ICvKL1XllbwgRNxw") .. tostring(_v1cf) .. _pguo("gmFQvg==")
_v1c2.Text = _pguo("7jxd5935cwueOl2g") .. tostring(_v1cg) .. _pguo("hG4S") .. math.floor(_v1ch * 100) .. "%"
end
_v1c3.Visible = _v4.SC_MASS
if _v4.SC_MASS then _v1c3.Text = _pguo("8y9B84/bYRHQbn/1w+hpCNInV/KVvCBE3HA=") .. _v1b1() .. _pguo("m3Id4pE=") end
_v1c4.Visible = _v4.SC_WEIGHT
if _v4.SC_WEIGHT then
local _v1ci = _v1cb and _v1cb:GetAttribute(_pguo("6Stb58fo"))
_v1c4.Text = _pguo("6Stb58foOlieclC+") .. (_v1ci and (math.floor(_v1ci * 10) / 10 .. _pguo("niVV")) or "?") .. _pguo("gmFQvg==")
end
_v1c5.Visible = _v4.SC_TIMER
if _v4.SC_TIMER then
local _v1cj = math.max(0, math.floor(_v1af - (os.clock() - _v1ae)))
_v1c5.Text = _pguo("8CtK9I/7chfJOlqgx/V0Qp5u") .. string.format(_pguo("myoIpZ+uZA=="), math.floor(_v1cj / 60), _v1cj % 60)
end
_v1c6.Visible = _v4.SC_NUTRITION; _v1c7.Visible = _v4.SC_NUTRITION
if _v4.SC_NUTRITION then
local _v1ck, _v1cl, _v1cm = _v1aq(_pguo("7jxd9Mr1bgs=")), _v1aq(_pguo("+C9G8w==")), _v1aq(_pguo("/S9e48bpbQ=="))
_v1c6.Text = _pguo("8DtG8sboaRfQdBKg") .. _v1at(_v1ck, _v1cl, _v1cm) .. "%"
_v1c7.Text = _pguo("7jxd9Mr1bgue") .. _v1b4(_v1ck) .. _pguo("nm4Sxs7oc1g=") .. _v1b4(_v1cl) .. _pguo("nm4Sw87wYxHLIxI=") .. _v1b4(_v1cm)
end
_v1c8.Visible = _v4.SC_WELLBEING; _v1c9.Visible = _v4.SC_WELLBEING; _v1ca.Visible = _v4.SC_WELLBEING
if _v4.SC_WELLBEING then
local _v1cn, _v1co, _v1cp = _v1aq(_pguo("/SJX4cHwaRbbPUE=")), _v1aq(_pguo("/y1G6dn1dAE=")), _v1aq(_pguo("/SFf5sDudA=="))
local _v1cq = _v1aq(_pguo("9yNf9cH1dAE="))
_v1c8.Text = _pguo("6Ste7M35aRbZdBKg") .. _v1at(_v1cn, _v1co, _v1cp) .. "%"
_v1c9.Text = _pguo("/SJX4cG8") .. _v1b4(_v1cn) .. _pguo("nm4SwczoaQ7XOkug") .. _v1b4(_v1co) .. _pguo("nm4Sw8DxZhfMOhI=") .. _v1b4(_v1cp)
if _v1cq then
local _v1cr = _v1cq >= 70 and Color3.fromRGB(100, 255, 100)
or _v1cq >= 40 and Color3.fromRGB(255, 255, 80)
or Color3.fromRGB(255, 80, 80)
_v1ca.Text = _pguo("9yNf9cH1dAGEbhK8zaI=") .. _v1cq .. _pguo("m3Id4pE=") .. (_v1cq < 40 and _pguo("nm7QGg+8TDfpbtAAO7xlGcpuUezO5SE=") or "")
_v1ca.TextColor3 = _v1cr
else
_v1ca.Text = _pguo("9yNf9cH1dAGEbhK/")
_v1ca.TextColor3 = Color3.fromRGB(170, 160, 190)
end
end
local _v1cs, _v1ct = _v1bt.AbsoluteContentSize.Y, _v1bv.AbsoluteContentSize.Y
_v1bs.Size = UDim2.new(0.5, -20, 0, _v1cs)
_v1bu.Size = UDim2.new(0.5, -20, 0, _v1ct)
_v1b8.Size = UDim2.new(0, (_v4.SC_NUTRITION or _v4.SC_WELLBEING) and 500 or 270, 0, 40 + math.max(_v1cs, _v1ct) + 8)
end)
else
_v1b8.Visible = false
end
task.wait(0.3)
end
pcall(function() _v1b7:Destroy() end)
end)
end
end
do
local _v1cu, _v1cv = pcall(function() return require(_v4.WATER_RS.Shared.SkinData) end)
local _v1cw = _v4.WATER_RS:FindFirstChild(_pguo("7SVb7tw="))
local _v1cx = _v4.WATER_RS:FindFirstChild(_pguo("/SZT8s7/dB3MA13kyvBz"))
if _v1cu and _v1cv and _v1cv.Skins and _v1cw and _v1cx then
local function _v1cy()
local _v1cz = _v2.Character
if not _v1cz then return nil end
local _v1d0 = _v1cz:GetAttribute(_pguo("6jdC5Q=="))
local _v1d1 = _v1cz:GetAttribute(_pguo("7TpT58o=")) or _pguo("/ypH7Ns=")
local _v1d2 = (tostring(_v1cz:GetAttribute(_pguo("+Stc5Mru"))):upper():sub(1, 1) == "F") and _pguo("+Ctf4cP5") or _pguo("8y9e5Q==")
local _v1d3 = _v1cz:GetAttribute(_pguo("9z177vj9dB3M")) or _v1cz:GetAttribute(_pguo("7Tlb7cL1bh8="))
return _v1cz, _v1d0, _v1d1, _v1d2, _v1d3 and _pguo("6StG") or _pguo("+jxL")
end
local function _v1d4(_v1d5, _v1d6, _v1d7, _v1d8, _v1d9)
if _v1d6 == _pguo("+itU4drwdA==") then
local _v1da = _v1cx:FindFirstChild(_v1d5)
local _v1db = _v1da and (_v1da:FindFirstChild(_v1d7) or _v1da:GetChildren()[1])
local _v1dc = _v1db and _v1db:FindFirstChild(_pguo("7TpT9Nrv"))
local _v1dd = _v1dc and (_v1dc:FindFirstChild(_v1d5 .. _v1d9) or _v1dc:FindFirstChild(_v1d5 .. _pguo("+jxL")))
return _v1dd and _v1dd:FindFirstChild(_v1d8)
else
local _v1de = _v1cw:FindFirstChild(_v1d5)
local _v1df = _v1de and _v1de:FindFirstChild(_v1d6)
local _v1dg = _v1df and (_v1df:FindFirstChild(_v1d7) or _v1df:GetChildren()[1])
local _v1dh = _v1dg and _v1dg:FindFirstChild(_v1d8)
return _v1dh and (_v1dh:FindFirstChild(_v1d9) or _v1dh:FindFirstChild(_pguo("+jxL")) or _v1dh:FindFirstChild(_pguo("6StG")))
end
end
_v4.applySkin = function(_v1di)
local _v1dj, _v1dk, _v1dl, _v1dm, _v1dn = _v1cy()
if not (_v1dj and _v1dk) then return false end
local _v1do = _v1dj:FindFirstChild(_pguo("8ytB6OLzZB3S")) or _v1dj
local _v1dp = _v1d4(_v1dk, _v1di, _v1dl, _v1dm, _v1dn)
if not _v1dp then return false end
for _v1dq, _v1dr in ipairs(_v1do:GetDescendants()) do
if _v1dr:IsA(_pguo("7TtA5s7/ZTnOPlfh3f1uG9s=")) then pcall(function() _v1dr:Destroy() end) end
end
local _v1ds = 0
for _v1dt, _v1du in ipairs(_v1dp:GetChildren()) do
local _v1dv = _v1du:FindFirstChildWhichIsA(_pguo("7TtA5s7/ZTnOPlfh3f1uG9s="))
local _v1dw = _v1do:FindFirstChild(_v1du.Name)
if _v1dv and _v1dw then pcall(function() _v1dv:Clone().Parent = _v1dw end); _v1ds = _v1ds + 1 end
end
return _v1ds > 0
end
_v4.skinsForCurrentDino = function()
local _v1dx, _v1dy = _v1cy()
local _v1dz = { _pguo("+itU4drwdA==") }
local _v1e0 = _v1dy and _v1cv.Skins[_v1dy]
if _v1e0 and _v1e0.Unlockables then for _v1e1 in pairs(_v1e0.Unlockables) do _v1dz[#_v1dz + 1] = _v1e1 end end
table.sort(_v1dz, function(_v1e2, _v1e3) if _v1e2 == _pguo("+itU4drwdA==") then return true elseif _v1e3 == _pguo("+itU4drwdA==") then return false end return _v1e2 < _v1e3 end)
return _v1dz, _v1dy
end
task.spawn(function()
while not _v4.UNLOADED do
if _v4.SKIN_SELECTED ~= _pguo("+itU4drwdA==") then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
task.wait(2)
end
end)
table.insert(_vz, _v2.CharacterAdded:Connect(function()
task.wait(2)
local _v1e4, _v1e5 = _v4.skinsForCurrentDino()
local _v1e6 = _v4.SKIN_WANTED or _v4.SKIN_SELECTED
_v4.SKIN_SELECTED = table.find(_v1e4, _v1e6) and _v1e6 or _pguo("+itU4drwdA==")
if _v4.skinDropdown then
pcall(function() _v4.skinDropdown:Refresh(_v1e4, false) end)
pcall(function() _v4.skinDropdown:Set(_v4.SKIN_SELECTED, true) end)
end
if _v4.SKIN_SELECTED ~= _pguo("+itU4drwdA==") then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
end))
task.spawn(function()
task.wait(3)
if _v4.skinDropdown and _v4.skinsForCurrentDino then
local _v1e7, _v1e8 = _v4.skinsForCurrentDino()
if _v1e8 then
pcall(function() _v4.skinDropdown:Refresh(_v1e7, true) end)
local _v1e9 = _v4.SKIN_WANTED
if _v1e9 and _v1e9 ~= _pguo("+itU4drwdA==") and table.find(_v1e7, _v1e9) and _v4.SKIN_SELECTED ~= _v1e9 then
_v4.SKIN_SELECTED = _v1e9
pcall(function() _v4.skinDropdown:Set(_v1e9, true) end)
if _v4.applySkin then pcall(_v4.applySkin, _v1e9) end
end
end
end
end)
end
end
do
_v4.fishESP = setmetatable({}, { __mode = "k" })
local _v1ea = Color3.fromRGB(80, 200, 255)
local _v1eb = 1500
local function _v1ec()
local _v1ed = workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l"))
local _v1ee = _v1ed and _v1ed:FindFirstChild(_pguo("7T5T98H5ZDn3"))
return _v1ee and _v1ee:FindFirstChild(_pguo("+CdB6A=="))
end
local function _v1ef()
local _v1eg = _v2.Character
return _v1eg and (_v1eg:FindFirstChild(_pguo("/CFW+Q==")) or _v1eg:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA==")) or _v1eg:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw=")))
end
local function _v1eh(_v1ei)
return _v1ei.PrimaryPart or _v1ei:FindFirstChild(_pguo("/CFW+Q==")) or _v1ei:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="))
end
local function _v1ej(_v1ek)
local _v1el = _v4.fishESP[_v1ek]
if _v1el and _v1el.hl.Parent then return _v1el end
local _v1em = Instance.new(_pguo("9idV6MP1ZxDK"))
_v1em.FillColor = _v1ea; _v1em.FillTransparency = 0.55; _v1em.OutlineColor = _v1ea
_v1em.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; _v1em.Parent = _v1ek
local _v1en = _v1eh(_v1ek)
local _v1eo = Instance.new(_pguo("/Cde7M3zYQraCUfp"))
_v1eo.Size = UDim2.new(0, 110, 0, 18); _v1eo.StudsOffset = Vector3.new(0, 2, 0); _v1eo.AlwaysOnTop = true
local _v1ep = Instance.new(_pguo("6itK9OP9Yh3S"))
_v1ep.Size = UDim2.new(1, 0, 1, 0); _v1ep.BackgroundTransparency = 1; _v1ep.Font = Enum.Font.GothamBold
_v1ep.TextSize = 12; _v1ep.TextColor3 = _v1ea; _v1ep.TextStrokeTransparency = 0.4; _v1ep.Text = _pguo("+CdB6A=="); _v1ep.Parent = _v1eo
if _v1en then _v1eo.Adornee = _v1en; _v1eo.Parent = _v1en end
_v1el = { hl = _v1em, bb = _v1eo, lbl = _v1ep }; _v4.fishESP[_v1ek] = _v1el; return _v1el
end
local function _v1eq(_v1er)
local _v1es = _v4.fishESP[_v1er]
if _v1es then pcall(function() _v1es.hl:Destroy(); _v1es.bb:Destroy() end); _v4.fishESP[_v1er] = nil end
end
task.spawn(function()
while not _v4.UNLOADED do
local _v1et = _v1ec()
local _v1eu = _v1ef()
if _v1et then
local _v1ev = {}
for _v1ew, _v1ex in ipairs(_v1et:GetChildren()) do
if _v1ex:IsA(_pguo("8yFW5cM=")) then
_v1ev[_v1ex] = true
local _v1ey = _v1eh(_v1ex)
local _v1ez = (_v1ey and _v1eu) and (_v1ey.Position - _v1eu.Position).Magnitude or 1e9
if _v4.FISH_ESP and _v1ez <= _v1eb then
local _v1f0 = _v1ej(_v1ex)
if _v1f0.lbl then _v1f0.lbl.Text = _pguo("+CdB6I+8") .. math.floor(_v1ez) .. "m" end
else
_v1eq(_v1ex)
end
end
end
for _v1f1 in pairs(_v4.fishESP) do if not _v1ev[_v1f1] then _v1eq(_v1f1) end end
end
task.wait(0.15)
end
for _v1f2 in pairs(_v4.fishESP) do _v1eq(_v1f2) end
end)
end
do
_v4.VEG_ESP = false
_v4.VEG_DISTANCE = 1500
_v4.VEG_MAX = 40
_v4.VEG_DIET_ONLY = false
_v4.VEG_HIDE_EATEN = false
_v4.VEG_COLOR_OK = Color3.fromRGB(120, 240, 120)
_v4.VEG_COLOR_NO = Color3.fromRGB(170, 170, 170)
_v4.VEG_COLOR_EATEN = Color3.fromRGB(120, 95, 60)
_v4.vegPool = {}
_v4.vegAllowCache = {}
_v4.VEG_CS = game:GetService(_pguo("/SFe7Mr/dBHRIGHl3eppG9s="))
function _v4.vegData()
if not _v4.vegCData then pcall(function() _v4.vegCData = require(_v4.WATER_RS.Shared.ConsumptionData) end) end
if not _v4.vegCState then pcall(function() _v4.vegCState = require(_v4.WATER_RS.Common.CharacterState) end) end
return _v4.vegCData, _v4.vegCState
end
function _v4.vegResolve(_v1f3)
local _v1f4 = _v1f3
for _v1f5 = 1, 3 do
if not _v1f4 or _v1f4 == workspace then break end
local _v1f6 = _v1f4:GetAttribute("ID")
if _v1f6 then return _v1f4, _v1f6 end
_v1f4 = _v1f4.Parent
end
return nil, nil
end
function _v4.vegAllowed(_v1f7)
local _v1f8 = _v4.vegAllowCache[_v1f7]
if _v1f8 ~= nil then return _v1f8 end
local _v1f9, _v1fa = _v4.vegData()
local _v1fb = false
pcall(function()
local _v1fc = _v1f9.FoliageConsumables[_v1f7]
local _v1fd = _v1fc and _v1fc.Actions
if type(_v1fd) == _pguo("yi9Q7Mo=") then
for _v1fe, _v1ff in ipairs(_v1fd) do
if type(_v1ff) == _pguo("yi9Q7Mo=") and _v1ff.Category
and _v1fa.Data.Diet.Categories[_v1ff.Category] ~= nil then
_v1fb = true
break
end
end
end
end)
_v4.vegAllowCache[_v1f7] = _v1fb
return _v1fb
end
function _v4.vegContainer()
if _v4.vegFolder and _v4.vegFolder.Parent then return _v4.vegFolder end
local _v1fg = _v2:FindFirstChild(_pguo("7iJT+cruRw3X"))
if not _v1fg then return nil end
local _v1fh = Instance.new(_pguo("+CFe5Mru"))
_v1fh.Name = _pguo("+y9I+ez0ZRnKPWTlyNlTKA==")
_v1fh.Parent = _v1fg
_v4.vegFolder = _v1fh
return _v1fh
end
function _v4.vegLabel(_v1fi, _v1fj)
local _v1fk = _v4.vegPool[_v1fi]
if _v1fk and _v1fk.bb.Parent then return _v1fk end
local _v1fl = Instance.new(_pguo("/Cde7M3zYQraCUfp"))
_v1fl.Name = _pguo("6CtVzM7+ZRQ=")
_v1fl.Size = UDim2.new(0, 160, 0, 20)
_v1fl.StudsOffset = Vector3.new(0, 2.5, 0)
_v1fl.AlwaysOnTop = true
_v1fl.LightInfluence = 0
_v1fl.Enabled = false
local _v1fm = Instance.new(_pguo("6itK9OP9Yh3S"))
_v1fm.Name = _pguo("8i9Q5cM=")
_v1fm.Size = UDim2.new(1, 0, 1, 0)
_v1fm.BackgroundTransparency = 1
_v1fm.Font = Enum.Font.GothamBold
_v1fm.TextSize = 12
_v1fm.TextStrokeTransparency = 0
_v1fm.TextStrokeColor3 = Color3.new(0, 0, 0)
_v1fm.Parent = _v1fl
_v1fl.Parent = _v1fj
_v1fk = { bb = _v1fl, lbl = _v1fm }
_v4.vegPool[_v1fi] = _v1fk
return _v1fk
end
function _v4.vegHideAll()
for _v1fn, _v1fo in pairs(_v4.vegPool) do
pcall(function() _v1fo.bb.Enabled = false; _v1fo.bb.Adornee = nil end)
end
end
table.insert(_vz, _v2.CharacterAdded:Connect(function()
_v4.vegAllowCache = {}
_v4.vegCState = nil
end))
_v4.addStep(30, function()
if _v4.UNLOADED then return end
if not _v4.VEG_ESP then
if _v4.vegFolder then _v4.vegHideAll() end
return
end
local _v1fp = _v4.getLocalRoot()
local _v1fq = _v4.vegContainer()
if not (_v1fp and _v1fq) then return end
local _v1fr = _v1fp.Position
local _v1fs = _v4.VEG_DISTANCE
_v4.vegInstCache = _v4.vegInstCache or {}
_v4.vegSweeps = (_v4.vegSweeps or 0) + 1
if _v4.vegSweeps % 60 == 0 then
for _v1ft in pairs(_v4.vegInstCache) do
if not _v1ft.Parent then _v4.vegInstCache[_v1ft] = nil end
end
end
local _v1fu, _v1fv = {}, {}
pcall(function()
for _v1fw, _v1fx in ipairs(_v4.VEG_CS:GetTagged(_pguo("+CFe6c77ZSvKPFfhwv1iFNs="))) do
local _v1fy = _v4.vegInstCache[_v1fx]
if not (_v1fy and _v1fy.part.Parent) then
local _v1fz, _v1g0 = _v4.vegResolve(_v1fx)
local _v1g1 = _v1g0 and (_v1fx:IsA(_pguo("/C9B5f/9cgw=")) and _v1fx or _v1fx:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="), true))
_v1fy = _v1g1 and { model = _v1fz, id = _v1g0, part = _v1g1 } or nil
_v4.vegInstCache[_v1fx] = _v1fy
end
local _v1g2, _v1g3 = _v1fy and _v1fy.model, _v1fy and _v1fy.id
if _v1g3 and not _v1fv[_v1g3] and _v1g2:IsDescendantOf(workspace) then
local _v1g4 = _v1fy.part
if _v1g4 then
_v1fv[_v1g3] = true
local _v1g5 = (_v1g4.Position - _v1fr).Magnitude
if _v1g5 <= _v1fs then
local _v1g6 = _v4.vegAllowed(_v1g2.Name)
local _v1g7 = _v4.khFoodOf(_v1g3)
local _v1g8
if _v1g7 then _v1g8 = (_v1g7 <= 0)
else _v1g8 = (_v1g2:GetAttribute(_pguo("7T5T98H5ZA==")) == false) end
if (_v1g6 or not _v4.VEG_DIET_ONLY) and not (_v1g8 and _v4.VEG_HIDE_EATEN) then
_v1fu[#_v1fu + 1] = { part = _v1g4, name = _v1g2.Name, d = _v1g5,
ok = _v1g6, eaten = _v1g8, food = _v1g7 }
end
end
end
end
end
end)
local function _v1g9(_v1ga)
return _v1ga.eaten and 1 or 0
end
table.sort(_v1fu, function(_v1gb, _v1gc)
local _v1gd, _v1ge = _v1g9(_v1gb), _v1g9(_v1gc)
if _v1gd ~= _v1ge then return _v1gd < _v1ge end
return _v1gb.d < _v1gc.d
end)
for _v1gf = 1, _v4.VEG_MAX do
local _v1gg = _v4.vegLabel(_v1gf, _v1fq)
local _v1gh = _v1fu[_v1gf]
if _v1gh then
_v1gg.bb.Adornee = _v1gh.part
_v1gg.bb.Enabled = true
local _v1gi = ""
if _v1gh.eaten then _v1gi = _pguo("nm4a5c7oZRaX")
elseif _v1gh.food then _v1gi = "  " .. math.floor(_v1gh.food) .. "f" end
_v1gg.lbl.Text = _v1gh.name .. _v1gi .. "  " .. math.floor(_v1gh.d) .. "m"
_v1gg.lbl.TextColor3 = _v1gh.eaten and _v4.VEG_COLOR_EATEN
or (_v1gh.ok and _v4.VEG_COLOR_OK or _v4.VEG_COLOR_NO)
else
_v1gg.bb.Enabled = false
_v1gg.bb.Adornee = nil
end
end
end)
end
_v4.UIS = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
_v4.IS_MOBILE = _v4.UIS.TouchEnabled and not _v4.UIS.KeyboardEnabled
pcall(function()
if type(getgenv) == _pguo("2Dtc49v1bxY=") and getgenv().EZ_FORCE_MOBILE then _v4.IS_MOBILE = true end
end)
_v4.mob = { fwd = false, back = false, left = false, right = false, up = false, down = false,
turnL = false, turnR = false, insta = false, trimUp = false, trimDown = false }
if _v4.IS_MOBILE then
local _v1gj = Color3.fromRGB(28, 22, 42)
local _v1gk = Color3.fromRGB(120, 70, 220)
local _v1gl = Instance.new(_pguo("7S1A5cryRw3X"))
_v1gl.Name = _pguo("+y9I+ez0ZRnKPWbv2v9o"); _v1gl.ResetOnSpawn = false; _v1gl.IgnoreGuiInset = true
_v1gl.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v1gl.Parent = (gethui and gethui()) or game:GetService(_pguo("/SFA5ejpaQ==")) end)
if not _v1gl.Parent then _v1gl.Parent = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
_v4.mobGui = _v1gl
local function _v1gm(_v1gn, _v1go, _v1gp, _v1gq, _v1gr)
local _v1gs = Instance.new(_pguo("6itK9O3pdAzRIA=="))
_v1gs.Name = _pguo("9iFe5PA=") .. _v1gp
_v1gs.Size = _v1gr or UDim2.new(0, 58, 0, 58)
_v1gs.Position = _v1gq
_v1gs.BackgroundColor3 = _v1gj
_v1gs.BackgroundTransparency = 0.25
_v1gs.BorderSizePixel = 0
_v1gs.Text = _v1go
_v1gs.TextColor3 = Color3.fromRGB(235, 225, 255)
_v1gs.Font = Enum.Font.GothamBold
_v1gs.TextSize = 18
_v1gs.AutoButtonColor = false
_v1gs.Parent = _v1gn
Instance.new(_pguo("6wdx793yZQo="), _v1gs).CornerRadius = UDim.new(0, 10)
local _v1gt = Instance.new(_pguo("6wdh9N3zax0="), _v1gs)
_v1gt.Color = Color3.fromRGB(150, 90, 255); _v1gt.Thickness = 1.5; _v1gt.Transparency = 0.4
local function _v1gu(_v1gv)
_v4.mob[_v1gp] = _v1gv
_v1gs.BackgroundColor3 = _v1gv and _v1gk or _v1gj
end
_v1gs.InputBegan:Connect(function(_v1gw)
if _v1gw.UserInputType == Enum.UserInputType.Touch
or _v1gw.UserInputType == Enum.UserInputType.MouseButton1 then _v1gu(true) end
end)
_v1gs.InputEnded:Connect(function(_v1gx)
if _v1gx.UserInputType == Enum.UserInputType.Touch
or _v1gx.UserInputType == Enum.UserInputType.MouseButton1 then _v1gu(false) end
end)
table.insert(_vz, _v1gs.MouseLeave:Connect(function() _v1gu(false) end))
return _v1gs
end
local function _v1gy(_v1gz, _v1h0, _v1h1, _v1h2)
local _v1h3 = Instance.new(_pguo("+DxT7co="))
_v1h3.Name = _v1gz; _v1h3.Size = UDim2.new(0, _v1h0, 0, _v1h1); _v1h3.Position = _v1h2
_v1h3.BackgroundTransparency = 1; _v1h3.Visible = false; _v1h3.Parent = _v1gl
return _v1h3
end
_v4.mobFlyPad = _v1gy(_pguo("+CJL0M74"), 200, 200, UDim2.new(0, 24, 1, -224))
_v1gm(_v4.mobFlyPad, _pguo("XNiA"), _pguo("2DlW"), UDim2.new(0, 62, 0, 0))
_v1gm(_v4.mobFlyPad, _pguo("XNmy"), _pguo("0itU9A=="), UDim2.new(0, 0, 0, 62))
_v1gm(_v4.mobFlyPad, _pguo("XNiE"), _pguo("zCdV6Ns="), UDim2.new(0, 124, 0, 62))
_v1gm(_v4.mobFlyPad, _pguo("XNiO"), _pguo("3C9R6w=="), UDim2.new(0, 62, 0, 124))
_v1gm(_v4.mobFlyPad, "+", "up", UDim2.new(0, 196, 0, 20), UDim2.new(0, 52, 0, 52))
_v1gm(_v4.mobFlyPad, _pguo("XMag"), _pguo("2iFF7g=="), UDim2.new(0, 196, 0, 104), UDim2.new(0, 52, 0, 52))
_v4.mobTurnPad = _v1gy(_pguo("6jtA7v/9ZA=="), 200, 70, UDim2.new(1, -224, 1, -100))
_v1gm(_v4.mobTurnPad, _pguo("XMiC"), _pguo("yjtA7uM="), UDim2.new(0, 0, 0, 0))
_v1gm(_v4.mobTurnPad, _pguo("XMiD"), _pguo("yjtA7v0="), UDim2.new(0, 68, 0, 0))
_v1gm(_v4.mobTurnPad, _pguo("XNm8"), _pguo("1yBB9M4="), UDim2.new(0, 136, 0, 0))
_v4.MOB_SHOW_TURN = true
_v4.addStep(10, function()
if _v4.UNLOADED then return end
local _v1h4 = _v4.FLY and true or false
if _v4.mobFlyPad.Visible ~= _v1h4 then _v4.mobFlyPad.Visible = _v1h4 end
local _v1h5 = _v4.MOB_SHOW_TURN and (_v4.QUICK_TURN or _v4.FLY) and true or false
if _v4.mobTurnPad.Visible ~= _v1h5 then _v4.mobTurnPad.Visible = _v1h5 end
end)
end
_v4.MENU_LAYOUT = {
MAIN = { _pguo("7TpT9Nw="), _pguo("/SFf4s7o"), _pguo("7Ctc5Mru"), _pguo("6iFd7Nw=") },
RENAME = { [_pguo("+yBT4sP5ID3tHg==")] = _pguo("7iJT+crucw=="),
[_pguo("7iJT+cruc1jRIBLNxvJpFd8+")] = _pguo("7iJT+crucw=="), [_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+")] = _pguo("/SFA8Nz5cw=="), [_pguo("+CFB88bwc1jRIBLNxvJpFd8+")] = _pguo("+CFB88bwcw=="),
[_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK")] = _pguo("+idB9M7yYx0="), [_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q==")] = _pguo("+idB9M7yYx0="), [_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK")] = _pguo("+idB9M7yYx0="),
[_pguo("8itV6du8QQ7RJ1ag/f1kEcs9")] = _pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="), [_pguo("8itV6du8Ug3Qbnbp3OhhFt0r")] = _pguo("7DtcoOv1cwzfIFHl"),
[_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK")] = _pguo("7StT8sz0IDzXPUbhwf9l"), [_pguo("8itV6du8TB3fOFeg/P9yGc49")] = _pguo("8itT9sq8UxvML0Lz"),
[_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM=")] = _pguo("+CJX5Y/achfTbmLszuVlCs0="), [_pguo("8itV6du8VRbNOkfjxA==")] = _pguo("6yBB9Nr/a1iWCF75j9N1DJc="),
[_pguo("8itV6du8Uh3NOhLUwLxIHd8i")] = _pguo("7CtB9I/Ib1j2K1Ps"), [_pguo("8itV6du8QRzTJ1yg5PVjEw==")] = _pguo("/ypf6cG8SxHdJQ=="),
[_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB")] = _pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"), [_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc")] = _pguo("+CJLoO7rYQGeHFPkxulz") },
SUB_MAIN = {
[_pguo("+CFB88bwID7fPF8=")] = _pguo("/ztG7+n9chU="), [_pguo("/ztG78n9chU=")] = _pguo("7TpT9Nw="), [_pguo("/ztG74/PcBnJIA==")] = _pguo("/ztG7+n9chU="),
[_pguo("9idG4sDkID3GPlPuy/ly")] = _pguo("/SFf4s7o"), [_pguo("7CtT48c=")] = _pguo("/SFf4s7o"), [_pguo("/zpG4cz3ICzRIV7z")] = _pguo("/SFf4s7o"),
[_pguo("+x1i")] = _pguo("7Ctc5Mru"), [_pguo("6SFA7Ms=")] = _pguo("7Ctc5Mru"), [_pguo("6iFd7Nw=")] = _pguo("7Ctc5Mru"),
[_pguo("7S9E5Y/YaRbR")] = _pguo("6iFd7Nw="), [_pguo("8yFE5cL5bgw=")] = _pguo("6iFd7Nw="), [_pguo("8yFWoOz0ZRvV")] = _pguo("6iFd7Nw="), [_pguo("/SFc5sb7")] = _pguo("6iFd7Nw="),
},
WHERE = {
[_pguo("/wh5oOn9chU=")] = _pguo("/ztG7+n9chU="), [_pguo("8itV6du8RhnMIw==")] = _pguo("/ztG7+n9chU="), [_pguo("/ztG74/PdxHKLVqg6/VuFw==")] = _pguo("/ztG7+n9chU="), [_pguo("+C9A7Y/IaRXbPA==")] = _pguo("/ztG7+n9chU="), [_pguo("/wh5oO7xYh3MbnTh3fE=")] = _pguo("/ztG7+n9chU="), [_pguo("7CtY78by")] = _pguo("/ztG7+n9chU="), [_pguo("/yBG6Y/dRjM=")] = _pguo("/ztG7+n9chU="), [_pguo("+B5hoPz9dh3M")] = _pguo("/ztG7+n9chU="), [_pguo("/ztG74/bchfJ")] = _pguo("6iFd7Nw="),
[_pguo("7SZd94/RbxzLIleg4/VzDA==")] = _pguo("6iFd7Nw="), [_pguo("7TpT9Ny8QxnMKg==")] = _pguo("6iFd7Nw="), [_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A==")] = _pguo("6iFd7Nw="),
[_pguo("6yBe6cL1dB3abmjvwPE=")] = _pguo("6iFd7Nw="), [_pguo("+AFkoOz0YRbZK0A=")] = _pguo("6iFd7Nw="),
[_pguo("8ydc6cL9cA==")] = _pguo("6iFd7Nw="),
},
NEST = {
[_pguo("+CFB88bwID7fPF8=")] = { _pguo("+CFB88bwID7fPF+g/OxlHdo=") },
[_pguo("+CFA48q8RRnK")] = { _pguo("+C9B9I/ZYQw="), _pguo("+y9GoODybAGeGVrlwbxIDdApQPk="), _pguo("8itT9sq8UxvML0Lz") },
[_pguo("/wh5oOn9chU=")] = { _pguo("+C9A7Y/PcB3bKg=="), _pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="), _pguo("7Sdf9cP9dB2eGVPsxPVuHw=="), _pguo("7S9U5dvlIFD2J1blj7ogMNsvXqk="), _pguo("/ypf6cG8SxHdJQ=="), _pguo("+CJX5Y/achfTbmLszuVlCs0="), _pguo("6yBB9Nr/aw==") },
[_pguo("8itV6du8RhnMIw==")] = { _pguo("8itV6du8QQ7RJ1ag/f1kEcs9"), _pguo("8itV6du8Ug3Qbnbp3OhhFt0r"), _pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"), _pguo("8itV6du8TB3fOFeg/P9yGc49"),
_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="), _pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"), _pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"), _pguo("8itV6du8VRbNOkfjxA=="),
_pguo("8itV6du8Uh3NOhLUwLxIHd8i"), _pguo("8itV6du8QRzTJ1yg5PVjEw==") },
[_pguo("/ztG74/PdxHKLVqg6/VuFw==")] = { _pguo("7Tlb9Mz0ICvSIUagng=="), _pguo("7Tlb9Mz0ICvSIUagnQ=="), _pguo("7Tlb9Mz0ICvSIUagnA=="), _pguo("7Tlb9Mz0ICvSIUagmw=="), _pguo("7Tlb9Mz0ICvSIUagmg=="),
_pguo("7Tlb9Mz0ICvSIUagmQ=="), _pguo("7Tlb9Mz0ID/bIFbl3Q=="), _pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="), _pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="), _pguo("+Cdc6dz0ZRyeClvuwO8=") },
[_pguo("+C9A7Y/IaRXbPA==")] = { _pguo("8itT9sq8QR7KK0Cgh/FpFss6V/OG") },
[_pguo("/wh5oO7xYh3MbnTh3fE=")] = { _pguo("/yNQ5d28QT71bmbpwvkgUNMnXPXb+XNR") },
[_pguo("7CtY78by")] = { _pguo("7CtY78byIDXfPg==") },
[_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g==")] = { _pguo("6CdB9c7waQLbbnrp2/5vANs9"), _pguo("6CdB9c7wIDfOL1Hp2+U="), _pguo("9idG4sDkIDXLIkbp3/BpHcw="), _pguo("9idG4sDkID3GPlPuy/lyV+4vQPTc") },
[_pguo("+yBT4sP5ICrbL1Ho")] = { _pguo("6CdB9c7waQLbbmDlzv9o"), _pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="), _pguo("7CtT48e8TQ3SOlvww/VlCg=="), _pguo("7CtT48ezUBnMOkE=") },
[_pguo("9yBB9M7ydFj/OkbhzPc=")] = { _pguo("/zpG4cz3ICvOK1fk") },
[_pguo("+yBT4sP5ICvXIlfu27xBEdM=")] = { _pguo("/zpG4cz3ICzRIV7zgMxhCso9") },
[_pguo("7S9E5Y/YaRbR")] = { _pguo("7S9E5Y/YaQrbLUbpwPI="), _pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"), _pguo("9yBR7Nr4ZVj8Ilflyw=="), _pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK") },
[_pguo("+CJL")] = { _pguo("+CJLoPzsZR3a") },
[_pguo("7ztb48S8VA3MIA==")] = { _pguo("6jtA7o/PdArbIFX0xw==") },
[_pguo("+yBT4sP5ID3tHg==")] = { _pguo("7SZd94/SYRXb"), _pguo("7SZd94/YaRbRbmb53/k="), _pguo("7SZd94/PdBnZKw=="), _pguo("7SZd94/bZRbaK0A="), _pguo("7SZd94/UZRnSOlo="), _pguo("7SZd94/PdBnTJ1zh"),
_pguo("+CFd5I/eYQo="), _pguo("+CFd5I/SdRXcK0A="), _pguo("6S9G5d28QhnM"), _pguo("6S9G5d28Tg3TLFfy"), _pguo("9yBU5czoaRfQbnDh3Q=="), _pguo("9yBU5czoaRfQbnz1wv5lCg=="),
_pguo("7SZd94/LZRHZJkY="), _pguo("/CJX5cu8RSvu"), _pguo("7i9R64/ZUyg="), _pguo("7i9R64/QZRnaK0Cg6s9Q"), _pguo("7SZd94/YaQvKL1zjyg=="), _pguo("6itK9I/UaR/WIlvnx+g="),
_pguo("6itK9I/PaQLb"), _pguo("9itT7Nv0IDrfPBLIyvVnEMo="), _pguo("9itT7Nv0IDrfPBLXxvh0EA=="), _pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"), _pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),
_pguo("+x1ioOv1cwzfIFHl"), _pguo("+yBT4sP5IDvWL1/z") },
[_pguo("+yBT4sP5IDvWL1/z")] = { _pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="), _pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc=") },
[_pguo("7SZd94/fbwrOPVfz")] = { _pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"), _pguo("/SFA8Nz5IDzXPUbhwf9l"), _pguo("7SZd94/Vbh7bLUbpwPI=") },
[_pguo("7SZd94/RZRnK")] = { _pguo("8ytT9I/YaQvKL1zjyg==") },
[_pguo("+AFkoOz0YRbZK0A=")] = { _pguo("+AFk") },
[_pguo("7TpT9Ny8QxnMKg==")] = { _pguo("+idc74/SYRXb"), _pguo("+Txd99v0ICvKL1Xl"), _pguo("8y9B84/bYRHQbn/1w+hpCNInV/I="), _pguo("6Stb58fo"), _pguo("+Txd99v0ICzXI1fy"), _pguo("8DtG8sboaRfQbmH0zuhz"),
_pguo("6Ste7M35aRbZbmH0zuhz"), _pguo("+jxT54/PdBnKPRLDzu5k"), _pguo("9idW5Y/LaBHSKxLNyvJ1WPE+V+4=") },
[_pguo("/TtB9MDxICzXI1c=")] = { _pguo("9iFH8g=="), _pguo("7ztb48S8Ux3K") },
[_pguo("7SNT7MO8RhfNPVvs3A==")] = { _pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK") },
[_pguo("8ytW6drxID7RPUHpw+8=")] = { _pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q==") },
[_pguo("8i9A58q8RhfNPVvs3A==")] = { _pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK") },
[_pguo("6CtV5dv9dBHRIBLF/Mw=")] = { _pguo("8SBe+Y/ReVj6J1f0"), _pguo("9idW5Y/ZYQzbIBLQw/1uDM0="), _pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="), _pguo("8y9KoOP9Yh3SPQ==") },
[_pguo("7SZd94/fbBnHbnbl3/NzEco9")] = { _pguo("/SJT+Y/YaQvKL1zjyg==") },
[_pguo("8yFWoOz0ZRvV")] = { _pguo("/ztG74/QZRnIKw==") },
[_pguo("8ydc6cL9cA==")] = { _pguo("7iJT+cruc1jRIBLNxvJpFd8+"), _pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"), _pguo("+CFB88bwc1jRIBLNxvJpFd8+") },
},
ORDER = {
AutoFarm = { _pguo("+CFB88bwID7fPF8="), _pguo("/wh5oOn9chU="), _pguo("8itV6du8RhnMIw=="), _pguo("/ztG74/PdxHKLVqg6/VuFw=="), _pguo("+C9A7Y/IaRXbPA=="), _pguo("/wh5oO7xYh3MbnTh3fE="), _pguo("7CtY78by"), _pguo("/ztG74/PcBnJIA==") },
Stats = { _pguo("+CFA48q8RRnK"), _pguo("/ztG74/LYQzbPA=="), _pguo("/ztG74/fbB3fIF7pwflzCw=="), _pguo("9yBU6cH1dB2eAUr5yPlu"), _pguo("+DxX5dX5ID7RIVY="), _pguo("+DxX5dX5IC/fOlfy") },
},
HEADERS = {},
LOCKED = {
_pguo("+CFB88bwID7fPF8="), _pguo("/wh5oOn9chU="), _pguo("8itV6du8RhnMIw=="), _pguo("/ztG74/PdxHKLVqg6/VuFw=="), _pguo("+C9A7Y/IaRXbPA=="), _pguo("/wh5oO7xYh3MbnTh3fE="), _pguo("7CtY78by"), _pguo("/ztG74/PcBnJIA=="), _pguo("/yBG6Y/dRjM="), _pguo("+B5hoPz9dh3M"),
_pguo("+CFA48q8RRnK"),
_pguo("8CESwdvoYRvVbnHvwPBkF8kg"),
_pguo("/TtB9MDxICzXI1c="), _pguo("8CESwsPpcg=="), _pguo("7SVb7g=="), _pguo("+CdB6I/ZUyg="), _pguo("7SZd94/Vbh7bLUbpwPI="),
_pguo("+CJL"), _pguo("9yBB9M68VA3MIA=="), _pguo("7ztb48S8VA3MIA=="), _pguo("7SZd94/IdQrQbnD12+hvFs0="), _pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"), _pguo("9yBR7Nr4ZVj8Ilflyw=="), _pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"), _pguo("/ztG74/QZRnIKw=="), _pguo("7TpT9Ny8QxnMKg=="), _pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="), _pguo("7SZd94/RbxzLIleg4/VzDA=="), _pguo("8ydc6cL9cA=="), _pguo("6yBe6cL1dB3abmjvwPE="), _pguo("+AFkoOz0YRbZK0A="),
},
}
table.insert(_v4.MENU_LAYOUT.LOCKED, _pguo("7CtY78by"))
function _v4.freeLock()
_v4.FOSSIL_FARM, _v4.AFK_FARM, _v4.ANTI_AFK, _v4.FORCE_EAT = false, false, false, false
_v4.LEGIT_FARM, _v4.AUTO_SWITCH, _v4.FARM_TIMER, _v4.CORPSE_INF_ESP = false, false, false, false
_v4.AMBER_FARM, _v4.REJOIN = false, false
_v4.FPS_SAVER = false
_v4.NO_ATK_COOLDOWN, _v4.FISH_ESP, _v4.NO_BLUR = false, false, false
_v4.SKIN_SELECTED = _pguo("+itU4drwdA==")
_v4.FLY, _v4.QUICK_TURN, _v4.MOB_SHOW_TURN = false, false, false
_v4.AUTO_SAVE, _v4.AUTO_SAVE_BLEED, _v4.MOD_KICK = false, false, false
_v4.STATS_CARD, _v4.SHOW_INDICATORS, _v4.MMAP_ON = false, false, false
_v4.UNLIMITED_ZOOM, _v4.FOV_ENABLED = false, false
if (tonumber(_v4.HITBOX_MULTIPLIER) or 1) > 5 then _v4.HITBOX_MULTIPLIER = 5 end
if (tonumber(_v4.REACH_MULTIPLIER) or 1) > 5 then _v4.REACH_MULTIPLIER = 5 end
end
_v4.freeLock()
function _v4.displayName(_v1h6)
local _v1h7 = (tostring(_v1h6 or ""):gsub(_pguo("4GtBqw=="), ""):gsub(_pguo("mz0ZpA=="), ""))
local _v1h8 = _v4.MENU_LAYOUT.RENAME and _v4.MENU_LAYOUT.RENAME[_v1h7]
return _v1h8 or (_v1h7:gsub(_pguo("4Atc4c3wZV3NZQ=="), ""))
end
function _v4.ezBridge(_v1h9)
local _v1ha = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
local _v1hb = game:GetService(_pguo("7Dtc08rudhHdKw=="))
local _v1hc = _v4.MENU_LAYOUT
local _v1hd = { Caps = { sectionInfo = true } }
local function _v1he(_v1hf)
return (tostring(_v1hf or ""):gsub(_pguo("4GtBqw=="), ""):gsub(_pguo("mz0ZpA=="), ""))
end
local function _v1hg(_v1hh)
local _v1hi, _v1hj = {}, nil
for _v1hk in (tostring(_v1hh) .. "\n"):gmatch(_pguo("lmAfqaU=")) do
local _v1hl, _v1hm = _v1hk:match(_pguo("4GtBqofHXkLjZRu6iu8qUJBlG6Q="))
if _v1hl and #_v1hl <= 40 then
_v1hj = _v1he(_v1hl)
_v1hi[_v1hj] = _v1hm
elseif _v1hj and _v1hk:match("%S") then
_v1hi[_v1hj] = _v1hi[_v1hj] .. " " .. _v1hk
else
_v1hj = nil
end
end
return _v1hi
end
local function _v1hn(_v1ho)
local _v1hp = {}
function _v1hp:Set(_v1hq, _v1hr)
_v1hq = _v1hq and true or false
if _v1hr then pcall(function() _v1ho:Set(_v1hq) end) return end
_v1ho.Enabled = _v1hq
pcall(_v1ho.Callback, _v1hq)
pcall(function() _v1ho:_applyVisual() end)
end
function _v1hp:SetKey(_v1hs, _v1ht)
if typeof(_v1hs) == _pguo("+yBH7eboZRU=") and _v1hs ~= Enum.KeyCode.Unknown then
_v1ho:SetKeybind(_v1hs.Name)
else
_v1ho.Keybind = nil
pcall(function()
_v1ho._kbBtn.Text = _pguo("kGAc")
_v1ho:_markBound(false)
end)
end
end
return setmetatable(_v1hp, { __index = function(_v1hu, _v1hv)
if _v1hv == _pguo("9StL") then return _v1ho.Keybind or Enum.KeyCode.Unknown end
if _v1hv == _pguo("6C9e9co=") or _v1hv == _pguo("7TpT9Mo=") then return _v1ho.Enabled end
return nil
end })
end
local function _v1hw(_v1hx, _v1hy, _v1hz)
local _v1i0 = _v1hy.Callback or function() end
local _v1i1 = _v1hx:AddSubToggle({ Name = _v4.displayName(_v1hy.Name), Default = _v1hy.Default and true or false, Tooltip = _v1hz, Callback = _v1i0 })
local _v1i2 = {}
function _v1i2:Set(_v1i3, _v1i4)
if not _v1i4 then pcall(_v1i0, _v1i3 and true or false) end
pcall(function() _v1i1:Set(_v1i3, false) end)
end
function _v1i2:SetKey() end
return setmetatable(_v1i2, { __index = function(_v1i5, _v1i6)
if _v1i6 == _pguo("9StL") then return Enum.KeyCode.Unknown end
if _v1i6 == _pguo("6C9e9co=") or _v1i6 == _pguo("7TpT9Mo=") then return _v1i1.Value end
return nil
end })
end
local function _v1i7(_v1i8, _v1i9)
local _v1ia = _v1i9.Callback or function() end
local _v1ib = _v1i8:AddSlider({
Name = _v4.displayName(_v1i9.Name), Min = _v1i9.Min, Max = _v1i9.Max, Default = _v1i9.Default,
Step = _v1i9.Increment or 1, Callback = _v1ia,
})
local _v1ic = {}
function _v1ic:Set(_v1id, _v1ie)
pcall(function() _v1ib:Set(_v1id) end)
if not _v1ie then pcall(_v1ia, _v1ib.Value ~= nil and _v1ib.Value or _v1id) end
end
return setmetatable(_v1ic, { __index = function(_v1if, _v1ig)
if _v1ig == _pguo("6C9e9co=") then return _v1ib.Value end
return nil
end })
end
local function _v1ih(_v1ii, _v1ij)
local _v1ik = _v1ij.Callback or function() end
local _v1il = _v1ii:AddDropdown({
Name = _v1he(_v1ij.Name), Options = _v1ij.Items or _v1ij.Options or {}, Default = _v1ij.Default, Callback = _v1ik,
})
local _v1im = {}
function _v1im:Set(_v1in, _v1io)
pcall(function() _v1il:Set(_v1in) end)
if not _v1io then pcall(_v1ik, _v1in) end
end
function _v1im:Refresh(_v1ip, _v1iq)
_v1il:Refresh(_v1ip or {})
end
return setmetatable(_v1im, { __index = function(_v1ir, _v1is)
if _v1is == _pguo("7Ste5czoZRw=") then return _v1il.Selected end
return nil
end })
end
local function _v1it(_v1iu, _v1iv)
local _v1iw = _v1iv.Callback or function() end
local _v1iy = _v1iu:AddDropdown({
Name = _v1he(_v1iv.Name), Options = _v1iv.Items or _v1iv.Options or {}, Multi = true, Default = _v1iv.Default,
Callback = function(_v1ix) pcall(_v1iw, _v1ix) end,
})
local _v1iz = {}
function _v1iz:Set(_v1j0, _v1j1)
_v1iy:Set(type(_v1j0) == _pguo("yi9Q7Mo=") and _v1j0 or {}, not _v1j1)
end
function _v1iz:Refresh(_v1j2, _v1j3)
if not _v1j3 then _v1iy:Set({}, false) end
_v1iy:Refresh(_v1j2 or {})
end
return setmetatable(_v1iz, { __index = function(_v1j4, _v1j5)
if _v1j5 == _pguo("7Ste5czoZRw=") then
local _v1j6 = {}
for _v1j7 in pairs(_v1iy.Selected or {}) do _v1j6[_v1j7] = true end
return _v1j6
end
return nil
end })
end
local function _v1j8(_v1j9, _v1ja)
local _v1jb = _v1he(_v1ja.Name or _pguo("9StL4sbyZA=="))
local _v1jc = _v1ja.Changed or _v1ja.Callback or function() end
local _v1jd = { Key = typeof(_v1ja.Default) == _pguo("+yBH7eboZRU=") and _v1ja.Default or Enum.KeyCode.Unknown }
local _v1je
local function _v1jf(_v1jg)
if _v1je then
_v1je.Text = _v1jg or (_v1jb .. _pguo("hG4S") .. (_v1jd.Key == Enum.KeyCode.Unknown and _pguo("0CFc5Q==") or _v1jd.Key.Name))
end
end
local _v1jh = false
local row = _v1j9:AddButton({
Name = _v1jb,
Callback = function()
if _v1jh then return end
_v1jh = true
_v1jf(_v1jb .. _pguo("hG4S8N35cwueLxLryuUgUPs9UaDM8GUZzD0b"))
local _v1ji
_v1ji = _v1ha.InputBegan:Connect(function(_v1jj)
if _v1jj.UserInputType ~= Enum.UserInputType.Keyboard then return end
_v1ji:Disconnect()
_v1jh = false
_v1jd.Key = (_v1jj.KeyCode == Enum.KeyCode.Escape) and Enum.KeyCode.Unknown or _v1jj.KeyCode
_v1jf()
pcall(_v1jc, _v1jd.Key)
end)
end,
})
for _v1jk, _v1jl in ipairs(row:GetChildren()) do
if _v1jl:IsA(_pguo("6itK9OP9Yh3S")) and _v1jl.Text == _v1jb then
_v1je = _v1jl
break
end
end
_v1jf()
function _v1jd:Set(_v1jm, _v1jn)
if typeof(_v1jm) == _pguo("+yBH7eboZRU=") then _v1jd.Key = _v1jm end
_v1jf()
if not _v1jn then pcall(_v1jc, _v1jd.Key) end
end
return _v1jd
end
local function _v1jo()
return setmetatable({}, { __index = function(_v1jp, _v1jq)
if _v1jq == _pguo("9StL") then return Enum.KeyCode.Unknown end
if _v1jq == _pguo("6C9e9co=") or _v1jq == _pguo("7TpT9Mo=") then return false end
if _v1jq == _pguo("7Ste5czoZRw=") then return {} end
return function() end
end })
end
local function _v1jr(_v1js, _v1jt)
local _v1ju, _v1jv, _v1jw = {}, {}, nil
local function _v1jx(_v1jy)
local _v1jz = _v1he(_v1jy)
return _v1js.locked[_v1jz] or _v1js.locked[_v1jt .. "/" .. _v1jz]
end
local function _v1k0(_v1k1, _v1k2)
local _v1k3 = _v1he(_v1k1)
if _v1k2 then
local _v1k4 = _v1js.parentOf[_v1jt .. "/" .. _v1k3] or _v1js.parentOf[_v1k3]
local _v1k5 = _v1k4 and _v1js.masters[_v1k4]
if _v1k5 then return _v1k5, true end
end
local _v1k6 = _v1hc.WHERE[_v1k3] or _v1hc.SUB_MAIN[_v1jt] or _v1hc.MAIN[#_v1hc.MAIN]
if not _v1js.tabs[_v1k6] then _v1js.tabs[_v1k6] = _v1js.win:AddTab(_v1k6) end
local _v1k7 = _v1js.tabs[_v1k6]
local _v1k8 = _v1hc.HEADERS[_v1k6]
local _v1k9 = _v1k8 and _v1jw and _v1k8[_v1jw]
if _v1k9 and _v1js.lastHeader[_v1k6] ~= _v1k9 then
_v1k7:AddSection(_v1k9)
_v1js.lastHeader[_v1k6] = _v1k9
end
return _v1k7, false, _v1k6
end
function _v1ju:AddSection(_v1ka)
_v1jw = type(_v1ka) == _pguo("yi9Q7Mo=") and _v1ka.Name or _v1ka
_v1jv = (type(_v1ka) == _pguo("yi9Q7Mo=") and _v1ka.Info) and _v1hg(_v1ka.Info) or {}
return nil
end
function _v1ju:AddToggle(_v1kb)
_v1kb = _v1kb or {}
if _v1jx(_v1kb.Name) then return _v1jo() end
local _v1kc, _v1kd, _v1ke = _v1k0(_v1kb.Name, true)
if _v1kd then
local _v1kf = _v1he(_v1kb.Name)
if not _v1js.hasKids[_v1kf] then return _v1hw(_v1kc, _v1kb, _v1kb.Tooltip or _v1jv[_v1kf]) end
local _v1kg = _v1kc:AddToggle({
Name = _v4.displayName(_v1kf),
Default = false,
Tooltip = _v1kb.Tooltip or _v1jv[_v1kf],
Callback = _v1kb.Callback or function() end,
})
if _v1kb.Default then _v1kg:Set(true) end
_v1js.masters[_v1kf] = _v1kg
return _v1hn(_v1kg)
end
local _v1kh = _v1he(_v1kb.Name)
local _v1ki = _v1kc:AddToggle({
Name = _v4.displayName(_v1kh),
Default = false,
Keybind = type(_v1kb.Keybind) == _pguo("zTpA6cH7") and _v1kb.Keybind or nil,
Tooltip = _v1kb.Tooltip or _v1jv[_v1kh],
Callback = _v1kb.Callback or function() end,
})
if _v1kb.Default then _v1ki:Set(true) end
_v1js.masters[_v1kh] = _v1ki
local _v1kj = _v1js.rank[_v1ke] and _v1js.rank[_v1ke][_v1kh]
if _v1kj then _v1ki._container.LayoutOrder = _v1kj - 100000 end
return _v1hn(_v1ki)
end
function _v1ju:AddSlider(_v1kk)
_v1kk = _v1kk or {}
if _v1jx(_v1kk.Name) then return _v1jo() end
return _v1i7(_v1k0(_v1kk.Name, true), _v1kk)
end
function _v1ju:AddDropdown(_v1kl)
_v1kl = _v1kl or {}
if _v1jx(_v1kl.Name) then return _v1jo() end
local _v1km = _v1k0(_v1kl.Name, true)
if _v1kl.Multi then return _v1it(_v1km, _v1kl) end
return _v1ih(_v1km, _v1kl)
end
function _v1ju:AddButton(_v1kn)
_v1kn = _v1kn or {}
if _v1jx(_v1kn.Name) then return _v1jo() end
return (_v1k0(_v1kn.Name, false)):AddButton({ Name = _v1he(_v1kn.Name), Callback = _v1kn.Callback })
end
function _v1ju:AddLabel(_v1ko)
_v1ko = _v1ko or {}
if _v1jx(_v1ko.Name) then return _v1jo() end
local _v1kp
pcall(function()
local _v1kq, _v1kr = _v1k0(_v1ko.Name, true)
if _v1kr and _v1kq.AddNote then
_v1kp = _v1kq:AddNote(_v1ko.Text or "")
elseif not _v1kr and _v1kq.AddLabel then
_v1kp = _v1kq:AddLabel(_v1ko.Text or "")
end
end)
return { SetText = function(_v1ks, _v1kt)
pcall(function()
if typeof(_v1kp) == _pguo("9yBB9M7yYx0=") then _v1kp.Text = tostring(_v1kt)
elseif _v1kp and _v1kp.SetText then _v1kp:SetText(tostring(_v1kt)) end
end)
end }
end
function _v1ju:AddKeybind(_v1ku)
_v1ku = _v1ku or {}
if _v1jx(_v1ku.Name) then return _v1jo() end
return _v1j8((_v1k0(_v1ku.Name, false)), _v1ku)
end
return _v1ju
end
function _v1hd.new(_v1kv)
_v1kv = _v1kv or {}
local _v1kw = (type(getgenv) == _pguo("2Dtc49v1bxY=")) and getgenv() or _G
if _v1kw.__PX_EZ_WIN then
pcall(function()
_v1kw.__PX_EZ_WIN.OnUnload = nil
_v1kw.__PX_EZ_WIN:Destroy()
end)
end
local _v1kx = { tabs = {}, toggleKey = Enum.KeyCode.RightShift }
local _v1ky = false
local _v1kz = _pguo("7hZtxfXach3bA1313Pk=")
local _v1l0 = false
local _v1l1, _v1l2 = _v1ha.MouseBehavior, _v1ha.MouseIconEnabled
local _v1l3 = {}
pcall(function()
_v1l3[1] = _v1ha:GetPropertyChangedSignal(_pguo("8yFH88reZRDfOFvv3Q==")):Connect(function()
local _v1l4 = _v1ha.MouseBehavior
if not _v1l0 or _v1l4 ~= Enum.MouseBehavior.Default then _v1l1 = _v1l4 end
end)
_v1l3[2] = _v1ha:GetPropertyChangedSignal(_pguo("8yFH88rVYxfQC1zhzfBlHA==")):Connect(function()
local _v1l5 = _v1ha.MouseIconEnabled
if not _v1l0 or not _v1l5 then _v1l2 = _v1l5 end
end)
end)
local function _v1l6()
_v1ha.MouseBehavior = _v1l1
_v1ha.MouseIconEnabled = _v1l2
end
local function _v1l7()
pcall(function() _v1hb:UnbindFromRenderStep(_v1kz) end)
for _v1l8, _v1l9 in ipairs(_v1l3) do pcall(function() _v1l9:Disconnect() end) end
if _v1l0 then
_v1l0 = false
pcall(_v1l6)
end
end
local _v1la = _v1h9:CreateWindow({
Title = _v1kv.Title or _pguo("+y9I+ez0ZRnKPQ=="),
Website = _pguo("2y9I+cz0ZRnKPRzjwPE="),
Discord = _pguo("2idB48DuZFbZKR31+cRRLPkrVPbe"),
OnUnload = function()
if _v1ky then return end
_v1ky = true
if _v1kx.onUnload then pcall(_v1kx.onUnload) end
_v1l7()
end,
})
_v1kw.__PX_EZ_WIN = _v1la
local _v1lb = {}
for _v1lc, _v1ld in pairs(_v1hc.NEST) do
for _v1le, _v1lf in ipairs(_v1ld) do _v1lb[_v1lf] = _v1lc end
end
local _v1lg = {}
for _v1lh, _v1li in pairs(_v1hc.ORDER or {}) do
_v1lg[_v1lh] = {}
for _v1lj, _v1lk in ipairs(_v1li) do _v1lg[_v1lh][_v1lk] = _v1lj end
end
local _v1ll = {}
for _v1lm in pairs(_v1hc.NEST) do _v1ll[_v1lm] = true end
local _v1ln = {}
local function _v1lo(_v1lp)
if _v1ln[_v1lp] then return end
_v1ln[_v1lp] = true
for _v1lq, _v1lr in ipairs(_v1hc.NEST[_v1lp] or {}) do _v1lo(_v1lr) end
end
for _v1ls, _v1lt in ipairs(_v1hc.LOCKED or {}) do _v1lo(_v1lt) end
local _v1lu = { win = _v1la, tabs = {}, masters = {}, parentOf = _v1lb, lastHeader = {}, rank = _v1lg, hasKids = _v1ll, locked = _v1ln }
for _v1lv, _v1lw in ipairs(_v1hc.MAIN) do _v1lu.tabs[_v1lw] = _v1la:AddTab(_v1lw) end
local _v1lx = _v1ha.TouchEnabled and not _v1ha.KeyboardEnabled
if not _v1lx then
local _v1ly = Instance.new(_pguo("6itK9O3pdAzRIA=="))
_v1ly.Name = _pguo("7hZtzcD4YRQ=")
_v1ly.Modal = true
_v1ly.Text = ""
_v1ly.AutoButtonColor = false
_v1ly.BackgroundTransparency = 1
_v1ly.Size = UDim2.new(0, 1, 0, 1)
_v1ly.Visible = false
_v1ly.Parent = _v1la._gui
pcall(function()
_v1hb:BindToRenderStep(_v1kz, Enum.RenderPriority.Camera.Value + 1, function()
if _v1la._gui and _v1la._visible then
if not _v1l0 then
_v1l0 = true
_v1ly.Visible = true
else
if _v1ha.MouseBehavior ~= Enum.MouseBehavior.Default then _v1l1 = _v1ha.MouseBehavior end
if not _v1ha.MouseIconEnabled then _v1l2 = false end
end
_v1ha.MouseBehavior = Enum.MouseBehavior.Default
_v1ha.MouseIconEnabled = true
elseif _v1l0 then
_v1l0 = false
_v1ly.Visible = false
_v1l6()
end
end)
end)
end
function _v1kx:IsVisible()
return _v1la._gui ~= nil and _v1la._visible == true
end
function _v1kx:Notify(_v1lz, _v1m0)
if _v1la._gui then return _v1la:Notify(_v1lz, _v1m0 or 3) end
return nil
end
function _v1kx:SetConfig(_v1m1)
return _v1la:SetConfig(_v1m1)
end
function _v1kx:Destroy()
_v1ky = true
_v1l7()
pcall(function() _v1la:Destroy() end)
if _v1kw.__PX_EZ_WIN == _v1la then _v1kw.__PX_EZ_WIN = nil end
end
function _v1kx:AddTab(_v1m2)
local _v1m3 = {}
function _v1m3:AddSubTab(_v1m4)
return _v1jr(_v1lu, type(_v1m4) == _pguo("yi9Q7Mo=") and _v1m4.Name or tostring(_v1m4))
end
return _v1m3
end
_v1kx.tabs.Settings = _v1jr(_v1lu, _pguo("/SFc5sb7"))
return _v1kx
end
return _v1hd
end
function _v4.loadLibrary()
local _v1m5 = _pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaQ==")
local _v1m6 = _pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO")
local function _v1m7(_v1m8, _v1m9)
local _v1ma, _v1mb = loadstring(_v1m8)
if not _v1ma then return nil, _v1m9 .. _pguo("nihT6cP5ZFjKIRLjwPFwEdIrCKA=") .. tostring(_v1mb) end
local _v1mc, _v1md = pcall(_v1ma)
if _v1mc and type(_v1md) == _pguo("yi9Q7Mo=") then return _v4.ezBridge(_v1md) end
return nil, _v1m9 .. _pguo("nitA8sDuZRyEbg==") .. tostring(_v1md)
end
local _v1me, _v1mf = pcall(function()
if type(isfile) == _pguo("2Dtc49v1bxY=") and not isfile(_v1m6) then return nil end
return readfile(_v1m6)
end)
if _v1me and type(_v1mf) == _pguo("zTpA6cH7") and #_v1mf > 0 then return _v1m7(_v1mf, _pguo("8iFR4cO8RSKeCWfJ")) end
local _v1mg = _pguo("yyBZ7sDrbljbPEDv3Q==")
for _v1mh = 1, 3 do
local _v1mi, _v1mj = pcall(function() return game:HttpGet(_v1m5) end)
if _v1mi and type(_v1mj) == _pguo("zTpA6cH7") and #_v1mj > 0 and not _v1mj:find(_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A==")) then
local _v1mk, _v1ml = _v1m7(_v1mj, _pguo("+xQSx/rV"))
if _v1mk then return _v1mk end
_v1mg = _v1ml
else
_v1mg = _pguo("/SFH7Mu8bhfKbkDlzv9oWNsvSPnM9GUZyj0c48DxIFA=") .. tostring(_v1mj) .. ")"
end
if _v1mh < 3 then task.wait(1) end
end
return nil, _v1mg
end
_v4.Library, _v4.libErr = _v4.loadLibrary()
if not _v4.Library then
pcall(function()
game:GetService(_pguo("7TpT8tv5cj/LJw==")):SetCore(_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="), {
Title = _pguo("+y9I+ez0ZRnKPQ=="), Text = _pguo("+Rt7oMn9aRTbKhL0wLxsF98qCKA=") .. tostring(_v4.libErr) .. _pguo("kG5m8ta8YR/fJ1ygxvIgGZ4jXe3K8nRW"), Duration = 10,
})
end)
warn(_pguo("5QtT+tbfaB3fOkHdjw==") .. tostring(_v4.libErr))
return
end
local _v1mm = _v4.Library.new({Title = _pguo("+y9I+ez0ZRnKPQ==")})
_v4.Hub = _v1mm
_v4.GUI_SECTION_INFO = false
pcall(function()
_v4.GUI_SECTION_INFO = (_v4.Library and _v4.Library.Caps and _v4.Library.Caps.sectionInfo) and true or false
end)
function _v4.section(_v1mn, _v1mo, _v1mp)
if _v4.GUI_SECTION_INFO and _v1mp then
return _v1mn:AddSection({ Name = _v1mo, Info = _v1mp })
end
return _v1mn:AddSection(_v1mo)
end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.ALL_TOGGLES = {}
local function _v1mq(_v1mr)
local _v1ms = _v1mr.AddToggle
_v1mr.AddToggle = function(_v1mt, _v1mu)
_v1mu = _v1mu or {}
if _v1mu.Keybind == nil then _v1mu.Keybind = true end
local _v1mv = _v1mu.Callback or function() end
local _v1mw = _v1mu.Name or _pguo("6iFV58P5")
_v1mu.Callback = function(_v1mx)
_v1mv(_v1mx)
if not _v4.SUPPRESS_TOGGLE_NOTIFY then
pcall(function() _v1mm:Notify(_v4.displayName(_v1mw) .. ": " .. (_v1mx and "ON" or _pguo("8Qh0"))) end)
end
end
local _v1my = _v1ms(_v1mt, _v1mu)
if _v1mw then _v4.ALL_TOGGLES[_v1mw] = _v1my end
return _v1my
end
return _v1mr
end
_v4.SAVE_DINO_ACTIVE = false
_v4.SAVE_DINO_DEPTH = 700
_v4.SAVE_FLY_SPEED = 250
_v4.SAVE_DIR = _pguo("+iFF7g==")
_v4.SAVE_UP_HEIGHT = 1000
_v4.SAVE_RELEASE_GRACE = 10
local _v1mz = false
local _v1n0 = nil
_v4.AUTO_SAVE_PCT = 30
_v4.AUTO_SAVE = false
_v4.AUTO_SAVE_BLEED = false
_v4.SAVE_ALLOW_REST = true
_v4.saveOriginCF = nil
_v4.saveReturning = false
local _v1n1 = true
local _v1n2 = nil
local _v1n3 = nil
local _v1n4 = {}
local _v1n5 = nil
local function _v1n6()
if _v1n2 then
pcall(function() _v1n2:Destroy() end)
_v1n2 = nil
end
end
function _v4.getCS()
if _v4.csCache then return _v4.csCache end
pcall(function() _v4.csCache = require(_v4.WATER_RS.Common.CharacterState) end)
return _v4.csCache
end
function _v4.saveIsResting()
local _v1n7 = _v4.getCS()
if not _v1n7 then return false end
local _v1n8 = false
pcall(function()
local _v1n9 = _v1n7.Actions
_v1n8 = (_v1n9 and (_v1n9.Rest or _v1n9.Sleep)) and true or false
if _v1n7.RestDebounce then _v1n8 = true end
end)
return _v1n8
end
local _v1na = false
local function _v1nb(_v1nc)
if _v1na == _v1nc then return end
_v1na = _v1nc
pcall(function()
local _v1nd = _v2.Character
if _v1nd then _v1nd:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v1nc and true or nil) end
end)
end
local function _v1ne()
for _v1nf, _v1ng in ipairs(_v1n4) do pcall(function() _v1ng:Disconnect() end) end
_v1n4 = {}
end
local function _v1nh()
if _v4.SAVE_DINO_ACTIVE then return end
if _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
if _v1n0 then pcall(function() _v1n0:Set(false) end) end
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("7S9E5Y/YaRbRbkLh2u9lHIRuc8bkvEYZzCMV84/PYR7bOkugx/1uHNIrQaDH9WQdnmgS6Mr9bFjJJlvsyrxpDJ48R+7c"), 5) end end)
return
end
local _v1ni = _vfn()
if not _v1ni then
pcall(function() _v1mm:Notify(_pguo("7S9E5Y/YaRbRdBLuwLxjEN88U+Pb+XJY2CFH7ss=")) end)
return
end
pcall(function()
local _v1nj = _v2.Character
if _v1nj then _v1nj:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), true) end
end)
_v1na = false
_v1nb(true)
_v4.saveOriginCF = _v1ni.CFrame
_v4.saveReturning = false
_v4.SAVE_DINO_ACTIVE = true
_v1n5 = _v1ni
_v1n3 = nil
_v1n6()
local _v1nk = _pguo("0yFE6cH7")
local _v1nl = _v1ni.Position
local _v1nm = _v1ni.Position.Y
local _v1nn = _v1ni.CFrame - _v1ni.CFrame.Position
local _v1no = (_v4.SAVE_DIR == "Up")
local _v1np
if _v1no then
_v1np = _v1nm + _v4.SAVE_UP_HEIGHT
else
local _v1nq = RaycastParams.new()
_v1nq.FilterType = Enum.RaycastFilterType.Exclude
_v1nq.FilterDescendantsInstances = { _v2.Character, _v1n2 }
local _v1nr = workspace:Raycast(_v1ni.Position + Vector3.new(0, 20, 0), Vector3.new(0, -800, 0), _v1nq)
local _v1ns = (_v1nr and _v1nr.Position.Y) or _v1nm
_v1np = math.min(_v1ns, _v1nm) - _v4.SAVE_DINO_DEPTH
local _v1nt
pcall(function() _v1nt = workspace.FallenPartsDestroyHeight end)
if _v1nt and _v1np < _v1nt + 50 then _v1np = _v1nt + 50 end
end
local _v1nu = CFrame.new(_v1nl) * _v1nn
_v1ne()
local function _v1nv(_v1nw)
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v1nx = _v1n5
if not (_v1nx and _v1nx.Parent) then _v1nx = _vfn(); _v1n5 = _v1nx end
if not _v1nx then return end
_v1nw = math.min(_v1nw or 0.016, 0.1)
if _v1nk == _pguo("0yFE6cH7") then
local _v1ny = _v4.SAVE_FLY_SPEED * _v1nw
local _v1nz = _v1no and math.min(_v1nl.Y + _v1ny, _v1np)
or math.max(_v1nl.Y - _v1ny, _v1np)
_v1nl = Vector3.new(_v1nl.X, _v1nz, _v1nl.Z)
_v1nu = CFrame.new(_v1nl) * _v1nn
if (_v1no and _v1nz >= _v1np) or (not _v1no and _v1nz <= _v1np) then
_v1n3 = _v1nu
if not _v1no then
_v1n6()
local _v1o0 = Instance.new(_pguo("7i9A9A=="))
_v1o0.Anchored = true; _v1o0.CanCollide = true
_v1o0.Size = Vector3.new(80, 4, 80); _v1o0.Transparency = 1
_v1o0.CFrame = CFrame.new(_v1nl - Vector3.new(0, 6, 0))
_v1o0.Parent = workspace
_v1n2 = _v1o0
end
_v1nk = _pguo("zidc7sr4")
end
else
if _v1n3 then _v1nu = _v1n3 end
end
if _v1nk == _pguo("zidc7sr4") and _v4.SAVE_ALLOW_REST then _v1nb(false)
elseif _v1nk ~= _pguo("zidc7sr4") then _v1nb(true) end
if _v1nk == _pguo("zidc7sr4") and _v4.saveIsResting() then
pcall(function() if not _v1nx.Anchored then _v1nx.Anchored = true end end)
return
end
pcall(function()
if _v1nk == _pguo("zidc7sr4") then
if not _v1nx.Anchored then _v1nx.Anchored = true end
elseif _v1nx.Anchored then _v1nx.Anchored = false end
_v1nx.CFrame = _v1nu
_v1nx.AssemblyLinearVelocity = Vector3.zero
_v1nx.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v1o1()
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v1o2 = _v1n5
if not (_v1o2 and _v1o2.Parent) then return end
if _v1nk == _pguo("zidc7sr4") and _v4.saveIsResting() then
pcall(function() if not _v1o2.Anchored then _v1o2.Anchored = true end end)
return
end
pcall(function()
if _v1nk == _pguo("zidc7sr4") and _v1n3 then
if not _v1o2.Anchored then _v1o2.Anchored = true end
if (_v1o2.Position - _v1n3.Position).Magnitude > 5 then
_v1nb(true)
_v1o2.CFrame = _v1n3
elseif math.abs(_v1o2.Position.Y - _v1n3.Position.Y) > 1 then
_v1o2.CFrame = _v1n3
end
end
_v1o2.CFrame = _v1nu
_v1o2.AssemblyLinearVelocity = Vector3.zero
_v1o2.AssemblyAngularVelocity = Vector3.zero
end)
end
table.insert(_v1n4, _v1.RenderStepped:Connect(_v1nv))
table.insert(_v1n4, _v1.Heartbeat:Connect(_v1o1))
if _v1n0 then pcall(function() _v1n0:Set(true) end) end
pcall(function() _v1mm:Notify(_pguo("7S9E5Y/YaRbRdBI=") .. (_v1no and _pguo("zCdB6cH7IBHQOl2g2/RlWM0lSw==") or _pguo("2idE6cH7IA3QKlfyj+hoHZ4jU/A="))) end)
end
function _v4.saveReturnFlight()
if _v4.saveReturning then return end
_v4.saveReturning = true
local ok = pcall(function()
local _v1o3 = _v4.saveOriginCF
local _v1o4 = _vfn()
if not (_v1o4 and _v1o4.Parent) then return end
local _v1o5 = 3
pcall(function() _v1o5 = _v1o4.Size.Y * 0.5 end)
local _v1o6 = _v1o3 and _v1o3.Position or _v1o4.Position
local _v1o7
do
local _v1o8 = _v1o3 or _v1o4.CFrame
local _v1o9 = _v1o8.LookVector
local _v1oa = Vector3.new(_v1o9.X, 0, _v1o9.Z)
_v1o7 = (_v1oa.Magnitude > 0.01)
and CFrame.lookAt(Vector3.new(), _v1oa.Unit)
or CFrame.new()
end
local _v1ob = RaycastParams.new()
_v1ob.FilterType = Enum.RaycastFilterType.Exclude
_v1ob.FilterDescendantsInstances = { _v2.Character, _v1n2 }
local _v1oc = workspace:Raycast(_v1o6 + Vector3.new(0, 300, 0), Vector3.new(0, -2500, 0), _v1ob)
local _v1od = _v1oc and _v1oc.Position.Y or _v1o6.Y
local _v1oe = Vector3.new(_v1o6.X, _v1od + _v1o5 + 0.5, _v1o6.Z)
local _v1of = Vector3.new(_v1o6.X, math.max(_v1o4.Position.Y, _v1od + 40), _v1o6.Z)
pcall(function() _v1o4.Anchored = false end)
local _v1og = _v4.SAVE_FLY_SPEED or 250
local function _v1oh(_v1oi, _v1oj)
local _v1ok = os.clock() + (_v1oj or 10)
* math.max(1, _v1og / math.max(_v4.govCeiling(), 1))
while not _v4.UNLOADED and not _v4.SAVE_DINO_ACTIVE and os.clock() < _v1ok do
local _v1ol = _vfn()
if not (_v1ol and _v1ol.Parent) then return end
local _v1om = _v1oi - _v1ol.Position
if _v1om.Magnitude < 3 then return end
local _v1on = _v4.govNext(_v1ol.Position, _v1oi, 0.03, _v1og)
pcall(function()
_v1ol.CFrame = CFrame.new(_v1on) * _v1o7
_v1ol.AssemblyLinearVelocity = Vector3.zero
_v1ol.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
end
_v1oh(_v1of, 12)
if _v4.SAVE_DINO_ACTIVE then return end
_v1oh(_v1oe, 8)
if _v4.SAVE_DINO_ACTIVE then return end
local _v1oo = _vfn()
if _v1oo and _v1oo.Parent then
pcall(function()
_v1oo.CFrame = CFrame.new(_v1oe + Vector3.new(0, 1, 0)) * _v1o7
_v1oo.AssemblyLinearVelocity = Vector3.zero
_v1oo.AssemblyAngularVelocity = Vector3.zero
_v1oo.Anchored = true
end)
task.wait(0.2)
pcall(function()
_v1oo.Anchored = false
_v1oo.AssemblyLinearVelocity = Vector3.zero
_v1oo.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.3)
pcall(function()
local _v1op = RaycastParams.new()
_v1op.FilterType = Enum.RaycastFilterType.Exclude
_v1op.FilterDescendantsInstances = { _v2.Character }
local _v1oq = workspace:Raycast(_v1oo.Position + Vector3.new(0, 20, 0), Vector3.new(0, -400, 0), _v1op)
if _v1oq then
local _v1or = _v1oo.Position.Y - (_v1oq.Position.Y + _v1o5)
if _v1or < -0.5 or _v1or > 3 then
_v1oo.CFrame = CFrame.new(_v1oq.Position + Vector3.new(0, _v1o5 + 0.5, 0)) * _v1o7
_v1oo.AssemblyLinearVelocity = Vector3.zero
end
end
end)
end
_v1mz = false
_v1nb(false)
pcall(function()
local _v1os = _v2.Character
if _v1os then _v1os:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end
end)
pcall(function() _v1mm:Notify(_pguo("+idc74/uZRTbL0Hly7wtWMwrRvXd8mUcnjpdoNbzdQqePVP2yvggC84hRg==")) end)
end)
if not ok then
_v1mz = false
_v1nb(false)
pcall(function()
local _v1ot = _v2.Character
if _v1ot then
_v1ot:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil)
local _v1ou = _vfn()
if _v1ou then _v1ou.Anchored = false end
end
end)
pcall(function() _v1mm:Notify(_pguo("+idc74/uZRTbL0Hly7wtWN0hR+zLvG4Xym5U7Na8YhndJR6g1vN1WN88V6DY9GUK225L79q8cw3MKFPjyvg=")) end)
end
_v4.saveReturning = false
end
function _v4.releaseDino()
if not _v4.SAVE_DINO_ACTIVE then return end
_v4.SAVE_DINO_ACTIVE = false
_v1ne()
_v1n3 = nil
_v1n5 = nil
_v1n6()
_v1n1 = false
_v1nb(true)
task.spawn(function() _v4.saveReturnFlight() end)
_v1n5 = nil
_v1mz = true
task.delay(_v4.SAVE_RELEASE_GRACE, function()
_v1mz = false
local _v1ov = _v2.Character
_v1na = false
if _v1ov then pcall(function() _v1ov:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then
if _v1ov then pcall(function() _v1ov:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), nil) end) end
end
end)
if _v1n0 then pcall(function() _v1n0:Set(false) end) end
pcall(function() _v1mm:Notify(_pguo("+idc74/uZRTbL0Hly7wtWNgiS+nB+yAa3y1ZoNvzIAHRO0Cg3P12HdpuQfDA6A==")) end)
end
table.insert(_vz, _v2.CharacterAdded:Connect(function()
_v1ne()
_v1n3 = nil
_v1n5 = nil
_v1n6()
_v4.SAVE_DINO_ACTIVE = false
_v1mz = false
_v1na = false
_v4.saveReturning = false
_v4.saveOriginCF = nil
_v4.csCache = nil
_v1n1 = true
if _v1n0 then pcall(function() _v1n0:Set(false) end) end
end))
_v4.addStep(10, function()
if not _v4.AUTO_SAVE or _v4.AUTO_SAVE_PCT <= 0 or (_v4.AFK_FARM and _v4.AFK_FARM_SAFETY) then return end
local _v1ow = _v2.Character
if not _v1ow then return end
local _v1ox = _v1ow:GetAttribute(_pguo("9itT7Nv0"))
local _v1oy = _v1ow:GetAttribute(_pguo("8y9KyMr9bAzW"))
if type(_v1ox) ~= _pguo("0Dtf4sru") or type(_v1oy) ~= _pguo("0Dtf4sru") or _v1oy <= 0 then return end
if _v1ox <= 0 then return end
if _v4.AUTO_SAVE_BLEED then
local _v1oz = _vgt()
local _v1p0 = _v1oz and _v4.bleedForecast[_v1oz] or 0
if type(_v1p0) == _pguo("0Dtf4sru") and _v1p0 > 0 then _v1ox = math.max(0, _v1ox - _v1p0) end
end
local _v1p1 = (_v1ox / _v1oy) * 100
if _v1p1 <= _v4.AUTO_SAVE_PCT then
if _v1n1 and not _v4.SAVE_DINO_ACTIVE then
_v1n1 = false
_v1nh()
end
else
_v1n1 = true
end
end)
function _v4.applyFallImmunity(_v1p2)
local _v1p3 = _v2.Character
if _v1p3 then pcall(function() _v1p3:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), _v1p2 and true or nil) end) end
end
_v4.addStep(5, function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v1mz
or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM
or os.clock() < (_v4.flyLandUntil or 0)) then return end
local _v1p4 = _v2.Character
if _v1p4 and _v1p4:GetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3")) ~= true then
pcall(function() _v1p4:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), true) end)
end
local _v1p5 = (_v4.SAVE_DINO_ACTIVE and _v1na) or _v1mz
if _v1p5 and _v1p4 and _v1p4:GetAttribute(_pguo("6ite5d/zcgzXIFU=")) ~= true then
pcall(function() _v1p4:SetAttribute(_pguo("6ite5d/zcgzXIFU="), true) end)
end
end)
_v4.blurOff = setmetatable({}, { __mode = "k" })
_v4.blurHooked = setmetatable({}, { __mode = "k" })
function _v4.killBlur(_v1p6)
if typeof(_v1p6) ~= _pguo("9yBB9M7yYx0=") or not _v1p6:IsA(_pguo("/CJH8ur6Zh3dOg==")) then return end
if not _v4.blurHooked[_v1p6] then
_v4.blurHooked[_v1p6] = true
pcall(function()
table.insert(_vz, _v1p6:GetPropertyChangedSignal(_pguo("+yBT4sP5ZA==")):Connect(function()
if _v4.NO_BLUR and _v1p6.Enabled then _v4.killBlur(_v1p6) end
end))
end)
end
pcall(function()
if _v1p6.Enabled then _v4.blurOff[_v1p6] = true; _v1p6.Enabled = false end
if _v1p6.Size ~= 0 then _v1p6.Size = 0 end
end)
end
function _v4.sweepBlur()
pcall(function()
for _v1p7, _v1p8 in ipairs(_vei:GetDescendants()) do _v4.killBlur(_v1p8) end
end)
pcall(function()
local _v1p9 = workspace.CurrentCamera
if _v1p9 then for _v1pa, _v1pb in ipairs(_v1p9:GetChildren()) do _v4.killBlur(_v1pb) end end
end)
end
function _v4.restoreBlur()
for _v1pc in pairs(_v4.blurOff) do
pcall(function() if _v1pc.Parent then _v1pc.Enabled = true end end)
end
_v4.blurOff = setmetatable({}, { __mode = "k" })
end
pcall(function()
table.insert(_vz, _vei.DescendantAdded:Connect(function(_v1pd)
if _v4.NO_BLUR then _v4.killBlur(_v1pd) end
end))
end)
do
local _v1pe = nil
local function _v1pf()
pcall(function() if _v1pe then _v1pe:Disconnect() end end)
local _v1pg = workspace.CurrentCamera
if not _v1pg then return end
_v1pe = _v1pg.ChildAdded:Connect(function(_v1ph) if _v4.NO_BLUR then _v4.killBlur(_v1ph) end end)
table.insert(_vz, _v1pe)
if _v4.NO_BLUR then _v4.sweepBlur() end
end
_v1pf()
table.insert(_vz,
workspace:GetPropertyChangedSignal(_pguo("/TtA8srydDvfI1fyzg==")):Connect(_v1pf))
end
_v4.addStep(3, function()
if not _v4.NO_BLUR then return end
_v4.sweepBlur()
end)
local _v1pi = nil
local _v1pj = false
table.insert(_vz, _v4.UIS.InputBegan:Connect(function(_v1pk, _v1pl)
if _v4.UNLOADED or _v1pl then return end
local _v1pm = _v1pi and _v1pi.Key
if _v1pm and _v1pm ~= Enum.KeyCode.Unknown and _v1pk.KeyCode == _v1pm then _v1pj = true end
end))
table.insert(_vz, _v4.UIS.InputEnded:Connect(function(_v1pn)
local _v1po = _v1pi and _v1pi.Key
if _v1po and _v1pn.KeyCode == _v1po then _v1pj = false end
end))
function _v4.instaTurnStep()
if _v4.UNLOADED or not (_v1pj or _v4.mob.insta) then return end
local _v1pp = _vfn()
local _v1pq = workspace.CurrentCamera
if not (_v1pp and _v1pq) then return end
local _v1pr = _v1pq.CFrame.LookVector
local _v1ps = Vector3.new(_v1pr.X, 0, _v1pr.Z)
if _v1ps.Magnitude < 0.01 then return end
pcall(function()
_v1pp.CFrame = CFrame.lookAt(_v1pp.Position, _v1pp.Position + _v1ps.Unit)
_v1pp.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.instaTurnStep)
table.insert(_vz, _v1.RenderStepped:Connect(_v4.instaTurnStep))
_v4.TURN_SPEED = 250
_v4.QUICK_TURN = false
function _v4.turnAssistStep(_v1pt)
if _v4.UNLOADED or not _v4.QUICK_TURN or _v4.TURN_SPEED <= 0 then return end
if _v1pj or _v4.mob.insta then return end
if _v4.UIS:GetFocusedTextBox() then return end
local _v1pu = 0
if _v4.UIS:IsKeyDown(Enum.KeyCode.A) or _v4.mob.turnL then _v1pu = _v1pu + 1 end
if _v4.UIS:IsKeyDown(Enum.KeyCode.D) or _v4.mob.turnR then _v1pu = _v1pu - 1 end
if _v1pu == 0 then return end
local _v1pv = _vfn()
if not _v1pv then return end
local _v1pw = math.rad(_v4.TURN_SPEED) * (_v1pt or 1 / 60) * _v1pu
pcall(function()
_v1pv.CFrame = _v1pv.CFrame * CFrame.Angles(0, _v1pw, 0)
_v1pv.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.turnAssistStep)
table.insert(_vz, _v1.RenderStepped:Connect(_v4.turnAssistStep))
_v4.NO_ATK_CD = false
_v4.NO_ATK_COOLDOWN = false
_v4.ATTACK_SPEED = 3
local _v1px = {}
_v4.animatorCache = setmetatable({}, { __mode = "k" })
function _v4.getAnimator()
local _v1py = _v2.Character
if not _v1py then return nil end
local _v1pz = _v4.animatorCache[_v1py]
if _v1pz and _v1pz.Parent then return _v1pz end
local _v1q0 = _v1py:FindFirstChildOfClass(_pguo("9jtf4cHzaRw="))
local _v1q1 = _v1q0 and _v1q0:FindFirstChildOfClass(_pguo("/yBb7c7obwo="))
if not _v1q1 then _v1q1 = _v1py:FindFirstChildWhichIsA(_pguo("/yBb7c7obwo="), true) end
_v4.animatorCache[_v1py] = _v1q1
return _v1q1
end
function _v4.restoreAttackSpeed()
for _v1q2, _v1q3 in pairs(_v1px) do
pcall(function() if _v1q2.IsPlaying then _v1q2:AdjustSpeed(1) end end)
end
_v1px = {}
end
_v4.addStep(2, function()
if not _v4.NO_ATK_CD then return end
local _v1q4 = _v4.getAnimator()
if not _v1q4 then return end
pcall(function()
for _v1q5, _v1q6 in ipairs(_v1q4:GetPlayingAnimationTracks()) do
if _v1q6.Priority == Enum.AnimationPriority.Action4 and _v1q6.Speed ~= _v4.ATTACK_SPEED then
_v1q6:AdjustSpeed(_v4.ATTACK_SPEED)
_v1px[_v1q6] = true
end
end
end)
end)
do
local _v1q7, _v1q8 = pcall(function() return require(_v4.WATER_RS.Common.CharacterState) end)
if _v1q7 and _v1q8 then
_v4.addStep(1, function()
if not _v4.NO_ATK_COOLDOWN or _v4.UNLOADED then return end
pcall(function()
if type(_v1q8.Growth) == _pguo("yi9Q7Mo=") and _v1q8.Growth.attackCooldownMultiplier ~= nil then
_v1q8.Growth.attackCooldownMultiplier = 0
end
end)
end)
end
end
local _v1q9, _v1qa = nil, nil
local _v1qb = false
_v4.ZOOM_FAR = nil
function _v4.resolveZoomFar(_v1qc)
if _v4.ZOOM_FAR and not _v1qc then return _v4.ZOOM_FAR end
for _v1qd, _v1qe in ipairs({ 1e6, 1e5, 5e4, 1e4, 5000, 2000 }) do
local _v1qf = pcall(function() _v2.CameraMaxZoomDistance = _v1qe end)
if _v1qf then
local _v1qg = _v2.CameraMaxZoomDistance
if type(_v1qg) == _pguo("0Dtf4sru") and _v1qg > 0 then _v4.ZOOM_FAR = _v1qg; return _v4.ZOOM_FAR end
end
end
_v4.ZOOM_FAR = 2000
return _v4.ZOOM_FAR
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
_v4.zoomProbeAt = 0
local function _v1qh()
local _v1qi = workspace.CurrentCamera
if not _v1qi then return nil end
local _v1qj, _v1qk = pcall(function()
return (_v1qi.CFrame.Position - _v1qi.Focus.Position).Magnitude
end)
if not _v1qj or type(_v1qk) ~= _pguo("0Dtf4sru") or _v1qk ~= _v1qk or _v1qk <= 0 then return nil end
return _v1qk
end
function _v4.setZoomRange(_v1ql, _v1qm)
pcall(function()
if _v2.CameraMaxZoomDistance ~= _v1qm then _v2.CameraMaxZoomDistance = _v1qm end
if _v2.CameraMinZoomDistance ~= _v1ql then _v2.CameraMinZoomDistance = _v1ql end
end)
end
function _v4.applyZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v1qn = _v4.zoomWant or _v4.zoomTarget or _v1qh() or 20
_v4.zoomWant = _v1qn
local _v1qo = _v4.ZOOM_FAR or 2000
local _v1qp = math.clamp(_v1qn, 0.5, _v1qo)
_v4.setZoomRange(_v1qp, _v1qp)
local _v1qq = _v2.CameraMaxZoomDistance
if type(_v1qq) == _pguo("0Dtf4sru") and _v1qq > 0 and _v1qq < _v1qp - 1 then
_v4.setZoomRange(_v1qq, _v1qq)
_v4.zoomTarget = _v1qq
if os.clock() - (_v4.zoomProbeAt or 0) > 1 then
_v4.zoomProbeAt = os.clock()
_v4.resolveZoomFar(true)
end
else
_v4.zoomTarget = _v1qp
end
end
_v4.zoomFailFrames = 0
function _v4.enforceZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v1qr = _v4.zoomTarget
local _v1qs = workspace.CurrentCamera
if not (_v1qr and _v1qs) then return end
local _v1qt = false
pcall(function() _v1qt = (_v1qs.CameraType == Enum.CameraType.Scriptable) end)
if _v1qt then _v4.zoomFailFrames = 0 return end
local _v1qu = _v1qh()
if not _v1qu or math.abs(_v1qu - _v1qr) <= 1.5 then _v4.zoomFailFrames = 0 return end
_v4.zoomFailFrames = _v4.zoomFailFrames + 1
if _v4.zoomFailFrames < 3 then return end
pcall(function()
local _v1qv = _v1qs.Focus.Position
local _v1qw = _v1qs.CFrame.LookVector
if _v1qw.Magnitude < 0.01 then return end
_v1qs.CFrame = CFrame.lookAt(_v1qv - _v1qw.Unit * _v1qr, _v1qv)
end)
end
pcall(function()
table.insert(_vz, _v4.UIS.InputChanged:Connect(function(_v1qx)
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
if _v1qx.UserInputType == Enum.UserInputType.MouseWheel then
local _v1qy = _v4.ZOOM_FAR or 2000
local _v1qz = _v4.zoomWant or _v4.zoomTarget or _v1qh() or 20
local _v1r0 = math.max(3, _v1qz * 0.12)
_v1qz = math.clamp(_v1qz - _v1qx.Position.Z * _v1r0, 0.5, _v1qy)
_v4.zoomWant = _v1qz
_v4.zoomTarget = _v1qz
_v4.setZoomRange(_v1qz, _v1qz)
end
end))
end)
function _v4.bindZoom()
if _v1qb then return end
if _v1q9 == nil then
_v1q9 = _v2.CameraMaxZoomDistance
_v1qa = _v2.CameraMinZoomDistance
end
_v4.resolveZoomFar(true)
_v4.zoomTarget = _v1qh() or _v4.zoomTarget or 20
_v4.zoomWant = _v4.zoomTarget
_v4.zoomProbeAt = 0
_v4.zoomFailFrames = 0
pcall(function()
_v1:BindToRenderStep(_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="),
Enum.RenderPriority.Camera.Value - 1, _v4.applyZoom)
end)
pcall(function()
_v1:BindToRenderStep(_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="),
Enum.RenderPriority.Camera.Value + 1, _v4.enforceZoom)
end)
_v1qb = true
end
function _v4.restoreZoom()
if _v1qb then
pcall(function() _v1:UnbindFromRenderStep(_pguo("+xRt1cHwaRXXOlfk9fNvFQ==")) end)
pcall(function() _v1:UnbindFromRenderStep(_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg==")) end)
_v1qb = false
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
if _v1q9 ~= nil then
pcall(function()
_v2.CameraMinZoomDistance = _v1qa
_v2.CameraMaxZoomDistance = _v1q9
end)
end
end
table.insert(_vz,
_v2:GetPropertyChangedSignal(_pguo("/S9f5d39TRnGFF3vwthpC8ovXOPK")):Connect(_v4.applyZoom))
_v4.FOV_ENABLED = false
_v4.FOV_VALUE = 70
local _v1r1 = nil
local _v1r2 = false
function _v4.applyFOV()
if _v4.UNLOADED or not _v4.FOV_ENABLED then return end
local _v1r3 = workspace.CurrentCamera
if not _v1r3 then return end
pcall(function()
if _v1r3.CameraType == Enum.CameraType.Scriptable then return end
local _v1r4 = math.clamp(_v4.FOV_VALUE or 70, 1, 120)
if math.abs(_v1r3.FieldOfView - _v1r4) > 0.01 then _v1r3.FieldOfView = _v1r4 end
end)
end
function _v4.bindFOV()
if _v1r2 then return end
if _v1r1 == nil then
pcall(function() _v1r1 = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView end)
end
pcall(function()
_v1:BindToRenderStep(_pguo("+xRtxuDK"), Enum.RenderPriority.Camera.Value + 1, _v4.applyFOV)
end)
_v1r2 = true
end
function _v4.restoreFOV()
if _v1r2 then
pcall(function() _v1:UnbindFromRenderStep(_pguo("+xRtxuDK")) end)
_v1r2 = false
end
if _v1r1 ~= nil then
pcall(function()
local _v1r5 = workspace.CurrentCamera
if _v1r5 then _v1r5.FieldOfView = _v1r1 end
end)
end
end
_v4.BIOME_TARGET = nil
_v4.BIOME_SPEED = 5000
_v4.BIOME_TRAVEL = false
_v4.biomeTravelling = false
_v4.biomeToggle = nil
_v4.biomePointCache = {}
_v4.BIOME_POINTS = {}
function _v4.biomeNames()
local _v1r6 = {}
pcall(function()
local _v1r7 = workspace:FindFirstChild(_pguo("/Cdd7crv"))
if not _v1r7 then return end
for _v1r8, _v1r9 in ipairs(_v1r7:GetChildren()) do
if _v1r9.Name ~= _pguo("/C9A8sb5cg==") then _v1r6[#_v1r6 + 1] = _v1r9.Name end
end
end)
table.sort(_v1r6)
return _v1r6
end
function _v4.biomePoint(_v1ra)
if _v4.BIOME_POINTS[_v1ra] then return _v4.BIOME_POINTS[_v1ra] end
if _v4.biomePointCache[_v1ra] then return _v4.biomePointCache[_v1ra] end
local _v1rb
pcall(function()
local _v1rc = workspace:FindFirstChild(_pguo("/Cdd7crv"))
local _v1rd = _v1rc and _v1rc:FindFirstChild(_v1ra)
if not _v1rd then return end
local _v1re, _v1rf, _v1rg = {}, Vector3.new(), 0
local _v1rh, _v1ri = 400, 6
local function _v1rj(_v1rk, _v1rl)
if _v1rl > _v1ri or _v1rg >= _v1rh then return end
for _v1rm, _v1rn in ipairs(_v1rk:GetChildren()) do
if _v1rg >= _v1rh then return end
if _v1rn:IsA(_pguo("/C9B5f/9cgw=")) then
_v1re[#_v1re + 1] = _v1rn.Position; _v1rf = _v1rf + _v1rn.Position; _v1rg = _v1rg + 1
elseif _v1rn:IsA(_pguo("8yFW5cM=")) then
pcall(function()
local _v1ro = _v1rn:GetPivot().Position
_v1re[#_v1re + 1] = _v1ro; _v1rf = _v1rf + _v1ro; _v1rg = _v1rg + 1
end)
_v1rj(_v1rn, _v1rl + 1)
elseif _v1rn:IsA(_pguo("+CFe5Mru")) then
_v1rj(_v1rn, _v1rl + 1)
end
end
end
_v1rj(_v1rd, 1)
if _v1rg == 0 then return end
local _v1rp = _v1rf / _v1rg
local _v1rq = RaycastParams.new()
_v1rq.FilterType = Enum.RaycastFilterType.Exclude
_v1rq.FilterDescendantsInstances = { _v2.Character, workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l")) }
local _v1rr = { _v1rp }
local _v1rs = math.max(1, math.floor(#_v1re / 12))
for _v1rt = 1, #_v1re, _v1rs do
_v1rr[#_v1rr + 1] = _v1re[_v1rt]
if #_v1rr >= 14 then break end
end
for _v1ru, _v1rv in ipairs(_v1rr) do
local _v1rw
pcall(function()
_v1rw = workspace:Raycast(Vector3.new(_v1rv.X, _v1rv.Y + 2000, _v1rv.Z),
Vector3.new(0, -6000, 0), _v1rq)
end)
if _v1rw and _v1rw.Material ~= Enum.Material.Water then
_v1rb = Vector3.new(_v1rv.X, _v1rw.Position.Y, _v1rv.Z)
break
end
end
if not _v1rb then _v1rb = _v1rp end
end)
if _v1rb then _v4.biomePointCache[_v1ra] = _v1rb end
return _v1rb
end
function _v4.travelToBiome(_v1rx)
if _v4.biomeTravelling then return end
_v4.biomeTravelling = true
local finished = pcall(function()
local _v1ry = _v4.biomePoint(_v1rx)
if not _v1ry then
pcall(function() _v1mm:Notify(_pguo("/Cdd7cq8VB3SK0Lv3eg6WN0hR+zLvG4Xym5U6cH4IA==") .. tostring(_v1rx)) end)
return
end
local _v1rz = _vfn()
if not (_v1rz and _v1rz.Parent) then
pcall(function() _v1mm:Notify(_pguo("/Cdd7cq8VB3SK0Lv3eg6WNAhEuPH/XIZ3TpX8o/6bw3QKg==")) end)
return
end
local _v1s0 = 3
pcall(function() _v1s0 = _v1rz.Size.Y * 0.5 end)
local _v1s1 = _v1rz.CFrame.LookVector
local _v1s2 = Vector3.new(_v1s1.X, 0, _v1s1.Z)
local _v1s3 = (_v1s2.Magnitude > 0.01) and CFrame.lookAt(Vector3.new(), _v1s2.Unit) or CFrame.new()
local _v1s4 = _v2.Character
pcall(function()
if _v1s4 then _v1s4:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), true); _v1s4:SetAttribute(_pguo("6ite5d/zcgzXIFU="), true) end
_v1rz.Anchored = false
end)
local _v1s5 = _v4.BIOME_SPEED or 5000
local _v1s6 = math.max(_v1rz.Position.Y, _v1ry.Y) + 250
local function _v1s7(_v1s8, _v1s9)
local _v1sa = math.max(math.min(_v1s5, _v4.GOVERNOR and _v4.govCeiling() or _v1s5), 1)
return (_v1s9 - _v1s8).Magnitude / _v1sa * 1.6 + 8
end
local function _v1sb(_v1sc, _v1sd)
local _v1se = _vfn()
if not (_v1se and _v1se.Parent) then return end
local _v1sf = os.clock() + (_v1sd or _v1s7(_v1se.Position, _v1sc))
while not _v4.UNLOADED and _v4.BIOME_TRAVEL and os.clock() < _v1sf do
local _v1sg = _vfn()
if not (_v1sg and _v1sg.Parent) then return end
if _v1s4 then pcall(function() _v1s4:SetAttribute(_pguo("6ite5d/zcgzXIFU="), true) end) end
if (_v1sc - _v1sg.Position).Magnitude < 8 then return end
local _v1sh = _v4.govNext(_v1sg.Position, _v1sc, 0.03, _v1s5)
pcall(function()
_v1sg.CFrame = CFrame.new(_v1sh) * _v1s3
_v1sg.AssemblyLinearVelocity = Vector3.zero
_v1sg.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
end
_v1sb(Vector3.new(_v1rz.Position.X, _v1s6, _v1rz.Position.Z))
if not _v4.BIOME_TRAVEL then return end
_v1sb(Vector3.new(_v1ry.X, _v1s6, _v1ry.Z))
if not _v4.BIOME_TRAVEL then return end
_v1sb(Vector3.new(_v1ry.X, _v1ry.Y + _v1s0 + 1, _v1ry.Z))
if not _v4.BIOME_TRAVEL then return end
local _v1si = _vfn()
if _v1si and _v1si.Parent then
pcall(function()
_v1si.CFrame = CFrame.new(_v1ry + Vector3.new(0, _v1s0 + 1, 0)) * _v1s3
_v1si.AssemblyLinearVelocity = Vector3.zero
_v1si.AssemblyAngularVelocity = Vector3.zero
_v1si.Anchored = true
end)
task.wait(0.2)
pcall(function()
_v1si.Anchored = false
_v1si.AssemblyLinearVelocity = Vector3.zero
_v1si.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.3)
pcall(function()
local _v1sj = RaycastParams.new()
_v1sj.FilterType = Enum.RaycastFilterType.Exclude
_v1sj.FilterDescendantsInstances = { _v2.Character }
local _v1sk = workspace:Raycast(_v1si.Position + Vector3.new(0, 20, 0), Vector3.new(0, -400, 0), _v1sj)
if _v1sk then
local _v1sl = _v1si.Position.Y - (_v1sk.Position.Y + _v1s0)
if _v1sl < -0.5 or _v1sl > 3 then
_v1si.CFrame = CFrame.new(_v1sk.Position + Vector3.new(0, _v1s0 + 0.5, 0)) * _v1s3
_v1si.AssemblyLinearVelocity = Vector3.zero
end
end
end)
end
pcall(function() _v1mm:Notify(_pguo("/zxA6dn5ZEKe") .. tostring(_v1rx)) end)
end)
pcall(function()
local _v1sm = _v2.Character
if _v1sm then _v1sm:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end
local _v1sn = _vfn()
if _v1sn then _v1sn.Anchored = false end
end)
task.delay(6, function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE) then
local _v1so = _v2.Character
if _v1so then pcall(function() _v1so:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), nil) end) end
end
end)
if not finished then
pcall(function() _v1mm:Notify(_pguo("/Cdd7cq8VB3SK0Lv3eg6WMomV6Db7mkInihT6cP5ZFiTbkvv2rxhCttuRejK7mVYxyFHoNzobwjOK1Y=")) end)
end
_v4.biomeTravelling = false
_v4.BIOME_TRAVEL = false
if _v4.biomeToggle then pcall(function() _v4.biomeToggle:Set(false) end) end
end
_v4.fossilFarmToggle = nil
_v4.FOSSIL_FARM_SPEED = 50
local function _v1sp(_v1sq)
for _v1sr, _v1ss in ipairs(_v1sq:GetDescendants()) do
if _v1ss:IsA(_pguo("7jxd+MbxaQzHHkDvwux0")) and _v1ss.Name == _pguo("+CFB88bw") then return _v1ss end
end
return nil
end
function _v4.fossilPosOf(_v1st)
local _v1su, _v1sv = pcall(function() return _v1st:GetPivot().Position end)
if _v1su then return _v1sv end
return nil
end
function _v4.nearestFossil(_v1sw)
local _v1sx = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if not _v1sx then return nil end
local _v1sy, _v1sz
for _v1t0, _v1t1 in ipairs(_v1sx:GetChildren()) do
local _v1t2 = _v1sp(_v1t1)
local _v1t3 = _v4.ffSkip and _v4.ffSkip[_v1t1]
if _v1t2 and _v1t2.Enabled ~= false and not (_v1t3 and _v1t3 > os.clock()) then
local _v1t4 = _v4.fossilPosOf(_v1t1)
if _v1t4 and _v1t4.Magnitude > 1 then
local _v1t5 = (_v1t4 - _v1sw).Magnitude
if not _v1sz or _v1t5 < _v1sz then _v1sy, _v1sz = _v1t1, _v1t5 end
end
end
end
return _v1sy
end
function _v4.isolatePrompt(_v1t6, _v1t7)
local _v1t8 = {}
local _v1t9 = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if not _v1t9 then return _v1t8 end
for _v1ta, _v1tb in ipairs(_v1t9:GetChildren()) do
local _v1tc = _v1sp(_v1tb)
if _v1tc and _v1tc ~= _v1t6 and _v1tc.Enabled then
local _v1td, _v1te = pcall(function() return _v1tc.Parent.Position end)
if (not _v1td) or (_v1te - _v1t7).Magnitude < 80 then
pcall(function() _v1tc.Enabled = false end)
table.insert(_v1t8, _v1tc)
end
end
end
return _v1t8
end
function _v4.restorePrompts(_v1tf)
for _v1tg, _v1th in ipairs(_v1tf) do pcall(function() if _v1th and _v1th.Parent then _v1th.Enabled = true end end) end
end
function _v4.autoSpawnCleanup()
for _v1ti, _v1tj in ipairs(_v4.AUTO_SPAWN_DRAWS) do pcall(function() _v1tj:Remove() end) end
table.clear(_v4.AUTO_SPAWN_DRAWS)
_v4.AUTO_SPAWN = false
_v4.AUTO_SPAWN_TARGET = nil
_v4.AUTO_SPAWN_GENDER = nil
_v4.AUTO_SPAWN_ATTEMPTS = 0
end
function _v4.autoSpawnCleanupGUI()
local _v1tk = _v2.PlayerGui
pcall(function()
local _v1tl = _v1tk:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="))
if _v1tl then _v1tl:Destroy() end
end)
pcall(function()
local _v1tm = _v1tk:FindFirstChild(_pguo("8y9b7uL5bg35O1s="))
if _v1tm then _v1tm:Destroy() end
end)
pcall(function()
local _v1tn = _v1tk:FindFirstChild(_pguo("8iFT5MbyZz/LJw=="))
if _v1tn then _v1tn:Destroy() end
end)
end
function _v4.autoSpawnGetDinoName()
local _v1to = _v2.PlayerGui:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="))
if not _v1to then return nil end
local _v1tp = _v1to:FindFirstChild(_pguo("6iFCxt39bR0="))
if not _v1tp then return nil end
local _v1tq = _v1tp:FindFirstChild(_pguo("+itG4cbwcw=="))
if not _v1tq then return nil end
local _v1tr = _v1tq:FindFirstChild(_pguo("+idc79z9dQrwL1/l"))
if _v1tr and _v1tr.Text ~= "" then return _v1tr.Text end
return nil
end
function _v4.autoSpawnGetGender()
local _v1ts = _v2.PlayerGui:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="))
if not _v1ts then return _pguo("8y9e5Q==") end
local ok, result = pcall(function()
local _v1tt = _v1ts.LeftFrame.Customizer.Frame.Gender.Frame
local _v1tu = _v1tt:FindFirstChild(_pguo("8y9e5e3pdAzRIA=="))
if _v1tu then
local _v1tv = _v1tu:FindFirstChild(_pguo("6wdh9N3zax0="))
if _v1tv and _v1tv.Color.G > 0.8 then return _pguo("8y9e5Q==") end
end
return _pguo("+Ctf4cP5")
end)
return ok and result or _pguo("8y9e5Q==")
end
function _v4.autoSpawnIsAlive()
local _v1tw = _v2.Character
if not _v1tw then return false end
local _v1tx = _v1tw:FindFirstChildOfClass(_pguo("9jtf4cHzaRw="))
return _v1tx and _v1tx.Health > 0
end
function _v4.startAutoSpawn()
_v4.autoSpawnCleanup()
_v4.AUTO_SPAWN = true
_v4.AUTO_SPAWN_ATTEMPTS = 0
_v4.AUTO_SPAWN_TARGET = _v4.autoSpawnGetDinoName()
_v4.AUTO_SPAWN_GENDER = _v4.autoSpawnGetGender()
if not _v4.AUTO_SPAWN_TARGET then
pcall(function() _v1mm:Notify(_pguo("/ztG74/PcBnJIAigwOxlFp4qW+7AvHMd0itR9MbzbljfIFag3/VjE54vEuTG8m9Y2CdA89s="), 5) end)
_v4.AUTO_SPAWN = false
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
pcall(function() _v1mm:Notify(_pguo("/ztG74/PcBnJIAigw/NjE9sqEu/BvA==") .. _v4.AUTO_SPAWN_TARGET .. " (" .. _v4.AUTO_SPAWN_GENDER .. _pguo("l27QADu8cwjfI1/pwfsgKts/R+Xc6FMU0To="), 5) end)
local _v1ty = _v4.AUTO_SPAWN_DRAWS
local function _v1tz(_v1u0)
local _v1u1 = Drawing.new(_pguo("6itK9A=="))
_v1u1.Visible = true
_v1u1.Color = _v1u0.Color or Color3.fromRGB(255, 255, 255)
_v1u1.Size = _v1u0.Size or 16
_v1u1.Position = _v1u0.Position or Vector2.new(0, 0)
_v1u1.Text = _v1u0.Text or ""
_v1u1.Font = 2
_v1u1.Outline = true
_v1u1.OutlineColor = Color3.fromRGB(0, 0, 0)
table.insert(_v1ty, _v1u1)
return _v1u1
end
local function _v1u2(_v1u3)
local _v1u4 = Drawing.new(_pguo("7T9H4d35"))
_v1u4.Visible = true
_v1u4.Color = _v1u3.Color or Color3.fromRGB(10, 10, 10)
_v1u4.Size = _v1u3.Size or Vector2.new(100, 100)
_v1u4.Position = _v1u3.Position or Vector2.new(0, 0)
_v1u4.Filled = _v1u3.Filled ~= false
_v1u4.Transparency = _v1u3.Transparency or 0.3
if _v1u3.Thickness then _v1u4.Thickness = _v1u3.Thickness end
table.insert(_v1ty, _v1u4)
return _v1u4
end
local _v1u5, _v1u6 = 12, 12
_v1u2({ Position = Vector2.new(_v1u5, _v1u6), Size = Vector2.new(300, 110) })
local _v1u7 = _v1u2({ Position = Vector2.new(_v1u5, _v1u6), Size = Vector2.new(300, 110), Filled = false, Transparency = 1, Color = Color3.fromRGB(0, 200, 80), Thickness = 2 })
local _v1u8 = _v1tz({ Text = _pguo("/xtmz4LPUDnpABLb/MxBNeM="), Position = Vector2.new(_v1u5 + 6, _v1u6 + 4), Size = 18, Color = Color3.fromRGB(0, 220, 80) })
local _v1u9 = _v1tz({ Text = _pguo("6i9A58roOlg=") .. _v4.AUTO_SPAWN_TARGET .. _pguo("nmZ+z+zXRTyX"), Position = Vector2.new(_v1u5 + 6, _v1u6 + 26), Color = Color3.fromRGB(0, 255, 200) })
local _v1ua = _v1tz({ Text = _pguo("7SJd9NymIFWTYR+t"), Position = Vector2.new(_v1u5 + 6, _v1u6 + 44) })
local _v1ub = _v1tz({ Text = _pguo("/zpG5cLsdAuEbgI="), Position = Vector2.new(_v1u5 + 6, _v1u6 + 62) })
local _v1uc = _v1tz({ Text = _pguo("7TpT8tv1bh+QYBw="), Position = Vector2.new(_v1u5 + 6, _v1u6 + 80), Color = Color3.fromRGB(255, 200, 0) })
local _v1ud = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local _v1ue = require(_v1ud:WaitForChild(_pguo("7i9R6877ZQs=")):WaitForChild(_pguo("9SBb9A==")))
local _v1uf = _v1ue.GetController(_pguo("/z5X+OzzbgzMIV7syu4="))
local _v1ug = _v1ue.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="))
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
pcall(function()
local _v1uh = _v1uf:GetInfo(_v4.AUTO_SPAWN_TARGET)
if _v1uh then
_v1ua.Text = string.format(_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),
_v1uh.UsedTotal or 0, _v1uh.Slots or 0,
_v1uh.UsedZenith or 0, _v1uh.ZenithSlots or 0)
end
end)
task.wait(3)
end
end)
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
if _v4.autoSpawnIsAlive() then
_v4.autoSpawnCleanupGUI()
_v1uc.Text = _pguo("7R5z1+HZRFk=")
_v1uc.Color = Color3.fromRGB(0, 255, 0)
_v1u8.Text = _pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ==")
_v1u8.Color = Color3.fromRGB(0, 255, 0)
_v1u7.Color = Color3.fromRGB(0, 255, 0)
pcall(function() _v1mm:Notify(_pguo("/ztG74/PcBnJIAig1vN1X8wrEunBvSAryiFC8MbyZ1Y="), 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if not _v2.PlayerGui:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k=")) then
_v1uc.Text = _pguo("8CFGoMDyIAvbIlfj2/VvFp49UfLK+W5YXM6moN/9dQvbKg==")
_v1uc.Color = Color3.fromRGB(255, 200, 0)
task.wait(1)
continue
end
_v4.AUTO_SPAWN_ATTEMPTS += 1
_v1ub.Text = _pguo("/zpG5cLsdAuEbg==") .. _v4.AUTO_SPAWN_ATTEMPTS
local _v1ui, _v1uj, _v1uk
local _v1ul = pcall(function()
_v1ui, _v1uj, _v1uk = _v1uf:RequestSlot(_v4.AUTO_SPAWN_TARGET)
end)
if not _v1ul then
_v1uc.Text = _pguo("8CFGoM7sZQCerLIUj+9wGckgW+7IvGQRzCtR9A==")
pcall(function()
_v1ug:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _pguo("+itU4drwdA=="),
Variant = _pguo("+itU4drwdA=="),
})
end)
_v4.autoSpawnCleanupGUI()
_v1uc.Text = _pguo("7T5T98G8cx3QOhM=")
_v1uc.Color = Color3.fromRGB(0, 255, 100)
_v1u8.Text = _pguo("/xtmz4LPUDnpABKg69NOPQ==")
_v1u8.Color = Color3.fromRGB(0, 255, 0)
_v1u7.Color = Color3.fromRGB(0, 255, 0)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v1ui then
_v1uc.Text = _pguo("7QJ91I/bUjn8DHfEjrxTCN85XOnB+yA=") .. _v4.AUTO_SPAWN_TARGET
_v1uc.Color = Color3.fromRGB(0, 255, 0)
_v1u8.Color = Color3.fromRGB(0, 255, 0)
_v1u7.Color = Color3.fromRGB(0, 255, 0)
pcall(function()
_v1ug:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _pguo("+itU4drwdA=="),
Variant = _pguo("+itU4drwdA=="),
})
end)
_v4.autoSpawnCleanupGUI()
_v1u8.Text = _pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ==")
pcall(function() _v1mm:Notify(_pguo("/ztG74/PcBnJIAig3PBvDJ4pQOHN/mUcnihd8o8=") .. _v4.AUTO_SPAWN_TARGET .. "!", 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v1uj == _pguo("+Dte7A==") and _v1uk then
_v1ua.Text = string.format(_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),
_v1uk.UsedTotal or 0, _v1uk.Slots or 0,
_v1uk.UsedZenith or 0, _v1uk.ZenithSlots or 0)
end
_v1uc.Text = _pguo("+Bt+zI9+gOyePULhwvFpFtlgHK4=")
_v1uc.Color = Color3.fromRGB(255, 80, 80)
_v1u7.Color = Color3.fromRGB(200, 60, 60)
task.wait(0.5)
end
end)
end
function _v4.unanchorFarmRoot()
local _v1um = _vfn()
if _v1um then pcall(function() _v1um.Anchored = false end) end
end
local _v1un = nil
local _v1uo = {}
local function _v1up()
if _v1un then
pcall(function() _v4.VIM:SendKeyEvent(false, _v1un, false, game) end)
_v1un = nil
end
if #_v1uo > 0 then
_v4.restorePrompts(_v1uo)
_v1uo = {}
end
_v4.unanchorFarmRoot()
if _v4.fossilFarmCleanup then _v4.fossilFarmCleanup() end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then _v4.applyFallImmunity(false) end
end
function _v4.groundUnder(_v1uq)
local _v1ur = RaycastParams.new()
_v1ur.FilterType = Enum.RaycastFilterType.Exclude
_v1ur.FilterDescendantsInstances = { _v2.Character }
local _v1us = workspace:Raycast(_v1uq + Vector3.new(0, 25, 0), Vector3.new(0, -300, 0), _v1ur)
return _v1us and _v1us.Position or nil
end
_v4.ffPos = nil
_v4.ffCF = nil
_v4.ffTarget = nil
_v4.ffState = nil
_v4.ffHeldKey = nil
_v4.ffCollectStart = 0
_v4.ffEmptyChecks = 0
_v4.ffSince = 0
_v4.ffTries = 0
_v4.ffSkip = setmetatable({}, { __mode = "k" })
do
function _v4.fossilFarmAdvance(_v1ut)
if _v4.UNLOADED then return end
if not _v4.FOSSIL_FARM then
if _v4.ffState then
_v4.fossilFarmCleanup()
local _v1uu = _v2.Character
if _v1uu and not _v4.AFK_FARM and not _v4.LEGIT_FARM then pcall(function() _v1uu:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
end
return
end
if _v4.SAVE_DINO_ACTIVE then return end
local _v1uv = _v4.getLocalPhysicsRoot()
if not _v1uv then return end
if _v1uv.Anchored and _v4.ffState ~= _pguo("3SFe7Mr/dBHQKQ==") then
pcall(function() _v1uv.Anchored = false end)
end
_v1ut = math.min(_v1ut or 0.016, 0.1)
local _v1uw = _v2.Character
if _v1uw and _v1uw:GetAttribute(_pguo("6ite5d/zcgzXIFU=")) ~= true then
pcall(function() _v1uw:SetAttribute(_pguo("6ite5d/zcgzXIFU="), true) end)
end
local _v1ux = math.max(_v4.FOSSIL_FARM_SPEED or 50, 5)
local _v1uy = _v1uv.Position
if not _v4.ffPos then _v4.ffPos = _v1uy end
if not _v4.ffTarget or not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v1uo > 0 then
_v4.restorePrompts(_v1uo)
_v1uo = {}
end
local _v1uz = _v4.nearestFossil(_v1uy)
if _v1uz then
_v4.ffTarget = _v1uz
_v4.ffState = _pguo("2CJL6cH7")
_v4.ffEmptyChecks = 0
_v4.ffTries, _v4.ffFace = 0, nil
local _v1v0 = _v4.fossilPosOf(_v1uz)
if _v1v0 then
local _v1v1 = 3
pcall(function() _v1v1 = _v1uv.Size.Y * 0.5 end)
_v4.ffDest = _v1v0 + Vector3.new(0, _v1v1 + 0.5, 0)
else
_v4.ffTarget = nil
_v4.ffState = nil
end
else
_v4.ffEmptyChecks = _v4.ffEmptyChecks + 1
if _v4.ffEmptyChecks > 180 then
_v4.FOSSIL_FARM = false
_v4.fossilFarmCleanup()
if _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
local _v1v2 = 0
for _v1v3, _v1v4 in pairs(_v4.ffSkip) do if _v1v4 > os.clock() then _v1v2 = _v1v2 + 1 end end
pcall(function()
_v1mm:Notify(_v1v2 > 0 and (_pguo("/yJeoMnzcwvXIkGgyf1yFdsqEqg=") .. _v1v2 .. _pguo("nj1Z6d/sZRyEblHv2vBkWNAhRqDN+SAb0SJe5czoZRyX"))
or _pguo("/yJeoMnzcwvXIkGgyf1yFdsq"), 8)
end)
end
return
end
end
if (_v4.ffState == _pguo("3SFe7Mr/dBHQKQ==") or _v4.ffFace) and _v4.ffTarget and _v4.ffTarget.Parent then
local _v1v5 = os.clock()
if _v1v5 - _v4.ffSince > (_v4.ffTries == 0 and 60 or 20) then
if _v4.ffTries < 2 then
_v4.ffTries = _v4.ffTries + 1
_v4.ffReposition(_v1uv)
pcall(function() _v1mm:Notify((_pguo("+CFB88bwID7fPF+6j/JvDJ4tXezD+WMM2yoS+croIFWeOkD5xvJnWNg8Xe2P/W4XyiZX8o/vaRzbbhqly7MyUQ==")):format(_v4.ffTries), 4) end)
else
_v4.ffSkip[_v4.ffTarget] = _v1v5 + 600
_v4.ffDropTarget(_v1uv)
pcall(function() _v1mm:Notify(_pguo("+CFB88bwID7fPF+6j+9rEc4+V+SP/SAe0T1B6cO8aQyeLV31w/ggFtE6EuPA8Gwd3ToSrY/xbw7XIFWgwPI="), 5) end)
return
end
end
end
if _v4.ffState == _pguo("2CJL6cH7") and _v4.ffDest then
_v4.ffPos = _v4.govNext(_v4.ffPos, _v4.ffDest, _v1ut, _v1ux)
local _v1v6 = (_v4.ffDest - _v4.ffPos)
if _v1v6.Magnitude < 0.1 then _v1v6 = Vector3.new(0, 0, 1) end
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v4.ffPos + _v1v6)
pcall(function()
_v1uv.CFrame = _v4.ffCF
_v1uv.AssemblyLinearVelocity = Vector3.zero
_v1uv.AssemblyAngularVelocity = Vector3.zero
end)
if (_v4.ffPos - _v4.ffDest).Magnitude < (_v4.ffFace and 1.5 or 8) then
_v4.ffState = _pguo("3SFe7Mr/dBHQKQ==")
_v4.ffCollectStart = os.clock()
_v4.ffSince = _v4.ffCollectStart
if _v4.ffFace then
local _v1v7 = Vector3.new(_v4.ffFace.X, _v4.ffPos.Y, _v4.ffFace.Z)
if (_v1v7 - _v4.ffPos).Magnitude > 0.1 then
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v1v7)
pcall(function() _v1uv.CFrame = _v4.ffCF end)
end
end
pcall(function() _v1uv.Anchored = true end)
local _v1v8 = _v1sp(_v4.ffTarget)
if _v1v8 then
_v1uo = {}
local _v1v9 = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if _v1v9 then
for _v1va, _v1vb in ipairs(_v1v9:GetChildren()) do
local _v1vc = _v1sp(_v1vb)
if _v1vc and _v1vc ~= _v1v8 and _v1vc.Enabled then
pcall(function() _v1vc.Enabled = false end)
table.insert(_v1uo, _v1vc)
end
end
end
local _v1vd = _v1v8.KeyboardKeyCode
if _v1vd == nil or _v1vd == Enum.KeyCode.Unknown then _v1vd = Enum.KeyCode.E end
_v4.ffHeldKey = _v1vd
_v4.ffHoldDuration = (tonumber(_v1v8.HoldDuration) or 2.5) + 1
pcall(function() _v4.VIM:SendKeyEvent(true, _v1vd, false, game) end)
else
pcall(function() _v1uv.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
end
end
elseif _v4.ffState == _pguo("3SFe7Mr/dBHQKQ==") then
if not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v1uo > 0 then
_v4.restorePrompts(_v1uo)
_v1uo = {}
end
pcall(function() _v1uv.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
return
end
local _v1ve = os.clock() - _v4.ffCollectStart
if _v1ve > (_v4.ffHoldDuration or 4) then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(true, _v4.ffHeldKey, false, game) end)
end
_v4.ffCollectStart = os.clock()
end
end
end
function _v4.fossilFarmPin()
if _v4.UNLOADED or not _v4.FOSSIL_FARM or not _v4.ffCF then return end
local _v1vf = _v4.getLocalPhysicsRoot()
if _v1vf and not _v1vf.Anchored then
pcall(function()
_v1vf.CFrame = _v4.ffCF
_v1vf.AssemblyLinearVelocity = Vector3.zero
_v1vf.AssemblyAngularVelocity = Vector3.zero
end)
end
end
function _v4.ffDropTarget(_v1vg)
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v1uo > 0 then
_v4.restorePrompts(_v1uo)
_v1uo = {}
end
if _v1vg then pcall(function() _v1vg.Anchored = false end) end
_v4.ffTarget, _v4.ffState, _v4.ffFace = nil, nil, nil
end
function _v4.ffReposition(_v1vh)
local _v1vi = _v4.ffTarget
local _v1vj = _v1vi and _v4.fossilPosOf(_v1vi)
if not _v1vj then _v4.ffDropTarget(_v1vh) return end
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v1uo > 0 then
_v4.restorePrompts(_v1uo)
_v1uo = {}
end
pcall(function() _v1vh.Anchored = false end)
local _v1vk = 6
pcall(function() _v1vk = math.clamp((_v1sp(_v1vi).MaxActivationDistance or 10) * 0.6, 3, 8) end)
local _v1vl = _v4.ffPos or _v1vh.Position
if _v4.ffTries == 1 then _v4.ffBaseAng = math.atan2(_v1vl.Z - _v1vj.Z, _v1vl.X - _v1vj.X) end
local _v1vm = (_v4.ffBaseAng or 0) + _v4.ffTries * (2 * math.pi / 3)
local _v1vn = _v1vj + Vector3.new(math.cos(_v1vm) * _v1vk, 0, math.sin(_v1vm) * _v1vk)
local _v1vo = _v4.groundUnder(_v1vn)
local _v1vp = 3
pcall(function() _v1vp = _v1vh.Size.Y * 0.5 end)
_v4.ffDest = Vector3.new(_v1vn.X, (_v1vo and _v1vo.Y or _v1vj.Y) + _v1vp + 0.5, _v1vn.Z)
_v4.ffFace = _v1vj
_v4.ffState = _pguo("2CJL6cH7")
_v4.ffSince = os.clock()
end
function _v4.ffCamStep(_v1vq)
if _v4.UNLOADED or not _v4.FOSSIL_FARM or not _v4.ffFace then return end
local _v1vr = workspace.CurrentCamera
if not _v1vr or _v1vr.CameraType ~= Enum.CameraType.Custom then return end
local _v1vs = _v1vr.CFrame
local _v1vt = _v1vr.Focus.Position
local _v1vu, _v1vv = _v1vs.LookVector, _v4.ffFace - _v1vt
if Vector3.new(_v1vu.X, 0, _v1vu.Z).Magnitude < 1e-3 or Vector3.new(_v1vv.X, 0, _v1vv.Z).Magnitude < 1 then return end
local _v1vw = math.atan2(-_v1vu.X, -_v1vu.Z)
local _v1vx = math.atan2(-_v1vv.X, -_v1vv.Z)
local _v1vy = 6 * math.min(_v1vq or 0.016, 0.1)
local _v1vz = math.clamp(math.atan2(math.sin(_v1vx - _v1vw), math.cos(_v1vx - _v1vw)), -_v1vy, _v1vy)
if math.abs(_v1vz) < 1e-4 then return end
local _v1w0 = CFrame.Angles(0, _v1vz, 0)
_v1vr.CFrame = CFrame.new(_v1vt + _v1w0 * (_v1vs.Position - _v1vt)) * (_v1w0 * _v1vs.Rotation)
end
function _v4.fossilFarmCleanup()
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v1uo > 0 then
_v4.restorePrompts(_v1uo)
_v1uo = {}
end
_v4.unanchorFarmRoot()
_v4.ffTarget = nil
_v4.ffState = nil
_v4.ffCF = nil
_v4.ffPos = nil
_v4.ffDest = nil
_v4.ffHoldDuration = nil
_v4.ffEmptyChecks = 0
_v4.ffFace, _v4.ffTries, _v4.ffSince, _v4.ffBaseAng = nil, 0, 0, nil
end
function _v4.startFossilFarm()
local _v1w1 = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
local _v1w2 = _v1w1 and #_v1w1:GetChildren() or 0
pcall(function() _v1mm:Notify((_pguo("+CFB88bwID7fPF+6j7lkWNghQfPG8HM=")):format(_v1w2), 5) end)
_v4.ffPos = nil
_v4.ffCF = nil
_v4.ffTarget = nil
_v4.ffState = nil
_v4.ffEmptyChecks = 0
_v4.ffSkip = setmetatable({}, { __mode = "k" })
end
table.insert(_vz, _v1.RenderStepped:Connect(_v4.fossilFarmAdvance))
table.insert(_vz, _v1.Heartbeat:Connect(_v4.fossilFarmPin))
pcall(function()
_v1:BindToRenderStep(_pguo("7hZtxsDvcxHSDVPt"), Enum.RenderPriority.Camera.Value + 2, _v4.ffCamStep)
end)
end
function _v4.getCC()
if _v4.ccCache then return _v4.ccCache end
pcall(function()
_v4.ccCache = require(_v4.WATER_RS.Packages.Knit).GetController(_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd"))
end)
return _v4.ccCache
end
function _v4.khRange()
local _v1w3
pcall(function() _v1w3 = _v4.getCC():GetConsumeRange() end)
if type(_v1w3) ~= _pguo("0Dtf4sru") or _v1w3 <= 0 then _v1w3 = 22 end
return _v1w3
end
function _v4.nearestCorpse(_v1w4)
local _v1w5 = _v4.getCC()
if not (_v1w5 and _v1w5.CorpseData and _v1w4) then return nil end
local _v1w6, _v1w7, _v1w8
for _v1w9, _v1wa in pairs(_v1w5.CorpseData) do
local _v1wb = _v1wa and _v1wa.Root
if _v1wb and _v1wb.Parent and (tonumber(_v1wa.Weight) or 0) > 0 then
local _v1wc
pcall(function()
_v1wc = _v1wb:IsA(_pguo("/C9B5f/9cgw=")) and _v1wb.Position or _v1wb:GetPivot().Position
end)
if _v1wc then
local _v1wd = (_v1wc - _v1w4).Magnitude
if not _v1w8 or _v1wd < _v1w8 then _v1w6, _v1w7, _v1w8 = _v1w9, _v1wb, _v1wd end
end
end
end
return _v1w6, _v1w7, _v1w8
end
function _v4.warpToCorpse(_v1we, _v1wf)
local _v1wg
pcall(function()
_v1wg = _v1wf:IsA(_pguo("/C9B5f/9cgw=")) and _v1wf.Position or _v1wf:GetPivot().Position
end)
if not _v1wg then return false end
local _v1wh = 3
pcall(function() _v1wh = _v1we.Size.Y * 0.5 end)
local _v1wi = Vector3.new(_v4.TP_OFFSET or 8, 0, 0)
local _v1wj = _v4.groundUnder(_v1wg + _v1wi) or _v4.groundUnder(_v1wg)
local _v1wk = _v1wj and (_v1wj + Vector3.new(0, _v1wh + 0.5, 0)) or (_v1wg + Vector3.new(0, 4, 0))
local function _v1wl(_v1wm)
local _v1wn = _v2.Character
if _v1wn then pcall(function() _v1wn:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
return _v1wm
end
local _v1wo = _v2.Character
local _v1wp = math.max(_v1we.Position.Y, _v1wk.Y) + 60
for _v1wq = 1, 3 do
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v1wl(false) end
if _v1wo then pcall(function() _v1wo:SetAttribute(_pguo("6ite5d/zcgzXIFU="), true) end) end
local _v1wr = _v1we.Position
_v4.govGlide(_v1we, Vector3.new(_v1wr.X, _v1wp, _v1wr.Z), nil, 12, 6)
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v1wl(false) end
local _v1ws = Vector3.new(_v1wk.X, _v1wp, _v1wk.Z)
_v4.govGlide(_v1we, _v1ws, nil,
(_v1ws - _v1we.Position).Magnitude / math.max(_v4.govCeiling(), 1) * 1.6 + 8, 6)
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v1wl(false) end
_v4.govGlide(_v1we, _v1wk, nil, 15, 4)
task.wait(0.35)
if (_v1we.Position - _v1wk).Magnitude < 25 then
if _v4.TP_SOLID then
pcall(function() _v1we.Anchored = true end)
task.wait(0.25)
pcall(function()
_v1we.Anchored = false
_v1we.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
end)
end
return _v1wl(true)
end
task.wait(0.5)
end
return _v1wl(false)
end
_v4.addStep(30, function()
if _v4.UNLOADED or not _v4.TP_CORPSE or _v4.tpBusy then return end
if _v4.tpDone and not _v4.TP_CHAIN then return end
local _v1wt = _vfn()
if not (_v1wt and _v1wt.Parent) then return end
local _v1wu = _v4.getCC()
if not _v1wu then return end
if _v4.tpTargetId then
local _v1wv = _v1wu.CorpseData and _v1wu.CorpseData[_v4.tpTargetId]
if _v1wv and (tonumber(_v1wv.Weight) or 0) > 0 then return end
_v4.tpTargetId = nil
if not _v4.TP_CHAIN then _v4.tpDone = true return end
end
local _v1ww, _v1wx, _v1wy = _v4.nearestCorpse(_v1wt.Position)
if not _v1ww then return end
_v4.tpBusy = true
task.spawn(function()
_v4.applyFallImmunity(true)
local _v1wz = _v4.warpToCorpse(_v1wt, _v1wx)
_v4.tpTargetId = _v1wz and _v1ww or nil
if _v1wz and not _v4.TP_CHAIN then _v4.tpDone = true end
pcall(function()
_v1mm:Notify(_v1wz
and (_pguo("6ite5d/zcgzbKhL0wLxjF8w+QeWPtA==") .. math.floor(_v1wy or 0) .. _pguo("nj1G9cvvKQ=="))
or _pguo("/SFH7MvyJwyeJl3sy7x0ENtuUe/d7HMdnj1C79u84vgqbkHl3eplCp48V/bK7nQd2m5G6Mq8aBfO"), 5)
end)
task.delay(6, function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.TP_CORPSE) then
_v4.applyFallImmunity(false)
end
end)
_v4.tpBusy = false
end)
end)
_v4.FPS_SAVER = false
do
local _v1x0 = game:GetService(_pguo("8idV6Nv1bh8="))
local _v1x1 = game:GetService(_pguo("7Dtc08rudhHdKw=="))
local _v1x2
function _v4.applyFpsSaver(_v1x3)
if _v1x3 then
if not _v1x2 then
_v1x2 = { shadows = _v1x0.GlobalShadows, fogEnd = _v1x0.FogEnd, fogStart = _v1x0.FogStart,
quality = nil, effects = {} }
pcall(function() _v1x2.quality = settings().Rendering.QualityLevel end)
for _v1x4, _v1x5 in ipairs(_v1x0:GetChildren()) do
if _v1x5:IsA(_pguo("7iFB9Or6Zh3dOg==")) or _v1x5:IsA(_pguo("/CJH8ur6Zh3dOg==")) then _v1x2.effects[_v1x5] = _v1x5.Enabled end
end
end
pcall(function() if setfpscap then setfpscap(10) end end)
pcall(function() settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 end)
pcall(function() _v1x0.GlobalShadows = false end)
pcall(function() _v1x0.FogStart = 0; _v1x0.FogEnd = 12 end)
for _v1x6, _v1x7 in ipairs(_v1x0:GetChildren()) do
if _v1x7:IsA(_pguo("7iFB9Or6Zh3dOg==")) or _v1x7:IsA(_pguo("/CJH8ur6Zh3dOg==")) then pcall(function() _v1x7.Enabled = false end) end
end
pcall(function() _v1x1:Set3dRenderingEnabled(false) end)
else
pcall(function() _v1x1:Set3dRenderingEnabled(true) end)
pcall(function() if setfpscap then setfpscap(0) end end)
if _v1x2 then
pcall(function() if _v1x2.quality then settings().Rendering.QualityLevel = _v1x2.quality end end)
pcall(function() _v1x0.GlobalShadows = _v1x2.shadows end)
pcall(function() _v1x0.FogStart = _v1x2.fogStart; _v1x0.FogEnd = _v1x2.fogEnd end)
for _v1x8, _v1x9 in pairs(_v1x2.effects) do pcall(function() if _v1x8 and _v1x8.Parent then _v1x8.Enabled = _v1x9 end end) end
_v1x2 = nil
end
end
end
end
local _v1xa = _v1mm:AddTab({Name = _pguo("/ztG78n9chU=")})
local _v1xb = _v1mm:AddTab({Name = _pguo("/SFf4s7o")})
local _v1xc = _v1mm:AddTab({Name = _pguo("8yFE5cL5bgw=")})
local _v1xd = _v1mm:AddTab({Name = _pguo("7Ctc5Mru")})
local _v1xe = {}
local _v1xf
_v1xf = _v1mq(_v1xa:AddSubTab({Name = _pguo("+CFB88bwID7fPF8=")}))
_v4.section(_v1xf, _pguo("+CFB88bwID7fPF8="), _pguo("/SFe7Mr/dAueKF3z3PVsC54oXfKP5W8Nni9H9MDxYQzXLVPsw+UucrQIXfPc9WxY+C9A7ZW8ZhTXK0Gg2/MgHd8tWqDB+WEK3DcS5sDvcxHSYhLjwPBsHd06QaDG6CxYyiZX7o/xbw7bPRL0wLx0ENtuXOXX6C5Y9ygS4Y/6bwvNJ16gxu8gFtE6EvDG/2sd2m5H8I/raQzWJ1ygzrxtEdA7RuWDvGkMnjpA6crvIBnZL1vuj/pyF9NuU+7A6GgdzG5B6cv5IA/XOlqg2/RlWN0vX+Xd/SAU0SFZ6cH7IBnKblv0g7xhFtpuW+aP6GgZym5U4cbwc1jKIV2gxuggC9UnQvOP6GgZym5U79zvaRSeL1zkj/9vFNIrUfTcvHQQ225d9Mf5cguQRHTv3O9pFJ4IU/LCvFMI2ytWuo/0bw+eKFPz27xpDJ4oXunK7yAa2zpF5cryIB7RPUHpw+8u"))
_v4.fossilFarmToggle = _v1xf:AddToggle({
Name = _pguo("+CFB88bwID7fPF8="),
Skull = true,
Default = false,
Callback = function(_v1xg)
_v4.FOSSIL_FARM = _v1xg
if _v1xg then _v4.startFossilFarm() else _v1up() end
end
})
_v4.fossilFarmSpeedSlider = _v1xf:AddSlider({
Name = _pguo("+CFB88bwID7fPF+g/OxlHdo="),
Skull = true,
Min = 10, Max = 50, Default = 50,
Callback = function(_v1xh) _v4.FOSSIL_FARM_SPEED = _v1xh end
})
_v1xf = _v1mq(_v1xa:AddSubTab({Name = _pguo("/ztG78n9chU=")}))
_v4.section(_v1xf, _pguo("/ztG78n9chU="), _pguo("/ztG74/LYQzbPAigxPllCM1uS+/a7iAP3zpX8o/6dRTSYBLOwLxsGdUrEu7K+WQd2mIS7sC8ZArXIFnpwfsgGdAnX+Hb9W8WkG5l4dv5cljNOlvsw7xkCt8nXPOP8m8K0y9e7NawIBHKblj13OggH9s6QaDd+WYR0iJX5I/6YQvKK0Cg2/RhFp4nRqDL7m8IzWA4xsDuYx2eC1P0lbxlGco9EvTH+SAW2y9A5dzoIB7RIVagwfMgFd86RuXdvHcQ3zoS+cDpcljaJ1zviO8gHNcrRqDG7yxY1yBR7Nr4aRbZbkLszvJ0C54vEuPO7m4RyCFA5Y/ybwrTL17s1rxjGdAgXfSP6G8N3SYc"))
_v4.autoWaterToggle = _v1xf:AddToggle({
Name = _pguo("/ztG74/LYQzbPA=="),
Default = false,
Callback = function(_v1xi) _v4.AUTO_WATER = _v1xi end
})
_v4.forceEatToggle = _v1xf:AddToggle({
Name = _pguo("+CFA48q8RRnK"),
Default = false,
Callback = function(_v1xj)
_v4.FORCE_EAT = _v1xj
if _v1xj and _v4.AFK_FARM then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("+CFA48q8RRnKbkLh2u9lHJ45WunD+SA5+AUSxs7ubVjXPRLvwbwoDNYrEubO7m1Y1i9BoMboc1jROVygyv10Hcxn"), 5) end end)
end
end
})
_v4.section(_v1xf, _pguo("+CFA48q8RRnKbmHl2+hpFtk9"), _pguo("7StG9MbyZwueKF3yj9pvCt0rEsXO6C5Y6iZX+Y/4b1jQIUboxvJnWMsgXuXc7yA+0TxR5Y/ZYQyeJ0GgwPIucrQIU/PbvEUZynQS5c7oc1jYL0H0j/luF8spWqDb8yAQ0SJWoNbzdQqeKF3vy7xiGcxuU/SP+nUU0mASz8n6IB3fOkGgzuggDNYrEufO8WVfzW5c793xYRSePULlyvgsWMkmW+PHvGYR0iJBoNbzdVjLPhLn3f1kDd8iXvmP9W4LyitT5IGWRRnKbn3uw+UgL9YrXKDn6W4fzDcIoNj9aQzNbkfu2/VsWMchR/KP+m8X2m5W8sDsc1jfbl7p2+hsHZ4sV+bA7mVYyiFC8MbyZ1jLPh6g3PMgFtE6WunB+yARzW5F4dzoZRyQbn3mybxtHd8gQaDG6CAd3zpBoMzzbgvKL1z0w+UucvIrU/bKvFMbzC9C85W8cwzRPkGgyv10EdApEuGP7GwZ0DoS98f1bB2eLxLsxuh0FNtuVO/A+CARzW5B9MbwbFjSK1T0j/NuWNc6EqjO/m8Nym5G98C8bx6eN1313bxkEdAhFfOP/mkM2z0eoMP5YQrQK1agzu8gEcpuV+Hb7ylUnj1doMboIBzRK0GgwfN0WNorQfDO625Uni9c5I/och3fOkGg2/RhDJ4+XuHB6CAZzW5X7d/oeVjNIRLp27xlGco9EvPA8WUM1idc54/5bAvbYA=="))
_v1xe.fastEat = _v1xf:AddToggle({
Name = _pguo("+C9B9I/ZYQw="),
Default = true,
Callback = function(_v1xk) _v4.FAST_EAT = _v1xk end
})
_v1xe.eatWhenHungry = _v1xf:AddToggle({
Name = _pguo("+y9GoODybAGeGVrlwbxIDdApQPk="),
Default = false,
Callback = function(_v1xl) _v4.EAT_WHEN_HUNGRY = _v1xl end
})
_v1xe.leaveScraps = _v1xf:AddToggle({
Name = _pguo("8itT9sq8UxvML0Lz"),
Default = false,
Callback = function(_v1xm) _v4.LEAVE_SCRAPS = _v1xm end
})
_v4.section(_v1xf, _pguo("/wh5oOn9chU="), _pguo("+CJb5dy8eRfLPBLkxvJvWMohEvTH+SAW2y9A5dzoIB7RIVasj/lhDM1uW/SDvHQQ2yAS5sP1ZQueOl2g2/RlWNArSvSPfoDsni9e7I/zbljXOkGgwOtuVrQIXe/LsCAP3zpX8o/9bhyeLV7lzvJsEdArQfOP/XIdni9e7I/0YRbaIlfkj+toEdIrEunbvHIN0D0IoMboIB3fOkGg2PRlFts4V/KP5W8Nni9A5Y/0dRbZPEusj/1uHJ4lV+Xf7yAP3zpX8o/9bhyeLV7lzvJsEdArQfOP6G8IzitWoNrsIBrHblv03PlsHp5jEsHa6G9Y6S9G5d28YRbabnP12/MgO9IrU+7D9W4dzT0S5MC8bhfKblzlyvggDNFuUOWP825WtERzxuS8RhnMIwig2+lyFs1uW/SP825Wngpb887+bB3Nblvmj/FhFssvXqDp8HlY0TwSwdrob1j4Ikugxu8gGd06W/bKsgo+3zxfoPzsZR3adBLowOsgHt89RqDb8yAe0jcS4srodx3bIBLmwPNkWM0hR/LM+XNWngZb58f5cljXPRLmzu90HcxuUPXbvGQK3zlBoMLzch2eL0b0yvJ0EdEgHIr/8GEB2zwSwdnzaRyeHFPkxulzQp49Wenf7yAe0SFWoNj1dBDXIBL0x/VzWNMvXPmP73QN2j0S78m8YRbROlrl3bxwFN83V/KBvFMdym5G74+sIAzRblbp3P1iFNtgONPG8XUU3zpXoPj9bBPXIFW6j/dlHc49EvnA6SAf2yBH6cH5bAGeI132xvJnWNghQKDu/3QRyCdG+Y+0ZwrROUboj/5vF806G6CCvGkMnj5A5dzvZQueOlrlj+thFNVuWeXWvHcQ1yJXoMnweRHQKRLB4dggE9srQvOP+HIR2Dpb7si8aRaeLxL0xvJ5WN0nQOPD+SAP1ide5Y/5YQzXIFWgxvJzDNsvVqDA+iALyiFC8MbyZ1jaK1Pkg7xzF546WuWP72UKyCtAoM7wdxnHPRLzyvlzWNMhROXC+W4MkERl6M7oIBHKblXvyu8gHtE8CKDb9GVY0CtT8srvdFjOIlPu27AgHtE8EuXZ+XIBnipb7sC8LVj4IUDjyrxFGcpuV+Hb7yAI0i9c9Ny8dxDfOlf2yu4gAdE7QKDL9WUMkG5zoMv1bheeOlrh27xlGco9Eu3K/XRY3yJB74/oYRPbPRLtyv10WMomU/SP9XNY3SJd88q8YgGSblPuy7xnF9s9EubA7iAV2y9GoMn1cgvKbkXoxvBlWN9uXPXb7mkd0DoS6du8ZxHIK0Ggh8xyF8orW+7csCA+3zpBrI/fYRTdJ0fthrxpC54vRqCWpSVY0TwS4srwbw+QbnDvwflzVJ49WuXD8HNUni1e4cLvLFjbKVXzj/1uHJ4nXPPK/3QLni9A5Y/wZR7KblPswPJlWMsgXuXc7yAW0Tpa6cH7IB3SPVegxu8gFNsoRqyP83JY325c9dvuaR3QOhL0x/l5WNknROWP9GELnipA79/sZRyeOl2glqwlVp4IXe/LvG4d3zwS79v0ZQqePl7h1vlyC54nQaDO8HcZxz0S88T1cAjbKhyg6fNvHJ4nRqDM/W4W0ToS58roIAzRYhLv3bx3ENs8V6DW83UKniZH7sj5cljaIVfzj/JvDJ4pXaDa7CAZ2DpX8o+tMljNK1HvwfhzWNEoEuLG6GkW2W4a7Mb3ZVjfblXsxuhjENsqEqKQoz9ani1d8t/vZVjKJlP0j/NuFMduVOXK+HNY0SBR5Y/vbxXbIVzlj+xpG9U9EunbvHUIl2IS6dy8bB3YOhLhw/NuHZ4oXfKPrjBY0ydc9dv5c1iTbgGwj/VmWMomV6Dc/W0dnihd78u8ZhnXIkGg2+tpG9tgONPO+mUMx24ayMb4ZViYbnrlzvApQp4vQaDc828Wni9BoNbzdVjKL1nlj/1uAZ4qU+3O+2VYli9c5I/raB3QK0Tl3bx5F8s8EujK/WwM1m5b84/+ZRTRORLozvBmUZJuWunL+XNYyyBW5d37chfLIFagzvJkWMwrQfTcvHUWyideoNbzdVjfPFegzf1jE546XaDJ6WwUkm5G6MryIBvfPEDpyu8gF9BuVOHd8WkW2WASycm8eRfLPBLkxvJvWNonV/OP/W4ByS9LoNj0aRTbblOgyf1yFZ4nQaDA8ixY1zoS8srvcBnJIEGgzu8gDNYrEvPO8WVY2idc74+xIBbbOFfyj+9wHdAqW+7IvHIdyCdE4cO8dBfVK1zzj7EgGdAqEvTH+SAe3zxfoMz9cgrXK0GgwPIucv8qX+nBvEsR3SUIoMP5YQ7bPRL0x/kgC9s8ROXdvGkeni9coM74bRHQbljvxvJzVJ4hQKDG7yAZ0jxX4cvlIBDbPFesj+toEdIrEsHp1yA+3zxfoN3pbguQRHTsyvkgPswhX6D/8GEB2zxBuo/6bAGeL0Xh1rx3ENsgEuHB83QQ2zwS8MP9eR3MblHvwvlzWMknRujG8iAM1isSwdnzaRyeHFPkxulzVJ46WuXBvGcXnixT48S8dBeeKFPywvVuH54hXOPKvHQQ2zcS7Mr9dh2Qbmfzyu8gDNYrEvPO8WVYzC9W6drvIBnNbmLszuVlCp4PRO/G+CAq3ypb9dywIAvRbkHl27x0EN86EuHN83Ydnn4coODyIBrHblblyf11FMpgONXB73QN3SUIoMb6IAzWKxLkxvJvWMkrVufK7yAX0G5G5d3uYRHQbl3yj/0gDMwrV6DO8mRYzTpd8Ny8bRfIJ1znj+toEdIrEujK/WQR0CkS9MC8ZhfRKh6gxuggHMwhQvOP6GgZym5G4d37ZQySbkLv3+8gDc5uU+7LvG8NymIS4cH4IAjXLVnzj/0gHNcoVOXd+W4MniFc5Y/1bgvKK1Pkj/NmWM0nRvTG8mdYzTpH48SyIDHKblPs3PMgH9c4V/OP6XBY0SAS5sDzZFjXOhLozu8gC986EuHbvGYXzG4AtY/vZRvRIFbzj+tpDNYhR/SP+WEM1yBVoM7yeQzWJ1znj+toEdIrEuja8mcKx2IS4cH4IAjXLVnzj+9vFds6WunB+yAd0j1Xrg=="))
_v4.afkFarmToggle = _v1xf:AddToggle({
Name = _pguo("/wh5oOn9chU="),
Skull = true,
Default = false,
Callback = function(_v1xn)
_v4.AFK_FARM = _v1xn
if _v1xn then
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.LEGIT_FARM and _v4.legitFarmToggle then pcall(function() _v4.legitFarmToggle:Set(false) end) end
local _v1xo = {}
if _v4.FORCE_EAT then _v1xo[#_v1xo + 1] = _pguo("+CFA48q8RRnK") end
if _v4.AFK_FARM_SAFETY and (_v4.AUTO_SAVE or _v4.SAVE_DINO_ACTIVE) then _v1xo[#_v1xo + 1] = _pguo("7S9E5Y/YaRbR") end
if _v4.AFK_FARM_SAFETY and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
if _v4.AFK_FARM_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
if #_v1xo > 0 then
local _v1xp = table.concat(_v1xo, _pguo("ni9c5I8=")) .. _pguo("nj5T9dz5ZFjJJlvsyrxBPvVudOHd8SAKyyBBoIf1dFjLPVfzj/V0C54hRe6P+WEM2zwS4cH4ICvfKFf01rU=")
pcall(function() if _v4.Hub then _v4.Hub:Notify(_v1xp, 6) end end)
end
else
_v4.afkStopWalk()
end
end
})
_v1xe.afkFarmSpeed = _v1xf:AddSlider({
Name = _pguo("+C9A7Y/PcB3bKg=="),
Min = 10, Max = 50, Default = 50,
Callback = function(_v1xq) _v4.AFK_FARM_SPEED = _v1xq end
})
_v1xe.afkFarmAvoid = _v1xf:AddSlider({
Name = _pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),
Min = 0, Max = 1000, Default = 200,
Callback = function(_v1xr) _v4.AFK_FARM_AVOID = _v1xr end
})
_v1xe.afkFarmWalk = _v1xf:AddToggle({
Name = _pguo("7Sdf9cP9dB2eGVPsxPVuHw=="),
Default = true,
Callback = function(_v1xs) _v4.AFK_FARM_WALK = _v1xs end
})
_v1xe.afkFarmSafety = _v1xf:AddToggle({
Name = _pguo("7S9U5dvlIFD2J1blj7ogMNsvXqk="),
Default = true,
Callback = function(_v1xt)
_v4.AFK_FARM_SAFETY = _v1xt
if _v1xt and _v4.AFK_FARM and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
end
})
_v1xe.afkFarmAdminKick = _v1xf:AddToggle({
Name = _pguo("/ypf6cG8SxHdJQ=="),
Default = true,
Callback = function(_v1xu)
_v4.AFK_FARM_ADMIN_KICK = _v1xu
if _v1xu and _v4.AFK_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v1xe.afkFarmFlee = _v1xf:AddToggle({
Name = _pguo("+CJX5Y/achfTbmLszuVlCs0="),
Default = true,
Callback = function(_v1xv) _v4.AFK_FARM_FLEE = _v1xv end
})
_v1xe.afkFarmUnstuck = _v1xf:AddToggle({
Name = _pguo("6yBB9Nr/aw=="),
Default = false,
Callback = function(_v1xw) _v4.AFK_FARM_UNSTUCK = _v1xw end
})
_v4.section(_v1xf, _pguo("8itV6du8RhnMIw=="), _pguo("6S9e69y8eRfLPBLkxvJvWMohEubA82RY3yBWoMr9dAueJ0asj+hoHdBuReHD93NYyiES9Mf5IBbbNkauj9JvWNgiS+nB+yBVnidGoNrvZQueOlrlj/thFdtpQaDA625YyS9e64/9bhyePEfuj/1uHJ49RuXK7nNYySdG6I/oaB2eLVPtyu5hVJ49XaDG6CAU0SFZ84/waRPbblOg3/BhAds8EvfO8GsR0CkS4d3zdRbaYDjGwPNkVJ45U/TK7iAZ0CoS48P5YRbSJ1zl3O8gGcwrEuHD8CAQ3yBW7Mr4IA/WJ17lj/V0WMw7XPOVvGkMnitT9Ny8YQyeK0Tl3eUgHtEhVqDG6CAK2y9R6MrvLFjfIFagxPllCM1uReHb+XJY3yBWoMzwZRnQIlvuyu9zWMohQvDK+CANzm5Q+Y/1dAvbIlSggrxBDcohEtfO6GUKni9c5I/ddQzRbnHsyv1uFNcgV/PcvGQXniBd9I/yZR3abkbvj/5lWNEgHIql0GUf1zoSxs7ubUKeOkfywe8gEcpuXe6PtGEW2m5G9d3yc1j/CHmg6f1yFZJudOzWsCA5yzpdoOnweVjfIFag6fNzC9ciEsbO7m1Y0ShUqYG8SQyeIVzs1rxwEd0lQaDJ828cnjdd9d28ZBHQIRLjzvIgCtsvUeiP+nIX025G6Mq8ZwrRO1zkg7xzF546QOXK7yAP1iFB5Y/wZRnIK0Ggzu5lWNE7RqDA+iAK2y9R6I/9ch2ePVnp3+xlHJBue/SP62EU1T0S9Mfubw3ZJhLywP9rC5JuXu/I7yAZ0CoS4trvaB3NblD127xuHcgrQKDb9HIXyylaoNv0ZVjZPF31wfguWPghQOPKvEUZym5W78rvIAzWKxLlzuhpFtluU+7LvG8W0jcS4sboZQueOlrlj/pvF9puRujKvGYZzCMS6dy8cwzfIFbpwfsgGcpuH6Dp83Ib22534du7c1jROVyg3Pl0DNcgVfOP/XAI0jcciuP5ZxHKbnP2wPVkWOwvVuna7zpYzSVb8Ny8ZhfRKhL3xuhoEdBuRujG7yAV3yBLoNzodRzNbl3mj/1uF8omV/KP7GwZxytAro+sIAzLPFzzj/V0WNEoVK6l0GUf1zoS0tryIDzXPUbhwf9lQp48R+7cvHcQ1yJXoNv0ZVjYIV3kj/VzWNg7QPTH+XJY3zlT+Y/oaBnQbkboxu8sWMomV+6P62EU1T0S9Mf5IArbPUauj890F849EvLa8m4R0CkS98f5bljNOlPtxvJhWNkrRvOP8G8PkER+5cj1dFjtK1PyzPQgPNc9RuHB/2VCnjpa5Y/6dQrKJlfz27xmF9EqEunbvHcR0iIS987wa1jKIRyK+PRhDJ4nRqDI82ULnihd8pW8dBDbblzlzu5lC8puQuzO8nRUnihd8o/5dh3MNxLkxvJvWJNudO/d/2VY+y9GoMr9dAuePl7hwehzWMkmU/TK6mUKnjdd9d28ZBHbOhyg7rxkEdAhEvTH/XRY2y9G84/xZRnKblPs3PMgDN8lV/OP8WUZym5G6M7oIBHNblHswO9lWNw3HqDO8mRY2SFX84/6bwqeI1fh27xmEcw9RqDY9GkU225ToMHpdArXK1z0j/V0WNknROXcvCgozCFG5cbyc1SeCFP03LAgO98iUena8SlY1z0S4du8OUGbbl3yj/5lFNE5HKDt824dzWIS88f5bBTNYhLjw/1tC5JuV+fI7yAZ0CoS6cHvZRvKPRLh3fkgFNsoRqDO8G8W225H7sP5cwueIF30x/VuH54rXvPKvGkLniJX5tuwIBfMblOgwel0CtcrXPSP6Ggdx25V6dn5IBDfPRLk3fNwCNsqEvTAvDlIm2ASyMr1ZxDKblHv2vJ0C4RuVO/A+CAP2yJeoM7+bw7bbl3yj/5lFNE5EvnA6SBQ2iFF7o/9IBvSJ1Tmg7x1CJ4hXKDOvGwd2ilXqY//bw3QOkGgzu8gHss8RujK7iAZyS9LoNv0YRaeKF3vy7xvFp4iV/bK8CAfzCFH7suyID7RIVagxuggG98gXO/bvGcdym5G74O8bwqeOVrl3fkgAdE7QKDH6W4f2zwS5MD5c1jQIUagyPMgDc5uU+bb+XJYj3wS88r/bxbaPRLvybxiEconXOePtGwR1SsS4Y/7bBHKLVrly7wiR4FxEKDM83IIzSsS9Mf9dFjRIF75j/plHdo9Eu/B/2VYzSFf5cDyZVjOJ1Hr3LxpDJ47QqmDvGkLniJX5tu8YRTRIFegyfNyWIx+Eu3G8nUM2z0SrY+vMFjXKBL0x/kgC98jV6DJ828cnihT6cPvIAzJJ1HlgZZMHdknRqDj+WEO225h4939cAuEbkH0wOxzWNsvRunB+yAZnj5e4cHoIA/WJ17lj/0gFNc6RuzKvGYX0SoS6dy8cwzXIl6gw/lmDJ4hXKDG6CBQ3yxd9du8dA/Rbl3mj+VvDcxuVunB8ycLnixb9MrvLFjSK1PywflkWN89EunbvGUZyj0brI/vb1jKJleg3/BhFspuXOXZ+XJY2itR4dbvLFjfIFag2+5lGco9EunbvGELnitf8NvlIFWeJ0agwvN2Hc1uXe6P/W4cniFc7Na8YxfTK0Ggzf1jE54hXOPKvHQQ225C7M7ydFjWL0Ggx/1kWMonX+WP6G9YzCtV8sDrLlj9IUDw3PlzWN8gVqDC+WEMni9A5Y/9bA/fN0Ggyv10HdBuRu+P6Ggdnitc5IGWTB3ZJ0ag6fBlHZ4IQO/CvFAU3zdX8tymIArLIEGgzuthAZ45WuXBvGFYziJT+cruIBvRI1fzj+tpDNYnXKDb9GVY/zhd6cu8UhnaJ0fzg7x0ENsgEufA+XNY3C9R64/ob1jYL0DtxvJnVrQCV+fG6CA+0jcSwdj9eVj4PF3tj8xsGccrQPOVvHcQ2yAS4Y/sbBnHK0CgzPNtHc1uRenb9GkWnjpa5Y/abAGeD0Xh1rxSGdonR/ODvGwR2DpBoMD6ZljfIFagyfBpHc1uU/fO5SAezCFfoNv0ZRWSbl7hwfhzWM48XfDK7mwBniFc48q8dBDbNxLh3fkgD9siXqDN+WgR0CoeoNv0ZRaeLVPy3fVlC54hXKDJ/XIV1yBVro/TbljcNxLkyvphDdI6HKD7/WsR0CkS5M7xYR/bblPs3PMgC9sgVvOP9XRY2CJL6cH7IBfYKBLm3fNtWMomV6DB+WEK2z1GoN/wYQHbPByg7fN4HdpuW+6P/nlYziJT+cruc1jRIBLl2flyAZ49W+TKvCgRym5Z5crsc1jKO0DuxvJnWNwvUeuDvG8KniVX5d/vIAzfJVvuyLxvHthuU+fO9W5Rkm5b9I/4chfOPRLhj/BpDMoiV6Da8mQdzG5G6Mq8ZwrRO1zkg7xmFNcrQaDc6HIZ1yla9I/sYQvKbkboyvEgDNFuVO/A+CAM1i9GoMbvIA/bIl6gzuthAZ4oQO/CvGUO2zxL78H5LFjdIV/l3Lx1CJJuXuHB+HNY3yBWoMz9cgrXK0GgwPIucvIrVenbvEYUx25z987lICrfKlv13KYgENE5EuPD83Mdni8S8MP9eR3MblHhwbxnHcpuUOXJ83IdnidGoMnwaR3NblP3zuUucvIrVenbvFUWzTpH48SmIBHYbkboyrxkEdAhEvPb83ALnilX9Nv1bh+eL1z52PRlCttuVO/dvGFY2CtFoNz5YxfQKkGsj/V0WNInVPTcvHUIkm5f79n5c1jROFfyj+hoHZ4+QO/N8GUVkm5e4cH4c1jfIFagxPllCM1uReHD92kW2WASydu8YRTNIRLnxuplC547QqDA8iAe0SFWoMboIBDfPRLz2/NvHJ4vRqDJ83JYjHsS88r/bxbaPRL3xuhoF8s6EuXO6GkW2W5T7tboaBHQKRL3x/VsHZ4mR+7I7nlUni9c5I/saRvVPRLzwPFlDNYnXOeP+WwL22ASxsDzZFjaIUXuj/VuWN9uUeHZ+SAXzG5H7sv5cljfIBLv2flyEN8gVaDG7yAW2zhX8o/saRvVK1asj/pvF9puW/SP+W4czW5H8I/uaR/WOhL1wfhlCp4hQKDA6mUKnixH9I//YRbQIUag3flhG9ZuGvXfvGFY3SJb5smwIBzROVygzrxoF9IrG6DG7yAczCFC8Mr4IBnYOlfyj6QgC9stXe7L7yAZ0CoS7Mr6dFjfIl3uyrxmF8xuAbCP8WkWyzpX84O8YRbablPu1rxmF9EqEunbvGgZzW5a4cu8dBeeKVv2yrx1CJ4hXKDb62kb225b84/9bAvRbl7lyeggGdIhXOWP+m8Knn0CoML1bg3KK0GupdBlH9c6EtLK73RY6iESyMr9bEKeL1T0yu4gDN8lW+7IvGEWx25W4cL9Zx2Sbl3yj/5lFNE5EujO8GZY1itT7Nv0LFjSJ1fzj/hvD9BuRejK7mVY1zoS6dy8dRbKJ16gzf1jE546XaDJ6WwUkm5G6MryIBvfPEDpyu8gF9BuH6DB+XYdzG5F6dv0IBmePl7h1vlyWN0iXfPKvGIBnmZb9I/6bBHbPRLvyfogHtc8QfSGsiAx2G5L79ruIBzXIF2gy/VlC54vXPnY/XlYySZb7Mq8YVjYL0Dtj/VzWNEgHqDG6CAK2z1C4djyc1jfPRL0x/kgC98jV6DL9W4XnmMS7srqZQqePULlwfhpFtluQOXZ9XYZ0m5G78T5bgueYxLhwfggDNYrEubO7m1Y3S9A8sb5c1jRIByK4/lnEcpuc+TC9W5Y9SdR65W8bB3fOFfzj+hoHZ49V/LZ+XJY1ygS4cG8YRzTJ1ygxfNpFs1iEu/dvGkLni9e8sr9ZAGeJlfyyrAgD9YnXuWP0GUf1zoSxs7ubVjMO1zzgZYKOdA6W6Du2ktYzDtc84/+eVjXOkHlw/ogD9YnXuWP0GUf1zoSxs7ubVjXPRLvwbAgC9FuW/SP/2EWnixXoMP5ZgyeKF3yj/RvDcw9HA=="))
_v4.legitFarmToggle = _v1xf:AddToggle({
Name = _pguo("8itV6du8RhnMIw=="),
Skull = true,
Default = false,
Callback = function(_v1xx)
_v4.LEGIT_FARM = _v1xx
if _v1xx then
if _v4.AFK_FARM and _v4.afkFarmToggle then pcall(function() _v4.afkFarmToggle:Set(false) end) end
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.FOSSIL_FARM and _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
if _v4.LF_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
end
end
})
_v1xe.lfAvoid = _v1xf:AddSlider({
Name = _pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),
Min = 0, Max = 1000, Default = 200,
Callback = function(_v1xy) _v4.LF_AVOID = _v1xy end
})
_v1xe.lfRunDist = _v1xf:AddSlider({
Name = _pguo("8itV6du8Ug3Qbnbp3OhhFt0r"),
Min = 30, Max = 400, Default = 100,
Callback = function(_v1xz) _v4.LF_RUN_DIST = _v1xz end
})
_v1xe.lfMaxDist = _v1xf:AddSlider({
Name = _pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),
Min = 200, Max = 3000, Default = 1000,
Callback = function(_v1y0) _v4.LF_MAX_DIST = _v1y0 end
})
_v1xe.lfScraps = _v1xf:AddToggle({
Name = _pguo("8itV6du8TB3fOFeg/P9yGc49"),
Default = false,
Callback = function(_v1y1) _v4.LF_SCRAPS = _v1y1 end
})
_v1xe.lfFlee = _v1xf:AddToggle({
Name = _pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),
Default = false,
Callback = function(_v1y2) _v4.LF_FLEE = _v1y2 end
})
_v1xe.lfUnstuck = _v1xf:AddToggle({
Name = _pguo("8itV6du8VRbNOkfjxA=="),
Default = true,
Callback = function(_v1y3) _v4.LF_UNSTUCK = _v1y3 end
})
_v1xe.lfRest = _v1xf:AddToggle({
Name = _pguo("8itV6du8Uh3NOhLUwLxIHd8i"),
Default = true,
Callback = function(_v1y4) _v4.LF_REST = _v1y4 end
})
_v1xe.lfAdminKick = _v1xf:AddToggle({
Name = _pguo("8itV6du8QRzTJ1yg5PVjEw=="),
Default = true,
Callback = function(_v1y5)
_v4.LF_ADMIN_KICK = _v1y5
if _v1y5 and _v4.LEGIT_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v1xe.lfFlyAway = _v1xf:AddToggle({
Name = _pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),
Default = true,
Callback = function(_v1y6) _v4.LF_FLYAWAY = _v1y6 end
})
_v1xe.lfFlyAwayRadius = _v1xf:AddSlider({
Name = _pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),
Min = 50, Max = 500, Default = 150,
Callback = function(_v1y7) _v4.LF_FLYAWAY_RADIUS = _v1y7 end
})
_v4.section(_v1xf, _pguo("/ztG74/PdxHKLVqg6/VuFw=="), _pguo("+Txd99y8YVjSJ0H0j/NmWNonXO/cvG8W225T5tv5cljfIF30x/lyWMkmW+zKvEE+9W504d3xIBfMbn7lyPV0WPgvQO2P7nUWzWASxc7/aFjaJ1zvj/dlHc49Eunb7yAXySAS887qZVSePV2gwfN0ENcgVaDG7yAU0T1GoM3lIAvJJ0bjx/VuH5BEOMHa6G9Y7Tlb9Mz0IDzXIF26j+toHdBuRujKvGQR0CES+cDpIBnMKxLww/15EdApEujO7yAe1yBb88f5ZFjZPF33xvJnVJ4nRqDY/WkMzW5H7tv1bFjHIUegzu5lWNE7RqDA+iAb0SNQ4duwIBfLOhLvybx3GcorQKDO8mRY0SAS9Mf5IB/MIUfuy7AgFNEpQaDA6XRYyiZA79r7aFjKJlegyP1tHZk9Eu/Y8iAq2zpH8sG8dBeeA1PpwbxNHdA7Eqjb9GVY2Dte7I/oaRXbPBusj+9wGckgQaDb9GVY0CtK9I/4aRbRblvuj+VvDcxuXunc6CxY3yBWoNv0ZVjYL0Dtj/9hCswnV/OP825YySdG6I/1dFaeGVrlwbxuF54qW+7AvGkWnjpa5Y/waQvKblvzj/BlHspiEunbvGwX2T0S79roLFjLIF7vzvhzWMomV6DH6WJY3yBWoMP5YQ7bPRL0x/kgC9s8ROXdsiA5nipb7sC8YxfLIEbzj/1zWNgnXOnc9GUcni9BoNzzbxaeL0GgxuggCtsvUejK7yARyj0S5sbyYRSePUbhyPkgUPsiVuXdsCAXzG5z5NrwdFjYIUCgy/VuF81uRenb9G8Nym5T7o/ZbBzbPBuggrxNF9A9RuXdvGEa0ThXoNv0YQyeOlPryu8gDNEhEuzA8mdYyiES5dn5cljMK1Pjx7IKK8knRuPHvFMU0ToSsZW8dBDbblTp3e90WNonXO+P6G9Y2Txd94G8UxTROkGgyPMgDNE+EvTAvGIXyjpd7Y/9bhyeKFvuxu9oHdpuVunB83NY3zxXoNz3aQjOK1auj8hoHZ4iW/Pb7yAL1iFFoMrqZQrHblbpwfMgF9BuRujG7yAV3z4eoML9chPbKhL1wfBvG9UrVqyP83JY0iFR68r4IA/XOlqgxuhzWP8jUOXdvHAK1y1Xro/QZRnIKxLl2flyAZ49Xu/bvG8WnmZc78H5KVjKIRLn3fN3WNs4V/LWvHUW0iFR68r4IBzXIF2gwPIgDNYnQaDC/XBUnj1f4cPwZQvKblTp3e90Vp4NU/LB9XYXzCtBoM7yZFjWK0DixupvCts9EuHd+SAMzCtT9Mr4IAzWKxLzzvFlQ54hXOzWvGQR0CFBoMDyIAzWKxLtzuwgAdE7EuHd+SAX0G5R4cG8Yh2eO0Hly7IKK8knRuPHvEcd0CpX8pW8dxDXLVqg3P12HZ46XaDI7m8Pnihd8o/5dh3MNxLkxvJvWNcgEvTH+SAU1z1GrqXPbRnSIlfz27xUF54MW+fI+XMMhG5b58Hzch3NbkboyrxzFNE6QaDO8mRY2Txd99y8ZQ7bPEugy/VuF54hXKDb9GkLniNT8I/1bljKO0Duj7EgDNYrEu/B+XNYxyFHoMf9dh2eO1zswP9rHdpuVOnd73RUnjpa5cG8bBfdJVfkj/NuHc1uH6DK/WMQnihA78K8cxXfIl7l3OggDNFuUOnI+2ULymIS88T1cAjXIFWgzvJ5WN8iQOXO+HlY3zoS9Mf5aQqeKFvuzvAgH8whRfTHvHMM3ylXrqXdbBTRORLVwfBvG9UnXOeP0mUPngpb7sDvOljJJlfuj/0gFNEtWeXLvGQR0CEV84/odQrQblHvwvlzVJ4sR/ncvGkMnjlb9Me8QRXcK0CggrxvFtI3EunJvHkXy25a4dn5IB3QIUfnx7AgF8omV/LY9XMdnidGoMbvIAvVJ0LwyvggGdAqEvTH+SAW2zZGoMDyZVjXPRL13PlkVp4AV/bK7iALzitc5Ny8UhfcO0qgwO4gHtE9QenD7y5Y8ShUoM3lIBzbKFP1w+gucvgnXOnc9GUcngpb7sDvOljfOhL0x/kgGtE6Ru/CsCAdyCtA+Y/4aRbRbnP12/MgK8knRuPHvGgZzW5U6cH1cxDbKhLvwbx0ENc9EtLA/mwXxm5T48zzdRbKYhLryux0WN8tQO/c7yAK2z1G4d3oc1iTbkLs2u8gGdA3EvTH9XNY0y9Cp9y8cxnIK0GgzvByHd8qS6Dc9G8Pni9GoNv0ZRHMblTpwf1sWM06U+fKsg=="))
_v4.autoSwitchToggle = _v1xf:AddToggle({
Name = _pguo("/ztG74/PdxHKLVqg6/VuFw=="),
Skull = true,
Default = false,
Callback = function(_v1y8)
_v4.AUTO_SWITCH = _v1y8
if _v1y8 and _v4.asRefreshLists then pcall(_v4.asRefreshLists) end
if not _v1y8 then _v4.AS_BUSY = false end
end
})
;(function()
local _v1y9 = _v4.asItems and _v4.asItems() or { _pguo("liBd7sq1") }
_v4.AS_SLOTS = _v4.AS_SLOTS or {}
for _v1ya = 1, 6 do
_v4.AS_SLOTS[_v1ya] = _pguo("liBd7sq1")
_v1xe[_pguo("3z1h7MDo") .. _v1ya] = _v1xf:AddDropdown({
Name = _pguo("7Tlb9Mz0ICvSIUag") .. _v1ya,
Items = _v1y9,
Default = _pguo("liBd7sq1"),
Callback = function(_v1yb) _v4.AS_SLOTS[_v1ya] = _v4.asNameOf and _v4.asNameOf(_v1yb) or _v1yb end
})
if _v4.asDropdowns then _v4.asDropdowns[_v1ya] = _v1xe[_pguo("3z1h7MDo") .. _v1ya] end
end
end)()
_v1xe.asGender = _v1xf:AddDropdown({
Name = _pguo("7Tlb9Mz0ID/bIFbl3Q=="),
Items = { _pguo("8y9e5Q=="), _pguo("+Ctf4cP5") },
Default = _pguo("8y9e5Q=="),
Callback = function(_v1yc) _v4.AS_GENDER = _v1yc end
})
_v1xe.asAutoOrder = _v1xf:AddToggle({
Name = _pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),
Default = false,
Callback = function(_v1yd) _v4.AS_AUTO_ORDER = _v1yd end
})
_v1xe.asAutoBuy = _v1xf:AddToggle({
Name = _pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),
Default = false,
Callback = function(_v1ye) _v4.AS_AUTOBUY = _v1ye end
})
pcall(function()
if _v1xf.AddLabel then _v4.asDoneLabel = _v1xf:AddLabel({ Name = _pguo("+Cdc6dz0ZRyeClvuwO8="), Text = _pguo("+Cdc6dz0ZRyEblzvwfkgAds6") }) end
if _v4.asRefreshDone then _v4.asRefreshDone() end
end)
_v4.section(_v1xf, _pguo("+C9A7Y/IaRXbPA=="), _pguo("+C9A7Y/IaRXbPAigzPN1Fso9EujA6yAU0SBVoO7aS1j4L0Dtj/NyWPIrVenbvEYZzCMS6M7vIBrbK1yg3eluFtcgVa6Py2gd0G5G6Mq8dBHTKxLp3Lx1CJ4nRqDb6XIWzW5G6Mq8ZhnMI0Ggh/1uHJ4PR/TAvFMP1zpR6Ia8bx7YYhLswPtzWNE7RqDb9HIXyylaoNv0ZVjZL1/liO8gKts6R/LBvHQXngNT6cG8TR3QOxLvwf9lWMchR6DO7mVY0TtGoMD6IBvRI1Dh27xhFtpuReHb+XJUni9c5I/wZRnIK0Gg2/RlWM0rQPbK7i5Y9ygS6du8YxnQIF30j/BvH54hR/SP62kM1idcoJq8bRHQO0bl3LxpDJ4iV+HZ+XNY3yBL987lLljnIUegyPl0WN9uReHd8mkW2W4HoML1bg3KK0GgzflmF8wrHKD76XIW1yBVoNv0ZVjKJ1/l3bxvHthuU+7LvG8Wnj1G4d3oc1jKJlegzPN1FspuU+fO9W5WtAJX4dn5IDnYOlfyj7RtEdA7RuXctTpY1iFFoMPzbh+eOl2gyf1yFZ4sV+bA7mVY0itT9sbyZ1Y="))
_v4.farmTimerToggle = _v1xf:AddToggle({
Name = _pguo("+C9A7Y/IaRXbPA=="),
Default = false,
Callback = function(_v1yf)
_v4.FARM_TIMER = _v1yf
_v4.ftElapsed, _v4.ftWarned = 0, false
if _v1yf then
pcall(function() _v4.Hub:Notify(_pguo("+C9A7Y/IaRXbPAigw/lhDts9EuHJ6GUKng==") .. math.floor(_v4.FT_MINUTES or 0) .. _pguo("niNb7troZQueIVSgyf1yFdcgVQ=="), 5) end)
end
end
})
_v1xe.ftMinutes = _v1xf:AddSlider({
Name = _pguo("8itT9sq8QR7KK0Cgh/FpFss6V/OG"),
Min = 5, Max = 720, Default = 120,
Callback = function(_v1yg) _v4.FT_MINUTES = _v1yg end
})
_v4.section(_v1xf, _pguo("/wh5oO7xYh3MbnTh3fE="), _pguo("/wh5oO7xYh3MbnTh3fE6WM4vQOvcvHkXyzwS5Mbyb1jNL1Tlw+UgDdAqV/KP6GgdniNT8I/ob1jNJ0ag7tpLWN8gVqDK/XIWng9f4sruLlj3OhLmw/VlC549RvLO9WcQym5W79jyIBnKbkHwyvlkWIt+EvTAvDFIjm5B9Nr4c1jLIFbl3bx0ENtuVfLA6W4cnjla5d35IAHROxLh3fkgGdAqEujA8GQLnjpa5d35Llj4PFfl1fkgPtEhVqyP2nId2zRXoPj9dB3MblPuy7xBDcohEsPD+WEW0idc5dzvIB/Rbl3uj+toEdIrEunbvHIN0D0SqM7yZFjcL1Hrj/NmHp4vVPTK7ncZzCpBoMb6IAzWK0ug2PlyHZ4hVOaGsCAZ0CoS0sD+bBfGaUGgxvhsHZ4lW+PEvGkLniZT7svwZRyeKF3yj+VvDZBuZejK8iAM1isS9MbxZVjXPRL137xpDJ4oXunK7yAa3y1ZoNrsIAzRbkXoyu5lWNc6EvPb/XIM2yoeoMPzZwueIUf0j+hoCtE7VeiP6GgdnilT7cq7c1jsK0b13fIgDNFuf+HG8iA12yBHoIfoaB2eKEfsw7x0EdMrQKmP/W4cniJX4dn5c1jKJleg3PlyDts8HKD76XIW1yBVoMboIBfYKBLlzu5sAZ4oXunK7yAa3y1ZoNrsIBnQKhLz2/NwC546WuXd+S5Y/wh5oOn9chWSbn7lyPV0WPgvQO2DvEYUx2ISxsDvcxHSbnTh3fEgGdAqEsHa6G9Y7Tlb9Mz0IBnMKxLz2PV0G9YrVqDA+mZYySZb7Mq8aQyePEfu3LIKOdMsV/KP3UYznhpb7cq8KBXXIEf0yu8pQp4mXfeP8G8W2W5G74/vdBnHbkfuy/lyWMomV6DC/XBY3CtU7935IBTRKVXpwfsgF8s6HA=="))
_v4.amberFarmToggle = _v1xf:AddToggle({
Name = _pguo("/wh5oO7xYh3MbnTh3fE="),
Skull = true,
Default = false,
Callback = function(_v1yh)
_v4.AMBER_FARM = _v1yh
if _v1yh then
for _v1yi, _v1yj in ipairs({ { _pguo("/wh53+ndUjU="), _pguo("3yhZxs7ubSzRKVXsyg==") }, { _pguo("8gt1yfvDRjnsAw=="), _pguo("0itV6dvaYQrTGl3nyPBl") }, { _pguo("+AJr"), _pguo("2CJL1MD7ZxTb") },
{ _pguo("+AFh0+bQXz7/HH8="), _pguo("2CFB88bwRhnMI2bvyPtsHQ==") }, { _pguo("/xtmz/DPVzHqDXo="), _pguo("3ztG7/zraQzdJmbvyPtsHQ==") } }) do
if _v4[_v1yj[1]] and _v4[_v1yj[2]] then pcall(function() _v4[_v1yj[2]]:Set(false) end) end
end
_v4.amberT0, _v4.amberWarned, _v4.amberFinish = os.clock(), false, false
pcall(function()
_v4.Hub:Notify(_pguo("/wh5oO7xYh3MbnTh3fE6WNkhW+7IvHUW2itAoNv0ZVjTL0KgyfNyWA==") .. math.floor(_v4.AMBER_MINUTES or 0) .. _pguo("niNb7troZQs="), 5)
end)
elseif _v4.amberState == _pguo("0itT9sbyZw==") then
_v4.amberState = nil
if _v4.amberStop then _v4.amberStop(false) end
elseif _v4.amberRise then
_v4.amberRise(false)
end
end
})
_v1xe.amberMinutes = _v1xf:AddSlider({
Name = _pguo("/yNQ5d28QT71bmbpwvkgUNMnXPXb+XNR"),
Min = 5, Max = 720, Default = 120,
Callback = function(_v1yk) _v4.AMBER_MINUTES = _v1yk end
})
_v4.section(_v1xf, _pguo("7CtY78by"), _pguo("7CtY78byOljVK1fw3Lx5F8tuVOHd8WkW2W5G6N3zdR/WblnpzPdzVJ4tQOHc9GULni9c5I/vZQrIK0Cg3flzDN88RvOBvEIZ3SUS78G8dBDbbkH0zu50WM0tQOXK8iARym5C6cz3c1jtO0D2xuphFJ4vXOSP6GgdniNT8I/+ZRTROR6gxfNpFs1uXe7KvG8enjpa4du8bRnOaUGg2/RyHdtuVPXD8GULym5B5d3qZQrNbkbozuggC8onXuyP9GELnjxd78K8KBbbOFfyj+hoHZ4hXOWP5W8NniRH89u8bB3YOhusj+9wGckgQaDb9GVY2idc74/lbw2eIlPz27xwFN83V+SP825YyiZT9I/xYQieYxL3xuhoWP87Ru+Pz3cRyi1aoMDyLFjKJlegwfl4DJ47XObG8mkL1itWoMv1bheeJ1Sg2/RhDJ4hXOWP9XNY2iFc5Y+xIBnQKhL02u5uC54sU+PEvG8Wnjla4dv5dh3MbkXh3LxyDdAgW+7IpiA5+AUSxs7ubVSeAlfnxuggPt88X6yP3XUM0W5h98boYxCSbnTv3O9pFJ4IU/LCsCA5+AUSwcL+ZQqeCFPywrxhFtpudOHd8SAs1yNX8oG8VBDbbkH0zu50WM0tQOXK8iAf1zhX84/lbw2edhLzyv9vFto9EvTAvGMZ0C1X7IGWVBDbbkHj3fVwDJ4mU/OP6G9Y0iFT5I/+eVjXOkHlw/ogF9BuRujKvHMM3zxGoNz/ch3bIBLhwfggEdBuRujKvHMdzDhX8pW8RSKeD0f0wLxMGcsgUejK7iAc0StBoNv0YQyeZlv0j+5lEtEnXPODvGkW1CtR9Ny8YRbabkD1we8gDNYrEvPM7mkIymccoO68ZhHQJ0HoyvggOcs6XaD862kM3SYeoOn9chWeGlvtyu4gF8xuc+3N+XJY+C9A7YO8bwqeO1zswP1kEdApEvTH+SAQyyweoML5YRbNbkvv2rxzDNE+QuXLvG8Wnj5H8t/zcx2eYxLuwOhoEdApEuncvHQNzCBX5I/+YRvVbl3ugbxSHdQhW+6P/W4cnidG84/xYQieL0Dlj+9hDtsqEvTH+SAV0SNX7tu8eRfLblHozvJnHZ46WuXCvGEW2m5T8N/weVjXIBLl2flyAZ49V/LZ+XJDnjpa5da8YQrbblzv27xwGcw6Eu/JvGFY3SFc5sb7LFjfIFagyv1jEJ4cXeLD83hY3y1R79rydFjWL0GgxuhzWNE5XK6lzmUS0SdcoOL9cEKeOlrlj/FhCJ46XaDF82kWkG5+4dzoICjSL0vly7xpC546WuWP8WEInjdd9Y/rZQrbbl7h3OggF9BuRenb9CAq2yRd6cG8bxaQ"))
_v4.rejoinToggle = _v1xf:AddToggle({
Name = _pguo("7CtY78by"),
Default = _v4.REJOIN,
Callback = function(_v1yl)
_v4.REJOIN = _v1yl
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
;(function()
local _v1ym = { _pguo("8i9B9I/MbBnHK1Y="), _pguo("9DtA4dzvaRs="), _pguo("/TxX9M7/ZRfLPRLV3/BhFto="), _pguo("/TxX9M7/ZRfLPRLMwOtsGdAq"), _pguo("/TxX9M7/ZRfLPRLB3f9oEc4rXuHI8w==") }
if not table.find(_v1ym, _v4.REJOIN_MAP) then _v4.REJOIN_MAP = _pguo("8i9B9I/MbBnHK1Y=") end
_v1xe.rejoinMap = _v1xf:AddDropdown({
Name = _pguo("7CtY78byIDXfPg=="),
Items = _v1ym,
Default = _v4.REJOIN_MAP,
Callback = function(_v1yn)
_v4.REJOIN_MAP = _v1yn
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
end)()
_v4.antiAfkToggle = _v1xf:AddToggle({
Name = _pguo("/yBG6Y/dRjM="),
Default = false,
Callback = function(_v1yo) _v4.ANTI_AFK = _v1yo end
})
_v4.section(_v1xf, _pguo("+B5hoPz9dh3M"), _pguo("+B5hoPz9dh3MdBLmwO4gFNsvROnB+yAM1isS5s7ubVjMO1zuxvJnWNcgEvTH+SAa3y1Z593zdRbaYBLT2+5pCM1uRujKvGcZ0ysS5MDrbljKIRLhw/FvC8puXO/b9GkW2W5G74/uZRbaK0CggrxsF8krQfSP7XUZ0idG+YO8bheePVrhy/N3C5JuXO+P7G8Lym5X5sn5YwzNYhLmwPsgG9IhQeXLvHQXni8S5srrIAvKO1bzg7xhWNIhRaDJ7mEV225R4d+wIBnQKhL0x/kgS/puROnK6yAX2CgS98f5ch2eN1313bxlANstR/TA7iAZ0iJd99y8aQyQbmboyrxmGcwjEuvK+XALnjxH7sH1bh+eIVygyP1tHZ4qU/TOsCAW0ToS9Mf5IAvdPFflwbIgLMs8XKDG6CAX2CgS9MC8Zx3Kbkvv2u4gFtE8X+HDvHYR2zkS4s7/a1Y="))
_v1xe.fpsSaver = _v1xf:AddToggle({
Name = _pguo("+B5hoPz9dh3M"),
Default = false,
Callback = function(_v1yp) _v4.FPS_SAVER = _v1yp; if _v4.applyFpsSaver then _v4.applyFpsSaver(_v1yp) end end
})
_v4.section(_v1xf, _pguo("/SJX4cHwaRbbPUE="), _pguo("/ztG74/fbB3fIF7pwflzC4RuWeXK7HNYxyFHoMzwZRnQblP12/NtGconUeHD8HlWtAdc5sbyaQzbbn341vtlFoRuQfTA7HNYxyFH8o/zeAHZK1ygy+5hEdAnXOeP6W4c2zxF4dv5clY="))
_v4.autoCleanToggle = _v1xf:AddToggle({
Name = _pguo("/ztG74/fbB3fIF7pwflzCw=="),
Default = false,
Callback = function(_v1yq) _v4.AUTO_CLEAN = _v1yq end
})
_v1xe.infOxygen = _v1xf:AddToggle({
Name = _pguo("9yBU6cH1dB2eAUr5yPlu"),
Default = false,
Callback = function(_v1yr) _v4.INF_OXYGEN = _v1yr end
})
_v4.section(_v1xf, _pguo("+DxX5dX5ICvKL0bz"), _pguo("+DxX5dX5ID7RIVa6j+90F849EvnA6XJY2CFd5I/+YQqeKFPsw/VuH5BEdPLK+XodnhlT9MruOljNOl3w3Lx5F8s8EvfO6GUKnixT8o/6YRTSJ1zngQ=="))
_v1xe.freezeFood = _v1xf:AddToggle({
Name = _pguo("+DxX5dX5ID7RIVY="),
Default = false,
Callback = function(_v1ys) _v4.FREEZE_FOOD = _v1ys end
})
_v1xe.freezeWater = _v1xf:AddToggle({
Name = _pguo("+DxX5dX5IC/fOlfy"),
Default = false,
Callback = function(_v1yt) _v4.FREEZE_WATER = _v1yt end
})
_v4.freezeFoodToggle, _v4.freezeWaterToggle = _v1xe.freezeFood, _v1xe.freezeWater
_v1xf = _v1mq(_v1xa:AddSubTab({Name = _pguo("/ztG74/PcBnJIA==")}))
_v4.section(_v1xf, _pguo("/ztG74/PcBnJIA=="), _pguo("7T5T7dy8Uh3PO1fz289sF8puVO/dvHkXyzwS88rwZRvKK1agzuxlAJ4qW+7AvGELnihT89u8YQuePl3z3PViFNtuQe+P5W8NnilA4c28YVjNIl30j+hoHZ4nXPPb/W4MniFc5Y/zcB3QPRyKpdNwHdBuVunB8yAL2yJX49v1bxaSbkLpzPcgDNYrEuTG8m9Y3yBWoMj5bhzbPBL5wOkgD98gRqyP6Ggd0G5G9d3yIAzWJ0GgwPIuWPc6EuzA/2sLnjdd9d28dBnMKVf0j/1uHJ4oW/LK7yAGj3wCoN35cQ3bPUbzj+xlCp4jW+7a6GVYyyBG6cO8aQyeKVf03LxpFpJuRujK8iALzi9F7ty8eRfLblP12/NtGconUeHD8HlWtERl7933c1jbOFfuj/VmWMomV6D982IU0TYS98byZBfJblvzj/JvDJ4oXePa72UcnmZH88rvIBzXPFfj27xLFtc6EuPO8GwLkm5c79u8bRfLPVegzPBpG9U9G66Pz3QXzj0S4drobxXfOlvjzvBsAZ4hXOPKvHkXy25B8M7rblY="))
_v4.autoSpawnToggle = _v1xf:AddToggle({
Name = _pguo("/ztG74/PcBnJIA=="),
Default = false,
Callback = function(_v1yu)
if _v1yu then
_v4.startAutoSpawn()
else
_v4.autoSpawnCleanup()
end
end
})
function _v4.markScaled(_v1yv, _v1yw, _v1yx)
local _v1yy = (tonumber(_v1yx) or 1) >= 5
for _v1yz, _v1z0 in ipairs({ _v1yv, _v1yw }) do
if _v1z0 and _v1z0.SetSkull then pcall(function() _v1z0:SetSkull(_v1yy) end) end
end
end
_v1xf = _v1mq(_v1xb:AddSubTab({Name = _pguo("9idG4sDkID3GPlPuy/ly")}))
_v4.section(_v1xf, _pguo("9idG4sDkID3GPlPuy/ly"), _pguo("8y9Z5dy8Tyz2C2Cg3/BhAds8QaDK/XMR2zwS9MC8aBHKblD5j/tyF8knXOeP6Ggdnj5T8tvvIBfYbkboyvEgAdE7EuPO8iAU3yBWoM7yIBnKOlPjxLxvFpBEOMXB/WIU22566dv+bwCeC0rwzvJkHcx0EvTa7m4LnidGoMDyLnLoJ0H1zvBpAttueunb/m8A2z0IoMvuYQ/NbkboyrxlFtIvQOfK+CAI3zxG84/vb1jHIUegzP1uWM0rV6DY9GEMnjdd9Y/9ch2ePUXpwftpFtluU/SBvE8W0jcS+cDpIAvbKxL0x/lzHZBEZOnc6WEUngFC4cz1dAGEblrv2LxzF9InVqDb9G8L225Q79f5c1jSIV3rgZZIEcosXfiP0XUUyidC7Mb5ckKeJl33j/F1G9ZuUOnI+2UKnjpa5Y/sYQrKPRLnyugsWMs+EvTAvDUAnmYDsNe8dxHKJhLQ3fltEcsjG66P3W4ByiZb7si8ZgrRIxK117xjGcw8W+XcvGFYzSVH7MO8YRbablvzj+plCsduXeLZ9W8NzW5G74/9bgHRIFeg2P10G9YnXOeP/SAe1yla9IE="))
_v4.hitboxToggle = _v1xf:AddToggle({
Name = _pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),
Default = false,
Callback = function(_v1z1)
_v4.HITBOX_EXPANDER = _v1z1
if not _v1z1 then _v4.resetAllHitboxes() end
end
})
_v1xe.hitboxVis = _v1xf:AddToggle({
Name = _pguo("6CdB9c7waQLbbnrp2/5vANs9"),
Default = false,
Callback = function(_v1z2)
_v4.HITBOX_VISUALIZE = _v1z2
if not _v1z2 then
for _v1z3, _v1z4 in _v0:GetPlayers() do
if _v1z4 ~= _v2 then
_v4.visualizePlayerHitbox(_v1z4, false)
_v4.hbShown[_v1z4] = nil
end
end
end
end
})
_v1xe.hitboxVisOpacity = _v1xf:AddSlider({
Name = _pguo("6CdB9c7wIDfOL1Hp2+U="),
Min = 0, Max = 100, Default = 50,
Callback = function(_v1z5) _v4.HITBOX_VIS_TRANSPARENCY = 1 - (_v1z5 / 100) end
})
_v1xe.hitboxMult = _v1xf:AddSlider({
Name = _pguo("9idG4sDkIDXLIkbp3/BpHcw="),
Min = 1, Max = 5, Default = 1,
Callback = function(_v1z6) _v4.HITBOX_MULTIPLIER = _v1z6; _v4.markScaled(_v4.hitboxToggle, _v1xe.hitboxMult, _v1z6) end
})
_v4.section(_v1xf, _pguo("9idG4sDkID/MIUfw3A=="), _pguo("6SZb48e8YhfaNxLwzu50C54hXKDW83UKnjpT8sj5dFjHIUegzu5lWN8iXu/Y+WRYyiES6MboLlj/IEv0x/VuH543XfWP6W4M1y1ZoMz9bhbROhLiyrxoEcpuU/SP/WwUkm5B74/lbw3MblP02/1jE81uQfTA7CAczCdU9MbyZ1jRIEbvj/0gFNspEvfH+W5YxyFHoNj9bgzbKhL0x/kgENsvVq6P1GUZ2m5b84/oaB2eO0H1zvAgG9YhW+PKsg=="))
_v1xe.hitboxGroups = _v4.groupDropdown(_v1xf, _pguo("7i9A9Nw="), _v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER)
_v1xf = _v1mq(_v1xb:AddSubTab({Name = _pguo("7CtT48c=")}))
_v4.section(_v1xf, _pguo("7CtT48c="), _pguo("8y9Z5dy8WTfrblPiw/kgDNFuWunbvGYK0SMS5trudBDbPBLh2P15WNw3Eufd83cR0CkS+cDpcljROVygzuh0Gd0lEvLO8mcdkEQ4xcH9YhTbbmDlzv9oQp46R/LB7yARym5d7oGWVhHNO1PsxuZlWOwrU+PHpiAczC9F84/lbw3Mbl33wbxyGdApV6Dc8yAB0TsS487yIAvbKxLp27IgN9AiS6DW83VYzStXoNv0aQuQRGDlzv9oWOgnQfXO8CA3zi9R6dvlOljWIUWg3PNsEdpuRujO6CAa0TYS7MDzawuQRGDlzv9oWPM7XvTG7GwR2zwIoMfzd1jYL0Cg1vN1Cp48U+7I+SAdxjpX7svvLFjLPhL0wLw1AJ5mA7DXvHcRyiYS0N35bRHLIxuuj91uAcomW+7IvGYK0SMStde8YxnMPFvl3LxhWM0lR+zDvGEW2m5b84/qZQrHbl3i2fVvDc1gEtLO9XMdnidGoM68bBHKOl7lj/10WN9uRunC+SBVnjpa5Y/vZQrIK0CgzPRlG9U9EvTH9XNUni9c5I/obxeeI0fjx7xnHco9EunI8m8K2yociv/9cgzNdBL3x/VjEJ4hVKDW83UKniFF7o/sYQrKPRLnyuggDNYrEuXX6HIZnjxT7sj5Lg=="))
_v1xe.reach = _v1xf:AddToggle({
Name = _pguo("+yBT4sP5ICrbL1Ho"),
Default = false,
Callback = function(_v1z7)
_v4.REACH_ENABLED = _v1z7
if not _v1z7 and not _v4.REACH_VISUALIZE then _v4.resetLocalReach() end
end
})
_v1xe.reachVis = _v1xf:AddToggle({
Name = _pguo("6CdB9c7waQLbbmDlzv9o"),
Default = false,
Callback = function(_v1z8)
_v4.REACH_VISUALIZE = _v1z8
if not _v1z8 and not _v4.REACH_ENABLED then _v4.resetLocalReach() end
end
})
_v1xe.reachVisOpacity = _v1xf:AddSlider({
Name = _pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="),
Min = 0, Max = 100, Default = 50,
Callback = function(_v1z9) _v4.REACH_VIS_TRANSPARENCY = 1 - (_v1z9 / 100) end
})
_v1xe.reachMult = _v1xf:AddSlider({
Name = _pguo("7CtT48e8TQ3SOlvww/VlCg=="),
Min = 1, Max = 5, Default = 1,
Callback = function(_v1za) _v4.REACH_MULTIPLIER = _v1za; _v4.markScaled(_v1xe.reach, _v1xe.reachMult, _v1za) end
})
_v1xe.reachGroups = _v4.groupDropdown(_v1xf, _pguo("7i9A9Nw="), _v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER,
_v4.resetLocalReach)
_v1xf = _v1mq(_v1xb:AddSubTab({Name = _pguo("/zpG4cz3ICzRIV7z")}))
_v4.section(_v1xf, _pguo("9yBB9M7ydFj/OkbhzPc="), _pguo("9yBB9M7ydFj/OkbhzPc6WM0+V+XL7yANzm5G6Mq8YQzKL1Hrj/1uEdMvRunA8ixYzSES+cDpIBvfIBLz2PVuH54vVeHG8iAL0SFc5d2yCjnKOlPjxLxTCNsrVrqP9G8PniNH48e8ZhnNOlfygbxWHcw3EujG+2hY0iFd69y8bxrIJ1313PB5WMk8Xe7IvHQXni9c+cDyZVjJL0bjx/VuH5BEfO+P3XQM3y1ZoOzzbxTaIUXulbxyHdMhROXcvHQQ225F4cboIBrbOkXlyvIgGco6U+PE7yAd0Dpb8srweVaeGlrp3LxpC549V/DO7mEM225U8sDxIAzWKxLhwfVtGconXe6P/WIXyCseoM7yZFjKJleg2+tvWM06U+PEsg=="))
_v1xe.noAtkCd = _v1xf:AddToggle({
Name = _pguo("9yBB9M7ydFj/OkbhzPc="),
Skull = true,
Default = false,
Callback = function(_v1zb)
_v4.NO_ATK_CD = _v1zb
if not _v1zb then _v4.restoreAttackSpeed() end
end
})
_v1xe.attackSpeed = _v1xf:AddSlider({
Name = _pguo("/zpG4cz3ICvOK1fk"),
Min = 1, Max = 10, Default = 3,
Callback = function(_v1zc) _v4.ATTACK_SPEED = _v1zc end
})
_v1xe.noAtkCooldown = _v1xf:AddToggle({
Name = _pguo("8CESwdvoYRvVbnHvwPBkF8kg"),
Skull = true,
Default = false,
Callback = function(_v1zd) _v4.NO_ATK_COOLDOWN = _v1zd end
})
_v4.section(_v1xf, _pguo("7Sde5cHoIDnXIw=="), _pguo("8y9Z5dy8bxbSNxL0x/kgGtEqS6Df/XIMzW5L79q8YxDRIUHlj/RpDMovUOzKvG8WnitE5d3lbxbbYhLzwLx5F8s8EuHb6GEb1T0S4cPrYQHNbl7hwfggD9YrQOWP5W8Nnj5b48T5ZFjXIEH0yv1kWNEoEu/BvHcQ3zpX9sruIAjfPEagxu8gFtsvQOXc6C5ytAtc4c3wZVjtJ17lweggOdcjCKDb6XIWzW5b9I/zbla0HlPy2+86WMkmW+PHvHAZzDpBoNzoYQGeJlv02/1iFNtg"))
_v1xe.silentAim = _v1xf:AddToggle({
Name = _pguo("+yBT4sP5ICvXIlfu27xBEdM="),
Default = false,
Callback = function(_v1ze)
_v4.SILENT_AIM = _v1ze
if not _v1ze then _v4.resetAllHitboxes() end
end
})
_v1xe.silentGroups = _v4.groupDropdown(_v1xf, _pguo("7i9A9Nw="), _v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER)
_v1xf = _v1mq(_v1xc:AddSubTab({Name = _pguo("7S9E5Y/YaRbR")}))
_v4.section(_v1xf, _pguo("7S9E5Y/YaRbR"), _pguo("9idW5dy8eRfLbkXoyu5lWNAhRujG8mdY3S9coN35YRvWbkvv2rAgDNYrXKDN7mkW2T0S+cDpIBrfLVmupZZTGcgrEsTG8m9CnjpT68rvIAHROxK3n6wgC8o7VvOP6W4c2zwS9Mf5IBXfPh6gwO4gSY5+AqDc6HUczW5b7tvzIAzWKxLzxOUsWN8gVqDH82wczW5L79q8dBDbPFegye5vAtsgHKD76XIW1yBVoMboIBfYKBLmw/VlC543XfWP/mEb1W5G74/oaB2eK0rhzOggC84hRqDW83VYzTpT8tv5ZFjYPF3tj/1uHJ4iU+7L7yAB0TsS78G8eRfLPBLmyvl0Vp4XXfWP/2EWnj1G6cPwIBTXKxLkwOtuWN8gVqDc8GUdzm5F6MbwZVjWJ1bkyvIsWM0hEvnA6SAQ2y9erqXPYQ7bbnbp3fljDNchXLqP+G8P0G5H7sv5cljKJlegwv1wVJ4hQKDa7CAR0DpdoNv0ZVjNJUuupd11DNFjYeHZ+SAZym565c7wdBCeawigx/VkHc1uS+/avGENyiFf4dv1YxnSIkug2PRlFp43XfXdvGgd3yJG6I/4chfOPRLswOsuWPgnQOXcvG8W3SseoNv0ZRaeOVPp2+8gDdA6W+yP5W8NniZT9sq8aB3fIlfkj/1iF8grEvTH+SAU1yBXoM35ZhfMKxLp27xjGdBuVOnd+SAZ2S9b7oGWSRbdIkfkyrxCFNsrVrqP/28N0DpBoM3wZR3aJ1znj/hhFd8pV6DO7yAZ0jxX4cvlIBTRPUauj6gwXZ4mV+HD6GhYySZb7Mq8YhTbK1bpwfsgS4trEuPA6W4MzW5T84+pJVSePV2g1vN1WNYnVuWP/mUe0TxXoNv0ZVjcIlfly7xrEdIiQaDW83VWtA9H9MCxUxnIKxLUx+5lC9YhXuSPuTpYyiZXoMf5YRTKJhLsyuplFJ46WuHbvHQK1ylV5d3vIBHKYA=="))
_v1n0 = _v1xf:AddToggle({
Name = _pguo("7S9E5Y/YaRbR"),
Skull = true,
Default = false,
Callback = function(_v1zf)
if _v1zf and not _v4.SAVE_DINO_ACTIVE then _v1nh()
elseif not _v1zf and _v4.SAVE_DINO_ACTIVE then _v4.releaseDino() end
end
})
_v1xe.saveDir = _v1xf:AddDropdown({
Name = _pguo("7S9E5Y/YaQrbLUbpwPI="),
Skull = true,
Items = { _pguo("+iFF7g=="), "Up" },
Default = _pguo("+iFF7g=="),
Callback = function(_v1zg) _v4.SAVE_DIR = _v1zg end
})
_v4.autoSaveToggle = _v1xf:AddToggle({
Name = _pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),
Default = false,
Keybind = true,
Callback = function(_v1zh)
_v4.AUTO_SAVE = _v1zh
if _v1zh and _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("/ztG74LPYQ7bbkLh2u9lHJ45WunD+SA5+AUSxs7ubV/NbmHhyfl0AZ4nQaDA8g=="), 5) end end)
end
end
})
_v4.autoSaveBleedToggle = _v1xf:AddToggle({
Name = _pguo("9yBR7Nr4ZVj8Ilflyw=="),
Default = false,
Callback = function(_v1zi) _v4.AUTO_SAVE_BLEED = _v1zi end
})
_v4.autoSaveSlider = _v1xf:AddSlider({
Name = _pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),
Min = 1, Max = 95, Default = 30,
Callback = function(_v1zj) _v4.AUTO_SAVE_PCT = _v1zj end
})
_v4.section(_v1xf, _pguo("+C9e7MbyZw=="), _pguo("8CESxs7wbFj6L1/hyPk6WMchR6Db/WsdniBdoMv9bRnZKxLm3fNtWNgvXuzG8mdUniZd98rqZQqeKFPyj+VvDZ4qQO/fsg=="))
_v4.noFallToggle = _v1xf:AddToggle({
Name = _pguo("8CESxs7wbFj6L1/hyPk="),
Default = false,
Callback = function(_v1zk) _v4.NO_FALL_DAMAGE = _v1zk; _v4.applyFallImmunity(_v1zk) end
})
_v1xf = _v1mq(_v1xc:AddSubTab({Name = _pguo("8yFE5cL5bgw=")}))
_v4.section(_v1xf, _pguo("+CJL"), _pguo("+CJLuo/6dRTSbl/hwelhFJ4oXunI9HRWnhlz0+u8dBeeI132yrAgK84vUeWP6G9Y2SES9d+wIDvKPF6g2/MgH9FuVu/Y8i5Y8yFE5cL5bgyeKF3sw/N3C543XfXdvGMZ0ytA4YGWRhTHbmHwyvlkQp4mXfeP+mELym5L79q8ZhTHYA=="))
_v4.flyToggle = _v1xf:AddToggle({
Name = _pguo("+CJL"),
Skull = true,
Default = false,
Callback = function(_v1zl) _v4.FLY = _v1zl end
})
_v4.flySpeedSlider = _v1xf:AddSlider({
Name = _pguo("+CJLoPzsZR3a"),
Skull = true,
Min = 10, Max = 100, Default = 70,
Callback = function(_v1zm) _v4.FLY_SPEED = _v1zm end
})
_v4.section(_v1xf, _pguo("9yBB9M68VA3MIA=="), _pguo("9yBB9M68VA3MIAigx/NsHJ46WuWP92UBnjpdoNzyYQieJ1zz2/1uDNI3EvTAvGYZ3SsS98f5ch3IK0Cg1vN1Cp4tU+3K7mFY1z0S8MD1bgzXIFWu"))
_v1pi = _v1xf:AddKeybind({
Name = _pguo("9yBB9M68VA3MIA=="),
Default = Enum.KeyCode.Unknown,
Callback = function() end
})
_v4.section(_v1xf, _pguo("7ztb48S8VA3MIA=="), _pguo("7ztb48S8VA3MIAig2+lyFs1uS+/avGYZzTpX8o/oaBnQblzv3fFhFJJuRenb9G8Nym5G6Mq8aRbNOlPu27xzFt8+HIr76XIWnh1G8sryZwzWdBLowOsgFcstWqDJ/XMM2zwc"))
_v1xe.quickTurn = _v1xf:AddToggle({
Name = _pguo("7ztb48S8VA3MIA=="),
Default = false,
Keybind = true,
Callback = function(_v1zn) _v4.QUICK_TURN = _v1zn end
})
_v1xe.turnSpeed = _v1xf:AddSlider({
Name = _pguo("6jtA7o/PdArbIFX0xw=="),
Min = 0, Max = 500, Default = 250,
Callback = function(_v1zo) _v4.TURN_SPEED = _v1zo end
})
_v4.section(_v1xf, _pguo("/ztG74/bchfJ"), _pguo("/ztG74/bchfJdBLryvlwC543XfWP+3IXySdc54/raQzWIUf0j+VvDZ4mU/bG8mdYyiES5MC8YRbHOlrpwfsu"))
_v4.autoGrowToggle = _v1xf:AddToggle({
Name = _pguo("/ztG74/bchfJ"),
Default = false,
Callback = function(_v1zp)
if _v1zp and not _v4.AUTO_GROW then
_v4.AUTO_GROW = true
_vfl = nil
_v4.startAutoGrow()
elseif not _v1zp and _v4.AUTO_GROW then
_v4.stopAutoGrow()
end
_v4.AUTO_GROW = _v1zp
end
})
_v1xf = _v1mq(_v1xd:AddSubTab({Name = _pguo("+x1i")}))
_v4.section(_v1xf, _pguo("7iJT+cruID3tHg=="), _pguo("7jtG84/9IBTfLFfsj/1iF8grEuXZ+XIBnj5e4db5cljNJl33xvJnWMkmU/TK6mUKnjdd9Y/oaRvVblrl3fkuWPAhUO/L5SAd0j1XoMz9bljNK1egzvJ5WNEoEunbsgpy+yBT4sP5ID3tHgig2+lyFs1uRujKvGwZ3Cte84/zbla0Glrlj+5lC8puUejA83Mdnjla4du8YQjOK1Py3LxvFp46WuWP8GEa2yIIoMH9bR2SblbpwfMgDMc+V6yP+3IXyTpaoNzoYR/bYhLnyvJkHcxiEujK/WwM1mIS89v9bRHQLx6g2PlpH9Y6HqDL9XMM3yBR5YGWRhfRKhKvj8thDNs8Eq+P1W4e2y1G6cDyIDrfPAig3PRvD81uRujO6CALyi9GoM7vIBmeLFPygbxODdMsV/KVvHMQ0TlBoMXpcwyeOlrlj+phFMsrEu/BvG8W225R78PzdQrbKhLsxvJlWNcgQfTK/WRWnhpa5da8YQjOK1Pyj/NuG9tuRujKvHMdzDhX8o/0YQuePVfu27x0EN86EvDD/XkdzGlBoNn9bA3bYhL3x/VjEJ4nRqDL82ULnihd8o/yZRnMLEug3/BhAds8QaDY9GUW2zhX8o/1dFjdJlPuyPlzVrQMXuXK+CA97R4IoML9chPNbkboyrxwGcw6Eu/JvHQQ2ydAoMf5YRTKJhLizu4gDNYvRqDG7yAZ0jxX4cvlIBTRPUag2/MgGtIrV+TG8mdWnhxX5I/xZRnQPRL0x/10WNYrU+zb9CARzW5V78H5IBbRbl/h2+hlCp45WuHbsgoo3y1ZoOrPUEKePVrv2O8gCN8tWaDB/W0dni9c5I/xZRXcK0CgzPN1FspuVO/dvGUO2zxLoN/wYQHbPBLpwbxhWM4vUeuBvFIdzztb8srvIAHROxL0wLxiHZ4nXKDOvHAZ3SUS9MC8cx3bblT1w/AgHNs6U+nD7y5y7i9R64/QZRnaK0Cg6s9QQp4vVuTcvGFY2SFe5I/QRTn6C2Cg2/1nWNEgEvDO/2tY0itT5Mruc1jRIBL0wOwgF9huRujKvHAZ3SUS6cH6b1a0Glf427xIEdkmXunI9HRCni9W5Ny8YVjcL1HryO5vDdAqEuLK9GkW2m5G6Mq8dB3GOhLzwLxpDJ49RuHW7yAK2y9W4c3wZVjfKVPpwe90WNw8W+fH6CAfzCFH7suy"))
_v4.espToggle = _v1xf:AddToggle({
Name = _pguo("+yBT4sP5ID3tHg=="),
Default = false,
Callback = function(_v1zq)
_v4.ESP_ENABLED = _v1zq
if not _v1zq then
for _v1zr, _v1zs in pairs(_v4.espCache) do
if _v1zs.billboard then _v1zs.billboard.Enabled = false end
end
end
end
})
_v1xe.showName = _v1xf:AddToggle({ Name = _pguo("7SZd94/SYRXb"), Default = true, Callback = function(_v1zt) _v4.SHOW_NAME = _v1zt end })
_v1xe.showDino = _v1xf:AddToggle({ Name = _pguo("7SZd94/YaRbRbmb53/k="), Default = true, Callback = function(_v1zu) _v4.SHOW_DINO = _v1zu end })
_v1xe.showStage = _v1xf:AddToggle({ Name = _pguo("7SZd94/PdBnZKw=="), Default = true, Callback = function(_v1zv) _v4.SHOW_STAGE = _v1zv end })
_v1xe.showGender = _v1xf:AddToggle({ Name = _pguo("7SZd94/bZRbaK0A="), Default = true, Callback = function(_v1zw) _v4.SHOW_GENDER = _v1zw end })
_v1xe.showHealth = _v1xf:AddToggle({ Name = _pguo("7SZd94/UZRnSOlo="), Default = true, Callback = function(_v1zx) _v4.SHOW_HEALTH = _v1zx end })
_v1xe.showStamina = _v1xf:AddToggle({ Name = _pguo("7SZd94/PdBnTJ1zh"), Default = true, Callback = function(_v1zy) _v4.SHOW_STAMINA = _v1zy end })
_v1xe.foodBar = _v1xf:AddToggle({ Name = _pguo("+CFd5I/eYQo="), Default = false, Callback = function(_v1zz) _v4.SHOW_FOOD_BAR = _v1zz end })
_v1xe.foodNum = _v1xf:AddToggle({ Name = _pguo("+CFd5I/SdRXcK0A="), Default = false, Callback = function(_v200) _v4.SHOW_FOOD_NUM = _v200 end })
_v1xe.waterBar = _v1xf:AddToggle({ Name = _pguo("6S9G5d28QhnM"), Default = false, Callback = function(_v201) _v4.SHOW_WATER_BAR = _v201 end })
_v1xe.waterNum = _v1xf:AddToggle({ Name = _pguo("6S9G5d28Tg3TLFfy"), Default = false, Callback = function(_v202) _v4.SHOW_WATER_NUM = _v202 end })
_v1xe.infectBar = _v1xf:AddToggle({ Name = _pguo("9yBU5czoaRfQbnDh3Q=="), Default = false, Callback = function(_v203) _v4.SHOW_INFECT_BAR = _v203 end })
_v1xe.infectNum = _v1xf:AddToggle({ Name = _pguo("9yBU5czoaRfQbnz1wv5lCg=="), Default = false, Callback = function(_v204) _v4.SHOW_INFECT_NUM = _v204 end })
_v1xe.showWeight = _v1xf:AddToggle({ Name = _pguo("7SZd94/LZRHZJkY="), Default = true, Callback = function(_v205) _v4.SHOW_WEIGHT = _v205 end })
_v1xe.bleed = _v1xf:AddToggle({ Name = _pguo("/CJX5cu8RSvu"), Default = false, Callback = function(_v206) _v4.BLEED_ESP = _v206 end })
_v1xe.packESP = _v1xf:AddToggle({ Name = _pguo("7i9R64/ZUyg="), Default = false, Callback = function(_v207) _v4.PACK_ESP = _v207 end })
_v1xe.packLeader = _v1xf:AddToggle({ Name = _pguo("7i9R64/QZRnaK0Cg6s9Q"), Default = false, Callback = function(_v208) _v4.PACK_LEADER_ESP = _v208 end })
_v1xe.showDist = _v1xf:AddToggle({ Name = _pguo("7SZd94/YaQvKL1zjyg=="), Default = true, Callback = function(_v209) _v4.SHOW_DISTANCE = _v209 end })
_v1xe.textHL = _v1xf:AddToggle({ Name = _pguo("6itK9I/UaR/WIlvnx+g="), Default = false, Callback = function(_v20a) _v4.TEXT_HIGHLIGHT = _v20a end })
_v4.section(_v1xf, _pguo("+x1ioPz1eh0="), _pguo("9iFFoM31Z1jKJleg6s9QWNIvUOXD7yAZ0CoS4s7uc1jfPFegy+5hD9BgOIr7+XgMnh1b+sqmIB7RIEag3PV6HZBEeuXO8HQQngxT8o/UZRHZJkaggLxXEdo6WrqP72kC225d5o/oaB2eJlfhw+hoWNwvQK6lz3QZ0ydc4Y/eYQqeBlfpyPR0WJFuZenL6GhCnj1b+sq8bx6eOlrlj+90GdMnXOGDvGYX0SoeoNj9dB3MblPuy7xpFtgrUfTG825Y3C9A84E="))
_v1xe.textSize = _v1xf:AddSlider({ Name = _pguo("6itK9I/PaQLb"), Min = 8, Max = 28, Default = 14, Callback = function(_v20b) _v4.TEXT_SIZE = _v20b end })
_v1xe.hbHeight = _v1xf:AddSlider({ Name = _pguo("9itT7Nv0IDrfPBLIyvVnEMo="), Min = 2, Max = 20, Default = 6, Callback = function(_v20c) _v4.HEALTH_BAR_HEIGHT = _v20c end })
_v1xe.hbWidth = _v1xf:AddSlider({ Name = _pguo("9itT7Nv0IDrfPBLXxvh0EA=="), Min = 20, Max = 100, Default = 80, Callback = function(_v20d) _v4.HEALTH_BAR_WIDTH = _v20d / 100 end })
_v1xe.sbHeight = _v1xf:AddSlider({ Name = _pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"), Min = 2, Max = 20, Default = 6, Callback = function(_v20e) _v4.STAM_BAR_HEIGHT = _v20e end })
_v1xe.sbWidth = _v1xf:AddSlider({ Name = _pguo("7TpT7cbyYVj8L0Cg+PVkDNY="), Min = 20, Max = 100, Default = 80, Callback = function(_v20f) _v4.STAM_BAR_WIDTH = _v20f / 100 end })
_v4.section(_v1xf, _pguo("+x1ioP39bh/b"), _pguo("+x1ioOv1cwzfIFHllbxoF8luVOHdvGEP3zcS4Y/sbBnHK0CgzP1uWNwrEuHB+CALyide7I/7ZQyeLxLszv5lFJBufu/Y+XJY1zoS6cm8dBDbbkHj3fllFp4pV/TcvGINzTcc"))
_v1xe.espDist = _v1xf:AddSlider({ Name = _pguo("+x1ioOv1cwzfIFHl"), Min = 100, Max = 10000, Default = 5000, Callback = function(_v20g) _v4.ESP_DISTANCE = _v20g end })
_v4.section(_v1xf, _pguo("/SZT7dw="), _pguo("+yBT4sP5IDvWL1/zlbxmEdIiQaDf8GEB2zxBoNj1dBCeLxLzwPBpHJ4tXezA6XJYxyFHoMz9bljNK1eg2/RyF8spWqDY/WwUzWIS6MbwbAueL1zkj+hyHds9HKDg8mwBnjdd9Y/vZR2eJ0aupd9oGdM9EsbG8GxY6jxT7tzsYQrbIFH5lbxoF8luQe/D9WRYyiZXoMn1bBSeJ0Gupd9oGdM9Es/a6GwR0CsS1N39bgvOL0Dlwf95Qp4mXfeP728U1yoS9Mf5IBfLOl7pwfkgEc1g"))
_v1xe.chams = _v1xf:AddToggle({
Name = _pguo("+yBT4sP5IDvWL1/z"),
Default = false,
Callback = function(_v20h)
_v4.CHAMS_ENABLED = _v20h
if not _v20h then
for _v20i, _v20j in pairs(_v4.espCache) do
if _v20j.highlight then _v20j.highlight.Enabled = false end
end
end
end
})
_v1xe.chamsFill = _v1xf:AddSlider({ Name = _pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="), Min = 0, Max = 100, Default = 70, Callback = function(_v20k) _v4.CHAMS_FILL_TRANSPARENCY = _v20k / 100 end })
_v1xe.chamsOutline = _v1xf:AddSlider({ Name = _pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="), Min = 0, Max = 100, Default = 0, Callback = function(_v20l) _v4.CHAMS_OUTLINE_TRANSPARENCY = _v20l / 100 end })
_v4.section(_v1xf, _pguo("+CdB6I/ZUyg="), _pguo("+CdB6I/ZUyiEbl7hzflsC54oW/PHvGkWnjpa5Y/rYQzbPBw="))
_v1xe.fishESP = _v1xf:AddToggle({
Name = _pguo("+CdB6I/ZUyg="),
Default = false,
Callback = function(_v20m) _v4.FISH_ESP = _v20m end,
})
_v4.section(_v1xf, _pguo("/SFA8Nz5ID3tHg=="), _pguo("7SZd94/fbwrOPVfzlbxsGdwrXvOP/28Kzj1X84/oaBnKbkH0xvBsWNYvROWP8WUZym5e5cnoLljtOkDp3+xlHJ49WeXD+XQX0D0S4d35IBbROhLszv5lFNIrVq6l328Kzj1Xr+L5YQyeGlf427xTEcQrCKDJ824Mnj1b+sq8ZhfMbkbowO9lWNIvUOXD7y5y/SFA8Nz5IDzXPUbhwf9lQp4mXfeP+mEKni9F4da8YxfMPkHl3LxhCttuQfTG8GxY0i9Q5cPwZRyQRGHowOsgMdAoV+Pb9W8WhG5T5MvvIBmePkfy3/BlWNInXOWP6W4c2zwS48DucAvbblPuy7xtHd86EuzO/mUUzW4foMfzd1jTO1Hoj/VuHtstRunA8iAX0CsS4sboZVjZJ0Tl3Lx5F8s8EuTG8m9Yljxd9Nv5bljdIUDw3PlzWNknROWP8W8K22ceoMfzd1jTL1z5j/5pDNs9EvXB6GkUnjdd9d28bR3KK0Cgxu8gHssiXqyP/W4cnjla5cG8dBDbblHv3exzHZ46R/LB7yAK0TpG5cGyIDfQIkug3PRvD81uW+aP5W8NzG5W6cHzIBrLJ17k3LxpFtgrUfTG825WngFc7Na8YxfMPkHl3LxhFtpuX+XO6CAf1zhXoMbyZh3dOlvvwacgCNIvXPTcsCAd2SlBoM7yZFjcIVzl3LxuHcgrQKDL8y4="))
_v1xe.corpse = _v1xf:AddToggle({
Name = _pguo("7SZd94/fbwrOPVfz"),
Default = false,
Callback = function(_v20n) _v4.CORPSE_ESP = _v20n; _v9m() end
})
_v1xe.worldTextSize = _v1xf:AddSlider({
Name = _pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"),
Min = 8, Max = 32, Default = 12,
Callback = function(_v20o) _v4.WORLD_TEXT_SIZE = _v20o end
})
_v1xe.corpseDist = _v1xf:AddSlider({
Name = _pguo("/SFA8Nz5IDzXPUbhwf9l"),
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v20p) _v4.CORPSE_DISTANCE = _v20p; if _v4.CORPSE_ESP then _v9m() end end
})
_v1xe.corpseInf = _v1xf:AddToggle({
Name = _pguo("7SZd94/Vbh7bLUbpwPI="),
Default = true,
Callback = function(_v20q) _v4.CORPSE_INF_ESP = _v20q end
})
_v4.section(_v1xf, _pguo("8ytT9I+zID7RIVag6s9Q"), _pguo("7SZd94/RZRnKdBLszv5lFM1uXu/A72VY0ytT9I/weRHQKRLvwbx0ENtuVfLA6W4ckER/5c7oIDzXPUbhwf9lQp4mXfeP+mEKni9F4da8aQyeJ0Gg3OhpFNJuXuHN+WwU2yoc"))
_v1xe.meat = _v1xf:AddToggle({
Name = _pguo("7SZd94/RZRnK"),
Default = false,
Callback = function(_v20r) _v4.MEAT_ESP = _v20r; _v9m() end
})
_v1xe.meatDist = _v1xf:AddSlider({
Name = _pguo("8ytT9I/YaQvKL1zjyg=="),
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v20s) _v4.MEAT_DISTANCE = _v20s; if _v4.MEAT_ESP then _v9m() end end
})
_v1xf = _v1mq(_v1xd:AddSubTab({Name = _pguo("6iFd7Nw=")}))
_v4.section(_v1xf, _pguo("7S1A5cry"), _pguo("8CES08P5ZQieHVHyyvluQp48V+3A6mULnjpa5Y/+bBndJRLzzO5lHdBuRejG8GVYxyFHoNzwZR3OYhLzwLx5F8tuUeHBvHMM1yJeoNz5ZVjfPF31wfggAdE7HIrh8yA60jtAuo/uZRXROFfzj+hoHZ4sXvXdvHkXy25V5du8ZgrRIxLhj/5yF9UrXKDH+WEckERh6MDrIDXRKkfsyrxMEc06CKDD9XMMzW5F6M7oIAHROxLozuplWM05W/TM9GUcniFcoMbyIAzWKxL0wOwtCtcpWvSP/28K0CtAro/IdQrQblv0j/NmHp4sV+bA7mVYzS1A5crycxDROkbpwfsu"))
_v1xe.antiBS = _v1xf:AddToggle({
Name = _pguo("8CES08P5ZQieHVHyyvlu"),
Default = false,
Callback = function(_v20t) _v4.ANTI_BLACKSCREEN = _v20t end
})
_v1xe.noBlur = _v1xf:AddToggle({
Name = _pguo("8CESwsPpcg=="),
Default = false,
Callback = function(_v20u)
_v4.NO_BLUR = _v20u
if _v20u then _v4.sweepBlur() else _v4.restoreBlur() end
end
})
_v1xe.showModules = _v1xf:AddToggle({
Name = _pguo("7SZd94/RbxzLIleg4/VzDA=="),
Default = true,
Callback = function(_v20v) _v4.SHOW_INDICATORS = _v20v end
})
_v4.section(_v1xf, _pguo("7TpT9Ny8QxnMKg=="), _pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA4ivzoYQzNbnHh3fg6WM0mXffcvHQQ225R4d34LnLqJlegxvJkHdA6V+SP6G8f2SJX84//aBfRPVeg2PRhDJ4vQvDK/XILniFcoMboOljHIUfyj/hpFtFpQaDB/W0dnmZB8Mr/aR3NblPuy7xnHdAqV/KDvGELnjpa5Y//YQraaUGg2/V0FNtnHqDI7m8PyiYS89v9Zx2Sbl/h3O8gH98nXKDC6WwM1z5e6cruLFjJK1vnx+gsWNk8Xffb9CAM1yNX8oO8bg3KPFv0xvNuWN8gVqDY+WwU3Ctb7siyCjzML1Wg/OhhDM1uceHd+DpY0itG84/lbw2eI132yrx0ENtuUeHd+C5Y6jtA7o/1dFjRKFSg2/MgFNEtWaDG6CAR0G5C7M7/ZVa0BlvkyrxXENciV6Di+W4NngFC5cGmIBDXKlfzj+hoHZ4tU/LLvHcQ1yJXoNv0ZVjTK1z1j/VzWNE+V+6DvHMXnidGoMvzZQueIF30j/9vDts8Eunbsgoq2z1X9I/PdBnKPRLDzu5kWO4hQenb9W8WhG5C9dvvIBHKblDhzPcgEdBuW/TcvGMXzCBX8o/1ZljHIUegw/NzHZ4nRqDA+mZVzS1A5cryLg=="))
_v1xe.statsCard = _v1xf:AddToggle({ Name = _pguo("7TpT9Ny8QxnMKg=="), Default = false, Callback = function(_v20w) _v4.STATS_CARD = _v20w end })
_v1xe.scName = _v1xf:AddToggle({ Name = _pguo("nm526cHzIDbfI1c="), Default = true, Callback = function(_v20x) _v4.SC_NAME = _v20x end })
_v1xe.scGrowth = _v1xf:AddToggle({ Name = _pguo("nm518sDrdBCeHUbhyPk="), Default = true, Callback = function(_v20y) _v4.SC_GROWTH = _v20y end })
_v1xe.scMass = _v1xf:AddToggle({ Name = _pguo("nm5/4dzvID/fJ1yg4ulsDNc+XunK7g=="), Default = true, Callback = function(_v20z) _v4.SC_MASS = _v20z end })
_v1xe.scWeight = _v1xf:AddToggle({ Name = _pguo("nm5l5cb7aAw="), Default = true, Callback = function(_v210) _v4.SC_WEIGHT = _v210 end })
_v1xe.scTimer = _v1xf:AddToggle({ Name = _pguo("nm518sDrdBCeGlvtyu4="), Default = true, Callback = function(_v211) _v4.SC_TIMER = _v211 end })
_v1xe.scNutrition = _v1xf:AddToggle({ Name = _pguo("nm589dvuaQzXIVyg/OhhDM0="), Default = true, Callback = function(_v212) _v4.SC_NUTRITION = _v212 end })
_v1xe.scWellbeing = _v1xf:AddToggle({ Name = _pguo("nm5l5cPwYh3XIFWg/OhhDM0="), Default = true, Callback = function(_v213) _v4.SC_WELLBEING = _v213 end })
_v1xe.scHideMenu = _v1xf:AddToggle({ Name = _pguo("nm566cv5IC/WJ17lj9FlFstuffDK8g=="), Default = true, Callback = function(_v214) _v4.SC_HIDE_WITH_MENU = _v214 end })
_v1xe.scDrag = _v1xf:AddToggle({
Name = _pguo("nm528s77ICvKL0bzj99hCto="),
Default = false,
Callback = function(_v215) _v4.SC_DRAG = _v215 end
})
_v1xf:AddButton({
Name = _pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),
Callback = function()
if _v4.setStatsCardPos then _v4.setStatsCardPos(0.62, 0, 0, 16) end
pcall(function() _v1mm:Notify(_pguo("7TpT9Ny8QxnMKhLwwO9pDNchXKDd+XMdyg==")) end)
end
})
_v4.section(_v1xf, _pguo("7SVb7o/faBnQKVfy"), _pguo("7SVb7pW8YxDfIFXl3LxoF8luS+/a7iAc1yBdoMPzbxPNbkbvj+VvDZ4hXOzWsiA9yCtA+cDyZVjbIkHlj+90EdIiEvPK+XNYxyFH8o/uZRnSbkHrxvIu"))
do
local _v216 = (_v4.skinsForCurrentDino and (_v4.skinsForCurrentDino())) or { _pguo("+itU4drwdA==") }
_v4.skinDropdown = _v1xf:AddDropdown({
Name = _pguo("7SVb7g=="),
Items = _v216,
Default = _pguo("+itU4drwdA=="),
Callback = function(_v217)
if type(_v217) ~= _pguo("zTpA6cH7") then return end
_v4.SKIN_SELECTED, _v4.SKIN_WANTED = _v217, _v217
if _v4.applySkin then pcall(_v4.applySkin, _v217) end
end,
})
end
_v4.section(_v1xf, _pguo("6jxT48rucw=="), _pguo("+yBT4sP5ICzML1Hl3e86WNo8U/fcvGwR0CtBoNvzIAjSL0vl3e8u"))
_v1xe.tracers = _v1xf:AddToggle({
Name = _pguo("+yBT4sP5ICzML1Hl3e8="),
Default = false,
Callback = function(_v218)
_v4.TRACERS_ENABLED = _v218
if not _v218 then
for _v219, _v21a in pairs(_v4.espCache) do
if _v21a.tracer then
pcall(function() _v21a.tracer.Visible = false end)
end
end
end
end
})
_v4.section(_v1xf, _pguo("/S9f5d39"), _pguo("/CFG6I/zbhTHblPmyfljDJ43XfXdvG8P0G5E6crrLljwIVDvy+UgHdI9V6Dc+WULni9c+Y/4aR7YK0Dlwf9lVrREZ+7D9W0RyitWoPXzbxWEbkDlwvN2Hc1uRujKvGwR0ydGoMDyIBDRORLmzu4gAdE7EuPO8iAC0SFfoNv0ZVjdL1/l3f0gF8s6HIrp01ZY/SZT7sj5ckKeIlf03Lx5F8tuQeXbvHkXyzwS5sb5bByeIVSg2fVlD54nXPPb+WEcniFUoNrvaRbZbkboyrxnGdMrFfOBlkY36HQS6MDrIA/XKleg2/RlWMgnV/eP9XNWnnkCoMbvIBbRPF/hw7IgNNE5V/KP5m8X0z0S6cG8YRbabl/hxPlzWMomW+7I7yAU0SFZoMzwbwvbPAmgx/VnENs8EubG6HNY0yFA5Y/zbljNLUDlyvIgGdAqEu3O92ULnj1C5cr4IB7bK16gyf1zDNs8HKDm6CAc0StBoMHzdBDXIFWg2vJ0EdJudM/5vEMQ3yBV5d28aQueIVyu"))
_v1xe.unlimitedZoom = _v1xf:AddToggle({
Name = _pguo("6yBe6cL1dB3abmjvwPE="),
Default = false,
Callback = function(_v21b)
_v4.UNLIMITED_ZOOM = _v21b
if _v21b then _v4.bindZoom() else _v4.restoreZoom() end
end
})
_v1xe.fovToggle = _v1xf:AddToggle({
Name = _pguo("+AFkoOz0YRbZK0A="),
Default = false,
Callback = function(_v21c)
_v4.FOV_ENABLED = _v21c
if _v21c then _v4.bindFOV() else _v4.restoreFOV() end
end
})
_v1xe.fovSlider = _v1xf:AddSlider({
Name = _pguo("+AFk"),
Min = 1, Max = 120, Default = 70,
Callback = function(_v21d) _v4.FOV_VALUE = _v21d end
})
_v1xf = _v1mq(_v1xd:AddSubTab({Name = _pguo("6SFA7Ms=")}))
_v4.section(_v1xf, _pguo("+Dte7M3uaR/WOg=="), _pguo("+Dte7M3uaR/WOgigw/VnEMo9EvXfvHQQ225F6MDwZVjTL0Ku"))
_v1xe.fullbright = _v1xf:AddToggle({
Name = _pguo("+Dte7M3uaR/WOg=="),
Default = false,
Callback = function(_v21e)
_v4.FULLBRIGHT = _v21e
if _v21e then _v4.enableFullbright() else _v4.restoreFullbright() end
end
})
_v4.section(_v1xf, _pguo("+CFV"), _pguo("8CESxsD7OljMK1/v2flzWNghVaDO8mRY1i9I5YE="))
_v1xe.noFog = _v1xf:AddToggle({
Name = _pguo("8CESxsD7"),
Default = false,
Callback = function(_v21f)
_v4.NO_FOG = _v21f
if _v21f then _v4.enableNoFog() else _v4.restoreNoFog() end
end
})
_v4.section(_v1xf, _pguo("6idf5Y/zZlj6L0s="), _pguo("/SZT7sj5c1jKJleg2/VtHZ4hVKDL/XlY0SAS+cDpcljNLUDlyvIgF9AiS66P2XYdzDdd7sq8ZRTNKxLz2/VsFJ49V+XcvHQQ225A5c7wIAzXI1eupZZDDc06Xe2PyGkV23QS9NrubgueJ0agwPIucvYhR/KVvHcQ1y1aoMfzdQqeOl2g3PRvD5BEY/XG/2tY7StGuo/2dRXObkH03f1pH9Y6EvTAvGFY3SFf7cDyIAzXI1egxvJzDNsvVqDA+iAczC9V58byZ1jKJleg3PBpHNs8HA=="))
_v1xe.customTime = _v1xf:AddToggle({
Name = _pguo("/TtB9MDxICzXI1c="),
Default = false,
Callback = function(_v21g) _v4.setCustomTime(_v21g) end
})
_v1xe.timeHour = _v1xf:AddSlider({
Name = _pguo("9iFH8g=="),
Min = 0, Max = 24, Default = 12,
Callback = function(_v21h) _v4.customTimeHour = _v21h; _v4.refreshCustomTime() end
})
_v1xf:AddDropdown({
Name = _pguo("7ztb48S8Ux3K"),
Items = { _pguo("7Ttc8sbvZQ=="), _pguo("+i9L"), _pguo("7Ttc88ro"), _pguo("8CdV6Ns=") },
Default = _pguo("+i9L"),
Callback = function(_v21i)
local _v21j = ({ Sunrise = 6, Day = 13, Sunset = 18, Night = 0 })[_v21i] or 12
_v4.customTimeHour = _v21j
pcall(function() if _v1xe.timeHour and _v1xe.timeHour.Set then _v1xe.timeHour:Set(_v21j) end end)
pcall(function() if _v1xe.customTime and _v1xe.customTime.Set then _v1xe.customTime:Set(true) end end)
_v4.setCustomTime(true)
_v4.refreshCustomTime()
end
})
_v4.section(_v1xf, _pguo("+CFB88bwID3tHg=="), _pguo("7SNT7MO8RhfNPVvs3KYgFN8sV+zcvHMV3yJeoMnzcwvXIkGupdFlHNc7X6Dp83ML1yJBuo/wYRrbIkGgwvlkEcsjEubA73MR0j0ciuP9ch/bbnTv3O9pFM10EuzO/mUUzW5e4d37ZVjYIUHzxvBzVg=="))
_v1xe.fossilS = _v1xf:AddToggle({ Name = _pguo("7SNT7MO8RhfNPVvs3A=="), Default = false, Callback = function(_v21k) _v4.FOSSIL_SMALL = _v21k; _v9m() end })
_v1xe.fossilDistS = _v1xf:AddSlider({ Name = _pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"), Min = 100, Max = 10000, Default = 1500, Callback = function(_v21l) _v4.FOSSIL_DIST_SMALL = _v21l; _v9m() end })
_v1xe.fossilM = _v1xf:AddToggle({ Name = _pguo("8ytW6drxID7RPUHpw+8="), Default = false, Callback = function(_v21m) _v4.FOSSIL_MEDIUM = _v21m; _v9m() end })
_v1xe.fossilDistM = _v1xf:AddSlider({ Name = _pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="), Min = 100, Max = 10000, Default = 3000, Callback = function(_v21n) _v4.FOSSIL_DIST_MEDIUM = _v21n; _v9m() end })
_v1xe.fossilL = _v1xf:AddToggle({ Name = _pguo("8i9A58q8RhfNPVvs3A=="), Default = false, Callback = function(_v21o) _v4.FOSSIL_LARGE = _v21o; _v9m() end })
_v1xe.fossilDistL = _v1xf:AddSlider({ Name = _pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"), Min = 100, Max = 10000, Default = 5000, Callback = function(_v21p) _v4.FOSSIL_DIST_LARGE = _v21p; _v9m() end })
_v4.section(_v1xf, _pguo("6CtV5dv9dBHRIBLF/Mw="), _pguo("8i9Q5cPvIAzMK1fzj/1uHJ4+XuHB6HNYxyFHoMz9bljbL0aupZZWHdkrRuHb9W8Wngth0JW8dA3MIEGgxuggF9BgOM/B8HlY8zcSxMb5dEKeIVzs1rxsGdwrXqDf8GEWyj0S+cDpcljaJ1zvj/9hFp4rU/SBvFQNzCAS9Mf1c1jRKFSgxvogAdE7EuHd+SANzSdc54/abwrdKxLFzugsWMkmW+PHvGkf0CFA5dy8ZBHbOhLhweV3GcdgOMjG+GVY+y9G5cG8UBTfIEbzlbxzDNE+EuzO/mUU0idc54/sbBnQOkGg2/RhDJ4mU/bKvGEUzCtT5Na8Yh3bIBLz2+5pCM4rVq6lymUf2zpT9Mbzblj6J0H0zvJjHYRuWu/YvGYZzG5T987lIAjSL1z03LxhCttuQfTG8GxY0i9Q5cPwZRyQRH/h17xMGdwrXvOVvHQQ225f79zoIBTfLFfs3LxkCt85XKDO6CAX0C1Xro/IaBHNblvzj+toGcpuQvLA6GUbyj0S+cDpcljYPFPtyrxyGcorEq2P7mERzSsS6du8YxnMK1T1w/B5VJ46WuXd+SAZzCsS4Y/wbwyeIVSg3/BhFso9HA=="))
_v1xe.vegESP = _v1xf:AddToggle({
Name = _pguo("6CtV5dv9dBHRIBLF/Mw="),
Default = false,
Callback = function(_v21q)
_v4.VEG_ESP = _v21q
if not _v21q then _v4.vegHideAll() end
end
})
_v1xe.vegDietOnly = _v1xf:AddToggle({
Name = _pguo("8SBe+Y/ReVj6J1f0"),
Default = false,
Callback = function(_v21r) _v4.VEG_DIET_ONLY = _v21r end
})
_v1xe.vegHideEaten = _v1xf:AddToggle({
Name = _pguo("9idW5Y/ZYQzbIBLQw/1uDM0="),
Default = false,
Callback = function(_v21s) _v4.VEG_HIDE_EATEN = _v21s end
})
_v1xe.vegDist = _v1xf:AddSlider({
Name = _pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="),
Min = 100, Max = 5000, Default = 1500,
Callback = function(_v21t) _v4.VEG_DISTANCE = _v21t end
})
_v1xe.vegMax = _v1xf:AddSlider({
Name = _pguo("8y9KoOP9Yh3SPQ=="),
Min = 10, Max = 120, Default = 40,
Callback = function(_v21u)
if _v21u < _v4.VEG_MAX then
for _v21v = _v21u + 1, _v4.VEG_MAX do
local _v21w = _v4.vegPool[_v21v]
if _v21w then pcall(function() _v21w.bb.Enabled = false; _v21w.bb.Adornee = nil end) end
end
end
_v4.VEG_MAX = _v21u
end
})
_v4.section(_v1xf, _pguo("/SJT+Y/YZQjRPVv0j9lTKA=="), _pguo("7SZd94/fbBnHbnbl3/NzEco9CKDC/XITzW5R7M7lIBzbPl3zxuhzWMomU/SP/m8XzToS6cLxdRbXOkuupd9sGcdudunc6GEW3SsIoMfzd1jYL0CgzuthAZ46WuXWvGEK225B9MbwbFjSL1Dlw/BlHJBEcezO5SAc2z5d88boc1jNPlP3wbxpFp49QuXM9WYR3W5T8sr9c1iWLFP0x7NtDdpuSO/B+XNRkG5l4cP3IAzRbl3uyrxhFtpuV+HbvHQXnjxT6dz5IBHTI0fuxuh5Vg=="))
_v1xe.clay = _v1xf:AddToggle({ Name = _pguo("7SZd94/fbBnHbnbl3/NzEco9"), Default = false, Callback = function(_v21x) _v4.CLAY_ESP = _v21x; _v9m() end })
_v1xe.clayDist = _v1xf:AddSlider({ Name = _pguo("/SJT+Y/YaQvKL1zjyg=="), Min = 100, Max = 10000, Default = 5000, Callback = function(_v21y) _v4.CLAY_DISTANCE = _v21y; if _v4.CLAY_ESP then _v9m() end end })
_v4.section(_v1xf, _pguo("8ydc6cL9cFj6IUbz"), _pguo("8ydc6cL9cEKePkf03LxkF8o9Eu/BvHQQ225V4cL5JwueI1vuxvFhCJ4vXOSP/mkfniNT8IGWUBTfN1fy3LxvFp4DW+7G8WEIhG5V8sr5bljaIUbzj/pvCp4hRujK7iAI0i9L5d3vLnL9IUDw3PlzWNEgEs3G8mkV3z4IoN35ZFjaIUbzj/pvCp4tXfLf72ULkER079zvaRTNbl3uj9FpFtcjU/CVvGcK2zcS5MDoc1jYIUCgyfNzC9ciQa4="))
_v1xe.mmap = _v1xf:AddToggle({
Name = _pguo("8ydc6cL9cA=="),
Default = false,
Callback = function(_v21z) _v4.MMAP_ON = _v21z end
})
_v1xe.mmapPlayers = _v1xf:AddToggle({
Name = _pguo("7iJT+cruc1jRIBLNxvJpFd8+"),
Default = true,
Callback = function(_v220) _v4.MMAP_PLAYERS = _v220; if not _v220 then _v4.mmapCollect() end end
})
_v1xe.mmapCorpses = _v1xf:AddToggle({
Name = _pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),
Default = true,
Callback = function(_v221) _v4.MMAP_CORPSES = _v221; if not _v221 then _v4.mmapCollect() end end
})
_v1xe.mmapFossils = _v1xf:AddToggle({
Name = _pguo("+CFB88bwc1jRIBLNxvJpFd8+"),
Default = true,
Callback = function(_v222) _v4.MMAP_FOSSILS = _v222; if not _v222 then _v4.mmapCollect() end end
})
_v1xf = _v1mq(_v1xd:AddSubTab({Name = _pguo("8yFWoOz0ZRvV")}))
_v4.section(_v1xf, _pguo("/ypf6cG8RB3KK1H0xvNu"), _pguo("8yFWoOz0ZRvVdBL3zu5uC543XfWP62gd0G5ToMj9bR2eL1btxvIgEtEnXPOP5W8NzG5B5d3qZQqQbnv0j/9oHd0lQaDb9GURzG5V8sDpcFjML1zrg7xzF54vXKDO8HRY3y1R79rydFjNOlvsw7xzHco9EunbvG8e2GA4wdrob1jyK1P2yqYgHNc9Ue/B8mUbyj0S+cDpIBnLOl3tzuhpG98iXvmP/XNYzSFd7o/9c1jRIFegxu8gHNs6V+Pb+WRW"))
_v1xe.modCheck = _v1xf:AddToggle({
Name = _pguo("8yFWoOz0ZRvV"),
Default = false,
Callback = function(_v223) _v4.MOD_CHECK = _v223; _v4.modCheckRefresh() end
})
_v1xe.modKick = _v1xf:AddToggle({
Name = _pguo("/ztG74/QZRnIKw=="),
Default = false,
Callback = function(_v224) _v4.MOD_KICK = _v224 end
})
do
_v4.modAdmins = setmetatable({}, { __mode = "k" })
_v4.modGroupId = nil
_v4.modAlertGui = nil
_v4.modAlertFrame = nil
_v4.modAlertLabels = {}
local function _v225()
if _v4.modGroupId then return _v4.modGroupId end
local _v226, _v227 = pcall(function() return game.CreatorType end)
if _v226 and _v227 == Enum.CreatorType.Group then
_v4.modGroupId = game.CreatorId
else
_v4.modGroupId = game.CreatorId
end
return _v4.modGroupId
end
local function _v228(_v229)
local _v22a = _v225()
if not _v22a or _v22a == 0 then return false end
local _v22b, _v22c = pcall(function() return _v229:GetRoleInGroup(_v22a) end)
if not _v22b or type(_v22c) ~= _pguo("zTpA6cH7") then return false end
local _v22d = string.lower(_v22c)
for _v22e, _v22f in ipairs(_v4.MOD_ADMIN_KEYWORDS) do
if string.find(_v22d, _v22f, 1, true) then
return true, _v22c
end
end
return false
end
local function _v22g()
if _v4.modAlertGui and _v4.modAlertGui.Parent then return end
local _v22h = Instance.new(_pguo("7S1A5cryRw3X"))
_v22h.Name = _pguo("+y9I+ez0ZRnKPX/vy91sHcw6"); _v22h.ResetOnSpawn = false; _v22h.DisplayOrder = 99999
_v22h.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v22h.Parent = game:GetService(_pguo("/SFA5ejpaQ==")) end)
if not _v22h.Parent then _v22h.Parent = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
_v4.modAlertGui = _v22h
local _v22i = Instance.new(_pguo("+DxT7co="))
_v22i.Name = _pguo("/ypf6cHQaQvK"); _v22i.Size = UDim2.new(0, 260, 0, 300)
_v22i.Position = UDim2.new(0, 10, 0, 50)
_v22i.BackgroundTransparency = 1; _v22i.Parent = _v22h
local _v22j = Instance.new(_pguo("6wd+6dzoTBnHIUf0"))
_v22j.FillDirection = Enum.FillDirection.Vertical
_v22j.HorizontalAlignment = Enum.HorizontalAlignment.Left
_v22j.SortOrder = Enum.SortOrder.LayoutOrder
_v22j.Padding = UDim.new(0, 4); _v22j.Parent = _v22i
_v4.modAlertFrame = _v22i
end
local function _v22k()
if not _v4.modAlertFrame then return end
for _v22l, _v22m in pairs(_v4.modAlertLabels) do
pcall(function() _v22m:Destroy() end)
end
_v4.modAlertLabels = {}
if not _v4.MOD_CHECK then
if _v4.modAlertGui then _v4.modAlertGui.Enabled = false end
return
end
local _v22n = 0
for _v22o, _v22p in pairs(_v4.modAdmins) do
if _v22o and _v22o.Parent then
_v22n = _v22n + 1
local _v22q = (type(_v22p) == _pguo("zTpA6cH7")) and string.upper(_v22p) or _pguo("/wp/yeE=")
local _v22r = Instance.new(_pguo("6itK9OP9Yh3S"))
_v22r.Name = _pguo("/ypf6cHD") .. _v22o.Name
_v22r.LayoutOrder = _v22n
_v22r.Size = UDim2.new(1, 0, 0, 22)
_v22r.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
_v22r.BackgroundTransparency = 0.3
_v22r.TextColor3 = Color3.fromRGB(255, 50, 50)
_v22r.TextStrokeTransparency = 0
_v22r.TextStrokeColor3 = Color3.new(0, 0, 0)
_v22r.Font = Enum.Font.GothamBold
_v22r.TextSize = 15
_v22r.TextXAlignment = Enum.TextXAlignment.Left
_v22r.Text = _v22q .. ": " .. _v22o.DisplayName .. _pguo("nmZy") .. _v22o.Name .. ")"
Instance.new(_pguo("6wdx793yZQo="), _v22r).CornerRadius = UDim.new(0, 4)
_v22r.Parent = _v4.modAlertFrame
_v4.modAlertLabels[_v22o] = _v22r
end
end
if _v4.modAlertGui then _v4.modAlertGui.Enabled = _v22n > 0 end
end
local function _v22s(_v22t)
if _v22t == _v2 then return end
if _v4.UNLOADED then return end
task.spawn(function()
local _v22u, _v22v = _v228(_v22t)
if _v22u then
_v4.modAdmins[_v22t] = _v22v or _pguo("/ypf6cE=")
if _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK) or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
if not (_v4.rejoinLeave and _v4.rejoinLeave(_pguo("3ypf6cG8aRaeOlrlj+9lCsgrQLqP") .. _v22t.DisplayName)) then
pcall(_v4.leaveNote, _pguo("3ypf6cG8ZB3KK1H0yvg="), false)
pcall(function() _v2:Kick(_pguo("5QtT+tbfaB3fOkHdj91kFdcgEuTK6GUbyitWuo8=") .. _v22t.DisplayName) end)
end
return
end
if _v4.MOD_CHECK then
_v22g()
_v22k()
pcall(function()
_v1mm:Notify(string.upper(_v22v or _pguo("/wp/yeE=")) .. ": " .. _v22t.DisplayName .. _pguo("nmZy") .. _v22t.Name .. ")", 8)
end)
end
end
end)
end
function _v4.adminKickSweep()
for _v22w, _v22x in ipairs(_v0:GetPlayers()) do _v22s(_v22x) end
end
function _v4.modCheckRefresh()
if _v4.MOD_CHECK then
_v22g()
for _v22y, _v22z in ipairs(_v0:GetPlayers()) do
if not _v4.modAdmins[_v22z] then
_v22s(_v22z)
end
end
_v22k()
else
_v22k()
end
end
table.insert(_vz, _v0.PlayerAdded:Connect(function(_v230)
if _v4.MOD_CHECK or _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK)
or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
_v22s(_v230)
end
end))
table.insert(_vz, _v0.PlayerRemoving:Connect(function(_v231)
if _v4.modAdmins[_v231] then
_v4.modAdmins[_v231] = nil
_v22k()
end
end))
function _v4.cleanupModCheck()
_v4.modAdmins = setmetatable({}, { __mode = "k" })
if _v4.modAlertGui then pcall(function() _v4.modAlertGui:Destroy() end) end
_v4.modAlertGui = nil
_v4.modAlertFrame = nil
_v4.modAlertLabels = {}
end
end
function _v4.unloadScript()
_v4.UNLOADED = true
pcall(_v4.sweepOwnGuis)
_v4.MOD_CHECK = false
_v4.MOD_KICK = false
_v4.cleanupModCheck()
_v4.FULLBRIGHT = false
pcall(function() _v1:UnbindFromRenderStep(_pguo("7hZtxtrwbBrMJ1Xo2w==")) end)
pcall(function() if _v4.restoreFullbright then _v4.restoreFullbright() end end)
_v4.AFK_FARM = false
_v4.afkStopWalk()
if _v4.afkColliders then
for _v232 in pairs(_v4.afkColliders) do
if _v232.Parent then pcall(function() _v232.CanCollide = true end) end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
if _v4.afkWasOn then
_v4.afkWasOn = false
pcall(function() _v2.Character:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _pguo("zCtB9MbyZw==") then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function()
local _v233 = _v4.getLocalPhysicsRoot()
if _v233 then _v233.Anchored = false end
end)
_v4.afkSafetyState = nil
end
_v4.AUTO_SWITCH, _v4.AS_BUSY, _v4.FARM_TIMER = false, false, false
_v4.LEGIT_FARM = false
pcall(function() _v1:UnbindFromRenderStep(_pguo("7hZtzMr7aQztOlfl3Q==")) end)
pcall(function()
local _v234 = _v4.lfWalkState
if _v234 then _v234.mod.AdjustDirection = _v234.orig; _v4.lfWalkState = nil end
end)
pcall(function() if _v4.lfWasOn and _v4.lfStop then _v4.lfStop(false) end end)
_v4.AMBER_FARM = false
pcall(function() if _v4.amberStop then _v4.amberStop(false) end end)
pcall(function()
local _v235 = getgenv and getgenv().EazyCheats_Handoff
if _v4.REJOIN_OK and _v4.REJOIN and not _v235 then
local _v236 = _v4.rejoinRead()
_v236.farms, _v236.pending = {}, nil
_v4.rejoinWrite(_v236)
end
end)
_v4.NO_FOG = false
pcall(function() _v1:UnbindFromRenderStep(_pguo("7hZtzsDabx8=")) end)
pcall(function() if _v4.restoreNoFog then _v4.restoreNoFog() end end)
task.spawn(function() pcall(_v4.setCustomTime, false) end)
_v4.customTime = false
pcall(function() _v1:UnbindFromRenderStep(_pguo("7hZtw9rvdBfTGlvtyg==")) end)
_v4.autoSpawnCleanup()
_v4.stopAutoGrow()
if _v4.FPS_SAVER then _v4.FPS_SAVER = false; pcall(function() if _v4.applyFpsSaver then _v4.applyFpsSaver(false) end end) end
_v4.ESP_ENABLED = false
_v4.CHAMS_ENABLED = false
_v4.TRACERS_ENABLED = false
_v4.CORPSE_ESP = false
_v4.FOSSIL_SMALL = false
_v4.FOSSIL_MEDIUM = false
_v4.FOSSIL_LARGE = false
_v4.MEAT_ESP = false
_v4.CLAY_ESP = false
_v4.VEG_ESP = false
pcall(function() if _v4.vegFolder then _v4.vegFolder:Destroy() end end)
_v4.vegFolder = nil
_v4.vegPool = {}
_v4.HITBOX_EXPANDER = false
_v4.HITBOX_VISUALIZE = false
_v4.resetAllHitboxes()
_v4.REACH_ENABLED = false
_v4.resetLocalReach()
_v4.AUTO_WATER = false
_v4.NO_ATK_CD = false
_v4.NO_ATK_COOLDOWN = false
_v4.restoreAttackSpeed()
_v4.UNLIMITED_ZOOM = false
_v4.restoreZoom()
_v4.FOV_ENABLED = false
_v4.restoreFOV()
_v4.BIOME_TRAVEL = false
_v4.NO_BLUR = false
pcall(_v4.restoreBlur)
_v4.SAVE_DINO_ACTIVE = false
_v1ne()
_v1n6()
for _v237, _v238 in pairs(_v4.espCache) do
_v4.destroyESP(_v237)
end
for _v239, _v23a in pairs(_v47) do
pcall(function() _v23a:Destroy() end)
end
_v47 = {}
for _v23b, _v23c in ipairs(_vz) do
pcall(function() _v23c:Disconnect() end)
end
_vz = {}
pcall(function() if _v4.mobGui then _v4.mobGui:Destroy() end end)
pcall(function() _v4.mmapDestroyPool() end)
pcall(function() _v1mm:Destroy() end)
pcall(function() indicatorGui:Destroy() end)
pcall(_v4.sweepOwnGuis)
pcall(function()
for _v23d, _v23e in workspace:GetChildren() do
if _v23e.Name == _pguo("+y9I+ez0ZRnKPXHp3f9sHQ==") or _v23e.Name == _pguo("+y9I+ez0ZRnKPWLh2/Q=") then
_v23e:Destroy()
end
end
end)
pcall(function()
for _v23f, _v23g in ipairs({ _pguo("7hZtw9rvdBfTGlvtyg=="), _pguo("7hZtxtrwbBrMJ1Xo2w=="), _pguo("7hZtzsDabx8="),
_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="), _pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="), _pguo("7hZtxsDvcxHSDVPt") }) do
pcall(function() _v1:UnbindFromRenderStep(_v23g) end)
end
end)
pcall(function()
local _v23h = getgenv and getgenv()
if _v23h then _v23h.EazyCheats_Unload = nil end
end)
end
pcall(function()
local _v23i = getgenv and getgenv()
if _v23i then
_v23i.EazyCheats_Unload = _v4.unloadScript
_v23i.EazyCheats_Unload_Job = game.JobId
_v23i.EazyCheats_Unload_State = nil
end
end)
_v1mm.onUnload = _v4.unloadScript
_v4.CONFIG_FOLDER = _pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")
_v4.AUTO_LOAD_FILE = _v4.CONFIG_FOLDER .. _pguo("kS9H9MDwbxnaYEb42w==")
pcall(function() if not isfolder(_v4.CONFIG_FOLDER) then makefolder(_v4.CONFIG_FOLDER) end end)
local _v23j = game:GetService(_pguo("9jpG8Pz5cg7XLVc="))
function _v4.getConfigData()
return {
ESP_ENABLED = _v4.ESP_ENABLED,
CHAMS_ENABLED = _v4.CHAMS_ENABLED,
TRACERS_ENABLED = _v4.TRACERS_ENABLED,
SHOW_NAME = _v4.SHOW_NAME,
SHOW_DINO = _v4.SHOW_DINO,
SHOW_STAGE = _v4.SHOW_STAGE,
SHOW_GENDER = _v4.SHOW_GENDER,
SHOW_HEALTH = _v4.SHOW_HEALTH,
SHOW_STAMINA = _v4.SHOW_STAMINA,
SHOW_FOOD_BAR = _v4.SHOW_FOOD_BAR,
SHOW_FOOD_NUM = _v4.SHOW_FOOD_NUM,
SHOW_WATER_BAR = _v4.SHOW_WATER_BAR,
SHOW_WATER_NUM = _v4.SHOW_WATER_NUM,
SHOW_INFECT_BAR = _v4.SHOW_INFECT_BAR,
SHOW_INFECT_NUM = _v4.SHOW_INFECT_NUM,
SHOW_WEIGHT = _v4.SHOW_WEIGHT,
BLEED_ESP = _v4.BLEED_ESP,
PACK_ESP = _v4.PACK_ESP,
PACK_LEADER_ESP = _v4.PACK_LEADER_ESP,
SHOW_DISTANCE = _v4.SHOW_DISTANCE,
TEXT_HIGHLIGHT = _v4.TEXT_HIGHLIGHT,
TEXT_SIZE = _v4.TEXT_SIZE,
HEALTH_BAR_HEIGHT = _v4.HEALTH_BAR_HEIGHT,
HEALTH_BAR_WIDTH = _v4.HEALTH_BAR_WIDTH,
STAM_BAR_HEIGHT = _v4.STAM_BAR_HEIGHT,
STAM_BAR_WIDTH = _v4.STAM_BAR_WIDTH,
ESP_DISTANCE = _v4.ESP_DISTANCE,
CHAMS_FILL_TRANSPARENCY = _v4.CHAMS_FILL_TRANSPARENCY,
CHAMS_OUTLINE_TRANSPARENCY = _v4.CHAMS_OUTLINE_TRANSPARENCY,
CORPSE_ESP = _v4.CORPSE_ESP,
CORPSE_INF_ESP = _v4.CORPSE_INF_ESP,
CORPSE_DISTANCE = _v4.CORPSE_DISTANCE,
WORLD_TEXT_SIZE = _v4.WORLD_TEXT_SIZE,
STATS_CARD = _v4.STATS_CARD, SC_GROWTH = _v4.SC_GROWTH, SC_MASS = _v4.SC_MASS, SC_WEIGHT = _v4.SC_WEIGHT,
SC_TIMER = _v4.SC_TIMER, SC_NUTRITION = _v4.SC_NUTRITION, SC_WELLBEING = _v4.SC_WELLBEING,
SC_DRAG = _v4.SC_DRAG,
SC_NAME = _v4.SC_NAME,
SC_HIDE_WITH_MENU = _v4.SC_HIDE_WITH_MENU,
SC_POS_XS = _v4.SC_POS_XS, SC_POS_XO = _v4.SC_POS_XO,
SC_POS_YS = _v4.SC_POS_YS, SC_POS_YO = _v4.SC_POS_YO,
FISH_ESP = _v4.FISH_ESP,
FOSSIL_SMALL = _v4.FOSSIL_SMALL,
FOSSIL_MEDIUM = _v4.FOSSIL_MEDIUM,
FOSSIL_LARGE = _v4.FOSSIL_LARGE,
FOSSIL_DIST_SMALL = _v4.FOSSIL_DIST_SMALL,
FOSSIL_DIST_MEDIUM = _v4.FOSSIL_DIST_MEDIUM,
FOSSIL_DIST_LARGE = _v4.FOSSIL_DIST_LARGE,
VEG_ESP = _v4.VEG_ESP,
VEG_DIET_ONLY = _v4.VEG_DIET_ONLY,
VEG_HIDE_EATEN = _v4.VEG_HIDE_EATEN,
VEG_DISTANCE = _v4.VEG_DISTANCE,
VEG_MAX = _v4.VEG_MAX,
MEAT_ESP = _v4.MEAT_ESP,
MEAT_DISTANCE = _v4.MEAT_DISTANCE,
CLAY_ESP = _v4.CLAY_ESP,
CLAY_DISTANCE = _v4.CLAY_DISTANCE,
MMAP_ON = _v4.MMAP_ON,
MMAP_PLAYERS = _v4.MMAP_PLAYERS,
MMAP_CORPSES = _v4.MMAP_CORPSES,
MMAP_FOSSILS = _v4.MMAP_FOSSILS,
ANTI_BLACKSCREEN = _v4.ANTI_BLACKSCREEN,
NO_FOG = _v4.NO_FOG,
NO_BLUR = _v4.NO_BLUR,
FULLBRIGHT = _v4.FULLBRIGHT,
CUSTOM_TIME = _v4.customTime,
CUSTOM_TIME_HOUR = _v4.customTimeHour,
MOB_SHOW_TURN = _v4.MOB_SHOW_TURN,
AUTO_GROW = _v4.AUTO_GROW,
HITBOX_EXPANDER = _v4.HITBOX_EXPANDER,
HITBOX_VISUALIZE = _v4.HITBOX_VISUALIZE,
HITBOX_MULTIPLIER = _v4.HITBOX_MULTIPLIER,
HITBOX_VIS_TRANSPARENCY = _v4.HITBOX_VIS_TRANSPARENCY,
HG_Head = _v4.HITBOX_GROUPS.Head,
HG_Jaw = _v4.HITBOX_GROUPS.Jaw,
HG_Neck = _v4.HITBOX_GROUPS.Neck,
HG_Body = _v4.HITBOX_GROUPS.Body,
HG_Arm = _v4.HITBOX_GROUPS.Arm,
HG_Leg = _v4.HITBOX_GROUPS.Leg,
HG_TailBase = _v4.HITBOX_GROUPS.TailBase,
HG_TailMid = _v4.HITBOX_GROUPS.TailMid,
HG_TailTip = _v4.HITBOX_GROUPS.TailTip,
HG_Thagomizer = _v4.HITBOX_GROUPS.Thagomizer,
REACH_ENABLED = _v4.REACH_ENABLED,
REACH_MULTIPLIER = _v4.REACH_MULTIPLIER,
REACH_VISUALIZE = _v4.REACH_VISUALIZE,
REACH_VIS_TRANSPARENCY = _v4.REACH_VIS_TRANSPARENCY,
REACH_Head = _v4.REACH_GROUPS.Head,
REACH_Jaw = _v4.REACH_GROUPS.Jaw,
REACH_Arm = _v4.REACH_GROUPS.Arm,
REACH_Leg = _v4.REACH_GROUPS.Leg,
REACH_TailBase = _v4.REACH_GROUPS.TailBase,
REACH_TailMid = _v4.REACH_GROUPS.TailMid,
REACH_TailTip = _v4.REACH_GROUPS.TailTip,
REACH_Thagomizer = _v4.REACH_GROUPS.Thagomizer,
AUTO_WATER = _v4.AUTO_WATER,
FORCE_EAT = _v4.FORCE_EAT,
FAST_EAT = _v4.FAST_EAT,
FREEZE_FOOD = _v4.FREEZE_FOOD, FREEZE_WATER = _v4.FREEZE_WATER,
AUTO_CLEAN = _v4.AUTO_CLEAN,
INF_OXYGEN = _v4.INF_OXYGEN,
EAT_WHEN_HUNGRY = _v4.EAT_WHEN_HUNGRY,
LEAVE_SCRAPS = _v4.LEAVE_SCRAPS,
NO_FALL_DAMAGE = _v4.NO_FALL_DAMAGE,
FPS_SAVER = _v4.FPS_SAVER,
SAVE_DIR = _v4.SAVE_DIR,
FLY_SPEED = _v4.FLY_SPEED,
SKIN_SELECTED = _v4.SKIN_WANTED or _v4.SKIN_SELECTED,
AUTO_FLY_SPEED = _v4.AUTO_FLY_SPEED,
AUTO_FLY_RADIUS = _v4.AUTO_FLY_RADIUS,
AUTO_FLY_DRIFT = _v4.AUTO_FLY_DRIFT,
AUTO_FLY_ALT = _v4.AUTO_FLY_ALT,
ANTI_AFK = _v4.ANTI_AFK,
AFK_FARM_SPEED = _v4.AFK_FARM_SPEED,
AFK_FARM_AVOID = _v4.AFK_FARM_AVOID,
AFK_FARM_WALK = _v4.AFK_FARM_WALK,
AFK_FARM_SAFETY = _v4.AFK_FARM_SAFETY,
AFK_FARM_ADMIN_KICK = _v4.AFK_FARM_ADMIN_KICK,
AFK_FARM_FLEE = _v4.AFK_FARM_FLEE,
AFK_FARM_UNSTUCK = _v4.AFK_FARM_UNSTUCK,
LF_AVOID = _v4.LF_AVOID,
LF_RUN_DIST = _v4.LF_RUN_DIST,
LF_MAX_DIST = _v4.LF_MAX_DIST,
LF_SCRAPS = _v4.LF_SCRAPS,
LF_FLEE = _v4.LF_FLEE,
LF_UNSTUCK = _v4.LF_UNSTUCK,
LF_REST = _v4.LF_REST,
LF_ADMIN_KICK = _v4.LF_ADMIN_KICK,
LF_FLYAWAY = _v4.LF_FLYAWAY,
LF_FLYAWAY_RADIUS = _v4.LF_FLYAWAY_RADIUS,
AS_SLOT1 = _v4.AS_SLOTS[1], AS_SLOT2 = _v4.AS_SLOTS[2], AS_SLOT3 = _v4.AS_SLOTS[3],
AS_SLOT4 = _v4.AS_SLOTS[4], AS_SLOT5 = _v4.AS_SLOTS[5], AS_SLOT6 = _v4.AS_SLOTS[6],
AS_GENDER = _v4.AS_GENDER,
AS_AUTOBUY = _v4.AS_AUTOBUY,
AS_AUTO_ORDER = _v4.AS_AUTO_ORDER,
FT_MINUTES = _v4.FT_MINUTES,
AMBER_MINUTES = _v4.AMBER_MINUTES,
FOSSIL_FARM_SPEED = _v4.FOSSIL_FARM_SPEED,
TP_SOLID = _v4.TP_SOLID,
TP_CHAIN = _v4.TP_CHAIN,
AUTO_SAVE_PCT = _v4.AUTO_SAVE_PCT,
AUTO_SAVE = _v4.AUTO_SAVE,
AUTO_SAVE_BLEED = _v4.AUTO_SAVE_BLEED,
SHOW_INDICATORS = _v4.SHOW_INDICATORS,
MOD_CHECK = _v4.MOD_CHECK,
MOD_KICK = _v4.MOD_KICK,
UNLIMITED_ZOOM = _v4.UNLIMITED_ZOOM,
FOV_ENABLED = _v4.FOV_ENABLED,
FOV_VALUE = _v4.FOV_VALUE,
SILENT_AIM = _v4.SILENT_AIM,
NO_ATK_CD = _v4.NO_ATK_CD,
NO_ATK_COOLDOWN = _v4.NO_ATK_COOLDOWN,
ATTACK_SPEED = _v4.ATTACK_SPEED,
TURN_SPEED = _v4.TURN_SPEED,
QUICK_TURN = _v4.QUICK_TURN,
INSTA_TURN_KEY = (_v1pi and _v1pi.Key and _v1pi.Key ~= Enum.KeyCode.Unknown) and _v1pi.Key.Name or nil,
SA_Head = _v4.SILENT_GROUPS.Head,
SA_Jaw = _v4.SILENT_GROUPS.Jaw,
SA_Neck = _v4.SILENT_GROUPS.Neck,
SA_Body = _v4.SILENT_GROUPS.Body,
SA_Arm = _v4.SILENT_GROUPS.Arm,
SA_Leg = _v4.SILENT_GROUPS.Leg,
SA_TailBase = _v4.SILENT_GROUPS.TailBase,
SA_TailMid = _v4.SILENT_GROUPS.TailMid,
SA_TailTip = _v4.SILENT_GROUPS.TailTip,
SA_Thagomizer = _v4.SILENT_GROUPS.Thagomizer,
KEYBINDS = (function()
local _v23k = {}
for _v23l, _v23m in pairs(_v4.ALL_TOGGLES) do
if _v23m and _v23m.Key and _v23m.Key ~= Enum.KeyCode.Unknown then
_v23k[_v23l] = _v23m.Key.Name
end
end
return _v23k
end)(),
}
end
function _v4.applyConfigData(_v23n)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local _v23o, _v23p = pcall(_v4.applyConfigBody, _v23n)
if not _v23o then warn(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDO7HAUx25X8t3zckKe") .. tostring(_v23p)) end
_v4.freeLock()
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.cfgApplied = true
return _v23o
end
function _v4.applyConfigBody(_v23q)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local function _v23r(_v23s, _v23t)
pcall(function() if _v23s and _v23t ~= nil then _v23s:Set(_v23t) end end)
end
local function _v23u(_v23v, _v23w)
pcall(function() if _v23v and _v23w ~= nil then _v23v:Set(_v23w) end end)
end
local function _v23x(_v23y, _v23z, _v240, _v241, _v242)
pcall(function()
for _v243, _v244 in ipairs(_v23z) do
local _v245 = _v240[_v241 .. _v244]
if _v245 ~= nil then _v23y[_v244] = _v245 and true or false end
end
if _v242 and _v242.Refill then _v242.Refill() end
end)
end
_v23r(_v4.espToggle, _v23q.ESP_ENABLED)
_v23r(_v1xe.chams, _v23q.CHAMS_ENABLED)
_v23r(_v1xe.tracers, _v23q.TRACERS_ENABLED)
_v23r(_v1xe.showName, _v23q.SHOW_NAME)
_v23r(_v1xe.showDino, _v23q.SHOW_DINO)
_v23r(_v1xe.showStage, _v23q.SHOW_STAGE)
_v23r(_v1xe.showGender, _v23q.SHOW_GENDER)
_v23r(_v1xe.showHealth, _v23q.SHOW_HEALTH)
_v23r(_v1xe.showStamina, _v23q.SHOW_STAMINA)
if _v23q.SHOW_FOOD_BAR ~= nil then _v23r(_v1xe.foodBar, _v23q.SHOW_FOOD_BAR) end
if _v23q.SHOW_FOOD_NUM ~= nil then _v23r(_v1xe.foodNum, _v23q.SHOW_FOOD_NUM) end
if _v23q.SHOW_WATER_BAR ~= nil then _v23r(_v1xe.waterBar, _v23q.SHOW_WATER_BAR) end
if _v23q.SHOW_WATER_NUM ~= nil then _v23r(_v1xe.waterNum, _v23q.SHOW_WATER_NUM) end
if _v23q.SHOW_INFECT_BAR ~= nil then _v23r(_v1xe.infectBar, _v23q.SHOW_INFECT_BAR) end
if _v23q.SHOW_INFECT_NUM ~= nil then _v23r(_v1xe.infectNum, _v23q.SHOW_INFECT_NUM) end
_v23r(_v1xe.showWeight, _v23q.SHOW_WEIGHT)
_v23r(_v1xe.bleed, _v23q.BLEED_ESP)
if _v23q.PACK_ESP ~= nil then _v23r(_v1xe.packESP, _v23q.PACK_ESP) end
if _v23q.PACK_LEADER_ESP ~= nil then _v23r(_v1xe.packLeader, _v23q.PACK_LEADER_ESP) end
_v23r(_v1xe.showDist, _v23q.SHOW_DISTANCE)
_v23r(_v1xe.textHL, _v23q.TEXT_HIGHLIGHT)
_v23u(_v1xe.textSize, _v23q.TEXT_SIZE)
_v23u(_v1xe.hbHeight, _v23q.HEALTH_BAR_HEIGHT)
if _v23q.HEALTH_BAR_WIDTH then
_v23u(_v1xe.hbWidth, math.floor(_v23q.HEALTH_BAR_WIDTH * 100 + 0.5))
end
if _v23q.STAM_BAR_HEIGHT then _v23u(_v1xe.sbHeight, _v23q.STAM_BAR_HEIGHT) end
if _v23q.STAM_BAR_WIDTH then _v23u(_v1xe.sbWidth, math.floor(_v23q.STAM_BAR_WIDTH * 100 + 0.5)) end
_v23u(_v1xe.espDist, _v23q.ESP_DISTANCE)
if _v23q.CHAMS_FILL_TRANSPARENCY then
_v23u(_v1xe.chamsFill, math.floor(_v23q.CHAMS_FILL_TRANSPARENCY * 100 + 0.5))
end
if _v23q.CHAMS_OUTLINE_TRANSPARENCY then
_v23u(_v1xe.chamsOutline, math.floor(_v23q.CHAMS_OUTLINE_TRANSPARENCY * 100 + 0.5))
end
_v23r(_v1xe.corpse, _v23q.CORPSE_ESP)
if _v23q.CORPSE_INF_ESP ~= nil then _v23r(_v1xe.corpseInf, _v23q.CORPSE_INF_ESP) end
_v23u(_v1xe.worldTextSize, _v23q.WORLD_TEXT_SIZE)
_v23u(_v1xe.corpseDist, _v23q.CORPSE_DISTANCE)
if _v23q.STATS_CARD ~= nil then _v23r(_v1xe.statsCard, _v23q.STATS_CARD) end
if _v23q.SC_GROWTH ~= nil then _v23r(_v1xe.scGrowth, _v23q.SC_GROWTH) end
if _v23q.SC_MASS ~= nil then _v23r(_v1xe.scMass, _v23q.SC_MASS) end
if _v23q.SC_WEIGHT ~= nil then _v23r(_v1xe.scWeight, _v23q.SC_WEIGHT) end
if _v23q.SC_TIMER ~= nil then _v23r(_v1xe.scTimer, _v23q.SC_TIMER) end
if _v23q.SC_NUTRITION ~= nil then _v23r(_v1xe.scNutrition, _v23q.SC_NUTRITION) end
if _v23q.SC_WELLBEING ~= nil then _v23r(_v1xe.scWellbeing, _v23q.SC_WELLBEING) end
if _v23q.SC_DRAG ~= nil then _v23r(_v1xe.scDrag, _v23q.SC_DRAG) end
if _v23q.SC_NAME ~= nil then _v23r(_v1xe.scName, _v23q.SC_NAME) end
if _v23q.SC_HIDE_WITH_MENU ~= nil then _v23r(_v1xe.scHideMenu, _v23q.SC_HIDE_WITH_MENU) end
if _v4.setStatsCardPos and _v23q.SC_POS_XS and _v23q.SC_POS_XO and _v23q.SC_POS_YS and _v23q.SC_POS_YO then
_v4.setStatsCardPos(_v23q.SC_POS_XS, _v23q.SC_POS_XO, _v23q.SC_POS_YS, _v23q.SC_POS_YO)
end
if _v23q.FISH_ESP ~= nil then _v23r(_v1xe.fishESP, _v23q.FISH_ESP) end
_v23r(_v1xe.fossilS, _v23q.FOSSIL_SMALL)
_v23r(_v1xe.fossilM, _v23q.FOSSIL_MEDIUM)
_v23r(_v1xe.fossilL, _v23q.FOSSIL_LARGE)
_v23u(_v1xe.fossilDistS, _v23q.FOSSIL_DIST_SMALL or _v23q.FOSSIL_DISTANCE)
_v23u(_v1xe.fossilDistM, _v23q.FOSSIL_DIST_MEDIUM or _v23q.FOSSIL_DISTANCE)
_v23u(_v1xe.fossilDistL, _v23q.FOSSIL_DIST_LARGE or _v23q.FOSSIL_DISTANCE)
if _v23q.VEG_DIET_ONLY ~= nil then _v23r(_v1xe.vegDietOnly, _v23q.VEG_DIET_ONLY) end
if _v23q.VEG_HIDE_EATEN ~= nil then _v23r(_v1xe.vegHideEaten, _v23q.VEG_HIDE_EATEN) end
if _v23q.VEG_DISTANCE then _v23u(_v1xe.vegDist, _v23q.VEG_DISTANCE) end
if _v23q.VEG_MAX then _v23u(_v1xe.vegMax, _v23q.VEG_MAX) end
if _v23q.VEG_ESP ~= nil then _v23r(_v1xe.vegESP, _v23q.VEG_ESP) end
_v23r(_v1xe.meat, _v23q.MEAT_ESP)
_v23u(_v1xe.meatDist, _v23q.MEAT_DISTANCE)
if _v23q.CLAY_ESP ~= nil then _v23r(_v1xe.clay, _v23q.CLAY_ESP) end
if _v23q.CLAY_DISTANCE then _v23u(_v1xe.clayDist, _v23q.CLAY_DISTANCE) end
if _v23q.MMAP_PLAYERS ~= nil then _v23r(_v1xe.mmapPlayers, _v23q.MMAP_PLAYERS) end
if _v23q.MMAP_CORPSES ~= nil then _v23r(_v1xe.mmapCorpses, _v23q.MMAP_CORPSES) end
if _v23q.MMAP_FOSSILS ~= nil then _v23r(_v1xe.mmapFossils, _v23q.MMAP_FOSSILS) end
if _v23q.MMAP_ON ~= nil then
_v23r(_v1xe.mmap, _v23q.MMAP_ON)
elseif _v23q.MMAP_PLAYERS or _v23q.MMAP_CORPSES or _v23q.MMAP_FOSSILS then
_v23r(_v1xe.mmap, true)
end
_v23r(_v1xe.antiBS, _v23q.ANTI_BLACKSCREEN)
if _v23q.NO_FOG ~= nil then _v23r(_v1xe.noFog, _v23q.NO_FOG) end
if _v23q.NO_BLUR ~= nil then _v23r(_v1xe.noBlur, _v23q.NO_BLUR) end
if _v23q.FULLBRIGHT ~= nil then _v23r(_v1xe.fullbright, _v23q.FULLBRIGHT) end
if _v23q.CUSTOM_TIME_HOUR then _v23u(_v1xe.timeHour, _v23q.CUSTOM_TIME_HOUR) end
if _v23q.CUSTOM_TIME ~= nil then _v23r(_v1xe.customTime, _v23q.CUSTOM_TIME) end
if _v23q.MOB_SHOW_TURN ~= nil and _v4.mobTurnToggle then _v23r(_v4.mobTurnToggle, _v23q.MOB_SHOW_TURN) end
_v23r(_v1xe.showModules, _v23q.SHOW_INDICATORS)
if _v23q.MOD_CHECK ~= nil then _v23r(_v1xe.modCheck, _v23q.MOD_CHECK) end
if _v23q.MOD_KICK ~= nil then _v23r(_v1xe.modKick, _v23q.MOD_KICK) end
_v23r(_v1xe.unlimitedZoom, _v23q.UNLIMITED_ZOOM)
if _v23q.FOV_VALUE then _v23u(_v1xe.fovSlider, _v23q.FOV_VALUE) end
_v23r(_v1xe.fovToggle, _v23q.FOV_ENABLED)
_v23u(_v1xe.attackSpeed, _v23q.ATTACK_SPEED)
_v23r(_v1xe.noAtkCd, _v23q.NO_ATK_CD)
_v23r(_v1xe.noAtkCooldown, _v23q.NO_ATK_COOLDOWN)
_v23x(_v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER, _v23q, _pguo("7Q9t"), _v1xe.silentGroups)
_v23u(_v1xe.turnSpeed, _v23q.TURN_SPEED)
_v23r(_v1xe.quickTurn, _v23q.QUICK_TURN)
_v23r(_v1xe.silentAim, _v23q.SILENT_AIM)
if _v23q.INSTA_TURN_KEY and _v1pi then
pcall(function()
local _v246 = Enum.KeyCode[_v23q.INSTA_TURN_KEY]
if _v246 then _v1pi:Set(_v246, true) end
end)
end
_v23r(_v4.hitboxToggle, _v23q.HITBOX_EXPANDER)
_v23r(_v1xe.hitboxVis, _v23q.HITBOX_VISUALIZE)
_v23u(_v1xe.hitboxMult, _v23q.HITBOX_MULTIPLIER)
if _v23q.HITBOX_VIS_TRANSPARENCY ~= nil then
_v23u(_v1xe.hitboxVisOpacity, math.floor((1 - _v23q.HITBOX_VIS_TRANSPARENCY) * 100 + 0.5))
end
_v23x(_v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER, _v23q, _pguo("9glt"), _v1xe.hitboxGroups)
_v23u(_v1xe.reachMult, _v23q.REACH_MULTIPLIER)
if _v23q.REACH_Tail ~= nil and _v23q.REACH_TailBase == nil then
_v23q.REACH_TailBase = _v23q.REACH_Tail
_v23q.REACH_TailMid = _v23q.REACH_Tail
_v23q.REACH_TailTip = _v23q.REACH_Tail
_v23q.REACH_Thagomizer = _v23q.REACH_Tail
end
_v23x(_v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER, _v23q, _pguo("7Atzw+fD"), _v1xe.reachGroups)
if _v23q.REACH_VIS_TRANSPARENCY ~= nil then
_v23u(_v1xe.reachVisOpacity, math.floor((1 - _v23q.REACH_VIS_TRANSPARENCY) * 100 + 0.5))
end
if _v23q.REACH_VISUALIZE ~= nil then _v23r(_v1xe.reachVis, _v23q.REACH_VISUALIZE) end
_v23r(_v1xe.reach, _v23q.REACH_ENABLED)
_v23r(_v4.autoWaterToggle, _v23q.AUTO_WATER)
if _v23q.FORCE_EAT ~= nil then _v23r(_v4.forceEatToggle, _v23q.FORCE_EAT) end
if _v23q.FAST_EAT ~= nil then _v23r(_v1xe.fastEat, _v23q.FAST_EAT) end
if _v23q.FREEZE_FOOD ~= nil then _v23r(_v1xe.freezeFood, _v23q.FREEZE_FOOD) end
if _v23q.FREEZE_WATER ~= nil then _v23r(_v1xe.freezeWater, _v23q.FREEZE_WATER) end
if _v23q.AUTO_CLEAN ~= nil then _v23r(_v4.autoCleanToggle, _v23q.AUTO_CLEAN) end
if _v23q.INF_OXYGEN ~= nil then _v23r(_v1xe.infOxygen, _v23q.INF_OXYGEN) end
if _v23q.EAT_WHEN_HUNGRY ~= nil then _v23r(_v1xe.eatWhenHungry, _v23q.EAT_WHEN_HUNGRY) end
if _v23q.LEAVE_SCRAPS ~= nil then _v23r(_v1xe.leaveScraps, _v23q.LEAVE_SCRAPS) end
_v23r(_v4.noFallToggle, _v23q.NO_FALL_DAMAGE)
if _v23q.FPS_SAVER ~= nil then _v23r(_v1xe.fpsSaver, _v23q.FPS_SAVER) end
if _v23q.SAVE_DIR then _v23r(_v1xe.saveDir, _v23q.SAVE_DIR) end
if _v23q.FLY_SPEED then _v23u(_v4.flySpeedSlider, _v23q.FLY_SPEED) end
if type(_v23q.SKIN_SELECTED) == _pguo("zTpA6cH7") then
_v4.SKIN_WANTED = _v23q.SKIN_SELECTED
local _v247 = _v4.skinsForCurrentDino and _v4.skinsForCurrentDino() or {}
if _v4.skinDropdown and table.find(_v247, _v23q.SKIN_SELECTED) then _v23r(_v4.skinDropdown, _v23q.SKIN_SELECTED) end
end
if _v23q.AUTO_FLY_SPEED then _v23u(_v4.autoFlySpeedSlider, _v23q.AUTO_FLY_SPEED) end
if _v23q.AUTO_FLY_RADIUS then _v23u(_v4.autoFlyRadiusSlider, _v23q.AUTO_FLY_RADIUS) end
if _v23q.AUTO_FLY_DRIFT then _v23u(_v4.autoFlyDriftSlider, _v23q.AUTO_FLY_DRIFT) end
if _v23q.AUTO_FLY_ALT then _v23u(_v4.autoFlyAltSlider, _v23q.AUTO_FLY_ALT) end
if _v23q.ANTI_AFK ~= nil then _v23r(_v4.antiAfkToggle, _v23q.ANTI_AFK) end
if _v23q.AFK_FARM_SPEED then _v23u(_v1xe.afkFarmSpeed, _v23q.AFK_FARM_SPEED) end
if _v23q.FOSSIL_FARM_SPEED then _v23u(_v4.fossilFarmSpeedSlider, _v23q.FOSSIL_FARM_SPEED) end
if _v23q.AFK_FARM_AVOID then _v23u(_v1xe.afkFarmAvoid, _v23q.AFK_FARM_AVOID) end
if _v23q.AFK_FARM_WALK ~= nil then _v23r(_v1xe.afkFarmWalk, _v23q.AFK_FARM_WALK) end
if _v23q.AFK_FARM_SAFETY ~= nil then _v23r(_v1xe.afkFarmSafety, _v23q.AFK_FARM_SAFETY) end
if _v23q.AFK_FARM_ADMIN_KICK ~= nil then _v23r(_v1xe.afkFarmAdminKick, _v23q.AFK_FARM_ADMIN_KICK) end
if _v23q.AFK_FARM_FLEE ~= nil then _v23r(_v1xe.afkFarmFlee, _v23q.AFK_FARM_FLEE) end
if _v23q.AFK_FARM_UNSTUCK ~= nil then _v23r(_v1xe.afkFarmUnstuck, _v23q.AFK_FARM_UNSTUCK) end
if _v23q.LF_AVOID then _v23u(_v1xe.lfAvoid, _v23q.LF_AVOID) end
if _v23q.LF_RUN_DIST then _v23u(_v1xe.lfRunDist, _v23q.LF_RUN_DIST) end
if _v23q.LF_MAX_DIST then _v23u(_v1xe.lfMaxDist, _v23q.LF_MAX_DIST) end
if _v23q.LF_SCRAPS ~= nil then _v23r(_v1xe.lfScraps, _v23q.LF_SCRAPS) end
if _v23q.LF_FLEE ~= nil then _v23r(_v1xe.lfFlee, _v23q.LF_FLEE) end
if _v23q.LF_UNSTUCK ~= nil then _v23r(_v1xe.lfUnstuck, _v23q.LF_UNSTUCK) end
if _v23q.LF_REST ~= nil then _v23r(_v1xe.lfRest, _v23q.LF_REST) end
if _v23q.LF_ADMIN_KICK ~= nil then _v23r(_v1xe.lfAdminKick, _v23q.LF_ADMIN_KICK) end
if _v23q.LF_FLYAWAY ~= nil then _v23r(_v1xe.lfFlyAway, _v23q.LF_FLYAWAY) end
if _v23q.LF_FLYAWAY_RADIUS then _v23u(_v1xe.lfFlyAwayRadius, _v23q.LF_FLYAWAY_RADIUS) end
for _v248 = 1, 6 do
local _v249 = _v23q[_pguo("/x1t0+PTVA==") .. _v248]
if _v249 ~= nil then _v23r(_v1xe[_pguo("3z1h7MDo") .. _v248], _v4.asLabel and _v4.asLabel(_v249) or _v249) end
end
_v23r(_v1xe.asGender, _v23q.AS_GENDER)
if _v23q.AS_AUTOBUY ~= nil then _v23r(_v1xe.asAutoBuy, _v23q.AS_AUTOBUY) end
if _v23q.AS_AUTO_ORDER ~= nil then _v23r(_v1xe.asAutoOrder, _v23q.AS_AUTO_ORDER) end
if _v23q.FT_MINUTES then _v23u(_v1xe.ftMinutes, _v23q.FT_MINUTES) end
if _v23q.AMBER_MINUTES then _v23u(_v1xe.amberMinutes, _v23q.AMBER_MINUTES) end
_v23r(_v1xe.tpSolid, _v23q.TP_SOLID)
_v23r(_v1xe.tpChain, _v23q.TP_CHAIN)
if _v23q.AUTO_SAVE_PCT and _v23q.AUTO_SAVE_PCT > 0 then
_v23u(_v4.autoSaveSlider, _v23q.AUTO_SAVE_PCT)
end
local _v24a = _v23q.AUTO_SAVE
if _v24a == nil then _v24a = (_v23q.AUTO_SAVE_PCT or 0) > 0 end
_v23r(_v4.autoSaveToggle, _v24a)
if _v23q.AUTO_SAVE_BLEED ~= nil then _v23r(_v4.autoSaveBleedToggle, _v23q.AUTO_SAVE_BLEED) end
if type(_v23q.KEYBINDS) == _pguo("yi9Q7Mo=") then
for _v24b, _v24c in pairs(_v4.ALL_TOGGLES) do
if _v23q.KEYBINDS[_v24b] == nil and _v24c and _v24c.SetKey then
pcall(function()
if _v24c.Key and _v24c.Key ~= Enum.KeyCode.Unknown then _v24c:SetKey(nil, true) end
end)
end
end
for _v24d, _v24e in pairs(_v23q.KEYBINDS) do
local _v24f = _v4.ALL_TOGGLES[_v24d]
if _v24f and _v24f.SetKey and _v24e then
pcall(function()
local _v24g = Enum.KeyCode[_v24e]
if _v24g then _v24f:SetKey(_v24g, true) end
end)
end
end
end
if _v23q.AUTO_GROW ~= nil then _v23r(_v4.autoGrowToggle, _v23q.AUTO_GROW) end
end
function _v4.listConfigs()
local _v24h = {}
pcall(function()
local _v24i = listfiles(_v4.CONFIG_FOLDER)
for _v24j, _v24k in ipairs(_v24i) do
local _v24l = _v24k:match(_pguo("lhVsr/PBK1GbYFjzwPIk"))
if _v24l and _v24l ~= _pguo("3ztG78PzYRw=") then
table.insert(_v24h, _v24l)
end
end
end)
table.sort(_v24h)
return _v24h
end
function _v4.saveConfig(_v24m)
local ok, err = pcall(function()
local _v24n = _v4.getConfigData()
writefile(_v4.CONFIG_FOLDER .. "/" .. _v24m .. _pguo("kCRB78E="), _v23j:JSONEncode(_v24n))
end)
if ok then
print(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYd2nQS") .. _v24m)
pcall(function() _v1mm:Notify(_pguo("7S9E5cu8YxfQKFvnlbw=") .. _v24m) end)
else
warn(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYdnghzyePZREKe") .. tostring(err))
pcall(function() _v1mm:Notify(_pguo("7S9E5Y/6YRHSK1a6jw==") .. _v24m) end)
end
return ok
end
function _v4.loadConfig(_v24o)
local ok, data = pcall(function()
local _v24p = readfile(_v4.CONFIG_FOLDER .. "/" .. _v24o .. _pguo("kCRB78E="))
return _v23j:JSONDecode(_v24p)
end)
if ok and data then
_v4.applyConfigData(data)
print(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82Ec2yoIoA==") .. _v24o)
pcall(function() _v1mm:Notify(_pguo("8iFT5Mr4IBvRIFTpyKYg") .. _v24o) end)
return true
else
warn(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82EcnghzyePZREKe") .. tostring(data))
pcall(function() _v1mm:Notify(_pguo("8iFT5I/6YRHSK1a6jw==") .. _v24o) end)
end
return false
end
function _v4.deleteConfig(_v24q)
pcall(function()
delfile(_v4.CONFIG_FOLDER .. "/" .. _v24q .. _pguo("kCRB78E="))
end)
end
function _v4.getAutoLoadConfig()
local _v24r, _v24s = pcall(function() return readfile(_v4.AUTO_LOAD_FILE) end)
if _v24r and _v24s and _v24s ~= "" then return _v24s end
return nil
end
function _v4.setAutoLoadConfig(_v24t)
pcall(function() writefile(_v4.AUTO_LOAD_FILE, _v24t or "") end)
end
local _v24u = _v1mm.tabs and _v1mm.tabs.Settings
if _v24u then
pcall(function()
_v24u.page.ScrollingEnabled = true
_v24u.page.ScrollBarThickness = 3
end)
else
_v24u = _v1xa
end
if _v4.IS_MOBILE then
_v4.section(_v24u, _pguo("8yFQ6cP5"), _pguo("7SZd94/IdQrQbnD12+hvFs10EvPH83cLnjpa5Y/zblXNLUDlyvIgDMs8XKDf/WRWnhpH8sG8aQyeIVTmj/VmWNc6EuPA6mUKzW5B78L5dBDXIFWg1vN1WNArV+SP6G9Yyi9Crg=="))
_v4.mobTurnToggle = _v24u:AddToggle({
Name = _pguo("7SZd94/IdQrQbnD12+hvFs0="),
Default = true,
Callback = function(_v24v) _v4.MOB_SHOW_TURN = _v24v end
})
end
_v4.CONFIG_SLOTS = {_pguo("/SFc5sb7MQ=="), _pguo("/SFc5sb7Mg=="), _pguo("/SFc5sb7Mw=="), _pguo("/SFc5sb7NA=="), _pguo("/SFc5sb7NQ=="), _pguo("7jhi"), _pguo("+x1ioODybAE="), _pguo("+Txb7ss="), _pguo("+Dte7A==")}
pcall(function()
_v1mm:SetConfig({
Folder = _v4.CONFIG_FOLDER,
Slots = _v4.CONFIG_SLOTS,
Save = _v4.saveConfig,
Load = _v4.loadConfig,
Ignore = function(_v24w)
return _v24w:match(_pguo("4DxX6sD1bl2Ta1ariw==")) or _v24w:match(_pguo("4C9B5MDyZV2Ta1ariw==")) or _v24w:match(_pguo("4CJX5tu5LQ==")) or _v24w == _pguo("1iFf5dw=")
end,
})
end)
local _v24x = Instance.new(_pguo("7S1A5cryRw3X"))
_v24x.Name = _pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA==")
_v24x.ResetOnSpawn = false
_v24x.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v24x.Parent = game:GetService(_pguo("/SFA5ejpaQ==")) end)
if not _v24x.Parent then _v24x.Parent = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
local _v24y = Instance.new(_pguo("+DxT7co="))
_v24y.Name = _pguo("8yFW9cP5TBHNOg==")
_v24y.Size = UDim2.new(0, 160, 0, 400)
_v24y.Position = UDim2.new(1, -170, 0, 10)
_v24y.BackgroundTransparency = 1
_v24y.Parent = _v24x
local _v24z = Instance.new(_pguo("6wd+6dzoTBnHIUf0"))
_v24z.FillDirection = Enum.FillDirection.Vertical
_v24z.HorizontalAlignment = Enum.HorizontalAlignment.Right
_v24z.VerticalAlignment = Enum.VerticalAlignment.Top
_v24z.SortOrder = Enum.SortOrder.LayoutOrder
_v24z.Padding = UDim.new(0, 2)
_v24z.Parent = _v24y
_v4.TweenService = game:GetService(_pguo("6jlX5cHPZQrIJ1Hl"))
local _v250 = {}
_v4.SLIDE_TIME = 0.25
function _v4.createIndicatorLabel(_v251, _v252)
local _v253 = Instance.new(_pguo("6itK9OP9Yh3S"))
_v253.Name = _pguo("9yBW3w==") .. _v251
_v253.LayoutOrder = _v252
_v253.Size = UDim2.new(1, 0, 0, 18)
_v253.BackgroundTransparency = 1
_v253.TextColor3 = Color3.fromRGB(170, 90, 255)
_v253.TextStrokeTransparency = 0.3
_v253.TextStrokeColor3 = Color3.new(0, 0, 0)
_v253.Font = Enum.Font.GothamBold
_v253.TextSize = 13
_v253.TextXAlignment = Enum.TextXAlignment.Right
_v253.Text = _v251
_v253.TextTransparency = 1
_v253.Position = UDim2.new(1, 0, 0, 0)
_v253.Parent = _v24y
_v250[_v251] = _v253
return _v253
end
function _v4.showIndicator(_v254)
local _v255 = _v250[_v254]
if not _v255 then return end
_v255.Visible = true
_v255.TextTransparency = 1
_v255.Position = UDim2.new(1, 0, 0, 0)
local _v256 = _v4.TweenService:Create(_v255, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
TextTransparency = 0,
Position = UDim2.new(0, 0, 0, 0)
})
_v256:Play()
end
function _v4.hideIndicator(_v257)
local _v258 = _v250[_v257]
if not _v258 then return end
local _v259 = _v4.TweenService:Create(_v258, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
TextTransparency = 1,
Position = UDim2.new(1, 0, 0, 0)
})
_v259:Play()
_v259.Completed:Connect(function()
if _v258.TextTransparency >= 0.9 then
_v258.Visible = false
end
end)
end
function _v4.updateIndicator(_v25a, _v25b)
if _v25b then
_v4.showIndicator(_v25a)
else
_v4.hideIndicator(_v25a)
end
end
_v4.MODULE_LIST = {
{name = _pguo("+x1i"), order = 1, getState = function() return _v4.ESP_ENABLED end},
{name = _pguo("/SZT7dw="), order = 2, getState = function() return _v4.CHAMS_ENABLED end},
{name = _pguo("6jxT48rucw=="), order = 3, getState = function() return _v4.TRACERS_ENABLED end},
{name = _pguo("/SFA8Nz5ID3tHg=="), order = 4, getState = function() return _v4.CORPSE_ESP end},
{name = _pguo("+CFB88bwID3tHg=="), order = 5, getState = function() return _v4.FOSSIL_SMALL or _v4.FOSSIL_MEDIUM or _v4.FOSSIL_LARGE end},
{name = _pguo("8ytT9I/ZUyg="), order = 7, getState = function() return _v4.MEAT_ESP end},
{name = _pguo("/SJT+Y/ZUyg="), order = 8, getState = function() return _v4.CLAY_ESP end},
{name = _pguo("6CtV5dv9dBHRIBLF/Mw="), order = 24, getState = function() return _v4.VEG_ESP end},
{name = _pguo("7S9E5Y/YaRbR"), order = 8, getState = function() return _v4.SAVE_DINO_ACTIVE end},
{name = _pguo("9idG4sDkID3GPlPuy/ly"), order = 9, getState = function() return _v4.HITBOX_EXPANDER end},
{name = _pguo("8CES08P5ZQieHVHyyvlu"), order = 10, getState = function() return _v4.ANTI_BLACKSCREEN end},
{name = _pguo("/ztG74/bchfJ"), order = 11, getState = function() return _v4.AUTO_GROW end},
{name = _pguo("6itK9I/UaR/WIlvnx+g="), order = 12, getState = function() return _v4.TEXT_HIGHLIGHT end},
{name = _pguo("8CESxs7wbFj6L1/hyPk="), order = 14, getState = function() return _v4.NO_FALL_DAMAGE end},
{name = _pguo("+CFB88bwID7fPF8="), order = 15, getState = function() return _v4.FOSSIL_FARM end},
{name = _pguo("7Sde5cHoIDnXIw=="), order = 16, getState = function() return _v4.SILENT_AIM end},
{name = _pguo("+DxX5dX5ID7RIVY="), order = 17, getState = function() return _v4.FREEZE_FOOD end},
{name = _pguo("+DxX5dX5IC/fOlfy"), order = 18, getState = function() return _v4.FREEZE_WATER end},
{name = _pguo("/wh5oOn9chU="), order = 18.5, getState = function() return _v4.AFK_FARM end},
{name = _pguo("8itV6du8RhnMIw=="), order = 18.6, getState = function() return _v4.LEGIT_FARM end},
{name = _pguo("/ztG74/PdxHKLVo="), order = 18.7, getState = function() return _v4.AUTO_SWITCH end},
{name = _pguo("+C9A7Y/IaRXbPA=="), order = 18.8, getState = function() return _v4.FARM_TIMER end},
{name = _pguo("/wh5oO7xYh3MbnTh3fE="), order = 18.9, getState = function() return _v4.AMBER_FARM end},
{name = _pguo("/ztG74/abAE="), order = 19, getState = function() return _v4.AUTO_FLY end},
{name = _pguo("6h4S9MC8QxfMPkHl"), order = 20, getState = function() return _v4.TP_CORPSE end},
{name = _pguo("/yBG6Y/dRjM="), order = 21, getState = function() return _v4.ANTI_AFK end},
{name = _pguo("8yFWoOz0ZRvV"), order = 22, getState = function() return _v4.MOD_CHECK end},
{name = _pguo("8CESxsD7"), order = 25, getState = function() return _v4.NO_FOG end},
}
for _v25c, _v25d in ipairs(_v4.MODULE_LIST) do
_v4.createIndicatorLabel(_v25d.name, _v25d.order)
end
_v4.prevStates = {}
_v4.addStep(6, function()
if _v24x.Enabled ~= _v4.SHOW_INDICATORS then _v24x.Enabled = _v4.SHOW_INDICATORS end
for _v25e, _v25f in ipairs(_v4.MODULE_LIST) do
local _v25g = _v25f.getState()
if _v4.prevStates[_v25f.name] ~= _v25g then
_v4.prevStates[_v25f.name] = _v25g
_v4.updateIndicator(_v25f.name, _v25g)
end
end
end)
pcall(function()
local _v25h = (_v1mm.toggleKey and _v1mm.toggleKey.Name) or _pguo("7CdV6NvPaBHYOg==")
_v1mm:Notify(_pguo("+y9I+ez0ZRnKPRLswP1kHdpuH6Df7mULzW4=") .. _v25h .. _pguo("njpdoNz0bw+eIUCgx/VkHZ46WuWP8WUWyw=="), 6)
end)