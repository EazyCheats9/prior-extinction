--EZ:__EZ_WM__
-- EazyCheats | Prior Extinction Hub | PREMIUM
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
_v4.REJOIN_OK = true
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
pcall(function() Hub:Notify(_pguo("/TtB9MDxICzXI1e6j+tlGcomV/KP/28Wyjxd7MP5cljLIEDlzv9oGdwiV6BNHJRY3SJd48S8bxbSNx6gw/VnEMonXOeP6W4b1i9c58r4"), 6) end)
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
_v4.lfExclude = {}
_v4.lfGiveUps = {}
_v4.lfHeld = {}
_v4.lfBarriers = {}
_v4.lfBiteN = 0
_v4.lfStatus = _pguo("0ShU")
local _vu0, _vu1
local function _vu2()
if not _vu1 then
_vu1 = true
pcall(function() _vu0 = require(_v4.WATER_RS.Common.RayParams).AlignmentParams end)
if not _vu0 then
_vu0 = RaycastParams.new()
_vu0.FilterType = Enum.RaycastFilterType.Include
local _vu3 = { workspace.Terrain }
local _vu4 = workspace:FindFirstChild(_pguo("6SFA7Ms="))
local _vu5 = _vu4 and _vu4:FindFirstChild(_pguo("8yFH7tv9aRbN"))
if _vu5 then _vu3[2] = _vu5 end
_vu0.FilterDescendantsInstances = _vu3
_vu0.IgnoreWater = true
end
end
return _vu0
end
local function _vu6(_vu7, _vu8, _vu9)
local _vua = workspace:Raycast(Vector3.new(_vu7, _vu8, _vu9), Vector3.new(0, -500, 0), _vu2())
return _vua and _vua.Position.Y
end
local function _vub()
local _vuc
pcall(function()
local _vud = _v4.getCS().Alignment
_vuc = (_vud.RideHeight or 0) + (_vud.BodyHeightIncrease or 0)
end)
if type(_vuc) ~= _pguo("0Dtf4sru") or _vuc <= 0 then _vuc = 6 end
return _vuc
end
local function _vue()
local _vuf
pcall(function() _vuf = _v4.getCS().Instances.Mesh end)
return _vuf
end
local function _vug(_vuh, _vui)
local _vuj = Vector3.new(_vuh.X, 0, _vuh.Z)
if _vuj.Magnitude < 0.1 then return _vui end
return _vuj.Unit
end
local function _vuk(_vul, _vum)
if _vul then pcall(function() _vul:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _vum) end) end
end
local function _vun(_vuo, _vup)
pcall(function()
_vuo.CFrame = _vup
_vuo.AssemblyLinearVelocity = Vector3.zero
_vuo.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _vuq()
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
local function _vur(_vus, _vut)
local _vuu = _v4.getCS()
local _vuv = (_vuu and _vuu.Actions and _vuu.Actions[_vus]) == true
if _vuv == _vut then return end
local _vuw = _vuu and _vuu.Controls and pcall(function() _vuu.Controls:HandleAction(_vus, _vut) end)
if not _vuw and _vus == _pguo("+CFA987uZA==") then
pcall(function() _v4.VIM:SendKeyEvent(_vut, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = _vut or nil
end
_v4.lfHeld[_vus] = _vut or nil
end
local function _vux()
for _vuy in pairs(_v4.lfHeld) do
pcall(function() _v4.getCS().Controls:HandleAction(_vuy, false) end)
end
_v4.lfHeld = {}
if _v4.lfVimW then
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = nil
end
end
local function _vuz()
if _v4.lfColliders then
for _vv0 in pairs(_v4.lfColliders) do
if _vv0.Parent then pcall(function() _vv0.CanCollide = true end) end
end
end
_v4.lfColliders, _v4.lfCollidersChar = nil, nil
end
local function _vv1(_vv2)
if _v4.lfCollidersChar ~= _vv2 then
_vuz()
local _vv3 = {}
for _vv4, _vv5 in ipairs(_vv2:GetDescendants()) do
if _vv5:IsA(_pguo("/C9B5f/9cgw=")) and _vv5.CanCollide then _vv3[_vv5] = true end
end
for _vv6, _vv7 in ipairs({ _pguo("/CFW+Q=="), _pguo("9idGwsDk") }) do
local _vv8 = _vv2:FindFirstChild(_vv7)
if _vv8 and _vv8:IsA(_pguo("/C9B5f/9cgw=")) then _vv3[_vv8] = true end
end
_v4.lfColliders, _v4.lfCollidersChar = _vv3, _vv2
end
for _vv9 in pairs(_v4.lfColliders) do
if _vv9.Parent and _vv9.CanCollide then _vv9.CanCollide = false end
end
end
local function _vva(_vvb)
local _vvc = workspace:FindFirstChild(_pguo("/Cdd7crv"))
local _vvd = _vvb.Parent
while _vvd and _vvd ~= _vvc and _vvd ~= workspace do
if _vvd.Name == _pguo("/C9A8sb5cg==") then return true end
_vvd = _vvd.Parent
end
return false
end
local function _vve()
if _v4.lfBarriersTracked then return end
local _vvf = workspace:FindFirstChild(_pguo("/Cdd7crv"))
if not _vvf then return end
_v4.lfBarriersTracked = true
local function _vvg(_vvh)
if _vvh:IsA(_pguo("/C9B5f/9cgw=")) and _vva(_vvh) then _v4.lfBarriers[_vvh] = true end
end
for _vvi, _vvj in ipairs(_vvf:GetChildren()) do
local _vvk = (_vvj.Name == _pguo("/C9A8sb5cg==")) and _vvj or _vvj:FindFirstChild(_pguo("/C9A8sb5cg=="))
if _vvk then
for _vvi, _vvm in ipairs(_vvk:GetDescendants()) do _vvg(_vvm) end
end
end
table.insert(_vz, _vvf.DescendantAdded:Connect(function(_vvn)
if not _v4.UNLOADED then _vvg(_vvn) end
end))
table.insert(_vz, _vvf.DescendantRemoving:Connect(function(_vvo)
_v4.lfBarriers[_vvo] = nil
end))
end
local function _vvp(_vvq, _vvr)
for _vvs in pairs(_v4.lfBarriers) do
if _vvs.Parent then
local _vvt = _vvs.CFrame:PointToObjectSpace(_vvq)
local _vvu = _vvs.Size * 0.5
local _vvv = Vector3.new(math.max(math.abs(_vvt.X) - _vvu.X, 0), math.max(math.abs(_vvt.Y) - _vvu.Y, 0),
math.max(math.abs(_vvt.Z) - _vvu.Z, 0))
if _vvv.Magnitude < _vvr then return true end
else
_v4.lfBarriers[_vvs] = nil
end
end
return false
end
local function _vvw(_vvx, _vvy)
if next(_v4.lfBarriers) == nil then return true end
local _vvz = _vvy - _vvx
local _vw0 = math.clamp(math.ceil(_vvz.Magnitude / 25), 1, 80)
for _vw1 = 0, _vw0 do
if _vvp(_vvx + _vvz * (_vw1 / _vw0), _vtv) then return false end
end
return true
end
local _vw2
local function _vw3(_vw4, _vw5, _vw6)
if not _vw2 then
_vw2 = RaycastParams.new()
_vw2.FilterType = Enum.RaycastFilterType.Include
local _vw7 = { workspace.Terrain }
local _vw8 = workspace:FindFirstChild(_pguo("6SFA7Ms="))
local _vw9 = _vw8 and _vw8:FindFirstChild(_pguo("8yFH7tv9aRbN"))
if _vw9 then _vw7[2] = _vw9 end
_vw2.FilterDescendantsInstances = _vw7
_vw2.IgnoreWater = true
end
local _vwa = workspace:Raycast(Vector3.new(_vw4, _vw6, _vw5), Vector3.new(0, -2500, 0), _vw2)
return _vwa and _vwa.Position.Y
end
local function _vwb(_vwc, _vwd, _vwe)
_vwd = _vwd or _vu6(_vwc.X, _vwc.Y + 5, _vwc.Z) or _vwc.Y
local _vwf = _vw3(_vwc.X, _vwc.Z, _vwc.Y + 1200)
return _vwf ~= nil and _vwf - _vwd > math.max(_vwe * 2, 25)
end
local function _vwg(_vwh, _vwi, _vwj, _vwk)
local _vwl = _vu6(_vwh.X, _vwh.Y + 60, _vwh.Z) or _vu6(_vwh.X, _vwh.Y + 300, _vwh.Z)
if _vwl == nil or math.abs(_vwh.Y - (_vwl + _vwj + _vwk)) > _vwi * _vte then return false end
return not _vwb(_vwh, _vwl, _vwj)
end
local function _vwm()
local _vwn
pcall(function()
local _vwo = _v4.getCS().Replica.Data
_vwn = _vwo.Stats.Stamina / math.max(_vwo.MaxStats.Stamina, 1)
end)
if not _vwn then return end
if _v4.lfTired then
if _vwn >= _vtt then _v4.lfTired = false end
elseif _vwn <= _vts then
_v4.lfTired = true
end
end
local function _vwp(_vwq)
local _vwr, _vws = 20, 5
pcall(function()
local _vwt = _v4.getCS().Data.Movement.Speeds.Land
_vwr, _vws = _vwt.Run or _vwr, _vwt.Normal or _vws
end)
local _vwu = _v4.LF_RUN_DIST or 100
return (math.max(_vwq - _vwu, 0) / math.max(_vwr, 1) + math.min(_vwq, _vwu) / math.max(_vws, 1)) * 1.6 + 20
end
local function _vwv(_vww)
local _vwx = _v4.lfTarget
if _vww and _vwx and _vwx.id then
if _vww >= _vtg then
local _vwy = (_v4.lfGiveUps[_vwx.id] or 0) + 1
_v4.lfGiveUps[_vwx.id] = _vwy
if _vwy >= 2 then _vww = math.max(_vww, _vth) end
end
_v4.lfExclude[_vwx.id] = os.clock() + _vww
end
_v4.lfTarget, _v4.lfEat = nil, nil
_v4.lfLastScan = 0
_v4.lfProgPos = nil
end
local function _vwz(_vx0, _vx1, _vx2)
_vux()
_v4.lfEat = nil
local _vx3 = _vu6(_vx1.X, _vx1.Y + 5, _vx1.Z) or (_vx1.Y - _vx2)
local _vx4 = _v4.lfHeading or _vug(_vx0.CFrame.LookVector, Vector3.new(0, 0, -1))
_v4.lfFly = { phase = "up", pos = _vx1, dest = Vector3.new(_vx1.X, _vx3 + _vx2 + _vtn, _vx1.Z), dir = _vx4 }
_v4.lfProgPos = nil
end
local function _vx5(_vx6)
local _vx7, _vx8
for _vx9, _vxa in ipairs(_v0:GetPlayers()) do
if _vxa ~= _v2 and _vxa.Character then
local _vxb = _v4.getRootOf(_vxa.Character, false)
if _vxb then
local _vxc = (_vxb.Position - _vx6).Magnitude
if not _vx8 or _vxc < _vx8 then _vx7, _vx8 = _vxb.Position, _vxc end
end
end
end
return _vx7, _vx8
end
local function _vxd(_vxe, _vxf, _vxg, _vxh)
_vux()
_vwv(nil)
local _vxi = _vu6(_vxf.X, _vxf.Y + 5, _vxf.Z) or (_vxf.Y - _vxg)
local _vxj = _vug(_vxf - _vxh, _v4.lfHeading or _vug(_vxe.CFrame.LookVector, Vector3.new(0, 0, -1)))
_v4.lfFly = { kind = _pguo("2CJX5Q=="), phase = "up", pos = _vxf, start = _vxf, dir = _vxj, t0 = os.clock(),
dest = Vector3.new(_vxf.X, _vxi + _vxg + _vtw, _vxf.Z) }
_v4.lfProgPos = nil
end
function _v4.lfStop(_vxk)
if _v4.lfResting == _pguo("zCtB9MbyZw==") and _v4.saveIsResting() then _vuq() end
if _v4.lfAnchored then
local _vxl = _v4.getLocalPhysicsRoot()
if _vxl then pcall(function() _vxl.Anchored = false end) end
_v4.lfAnchored = nil
end
_v4.lfResting, _v4.lfFly, _v4.lfHealUp = nil, nil, nil
_vux()
_vuz()
if not _vxk then
local _vxm = _v2.Character
if _vxm then pcall(function() _vxm:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
end
_v4.lfWasOn, _v4.lfChar = false, nil
_v4.lfTarget, _v4.lfEat, _v4.lfHeading, _v4.lfProgPos, _v4.lfFleeing = nil, nil, nil, nil, false
_v4.lfStatus = _pguo("0ShU")
_v4.flyLandUntil = os.clock() + 10
end
function _v4.lfAdvance(_vxn)
if _v4.UNLOADED then return end
local _vxo = _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY
or _v4.AMBER_FARM or _v4.amberState
if not _v4.LEGIT_FARM or _vxo then
if _v4.lfWasOn then _v4.lfStop(_vxo) end
return
end
local _vxp = _v2.Character
local _vxq = _v4.getLocalPhysicsRoot()
if not (_vxp and _vxq) then return end
_vxn = math.min(_vxn or 0.016, 0.1)
if _v4.lfWasOn and _v4.lfChar ~= _vxp then _v4.lfStop(false) end
if not _v4.lfWasOn then
_v4.lfWasOn, _v4.lfChar = true, _vxp
_v4.lfY = _vxq.Position.Y
_v4.lfTarget, _v4.lfEat, _v4.lfLastScan = nil, nil, 0
_vve()
end
local _vxr = os.clock()
local _vxs = _vxq.Position
local _vxt = _vub()
local _vxu = _v4.getCS()
local _vxv, _vxw
pcall(function() _vxv = _vxp:GetAttribute(_pguo("9itT7Nv0")); _vxw = _vxp:GetAttribute(_pguo("8y9KyMr9bAzW")) end)
local _vxx = (type(_vxv) == _pguo("0Dtf4sru") and type(_vxw) == _pguo("0Dtf4sru") and _vxw > 0) and _vxv / _vxw or 1
if _v4.tookDamage(_vxp, _vxv) then
_v4.lfHealUp = true
if not _v4.lfFly and not _v4.lfResting then
local _vxy, _vxz = _vx5(_vxs)
if _vxy and _vxz <= 400 then _vxd(_vxq, _vxs, _vxt, _vxy) end
end
end
local _vy0 = _vxx < 0.5 or (_v4.lfHealUp and _vxx < 0.99)
if _v4.LF_REST and not _v4.lfResting and not _v4.lfFly and _vy0 then
local _vy1, _vy2 = _vx5(_vxs)
if _vy1 and _vy2 <= math.max(_v4.LF_FLYAWAY_RADIUS or 150, 150) then
_vxd(_vxq, _vxs, _vxt, _vy1)
else
_v4.lfResting, _v4.lfRestT = _pguo("zStG9MP1bh8="), _vxr
_vwv(nil)
_vux()
_v4.lfHeading = nil
end
elseif _v4.lfResting and (_vxx >= 0.99 or not _v4.LF_REST) then
if _v4.saveIsResting() then _vuq() end
if _v4.lfAnchored then pcall(function() _vxq.Anchored = false end); _v4.lfAnchored = nil end
_v4.lfResting = nil
_v4.lfHealUp = nil
_v4.lfY = _vxs.Y
end
if _vxx >= 0.99 then _v4.lfHealUp = nil end
if _v4.lfResting then
if _v4.lfResting == _pguo("zStG9MP1bh8=") then
_vuk(_vxp, _v4.lfY)
if _vxr - _v4.lfRestT >= 1 then
pcall(function() _vxq.Anchored = true end)
_v4.lfAnchored = true
_vuk(_vxp, nil)
_vuq()
_v4.lfResting, _v4.lfRestT = _pguo("zCtB9MbyZw=="), _vxr
end
elseif not _v4.saveIsResting() and _vxr - _v4.lfRestT > 6 then
_vuq()
_v4.lfRestT = _vxr
end
_v4.lfStatus = _pguo("zCtB9MbyZ1jKIRLoyv1sWJY=") .. math.floor(_vxx * 100) .. "%)"
return
end
if _vxq.Anchored then return end
_vv1(_vxp)
if _v4.lfSteerPatch then _v4.lfSteerPatch() end
if _v4.LF_FLYAWAY and not _v4.lfFly then
local _vy3, _vy4 = _vx5(_vxs)
if _vy3 and _vy4 <= (_v4.LF_FLYAWAY_RADIUS or 150) then _vxd(_vxq, _vxs, _vxt, _vy3) end
end
if _v4.lfFly then
local _vy5 = _v4.lfFly
if _vy5.kind == _pguo("2CJX5Q==") and _vy5.phase == _pguo("3zlT+Q==") then
local _vy6, _vy7 = _vx5(_vy5.pos)
if _vy6 then _vy5.dir = _vug(_vy5.pos - _vy6, _vy5.dir) end
if next(_v4.lfBarriers) and _vvp(_vy5.pos + _vy5.dir * _vtv, _vtv * 0.5) then
_vy5.dir = Vector3.new(-_vy5.dir.Z, 0, _vy5.dir.X)
end
local _vy8 = _vy5.pos + _vy5.dir * 40
local _vy9 = _vu6(_vy5.pos.X, _vy5.pos.Y + 150, _vy5.pos.Z)
local _vya = _vu6(_vy8.X, _vy5.pos.Y + 150, _vy8.Z)
local _vyb = math.max(_vy9 or -math.huge, _vya or -math.huge)
local _vyc = (_vyb > -math.huge) and (_vyb + _vxt + _vtw) or _vy5.pos.Y
_vy5.dest = Vector3.new(_vy5.pos.X + _vy5.dir.X * 50, _vyc, _vy5.pos.Z + _vy5.dir.Z * 50)
local _vyd = not _vy6 or _vy7 > (_v4.LF_FLYAWAY_RADIUS or 150) * 2
local _vye = Vector3.new(_vy5.pos.X - _vy5.start.X, 0, _vy5.pos.Z - _vy5.start.Z).Magnitude
if (_vyd and _vye >= _vty) or os.clock() - _vy5.t0 > _vtz then
local _vyf = _vu6(_vy5.pos.X, _vy5.pos.Y, _vy5.pos.Z)
_vy5.phase, _vy5.dest = _pguo("0i9c5A=="), Vector3.new(_vy5.pos.X, (_vyf or (_vy5.pos.Y - _vtw - _vxt)) + _vxt, _vy5.pos.Z)
end
end
_vy5.pos = _v4.govNext(_vy5.pos, _vy5.dest, _vxn, _vy5.kind == _pguo("2CJX5Q==") and _vtx or _vtp)
_vy5.cf = CFrame.lookAt(_vy5.pos, _vy5.pos + _vy5.dir)
_vun(_vxq, _vy5.cf)
_vuk(_vxp, _vy5.pos.Y)
_v4.lfY = _vy5.pos.Y
_v4.lfStatus = (_vy5.kind == _pguo("2CJX5Q==") and _pguo("2CJL6cH7IBnJL0ugye5vFZ4vEvDD/XkdzHQS") or _pguo("yyBB9Nr/a0Ke")) .. _vy5.phase
if (_vy5.pos - _vy5.dest).Magnitude < 2 then
if _vy5.phase == "up" and _vy5.kind == _pguo("2CJX5Q==") then
_vy5.phase = _pguo("3zlT+Q==")
elseif _vy5.phase == "up" then
local _vyg = _vy5.dest + _vy5.dir * _vto
if next(_v4.lfBarriers) and _vvp(_vyg, _vtv) then _vyg = _vy5.dest - _vy5.dir * _vto end
_vy5.phase, _vy5.dest = _pguo("0ThX8g=="), _vyg
elseif _vy5.phase == _pguo("0ThX8g==") then
local _vyh = _vu6(_vy5.dest.X, _vy5.dest.Y, _vy5.dest.Z)
_vy5.phase, _vy5.dest = _pguo("0i9c5A=="), Vector3.new(_vy5.dest.X, (_vyh or (_vy5.dest.Y - _vtn)) + _vxt, _vy5.dest.Z)
else
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
end
end
return
end
local _vyi = _vxu and _vxu.MovementState == _pguo("7Tlb7cL1bh8=")
if _vyi then
_vuk(_vxp, nil)
_v4.lfY = _vxs.Y
else
if math.abs(_vxs.Y - _v4.lfY) > 25 then _v4.lfY = _vxs.Y end
local _vyj = _v4.lfY - _vxt
local _vyk = _vu6(_vxs.X, _vyj + math.max(_vxt * 0.75, 4), _vxs.Z)
or _vu6(_vxs.X, _vyj + 90, _vxs.Z)
if _vyk then
_v4.lfY = _v4.lfY + math.clamp(_vyk + _vxt - _v4.lfY, -_vtr * _vxn, _vtq * _vxn)
end
_vuk(_vxp, _v4.lfY)
end
_vwm()
if _v4.LF_FLEE then
local _vyl = _v4.LF_AVOID or 200
local _vym, _vyn
if _vyl > 0 then
for _vyo, _vyp in ipairs(_v0:GetPlayers()) do
if _vyp ~= _v2 and _vyp.Character then
local _vyq = _v4.getRootOf(_vyp.Character, false)
if _vyq then
local _vyr = (_vyq.Position - _vxs).Magnitude
if not _vyn or _vyr < _vyn then _vym, _vyn = _vyq.Position, _vyr end
end
end
end
end
if _vym and (_vyn <= _vyl or (_v4.lfFleeing and _vyn <= _vyl * 1.5)) then
if not _v4.lfFleeing then _vwv(nil) end
_v4.lfFleeing = true
_v4.lfHeading = _vug(_vxs - _vym, _v4.lfHeading or Vector3.new(0, 0, -1))
if next(_v4.lfBarriers) and _vvp(_vxs + _v4.lfHeading * _vtv, _vtv * 0.5) then
_v4.lfHeading = Vector3.new(-_v4.lfHeading.Z, 0, _v4.lfHeading.X)
end
_v4.lfEat = nil
_vur(_pguo("+CFA987uZA=="), true)
_vur(_pguo("7Dtc"), not _v4.lfTired)
_v4.lfStatus = _pguo("2CJX5cbyZ1jfbkLszuVlCp4=") .. math.floor(_vyn) .. _pguo("nj1G9cvvIBnJL0s=")
return
end
_v4.lfFleeing = false
end
if not _v4.lfTarget and _vxr - (_v4.lfLastScan or 0) >= _vtf then
_v4.lfLastScan = _vxr
for _vys, _vyt in pairs(_v4.lfExclude) do
if _vyt <= _vxr then _v4.lfExclude[_vys] = nil end
end
if _v4.afkPickFood then
local _vyu = _v4.khRange()
local _vyv = _vue()
local _vyw = _vyv and (_vyv.Position.Y - _vxs.Y) or 8
local _vyz, _vz0, _vz1, _vz2 = _v4.afkPickFood(_vxs, _v4.lfExclude, {
avoid = _v4.LF_AVOID or 200,
meat = _v4.dinoEatsMeat(),
maxDist = _v4.LF_MAX_DIST or 1000,
feetY = _vxs.Y - _vxt, yWeight = 5,
reach = function(_vyx, _vyy)
if not _vvw(_vxs, _vyx) then return false end
if _vyy then return not _vwb(_vyx, nil, _vxt) end
return _vwg(_vyx, _vyu, _vxt, _vyw)
end,
})
if _vyz and _vz1 then
local _vz3 = Vector3.new(_vz1.X - _vxs.X, 0, _vz1.Z - _vxs.Z).Magnitude
_v4.lfTarget = { id = _vyz, idx = _vz0, pos = _vz1, isMeat = _vz2, misses = 0, flyOuts = 0,
biteSeen = _v4.lfBiteN, eat = { id = _vyz, idx = _vz0, meat = _vz2 }, deadline = _vxr + _vwp(_vz3) }
end
end
end
local _vz4 = _v4.lfTarget
if not _vz4 then
_vux()
_v4.lfEat, _v4.lfHeading, _v4.lfProgPos = nil, nil, nil
_v4.lfStatus = _v4.afkPickFood and _pguo("0iFd68byZ1jYIUCg3flhG9YvUOzKvGYX0So=") or _pguo("yS9b9MbyZ1jYIUCgyfNvHJ4qU/TO")
return
end
local _vz5, _vz6, _vz7 = _v4.afkBufCheck(_vz4.id, _vz4.idx)
if _vz4.isMeat and _vz5 == nil then _vwv(_vtg) return end
if _vz5 ~= nil and (not _vz7 or _vz5 + (_vz6 or 0) <= 0) then
_vwv(5)
return
end
if _vz5 ~= nil and not _vz4.isMeat and (_v4.LF_SCRAPS or _v4.LEAVE_SCRAPS) and _v4.isScraps(_vz5) then
_v4.lfExclude[_vz4.id] = os.clock() + 300
_vwv(nil)
return
end
local _vz8 = _vue()
local _vz9 = _vz8 and _vz8.Position or _vxs
local _vza = _v4.khRange()
local _vzb = _vz4.pos - _vz9
local _vzc = Vector3.new(_vzb.X, 0, _vzb.Z).Magnitude
local _vzd = math.sqrt(math.max((_vza * 0.9) ^ 2 - _vzb.Y * _vzb.Y, 0))
local _vze = _vz4.creep and 3 or math.max(_vzd * _vtd, 3)
if _vzc <= math.max(_vza * 1.5, 20) and math.abs(_vzb.Y) > _vza * 0.95 then
_vz4.vertSince = _vz4.vertSince or _vxr
if _vxr - _vz4.vertSince > _vti then
_vwv(_vth)
return
end
else
_vz4.vertSince = nil
end
if _vz4.holding then
if _vzc > _vze + 6 then _vz4.holding = false end
elseif _vzc <= _vze then
_vz4.holding = true
end
_v4.lfHeading = _vug(_vz4.pos - _vxs, _v4.lfHeading)
_v4.lfEat = (_vzb.Magnitude <= _vza * 0.95) and _vz4.eat or nil
local _vzf, _vzg = _v4.myFood()
local _vzh = _vzf and _vzg and _vzg > 0 and _vzf >= _vzg - _v4.foodGap(_vzg, 1)
if _v4.lfBiteN ~= _vz4.biteSeen then
_vz4.biteSeen = _v4.lfBiteN
if _vz5 and _vz4.lastFood and _vz5 < _vz4.lastFood then
_v4.noteBiteDrop(_vz4.lastFood - _vz5)
_vz4.misses = 0
_vz4.lastEat = _vxr
elseif _vz4.lastFood ~= nil and not _vzh then
_vz4.misses = _vz4.misses + 1
end
_vz4.lastFood = _vz5
end
if _vz4.holding and not _vz4.creep and _vz4.misses >= _vtj then
_vz4.creep, _vz4.holding, _vz4.misses = true, false, 0
_vz4.deadline = _vxr + _vwp(_vzc)
elseif _vz4.creep and _vz4.holding and _vz4.misses >= _vtk then
_vwv(_vtg)
return
end
if _vz4.holding and _v4.lfEat then
if _v4.foodNoGain(_vz4, _vxr) then _vwv(_v4.NO_GAIN_SKIP) return end
else
_vz4.gainT = nil
end
if _v4.LF_UNSTUCK and _vz4.holding and not _vzh then
_vz4.hungrySince = _vz4.hungrySince or _vxr
if _vxr - math.max(_vz4.lastEat or 0, _vz4.hungrySince) > (_v4.UNSTUCK_EAT_SECS or 25) then
_vwv(_vtg)
return
end
elseif _vzh then
_vz4.hungrySince = nil
end
if _vz4.holding then
_vur(_pguo("+CFA987uZA=="), false)
_vur(_pguo("7Dtc"), false)
_v4.lfProgPos = nil
_v4.lfStatus = _pguo("2y9G6cH7IFs=") .. _vz4.id .. " (" .. math.floor(_vzc) .. _pguo("nj1G9cvvLFjTJ0Hzyu8g") .. _vz4.misses .. ")"
return
end
if next(_v4.lfBarriers) and _v4.lfHeading
and _vvp(_vxs + _v4.lfHeading * _vtv, _vtv * 0.5) then
_vux()
_vwv(_vtg)
return
end
if _vz4.deadline and _vxr > _vz4.deadline then _vwv(_vtg) return end
local _vzi = _vzc > (_v4.LF_RUN_DIST or 100) and not _v4.lfTired
_vur(_pguo("+CFA987uZA=="), true)
_vur(_pguo("7Dtc"), _vzi)
local _vzj = _vxu and _vxu.Movement and _vxu.Movement.MoveActionsBlocked
if _v4.LF_UNSTUCK and not _vzj then
if not _v4.lfProgPos
or Vector3.new(_vxs.X - _v4.lfProgPos.X, 0, _vxs.Z - _v4.lfProgPos.Z).Magnitude > _vtm then
_v4.lfProgPos, _v4.lfProgT = _vxs, _vxr
elseif _vxr - _v4.lfProgT > _vtl then
_vz4.flyOuts = _vz4.flyOuts + 1
_vwz(_vxq, _vxs, _vxt)
if _vz4.flyOuts >= 2 then _vwv(_vtg) end
return
end
end
_v4.lfStatus = (_vzi and _pguo("zDtc7sbyZw==") or (_vyi and _pguo("zTlb7cL1bh8=") or _pguo("yS9e68byZw=="))) .. _pguo("njpdoIw=") .. _vz4.id
.. " (" .. math.floor(_vzc) .. _pguo("nj1G9cvvKQ==")
end
function _v4.lfPin()
local _vzk = _v4.lfFly
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _vzk or not _vzk.cf then return end
local _vzl = _v4.getLocalPhysicsRoot()
if _vzl and not _vzl.Anchored then _vun(_vzl, _vzk.cf) end
end
local function _vzm()
if _v4.lfWalkState then return true end
pcall(function()
local _vzn = require(_v2.PlayerScripts.Client.Classes.Character.Movement.States.Walking)
local _vzo = rawget(_vzn, _pguo("/ypY9dzoRBHMK1H0xvNu"))
if type(_vzo) ~= _pguo("2Dtc49v1bxY=") then return end
_vzn.AdjustDirection = function(self, _vzp, ...)
local _vzq = _v4.lfHeading
if _vzq and _v4.LEGIT_FARM and _v4.lfWasOn and not _v4.lfFly and not _v4.lfResting
and _v4.lfHeld and _v4.lfHeld.Forward then
return _vzq
end
return _vzo(self, _vzp, ...)
end
_v4.lfWalkState = { mod = _vzn, orig = _vzo }
end)
return _v4.lfWalkState ~= nil
end
_v4.lfSteerPatch = _vzm
function _v4.lfSteer(_vzr)
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _v4.lfWasOn or _v4.lfFly or _v4.lfResting then return end
if _v4.lfWalkState then
local _vzs = _v4.getCS()
if not (_vzs and _vzs.MovementState == _pguo("7Tlb7cL1bh8=")) then return end
end
local _vzt = _v4.lfHeading
local _vzu = workspace.CurrentCamera
if not _vzt or not _vzu or _vzu.CameraType ~= Enum.CameraType.Custom then return end
local _vzv = _vzu.CFrame
local _vzw = _vzv.LookVector
if Vector3.new(_vzw.X, 0, _vzw.Z).Magnitude < 1e-3 then return end
local _vzx = math.atan2(-_vzw.X, -_vzw.Z)
local _vzy = math.atan2(-_vzt.X, -_vzt.Z)
local _vzz = math.clamp(math.atan2(math.sin(_vzy - _vzx), math.cos(_vzy - _vzx)),
-_vtu * (_vzr or 0.016), _vtu * (_vzr or 0.016))
if math.abs(_vzz) < 1e-4 then return end
local _v100 = CFrame.Angles(0, _vzz, 0)
local _v101 = _vzu.Focus.Position
_vzu.CFrame = CFrame.new(_v101 + _v100 * (_vzv.Position - _v101)) * (_v100 * _vzv.Rotation)
end
table.insert(_vz, _v1.RenderStepped:Connect(_v4.lfAdvance))
table.insert(_vz, _v1.Heartbeat:Connect(_v4.lfPin))
pcall(function()
_v1:BindToRenderStep(_pguo("7hZtzMr7aQztOlfl3Q=="), Enum.RenderPriority.Camera.Value + 2, _v4.lfSteer)
end)
end
_v4.lfSetup()
function _v4.asSetup()
local _v102 = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
_v4.asDone = {}
_v4.asSkip = {}
_v4.asStatus = _pguo("0ShU")
local function _v103()
local _v104
pcall(function() _v104 = require(_v102.Packages.Knit) end)
return _v104
end
local function _v105()
local _v106
pcall(function() _v106 = _v103().GetController(_pguo("+i9G4ezzbgzMIV7syu4=")) end)
return _v106
end
local function _v107(_v108)
local _v109
pcall(function() _v109 = require(_v102.DinosaurData[_v108]) end)
return _v109
end
local function _v10a(_v10b, _v10c)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("/ztG74/PdxHKLVq6jw==") .. _v10b, _v10c or 6) end end)
end
local function _v10d()
local _v10e = _v103()
return (_v10e and _v10e.Roster) or {}
end
local function _v10f(_v10g)
local _v10h
pcall(function() _v10h = _v105().Dinosaurs[_v10g] end)
return _v10h and true or false
end
local function _v10i(_v10j)
local _v10k
pcall(function()
local _v10l = tonumber(_v105().DinosaursData[_v10j].Pricing.Amber)
if _v10l and _v10l > 0 then
_v10k = _v103().GetController(_pguo("7jtA48f9cxHQKXHvwehyF9IiV/I=")):GetDinosaurAmberCost(_v10j)
end
end)
return tonumber(_v10k)
end
local function _v10m()
local _v10n
pcall(function() _v10n = _v105().Currencies.Amber end)
return tonumber(_v10n) or 0
end
local function _v10o(_v10p)
if _v10p >= 1e6 then return (math.floor(_v10p / 1e4 + 0.5) / 100) .. "M" end
if _v10p >= 1e3 then return math.floor(_v10p / 1e3 + 0.5) .. "K" end
return tostring(math.floor(_v10p))
end
function _v4.asAvailable()
local _v10q = {}
for _v10r, _v10s in ipairs(_v10d()) do
if _v10f(_v10s) then _v10q[#_v10q + 1] = _v10s end
end
return _v10q
end
function _v4.asLabel(_v10t)
if not _v10t or _v10t == _pguo("liBd7sq1") then return _pguo("liBd7sq1") end
if _v10f(_v10t) then return _v10t .. _pguo("nmMS9cHwbxvVK1Y=") end
local _v10u = _v10i(_v10t)
return _v10t .. (_v10u and (_pguo("nmMS7MD/ax3aYhI=") .. _v10o(_v10u) .. _pguo("ng9f4sru")) or _pguo("nmMS7MD/ax3aYhLSwP51AJ4hXOzW"))
end
function _v4.asNameOf(_v10v)
if type(_v10v) ~= _pguo("zTpA6cH7") then return nil end
return _v10v:match(_pguo("4GYcrYa8JVWe")) or _v10v
end
function _v4.asItems()
local _v10w = { _pguo("liBd7sq1") }
for _v10x, _v10y in ipairs(_v10d()) do _v10w[#_v10w + 1] = _v4.asLabel(_v10y) end
return _v10w
end
_v4.asDropdowns = {}
function _v4.asRefreshLists()
local _v10z = _v4.asItems()
for _v110 = 1, 6 do
local _v111 = _v4.asDropdowns[_v110]
if _v111 and _v111.Refresh then pcall(function() _v111:Refresh(_v10z, true) end) end
end
end
local function _v112(_v113)
local _v114, _v115 = _v107(_v113), nil
pcall(function() _v115 = require(_v102.Common.GetGrowthIndex):GetHighestGrowthStage(_v114.GrowthStages) end)
return _v115
end
local function _v116(_v117)
local _v118
pcall(function()
_v118 = _v105().Replica.Data[_pguo("/SZT8s7/dB3MClP0zsM=") .. _v117 .. "_" .. (_v4.AS_GENDER or _pguo("8y9e5Q==")) .. "_1"].Growth.Stage
end)
return _v118
end
local function _v119(_v11a, _v11b)
if not _v11b then return false end
if _v11b == _pguo("8yFc89v5cg==") then return true, _pguo("zCtT48f5ZFjzIVzz2/ly") end
if _v11b == _v112(_v11a) then return true, _pguo("zCtT48f5ZFg=") .. _v11b .. _pguo("km5b9Ny8ZhHQL16g3OhhH9s=") end
return false
end
local function _v11c()
local _v11d = _v2.Character
return (_v11d and _v11d:GetAttribute(_pguo("6jdC5Q=="))) or _v2:GetAttribute(_pguo("/TtA8srydCjSL0vhzfBl"))
end
local function _v11e()
local _v11f = _v4.getCS()
local _v11g
pcall(function() _v11g = _v11f.Replica.Data.Growth end)
local _v11h = _v11c()
if type(_v11g) ~= _pguo("yi9Q7Mo=") or not _v11h then return false end
if _v11g.Stage == _pguo("8yFc89v5cg==") then return true, _pguo("zCtT48f5ZFjzIVzz2/ly") end
if _v11g.NextStage == _pguo("8yFc89v5cg==") then return true, _pguo("zCtT48f5ZFg=") .. tostring(_v11g.Stage) .. _pguo("km5b9Ny8ZhHQL16g3OhhH9s=") end
return false
end
local _v11i = {}
local function _v11j(_v11k)
if _v11i[_v11k] then return _v11i[_v11k] end
local _v11l
pcall(function()
local _v11m = _v107(_v11k).GrowthStages[_v112(_v11k)]
_v11m = _v11m[_v4.AS_GENDER or _pguo("8y9e5Q==")] or _v11m.Male or _v11m
_v11l = tonumber(_v11m.CoreStats.Weight)
end)
_v11i[_v11k] = _v11l or math.huge
return _v11i[_v11k]
end
local function _v11n()
local _v11o = {}
if not _v4.AS_AUTO_ORDER then
for _v11p = 1, 6 do
local _v11q = _v4.AS_SLOTS[_v11p]
if _v11q and _v11q ~= _pguo("liBd7sq1") then _v11o[#_v11o + 1] = _v11q end
end
if #_v11o > 0 then return _v11o end
end
for _v11r, _v11s in ipairs(_v10d()) do _v11o[#_v11o + 1] = _v11s end
table.sort(_v11o, function(_v11t, _v11u)
local _v11v, _v11w = _v10f(_v11t), _v10f(_v11u)
if _v11v ~= _v11w then return _v11v end
local _v11x, _v11y = _v11j(_v11t), _v11j(_v11u)
if _v11x ~= _v11y then return _v11x < _v11y end
return _v11t < _v11u
end)
return _v11o
end
local function _v11z(_v120)
local _v121 = {}
for _v122, _v123 in ipairs(_v10d()) do _v121[_v123] = true end
local _v124 = _v10m()
for _v125, _v126 in ipairs(_v11n()) do
if _v126 and _v126 ~= _pguo("liBd7sq1") and _v126 ~= _v120 and _v121[_v126] and not _v4.asDone[_v126] and not _v4.asSkip[_v126] then
if _v10f(_v126) then
if not _v119(_v126, _v116(_v126)) then return _v126 end
elseif _v4.AS_AUTOBUY then
local _v127 = _v10i(_v126)
if _v127 and _v127 <= _v124 then return _v126, _v127 end
end
end
end
return nil
end
local function _v128(_v129)
local _v12a, _v12b = {}, 0
for _v12c, _v12d in ipairs(_v11n()) do
if _v12d and _v12d ~= _pguo("liBd7sq1") then
if _v4.asSkip[_v12d] or not _v10f(_v12d) then
_v12b = _v12b + 1
elseif _v12d == _v129 or _v4.asDone[_v12d] or _v119(_v12d, _v116(_v12d)) then
_v12a[#_v12a + 1] = _v12d
end
end
end
local _v12e = (#_v12a > 0) and (_pguo("3zoS9Mf5aQqeKFvuzvAgC8ovVeWVvA==") .. table.concat(_v12a, ", ")) or _pguo("0CES9cHwbxvVK1agy/VuF546XaDI7m8P")
if _v12b > 0 then _v12e = _v12e .. "; " .. _v12b .. (_v4.AS_AUTOBUY and _pguo("niJd48T5ZFiWIF30j/luF8spWqDu8WIdzGc=") or _pguo("niJd48T5ZA==")) end
return _v12e .. _pguo("nmMS78HweVjaJ1zv3LxvFp46WuncvG0Zzm5R4cG8Yh2eO0Hlyw==")
end
local function _v12f(_v12g)
return _v12g and _v12g.FoundWater and not (_v12g.Classifications and _v12g.Classifications.IsSemiAquatic)
end
local function _v12h()
local _v12i = _v4.getCS()
if _v2:GetAttribute(_pguo("9z177uzzbRrfOg==")) then return false, _pguo("1yAS48DxYhnK") end
if _v12i and _v12i.MovementState == _pguo("+CJL6cH7") then return false, _pguo("2CJL6cH7") end
if _v12f(_v12i) then return false, _pguo("1yAS987oZQo=") end
if _v12i and _v12i.UsingTimedAction then return false, _pguo("3yBd9Mf5cljKJ1/ly7xhG8onXe6P9XNYzDtc7sbyZw==") end
local _v12j = false
pcall(function() _v12j = _v12i.Classifications.IsApex and _v12i.Movement:IsMoving() end)
if _v12j then return false, _pguo("zTpb7MO8bRfIJ1znj7RhCNs2Eu3a73RYzTpT7su8cwzXIl6p") end
return true
end
local function _v12k(_v12l)
local _v12m = _v103()
local _v12n = _v12m.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="))
local _v12o = _v12m.GetController(_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="))
local _v12p = _v4.getCS()
_v12p.UsingTimedAction = true
_v2:SetAttribute(_pguo("7CtG9d3yaRbZGl3NyvJ1"), true)
_v12n:BeginReturnToMenu()
local _v12q = tonumber(_v12n:GetReturnToMenuDuration()) or 30
local _v12r = os.clock() + _v12q + 1
local _v12s = true
while os.clock() < _v12r do
_v4.asStatus = _pguo("zCtG9d3yaRbZbkbvj/FlFstuGg==") .. math.ceil(_v12r - os.clock()) .. "s)"
local _v12t = false
pcall(function() _v12t = _v12p.Classifications.IsApex and _v12p.Movement:IsMoving() end)
if _v4.UNLOADED or not _v12l() or _v2:GetAttribute(_pguo("9z177uzzbRrfOg=="))
or (_v12p.Actions and _v12p.Actions.Run) or _v12f(_v12p) or _v12t then
_v12s = false
break
end
task.wait(0.2)
end
if _v12s then
_v12n:Despawn()
_v12o:StartMainMenu()
end
_v2:SetAttribute(_pguo("7CtG9d3yaRbZGl3NyvJ1"), false)
_v12p.UsingTimedAction = false
return _v12s
end
_v4.asSafeToLeave, _v4.asReturnToMenu = _v12h, _v12k
local function _v12u(_v12v, _v12w)
local _v12x = _v103()
local _v12y = _v12x.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="))
local _v12z = _pguo("+itU4drwdA==")
pcall(function() _v12z = _v105().Replica.Data.SkinInventory[_v12v].LastSelected or _pguo("+itU4drwdA==") end)
local _v130 = false
pcall(function() _v130 = table.find(require(_v102.Shared.DinosaursData).Apex, _v12v) ~= nil end)
if _v130 then
local _v131 = _v12x.GetController(_pguo("/z5X+OzzbgzMIV7syu4="))
local _v132, _v133 = os.clock() + 600, false
while os.clock() < _v132 and (_v4.AUTO_SWITCH or _v4.rjSpawning) and not _v4.UNLOADED do
local _v134, _v135 = pcall(function() return _v131:RequestSlot(_v12v) end)
if _v134 and _v135 then _v133 = true break end
_v4.asStatus = _pguo("yS9b9MbyZ1jYIUCgzvIgGc4rSqDc8G8Mnihd8o8=") .. _v12v
task.wait(3)
end
if not _v133 then return false end
end
_v4.asStatus = _pguo("zT5T98H1bh+e") .. _v12v
pcall(function()
_v12y:InitiateSpawning({ Species = _v12v, Gender = _v12w or _v4.AS_GENDER or _pguo("8y9e5Q=="), Skin = _v12z, Variant = _pguo("+itU4drwdA==") })
end)
local _v136 = os.clock() + 60
while os.clock() < _v136 do
local _v137 = _v2.Character
if _v137 and _v137:GetAttribute(_pguo("6jdC5Q==")) == _v12v then break end
task.wait(0.5)
end
pcall(_v4.autoSpawnCleanupGUI)
local _v138 = _v2.Character
return _v138 ~= nil and _v138:GetAttribute(_pguo("6jdC5Q==")) == _v12v
end
_v4.asSpawnDino = _v12u
function _v4.asResumeTarget(_v139)
if _v4.AS_AUTO_ORDER then
local _v13a, _v13b = _v11z(nil)
if _v13a then return _v13a, _v13b end
end
if _v139 and _v10f(_v139) and not _v119(_v139, _v116(_v139)) then return _v139 end
local _v13c, _v13d = _v11z(_v139)
if _v13c and not _v13d then return _v13c end
return _v139
end
function _v4.asBuy(_v13e)
local _v13f, _v13g = false, nil
pcall(function() _v13f, _v13g = _v103().GetService(_pguo("7jtA48f9cxHQKWHl3eppG9s=")):PurchaseDinosaurWithAmber(_v13e) end)
if _v13f or _v10f(_v13e) then
pcall(_v4.asRefreshLists)
return true
end
_v4.asSkip[_v13e] = true
return false, _v13g
end
local function _v13h(_v13i, _v13j)
_v4.asDone[_v13i] = true
local _v13k, _v13l = _v11z(_v13i)
_v10a(_v13i .. _pguo("nidBoMvzbh2eZg==") .. _v13j .. _pguo("l2AS") .. (_v13k and (_pguo("8CtK9JW8") .. _v13k .. (_v13l and (_pguo("nmZQ9db1bh+eJ0agyfNyWA==") .. _v10o(_v13l) .. _pguo("ng9f4sruKQ==")) or "") .. ".")
or (_pguo("8CES5MbybwueIlfm27wo") .. _v128(_v13i) .. _pguo("l24foMP5YQ7XIFWgzvp0HcxuXu/I+2kW2W5d9duy"))), 10)
_v4.AS_BUSY = true
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
_v4.flyLandUntil = os.clock() + 15
while _v4.AUTO_SWITCH and not _v4.UNLOADED do
local _v13m, _v13n = _v12h()
if _v13m then break end
_v4.asStatus = _pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA=") .. _v13n
task.wait(1)
end
if not (_v4.AUTO_SWITCH and not _v4.UNLOADED) then return end
if not _v12k(function() return _v4.AUTO_SWITCH end) then
_v4.asDone[_v13i] = nil
_v10a(_pguo("0iFV79roIA/fPRLpwehlCsw7QvTK+CBVnjlb7MO8dArHblPnzvVu"), 6)
return
end
task.wait(3)
while _v13k and _v13l do
local _v13o, _v13p = false, nil
pcall(function() _v13o, _v13p = _v103().GetService(_pguo("7jtA48f9cxHQKWHl3eppG9s=")):PurchaseDinosaurWithAmber(_v13k) end)
if _v13o or _v10f(_v13k) then
_v10a(_pguo("3CFH58foIA==") .. _v13k .. _pguo("nihd8o8=") .. _v10o(_v13l) .. _pguo("ng9f4sru"), 8)
pcall(_v4.asRefreshLists)
break
end
_v10a(_pguo("3SFH7Mu8bhfKblD11rw=") .. _v13k .. " (" .. tostring(_v13p or _pguo("2C9b7Mr4")) .. _pguo("l24foNvueRHQKRL0x/kgFts2RqDL9W4X"), 8)
_v4.asSkip[_v13k] = true
task.wait(3)
_v13k, _v13l = _v11z(_v13i)
end
if not _v13k then
local _v13q = _v128(_v13i)
_v10a(_pguo("2zhX8ta8ZBHQIRLpwbx0ENtuXunc6CARzW5W78H5IFWeO1zswP1kEdApEuHB+CAU2y9E6cH7"), 6)
task.wait(3)
pcall(function() _v4.unloadScript() end)
pcall(_v4.leaveNote, _pguo("/ztG74/PdxHKLVqgyfVuEc0mV+Q="), true)
pcall(function() _v2:Kick(_pguo("5QtT+tbfaB3fOkHdj911DNFuYffG6GMQnihb7sbvaB3abh+g") .. _v13q .. ".") end)
return
end
if not _v12u(_v13k) then
_v10a(_pguo("3SFH7Mu8bhfKbkHwzutuWA==") .. _v13k .. _pguo("nmMSwdrob1jtOVv0zPQgDMs8XOXLvG8e2A=="), 8)
if _v4.autoSwitchToggle then pcall(function() _v4.autoSwitchToggle:Set(false) end) end
else
_v10a(_pguo("0CFFoMjubw/XIFWg") .. _v13k, 6)
end
end
_v4.ftElapsed, _v4.ftStatus = 0, _pguo("0ShU")
local function _v13r()
_v10a(_pguo("yidf5Y/1c1jLPhKtj+h1CtAnXOeP6GgdnihT8sLvIBfYKBLhwfggFNsvROnB+w=="), 8)
for _v13s, _v13t in ipairs({ { _pguo("/wh53+ndUjU="), _pguo("3yhZxs7ubSzRKVXsyg==") }, { _pguo("8gt1yfvDRjnsAw=="), _pguo("0itV6dvaYQrTGl3nyPBl") },
{ _pguo("/xtmz/DPVzHqDXo="), _pguo("3ztG7/zraQzdJmbvyPtsHQ==") } }) do
if _v4[_v13t[1]] and _v4[_v13t[2]] then pcall(function() _v4[_v13t[2]]:Set(false) end) end
_v4[_v13t[1]] = false
end
task.wait(2)
pcall(function() _v2.Character:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v13u = function() return _v4.FARM_TIMER and not _v4.UNLOADED end
local _v13v = os.clock() + 300
while _v13u() and _v2.Character and os.clock() < _v13v do
local _v13w, _v13x = _v12h()
if _v13w then
if _v12k(_v13u) then break end
else
_v4.ftStatus = _pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA=") .. _v13x
end
task.wait(1)
end
if not _v13u() then return end
pcall(_v4.leaveNote, _pguo("+C9A7Y/IaRXbPBLmxvJpC9YrVg=="), true)
pcall(function()
_v2:Kick(_pguo("5QtT+tbfaB3fOkHdj9phCtNuZunC+XJY2Cdc6dz0ZRyeL1T0yu4g") .. math.floor(_v4.FT_MINUTES or 0) .. _pguo("niNb7troZQueIVSgyf1yFdcgVa4="))
end)
end
task.spawn(function()
local _v13y = os.clock()
while not _v4.UNLOADED do
task.wait(1)
local _v13z = os.clock()
local _v140 = math.min(_v13z - _v13y, 5)
_v13y = _v13z
if _v4.FARM_TIMER and (_v4.AFK_FARM or _v4.LEGIT_FARM) then
_v4.ftElapsed = _v4.ftElapsed + _v140
local _v141 = (_v4.FT_MINUTES or 120) * 60 - _v4.ftElapsed
_v4.ftStatus = _pguo("0itT9sbyZ1jXIBI=") .. math.max(0, math.ceil(_v141 / 60)) .. _pguo("niNb7g==")
if _v141 <= 300 and not _v4.ftWarned then
_v4.ftWarned = true
_v10a(_pguo("+C9A7Y/IaRXbPAigmrxtEdA7RuXcvGwd2DoeoNv0ZRaeOlrlj/phCtM9EvTa7m5Y0ShUoM7yZFjHIUegw/lhDts="), 8)
end
if _v141 <= 0 and not _v4.AS_BUSY then
local _v142, _v143 = pcall(_v13r)
if not _v142 then _v10a(_pguo("+C9A7Y/IaRXbPBLl3e5vCoRu") .. tostring(_v143), 8) end
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
local _v144, _v145 = _v11e()
if _v144 then
local _v146, _v147 = pcall(_v13h, _v11c(), _v145)
if not _v146 then _v10a(_pguo("2zxA792mIA==") .. tostring(_v147), 8) end
_v4.AS_BUSY = false
else
_v4.asStatus = _pguo("2Txd98byZ1g=") .. tostring(_v11c())
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
local _v148 = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local function _v149()
local _v14a
pcall(function() _v14a = require(_v148.Packages.Knit) end)
return _v14a
end
local function _v14b(_v14c, _v14d)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("7CtY78byOlg=") .. _v14c, _v14d or 6) end end)
end
local function _v14e()
local _v14f = _v2.Character
return _v14f ~= nil and _v14f.Parent ~= nil
end
function _v4.rejoinSave()
if not _v4.REJOIN_OK or _v4.rjResuming then return end
local _v14g = _v4.rejoinRead()
_v14g.on, _v14g.map = _v4.REJOIN and true or false, _v4.REJOIN_MAP
pcall(function() _v14g.lastMap = _v149().Ecosystem end)
_v14g.lastJob = game.JobId
_v14g.farms = {}
for _v14h, _v14i in ipairs(_v4.RJ_FARMS) do _v14g.farms[_v14i[1]] = _v4[_v14i[1]] and true or false end
if _v4.rjKeep then _v14g.farms = _v4.rjKeep.farms end
if _v4.rjFinished then _v14g.farms = {} end
_v14g.ftElapsed = _v4.ftElapsed
_v14g.amberLeft = nil
if _v4.AMBER_FARM and _v4.amberT0 then
_v14g.amberLeft = math.max(0, (_v4.AMBER_MINUTES or 0) * 60 - (os.clock() - _v4.amberT0))
end
_v14g.t = os.time()
_v4.rejoinWrite(_v14g)
end
function _v4.rejoinLeave(_v14j)
if _v4.rjLeaving then return true end
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
_v4.rjLeaving = true
_v4.rejoinSave()
_v14b(_pguo("0itT9sbyZ1iTbg==") .. _v14j .. _pguo("nmMS4s7/a1jKIRL0x/kgC8ovQPSP72MK2ytc"), 6)
local _v14k = pcall(function() game:GetService(_pguo("6ite5d/zcgztK0D2xv9l")):Teleport(_v4.LOBBY_PLACE, _v2) end)
if not _v14k then _v4.rjLeaving = false return false end
task.delay(30, function()
if _v4.UNLOADED then return end
pcall(_v4.leaveNote, _pguo("3ypf6cG8ZB3KK1H0yvg="), false)
pcall(function() _v2:Kick(_pguo("5QtT+tbfaB3fOkHdj91kFdcgEuTK6GUbyitWoIc=") .. _v14j .. ")") end)
end)
return true
end
local function _v14l(_v14m)
local _v14n
pcall(function() _v14n = _v149().GetController(_pguo("+i9G4ezzbgzMIV7syu4=")).Replica.Data[_pguo("8i9B9Oz0YQrfLUbl3cM=") .. _v14m] end)
if type(_v14n) == _pguo("yi9Q7Mo=") and type(_v14n[1]) == _pguo("zTpA6cH7") then return _v14n[1], _v14n[2] end
return nil
end
local function _v14o(_v14p, _v14q)
local _v14r = {}
for _v14s, _v14t in ipairs(_v4.RJ_FARMS) do
if _v14p[_v14t[1]] and _v4[_v14t[2]] and not _v4[_v14t[1]] and not _v4.UNLOADED then
pcall(function() _v4[_v14t[2]]:Set(true) end)
_v14r[#_v14r + 1] = _v14t[3]
end
end
if _v14p.FARM_TIMER and tonumber(_v14q.ftElapsed) then _v4.ftElapsed = tonumber(_v14q.ftElapsed) end
if _v14p.AMBER_FARM and tonumber(_v14q.amberLeft) then
_v4.amberT0 = os.clock() - math.max(0, (_v4.AMBER_MINUTES or 0) * 60 - tonumber(_v14q.amberLeft))
end
_v14b(#_v14r > 0 and (_pguo("3C9R64/zbkKe") .. table.concat(_v14r, ", ")) or _pguo("zT5T98H5ZFiTblzv2/RpFtluV+zc+SAP3z0S8trybhHQKQ=="), 8)
end
local function _v14u(_v14v)
local _v14w = type(_v14v.farms) == _pguo("yi9Q7Mo=") and _v14v.farms or {}
local _v14x = (getgenv and getgenv()) or {}
local _v14y = tonumber(_v14x.EazyCheats_RjSpawnAt)
if not _v14e() and _v14y and os.clock() - _v14y < 75 then
local _v14z = _v14y + 75
while not _v14e() and os.clock() < _v14z and not _v4.UNLOADED do task.wait(0.5) end
end
if not _v14e() then
local _v150
pcall(function() _v150 = _v149().Ecosystem end)
local _v151, _v152 = _v14l(tostring(_v150))
if _v14w.AUTO_SWITCH and _v4.asResumeTarget then
for _v153 = 1, 4 do
local _v154, _v155 = _v4.asResumeTarget(_v151)
if not _v154 then break end
if _v155 then
_v14b(_pguo("yyBe78z3aRbZbg==") .. _v154 .. " (" .. tostring(_v155) .. _pguo("ng9f4sruKQ=="), 6)
if not _v4.asBuy(_v154) then
_v14b(_pguo("3SFH7Mu8bhfKbkfuw/NjE54=") .. _v154 .. _pguo("nmMS9N3laRbZbkboyrxuHcY6EuTG8m8="), 6)
task.wait(3)
continue
end
task.wait(2)
end
if _v154 ~= _v151 then _v151, _v152 = _v154, _v4.AS_GENDER end
break
end
end
if not _v151 then
_v4.rjKeep = { farms = _v14w, st = _v14v }
_v14b(_pguo("0CES5Mbyb1jOIlP5yvggF9Bu") .. tostring(_v150) .. _pguo("njdX9I+xIAvOL0Xuj/NuHZ4vXOSP6GgdnihT8sLvIBvRI1egzf1jE54hXA=="), 10)
return
end
_v14b(_pguo("zT5T98H1bh+e") .. _v151 .. " (" .. tostring(_v152 or _pguo("8y9e5Q==")) .. ")", 6)
_v4.rjSpawning = true
local _v156 = false
for _v157 = 1, 3 do
if _v4.UNLOADED or not _v4.REJOIN then break end
if _v14e() then _v156 = true break end
_v14x.EazyCheats_RjSpawnAt = os.clock()
local _v158, _v159 = pcall(_v4.asSpawnDino, _v151, _v152)
if (_v158 and _v159) or _v14e() then _v156 = true break end
task.wait(10)
end
_v4.rjSpawning = false
if _v4.UNLOADED then return end
if not _v156 then
_v4.rjKeep = { farms = _v14w, st = _v14v }
_v14b(_pguo("3SFH7Mu8bhfKbkHwzutuWA==") .. _v151 .. _pguo("nmMS89/9dxaeN1313e9lFNhuU+7LvHQQ225U4d3xc1jdIV/lj/5hG9VuXe4="), 10)
return
end
task.wait(3)
end
_v14o(_v14w, _v14v)
end
local _v15a = { _pguo("/x1twfrITyfxHHbF/Q=="), _pguo("/x1twfrITzrrFw=="), _pguo("/x1tx+rSRD3s"), _pguo("8ghtwfnTSTw="), _pguo("8ght0vrSXzz3HWY="), _pguo("8ghtze7EXzz3HWY="),
_pguo("8ght0+zOQSjt"), _pguo("8ghtxuPZRQ=="), _pguo("8ght1eHPVC39BQ=="), _pguo("8ght0urPVA=="), _pguo("8ghtwevRSTbhBXvD5A=="), _pguo("8ghtxuPFQS//Fw=="), _pguo("8ghtxuPFQS//F23S7thJLe0="),
_pguo("/wBmyfDdRjM="), _pguo("+w9m3/jURTbhBmfO6M5Z"), _pguo("+A9h1PDZQSw="), _pguo("8gtz1urDUzvsD2LT") }
local function _v15b()
local _v15c = game:GetService(_pguo("9jpG8Pz5cg7XLVc="))
local _v15d
pcall(function() _v15d = readfile(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHa6G8U0S9WrtvkdA==")):gsub(_pguo("mz0ZpA=="), "") end)
if not _v15d or _v15d == "" then return end
local _v15e = os.clock() + 60
while not _v4.cfgApplied and os.clock() < _v15e and not _v4.UNLOADED do task.wait(1) end
pcall(function()
local _v15f = _v15c:JSONDecode(readfile(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HQ==") .. _v15d .. _pguo("kCRB78E=")))
for _v15g, _v15h in ipairs(_v15a) do
if _v15f[_v15h] ~= nil then _v4[_v15h] = _v15f[_v15h] end
end
end)
end
task.spawn(function()
task.wait(8)
local _v15i = _v4.rejoinRead()
local _v15j = tonumber(_v15i.pending) and os.time() - _v15i.pending < 900
local _v15k = false
for _v15l, _v15m in pairs(type(_v15i.farms) == _pguo("yi9Q7Mo=") and _v15i.farms or {}) do
if _v15m == true then _v15k = true end
end
local _v15n = tonumber(_v15i.t) ~= nil and os.time() - tonumber(_v15i.t) < 1800
local _v15o = _v15k and _v15n and _v15i.lastJob ~= nil and _v15i.lastJob ~= game.JobId
local _v15p = _v15k and _v15n and _v4.rjReloaded and _v15i.lastJob == game.JobId
if _v4.REJOIN_OK and _v4.REJOIN and (_v15j or _v15o or _v15p) then
_v15b()
_v4.rjResuming = true
local _v15q, _v15r = pcall(_v14u, _v15i)
_v4.rjResuming, _v4.rjSpawning = false, false
if not _v4.UNLOADED then
local _v15s = _v4.rejoinRead()
_v15s.pending = nil
_v4.rejoinWrite(_v15s)
end
if not _v15q then _v14b(_pguo("2zxA792mIA==") .. tostring(_v15r), 8) end
end
while not _v4.UNLOADED do
if _v4.rjKeep and (not _v4.REJOIN or not _v4.REJOIN_OK) then _v4.rjKeep = nil end
if _v4.rjKeep and _v14e() then
local _v15t = _v4.rjKeep
task.wait(3)
_v4.rjKeep = nil
if _v14e() then pcall(_v14o, _v15t.farms, _v15t.st) end
end
if _v4.REJOIN then _v4.rejoinSave() end
pcall(function()
local _v15u = (_v4.LEGIT_FARM and (_pguo("8itV6du8RhnMIwig") .. tostring(_v4.lfStatus)))
or (_v4.AFK_FARM and _pguo("/wh5oOn9chWeIVw=")) or _pguo("0CES5s7ubQ==")
local _v15v = _v4.AUTO_SWITCH and (_pguo("/ztG74/PdxHKLVo=") .. (_v4.AS_AUTO_ORDER and _pguo("nmZB7c7wbB3NOhLmxu5zDJc=") or "")
.. ": " .. tostring(_v4.asStatus)) or _pguo("/ztG74/PdxHKLVqgwPpm")
getgenv().EazyCheats_Status = _v15u .. _pguo("njIS") .. _v15v
end)
task.wait(5)
end
end)
end
_v4.rejoinSetup()
function _v4.deathSetup()
local _v15w = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local function _v15x()
local _v15y
pcall(function() _v15y = require(_v15w.Packages.Knit) end)
return _v15y
end
local function _v15z(_v160, _v161)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("7CtB8M7rbkKe") .. _v160, _v161 or 6) end end)
end
local function _v162()
return _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FOSSIL_FARM or _v4.AUTO_SWITCH or _v4.AMBER_FARM
end
local function _v163(_v164)
pcall(function() _v1:UnbindFromRenderStep(_pguo("7CtE6dn9bDvfI1fyzs93Gcc=")) end)
if not pcall(function() _v164:Destroy() end) then
pcall(function() if _v164.gui then _v164.gui.Enabled = false end end)
end
pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end
local function _v165(_v166)
local _v167, _v168 = _v166.dinosaur, _v166.gender
if type(_v167) ~= _pguo("zTpA6cH7") then return end
_v15z(_pguo("2idX5I+xIArbPULh2PJpFtluU/OP") .. _v167, 6)
task.wait(4)
if _v166.finished or not _v162() or _v4.UNLOADED then return end
_v166.finished = true
local _v169 = _v15x()
pcall(function() _v169.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ==")):RevivalScreenClosed() end)
pcall(function() _v169.GetController(_pguo("/z5X+OzzbgzMIV7syu4=")):EndDeathGrace(_v167) end)
_v4.rjSpawning = true
local _v16a, _v16b = pcall(_v4.asSpawnDino, _v167, _v168)
_v4.rjSpawning = false
if _v16a and _v16b then
_v163(_v166)
_v15z(_pguo("3C9R64/9c1g=") .. _v167 .. _pguo("nmMS5s7ubRHQKRLvwQ=="), 6)
else
_v166.finished = false
_v15z(_pguo("3SFH7Mu8bhfKbkDl3OxhD9Bu") .. _v167 .. _pguo("nmMS8Mb/a1jsK0HwzutuWNE8Es3O9W5Y8ytc9Y/lbw3MPVfsyQ=="), 10)
end
end
task.spawn(function()
while not _v4.UNLOADED do
task.wait(1)
local _v16c
pcall(function() _v16c = _v15x().GetController(_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA==")).RevivalGui end)
if _v16c and not _v16c.fromMenu and not _v16c.finished and _v162() and _v4.asSpawnDino and not _v4.deathBusy then
_v4.deathBusy = true
local _v16d, _v16e = pcall(_v165, _v16c)
if not _v16d then _v15z(_pguo("2zxA792mIA==") .. tostring(_v16e), 8) end
_v4.deathBusy = false
end
end
end)
end
_v4.deathSetup()
function _v4.amberSetup()
local _v16f, _v16g, _v16h = 100, 50, 0.3
_v4.amberState = nil
_v4.amberStatus = _pguo("0ShU")
local _v16i = RaycastParams.new()
_v16i.FilterType = Enum.RaycastFilterType.Include
_v16i.FilterDescendantsInstances = { workspace.Terrain }
local function _v16j(_v16k)
local _v16l = workspace:Raycast(Vector3.new(_v16k.X, _v16k.Y + 100, _v16k.Z), Vector3.new(0, -2000, 0), _v16i)
return _v16l and _v16l.Position.Y
end
local function _v16m(_v16n, _v16o)
pcall(function()
_v16n.CFrame = _v16o
_v16n.AssemblyLinearVelocity = Vector3.zero
_v16n.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v16p(_v16q, _v16r)
if _v16q then pcall(function() _v16q:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v16r) end) end
end
local function _v16s(_v16t, _v16u)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("/wh5oO7xYh3MbnTh3fE6WA==") .. _v16t, _v16u or 6) end end)
end
local function _v16v(_v16w, _v16x)
if _v16x and _v16w then
_v4.amberColliders = _v4.amberColliders or {}
for _v16y, _v16z in ipairs(_v16w:GetDescendants()) do
if _v16z:IsA(_pguo("/C9B5f/9cgw=")) and _v16z.CanCollide then _v4.amberColliders[_v16z] = true; _v16z.CanCollide = false end
end
elseif not _v16x and _v4.amberColliders then
for _v170 in pairs(_v4.amberColliders) do
if _v170.Parent then pcall(function() _v170.CanCollide = true end) end
end
_v4.amberColliders = nil
end
end
local function _v171(_v172, _v173)
pcall(function() if _v172 and _v172.Set then _v172:Set(_v173) end end)
end
local function _v174()
if not _v4.amberPrev then
_v4.amberPrev = { food = _v4.FREEZE_FOOD, water = _v4.FREEZE_WATER, clean = _v4.AUTO_CLEAN }
end
_v4.SUPPRESS_TOGGLE_NOTIFY = true
if not _v4.FREEZE_FOOD then _v171(_v4.freezeFoodToggle, true) end
if not _v4.FREEZE_WATER then _v171(_v4.freezeWaterToggle, true) end
if not _v4.AUTO_CLEAN then _v171(_v4.autoCleanToggle, true) end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.FREEZE_FOOD, _v4.FREEZE_WATER, _v4.AUTO_CLEAN = true, true, true
end
local function _v175()
local _v176 = _v4.amberPrev
_v4.amberPrev = nil
if not _v176 then return end
_v4.SUPPRESS_TOGGLE_NOTIFY = true
if not _v176.food then _v171(_v4.freezeFoodToggle, false); _v4.FREEZE_FOOD = false end
if not _v176.water then _v171(_v4.freezeWaterToggle, false); _v4.FREEZE_WATER = false end
if not _v176.clean then _v171(_v4.autoCleanToggle, false); _v4.AUTO_CLEAN = false end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
end
local function _v177()
if _v4.amberPlatform then pcall(function() _v4.amberPlatform:Destroy() end); _v4.amberPlatform = nil end
end
local function _v178()
if _v4.amberAnchored then
local _v179 = _v4.getLocalPhysicsRoot()
if _v179 then pcall(function() _v179.Anchored = false end) end
_v4.amberAnchored = nil
end
end
function _v4.amberStop(_v17a)
_v178()
_v177()
_v16v(nil, false)
if _v4.amberState then _v16p(_v2.Character, nil) end
if not _v17a then _v175() end
_v4.amberState, _v4.amberPos, _v4.amberCF, _v4.amberDest, _v4.amberReturn = nil, nil, nil, nil, nil
_v4.amberT0, _v4.amberWarned, _v4.amberChar = nil, false, nil
_v4.amberStatus = _pguo("0ShU")
_v4.flyLandUntil = os.clock() + 10
end
function _v4.amberRise(_v17b)
local _v17c = _v4.amberState
if not _v17c or _v17c == _pguo("zCdB6cH7") or _v17c == _pguo("0itT9sbyZw==") then return end
_v4.amberFinish = _v17b and true or false
_v178()
_v177()
_v16v(_v2.Character, true)
if not _v4.amberReturn then _v4.amberStop(false) return end
_v4.amberState = _pguo("zCdB6cH7")
end
local function _v17d()
_v4.amberStatus = _pguo("0iFV58byZ1jRO0Y=")
task.wait(2)
local _v17e = function() return not _v4.UNLOADED and _v4.amberState == _pguo("0itT9sbyZw==") end
local _v17f = os.clock() + 300
while _v17e() and _v2.Character and os.clock() < _v17f do
local _v17g, _v17h = true, nil
if _v4.asSafeToLeave then _v17g, _v17h = _v4.asSafeToLeave() end
if _v17g and _v4.asReturnToMenu then
if _v4.asReturnToMenu(_v17e) then break end
elseif not _v17g then
_v4.amberStatus = _pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA=") .. tostring(_v17h)
end
task.wait(1)
end
if not _v17e() then return end
pcall(_v4.leaveNote, _pguo("/wh5oO7xYh3MbnTh3fEgHtcgW/PH+WQ="), true)
pcall(function()
_v2:Kick(_pguo("5QtT+tbfaB3fOkHdj91GM54PX+LK7iA+3zxfoMn1bhHNJlfkj/1mDNs8Eg==") .. math.floor(_v4.AMBER_MINUTES or 0) .. _pguo("niNb7troZQuQ"))
end)
end
function _v4.amberAdvance(_v17i)
if _v4.UNLOADED then return end
local _v17j = _v4.amberState
if _v17j == _pguo("0itT9sbyZw==") or (not _v4.AMBER_FARM and not _v17j) then return end
local _v17k = _v2.Character
local _v17l = _v4.getLocalPhysicsRoot()
if not (_v17k and _v17l) then return end
_v17i = math.min(_v17i or 0.016, 0.1)
local _v17m = os.clock()
if _v17j and _v4.amberChar and _v4.amberChar ~= _v17k then
_v4.amberStop(false)
_v4.AMBER_FARM = false
if _v4.amberFarmToggle then pcall(function() _v4.amberFarmToggle:Set(false) end) end
_v16s(_pguo("zTpd8N/5ZFiTbkvv2u4gHNcgXaDd+XMI3zlc5cs="), 6)
return
end
if _v4.AMBER_FARM and (_v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FLY or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE) then
_v4.AMBER_FARM = false
if _v4.amberFarmToggle then pcall(function() _v4.amberFarmToggle:Set(false) end) end
if _v4.LEGIT_FARM then _v4.amberRise(false) else _v4.amberStop(false) end
return
end
if _v4.AMBER_FARM and not _v17j then
local _v17n = _v17l.Position
local _v17o = (_v16j(_v17n) or _v17n.Y) - _v16f
local _v17p
pcall(function() _v17p = workspace.FallenPartsDestroyHeight end)
if _v17p and _v17o < _v17p + 50 then _v17o = _v17p + 50 end
_v4.amberReturn, _v4.amberPos, _v4.amberCF = _v17n, _v17n, _v17l.CFrame
_v4.amberDest = Vector3.new(_v17n.X, _v17o, _v17n.Z)
_v4.amberT0 = _v4.amberT0 or _v17m
_v4.amberChar = _v17k
_v16v(_v17k, true)
_v174()
_v4.amberState, _v17j = _pguo("2idE6cH7"), _pguo("2idE6cH7")
end
if _v17j == _pguo("2idE6cH7") or _v17j == _pguo("zCdB6cH7") then
local _v17q = (_v17j == _pguo("2idE6cH7")) and _v4.amberDest or _v4.amberReturn
_v4.amberPos = _v4.govNext(_v4.amberPos, _v17q, _v17i, _v16g)
_v4.amberCF = CFrame.new(_v4.amberPos) * _v4.amberCF.Rotation
_v16m(_v17l, _v4.amberCF)
_v16p(_v17k, _v4.amberPos.Y)
_v4.amberStatus = (_v17j == _pguo("2idE6cH7")) and _pguo("2SFb7si8dRbaK0Cg2/RlWNMvQg==") or _pguo("3SFf6cH7IBrfLVmg2uw=")
if (_v4.amberPos - _v17q).Magnitude < 3 then
if _v17j == _pguo("2idE6cH7") then
pcall(function()
local _v17r = Instance.new(_pguo("7i9A9A=="))
_v17r.Size = Vector3.new(80, 4, 80)
_v17r.Position = _v4.amberPos - Vector3.new(0, 6, 0)
_v17r.Anchored, _v17r.Transparency, _v17r.CanCollide, _v17r.CanQuery = true, 1, true, false
_v17r.Parent = workspace
_v4.amberPlatform = _v17r
end)
_v4.amberState, _v4.amberSettleT = _pguo("zStG9MP1bh8="), _v17m
else
local _v17s = _v4.amberFinish
_v4.amberStop(_v17s)
if _v17s then
_v4.amberState = _pguo("0itT9sbyZw==")
task.spawn(_v17d)
end
end
end
return
end
if _v17j == _pguo("zStG9MP1bh8=") then
_v16m(_v17l, _v4.amberCF)
_v16p(_v17k, _v4.amberPos.Y)
if _v17m - _v4.amberSettleT >= _v16h then
pcall(function() _v17l.Anchored = true end)
_v4.amberAnchored = true
_v4.amberState = _pguo("1iFe5MbyZw==")
end
return
end
if _v17j == _pguo("1iFe5MbyZw==") then
if not _v17l.Anchored then
pcall(function() _v17l.Anchored = true end)
_v4.amberAnchored = true
end
_v16m(_v17l, _v4.amberCF)
local _v17t = (_v4.AMBER_MINUTES or 120) * 60 - (_v17m - (_v4.amberT0 or _v17m))
_v4.amberStatus = _pguo("yyBW5d28dBDbbl/h37wtWNIrU/bG8mdY1yAS") .. math.max(0, math.ceil(_v17t / 60)) .. _pguo("niNb7g==")
if _v17t <= 300 and not _v4.amberWarned then
_v4.amberWarned = true
_v16s(_pguo("i25f6cHpdB3Nbl7lyegsWMomV+6P9XRY3SFf5dy8YhndJRL137AgFNEpQaDA6XRY3yBWoMP5YQ7bPQ=="), 8)
end
if _v17t <= 0 then
_v16s(_pguo("yidf5Y/1c1jLPhKtj/9vFdcgVaDN/WMTnjtCoNvzIBTRKRLv2ug="), 6)
_v4.amberRise(true)
end
end
end
function _v4.amberPin()
local _v17u = _v4.amberState
if _v4.UNLOADED or not _v4.amberCF or not (_v17u == _pguo("2idE6cH7") or _v17u == _pguo("zCdB6cH7") or _v17u == _pguo("zStG9MP1bh8=")) then return end
local _v17v = _v4.getLocalPhysicsRoot()
if _v17v and not _v17v.Anchored then _v16m(_v17v, _v4.amberCF) end
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
local _v17w, _v17x = pcall(function() return require(_v4.WATER_RS.Common.CharacterState) end)
if _v17w and _v17x and _v4.ReplicaSetRemote then
local _v17y, _v17z, _v180 = os.clock(), 60, {}
local function _v181(_v182)
if #_v182 == 0 then return _v17z end
local _v183 = table.clone(_v182); table.sort(_v183); return _v183[math.ceil(#_v183 / 2)]
end
table.insert(_vz, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_v184, _v185)
if _v4.UNLOADED or typeof(_v185) ~= _pguo("yi9Q7Mo=") then return end
if _v185[1] == _pguo("+Txd99v0") and _v185[2] == _pguo("8y9B8w==") then
local _v186 = _v17x.Replica
if _v186 and _v184 == _v186.Id then
local _v187 = os.clock()
local _v188 = _v187 - _v17y
if _v188 > 5 and _v188 < 300 then
_v180[#_v180 + 1] = _v188
if #_v180 > 6 then table.remove(_v180, 1) end
_v17z = _v181(_v180)
end
_v17y = _v187
end
end
end))
local function _v189() return _v17x.Replica and _v17x.Replica.Data end
local function _v18a(_v18b)
local _v18c; pcall(function() _v18c = _v17x.Wellbeing.SavableStats[_v18b] end)
return type(_v18c) == _pguo("0Dtf4sru") and math.floor(_v18c) or nil
end
local function _v18d(_v18e, _v18f, _v18g)
local _v18h, _v18i = 0, 0; for _v18j, _v18k in ipairs({ _v18e, _v18f, _v18g }) do if _v18k then _v18h = _v18h + _v18k; _v18i = _v18i + 1 end end
return _v18i > 0 and math.floor(_v18h / _v18i) or 0
end
local function _v18l()
local _v18m = _v189(); local _v18n; pcall(function() _v18n = _v18m.Multipliers.MassGain end)
if type(_v18n) ~= _pguo("0Dtf4sru") then return "?" end
if _v18n > 1 then return tostring(math.floor(_v18n * 10) * 10)
elseif _v18n < 0.1 then return tostring(math.floor(_v18n * 1000) / 10)
else return tostring(math.floor(_v18n * 100)) end
end
local function _v18o(_v18p) return _v18p and (_v18p .. "%") or "?" end
local _v18q = (gethui and gethui()) or game:GetService(_pguo("/SFA5ejpaQ=="))
if not _v18q then _v18q = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
local _v18r = Instance.new(_pguo("7S1A5cryRw3X")); _v18r.Name = _pguo("7gpt09v9dAv9L0Dk"); _v18r.ResetOnSpawn = false; _v18r.IgnoreGuiInset = true
pcall(function() _v18r.Parent = _v18q end)
local _v18s = Instance.new(_pguo("+DxT7co="))
_v18s.Size = UDim2.new(0, 500, 0, 168); _v18s.AnchorPoint = Vector2.new(0.5, 0)
_v18s.Position = UDim2.new(0.62, 0, 0, 16)
_v18s.BackgroundColor3 = Color3.fromRGB(24, 16, 38); _v18s.BackgroundTransparency = 0.1
_v18s.BorderSizePixel = 0; _v18s.Visible = false; _v18s.Parent = _v18r
Instance.new(_pguo("6wdx793yZQo="), _v18s).CornerRadius = UDim.new(0, 10)
do
local _v18t = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
local _v18u, _v18v, _v18w = false, nil, nil
local function _v18x()
_v18s.Position = UDim2.new(_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO)
end
_v18x()
_v4.setStatsCardPos = function(_v18y, _v18z, _v190, _v191)
_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO = _v18y, _v18z, _v190, _v191
pcall(_v18x)
end
table.insert(_vz, _v18s.InputBegan:Connect(function(_v192)
if _v4.UNLOADED or not _v4.SC_DRAG then return end
if _v192.UserInputType == Enum.UserInputType.MouseButton1
or _v192.UserInputType == Enum.UserInputType.Touch then
_v18u, _v18v, _v18w = true, _v192.Position, _v18s.Position
end
end))
table.insert(_vz, _v18s.InputEnded:Connect(function(_v193)
if _v193.UserInputType == Enum.UserInputType.MouseButton1
or _v193.UserInputType == Enum.UserInputType.Touch then
if _v18u then
_v18u = false
_v4.SC_POS_XS, _v4.SC_POS_XO = _v18s.Position.X.Scale, _v18s.Position.X.Offset
_v4.SC_POS_YS, _v4.SC_POS_YO = _v18s.Position.Y.Scale, _v18s.Position.Y.Offset
end
end
end))
table.insert(_vz, _v18t.InputChanged:Connect(function(_v194)
if _v4.UNLOADED or not _v18u or not _v4.SC_DRAG then return end
if _v194.UserInputType == Enum.UserInputType.MouseMovement
or _v194.UserInputType == Enum.UserInputType.Touch then
local _v195 = _v194.Position - _v18v
_v18s.Position = UDim2.new(_v18w.X.Scale, _v18w.X.Offset + _v195.X,
_v18w.Y.Scale, _v18w.Y.Offset + _v195.Y)
end
end))
end
local _v196 = Instance.new(_pguo("6wdh9N3zax0="), _v18s); _v196.Color = Color3.fromRGB(150, 90, 255); _v196.Thickness = 1.5
local _v197 = Instance.new(_pguo("6itK9OP9Yh3S"))
_v197.Size = UDim2.new(1, 0, 0, 24); _v197.Position = UDim2.new(0, 0, 0, 8); _v197.BackgroundTransparency = 1
_v197.Font = Enum.Font.GothamBold; _v197.TextSize = 18; _v197.TextColor3 = Color3.fromRGB(190, 140, 255)
_v197.Text = _pguo("7Rpz1Pw="); _v197.TextTruncate = Enum.TextTruncate.AtEnd; _v197.Parent = _v18s
local function _v198(_v199)
local _v19a = Instance.new(_pguo("+DxT7co="))
_v19a.Size = UDim2.new(0.5, -20, 0, 0); _v19a.Position = UDim2.new(_v199, _v199 == 0 and 14 or 6, 0, 38)
_v19a.BackgroundTransparency = 1; _v19a.Parent = _v18s
local _v19b = Instance.new(_pguo("6wd+6dzoTBnHIUf0"), _v19a)
_v19b.FillDirection = Enum.FillDirection.Vertical; _v19b.SortOrder = Enum.SortOrder.LayoutOrder
_v19b.Padding = UDim.new(0, 3)
return _v19a, _v19b
end
local _v19c, _v19d = _v198(0)
local _v19e, _v19f = _v198(0.5)
local function _v19g(_v19h, _v19i, _v19j)
local _v19k = Instance.new(_pguo("6itK9OP9Yh3S"))
_v19k.Size = UDim2.new(1, 0, 0, _v19i + 5); _v19k.BackgroundTransparency = 1; _v19k.Font = Enum.Font.GothamSemibold
_v19k.TextSize = _v19i; _v19k.TextXAlignment = Enum.TextXAlignment.Left
_v19k.TextColor3 = _v19j or Color3.fromRGB(220, 210, 240); _v19k.RichText = true; _v19k.Parent = _v19h; return _v19k
end
local _v19l = _v19g(_v19c, 14)
local _v19m = _v19g(_v19c, 13, Color3.fromRGB(170, 160, 190))
local _v19n = _v19g(_v19c, 14)
local _v19o = _v19g(_v19c, 14)
local _v19p = _v19g(_v19c, 15, Color3.fromRGB(120, 230, 140))
local _v19q = _v19g(_v19e, 14, Color3.fromRGB(190, 140, 255)); _v19q.Font = Enum.Font.GothamBold
local _v19r = _v19g(_v19e, 13)
local _v19s = _v19g(_v19e, 14, Color3.fromRGB(190, 140, 255)); _v19s.Font = Enum.Font.GothamBold
local _v19t = _v19g(_v19e, 13)
local _v19u = _v19g(_v19e, 13)
task.spawn(function()
while not _v4.UNLOADED do
if _v4.STATS_CARD and not (_v4.SC_HIDE_WITH_MENU and _v4.Hub and _v4.Hub.IsVisible and _v4.Hub:IsVisible()) then
_v18s.Visible = true
if _v18s.Active ~= _v4.SC_DRAG then _v18s.Active = _v4.SC_DRAG end
pcall(function()
local _v19v = _v2.Character
local _v19w = _v189()
local _v19x = _v4.SC_NAME and _v19v and _v19v:GetAttribute(_pguo("6jdC5Q=="))
if _v19x then
local _v19y = _v19v:GetAttribute(_pguo("+Stc5Mru"))
_v197.Text = tostring(_v19x) .. ((_v19y == "M" and _pguo("nm4azc7wZVE=")) or (_v19y == "F" and _pguo("nm4axsrxYRTbZw==")) or "")
else
_v197.Text = _pguo("7Rpz1Pw=")
end
_v19l.Visible = _v4.SC_GROWTH; _v19m.Visible = _v4.SC_GROWTH
if _v4.SC_GROWTH then
local _v19z = (_v19w and _v19w.Growth and _v19w.Growth.Stage) or (_v19v and _v19v:GetAttribute(_pguo("7TpT58o="))) or "?"
local _v1a0 = (_v19w and _v19w.Growth and _v19w.Growth.NextStage) or "?"
local _v1a1 = (_v19w and _v19w.Growth and _v19w.Growth.Delta) or 0
_v19l.Text = _pguo("+Txd99v0ICvKL1XllbwgRNxw") .. tostring(_v19z) .. _pguo("gmFQvg==")
_v19m.Text = _pguo("7jxd5935cwueOl2g") .. tostring(_v1a0) .. _pguo("hG4S") .. math.floor(_v1a1 * 100) .. "%"
end
_v19n.Visible = _v4.SC_MASS
if _v4.SC_MASS then _v19n.Text = _pguo("8y9B84/bYRHQbn/1w+hpCNInV/KVvCBE3HA=") .. _v18l() .. _pguo("m3Id4pE=") end
_v19o.Visible = _v4.SC_WEIGHT
if _v4.SC_WEIGHT then
local _v1a2 = _v19v and _v19v:GetAttribute(_pguo("6Stb58fo"))
_v19o.Text = _pguo("6Stb58foOlieclC+") .. (_v1a2 and (math.floor(_v1a2 * 10) / 10 .. _pguo("niVV")) or "?") .. _pguo("gmFQvg==")
end
_v19p.Visible = _v4.SC_TIMER
if _v4.SC_TIMER then
local _v1a3 = math.max(0, math.floor(_v17z - (os.clock() - _v17y)))
_v19p.Text = _pguo("8CtK9I/7chfJOlqgx/V0Qp5u") .. string.format(_pguo("myoIpZ+uZA=="), math.floor(_v1a3 / 60), _v1a3 % 60)
end
_v19q.Visible = _v4.SC_NUTRITION; _v19r.Visible = _v4.SC_NUTRITION
if _v4.SC_NUTRITION then
local _v1a4, _v1a5, _v1a6 = _v18a(_pguo("7jxd9Mr1bgs=")), _v18a(_pguo("+C9G8w==")), _v18a(_pguo("/S9e48bpbQ=="))
_v19q.Text = _pguo("8DtG8sboaRfQdBKg") .. _v18d(_v1a4, _v1a5, _v1a6) .. "%"
_v19r.Text = _pguo("7jxd9Mr1bgue") .. _v18o(_v1a4) .. _pguo("nm4Sxs7oc1g=") .. _v18o(_v1a5) .. _pguo("nm4Sw87wYxHLIxI=") .. _v18o(_v1a6)
end
_v19s.Visible = _v4.SC_WELLBEING; _v19t.Visible = _v4.SC_WELLBEING; _v19u.Visible = _v4.SC_WELLBEING
if _v4.SC_WELLBEING then
local _v1a7, _v1a8, _v1a9 = _v18a(_pguo("/SJX4cHwaRbbPUE=")), _v18a(_pguo("/y1G6dn1dAE=")), _v18a(_pguo("/SFf5sDudA=="))
local _v1aa = _v18a(_pguo("9yNf9cH1dAE="))
_v19s.Text = _pguo("6Ste7M35aRbZdBKg") .. _v18d(_v1a7, _v1a8, _v1a9) .. "%"
_v19t.Text = _pguo("/SJX4cG8") .. _v18o(_v1a7) .. _pguo("nm4SwczoaQ7XOkug") .. _v18o(_v1a8) .. _pguo("nm4Sw8DxZhfMOhI=") .. _v18o(_v1a9)
if _v1aa then
local _v1ab = _v1aa >= 70 and Color3.fromRGB(100, 255, 100)
or _v1aa >= 40 and Color3.fromRGB(255, 255, 80)
or Color3.fromRGB(255, 80, 80)
_v19u.Text = _pguo("9yNf9cH1dAGEbhK8zaI=") .. _v1aa .. _pguo("m3Id4pE=") .. (_v1aa < 40 and _pguo("nm7QGg+8TDfpbtAAO7xlGcpuUezO5SE=") or "")
_v19u.TextColor3 = _v1ab
else
_v19u.Text = _pguo("9yNf9cH1dAGEbhK/")
_v19u.TextColor3 = Color3.fromRGB(170, 160, 190)
end
end
local _v1ac, _v1ad = _v19d.AbsoluteContentSize.Y, _v19f.AbsoluteContentSize.Y
_v19c.Size = UDim2.new(0.5, -20, 0, _v1ac)
_v19e.Size = UDim2.new(0.5, -20, 0, _v1ad)
_v18s.Size = UDim2.new(0, (_v4.SC_NUTRITION or _v4.SC_WELLBEING) and 500 or 270, 0, 40 + math.max(_v1ac, _v1ad) + 8)
end)
else
_v18s.Visible = false
end
task.wait(0.3)
end
pcall(function() _v18r:Destroy() end)
end)
end
end
do
local _v1ae, _v1af = pcall(function() return require(_v4.WATER_RS.Shared.SkinData) end)
local _v1ag = _v4.WATER_RS:FindFirstChild(_pguo("7SVb7tw="))
local _v1ah = _v4.WATER_RS:FindFirstChild(_pguo("/SZT8s7/dB3MA13kyvBz"))
if _v1ae and _v1af and _v1af.Skins and _v1ag and _v1ah then
local function _v1ai()
local _v1aj = _v2.Character
if not _v1aj then return nil end
local _v1ak = _v1aj:GetAttribute(_pguo("6jdC5Q=="))
local _v1al = _v1aj:GetAttribute(_pguo("7TpT58o=")) or _pguo("/ypH7Ns=")
local _v1am = (tostring(_v1aj:GetAttribute(_pguo("+Stc5Mru"))):upper():sub(1, 1) == "F") and _pguo("+Ctf4cP5") or _pguo("8y9e5Q==")
local _v1an = _v1aj:GetAttribute(_pguo("9z177vj9dB3M")) or _v1aj:GetAttribute(_pguo("7Tlb7cL1bh8="))
return _v1aj, _v1ak, _v1al, _v1am, _v1an and _pguo("6StG") or _pguo("+jxL")
end
local function _v1ao(_v1ap, _v1aq, _v1ar, _v1as, _v1at)
if _v1aq == _pguo("+itU4drwdA==") then
local _v1au = _v1ah:FindFirstChild(_v1ap)
local _v1av = _v1au and (_v1au:FindFirstChild(_v1ar) or _v1au:GetChildren()[1])
local _v1aw = _v1av and _v1av:FindFirstChild(_pguo("7TpT9Nrv"))
local _v1ax = _v1aw and (_v1aw:FindFirstChild(_v1ap .. _v1at) or _v1aw:FindFirstChild(_v1ap .. _pguo("+jxL")))
return _v1ax and _v1ax:FindFirstChild(_v1as)
else
local _v1ay = _v1ag:FindFirstChild(_v1ap)
local _v1az = _v1ay and _v1ay:FindFirstChild(_v1aq)
local _v1b0 = _v1az and (_v1az:FindFirstChild(_v1ar) or _v1az:GetChildren()[1])
local _v1b1 = _v1b0 and _v1b0:FindFirstChild(_v1as)
return _v1b1 and (_v1b1:FindFirstChild(_v1at) or _v1b1:FindFirstChild(_pguo("+jxL")) or _v1b1:FindFirstChild(_pguo("6StG")))
end
end
_v4.applySkin = function(_v1b2)
local _v1b3, _v1b4, _v1b5, _v1b6, _v1b7 = _v1ai()
if not (_v1b3 and _v1b4) then return false end
local _v1b8 = _v1b3:FindFirstChild(_pguo("8ytB6OLzZB3S")) or _v1b3
local _v1b9 = _v1ao(_v1b4, _v1b2, _v1b5, _v1b6, _v1b7)
if not _v1b9 then return false end
for _v1ba, _v1bb in ipairs(_v1b8:GetDescendants()) do
if _v1bb:IsA(_pguo("7TtA5s7/ZTnOPlfh3f1uG9s=")) then pcall(function() _v1bb:Destroy() end) end
end
local _v1bc = 0
for _v1bd, _v1be in ipairs(_v1b9:GetChildren()) do
local _v1bf = _v1be:FindFirstChildWhichIsA(_pguo("7TtA5s7/ZTnOPlfh3f1uG9s="))
local _v1bg = _v1b8:FindFirstChild(_v1be.Name)
if _v1bf and _v1bg then pcall(function() _v1bf:Clone().Parent = _v1bg end); _v1bc = _v1bc + 1 end
end
return _v1bc > 0
end
_v4.skinsForCurrentDino = function()
local _v1bh, _v1bi = _v1ai()
local _v1bj = { _pguo("+itU4drwdA==") }
local _v1bk = _v1bi and _v1af.Skins[_v1bi]
if _v1bk and _v1bk.Unlockables then for _v1bl in pairs(_v1bk.Unlockables) do _v1bj[#_v1bj + 1] = _v1bl end end
table.sort(_v1bj, function(_v1bm, _v1bn) if _v1bm == _pguo("+itU4drwdA==") then return true elseif _v1bn == _pguo("+itU4drwdA==") then return false end return _v1bm < _v1bn end)
return _v1bj, _v1bi
end
task.spawn(function()
while not _v4.UNLOADED do
if _v4.SKIN_SELECTED ~= _pguo("+itU4drwdA==") then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
task.wait(2)
end
end)
table.insert(_vz, _v2.CharacterAdded:Connect(function()
task.wait(2)
local _v1bo, _v1bp = _v4.skinsForCurrentDino()
local _v1bq = false
for _v1br, _v1bs in ipairs(_v1bo) do if _v1bs == _v4.SKIN_SELECTED then _v1bq = true break end end
if not _v1bq then _v4.SKIN_SELECTED = _pguo("+itU4drwdA==") end
if _v4.skinDropdown then
pcall(function() _v4.skinDropdown:Refresh(_v1bo, false) end)
pcall(function() _v4.skinDropdown:Set(_v4.SKIN_SELECTED, true) end)
end
if _v4.SKIN_SELECTED ~= _pguo("+itU4drwdA==") then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
end))
task.spawn(function()
task.wait(3)
if _v4.skinDropdown and _v4.skinsForCurrentDino then
local _v1bt, _v1bu = _v4.skinsForCurrentDino()
if _v1bu then pcall(function() _v4.skinDropdown:Refresh(_v1bt, true) end) end
end
end)
end
end
do
_v4.fishESP = setmetatable({}, { __mode = "k" })
local _v1bv = Color3.fromRGB(80, 200, 255)
local _v1bw = 1500
local function _v1bx()
local _v1by = workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l"))
local _v1bz = _v1by and _v1by:FindFirstChild(_pguo("7T5T98H5ZDn3"))
return _v1bz and _v1bz:FindFirstChild(_pguo("+CdB6A=="))
end
local function _v1c0()
local _v1c1 = _v2.Character
return _v1c1 and (_v1c1:FindFirstChild(_pguo("/CFW+Q==")) or _v1c1:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA==")) or _v1c1:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw=")))
end
local function _v1c2(_v1c3)
return _v1c3.PrimaryPart or _v1c3:FindFirstChild(_pguo("/CFW+Q==")) or _v1c3:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="))
end
local function _v1c4(_v1c5)
local _v1c6 = _v4.fishESP[_v1c5]
if _v1c6 and _v1c6.hl.Parent then return _v1c6 end
local _v1c7 = Instance.new(_pguo("9idV6MP1ZxDK"))
_v1c7.FillColor = _v1bv; _v1c7.FillTransparency = 0.55; _v1c7.OutlineColor = _v1bv
_v1c7.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; _v1c7.Parent = _v1c5
local _v1c8 = _v1c2(_v1c5)
local _v1c9 = Instance.new(_pguo("/Cde7M3zYQraCUfp"))
_v1c9.Size = UDim2.new(0, 110, 0, 18); _v1c9.StudsOffset = Vector3.new(0, 2, 0); _v1c9.AlwaysOnTop = true
local _v1ca = Instance.new(_pguo("6itK9OP9Yh3S"))
_v1ca.Size = UDim2.new(1, 0, 1, 0); _v1ca.BackgroundTransparency = 1; _v1ca.Font = Enum.Font.GothamBold
_v1ca.TextSize = 12; _v1ca.TextColor3 = _v1bv; _v1ca.TextStrokeTransparency = 0.4; _v1ca.Text = _pguo("+CdB6A=="); _v1ca.Parent = _v1c9
if _v1c8 then _v1c9.Adornee = _v1c8; _v1c9.Parent = _v1c8 end
_v1c6 = { hl = _v1c7, bb = _v1c9, lbl = _v1ca }; _v4.fishESP[_v1c5] = _v1c6; return _v1c6
end
local function _v1cb(_v1cc)
local _v1cd = _v4.fishESP[_v1cc]
if _v1cd then pcall(function() _v1cd.hl:Destroy(); _v1cd.bb:Destroy() end); _v4.fishESP[_v1cc] = nil end
end
task.spawn(function()
while not _v4.UNLOADED do
local _v1ce = _v1bx()
local _v1cf = _v1c0()
if _v1ce then
local _v1cg = {}
for _v1ch, _v1ci in ipairs(_v1ce:GetChildren()) do
if _v1ci:IsA(_pguo("8yFW5cM=")) then
_v1cg[_v1ci] = true
local _v1cj = _v1c2(_v1ci)
local _v1ck = (_v1cj and _v1cf) and (_v1cj.Position - _v1cf.Position).Magnitude or 1e9
if _v4.FISH_ESP and _v1ck <= _v1bw then
local _v1cl = _v1c4(_v1ci)
if _v1cl.lbl then _v1cl.lbl.Text = _pguo("+CdB6I+8") .. math.floor(_v1ck) .. "m" end
else
_v1cb(_v1ci)
end
end
end
for _v1cm in pairs(_v4.fishESP) do if not _v1cg[_v1cm] then _v1cb(_v1cm) end end
end
task.wait(0.15)
end
for _v1cn in pairs(_v4.fishESP) do _v1cb(_v1cn) end
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
function _v4.vegResolve(_v1co)
local _v1cp = _v1co
for _v1cq = 1, 3 do
if not _v1cp or _v1cp == workspace then break end
local _v1cr = _v1cp:GetAttribute("ID")
if _v1cr then return _v1cp, _v1cr end
_v1cp = _v1cp.Parent
end
return nil, nil
end
function _v4.vegAllowed(_v1cs)
local _v1ct = _v4.vegAllowCache[_v1cs]
if _v1ct ~= nil then return _v1ct end
local _v1cu, _v1cv = _v4.vegData()
local _v1cw = false
pcall(function()
local _v1cx = _v1cu.FoliageConsumables[_v1cs]
local _v1cy = _v1cx and _v1cx.Actions
if type(_v1cy) == _pguo("yi9Q7Mo=") then
for _v1cz, _v1d0 in ipairs(_v1cy) do
if type(_v1d0) == _pguo("yi9Q7Mo=") and _v1d0.Category
and _v1cv.Data.Diet.Categories[_v1d0.Category] ~= nil then
_v1cw = true
break
end
end
end
end)
_v4.vegAllowCache[_v1cs] = _v1cw
return _v1cw
end
function _v4.vegContainer()
if _v4.vegFolder and _v4.vegFolder.Parent then return _v4.vegFolder end
local _v1d1 = _v2:FindFirstChild(_pguo("7iJT+cruRw3X"))
if not _v1d1 then return nil end
local _v1d2 = Instance.new(_pguo("+CFe5Mru"))
_v1d2.Name = _pguo("+y9I+ez0ZRnKPWTlyNlTKA==")
_v1d2.Parent = _v1d1
_v4.vegFolder = _v1d2
return _v1d2
end
function _v4.vegLabel(_v1d3, _v1d4)
local _v1d5 = _v4.vegPool[_v1d3]
if _v1d5 and _v1d5.bb.Parent then return _v1d5 end
local _v1d6 = Instance.new(_pguo("/Cde7M3zYQraCUfp"))
_v1d6.Name = _pguo("6CtVzM7+ZRQ=")
_v1d6.Size = UDim2.new(0, 160, 0, 20)
_v1d6.StudsOffset = Vector3.new(0, 2.5, 0)
_v1d6.AlwaysOnTop = true
_v1d6.LightInfluence = 0
_v1d6.Enabled = false
local _v1d7 = Instance.new(_pguo("6itK9OP9Yh3S"))
_v1d7.Name = _pguo("8i9Q5cM=")
_v1d7.Size = UDim2.new(1, 0, 1, 0)
_v1d7.BackgroundTransparency = 1
_v1d7.Font = Enum.Font.GothamBold
_v1d7.TextSize = 12
_v1d7.TextStrokeTransparency = 0
_v1d7.TextStrokeColor3 = Color3.new(0, 0, 0)
_v1d7.Parent = _v1d6
_v1d6.Parent = _v1d4
_v1d5 = { bb = _v1d6, lbl = _v1d7 }
_v4.vegPool[_v1d3] = _v1d5
return _v1d5
end
function _v4.vegHideAll()
for _v1d8, _v1d9 in pairs(_v4.vegPool) do
pcall(function() _v1d9.bb.Enabled = false; _v1d9.bb.Adornee = nil end)
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
local _v1da = _v4.getLocalRoot()
local _v1db = _v4.vegContainer()
if not (_v1da and _v1db) then return end
local _v1dc = _v1da.Position
local _v1dd = _v4.VEG_DISTANCE
_v4.vegInstCache = _v4.vegInstCache or {}
_v4.vegSweeps = (_v4.vegSweeps or 0) + 1
if _v4.vegSweeps % 60 == 0 then
for _v1de in pairs(_v4.vegInstCache) do
if not _v1de.Parent then _v4.vegInstCache[_v1de] = nil end
end
end
local _v1df, _v1dg = {}, {}
pcall(function()
for _v1dh, _v1di in ipairs(_v4.VEG_CS:GetTagged(_pguo("+CFe6c77ZSvKPFfhwv1iFNs="))) do
local _v1dj = _v4.vegInstCache[_v1di]
if not (_v1dj and _v1dj.part.Parent) then
local _v1dk, _v1dl = _v4.vegResolve(_v1di)
local _v1dm = _v1dl and (_v1di:IsA(_pguo("/C9B5f/9cgw=")) and _v1di or _v1di:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="), true))
_v1dj = _v1dm and { model = _v1dk, id = _v1dl, part = _v1dm } or nil
_v4.vegInstCache[_v1di] = _v1dj
end
local _v1dn, _v1do = _v1dj and _v1dj.model, _v1dj and _v1dj.id
if _v1do and not _v1dg[_v1do] and _v1dn:IsDescendantOf(workspace) then
local _v1dp = _v1dj.part
if _v1dp then
_v1dg[_v1do] = true
local _v1dq = (_v1dp.Position - _v1dc).Magnitude
if _v1dq <= _v1dd then
local _v1dr = _v4.vegAllowed(_v1dn.Name)
local _v1ds = _v4.khFoodOf(_v1do)
local _v1dt
if _v1ds then _v1dt = (_v1ds <= 0)
else _v1dt = (_v1dn:GetAttribute(_pguo("7T5T98H5ZA==")) == false) end
if (_v1dr or not _v4.VEG_DIET_ONLY) and not (_v1dt and _v4.VEG_HIDE_EATEN) then
_v1df[#_v1df + 1] = { part = _v1dp, name = _v1dn.Name, d = _v1dq,
ok = _v1dr, eaten = _v1dt, food = _v1ds }
end
end
end
end
end
end)
local function _v1du(_v1dv)
return _v1dv.eaten and 1 or 0
end
table.sort(_v1df, function(_v1dw, _v1dx)
local _v1dy, _v1dz = _v1du(_v1dw), _v1du(_v1dx)
if _v1dy ~= _v1dz then return _v1dy < _v1dz end
return _v1dw.d < _v1dx.d
end)
for _v1e0 = 1, _v4.VEG_MAX do
local _v1e1 = _v4.vegLabel(_v1e0, _v1db)
local _v1e2 = _v1df[_v1e0]
if _v1e2 then
_v1e1.bb.Adornee = _v1e2.part
_v1e1.bb.Enabled = true
local _v1e3 = ""
if _v1e2.eaten then _v1e3 = _pguo("nm4a5c7oZRaX")
elseif _v1e2.food then _v1e3 = "  " .. math.floor(_v1e2.food) .. "f" end
_v1e1.lbl.Text = _v1e2.name .. _v1e3 .. "  " .. math.floor(_v1e2.d) .. "m"
_v1e1.lbl.TextColor3 = _v1e2.eaten and _v4.VEG_COLOR_EATEN
or (_v1e2.ok and _v4.VEG_COLOR_OK or _v4.VEG_COLOR_NO)
else
_v1e1.bb.Enabled = false
_v1e1.bb.Adornee = nil
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
local _v1e4 = Color3.fromRGB(28, 22, 42)
local _v1e5 = Color3.fromRGB(120, 70, 220)
local _v1e6 = Instance.new(_pguo("7S1A5cryRw3X"))
_v1e6.Name = _pguo("+y9I+ez0ZRnKPWbv2v9o"); _v1e6.ResetOnSpawn = false; _v1e6.IgnoreGuiInset = true
_v1e6.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v1e6.Parent = (gethui and gethui()) or game:GetService(_pguo("/SFA5ejpaQ==")) end)
if not _v1e6.Parent then _v1e6.Parent = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
_v4.mobGui = _v1e6
local function _v1e7(_v1e8, _v1e9, _v1ea, _v1eb, _v1ec)
local _v1ed = Instance.new(_pguo("6itK9O3pdAzRIA=="))
_v1ed.Name = _pguo("9iFe5PA=") .. _v1ea
_v1ed.Size = _v1ec or UDim2.new(0, 58, 0, 58)
_v1ed.Position = _v1eb
_v1ed.BackgroundColor3 = _v1e4
_v1ed.BackgroundTransparency = 0.25
_v1ed.BorderSizePixel = 0
_v1ed.Text = _v1e9
_v1ed.TextColor3 = Color3.fromRGB(235, 225, 255)
_v1ed.Font = Enum.Font.GothamBold
_v1ed.TextSize = 18
_v1ed.AutoButtonColor = false
_v1ed.Parent = _v1e8
Instance.new(_pguo("6wdx793yZQo="), _v1ed).CornerRadius = UDim.new(0, 10)
local _v1ee = Instance.new(_pguo("6wdh9N3zax0="), _v1ed)
_v1ee.Color = Color3.fromRGB(150, 90, 255); _v1ee.Thickness = 1.5; _v1ee.Transparency = 0.4
local function _v1ef(_v1eg)
_v4.mob[_v1ea] = _v1eg
_v1ed.BackgroundColor3 = _v1eg and _v1e5 or _v1e4
end
_v1ed.InputBegan:Connect(function(_v1eh)
if _v1eh.UserInputType == Enum.UserInputType.Touch
or _v1eh.UserInputType == Enum.UserInputType.MouseButton1 then _v1ef(true) end
end)
_v1ed.InputEnded:Connect(function(_v1ei)
if _v1ei.UserInputType == Enum.UserInputType.Touch
or _v1ei.UserInputType == Enum.UserInputType.MouseButton1 then _v1ef(false) end
end)
table.insert(_vz, _v1ed.MouseLeave:Connect(function() _v1ef(false) end))
return _v1ed
end
local function _v1ej(_v1ek, _v1el, _v1em, _v1en)
local _v1eo = Instance.new(_pguo("+DxT7co="))
_v1eo.Name = _v1ek; _v1eo.Size = UDim2.new(0, _v1el, 0, _v1em); _v1eo.Position = _v1en
_v1eo.BackgroundTransparency = 1; _v1eo.Visible = false; _v1eo.Parent = _v1e6
return _v1eo
end
_v4.mobFlyPad = _v1ej(_pguo("+CJL0M74"), 200, 200, UDim2.new(0, 24, 1, -224))
_v1e7(_v4.mobFlyPad, _pguo("XNiA"), _pguo("2DlW"), UDim2.new(0, 62, 0, 0))
_v1e7(_v4.mobFlyPad, _pguo("XNmy"), _pguo("0itU9A=="), UDim2.new(0, 0, 0, 62))
_v1e7(_v4.mobFlyPad, _pguo("XNiE"), _pguo("zCdV6Ns="), UDim2.new(0, 124, 0, 62))
_v1e7(_v4.mobFlyPad, _pguo("XNiO"), _pguo("3C9R6w=="), UDim2.new(0, 62, 0, 124))
_v1e7(_v4.mobFlyPad, "+", "up", UDim2.new(0, 196, 0, 20), UDim2.new(0, 52, 0, 52))
_v1e7(_v4.mobFlyPad, _pguo("XMag"), _pguo("2iFF7g=="), UDim2.new(0, 196, 0, 104), UDim2.new(0, 52, 0, 52))
_v4.mobTurnPad = _v1ej(_pguo("6jtA7v/9ZA=="), 200, 70, UDim2.new(1, -224, 1, -100))
_v1e7(_v4.mobTurnPad, _pguo("XMiC"), _pguo("yjtA7uM="), UDim2.new(0, 0, 0, 0))
_v1e7(_v4.mobTurnPad, _pguo("XMiD"), _pguo("yjtA7v0="), UDim2.new(0, 68, 0, 0))
_v1e7(_v4.mobTurnPad, _pguo("XNm8"), _pguo("1yBB9M4="), UDim2.new(0, 136, 0, 0))
_v4.MOB_SHOW_TURN = true
_v4.addStep(10, function()
if _v4.UNLOADED then return end
local _v1ep = _v4.FLY and true or false
if _v4.mobFlyPad.Visible ~= _v1ep then _v4.mobFlyPad.Visible = _v1ep end
local _v1eq = _v4.MOB_SHOW_TURN and (_v4.QUICK_TURN or _v4.FLY) and true or false
if _v4.mobTurnPad.Visible ~= _v1eq then _v4.mobTurnPad.Visible = _v1eq end
end)
end
_v4.MENU_LAYOUT = {
MAIN = { _pguo("/ztG7+n9chU="), _pguo("7TpT9Nw="), _pguo("/SFf4s7o"), _pguo("7Ctc5Mru"), _pguo("6iFd7Nw=") },
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
_pguo("7Tlb9Mz0ICvSIUagmQ=="), _pguo("7Tlb9Mz0ID/bIFbl3Q=="), _pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="), _pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ==") },
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
LOCKED = {},
}
table.insert(_v4.MENU_LAYOUT.LOCKED, _pguo("7CtY78by"))
function _v4.displayName(_v1er)
local _v1es = (tostring(_v1er or ""):gsub(_pguo("4GtBqw=="), ""):gsub(_pguo("mz0ZpA=="), ""))
local _v1et = _v4.MENU_LAYOUT.RENAME and _v4.MENU_LAYOUT.RENAME[_v1es]
return _v1et or (_v1es:gsub(_pguo("4Atc4c3wZV3NZQ=="), ""))
end
function _v4.ezBridge(_v1eu)
local _v1ev = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
local _v1ew = game:GetService(_pguo("7Dtc08rudhHdKw=="))
local _v1ex = _v4.MENU_LAYOUT
local _v1ey = { Caps = { sectionInfo = true } }
local function _v1ez(_v1f0)
return (tostring(_v1f0 or ""):gsub(_pguo("4GtBqw=="), ""):gsub(_pguo("mz0ZpA=="), ""))
end
local function _v1f1(_v1f2)
local _v1f3, _v1f4 = {}, nil
for _v1f5 in (tostring(_v1f2) .. "\n"):gmatch(_pguo("lmAfqaU=")) do
local _v1f6, _v1f7 = _v1f5:match(_pguo("4GtBqofHXkLjZRu6iu8qUJBlG6Q="))
if _v1f6 and #_v1f6 <= 40 then
_v1f4 = _v1ez(_v1f6)
_v1f3[_v1f4] = _v1f7
elseif _v1f4 and _v1f5:match("%S") then
_v1f3[_v1f4] = _v1f3[_v1f4] .. " " .. _v1f5
else
_v1f4 = nil
end
end
return _v1f3
end
local function _v1f8(_v1f9)
local _v1fa = {}
function _v1fa:Set(_v1fb, _v1fc)
if _v1fc then _v1f9:Set(_v1fb and true or false) else _v1f9:SetEnabled(_v1fb and true or false) end
end
function _v1fa:SetKey(_v1fd, _v1fe)
if typeof(_v1fd) == _pguo("+yBH7eboZRU=") and _v1fd ~= Enum.KeyCode.Unknown then
_v1f9:SetKeybind(_v1fd.Name)
else
_v1f9.Keybind = nil
pcall(function()
_v1f9._kbBtn.Text = _pguo("kGAc")
_v1f9:_markBound(false)
end)
end
end
return setmetatable(_v1fa, { __index = function(_v1ff, _v1fg)
if _v1fg == _pguo("9StL") then return _v1f9.Keybind or Enum.KeyCode.Unknown end
if _v1fg == _pguo("6C9e9co=") or _v1fg == _pguo("7TpT9Mo=") then return _v1f9.Enabled end
return nil
end })
end
local function _v1fh(_v1fi, _v1fj, _v1fk)
local _v1fl = _v1fj.Callback or function() end
local _v1fm = _v1fi:AddSubToggle({ Name = _v4.displayName(_v1fj.Name), Default = _v1fj.Default and true or false, Tooltip = _v1fk, Callback = _v1fl })
local _v1fn = {}
function _v1fn:Set(_v1fo, _v1fp)
_v1fm:Set(_v1fo, not _v1fp)
end
function _v1fn:SetKey() end
return setmetatable(_v1fn, { __index = function(_v1fq, _v1fr)
if _v1fr == _pguo("9StL") then return Enum.KeyCode.Unknown end
if _v1fr == _pguo("6C9e9co=") or _v1fr == _pguo("7TpT9Mo=") then return _v1fm.Value end
return nil
end })
end
local function _v1fs(_v1ft, _v1fu)
local _v1fv = _v1fu.Callback or function() end
local _v1fw = _v1ft:AddSlider({
Name = _v4.displayName(_v1fu.Name), Min = _v1fu.Min, Max = _v1fu.Max, Default = _v1fu.Default,
Step = _v1fu.Increment or 1, Callback = _v1fv,
})
local _v1fx = {}
function _v1fx:Set(_v1fy, _v1fz)
_v1fw:Set(_v1fy)
if not _v1fz then pcall(_v1fv, _v1fw.Value) end
end
return setmetatable(_v1fx, { __index = function(_v1g0, _v1g1)
if _v1g1 == _pguo("6C9e9co=") then return _v1fw.Value end
return nil
end })
end
local function _v1g2(_v1g3, _v1g4)
local _v1g5 = _v1g4.Callback or function() end
local _v1g6 = _v1g3:AddDropdown({
Name = _v1ez(_v1g4.Name), Options = _v1g4.Items or _v1g4.Options or {}, Default = _v1g4.Default, Callback = _v1g5,
})
local _v1g7 = {}
function _v1g7:Set(_v1g8, _v1g9)
_v1g6:Set(_v1g8)
if not _v1g9 then pcall(_v1g5, _v1g8) end
end
function _v1g7:Refresh(_v1ga, _v1gb)
_v1g6:Refresh(_v1ga or {})
end
return setmetatable(_v1g7, { __index = function(_v1gc, _v1gd)
if _v1gd == _pguo("7Ste5czoZRw=") then return _v1g6.Selected end
return nil
end })
end
local function _v1ge(_v1gf, _v1gg)
local _v1gh = _v1gg.Callback or function() end
local _v1gj = _v1gf:AddDropdown({
Name = _v1ez(_v1gg.Name), Options = _v1gg.Items or _v1gg.Options or {}, Multi = true, Default = _v1gg.Default,
Callback = function(_v1gi) pcall(_v1gh, _v1gi) end,
})
local _v1gk = {}
function _v1gk:Set(_v1gl, _v1gm)
_v1gj:Set(type(_v1gl) == _pguo("yi9Q7Mo=") and _v1gl or {}, not _v1gm)
end
function _v1gk:Refresh(_v1gn, _v1go)
if not _v1go then _v1gj:Set({}, false) end
_v1gj:Refresh(_v1gn or {})
end
return setmetatable(_v1gk, { __index = function(_v1gp, _v1gq)
if _v1gq == _pguo("7Ste5czoZRw=") then
local _v1gr = {}
for _v1gs in pairs(_v1gj.Selected or {}) do _v1gr[_v1gs] = true end
return _v1gr
end
return nil
end })
end
local function _v1gt(_v1gu, _v1gv)
local _v1gw = _v1ez(_v1gv.Name or _pguo("9StL4sbyZA=="))
local _v1gx = _v1gv.Changed or _v1gv.Callback or function() end
local _v1gy = { Key = typeof(_v1gv.Default) == _pguo("+yBH7eboZRU=") and _v1gv.Default or Enum.KeyCode.Unknown }
local _v1gz
local function _v1h0(_v1h1)
if _v1gz then
_v1gz.Text = _v1h1 or (_v1gw .. _pguo("hG4S") .. (_v1gy.Key == Enum.KeyCode.Unknown and _pguo("0CFc5Q==") or _v1gy.Key.Name))
end
end
local _v1h2 = false
local row = _v1gu:AddButton({
Name = _v1gw,
Callback = function()
if _v1h2 then return end
_v1h2 = true
_v1h0(_v1gw .. _pguo("hG4S8N35cwueLxLryuUgUPs9UaDM8GUZzD0b"))
local _v1h3
_v1h3 = _v1ev.InputBegan:Connect(function(_v1h4)
if _v1h4.UserInputType ~= Enum.UserInputType.Keyboard then return end
_v1h3:Disconnect()
_v1h2 = false
_v1gy.Key = (_v1h4.KeyCode == Enum.KeyCode.Escape) and Enum.KeyCode.Unknown or _v1h4.KeyCode
_v1h0()
pcall(_v1gx, _v1gy.Key)
end)
end,
})
for _v1h5, _v1h6 in ipairs(row:GetChildren()) do
if _v1h6:IsA(_pguo("6itK9OP9Yh3S")) and _v1h6.Text == _v1gw then
_v1gz = _v1h6
break
end
end
_v1h0()
function _v1gy:Set(_v1h7, _v1h8)
if typeof(_v1h7) == _pguo("+yBH7eboZRU=") then _v1gy.Key = _v1h7 end
_v1h0()
if not _v1h8 then pcall(_v1gx, _v1gy.Key) end
end
return _v1gy
end
local function _v1h9()
return setmetatable({}, { __index = function(_v1ha, _v1hb)
if _v1hb == _pguo("9StL") then return Enum.KeyCode.Unknown end
if _v1hb == _pguo("6C9e9co=") or _v1hb == _pguo("7TpT9Mo=") then return false end
if _v1hb == _pguo("7Ste5czoZRw=") then return {} end
return function() end
end })
end
local function _v1hc(_v1hd, _v1he)
local _v1hf, _v1hg, _v1hh = {}, {}, nil
local function _v1hi(_v1hj)
local _v1hk = _v1ez(_v1hj)
return _v1hd.locked[_v1hk] or _v1hd.locked[_v1he .. "/" .. _v1hk]
end
local function _v1hl(_v1hm, _v1hn)
local _v1ho = _v1ez(_v1hm)
if _v1hn then
local _v1hp = _v1hd.parentOf[_v1he .. "/" .. _v1ho] or _v1hd.parentOf[_v1ho]
local _v1hq = _v1hp and _v1hd.masters[_v1hp]
if _v1hq then return _v1hq, true end
end
local _v1hr = _v1ex.WHERE[_v1ho] or _v1ex.SUB_MAIN[_v1he] or _v1ex.MAIN[#_v1ex.MAIN]
if not _v1hd.tabs[_v1hr] then _v1hd.tabs[_v1hr] = _v1hd.win:AddTab(_v1hr) end
local _v1hs = _v1hd.tabs[_v1hr]
local _v1ht = _v1ex.HEADERS[_v1hr]
local _v1hu = _v1ht and _v1hh and _v1ht[_v1hh]
if _v1hu and _v1hd.lastHeader[_v1hr] ~= _v1hu then
_v1hs:AddSection(_v1hu)
_v1hd.lastHeader[_v1hr] = _v1hu
end
return _v1hs, false, _v1hr
end
function _v1hf:AddSection(_v1hv)
_v1hh = type(_v1hv) == _pguo("yi9Q7Mo=") and _v1hv.Name or _v1hv
_v1hg = (type(_v1hv) == _pguo("yi9Q7Mo=") and _v1hv.Info) and _v1f1(_v1hv.Info) or {}
return nil
end
function _v1hf:AddToggle(_v1hw)
_v1hw = _v1hw or {}
if _v1hi(_v1hw.Name) then return _v1h9() end
local _v1hx, _v1hy, _v1hz = _v1hl(_v1hw.Name, true)
if _v1hy then
local _v1i0 = _v1ez(_v1hw.Name)
if not _v1hd.hasKids[_v1i0] then return _v1fh(_v1hx, _v1hw, _v1hw.Tooltip or _v1hg[_v1i0]) end
local _v1i1 = _v1hx:AddToggle({
Name = _v4.displayName(_v1i0),
Default = false,
Tooltip = _v1hw.Tooltip or _v1hg[_v1i0],
Callback = _v1hw.Callback or function() end,
})
if _v1hw.Default then _v1i1:Set(true) end
_v1hd.masters[_v1i0] = _v1i1
return _v1f8(_v1i1)
end
local _v1i2 = _v1ez(_v1hw.Name)
local _v1i3 = _v1hx:AddToggle({
Name = _v4.displayName(_v1i2),
Default = false,
Keybind = type(_v1hw.Keybind) == _pguo("zTpA6cH7") and _v1hw.Keybind or nil,
Tooltip = _v1hw.Tooltip or _v1hg[_v1i2],
Callback = _v1hw.Callback or function() end,
})
if _v1hw.Default then _v1i3:Set(true) end
_v1hd.masters[_v1i2] = _v1i3
local _v1i4 = _v1hd.rank[_v1hz] and _v1hd.rank[_v1hz][_v1i2]
if _v1i4 then _v1i3._container.LayoutOrder = _v1i4 - 100000 end
return _v1f8(_v1i3)
end
function _v1hf:AddSlider(_v1i5)
_v1i5 = _v1i5 or {}
if _v1hi(_v1i5.Name) then return _v1h9() end
return _v1fs(_v1hl(_v1i5.Name, true), _v1i5)
end
function _v1hf:AddDropdown(_v1i6)
_v1i6 = _v1i6 or {}
if _v1hi(_v1i6.Name) then return _v1h9() end
local _v1i7 = _v1hl(_v1i6.Name, true)
if _v1i6.Multi then return _v1ge(_v1i7, _v1i6) end
return _v1g2(_v1i7, _v1i6)
end
function _v1hf:AddButton(_v1i8)
_v1i8 = _v1i8 or {}
if _v1hi(_v1i8.Name) then return _v1h9() end
return (_v1hl(_v1i8.Name, false)):AddButton({ Name = _v1ez(_v1i8.Name), Callback = _v1i8.Callback })
end
function _v1hf:AddKeybind(_v1i9)
_v1i9 = _v1i9 or {}
if _v1hi(_v1i9.Name) then return _v1h9() end
return _v1gt((_v1hl(_v1i9.Name, false)), _v1i9)
end
return _v1hf
end
function _v1ey.new(_v1ia)
_v1ia = _v1ia or {}
local _v1ib = (type(getgenv) == _pguo("2Dtc49v1bxY=")) and getgenv() or _G
if _v1ib.__PX_EZ_WIN then
pcall(function()
_v1ib.__PX_EZ_WIN.OnUnload = nil
_v1ib.__PX_EZ_WIN:Destroy()
end)
end
local _v1ic = { tabs = {}, toggleKey = Enum.KeyCode.RightShift }
local _v1id = false
local _v1ie = _pguo("7hZtxfXach3bA1313Pk=")
local _v1if = false
local _v1ig, _v1ih = _v1ev.MouseBehavior, _v1ev.MouseIconEnabled
local _v1ii = {}
pcall(function()
_v1ii[1] = _v1ev:GetPropertyChangedSignal(_pguo("8yFH88reZRDfOFvv3Q==")):Connect(function()
local _v1ij = _v1ev.MouseBehavior
if not _v1if or _v1ij ~= Enum.MouseBehavior.Default then _v1ig = _v1ij end
end)
_v1ii[2] = _v1ev:GetPropertyChangedSignal(_pguo("8yFH88rVYxfQC1zhzfBlHA==")):Connect(function()
local _v1ik = _v1ev.MouseIconEnabled
if not _v1if or not _v1ik then _v1ih = _v1ik end
end)
end)
local function _v1il()
_v1ev.MouseBehavior = _v1ig
_v1ev.MouseIconEnabled = _v1ih
end
local function _v1im()
pcall(function() _v1ew:UnbindFromRenderStep(_v1ie) end)
for _v1in, _v1io in ipairs(_v1ii) do pcall(function() _v1io:Disconnect() end) end
if _v1if then
_v1if = false
pcall(_v1il)
end
end
local _v1ip = _v1eu:CreateWindow({
Title = _v1ia.Title or _pguo("+y9I+ez0ZRnKPQ=="),
Website = _pguo("2y9I+cz0ZRnKPRzjwPE="),
Discord = _pguo("2idB48DuZFbZKR31+cRRLPkrVPbe"),
OnUnload = function()
if _v1id then return end
_v1id = true
if _v1ic.onUnload then pcall(_v1ic.onUnload) end
_v1im()
end,
})
_v1ib.__PX_EZ_WIN = _v1ip
local _v1iq = {}
for _v1ir, _v1is in pairs(_v1ex.NEST) do
for _v1it, _v1iu in ipairs(_v1is) do _v1iq[_v1iu] = _v1ir end
end
local _v1iv = {}
for _v1iw, _v1ix in pairs(_v1ex.ORDER or {}) do
_v1iv[_v1iw] = {}
for _v1iy, _v1iz in ipairs(_v1ix) do _v1iv[_v1iw][_v1iz] = _v1iy end
end
local _v1j0 = {}
for _v1j1 in pairs(_v1ex.NEST) do _v1j0[_v1j1] = true end
local _v1j2 = {}
local function _v1j3(_v1j4)
if _v1j2[_v1j4] then return end
_v1j2[_v1j4] = true
for _v1j5, _v1j6 in ipairs(_v1ex.NEST[_v1j4] or {}) do _v1j3(_v1j6) end
end
for _v1j7, _v1j8 in ipairs(_v1ex.LOCKED or {}) do _v1j3(_v1j8) end
local _v1j9 = { win = _v1ip, tabs = {}, masters = {}, parentOf = _v1iq, lastHeader = {}, rank = _v1iv, hasKids = _v1j0, locked = _v1j2 }
for _v1ja, _v1jb in ipairs(_v1ex.MAIN) do _v1j9.tabs[_v1jb] = _v1ip:AddTab(_v1jb) end
local _v1jc = _v1ev.TouchEnabled and not _v1ev.KeyboardEnabled
if not _v1jc then
local _v1jd = Instance.new(_pguo("6itK9O3pdAzRIA=="))
_v1jd.Name = _pguo("7hZtzcD4YRQ=")
_v1jd.Modal = true
_v1jd.Text = ""
_v1jd.AutoButtonColor = false
_v1jd.BackgroundTransparency = 1
_v1jd.Size = UDim2.new(0, 1, 0, 1)
_v1jd.Visible = false
_v1jd.Parent = _v1ip._gui
pcall(function()
_v1ew:BindToRenderStep(_v1ie, Enum.RenderPriority.Camera.Value + 1, function()
if _v1ip._gui and _v1ip._visible then
if not _v1if then
_v1if = true
_v1jd.Visible = true
else
if _v1ev.MouseBehavior ~= Enum.MouseBehavior.Default then _v1ig = _v1ev.MouseBehavior end
if not _v1ev.MouseIconEnabled then _v1ih = false end
end
_v1ev.MouseBehavior = Enum.MouseBehavior.Default
_v1ev.MouseIconEnabled = true
elseif _v1if then
_v1if = false
_v1jd.Visible = false
_v1il()
end
end)
end)
end
function _v1ic:IsVisible()
return _v1ip._gui ~= nil and _v1ip._visible == true
end
function _v1ic:Notify(_v1je, _v1jf)
if _v1ip._gui then return _v1ip:Notify(_v1je, _v1jf or 3) end
return nil
end
function _v1ic:SetConfig(_v1jg)
return _v1ip:SetConfig(_v1jg)
end
function _v1ic:Destroy()
_v1id = true
_v1im()
pcall(function() _v1ip:Destroy() end)
if _v1ib.__PX_EZ_WIN == _v1ip then _v1ib.__PX_EZ_WIN = nil end
end
function _v1ic:AddTab(_v1jh)
local _v1ji = {}
function _v1ji:AddSubTab(_v1jj)
return _v1hc(_v1j9, type(_v1jj) == _pguo("yi9Q7Mo=") and _v1jj.Name or tostring(_v1jj))
end
return _v1ji
end
_v1ic.tabs.Settings = _v1hc(_v1j9, _pguo("/SFc5sb7"))
return _v1ic
end
return _v1ey
end
function _v4.loadLibrary()
local _v1jk = _pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaQ==")
local _v1jl = _pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO")
local function _v1jm(_v1jn, _v1jo)
local _v1jp, _v1jq = loadstring(_v1jn)
if not _v1jp then return nil, _v1jo .. _pguo("nihT6cP5ZFjKIRLjwPFwEdIrCKA=") .. tostring(_v1jq) end
local _v1jr, _v1js = pcall(_v1jp)
if _v1jr and type(_v1js) == _pguo("yi9Q7Mo=") then return _v4.ezBridge(_v1js) end
return nil, _v1jo .. _pguo("nitA8sDuZRyEbg==") .. tostring(_v1js)
end
local _v1jt, _v1ju = pcall(function()
if type(isfile) == _pguo("2Dtc49v1bxY=") and not isfile(_v1jl) then return nil end
return readfile(_v1jl)
end)
if _v1jt and type(_v1ju) == _pguo("zTpA6cH7") and #_v1ju > 0 then return _v1jm(_v1ju, _pguo("8iFR4cO8RSKeCWfJ")) end
local _v1jv = _pguo("yyBZ7sDrbljbPEDv3Q==")
for _v1jw = 1, 3 do
local _v1jx, _v1jy = pcall(function() return game:HttpGet(_v1jk) end)
if _v1jx and type(_v1jy) == _pguo("zTpA6cH7") and #_v1jy > 0 and not _v1jy:find(_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A==")) then
local _v1jz, _v1k0 = _v1jm(_v1jy, _pguo("+xQSx/rV"))
if _v1jz then return _v1jz end
_v1jv = _v1k0
else
_v1jv = _pguo("/SFH7Mu8bhfKbkDlzv9oWNsvSPnM9GUZyj0c48DxIFA=") .. tostring(_v1jy) .. ")"
end
if _v1jw < 3 then task.wait(1) end
end
return nil, _v1jv
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
local _v1k1 = _v4.Library.new({Title = _pguo("+y9I+ez0ZRnKPQ==")})
_v4.Hub = _v1k1
_v4.GUI_SECTION_INFO = false
pcall(function()
_v4.GUI_SECTION_INFO = (_v4.Library and _v4.Library.Caps and _v4.Library.Caps.sectionInfo) and true or false
end)
function _v4.section(_v1k2, _v1k3, _v1k4)
if _v4.GUI_SECTION_INFO and _v1k4 then
return _v1k2:AddSection({ Name = _v1k3, Info = _v1k4 })
end
return _v1k2:AddSection(_v1k3)
end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.ALL_TOGGLES = {}
local function _v1k5(_v1k6)
local _v1k7 = _v1k6.AddToggle
_v1k6.AddToggle = function(_v1k8, _v1k9)
_v1k9 = _v1k9 or {}
if _v1k9.Keybind == nil then _v1k9.Keybind = true end
local _v1ka = _v1k9.Callback or function() end
local _v1kb = _v1k9.Name or _pguo("6iFV58P5")
_v1k9.Callback = function(_v1kc)
_v1ka(_v1kc)
if not _v4.SUPPRESS_TOGGLE_NOTIFY then
pcall(function() _v1k1:Notify(_v4.displayName(_v1kb) .. ": " .. (_v1kc and "ON" or _pguo("8Qh0"))) end)
end
end
local _v1kd = _v1k7(_v1k8, _v1k9)
if _v1kb then _v4.ALL_TOGGLES[_v1kb] = _v1kd end
return _v1kd
end
return _v1k6
end
_v4.SAVE_DINO_ACTIVE = false
_v4.SAVE_DINO_DEPTH = 700
_v4.SAVE_FLY_SPEED = 250
_v4.SAVE_DIR = _pguo("+iFF7g==")
_v4.SAVE_UP_HEIGHT = 1000
_v4.SAVE_RELEASE_GRACE = 10
local _v1ke = false
local _v1kf = nil
_v4.AUTO_SAVE_PCT = 30
_v4.AUTO_SAVE = false
_v4.AUTO_SAVE_BLEED = false
_v4.SAVE_ALLOW_REST = true
_v4.saveOriginCF = nil
_v4.saveReturning = false
local _v1kg = true
local _v1kh = nil
local _v1ki = nil
local _v1kj = {}
local _v1kk = nil
local function _v1kl()
if _v1kh then
pcall(function() _v1kh:Destroy() end)
_v1kh = nil
end
end
function _v4.getCS()
if _v4.csCache then return _v4.csCache end
pcall(function() _v4.csCache = require(_v4.WATER_RS.Common.CharacterState) end)
return _v4.csCache
end
function _v4.saveIsResting()
local _v1km = _v4.getCS()
if not _v1km then return false end
local _v1kn = false
pcall(function()
local _v1ko = _v1km.Actions
_v1kn = (_v1ko and (_v1ko.Rest or _v1ko.Sleep)) and true or false
if _v1km.RestDebounce then _v1kn = true end
end)
return _v1kn
end
local _v1kp = false
local function _v1kq(_v1kr)
if _v1kp == _v1kr then return end
_v1kp = _v1kr
pcall(function()
local _v1ks = _v2.Character
if _v1ks then _v1ks:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v1kr and true or nil) end
end)
end
local function _v1kt()
for _v1ku, _v1kv in ipairs(_v1kj) do pcall(function() _v1kv:Disconnect() end) end
_v1kj = {}
end
local function _v1kw()
if _v4.SAVE_DINO_ACTIVE then return end
if _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
if _v1kf then pcall(function() _v1kf:Set(false) end) end
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("7S9E5Y/YaRbRbkLh2u9lHIRuc8bkvEYZzCMV84/PYR7bOkugx/1uHNIrQaDH9WQdnmgS6Mr9bFjJJlvsyrxpDJ48R+7c"), 5) end end)
return
end
local _v1kx = _vfn()
if not _v1kx then
pcall(function() _v1k1:Notify(_pguo("7S9E5Y/YaRbRdBLuwLxjEN88U+Pb+XJY2CFH7ss=")) end)
return
end
pcall(function()
local _v1ky = _v2.Character
if _v1ky then _v1ky:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), true) end
end)
_v1kp = false
_v1kq(true)
_v4.saveOriginCF = _v1kx.CFrame
_v4.saveReturning = false
_v4.SAVE_DINO_ACTIVE = true
_v1kk = _v1kx
_v1ki = nil
_v1kl()
local _v1kz = _pguo("0yFE6cH7")
local _v1l0 = _v1kx.Position
local _v1l1 = _v1kx.Position.Y
local _v1l2 = _v1kx.CFrame - _v1kx.CFrame.Position
local _v1l3 = (_v4.SAVE_DIR == "Up")
local _v1l4
if _v1l3 then
_v1l4 = _v1l1 + _v4.SAVE_UP_HEIGHT
else
local _v1l5 = RaycastParams.new()
_v1l5.FilterType = Enum.RaycastFilterType.Exclude
_v1l5.FilterDescendantsInstances = { _v2.Character, _v1kh }
local _v1l6 = workspace:Raycast(_v1kx.Position + Vector3.new(0, 20, 0), Vector3.new(0, -800, 0), _v1l5)
local _v1l7 = (_v1l6 and _v1l6.Position.Y) or _v1l1
_v1l4 = math.min(_v1l7, _v1l1) - _v4.SAVE_DINO_DEPTH
local _v1l8
pcall(function() _v1l8 = workspace.FallenPartsDestroyHeight end)
if _v1l8 and _v1l4 < _v1l8 + 50 then _v1l4 = _v1l8 + 50 end
end
local _v1l9 = CFrame.new(_v1l0) * _v1l2
_v1kt()
local function _v1la(_v1lb)
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v1lc = _v1kk
if not (_v1lc and _v1lc.Parent) then _v1lc = _vfn(); _v1kk = _v1lc end
if not _v1lc then return end
_v1lb = math.min(_v1lb or 0.016, 0.1)
if _v1kz == _pguo("0yFE6cH7") then
local _v1ld = _v4.SAVE_FLY_SPEED * _v1lb
local _v1le = _v1l3 and math.min(_v1l0.Y + _v1ld, _v1l4)
or math.max(_v1l0.Y - _v1ld, _v1l4)
_v1l0 = Vector3.new(_v1l0.X, _v1le, _v1l0.Z)
_v1l9 = CFrame.new(_v1l0) * _v1l2
if (_v1l3 and _v1le >= _v1l4) or (not _v1l3 and _v1le <= _v1l4) then
_v1ki = _v1l9
if not _v1l3 then
_v1kl()
local _v1lf = Instance.new(_pguo("7i9A9A=="))
_v1lf.Anchored = true; _v1lf.CanCollide = true
_v1lf.Size = Vector3.new(80, 4, 80); _v1lf.Transparency = 1
_v1lf.CFrame = CFrame.new(_v1l0 - Vector3.new(0, 6, 0))
_v1lf.Parent = workspace
_v1kh = _v1lf
end
_v1kz = _pguo("zidc7sr4")
end
else
if _v1ki then _v1l9 = _v1ki end
end
if _v1kz == _pguo("zidc7sr4") and _v4.SAVE_ALLOW_REST then _v1kq(false)
elseif _v1kz ~= _pguo("zidc7sr4") then _v1kq(true) end
if _v1kz == _pguo("zidc7sr4") and _v4.saveIsResting() then
pcall(function() if not _v1lc.Anchored then _v1lc.Anchored = true end end)
return
end
pcall(function()
if _v1kz == _pguo("zidc7sr4") then
if not _v1lc.Anchored then _v1lc.Anchored = true end
elseif _v1lc.Anchored then _v1lc.Anchored = false end
_v1lc.CFrame = _v1l9
_v1lc.AssemblyLinearVelocity = Vector3.zero
_v1lc.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v1lg()
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v1lh = _v1kk
if not (_v1lh and _v1lh.Parent) then return end
if _v1kz == _pguo("zidc7sr4") and _v4.saveIsResting() then
pcall(function() if not _v1lh.Anchored then _v1lh.Anchored = true end end)
return
end
pcall(function()
if _v1kz == _pguo("zidc7sr4") and _v1ki then
if not _v1lh.Anchored then _v1lh.Anchored = true end
if (_v1lh.Position - _v1ki.Position).Magnitude > 5 then
_v1kq(true)
_v1lh.CFrame = _v1ki
elseif math.abs(_v1lh.Position.Y - _v1ki.Position.Y) > 1 then
_v1lh.CFrame = _v1ki
end
end
_v1lh.CFrame = _v1l9
_v1lh.AssemblyLinearVelocity = Vector3.zero
_v1lh.AssemblyAngularVelocity = Vector3.zero
end)
end
table.insert(_v1kj, _v1.RenderStepped:Connect(_v1la))
table.insert(_v1kj, _v1.Heartbeat:Connect(_v1lg))
if _v1kf then pcall(function() _v1kf:Set(true) end) end
pcall(function() _v1k1:Notify(_pguo("7S9E5Y/YaRbRdBI=") .. (_v1l3 and _pguo("zCdB6cH7IBHQOl2g2/RlWM0lSw==") or _pguo("2idE6cH7IA3QKlfyj+hoHZ4jU/A="))) end)
end
function _v4.saveReturnFlight()
if _v4.saveReturning then return end
_v4.saveReturning = true
local ok = pcall(function()
local _v1li = _v4.saveOriginCF
local _v1lj = _vfn()
if not (_v1lj and _v1lj.Parent) then return end
local _v1lk = 3
pcall(function() _v1lk = _v1lj.Size.Y * 0.5 end)
local _v1ll = _v1li and _v1li.Position or _v1lj.Position
local _v1lm
do
local _v1ln = _v1li or _v1lj.CFrame
local _v1lo = _v1ln.LookVector
local _v1lp = Vector3.new(_v1lo.X, 0, _v1lo.Z)
_v1lm = (_v1lp.Magnitude > 0.01)
and CFrame.lookAt(Vector3.new(), _v1lp.Unit)
or CFrame.new()
end
local _v1lq = RaycastParams.new()
_v1lq.FilterType = Enum.RaycastFilterType.Exclude
_v1lq.FilterDescendantsInstances = { _v2.Character, _v1kh }
local _v1lr = workspace:Raycast(_v1ll + Vector3.new(0, 300, 0), Vector3.new(0, -2500, 0), _v1lq)
local _v1ls = _v1lr and _v1lr.Position.Y or _v1ll.Y
local _v1lt = Vector3.new(_v1ll.X, _v1ls + _v1lk + 0.5, _v1ll.Z)
local _v1lu = Vector3.new(_v1ll.X, math.max(_v1lj.Position.Y, _v1ls + 40), _v1ll.Z)
pcall(function() _v1lj.Anchored = false end)
local _v1lv = _v4.SAVE_FLY_SPEED or 250
local function _v1lw(_v1lx, _v1ly)
local _v1lz = os.clock() + (_v1ly or 10)
* math.max(1, _v1lv / math.max(_v4.govCeiling(), 1))
while not _v4.UNLOADED and not _v4.SAVE_DINO_ACTIVE and os.clock() < _v1lz do
local _v1m0 = _vfn()
if not (_v1m0 and _v1m0.Parent) then return end
local _v1m1 = _v1lx - _v1m0.Position
if _v1m1.Magnitude < 3 then return end
local _v1m2 = _v4.govNext(_v1m0.Position, _v1lx, 0.03, _v1lv)
pcall(function()
_v1m0.CFrame = CFrame.new(_v1m2) * _v1lm
_v1m0.AssemblyLinearVelocity = Vector3.zero
_v1m0.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
end
_v1lw(_v1lu, 12)
if _v4.SAVE_DINO_ACTIVE then return end
_v1lw(_v1lt, 8)
if _v4.SAVE_DINO_ACTIVE then return end
local _v1m3 = _vfn()
if _v1m3 and _v1m3.Parent then
pcall(function()
_v1m3.CFrame = CFrame.new(_v1lt + Vector3.new(0, 1, 0)) * _v1lm
_v1m3.AssemblyLinearVelocity = Vector3.zero
_v1m3.AssemblyAngularVelocity = Vector3.zero
_v1m3.Anchored = true
end)
task.wait(0.2)
pcall(function()
_v1m3.Anchored = false
_v1m3.AssemblyLinearVelocity = Vector3.zero
_v1m3.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.3)
pcall(function()
local _v1m4 = RaycastParams.new()
_v1m4.FilterType = Enum.RaycastFilterType.Exclude
_v1m4.FilterDescendantsInstances = { _v2.Character }
local _v1m5 = workspace:Raycast(_v1m3.Position + Vector3.new(0, 20, 0), Vector3.new(0, -400, 0), _v1m4)
if _v1m5 then
local _v1m6 = _v1m3.Position.Y - (_v1m5.Position.Y + _v1lk)
if _v1m6 < -0.5 or _v1m6 > 3 then
_v1m3.CFrame = CFrame.new(_v1m5.Position + Vector3.new(0, _v1lk + 0.5, 0)) * _v1lm
_v1m3.AssemblyLinearVelocity = Vector3.zero
end
end
end)
end
_v1ke = false
_v1kq(false)
pcall(function()
local _v1m7 = _v2.Character
if _v1m7 then _v1m7:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end
end)
pcall(function() _v1k1:Notify(_pguo("+idc74/uZRTbL0Hly7wtWMwrRvXd8mUcnjpdoNbzdQqePVP2yvggC84hRg==")) end)
end)
if not ok then
_v1ke = false
_v1kq(false)
pcall(function()
local _v1m8 = _v2.Character
if _v1m8 then
_v1m8:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil)
local _v1m9 = _vfn()
if _v1m9 then _v1m9.Anchored = false end
end
end)
pcall(function() _v1k1:Notify(_pguo("+idc74/uZRTbL0Hly7wtWN0hR+zLvG4Xym5U7Na8YhndJR6g1vN1WN88V6DY9GUK225L79q8cw3MKFPjyvg=")) end)
end
_v4.saveReturning = false
end
function _v4.releaseDino()
if not _v4.SAVE_DINO_ACTIVE then return end
_v4.SAVE_DINO_ACTIVE = false
_v1kt()
_v1ki = nil
_v1kk = nil
_v1kl()
_v1kg = false
_v1kq(true)
task.spawn(function() _v4.saveReturnFlight() end)
_v1kk = nil
_v1ke = true
task.delay(_v4.SAVE_RELEASE_GRACE, function()
_v1ke = false
local _v1ma = _v2.Character
_v1kp = false
if _v1ma then pcall(function() _v1ma:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then
if _v1ma then pcall(function() _v1ma:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), nil) end) end
end
end)
if _v1kf then pcall(function() _v1kf:Set(false) end) end
pcall(function() _v1k1:Notify(_pguo("+idc74/uZRTbL0Hly7wtWNgiS+nB+yAa3y1ZoNvzIAHRO0Cg3P12HdpuQfDA6A==")) end)
end
table.insert(_vz, _v2.CharacterAdded:Connect(function()
_v1kt()
_v1ki = nil
_v1kk = nil
_v1kl()
_v4.SAVE_DINO_ACTIVE = false
_v1ke = false
_v1kp = false
_v4.saveReturning = false
_v4.saveOriginCF = nil
_v4.csCache = nil
_v1kg = true
if _v1kf then pcall(function() _v1kf:Set(false) end) end
end))
_v4.addStep(10, function()
if not _v4.AUTO_SAVE or _v4.AUTO_SAVE_PCT <= 0 or (_v4.AFK_FARM and _v4.AFK_FARM_SAFETY) then return end
local _v1mb = _v2.Character
if not _v1mb then return end
local _v1mc = _v1mb:GetAttribute(_pguo("9itT7Nv0"))
local _v1md = _v1mb:GetAttribute(_pguo("8y9KyMr9bAzW"))
if type(_v1mc) ~= _pguo("0Dtf4sru") or type(_v1md) ~= _pguo("0Dtf4sru") or _v1md <= 0 then return end
if _v1mc <= 0 then return end
if _v4.AUTO_SAVE_BLEED then
local _v1me = _vgt()
local _v1mf = _v1me and _v4.bleedForecast[_v1me] or 0
if type(_v1mf) == _pguo("0Dtf4sru") and _v1mf > 0 then _v1mc = math.max(0, _v1mc - _v1mf) end
end
local _v1mg = (_v1mc / _v1md) * 100
if _v1mg <= _v4.AUTO_SAVE_PCT then
if _v1kg and not _v4.SAVE_DINO_ACTIVE then
_v1kg = false
_v1kw()
end
else
_v1kg = true
end
end)
function _v4.applyFallImmunity(_v1mh)
local _v1mi = _v2.Character
if _v1mi then pcall(function() _v1mi:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), _v1mh and true or nil) end) end
end
_v4.addStep(5, function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE or _v1ke
or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM
or os.clock() < (_v4.flyLandUntil or 0)) then return end
local _v1mj = _v2.Character
if _v1mj and _v1mj:GetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3")) ~= true then
pcall(function() _v1mj:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), true) end)
end
local _v1mk = (_v4.SAVE_DINO_ACTIVE and _v1kp) or _v1ke
if _v1mk and _v1mj and _v1mj:GetAttribute(_pguo("6ite5d/zcgzXIFU=")) ~= true then
pcall(function() _v1mj:SetAttribute(_pguo("6ite5d/zcgzXIFU="), true) end)
end
end)
_v4.blurOff = setmetatable({}, { __mode = "k" })
_v4.blurHooked = setmetatable({}, { __mode = "k" })
function _v4.killBlur(_v1ml)
if typeof(_v1ml) ~= _pguo("9yBB9M7yYx0=") or not _v1ml:IsA(_pguo("/CJH8ur6Zh3dOg==")) then return end
if not _v4.blurHooked[_v1ml] then
_v4.blurHooked[_v1ml] = true
pcall(function()
table.insert(_vz, _v1ml:GetPropertyChangedSignal(_pguo("+yBT4sP5ZA==")):Connect(function()
if _v4.NO_BLUR and _v1ml.Enabled then _v4.killBlur(_v1ml) end
end))
end)
end
pcall(function()
if _v1ml.Enabled then _v4.blurOff[_v1ml] = true; _v1ml.Enabled = false end
if _v1ml.Size ~= 0 then _v1ml.Size = 0 end
end)
end
function _v4.sweepBlur()
pcall(function()
for _v1mm, _v1mn in ipairs(_vei:GetDescendants()) do _v4.killBlur(_v1mn) end
end)
pcall(function()
local _v1mo = workspace.CurrentCamera
if _v1mo then for _v1mp, _v1mq in ipairs(_v1mo:GetChildren()) do _v4.killBlur(_v1mq) end end
end)
end
function _v4.restoreBlur()
for _v1mr in pairs(_v4.blurOff) do
pcall(function() if _v1mr.Parent then _v1mr.Enabled = true end end)
end
_v4.blurOff = setmetatable({}, { __mode = "k" })
end
pcall(function()
table.insert(_vz, _vei.DescendantAdded:Connect(function(_v1ms)
if _v4.NO_BLUR then _v4.killBlur(_v1ms) end
end))
end)
do
local _v1mt = nil
local function _v1mu()
pcall(function() if _v1mt then _v1mt:Disconnect() end end)
local _v1mv = workspace.CurrentCamera
if not _v1mv then return end
_v1mt = _v1mv.ChildAdded:Connect(function(_v1mw) if _v4.NO_BLUR then _v4.killBlur(_v1mw) end end)
table.insert(_vz, _v1mt)
if _v4.NO_BLUR then _v4.sweepBlur() end
end
_v1mu()
table.insert(_vz,
workspace:GetPropertyChangedSignal(_pguo("/TtA8srydDvfI1fyzg==")):Connect(_v1mu))
end
_v4.addStep(3, function()
if not _v4.NO_BLUR then return end
_v4.sweepBlur()
end)
local _v1mx = nil
local _v1my = false
table.insert(_vz, _v4.UIS.InputBegan:Connect(function(_v1mz, _v1n0)
if _v4.UNLOADED or _v1n0 then return end
local _v1n1 = _v1mx and _v1mx.Key
if _v1n1 and _v1n1 ~= Enum.KeyCode.Unknown and _v1mz.KeyCode == _v1n1 then _v1my = true end
end))
table.insert(_vz, _v4.UIS.InputEnded:Connect(function(_v1n2)
local _v1n3 = _v1mx and _v1mx.Key
if _v1n3 and _v1n2.KeyCode == _v1n3 then _v1my = false end
end))
function _v4.instaTurnStep()
if _v4.UNLOADED or not (_v1my or _v4.mob.insta) then return end
local _v1n4 = _vfn()
local _v1n5 = workspace.CurrentCamera
if not (_v1n4 and _v1n5) then return end
local _v1n6 = _v1n5.CFrame.LookVector
local _v1n7 = Vector3.new(_v1n6.X, 0, _v1n6.Z)
if _v1n7.Magnitude < 0.01 then return end
pcall(function()
_v1n4.CFrame = CFrame.lookAt(_v1n4.Position, _v1n4.Position + _v1n7.Unit)
_v1n4.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.instaTurnStep)
table.insert(_vz, _v1.RenderStepped:Connect(_v4.instaTurnStep))
_v4.TURN_SPEED = 250
_v4.QUICK_TURN = false
function _v4.turnAssistStep(_v1n8)
if _v4.UNLOADED or not _v4.QUICK_TURN or _v4.TURN_SPEED <= 0 then return end
if _v1my or _v4.mob.insta then return end
if _v4.UIS:GetFocusedTextBox() then return end
local _v1n9 = 0
if _v4.UIS:IsKeyDown(Enum.KeyCode.A) or _v4.mob.turnL then _v1n9 = _v1n9 + 1 end
if _v4.UIS:IsKeyDown(Enum.KeyCode.D) or _v4.mob.turnR then _v1n9 = _v1n9 - 1 end
if _v1n9 == 0 then return end
local _v1na = _vfn()
if not _v1na then return end
local _v1nb = math.rad(_v4.TURN_SPEED) * (_v1n8 or 1 / 60) * _v1n9
pcall(function()
_v1na.CFrame = _v1na.CFrame * CFrame.Angles(0, _v1nb, 0)
_v1na.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.turnAssistStep)
table.insert(_vz, _v1.RenderStepped:Connect(_v4.turnAssistStep))
_v4.NO_ATK_CD = false
_v4.NO_ATK_COOLDOWN = false
_v4.ATTACK_SPEED = 3
local _v1nc = {}
_v4.animatorCache = setmetatable({}, { __mode = "k" })
function _v4.getAnimator()
local _v1nd = _v2.Character
if not _v1nd then return nil end
local _v1ne = _v4.animatorCache[_v1nd]
if _v1ne and _v1ne.Parent then return _v1ne end
local _v1nf = _v1nd:FindFirstChildOfClass(_pguo("9jtf4cHzaRw="))
local _v1ng = _v1nf and _v1nf:FindFirstChildOfClass(_pguo("/yBb7c7obwo="))
if not _v1ng then _v1ng = _v1nd:FindFirstChildWhichIsA(_pguo("/yBb7c7obwo="), true) end
_v4.animatorCache[_v1nd] = _v1ng
return _v1ng
end
function _v4.restoreAttackSpeed()
for _v1nh, _v1ni in pairs(_v1nc) do
pcall(function() if _v1nh.IsPlaying then _v1nh:AdjustSpeed(1) end end)
end
_v1nc = {}
end
_v4.addStep(2, function()
if not _v4.NO_ATK_CD then return end
local _v1nj = _v4.getAnimator()
if not _v1nj then return end
pcall(function()
for _v1nk, _v1nl in ipairs(_v1nj:GetPlayingAnimationTracks()) do
if _v1nl.Priority == Enum.AnimationPriority.Action4 and _v1nl.Speed ~= _v4.ATTACK_SPEED then
_v1nl:AdjustSpeed(_v4.ATTACK_SPEED)
_v1nc[_v1nl] = true
end
end
end)
end)
do
local _v1nm, _v1nn = pcall(function() return require(_v4.WATER_RS.Common.CharacterState) end)
if _v1nm and _v1nn then
_v4.addStep(1, function()
if not _v4.NO_ATK_COOLDOWN or _v4.UNLOADED then return end
pcall(function()
if type(_v1nn.Growth) == _pguo("yi9Q7Mo=") and _v1nn.Growth.attackCooldownMultiplier ~= nil then
_v1nn.Growth.attackCooldownMultiplier = 0
end
end)
end)
end
end
local _v1no, _v1np = nil, nil
local _v1nq = false
_v4.ZOOM_FAR = nil
function _v4.resolveZoomFar(_v1nr)
if _v4.ZOOM_FAR and not _v1nr then return _v4.ZOOM_FAR end
for _v1ns, _v1nt in ipairs({ 1e6, 1e5, 5e4, 1e4, 5000, 2000 }) do
local _v1nu = pcall(function() _v2.CameraMaxZoomDistance = _v1nt end)
if _v1nu then
local _v1nv = _v2.CameraMaxZoomDistance
if type(_v1nv) == _pguo("0Dtf4sru") and _v1nv > 0 then _v4.ZOOM_FAR = _v1nv; return _v4.ZOOM_FAR end
end
end
_v4.ZOOM_FAR = 2000
return _v4.ZOOM_FAR
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
_v4.zoomProbeAt = 0
local function _v1nw()
local _v1nx = workspace.CurrentCamera
if not _v1nx then return nil end
local _v1ny, _v1nz = pcall(function()
return (_v1nx.CFrame.Position - _v1nx.Focus.Position).Magnitude
end)
if not _v1ny or type(_v1nz) ~= _pguo("0Dtf4sru") or _v1nz ~= _v1nz or _v1nz <= 0 then return nil end
return _v1nz
end
function _v4.setZoomRange(_v1o0, _v1o1)
pcall(function()
if _v2.CameraMaxZoomDistance ~= _v1o1 then _v2.CameraMaxZoomDistance = _v1o1 end
if _v2.CameraMinZoomDistance ~= _v1o0 then _v2.CameraMinZoomDistance = _v1o0 end
end)
end
function _v4.applyZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v1o2 = _v4.zoomWant or _v4.zoomTarget or _v1nw() or 20
_v4.zoomWant = _v1o2
local _v1o3 = _v4.ZOOM_FAR or 2000
local _v1o4 = math.clamp(_v1o2, 0.5, _v1o3)
_v4.setZoomRange(_v1o4, _v1o4)
local _v1o5 = _v2.CameraMaxZoomDistance
if type(_v1o5) == _pguo("0Dtf4sru") and _v1o5 > 0 and _v1o5 < _v1o4 - 1 then
_v4.setZoomRange(_v1o5, _v1o5)
_v4.zoomTarget = _v1o5
if os.clock() - (_v4.zoomProbeAt or 0) > 1 then
_v4.zoomProbeAt = os.clock()
_v4.resolveZoomFar(true)
end
else
_v4.zoomTarget = _v1o4
end
end
_v4.zoomFailFrames = 0
function _v4.enforceZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v1o6 = _v4.zoomTarget
local _v1o7 = workspace.CurrentCamera
if not (_v1o6 and _v1o7) then return end
local _v1o8 = false
pcall(function() _v1o8 = (_v1o7.CameraType == Enum.CameraType.Scriptable) end)
if _v1o8 then _v4.zoomFailFrames = 0 return end
local _v1o9 = _v1nw()
if not _v1o9 or math.abs(_v1o9 - _v1o6) <= 1.5 then _v4.zoomFailFrames = 0 return end
_v4.zoomFailFrames = _v4.zoomFailFrames + 1
if _v4.zoomFailFrames < 3 then return end
pcall(function()
local _v1oa = _v1o7.Focus.Position
local _v1ob = _v1o7.CFrame.LookVector
if _v1ob.Magnitude < 0.01 then return end
_v1o7.CFrame = CFrame.lookAt(_v1oa - _v1ob.Unit * _v1o6, _v1oa)
end)
end
pcall(function()
table.insert(_vz, _v4.UIS.InputChanged:Connect(function(_v1oc)
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
if _v1oc.UserInputType == Enum.UserInputType.MouseWheel then
local _v1od = _v4.ZOOM_FAR or 2000
local _v1oe = _v4.zoomWant or _v4.zoomTarget or _v1nw() or 20
local _v1of = math.max(3, _v1oe * 0.12)
_v1oe = math.clamp(_v1oe - _v1oc.Position.Z * _v1of, 0.5, _v1od)
_v4.zoomWant = _v1oe
_v4.zoomTarget = _v1oe
_v4.setZoomRange(_v1oe, _v1oe)
end
end))
end)
function _v4.bindZoom()
if _v1nq then return end
if _v1no == nil then
_v1no = _v2.CameraMaxZoomDistance
_v1np = _v2.CameraMinZoomDistance
end
_v4.resolveZoomFar(true)
_v4.zoomTarget = _v1nw() or _v4.zoomTarget or 20
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
_v1nq = true
end
function _v4.restoreZoom()
if _v1nq then
pcall(function() _v1:UnbindFromRenderStep(_pguo("+xRt1cHwaRXXOlfk9fNvFQ==")) end)
pcall(function() _v1:UnbindFromRenderStep(_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg==")) end)
_v1nq = false
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
if _v1no ~= nil then
pcall(function()
_v2.CameraMinZoomDistance = _v1np
_v2.CameraMaxZoomDistance = _v1no
end)
end
end
table.insert(_vz,
_v2:GetPropertyChangedSignal(_pguo("/S9f5d39TRnGFF3vwthpC8ovXOPK")):Connect(_v4.applyZoom))
_v4.FOV_ENABLED = false
_v4.FOV_VALUE = 70
local _v1og = nil
local _v1oh = false
function _v4.applyFOV()
if _v4.UNLOADED or not _v4.FOV_ENABLED then return end
local _v1oi = workspace.CurrentCamera
if not _v1oi then return end
pcall(function()
if _v1oi.CameraType == Enum.CameraType.Scriptable then return end
local _v1oj = math.clamp(_v4.FOV_VALUE or 70, 1, 120)
if math.abs(_v1oi.FieldOfView - _v1oj) > 0.01 then _v1oi.FieldOfView = _v1oj end
end)
end
function _v4.bindFOV()
if _v1oh then return end
if _v1og == nil then
pcall(function() _v1og = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView end)
end
pcall(function()
_v1:BindToRenderStep(_pguo("+xRtxuDK"), Enum.RenderPriority.Camera.Value + 1, _v4.applyFOV)
end)
_v1oh = true
end
function _v4.restoreFOV()
if _v1oh then
pcall(function() _v1:UnbindFromRenderStep(_pguo("+xRtxuDK")) end)
_v1oh = false
end
if _v1og ~= nil then
pcall(function()
local _v1ok = workspace.CurrentCamera
if _v1ok then _v1ok.FieldOfView = _v1og end
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
local _v1ol = {}
pcall(function()
local _v1om = workspace:FindFirstChild(_pguo("/Cdd7crv"))
if not _v1om then return end
for _v1on, _v1oo in ipairs(_v1om:GetChildren()) do
if _v1oo.Name ~= _pguo("/C9A8sb5cg==") then _v1ol[#_v1ol + 1] = _v1oo.Name end
end
end)
table.sort(_v1ol)
return _v1ol
end
function _v4.biomePoint(_v1op)
if _v4.BIOME_POINTS[_v1op] then return _v4.BIOME_POINTS[_v1op] end
if _v4.biomePointCache[_v1op] then return _v4.biomePointCache[_v1op] end
local _v1oq
pcall(function()
local _v1or = workspace:FindFirstChild(_pguo("/Cdd7crv"))
local _v1os = _v1or and _v1or:FindFirstChild(_v1op)
if not _v1os then return end
local _v1ot, _v1ou, _v1ov = {}, Vector3.new(), 0
local _v1ow, _v1ox = 400, 6
local function _v1oy(_v1oz, _v1p0)
if _v1p0 > _v1ox or _v1ov >= _v1ow then return end
for _v1p1, _v1p2 in ipairs(_v1oz:GetChildren()) do
if _v1ov >= _v1ow then return end
if _v1p2:IsA(_pguo("/C9B5f/9cgw=")) then
_v1ot[#_v1ot + 1] = _v1p2.Position; _v1ou = _v1ou + _v1p2.Position; _v1ov = _v1ov + 1
elseif _v1p2:IsA(_pguo("8yFW5cM=")) then
pcall(function()
local _v1p3 = _v1p2:GetPivot().Position
_v1ot[#_v1ot + 1] = _v1p3; _v1ou = _v1ou + _v1p3; _v1ov = _v1ov + 1
end)
_v1oy(_v1p2, _v1p0 + 1)
elseif _v1p2:IsA(_pguo("+CFe5Mru")) then
_v1oy(_v1p2, _v1p0 + 1)
end
end
end
_v1oy(_v1os, 1)
if _v1ov == 0 then return end
local _v1p4 = _v1ou / _v1ov
local _v1p5 = RaycastParams.new()
_v1p5.FilterType = Enum.RaycastFilterType.Exclude
_v1p5.FilterDescendantsInstances = { _v2.Character, workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l")) }
local _v1p6 = { _v1p4 }
local _v1p7 = math.max(1, math.floor(#_v1ot / 12))
for _v1p8 = 1, #_v1ot, _v1p7 do
_v1p6[#_v1p6 + 1] = _v1ot[_v1p8]
if #_v1p6 >= 14 then break end
end
for _v1p9, _v1pa in ipairs(_v1p6) do
local _v1pb
pcall(function()
_v1pb = workspace:Raycast(Vector3.new(_v1pa.X, _v1pa.Y + 2000, _v1pa.Z),
Vector3.new(0, -6000, 0), _v1p5)
end)
if _v1pb and _v1pb.Material ~= Enum.Material.Water then
_v1oq = Vector3.new(_v1pa.X, _v1pb.Position.Y, _v1pa.Z)
break
end
end
if not _v1oq then _v1oq = _v1p4 end
end)
if _v1oq then _v4.biomePointCache[_v1op] = _v1oq end
return _v1oq
end
function _v4.travelToBiome(_v1pc)
if _v4.biomeTravelling then return end
_v4.biomeTravelling = true
local finished = pcall(function()
local _v1pd = _v4.biomePoint(_v1pc)
if not _v1pd then
pcall(function() _v1k1:Notify(_pguo("/Cdd7cq8VB3SK0Lv3eg6WN0hR+zLvG4Xym5U6cH4IA==") .. tostring(_v1pc)) end)
return
end
local _v1pe = _vfn()
if not (_v1pe and _v1pe.Parent) then
pcall(function() _v1k1:Notify(_pguo("/Cdd7cq8VB3SK0Lv3eg6WNAhEuPH/XIZ3TpX8o/6bw3QKg==")) end)
return
end
local _v1pf = 3
pcall(function() _v1pf = _v1pe.Size.Y * 0.5 end)
local _v1pg = _v1pe.CFrame.LookVector
local _v1ph = Vector3.new(_v1pg.X, 0, _v1pg.Z)
local _v1pi = (_v1ph.Magnitude > 0.01) and CFrame.lookAt(Vector3.new(), _v1ph.Unit) or CFrame.new()
local _v1pj = _v2.Character
pcall(function()
if _v1pj then _v1pj:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), true); _v1pj:SetAttribute(_pguo("6ite5d/zcgzXIFU="), true) end
_v1pe.Anchored = false
end)
local _v1pk = _v4.BIOME_SPEED or 5000
local _v1pl = math.max(_v1pe.Position.Y, _v1pd.Y) + 250
local function _v1pm(_v1pn, _v1po)
local _v1pp = math.max(math.min(_v1pk, _v4.GOVERNOR and _v4.govCeiling() or _v1pk), 1)
return (_v1po - _v1pn).Magnitude / _v1pp * 1.6 + 8
end
local function _v1pq(_v1pr, _v1ps)
local _v1pt = _vfn()
if not (_v1pt and _v1pt.Parent) then return end
local _v1pu = os.clock() + (_v1ps or _v1pm(_v1pt.Position, _v1pr))
while not _v4.UNLOADED and _v4.BIOME_TRAVEL and os.clock() < _v1pu do
local _v1pv = _vfn()
if not (_v1pv and _v1pv.Parent) then return end
if _v1pj then pcall(function() _v1pj:SetAttribute(_pguo("6ite5d/zcgzXIFU="), true) end) end
if (_v1pr - _v1pv.Position).Magnitude < 8 then return end
local _v1pw = _v4.govNext(_v1pv.Position, _v1pr, 0.03, _v1pk)
pcall(function()
_v1pv.CFrame = CFrame.new(_v1pw) * _v1pi
_v1pv.AssemblyLinearVelocity = Vector3.zero
_v1pv.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.03)
end
end
_v1pq(Vector3.new(_v1pe.Position.X, _v1pl, _v1pe.Position.Z))
if not _v4.BIOME_TRAVEL then return end
_v1pq(Vector3.new(_v1pd.X, _v1pl, _v1pd.Z))
if not _v4.BIOME_TRAVEL then return end
_v1pq(Vector3.new(_v1pd.X, _v1pd.Y + _v1pf + 1, _v1pd.Z))
if not _v4.BIOME_TRAVEL then return end
local _v1px = _vfn()
if _v1px and _v1px.Parent then
pcall(function()
_v1px.CFrame = CFrame.new(_v1pd + Vector3.new(0, _v1pf + 1, 0)) * _v1pi
_v1px.AssemblyLinearVelocity = Vector3.zero
_v1px.AssemblyAngularVelocity = Vector3.zero
_v1px.Anchored = true
end)
task.wait(0.2)
pcall(function()
_v1px.Anchored = false
_v1px.AssemblyLinearVelocity = Vector3.zero
_v1px.AssemblyAngularVelocity = Vector3.zero
end)
task.wait(0.3)
pcall(function()
local _v1py = RaycastParams.new()
_v1py.FilterType = Enum.RaycastFilterType.Exclude
_v1py.FilterDescendantsInstances = { _v2.Character }
local _v1pz = workspace:Raycast(_v1px.Position + Vector3.new(0, 20, 0), Vector3.new(0, -400, 0), _v1py)
if _v1pz then
local _v1q0 = _v1px.Position.Y - (_v1pz.Position.Y + _v1pf)
if _v1q0 < -0.5 or _v1q0 > 3 then
_v1px.CFrame = CFrame.new(_v1pz.Position + Vector3.new(0, _v1pf + 0.5, 0)) * _v1pi
_v1px.AssemblyLinearVelocity = Vector3.zero
end
end
end)
end
pcall(function() _v1k1:Notify(_pguo("/zxA6dn5ZEKe") .. tostring(_v1pc)) end)
end)
pcall(function()
local _v1q1 = _v2.Character
if _v1q1 then _v1q1:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end
local _v1q2 = _vfn()
if _v1q2 then _v1q2.Anchored = false end
end)
task.delay(6, function()
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM or _v4.SAVE_DINO_ACTIVE) then
local _v1q3 = _v2.Character
if _v1q3 then pcall(function() _v1q3:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), nil) end) end
end
end)
if not finished then
pcall(function() _v1k1:Notify(_pguo("/Cdd7cq8VB3SK0Lv3eg6WMomV6Db7mkInihT6cP5ZFiTbkvv2rxhCttuRejK7mVYxyFHoNzobwjOK1Y=")) end)
end
_v4.biomeTravelling = false
_v4.BIOME_TRAVEL = false
if _v4.biomeToggle then pcall(function() _v4.biomeToggle:Set(false) end) end
end
_v4.fossilFarmToggle = nil
_v4.FOSSIL_FARM_SPEED = 50
local function _v1q4(_v1q5)
for _v1q6, _v1q7 in ipairs(_v1q5:GetDescendants()) do
if _v1q7:IsA(_pguo("7jxd+MbxaQzHHkDvwux0")) and _v1q7.Name == _pguo("+CFB88bw") then return _v1q7 end
end
return nil
end
function _v4.fossilPosOf(_v1q8)
local _v1q9, _v1qa = pcall(function() return _v1q8:GetPivot().Position end)
if _v1q9 then return _v1qa end
return nil
end
function _v4.nearestFossil(_v1qb)
local _v1qc = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if not _v1qc then return nil end
local _v1qd, _v1qe
for _v1qf, _v1qg in ipairs(_v1qc:GetChildren()) do
local _v1qh = _v1q4(_v1qg)
local _v1qi = _v4.ffSkip and _v4.ffSkip[_v1qg]
if _v1qh and _v1qh.Enabled ~= false and not (_v1qi and _v1qi > os.clock()) then
local _v1qj = _v4.fossilPosOf(_v1qg)
if _v1qj and _v1qj.Magnitude > 1 then
local _v1qk = (_v1qj - _v1qb).Magnitude
if not _v1qe or _v1qk < _v1qe then _v1qd, _v1qe = _v1qg, _v1qk end
end
end
end
return _v1qd
end
function _v4.isolatePrompt(_v1ql, _v1qm)
local _v1qn = {}
local _v1qo = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if not _v1qo then return _v1qn end
for _v1qp, _v1qq in ipairs(_v1qo:GetChildren()) do
local _v1qr = _v1q4(_v1qq)
if _v1qr and _v1qr ~= _v1ql and _v1qr.Enabled then
local _v1qs, _v1qt = pcall(function() return _v1qr.Parent.Position end)
if (not _v1qs) or (_v1qt - _v1qm).Magnitude < 80 then
pcall(function() _v1qr.Enabled = false end)
table.insert(_v1qn, _v1qr)
end
end
end
return _v1qn
end
function _v4.restorePrompts(_v1qu)
for _v1qv, _v1qw in ipairs(_v1qu) do pcall(function() if _v1qw and _v1qw.Parent then _v1qw.Enabled = true end end) end
end
function _v4.autoSpawnCleanup()
for _v1qx, _v1qy in ipairs(_v4.AUTO_SPAWN_DRAWS) do pcall(function() _v1qy:Remove() end) end
table.clear(_v4.AUTO_SPAWN_DRAWS)
_v4.AUTO_SPAWN = false
_v4.AUTO_SPAWN_TARGET = nil
_v4.AUTO_SPAWN_GENDER = nil
_v4.AUTO_SPAWN_ATTEMPTS = 0
end
function _v4.autoSpawnCleanupGUI()
local _v1qz = _v2.PlayerGui
pcall(function()
local _v1r0 = _v1qz:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="))
if _v1r0 then _v1r0:Destroy() end
end)
pcall(function()
local _v1r1 = _v1qz:FindFirstChild(_pguo("8y9b7uL5bg35O1s="))
if _v1r1 then _v1r1:Destroy() end
end)
pcall(function()
local _v1r2 = _v1qz:FindFirstChild(_pguo("8iFT5MbyZz/LJw=="))
if _v1r2 then _v1r2:Destroy() end
end)
end
function _v4.autoSpawnGetDinoName()
local _v1r3 = _v2.PlayerGui:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="))
if not _v1r3 then return nil end
local _v1r4 = _v1r3:FindFirstChild(_pguo("6iFCxt39bR0="))
if not _v1r4 then return nil end
local _v1r5 = _v1r4:FindFirstChild(_pguo("+itG4cbwcw=="))
if not _v1r5 then return nil end
local _v1r6 = _v1r5:FindFirstChild(_pguo("+idc79z9dQrwL1/l"))
if _v1r6 and _v1r6.Text ~= "" then return _v1r6.Text end
return nil
end
function _v4.autoSpawnGetGender()
local _v1r7 = _v2.PlayerGui:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="))
if not _v1r7 then return _pguo("8y9e5Q==") end
local ok, result = pcall(function()
local _v1r8 = _v1r7.LeftFrame.Customizer.Frame.Gender.Frame
local _v1r9 = _v1r8:FindFirstChild(_pguo("8y9e5e3pdAzRIA=="))
if _v1r9 then
local _v1ra = _v1r9:FindFirstChild(_pguo("6wdh9N3zax0="))
if _v1ra and _v1ra.Color.G > 0.8 then return _pguo("8y9e5Q==") end
end
return _pguo("+Ctf4cP5")
end)
return ok and result or _pguo("8y9e5Q==")
end
function _v4.autoSpawnIsAlive()
local _v1rb = _v2.Character
if not _v1rb then return false end
local _v1rc = _v1rb:FindFirstChildOfClass(_pguo("9jtf4cHzaRw="))
return _v1rc and _v1rc.Health > 0
end
function _v4.startAutoSpawn()
_v4.autoSpawnCleanup()
_v4.AUTO_SPAWN = true
_v4.AUTO_SPAWN_ATTEMPTS = 0
_v4.AUTO_SPAWN_TARGET = _v4.autoSpawnGetDinoName()
_v4.AUTO_SPAWN_GENDER = _v4.autoSpawnGetGender()
if not _v4.AUTO_SPAWN_TARGET then
pcall(function() _v1k1:Notify(_pguo("/ztG74/PcBnJIAigwOxlFp4qW+7AvHMd0itR9MbzbljfIFag3/VjE54vEuTG8m9Y2CdA89s="), 5) end)
_v4.AUTO_SPAWN = false
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
pcall(function() _v1k1:Notify(_pguo("/ztG74/PcBnJIAigw/NjE9sqEu/BvA==") .. _v4.AUTO_SPAWN_TARGET .. " (" .. _v4.AUTO_SPAWN_GENDER .. _pguo("l27QADu8cwjfI1/pwfsgKts/R+Xc6FMU0To="), 5) end)
local _v1rd = _v4.AUTO_SPAWN_DRAWS
local function _v1re(_v1rf)
local _v1rg = Drawing.new(_pguo("6itK9A=="))
_v1rg.Visible = true
_v1rg.Color = _v1rf.Color or Color3.fromRGB(255, 255, 255)
_v1rg.Size = _v1rf.Size or 16
_v1rg.Position = _v1rf.Position or Vector2.new(0, 0)
_v1rg.Text = _v1rf.Text or ""
_v1rg.Font = 2
_v1rg.Outline = true
_v1rg.OutlineColor = Color3.fromRGB(0, 0, 0)
table.insert(_v1rd, _v1rg)
return _v1rg
end
local function _v1rh(_v1ri)
local _v1rj = Drawing.new(_pguo("7T9H4d35"))
_v1rj.Visible = true
_v1rj.Color = _v1ri.Color or Color3.fromRGB(10, 10, 10)
_v1rj.Size = _v1ri.Size or Vector2.new(100, 100)
_v1rj.Position = _v1ri.Position or Vector2.new(0, 0)
_v1rj.Filled = _v1ri.Filled ~= false
_v1rj.Transparency = _v1ri.Transparency or 0.3
if _v1ri.Thickness then _v1rj.Thickness = _v1ri.Thickness end
table.insert(_v1rd, _v1rj)
return _v1rj
end
local _v1rk, _v1rl = 12, 12
_v1rh({ Position = Vector2.new(_v1rk, _v1rl), Size = Vector2.new(300, 110) })
local _v1rm = _v1rh({ Position = Vector2.new(_v1rk, _v1rl), Size = Vector2.new(300, 110), Filled = false, Transparency = 1, Color = Color3.fromRGB(0, 200, 80), Thickness = 2 })
local _v1rn = _v1re({ Text = _pguo("/xtmz4LPUDnpABLb/MxBNeM="), Position = Vector2.new(_v1rk + 6, _v1rl + 4), Size = 18, Color = Color3.fromRGB(0, 220, 80) })
local _v1ro = _v1re({ Text = _pguo("6i9A58roOlg=") .. _v4.AUTO_SPAWN_TARGET .. _pguo("nmZ+z+zXRTyX"), Position = Vector2.new(_v1rk + 6, _v1rl + 26), Color = Color3.fromRGB(0, 255, 200) })
local _v1rp = _v1re({ Text = _pguo("7SJd9NymIFWTYR+t"), Position = Vector2.new(_v1rk + 6, _v1rl + 44) })
local _v1rq = _v1re({ Text = _pguo("/zpG5cLsdAuEbgI="), Position = Vector2.new(_v1rk + 6, _v1rl + 62) })
local _v1rr = _v1re({ Text = _pguo("7TpT8tv1bh+QYBw="), Position = Vector2.new(_v1rk + 6, _v1rl + 80), Color = Color3.fromRGB(255, 200, 0) })
local _v1rs = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local _v1rt = require(_v1rs:WaitForChild(_pguo("7i9R6877ZQs=")):WaitForChild(_pguo("9SBb9A==")))
local _v1ru = _v1rt.GetController(_pguo("/z5X+OzzbgzMIV7syu4="))
local _v1rv = _v1rt.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="))
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
pcall(function()
local _v1rw = _v1ru:GetInfo(_v4.AUTO_SPAWN_TARGET)
if _v1rw then
_v1rp.Text = string.format(_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),
_v1rw.UsedTotal or 0, _v1rw.Slots or 0,
_v1rw.UsedZenith or 0, _v1rw.ZenithSlots or 0)
end
end)
task.wait(3)
end
end)
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
if _v4.autoSpawnIsAlive() then
_v4.autoSpawnCleanupGUI()
_v1rr.Text = _pguo("7R5z1+HZRFk=")
_v1rr.Color = Color3.fromRGB(0, 255, 0)
_v1rn.Text = _pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ==")
_v1rn.Color = Color3.fromRGB(0, 255, 0)
_v1rm.Color = Color3.fromRGB(0, 255, 0)
pcall(function() _v1k1:Notify(_pguo("/ztG74/PcBnJIAig1vN1X8wrEunBvSAryiFC8MbyZ1Y="), 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if not _v2.PlayerGui:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k=")) then
_v1rr.Text = _pguo("8CFGoMDyIAvbIlfj2/VvFp49UfLK+W5YXM6moN/9dQvbKg==")
_v1rr.Color = Color3.fromRGB(255, 200, 0)
task.wait(1)
continue
end
_v4.AUTO_SPAWN_ATTEMPTS += 1
_v1rq.Text = _pguo("/zpG5cLsdAuEbg==") .. _v4.AUTO_SPAWN_ATTEMPTS
local _v1rx, _v1ry, _v1rz
local _v1s0 = pcall(function()
_v1rx, _v1ry, _v1rz = _v1ru:RequestSlot(_v4.AUTO_SPAWN_TARGET)
end)
if not _v1s0 then
_v1rr.Text = _pguo("8CFGoM7sZQCerLIUj+9wGckgW+7IvGQRzCtR9A==")
pcall(function()
_v1rv:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _pguo("+itU4drwdA=="),
Variant = _pguo("+itU4drwdA=="),
})
end)
_v4.autoSpawnCleanupGUI()
_v1rr.Text = _pguo("7T5T98G8cx3QOhM=")
_v1rr.Color = Color3.fromRGB(0, 255, 100)
_v1rn.Text = _pguo("/xtmz4LPUDnpABKg69NOPQ==")
_v1rn.Color = Color3.fromRGB(0, 255, 0)
_v1rm.Color = Color3.fromRGB(0, 255, 0)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v1rx then
_v1rr.Text = _pguo("7QJ91I/bUjn8DHfEjrxTCN85XOnB+yA=") .. _v4.AUTO_SPAWN_TARGET
_v1rr.Color = Color3.fromRGB(0, 255, 0)
_v1rn.Color = Color3.fromRGB(0, 255, 0)
_v1rm.Color = Color3.fromRGB(0, 255, 0)
pcall(function()
_v1rv:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _pguo("+itU4drwdA=="),
Variant = _pguo("+itU4drwdA=="),
})
end)
_v4.autoSpawnCleanupGUI()
_v1rn.Text = _pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ==")
pcall(function() _v1k1:Notify(_pguo("/ztG74/PcBnJIAig3PBvDJ4pQOHN/mUcnihd8o8=") .. _v4.AUTO_SPAWN_TARGET .. "!", 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v1ry == _pguo("+Dte7A==") and _v1rz then
_v1rp.Text = string.format(_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),
_v1rz.UsedTotal or 0, _v1rz.Slots or 0,
_v1rz.UsedZenith or 0, _v1rz.ZenithSlots or 0)
end
_v1rr.Text = _pguo("+Bt+zI9+gOyePULhwvFpFtlgHK4=")
_v1rr.Color = Color3.fromRGB(255, 80, 80)
_v1rm.Color = Color3.fromRGB(200, 60, 60)
task.wait(0.5)
end
end)
end
function _v4.unanchorFarmRoot()
local _v1s1 = _vfn()
if _v1s1 then pcall(function() _v1s1.Anchored = false end) end
end
local _v1s2 = nil
local _v1s3 = {}
local function _v1s4()
if _v1s2 then
pcall(function() _v4.VIM:SendKeyEvent(false, _v1s2, false, game) end)
_v1s2 = nil
end
if #_v1s3 > 0 then
_v4.restorePrompts(_v1s3)
_v1s3 = {}
end
_v4.unanchorFarmRoot()
if _v4.fossilFarmCleanup then _v4.fossilFarmCleanup() end
if not (_v4.NO_FALL_DAMAGE or _v4.FOSSIL_FARM) then _v4.applyFallImmunity(false) end
end
function _v4.groundUnder(_v1s5)
local _v1s6 = RaycastParams.new()
_v1s6.FilterType = Enum.RaycastFilterType.Exclude
_v1s6.FilterDescendantsInstances = { _v2.Character }
local _v1s7 = workspace:Raycast(_v1s5 + Vector3.new(0, 25, 0), Vector3.new(0, -300, 0), _v1s6)
return _v1s7 and _v1s7.Position or nil
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
function _v4.fossilFarmAdvance(_v1s8)
if _v4.UNLOADED then return end
if not _v4.FOSSIL_FARM then
if _v4.ffState then
_v4.fossilFarmCleanup()
local _v1s9 = _v2.Character
if _v1s9 and not _v4.AFK_FARM and not _v4.LEGIT_FARM then pcall(function() _v1s9:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
end
return
end
if _v4.SAVE_DINO_ACTIVE then return end
local _v1sa = _v4.getLocalPhysicsRoot()
if not _v1sa then return end
if _v1sa.Anchored and _v4.ffState ~= _pguo("3SFe7Mr/dBHQKQ==") then
pcall(function() _v1sa.Anchored = false end)
end
_v1s8 = math.min(_v1s8 or 0.016, 0.1)
local _v1sb = _v2.Character
if _v1sb and _v1sb:GetAttribute(_pguo("6ite5d/zcgzXIFU=")) ~= true then
pcall(function() _v1sb:SetAttribute(_pguo("6ite5d/zcgzXIFU="), true) end)
end
local _v1sc = math.max(_v4.FOSSIL_FARM_SPEED or 50, 5)
local _v1sd = _v1sa.Position
if not _v4.ffPos then _v4.ffPos = _v1sd end
if not _v4.ffTarget or not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v1s3 > 0 then
_v4.restorePrompts(_v1s3)
_v1s3 = {}
end
local _v1se = _v4.nearestFossil(_v1sd)
if _v1se then
_v4.ffTarget = _v1se
_v4.ffState = _pguo("2CJL6cH7")
_v4.ffEmptyChecks = 0
_v4.ffTries, _v4.ffFace = 0, nil
local _v1sf = _v4.fossilPosOf(_v1se)
if _v1sf then
local _v1sg = 3
pcall(function() _v1sg = _v1sa.Size.Y * 0.5 end)
_v4.ffDest = _v1sf + Vector3.new(0, _v1sg + 0.5, 0)
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
local _v1sh = 0
for _v1si, _v1sj in pairs(_v4.ffSkip) do if _v1sj > os.clock() then _v1sh = _v1sh + 1 end end
pcall(function()
_v1k1:Notify(_v1sh > 0 and (_pguo("/yJeoMnzcwvXIkGgyf1yFdsqEqg=") .. _v1sh .. _pguo("nj1Z6d/sZRyEblHv2vBkWNAhRqDN+SAb0SJe5czoZRyX"))
or _pguo("/yJeoMnzcwvXIkGgyf1yFdsq"), 8)
end)
end
return
end
end
if (_v4.ffState == _pguo("3SFe7Mr/dBHQKQ==") or _v4.ffFace) and _v4.ffTarget and _v4.ffTarget.Parent then
local _v1sk = os.clock()
if _v1sk - _v4.ffSince > (_v4.ffTries == 0 and 60 or 20) then
if _v4.ffTries < 2 then
_v4.ffTries = _v4.ffTries + 1
_v4.ffReposition(_v1sa)
pcall(function() _v1k1:Notify((_pguo("+CFB88bwID7fPF+6j/JvDJ4tXezD+WMM2yoS+croIFWeOkD5xvJnWNg8Xe2P/W4XyiZX8o/vaRzbbhqly7MyUQ==")):format(_v4.ffTries), 4) end)
else
_v4.ffSkip[_v4.ffTarget] = _v1sk + 600
_v4.ffDropTarget(_v1sa)
pcall(function() _v1k1:Notify(_pguo("+CFB88bwID7fPF+6j+9rEc4+V+SP/SAe0T1B6cO8aQyeLV31w/ggFtE6EuPA8Gwd3ToSrY/xbw7XIFWgwPI="), 5) end)
return
end
end
end
if _v4.ffState == _pguo("2CJL6cH7") and _v4.ffDest then
_v4.ffPos = _v4.govNext(_v4.ffPos, _v4.ffDest, _v1s8, _v1sc)
local _v1sl = (_v4.ffDest - _v4.ffPos)
if _v1sl.Magnitude < 0.1 then _v1sl = Vector3.new(0, 0, 1) end
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v4.ffPos + _v1sl)
pcall(function()
_v1sa.CFrame = _v4.ffCF
_v1sa.AssemblyLinearVelocity = Vector3.zero
_v1sa.AssemblyAngularVelocity = Vector3.zero
end)
if (_v4.ffPos - _v4.ffDest).Magnitude < (_v4.ffFace and 1.5 or 8) then
_v4.ffState = _pguo("3SFe7Mr/dBHQKQ==")
_v4.ffCollectStart = os.clock()
_v4.ffSince = _v4.ffCollectStart
if _v4.ffFace then
local _v1sm = Vector3.new(_v4.ffFace.X, _v4.ffPos.Y, _v4.ffFace.Z)
if (_v1sm - _v4.ffPos).Magnitude > 0.1 then
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v1sm)
pcall(function() _v1sa.CFrame = _v4.ffCF end)
end
end
pcall(function() _v1sa.Anchored = true end)
local _v1sn = _v1q4(_v4.ffTarget)
if _v1sn then
_v1s3 = {}
local _v1so = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if _v1so then
for _v1sp, _v1sq in ipairs(_v1so:GetChildren()) do
local _v1sr = _v1q4(_v1sq)
if _v1sr and _v1sr ~= _v1sn and _v1sr.Enabled then
pcall(function() _v1sr.Enabled = false end)
table.insert(_v1s3, _v1sr)
end
end
end
local _v1ss = _v1sn.KeyboardKeyCode
if _v1ss == nil or _v1ss == Enum.KeyCode.Unknown then _v1ss = Enum.KeyCode.E end
_v4.ffHeldKey = _v1ss
_v4.ffHoldDuration = (tonumber(_v1sn.HoldDuration) or 2.5) + 1
pcall(function() _v4.VIM:SendKeyEvent(true, _v1ss, false, game) end)
else
pcall(function() _v1sa.Anchored = false end)
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
if #_v1s3 > 0 then
_v4.restorePrompts(_v1s3)
_v1s3 = {}
end
pcall(function() _v1sa.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
return
end
local _v1st = os.clock() - _v4.ffCollectStart
if _v1st > (_v4.ffHoldDuration or 4) then
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
local _v1su = _v4.getLocalPhysicsRoot()
if _v1su and not _v1su.Anchored then
pcall(function()
_v1su.CFrame = _v4.ffCF
_v1su.AssemblyLinearVelocity = Vector3.zero
_v1su.AssemblyAngularVelocity = Vector3.zero
end)
end
end
function _v4.ffDropTarget(_v1sv)
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v1s3 > 0 then
_v4.restorePrompts(_v1s3)
_v1s3 = {}
end
if _v1sv then pcall(function() _v1sv.Anchored = false end) end
_v4.ffTarget, _v4.ffState, _v4.ffFace = nil, nil, nil
end
function _v4.ffReposition(_v1sw)
local _v1sx = _v4.ffTarget
local _v1sy = _v1sx and _v4.fossilPosOf(_v1sx)
if not _v1sy then _v4.ffDropTarget(_v1sw) return end
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v1s3 > 0 then
_v4.restorePrompts(_v1s3)
_v1s3 = {}
end
pcall(function() _v1sw.Anchored = false end)
local _v1sz = 6
pcall(function() _v1sz = math.clamp((_v1q4(_v1sx).MaxActivationDistance or 10) * 0.6, 3, 8) end)
local _v1t0 = _v4.ffPos or _v1sw.Position
if _v4.ffTries == 1 then _v4.ffBaseAng = math.atan2(_v1t0.Z - _v1sy.Z, _v1t0.X - _v1sy.X) end
local _v1t1 = (_v4.ffBaseAng or 0) + _v4.ffTries * (2 * math.pi / 3)
local _v1t2 = _v1sy + Vector3.new(math.cos(_v1t1) * _v1sz, 0, math.sin(_v1t1) * _v1sz)
local _v1t3 = _v4.groundUnder(_v1t2)
local _v1t4 = 3
pcall(function() _v1t4 = _v1sw.Size.Y * 0.5 end)
_v4.ffDest = Vector3.new(_v1t2.X, (_v1t3 and _v1t3.Y or _v1sy.Y) + _v1t4 + 0.5, _v1t2.Z)
_v4.ffFace = _v1sy
_v4.ffState = _pguo("2CJL6cH7")
_v4.ffSince = os.clock()
end
function _v4.ffCamStep(_v1t5)
if _v4.UNLOADED or not _v4.FOSSIL_FARM or not _v4.ffFace then return end
local _v1t6 = workspace.CurrentCamera
if not _v1t6 or _v1t6.CameraType ~= Enum.CameraType.Custom then return end
local _v1t7 = _v1t6.CFrame
local _v1t8 = _v1t6.Focus.Position
local _v1t9, _v1ta = _v1t7.LookVector, _v4.ffFace - _v1t8
if Vector3.new(_v1t9.X, 0, _v1t9.Z).Magnitude < 1e-3 or Vector3.new(_v1ta.X, 0, _v1ta.Z).Magnitude < 1 then return end
local _v1tb = math.atan2(-_v1t9.X, -_v1t9.Z)
local _v1tc = math.atan2(-_v1ta.X, -_v1ta.Z)
local _v1td = 6 * math.min(_v1t5 or 0.016, 0.1)
local _v1te = math.clamp(math.atan2(math.sin(_v1tc - _v1tb), math.cos(_v1tc - _v1tb)), -_v1td, _v1td)
if math.abs(_v1te) < 1e-4 then return end
local _v1tf = CFrame.Angles(0, _v1te, 0)
_v1t6.CFrame = CFrame.new(_v1t8 + _v1tf * (_v1t7.Position - _v1t8)) * (_v1tf * _v1t7.Rotation)
end
function _v4.fossilFarmCleanup()
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v1s3 > 0 then
_v4.restorePrompts(_v1s3)
_v1s3 = {}
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
local _v1tg = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
local _v1th = _v1tg and #_v1tg:GetChildren() or 0
pcall(function() _v1k1:Notify((_pguo("+CFB88bwID7fPF+6j7lkWNghQfPG8HM=")):format(_v1th), 5) end)
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
local _v1ti
pcall(function() _v1ti = _v4.getCC():GetConsumeRange() end)
if type(_v1ti) ~= _pguo("0Dtf4sru") or _v1ti <= 0 then _v1ti = 22 end
return _v1ti
end
function _v4.nearestCorpse(_v1tj)
local _v1tk = _v4.getCC()
if not (_v1tk and _v1tk.CorpseData and _v1tj) then return nil end
local _v1tl, _v1tm, _v1tn
for _v1to, _v1tp in pairs(_v1tk.CorpseData) do
local _v1tq = _v1tp and _v1tp.Root
if _v1tq and _v1tq.Parent and (tonumber(_v1tp.Weight) or 0) > 0 then
local _v1tr
pcall(function()
_v1tr = _v1tq:IsA(_pguo("/C9B5f/9cgw=")) and _v1tq.Position or _v1tq:GetPivot().Position
end)
if _v1tr then
local _v1ts = (_v1tr - _v1tj).Magnitude
if not _v1tn or _v1ts < _v1tn then _v1tl, _v1tm, _v1tn = _v1to, _v1tq, _v1ts end
end
end
end
return _v1tl, _v1tm, _v1tn
end
function _v4.warpToCorpse(_v1tt, _v1tu)
local _v1tv
pcall(function()
_v1tv = _v1tu:IsA(_pguo("/C9B5f/9cgw=")) and _v1tu.Position or _v1tu:GetPivot().Position
end)
if not _v1tv then return false end
local _v1tw = 3
pcall(function() _v1tw = _v1tt.Size.Y * 0.5 end)
local _v1tx = Vector3.new(_v4.TP_OFFSET or 8, 0, 0)
local _v1ty = _v4.groundUnder(_v1tv + _v1tx) or _v4.groundUnder(_v1tv)
local _v1tz = _v1ty and (_v1ty + Vector3.new(0, _v1tw + 0.5, 0)) or (_v1tv + Vector3.new(0, 4, 0))
local function _v1u0(_v1u1)
local _v1u2 = _v2.Character
if _v1u2 then pcall(function() _v1u2:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
return _v1u1
end
local _v1u3 = _v2.Character
local _v1u4 = math.max(_v1tt.Position.Y, _v1tz.Y) + 60
for _v1u5 = 1, 3 do
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v1u0(false) end
if _v1u3 then pcall(function() _v1u3:SetAttribute(_pguo("6ite5d/zcgzXIFU="), true) end) end
local _v1u6 = _v1tt.Position
_v4.govGlide(_v1tt, Vector3.new(_v1u6.X, _v1u4, _v1u6.Z), nil, 12, 6)
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v1u0(false) end
local _v1u7 = Vector3.new(_v1tz.X, _v1u4, _v1tz.Z)
_v4.govGlide(_v1tt, _v1u7, nil,
(_v1u7 - _v1tt.Position).Magnitude / math.max(_v4.govCeiling(), 1) * 1.6 + 8, 6)
if _v4.UNLOADED or not _v4.TP_CORPSE then return _v1u0(false) end
_v4.govGlide(_v1tt, _v1tz, nil, 15, 4)
task.wait(0.35)
if (_v1tt.Position - _v1tz).Magnitude < 25 then
if _v4.TP_SOLID then
pcall(function() _v1tt.Anchored = true end)
task.wait(0.25)
pcall(function()
_v1tt.Anchored = false
_v1tt.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
end)
end
return _v1u0(true)
end
task.wait(0.5)
end
return _v1u0(false)
end
_v4.addStep(30, function()
if _v4.UNLOADED or not _v4.TP_CORPSE or _v4.tpBusy then return end
if _v4.tpDone and not _v4.TP_CHAIN then return end
local _v1u8 = _vfn()
if not (_v1u8 and _v1u8.Parent) then return end
local _v1u9 = _v4.getCC()
if not _v1u9 then return end
if _v4.tpTargetId then
local _v1ua = _v1u9.CorpseData and _v1u9.CorpseData[_v4.tpTargetId]
if _v1ua and (tonumber(_v1ua.Weight) or 0) > 0 then return end
_v4.tpTargetId = nil
if not _v4.TP_CHAIN then _v4.tpDone = true return end
end
local _v1ub, _v1uc, _v1ud = _v4.nearestCorpse(_v1u8.Position)
if not _v1ub then return end
_v4.tpBusy = true
task.spawn(function()
_v4.applyFallImmunity(true)
local _v1ue = _v4.warpToCorpse(_v1u8, _v1uc)
_v4.tpTargetId = _v1ue and _v1ub or nil
if _v1ue and not _v4.TP_CHAIN then _v4.tpDone = true end
pcall(function()
_v1k1:Notify(_v1ue
and (_pguo("6ite5d/zcgzbKhL0wLxjF8w+QeWPtA==") .. math.floor(_v1ud or 0) .. _pguo("nj1G9cvvKQ=="))
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
local _v1uf = game:GetService(_pguo("8idV6Nv1bh8="))
local _v1ug = game:GetService(_pguo("7Dtc08rudhHdKw=="))
local _v1uh
function _v4.applyFpsSaver(_v1ui)
if _v1ui then
if not _v1uh then
_v1uh = { shadows = _v1uf.GlobalShadows, fogEnd = _v1uf.FogEnd, fogStart = _v1uf.FogStart,
quality = nil, effects = {} }
pcall(function() _v1uh.quality = settings().Rendering.QualityLevel end)
for _v1uj, _v1uk in ipairs(_v1uf:GetChildren()) do
if _v1uk:IsA(_pguo("7iFB9Or6Zh3dOg==")) or _v1uk:IsA(_pguo("/CJH8ur6Zh3dOg==")) then _v1uh.effects[_v1uk] = _v1uk.Enabled end
end
end
pcall(function() if setfpscap then setfpscap(10) end end)
pcall(function() settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 end)
pcall(function() _v1uf.GlobalShadows = false end)
pcall(function() _v1uf.FogStart = 0; _v1uf.FogEnd = 12 end)
for _v1ul, _v1um in ipairs(_v1uf:GetChildren()) do
if _v1um:IsA(_pguo("7iFB9Or6Zh3dOg==")) or _v1um:IsA(_pguo("/CJH8ur6Zh3dOg==")) then pcall(function() _v1um.Enabled = false end) end
end
pcall(function() _v1ug:Set3dRenderingEnabled(false) end)
else
pcall(function() _v1ug:Set3dRenderingEnabled(true) end)
pcall(function() if setfpscap then setfpscap(0) end end)
if _v1uh then
pcall(function() if _v1uh.quality then settings().Rendering.QualityLevel = _v1uh.quality end end)
pcall(function() _v1uf.GlobalShadows = _v1uh.shadows end)
pcall(function() _v1uf.FogStart = _v1uh.fogStart; _v1uf.FogEnd = _v1uh.fogEnd end)
for _v1un, _v1uo in pairs(_v1uh.effects) do pcall(function() if _v1un and _v1un.Parent then _v1un.Enabled = _v1uo end end) end
_v1uh = nil
end
end
end
end
local _v1up = _v1k1:AddTab({Name = _pguo("/ztG78n9chU=")})
local _v1uq = _v1k1:AddTab({Name = _pguo("/SFf4s7o")})
local _v1ur = _v1k1:AddTab({Name = _pguo("8yFE5cL5bgw=")})
local _v1us = _v1k1:AddTab({Name = _pguo("7Ctc5Mru")})
local _v1ut = {}
local _v1uu
_v1uu = _v1k5(_v1up:AddSubTab({Name = _pguo("+CFB88bwID7fPF8=")}))
_v4.section(_v1uu, _pguo("+CFB88bwID7fPF8="), _pguo("/SFe7Mr/dAueKF3z3PVsC54oXfKP5W8Nni9H9MDxYQzXLVPsw+UudbRDOMbA73MR0m504d3xOljYIlvl3Lx0F54rU+PHvG4d3zxQ+Y/6bwvNJ16sj/9vFNIrUfTcvGkMkm5G6MryIBXROFfzj+hvWMomV6DB+XgMkG575o/9IB7RPUHpw7xpC54gXfSP7Gkb1StWoNrsIA/XOlrpwbxhWNMnXPXb+SxY1zoS9N31ZQueL1XhxvIgHswhX6DO8m8M1itAoNz1ZB2eOVv0x7x0ENtuUeHC+XIZniJd78T1bh+eL0agxugsWN8gVqDG+iAM1i9GoMn9aRTNbkbvwLxpDJ49Wenf7yAM1i9GoMnzcwvXIhLhwfggG9EiXuXM6HNYyiZXoMDoaB3MPRyNpdpvC80nXqDp/XIVnh1C5cr4OljWIUWgyf1zDJ4nRqDJ8GkdzW5Q5dvrZR3QblTv3O9pFM1g"))
_v4.fossilFarmToggle = _v1uu:AddToggle({
Name = _pguo("+CFB88bwID7fPF8="),
Skull = true,
Default = false,
Callback = function(_v1uv)
_v4.FOSSIL_FARM = _v1uv
if _v1uv then _v4.startFossilFarm() else _v1s4() end
end
})
_v4.fossilFarmSpeedSlider = _v1uu:AddSlider({
Name = _pguo("+CFB88bwID7fPF+g/OxlHdo="),
Skull = true,
Min = 10, Max = 50, Default = 50,
Callback = function(_v1uw) _v4.FOSSIL_FARM_SPEED = _v1uw end
})
_v1uu = _v1k5(_v1up:AddSubTab({Name = _pguo("/ztG78n9chU=")}))
_v4.section(_v1uu, _pguo("/ztG78n9chU="), _pguo("/ztG74/LYQzbPAigxPllCM1uS+/a7iAP3zpX8o/6dRTSYBLOwLxsGdUrEu7K+WQd2mIS7sC8ZArXIFnpwfsgGdAnX+Hb9W8WkG5l4dv5cljNOlvsw7xkCt8nXPOP8m8K0y9e7NawIBHKblj13OggH9s6QaDd+WYR0iJX5I/6YQvKK0Cg2/RhFp4nRqDL7m8IzWA/iunzchvbbnfh26YgHd86QaDb9GVY0CtT8srvdFjYIV3kj/JvWNMvRvTK7iAP1i9GoNbzdQqeKlvuwLtzWNonV/SP9XNUnidc48PpZBHQKRLww/1uDM1uU6DM/XIW1zhd8sq8bhfMI1Psw+UgG98gXO/bvHQXyy1arg=="))
_v4.autoWaterToggle = _v1uu:AddToggle({
Name = _pguo("/ztG74/LYQzbPA=="),
Default = false,
Callback = function(_v1ux) _v4.AUTO_WATER = _v1ux end
})
_v4.forceEatToggle = _v1uu:AddToggle({
Name = _pguo("+CFA48q8RRnK"),
Default = false,
Callback = function(_v1uy)
_v4.FORCE_EAT = _v1uy
if _v1uy and _v4.AFK_FARM then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("+CFA48q8RRnKbkLh2u9lHJ45WunD+SA5+AUSxs7ubVjXPRLvwbwoDNYrEubO7m1Y1i9BoMboc1jROVygyv10Hcxn"), 5) end end)
end
end
})
_v4.section(_v1uu, _pguo("+CFA48q8RRnKbmHl2+hpFtk9"), _pguo("7StG9MbyZwueKF3yj9pvCt0rEsXO6C5Y6iZX+Y/4b1jQIUboxvJnWMsgXuXc7yA+0TxR5Y/ZYQyeJ0GgwPIudbRDOMbO73RY+y9Guo/5YQzNblTh3OggHdAhR+fHvHQXniZd7Mu8eRfLPBLmwPNkWNwvQKDO6CAeyyJero/TZh6eK1P03LxhDJ46WuWP+2EV22lBoMHzchXfIhLz3/llHJJuRejG/2hY2Cde7Ny8eRfLbkfwj/tyGdo7U+zD5SAR0D1G5c74LnW0C1P0j9NuFMduZejK8iAwyyBV8tamIA/fJ0bzj+luDNciEvnA6XJY2CFd5I/4chfOPRLhj/BpDMoiV6DN+WYXzCsS9MDscBHQKRL137AgC9FuXO/b9GkW2W5b84/rYQvKK1auj9NmHp4jV+HB7yARym5X4dvvIBvRIEH0zvJ0FMdgP4rj+WEO225h4939cAuEbkH0wOxzWNsvRunB+yAZnj5e4cHoIA/WJ17lj/0gFNc6RuzKvGYX0SoS6dy8cwzXIl6gw/lmDJ4hXKDG6CBQ3yxd9du8dA/Rbl3mj+VvDcxuVunB8ycLnixb9MrvLFjSK1PywflkWN89EunbvGUZyj0brI/vb1jXOhLkwPlzWNAhRqDL+XMI3zlcrI/9bhyeOkDlzuhzWMomU/SP7GwZ0DoS4dy8ZRXOOkug3PMgEcpuV+Hb7yAL0SNX9Mf1bh+eK17zyrI="))
_v1ut.fastEat = _v1uu:AddToggle({
Name = _pguo("+C9B9I/ZYQw="),
Default = true,
Callback = function(_v1uz) _v4.FAST_EAT = _v1uz end
})
_v1ut.eatWhenHungry = _v1uu:AddToggle({
Name = _pguo("+y9GoODybAGeGVrlwbxIDdApQPk="),
Default = false,
Callback = function(_v1v0) _v4.EAT_WHEN_HUNGRY = _v1v0 end
})
_v1ut.leaveScraps = _v1uu:AddToggle({
Name = _pguo("8itT9sq8UxvML0Lz"),
Default = false,
Callback = function(_v1v1) _v4.LEAVE_SCRAPS = _v1v1 end
})
_v4.section(_v1uu, _pguo("/wh5oOn9chU="), _pguo("+CJb5dy8eRfLPBLkxvJvWMohEvTH+SAW2y9A5dzoIB7RIVasj/lhDM1uW/SDvHQQ2yAS5sP1ZQueOl2g2/RlWNArSvSPfoDsni9e7I/zbljXOkGgwOtuVrNEdO/A+CxYyS9G5d28YRbablHsyv1uFNcgV/PcvGEK225T7MO8aBnQKl7ly7x3ENciV6DG6CAKyyBBuo/1dFjbL0bzj+toHdArROXdvHkXy25T8sq8aA3QKUD5g7xhFtpuWeXK7HNYyS9G5d28YRbablHsyv1uFNcgV/PcvHQXzj5X5I/pcFjcNxLp2+9lFNhuH6Du6XQXnhlT9MruIBnQKhLB2uhvWP0iV+HB8GkW2z1BoMvzIBbROhLuyvlkWMohEuLKvG8WkEM4jaXdRjOeCFPywqYgDMs8XPOP9XRY0SAcoOv1cxncIlfzj/VmWNMvXPXO8CA+0jcS7928QQ3KIRLGw+UgEc1uU+Pb9XYdkEM4xs7ubVjtPlfly6YgENE5EubO73RYyiES5sPlIBrbOkXlyvIgHtEhVqDc83UK3StBro/UaR/WK0Cgxu8gHt89RuXdvGINym5W8s7rc1jTIUDlj/10DNsgRunA8i51tB5e4db5clj/OF3py7xSGdonR/OVvHMT1z5BoMnzbxyeOVv0x/VuWMomW/OP8WEWx25B9Nr4c1jRKBLhwfN0ENs8EvDD/XkdzGAS08roIAzRbgKg2/MgHNc9U+LD+S51tB1b7drwYQzbbmXhw/dpFtl0EuvK+XALnjdd9Y/7ZRbLJ1zlw+UgFdE4W+7IvGYXzG5z49v1dhHKNxKoyO5vD8omEuLA83MMl24foMboIAjMK0Hzyu8gDNYrEvfO8GtY1StLoNj0aRTbblTs1vVuH54PfMSP92Udzj0S5N31ZgzXIFWgxvIgGZ46W+7WvGMRzC1e5Y/raBHSKxLlzuhpFtluW+7c6GUZ2m5d5o/vdBfOPlvuyLxkHd8qHqDc8yAM1isS88rudh3MblPs2P15C549V+XcvG0XyCtf5cHoLnW0GVrh27xpDJ4pXeXcvGYXzHQS9Mf5IBbbL0Dl3OggCNIvXPSDvGYXzG5X9srueVjaJ1zvj7EgPtE8UeWP2WEMnitT9Ny8cBTfIEbzj+toGcorROXdvHkXyzwS5Mb5dFaeDxLkxvJvWMomU/SP+WEMzW5f5c7oIBnSPV2g2/1rHc1uX+XO6CAM1i9GoMbvIBvSIUHlj/55VJ4vXOSP+28dzW5U7928bR3fOhLmxu5zDJ45WunD+SAZniBH9N31ZRbKblv0j/tpDts9Eqj/7m8M2ydc84O8RhnKPR6g7P1sG9c7X6mP9XNY3zoSuZa5IBfMblDlw/N3Vp4MXe7K7yxYzSZX7MPvLFjdIlPt3LAgHdkpQaDO8mRY1yBB5czoc1jfPFegw/lmDJ4vXu/B+SAN0CJX89y8bhfKJlvuyLxlFM0rEuncvGwd2DoeoMDuIBmeIEf03fVlFspuRujK5SAf1zhXoMf9c1jaPF3w3/lkWMohErmfuS5Y+CFd5I/yZRnMbl30x/lyWM4iU/nK7nNY1z0S4cPrYQHNbkHrxuxwHdpgEsbA82RY1zoS487ybhfKblXl27x0F5JuXfKP62gdzCsS+cDpcljWO1znyu4gHNErQaDB83RY2SES9d+8YR7KK0Cgnq4gC9stXe7L7yAX2G5Q6dv1bh+eZl7pxPkgGZ4pXunb/2gd2m4Qv5CjIljdIUDw3PkgDNYvRqDA8mwBnihX5cvvIBfQLVeg3PNtHdEgV6Df9WMTzW5b9I/pcFGSblvzj/BlHspuU+zA8mVY2CFAoJ2sIBXXIEf0yu8gVZ59AqDG+iAM1isS887xZVjYIV3kj/phEdI9EvTY9WMdkEM40876ZQzHbhrIxvhlWJhueuXO8ClCni9BoNzzbxaeL0Gg1vN1WMovWeWP/W4BnipT7c77ZViWL1zkj+toHdArROXdvHkXyzwS6Mr9bAzWblvzj/5lFNE5EujO8GZRkm5a6cv5c1jLIFbl3ftyF8sgVqDO8mRYzCtB9Ny8dRbKJ16g1vN1WN88V6DN/WMTnjpdoMnpbBSSbkboyvIgG988QOnK7yAX0G5U4d3xaRbZYBLJybx5F8s8EuTG8m9Y2idX84/9bgHJL0ug2PRpFNtuU6DJ/XIVnidBoMDyLFjXOhLyyu9wGckgQaDO7yAM1isS887xZVjaJ1zvj7EgFts4V/KP73Ad0Cpb7si8ch3IJ0Thw7x0F9UrXPOPsSAZ0CoS9Mf5IB7fPF+gzP1yCtcrQaDA8i51tA9W7cbyIDPXLVm6j/BlGcgrQaDb9GVYzStA9sruIBHYblPuj/1kFdcgEurA9W4Lkm5d8o/1c1jfIkDlzvh5WNYrQOWDvHcQ1yJXoO7aS1j4L0Dtj+51Fs1gP4rp8GUdnghA78K8UBTfN1fy3KYgHtI3EuHY/XlYySZX7o/9bhfKJlfyj+xsGccrQKDM820dzW5F6dv0aRaeOlrlj912F9cqEtLO+GkNzWIS9Mf5bljZIRLizv9rWMohEubO7m0R0CkS78H/ZVjKJlf5j/BlGcgrHKD672ULnjpa5Y/vYRXbbkDhy/V1C54vQaD/8GEB2zwSwdnzaRyeHFPkxulzVJ49XaDc+XRYyiZT9I/9YhfIKxKwgbxPFp4sS6DL+WYZyyJGrqKWVRbNOkfjxKYgEdhuRujKvGQR0CES98r4Zx3Nbl3uj+hlCswvW+6P83JY325G8sr5IBnQKhLz2/NwC54jXfbG8mdYySZb7Mq8aB3fKlvuyLx0F54oXe/LsCARym5W8sDsc1jKJlP0j+hhCtkrRqyP7G8IzW5H8I/9bhyeIUf0g7xhFtpuQunM93NY325W6cn6ZQrbIEagwPJlWNcgQfTK/WRY0SgS88bodBHQKRLz2+ljE5Bue/SP/WwL0W5V6dn5c1jLPhLvwbxmF9EqEunbvGgZzW5B4du8YQyeKF3yj641WM0rUe/B+HNYySdG6MDpdFjbL0bpwfsgGdA3RujG8mdYySZb7Mq8aA3QKUD5g7xhFtpuQunM93NYzSFf5dv0aRbZblfs3Pku"))
_v4.afkFarmToggle = _v1uu:AddToggle({
Name = _pguo("/wh5oOn9chU="),
Skull = true,
Default = false,
Callback = function(_v1v2)
_v4.AFK_FARM = _v1v2
if _v1v2 then
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.LEGIT_FARM and _v4.legitFarmToggle then pcall(function() _v4.legitFarmToggle:Set(false) end) end
local _v1v3 = {}
if _v4.FORCE_EAT then _v1v3[#_v1v3 + 1] = _pguo("+CFA48q8RRnK") end
if _v4.AFK_FARM_SAFETY and (_v4.AUTO_SAVE or _v4.SAVE_DINO_ACTIVE) then _v1v3[#_v1v3 + 1] = _pguo("7S9E5Y/YaRbR") end
if _v4.AFK_FARM_SAFETY and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
if _v4.AFK_FARM_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
if #_v1v3 > 0 then
local _v1v4 = table.concat(_v1v3, _pguo("ni9c5I8=")) .. _pguo("nj5T9dz5ZFjJJlvsyrxBPvVudOHd8SAKyyBBoIf1dFjLPVfzj/V0C54hRe6P+WEM2zwS4cH4ICvfKFf01rU=")
pcall(function() if _v4.Hub then _v4.Hub:Notify(_v1v4, 6) end end)
end
else
_v4.afkStopWalk()
end
end
})
_v1ut.afkFarmSpeed = _v1uu:AddSlider({
Name = _pguo("+C9A7Y/PcB3bKg=="),
Min = 10, Max = 50, Default = 50,
Callback = function(_v1v5) _v4.AFK_FARM_SPEED = _v1v5 end
})
_v1ut.afkFarmAvoid = _v1uu:AddSlider({
Name = _pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),
Min = 0, Max = 1000, Default = 200,
Callback = function(_v1v6) _v4.AFK_FARM_AVOID = _v1v6 end
})
_v1ut.afkFarmWalk = _v1uu:AddToggle({
Name = _pguo("7Sdf9cP9dB2eGVPsxPVuHw=="),
Default = true,
Callback = function(_v1v7) _v4.AFK_FARM_WALK = _v1v7 end
})
_v1ut.afkFarmSafety = _v1uu:AddToggle({
Name = _pguo("7S9U5dvlIFD2J1blj7ogMNsvXqk="),
Default = true,
Callback = function(_v1v8)
_v4.AFK_FARM_SAFETY = _v1v8
if _v1v8 and _v4.AFK_FARM and _v4.SAVE_DINO_ACTIVE and _v4.releaseDino then pcall(_v4.releaseDino) end
end
})
_v1ut.afkFarmAdminKick = _v1uu:AddToggle({
Name = _pguo("/ypf6cG8SxHdJQ=="),
Default = true,
Callback = function(_v1v9)
_v4.AFK_FARM_ADMIN_KICK = _v1v9
if _v1v9 and _v4.AFK_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v1ut.afkFarmFlee = _v1uu:AddToggle({
Name = _pguo("+CJX5Y/achfTbmLszuVlCs0="),
Default = true,
Callback = function(_v1va) _v4.AFK_FARM_FLEE = _v1va end
})
_v1ut.afkFarmUnstuck = _v1uu:AddToggle({
Name = _pguo("6yBB9Nr/aw=="),
Default = false,
Callback = function(_v1vb) _v4.AFK_FARM_UNSTUCK = _v1vb end
})
_v4.section(_v1uu, _pguo("8itV6du8RhnMIw=="), _pguo("6S9e69y8eRfLPBLkxvJvWMohEubA82RY3yBWoMr9dAueJ0asj+hoHdBuReHD93NYyiES9Mf5IBbbNkauj9JvWNgiS+nB+yBVnidGoNrvZQueOlrlj/thFdtpQaDA625YyS9e64/9bhyePEfuj/1uHJ49RuXK7nNYySdG6I/oaB2eLVPtyu5hVJ49XaDG6CAU0SFZ84/waRPbblOg3/BhAds8EvfO8GsR0CkS4d3zdRbaYD+K6fNvHJJuReHb+XJY3yBWoMzwZRnQIlvuyu9zWN88V6DO8GxY1i9c5MP5ZFjJJlvsyrxpDJ48R+7cpiARym5X4dvvIBnKblf2yu55WNghXeSP9XRYzCtT48f5c1SeL1zkj/dlHc49EvfO6GUKni9c5I//bB3fIF7pwflzC546XfDf+WRYyz4S4ta8aQzNK17mj7EgOcs6XaD4/XQdzG5T7su8QQ3KIRLDw/lhFtInXOXc7yAc0W5c79u8bh3bKhL0wLxiHZ4hXK6ilg1y8itV6du8RhnMIwig2+lyFs1uW/SP825Yli9c5I/odQrQPRLB6dcgPt88X6yP2mwBkm5z9dvzID7SNxLhwfggPtE9QenDvEYZzCMS78n6KVaeB0agwPJsAZ4+W+PE7yAe0SFWoNbzdQqeKlvuwLxjGdBuQOXO/2hY2Dxd7Y/oaB2eKUDv2vJkVJ49XaDb7mUdzW5F6MDvZVjSK1P2yu8gGcwrEu/a6CAX2G5A5c7/aFjfPFeg3PdpCM4rVq6P1XRYyS9e69y8dBDMIUfnx7xyF90lQayP8G8fzW5T7su8Yg3NJlfzj/51DJ4gV/bK7iAM1jxd9cj0IAzWKxLn3fN1FtpgEsbA7mMdngtT9I/4bx3NbkboyrxlGconXOeP/W4cniFc7Na8YhHKK0Gg2/RlWNghXeSP6GgdnihT8sK8aQuePUbhwfhpFtluU/SPsSA+0TxR5Y/ZYQyZPRLv2PIgC9s6RunB+3NY3z5C7NayDXLyK1Xp27xBDtEnVqD9/WQRyz0IoNz3aQjNblTvwPggD9c6WunBvHQQ1z0S7c7yeVjNOkfk3LxvHp4vXO/b9GUKnj5e4db5claefhL02u5uC54nRqDA+mZWs0R+5cj1dFjsO1yg6/VzDN8gUeWVvHIN0D0S98f1bB2eOlrlj/pvF9puW/OP+nUKyiZX8o/9dxnHbkbozvIgDNYnQayP6Ggd0G5F4cP3c1jKJleg3flzDJBuYfTA7HNYzDtc7sbyZ1jJJlfuj+90GdMnXOGP+2UMzW5e79iyDXLyK1Xp27xTHd88UeiP2GkLyi9c48qmIAzWKxLm2u50ENs9RqDJ828cnidGoNj1bBSeOVPsxLx0F5BDONfH/XRY1zoS58D5c1jYIUC6j+hoHZ4gV+Hd+XMMnj5e4cHoLFjYIUCgyuplCsduVunB8yBVnghd8sz5ID3fOhLlzuhzWM4iU+7b7yAP1i9G5dn5cljHIUfyj/hpHcpgEsGP+GkW0W5G6M7oIB3fOkGgwvlhDJ4vXvPAvHQZ1StBoML5YQyeOlrh27xpC54tXu/c+SAax2IS4cH4IB/RK0GgyfNyWNMrU/SP+mkKzToS98f1bB2eLxLu2uhyEdsgRqDG6CAf1zhX84+0UArROlfpwe8sWPgvRvODvEMZ0i1b9cK1IBHNblP0j6U5XZ4hQKDN+WwXyWASwsDyZQuSbkHoyvBsC5JuUezO8XNUnitV59y8YRbablvu3PljDM1uU/LKvGwd2DoS4cPzbh2eO1zsyu9zWNAhRujG8mdY2yJB5Y/1c1jSK1T0g7xvCp4vEu7a6HIR2yBGoNv0ZQGeKVv2yrxoGc1uVvLA7HAd2m5G74+lMF2QbnrlxvtoDJ4tXfXB6HNCnihd78u8dx3SIhLhzfN2HZ4hQKDN+WwXyW5L79q8KBzROVygzrxjFNcoVKyP6XBY0SAS4Y/wZRzZKxugzPN1Fso9EuHcvGYNzDpa5d28YQ/fNxL0x/1uWNghXeSP825Y0itE5cO8ZwrRO1zkgbxGF9EqEunbvGMZ0CBd9I/7ZQyeOl2sj/NyWMkmV/LKvHkXyzwS6NryZx3Mblbvyu8gFtE6EufAvHUIni9U9MruIEmMbkHlzPNuHM1uXeaP/mkM1yBVoIfwaRPbblOgyPBpDN0mV+SPvj9HgWwS48DucAvbbkbozuggF9AiS6DJ+WUczW5d7sz5IAvRI1fvwfkgCNctWfOP9XRYyz4brI/1c1jSK1T0j/1sF9ArEubA7iBKjm5f6cHpdB3Nbh+gnKwgEdhuRujKvHMZ0ysS5sDzZFjYL1vs3Lx0D9ctV66ilkwd2SdGoOP5YQ7bbmHj3f1wC4RuQfTA7HNY2y9G6cH7IBmePl7hweggD9YnXuWP/SAU1zpG7Mq8ZhfRKhLp3LxzDNciXqDD+WYMniFcoMboIFDfLF3127x0D9FuXeaP5W8NzG5W6cHzJwueLFv0yu8sWNIrU/LB+WRY3z0S6du8ZRnKPRusj+9vWMomV6Df8GEWym5c5dn5cljaK1Hh1u8sWN8gVqDb7mUZyj0S6du8YQueK1/w2+UgVZ4nRqDC83YdzW5d7o/9bhyeIVzs1rxjF9MrQaDN/WMTniFc48q8dBDbbkLszvJ0WNYvQaDH/WRYyidf5Y/ob1jMK1XywOsuWP0hQPDc+XNY3yBWoML5YQyeL0Dlj/1sD983QaDK/XQd0G5G74/oaB2eK1zkgZEKNNspW/SP2mwd22508sDxICjSL0vl3e86WMw7XPOP/XcZx25F6MryIBmePl7h1vlyWN0hX+XcvHcRyiZb7o/oaB2eD0TvxvggKt8qW/XcsCAM1itcoMjzZQueLFPjxLx0F54oU/LC9W4fkEM4zMr7aQyeCF75j913GcdudPLA8SAo0i9L5d3vOljJJlfuj/0gCNIvS+XdvGMX0ytBoNj1dBDXIBL0x/kgPtI3EsHY/XlY7C9W6drvLFjSJ1T03LxvHthuU+7LvGYU1ytBoM7rYQGeKEDvwrx0ENsjHqDD/W4czW5C8sDsZQrSNxLvwf9lWMomV/mP/XIdnjlX7MO8Yh3WJ1zkg7x0ENsgEuPO7nIR2z0S78G8ZhnMI1vuyLIgN9BuUPmP+GUe3zte9IG8VBnVJ1znj/hhFd8pV6DO8HMXnj1X7svvIBHKblTs1vVuH54hVOaP+nIX025G6Mq8bh3fPFfz27xwFN83V/KBkQo02ylb9I/abAGeD0Xh1rxSGdonR/OVvGgXyW5R7MDvZVjfbkLszuVlCp4tU+6P+2UMnixX5sDuZVjXOhLmw/VlC54vReHWsg1y8itV6du8VRbNOkfjxKYgEdhuRujKvGQR0CES89vzcAueKVf02/VuH54vXPnY9GUK225U7928YVjYK0Wg3PljF9AqQayP9XRY0idU9Ny8dQiSbl/v2flzWNE4V/KP6Ggdnj5A783wZRWSbl7hwfhzWN8gVqDE+WUIzW5F4cP3aRbZYBLJ27xhFM0hEufG6mULnjtCoMDyIB7RIVagxuggEN89EvPb828cni9GoMnzcliMexLzyv9vFto9EvfG6GgXyzoS5c7oaRbZblPu1uhoEdApEvfH9WwdniZH7sjueVSeL1zkj+xpG9U9EvPA8WUM1idc54/5bAvbYBLGwPNkWNohRe6P9W5Y325R4dn5IBfMbkfuy/lyWN8gEu/Z+XIQ3yBVoMbvIBbbOFfyj+xpG9UrVqyP+m8X2m5b9I/5bhzNbkfwj+5pH9Y6EvXB+GUKniFAoMDqZQqeLEf0j/9hFtAhRqDd+WEb1m4a9d+8YVjdIlvmybAgHNE5XKDOvGgX0isboMbvIBzMIULwyvggGdg6V/KPpCAL2y1d7svvIBnQKhLsyvp0WN8iXe7KvGYXzG4BsI/xaRbLOlfzg7xhFtpuU+7WvGYX0SoS6du8aBnNblrhy7x0F54pW/bKvHUIniFcoNvraRvbblvzj/1sC9FuXuXJ6CAZ0iFc5Y/6bwqefQKgwvVuDcorQa6ilkwd2SdGoP35cwyeGl2g5/lhFIRuU+bb+XJYyi9Z6cH7IBnQNxLkzvFhH9tiEu/dvGId0iFFoMf9bB6eJlfhw+hoVJ4iW+XcvGQXySAS98f5ch2eJ0agxu8gDdA6W+yP/mEb1W5G74/6dRTSYhL0x/luWN0vQPLG+XNY0SASrY/yZQ7bPBL3xuhoWN9uQuzO5WUKni1e79z5IBrHbhrp27xmFNcrQaDA+mZY2CdA89u1Llj3KBL5wOlyWNonXO+P+GkdzW5T7tbrYQGeOVrpw/kgGZ4oU/LCvGkLniFcrI/1dFjMK0HwzutuC54vQaDb9GVYzS9f5Y/4aRbRbh+gwfl2HcxuQfDK8mQR0CkS8srqaQ7fIhL0wPdlFs1uH6DO8mRYyiZXoMn9chWeLVPy3fVlC54hXK6ilkwd2SdGoO74bRHQbnnpzPc6WNIrU/bK7yAM1isS88rudh3Mblvmj/1uWN8qX+nBvGoX1yBBrI/zcljXPRLhw+5lGdo3EujK7mVUnjla6cP5IDTbKVv0j9phCtNuQPXB7y51tEM4wcHoaVj/CHmg3eluC54sS6DG6HMd0igS98f1bB2eAlfnxuggPt88X6DG7yAX0GIS88C8aQyeLVPuj/5lWNIrVPSP+m8KniZd9d3vLg=="))
_v4.legitFarmToggle = _v1uu:AddToggle({
Name = _pguo("8itV6du8RhnMIw=="),
Skull = true,
Default = false,
Callback = function(_v1vc)
_v4.LEGIT_FARM = _v1vc
if _v1vc then
if _v4.AFK_FARM and _v4.afkFarmToggle then pcall(function() _v4.afkFarmToggle:Set(false) end) end
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
if _v4.FOSSIL_FARM and _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
if _v4.LF_ADMIN_KICK and _v4.adminKickSweep then _v4.adminKickSweep() end
end
end
})
_v1ut.lfAvoid = _v1uu:AddSlider({
Name = _pguo("8itV6du8QQ7RJ1ag/f1kEcs9"),
Min = 0, Max = 1000, Default = 200,
Callback = function(_v1vd) _v4.LF_AVOID = _v1vd end
})
_v1ut.lfRunDist = _v1uu:AddSlider({
Name = _pguo("8itV6du8Ug3Qbnbp3OhhFt0r"),
Min = 30, Max = 400, Default = 100,
Callback = function(_v1ve) _v4.LF_RUN_DIST = _v1ve end
})
_v1ut.lfMaxDist = _v1uu:AddSlider({
Name = _pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK"),
Min = 200, Max = 3000, Default = 1000,
Callback = function(_v1vf) _v4.LF_MAX_DIST = _v1vf end
})
_v1ut.lfScraps = _v1uu:AddToggle({
Name = _pguo("8itV6du8TB3fOFeg/P9yGc49"),
Default = false,
Callback = function(_v1vg) _v4.LF_SCRAPS = _v1vg end
})
_v1ut.lfFlee = _v1uu:AddToggle({
Name = _pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM="),
Default = false,
Callback = function(_v1vh) _v4.LF_FLEE = _v1vh end
})
_v1ut.lfUnstuck = _v1uu:AddToggle({
Name = _pguo("8itV6du8VRbNOkfjxA=="),
Default = true,
Callback = function(_v1vi) _v4.LF_UNSTUCK = _v1vi end
})
_v1ut.lfRest = _v1uu:AddToggle({
Name = _pguo("8itV6du8Uh3NOhLUwLxIHd8i"),
Default = true,
Callback = function(_v1vj) _v4.LF_REST = _v1vj end
})
_v1ut.lfAdminKick = _v1uu:AddToggle({
Name = _pguo("8itV6du8QRzTJ1yg5PVjEw=="),
Default = true,
Callback = function(_v1vk)
_v4.LF_ADMIN_KICK = _v1vk
if _v1vk and _v4.LEGIT_FARM and _v4.adminKickSweep then _v4.adminKickSweep() end
end
})
_v1ut.lfFlyAway = _v1uu:AddToggle({
Name = _pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB"),
Default = true,
Callback = function(_v1vl) _v4.LF_FLYAWAY = _v1vl end
})
_v1ut.lfFlyAwayRadius = _v1uu:AddSlider({
Name = _pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc"),
Min = 50, Max = 500, Default = 150,
Callback = function(_v1vm) _v4.LF_FLYAWAY_RADIUS = _v1vm end
})
_v4.section(_v1uu, _pguo("/ztG74/PdxHKLVqg6/VuFw=="), _pguo("+Txd99y8YVjSJ0H0j/NmWNonXO/cvG8W225T5tv5cljfIF30x/lyWMkmW+zKvEE+9W504d3xIBfMbn7lyPV0WPgvQO2P7nUWzWASxc7/aFjaJ1zvj/dlHc49Eunb7yAXySAS887qZVSePV2gwfN0ENcgVaDG7yAU0T1GoM3lIAvJJ0bjx/VuH5BDOI2l3XUM0W5h98boYxCeClvuwKYgD9YrXKDb9GVY2idc74/lbw2eL0Dlj+xsGccnXOeP9GELnihb7sbvaB3ablXywOtpFtliEunbvHcZ1zpBoNrydBHSbkvv2rxhCttuXfXbvG8eni1d7c39dFSeIUf0j/NmWMkvRuXdvGEW2m5d7o/oaB2eKUDv2vJkVJ4iXefcvG8Nym5G6N3zdR/WbkboyrxnGdMrFfOP83cWnhxX9NrubljKIRLNzvVuWPMrXPWPtHQQ225U9cPwIAzXI1fyhrAgC84vRe7cvHQQ225c5dfoIBzXIF2gxvIgAdE7QKDD9XMMkm5T7su8dBDbblTh3fEgG988QOnK7yAX0G5F6dv0IBHKYBLXx/luWNAhEuTG8m9Y1yAS9Mf5IBTXPUagxu8gFNsoRqyP9XRY0iFV84/zdQySbkfuw/NhHM1uRujKvGgN3G5T7su8bB3fOFfzj+hoHZ49V/LZ+XJWng8S5Mbyb1jdIUfu2+8gGc1uVOnB9XMQ2yoS4dy8cxfRIBLh3LxpDJ48V+HM9GULnidG84/6aRbfIhLz2/1nHZ5md+zL+XJUniFAoO74dRTKblTv3bxkEdAhQaDY9XQQ0TtGoM7yID3SKlfyhrwtWPMhXPPb+XJY3yxd9sq8dBDfOhL0zvdlC546Xe+P8G8W2W5G74/5dh3MbkDlzv9oVrNEYffG6GMQnh1e79u8MUKeOlrlj/ppCs06EuTG8m9YyiES593zd1aeHV7v2+8gH9FuRu/fvHQXnixd9NvzbVjfIFagyfVuEc0mV+SP+GkW0T0S4d35IAvVJ0LwyvguWOomV6DD9XMMzW5B6MDrIB3IK0D5j/hpFtFuXe6P6GgRzW5f4d+wIBXfPFnly7x1FtIhUevK+CxY0TwS7MD/ax3abkXp2/QgEco9EsHC/mUKnj5A6cz5LljyK1P2yrxlDts8S6Dc8G8MniFcoIfybxbbZxL0wLxnCtE5EuXZ+XIBnjtc7MD/ax3ablbpwfMgF9BuRujG7yAV3z4eoNzxYRTSK0H0j/ppCs06HKDs/XIW1zhd8srvIBnQKhLoyu5iEcghQOXcvGEK225G8sr9dB3abkboyrxzGdMrCaDA8mwBnipb7sDvIBfQbkboyrxtGc5uS+/avGEK225d7o//YRaeLFeg2u9lHJBDONPY9XQb1m515cH4ZQqEbkXoxv9oWM0vROWP6G9Y2Txd94/6bwqeK0Tl3eUgHNcgXaDG8iAM1isS7MbvdFazRGHtzvBsHc06EtTAvEIR2SlX89umIBHZIF3yyu8gDNYrEvPD83QLni9c5I/7chfJPRLl2flyAZ4qW+7AvG8Wnjpa6dy8bRnOblvuj+h1CtBuH6Db9GVY0SBX84/lbw2eJlP2yrx1FtIhUevK+CAe1zxB9IO8dBDbIBLswP9rHdpuXe7K7yBVnitT48e8ZgrRIxLzwv1sFNs9RqDb8yAa1ylV5dzoLFjNJVvw3/VuH54vXPmP/WwK2y9W+Y/9dFjKJlfp3bxmEdAvXqDI7m8PyiYS89v9Zx2QQzjBw/BvD54bXOzA/2sR0CkSzsrrIDzXIF3zlbx3ENsgEuGP8G8b1StWoMv1bheZPRL02u5uWN0hX+XcsCAayzdBoMboIA/XOlqg7vFiHcxuH6DA8mwBnidUoNbzdVjWL0Tlj/luF8spWqyP83QQ2zxF6dz5IBHKblvzj+9rEc4+V+SP/W4cnjpa5Y/yZQDKbl3uyrxpC547QeXLsiA22zhX8o/vcB3QKkGg/fNiDcZuXfKP+m8LzSde84G8Tx7YblD5j/hlHt87XvSB"))
_v4.autoSwitchToggle = _v1uu:AddToggle({
Name = _pguo("/ztG74/PdxHKLVqg6/VuFw=="),
Skull = true,
Default = false,
Callback = function(_v1vn)
_v4.AUTO_SWITCH = _v1vn
if _v1vn and _v4.asRefreshLists then pcall(_v4.asRefreshLists) end
if not _v1vn then _v4.AS_BUSY = false end
end
})
;(function()
local _v1vo = _v4.asItems and _v4.asItems() or { _pguo("liBd7sq1") }
_v4.AS_SLOTS = _v4.AS_SLOTS or {}
for _v1vp = 1, 6 do
_v4.AS_SLOTS[_v1vp] = _pguo("liBd7sq1")
_v1ut[_pguo("3z1h7MDo") .. _v1vp] = _v1uu:AddDropdown({
Name = _pguo("7Tlb9Mz0ICvSIUag") .. _v1vp,
Items = _v1vo,
Default = _pguo("liBd7sq1"),
Callback = function(_v1vq) _v4.AS_SLOTS[_v1vp] = _v4.asNameOf and _v4.asNameOf(_v1vq) or _v1vq end
})
if _v4.asDropdowns then _v4.asDropdowns[_v1vp] = _v1ut[_pguo("3z1h7MDo") .. _v1vp] end
end
end)()
_v1ut.asGender = _v1uu:AddDropdown({
Name = _pguo("7Tlb9Mz0ID/bIFbl3Q=="),
Items = { _pguo("8y9e5Q=="), _pguo("+Ctf4cP5") },
Default = _pguo("8y9e5Q=="),
Callback = function(_v1vr) _v4.AS_GENDER = _v1vr end
})
_v1ut.asAutoOrder = _v1uu:AddToggle({
Name = _pguo("7SNT7MP5cwyeGl2g7fVnH9s9Rg=="),
Default = false,
Callback = function(_v1vs) _v4.AS_AUTO_ORDER = _v1vs end
})
_v1ut.asAutoBuy = _v1uu:AddToggle({
Name = _pguo("/yJe79i8VRbSIVHrxvJnWPArRaDr9W4XzQ=="),
Default = false,
Callback = function(_v1vt) _v4.AS_AUTOBUY = _v1vt end
})
_v4.section(_v1uu, _pguo("+C9A7Y/IaRXbPA=="), _pguo("+C9A7Y/IaRXbPAigzPN1Fso9EujA6yAU0SBVoO7aS1j4L0Dtj/NyWPIrVenbvEYZzCMS6M7vIBrbK1yg3eluFtcgVa6Py2gd0G5G6Mq8dBHTKxLp3Lx1CJ4nRqDb6XIWzW5G6Mq8ZhnMI0Ggh/1uHJ4PR/TAvFMP1zpR6Ia8bx7YYhLswPtzWNE7RqDb9HIXyylaoNv0ZVjZL1/liO8gKts6R/LBvHQXngNT6cG8TR3QOxLvwf9lWMchR6DO7mVY0TtGoMD6IBvRI1Dh27xhFtpuReHb+XJUni9c5I/wZRnIK0Gg2/RlWM0rQPbK7i5Y9ygS6du8YxnQIF30j/BvH54hR/SP62kM1idcoJq8bRHQO0bl3LxpDJ4iV+HZ+XNY3yBL987lLljnIUegyPl0WN9uReHd8mkW2W4HoML1bg3KK0GgzflmF8wrHKD76XIW1yBVoNv0ZVjKJ1/l3bxvHthuU+7LvG8Wnj1G4d3oc1jKJlegzPN1FspuU+fO9W5Ws0R+5c7qZVj/KEbl3bwoFdcgR/TK7ylCniZd94/wbxbZbkbvj/phCtNuUOXJ83IdniJX4dn1bh+Q"))
_v4.farmTimerToggle = _v1uu:AddToggle({
Name = _pguo("+C9A7Y/IaRXbPA=="),
Default = false,
Callback = function(_v1vu)
_v4.FARM_TIMER = _v1vu
_v4.ftElapsed, _v4.ftWarned = 0, false
if _v1vu then
pcall(function() _v4.Hub:Notify(_pguo("+C9A7Y/IaRXbPAigw/lhDts9EuHJ6GUKng==") .. math.floor(_v4.FT_MINUTES or 0) .. _pguo("niNb7troZQueIVSgyf1yFdcgVQ=="), 5) end)
end
end
})
_v1ut.ftMinutes = _v1uu:AddSlider({
Name = _pguo("8itT9sq8QR7KK0Cgh/FpFss6V/OG"),
Min = 5, Max = 720, Default = 120,
Callback = function(_v1vv) _v4.FT_MINUTES = _v1vv end
})
_v4.section(_v1uu, _pguo("/wh5oO7xYh3MbnTh3fE="), _pguo("/wh5oO7xYh3MbnTh3fE6WM4vQOvcvHkXyzwS5Mbyb1jNL1Tlw+UgDdAqV/KP6GgdniNT8I/ob1jNJ0ag7tpLWN8gVqDK/XIWng9f4sruLlj3OhLmw/VlC549RvLO9WcQym5W79jyIBnKbkHwyvlkWIt+EvTAvDFIjm5B9Nr4c1jLIFbl3bx0ENtuVfLA6W4cnjla5d35IAHROxLh3fkgGdAqEujA8GQLnjpa5d35Llj4PFfl1fkgPtEhVqyP2nId2zRXoPj9dB3MblPuy7xBDcohEsPD+WEW0idc5dzvIB/Rbl3uj+toEdIrEunbvHIN0D0SqM7yZFjcL1Hrj/NmHp4vVPTK7ncZzCpBoMb6IAzWK0ug2PlyHZ4hVOaGsCAZ0CoS0sD+bBfGaUGgxvhsHZ4lW+PEvGkLniZT7svwZRyeKF3yj+VvDZBuZejK8iAM1isS9MbxZVjXPRL137xpDJ4oXunK7yAa3y1ZoNrsIAzRbkXoyu5lWNc6EvPb/XIM2yoeoMPzZwueIUf0j+hoCtE7VeiP6GgdnilT7cq7c1jsK0b13fIgDNFuf+HG8iA12yBHoIfoaB2eKEfsw7x0EdMrQKmP/W4cniJX4dn5c1jKJleg3PlyDts8HKD76XIW1yBVoMboIBfYKBLlzu5sAZ4oXunK7yAa3y1ZoNrsIBnQKhLz2/NwC546WuXd+S5Y/wh5oOn9chWSbn7lyPV0WPgvQO2DvEYUx2ISxsDvcxHSbnTh3fEgGdAqEsHa6G9Y7Tlb9Mz0IBnMKxLz2PV0G9YrVqDA+mZYySZb7Mq8aQyePEfu3LINcv8jUOXdvEE+9W5m6cL5IFDTJ1z12/lzUYRuWu/YvGwX0CkS9MC8cwzfNxL1wfhlCp46WuWP8WEInixX5sDuZVjSIVXnxvJnWNE7Rq4="))
_v4.amberFarmToggle = _v1uu:AddToggle({
Name = _pguo("/wh5oO7xYh3MbnTh3fE="),
Skull = true,
Default = false,
Callback = function(_v1vw)
_v4.AMBER_FARM = _v1vw
if _v1vw then
for _v1vx, _v1vy in ipairs({ { _pguo("/wh53+ndUjU="), _pguo("3yhZxs7ubSzRKVXsyg==") }, { _pguo("8gt1yfvDRjnsAw=="), _pguo("0itV6dvaYQrTGl3nyPBl") }, { _pguo("+AJr"), _pguo("2CJL1MD7ZxTb") },
{ _pguo("+AFh0+bQXz7/HH8="), _pguo("2CFB88bwRhnMI2bvyPtsHQ==") }, { _pguo("/xtmz/DPVzHqDXo="), _pguo("3ztG7/zraQzdJmbvyPtsHQ==") } }) do
if _v4[_v1vy[1]] and _v4[_v1vy[2]] then pcall(function() _v4[_v1vy[2]]:Set(false) end) end
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
_v1ut.amberMinutes = _v1uu:AddSlider({
Name = _pguo("/yNQ5d28QT71bmbpwvkgUNMnXPXb+XNR"),
Min = 5, Max = 720, Default = 120,
Callback = function(_v1vz) _v4.AMBER_MINUTES = _v1vz end
})
_v4.section(_v1uu, _pguo("7CtY78by"), _pguo("7CtY78byOljVK1fw3Lx5F8tuVOHd8WkW2W5G6N3zdR/WblnpzPdzVJ4tQOHc9GULni9c5I/vZQrIK0Cg3flzDN88RvOBvEIZ3SUS78G8dBDbbkH0zu50WM0tQOXK8iARym5C6cz3c1jtO0D2xuphFJ4vXOSP6GgdniNT8I/+ZRTROR6gxfNpFs1uXe7KvG8enjpa4du8bRnOaUGg2/RyHdtuVPXD8GULym5B5d3qZQrNbkbozuggC8onXuyP9GELnjxd78K8KBbbOFfyj+hoHZ4hXOWP5W8NniRH89u8bB3YOhusj+9wGckgQaDb9GVY2idc74/lbw2eIlPz27xwFN83V+SP825YyiZT9I/xYQieYxL3xuhoWP87Ru+Pz3cRyi1aoMDyLFjKJlegwfl4DJ47XObG8mkL1itWoMv1bheeJ1Sg2/RhDJ4hXOWP9XNY2iFc5Y+xIBnQKhL02u5uC54sU+PEvG8Wnjla4dv5dh3MbkXh3LxyDdAgW+7IpiA5+AUSxs7ubVSeAlfnxuggPt88X6yP3XUM0W5h98boYxCSbnTv3O9pFJ4IU/LCsCA5+AUSwcL+ZQqeCFPywrxhFtpudOHd8SAs1yNX8oG8VBDbbkH0zu50WM0tQOXK8iAf1zhX84/lbw2edhLzyv9vFto9EvTAvGMZ0C1X7IGRCizWKxLzzO5pCMpuWuHcvHQXniJd4cu8YgGeJ0bzyvBmWNEgEvTH+SALyi9A9I/vYwrbK1ygzvJkWNcgEvTH+SAL2zxE5d2mID3kbnP12/MgNN87XOPH+XJY2iFX84/oaBnKbhrp27xyHdQhW+7csCAR0CRX49vvIBnQKhLy2vJzWMomV6Dc/3IRzjobro/dIB7XIFvzx/lkWP87Ru+Pz3cRyi1arI/aYQrTbmbpwvlyWNE8EsHC/mUKnghT8sKwIBfMbkfuw/NhHNcgVaDb9GVY1jtQrI/xZRnQPRL5wOkgC8ohQvDK+CAX0G5C9d3sbwvbbh+gwfN0ENcgVaDG7yAMyzxc5cu8YhndJRLvwbIgKtskXenBvGEW2m5b9Ny8bRnOblPyyrxzGcgrVqDb9GVY0yFf5cHoIAHROxLjx/1uH9tuRujK8SAZ0CoS4d/sbAGeJ1ygyuplCsduQeXd6mUKhW5G6MrlIBnMKxLuwOggCN88RqDA+iAZni1d7sn1Z1SeL1zkj/lhG9ZuYO/N8G8Ani9R48DpbgyeJlPzj/V0C54hRe6BkQoq2yRd6cG8TRnOdBL0x/kgFd8+EvTAvGoX1yAcoOP9cwyeHl7h1vlkWNc9EvTH+SAV3z4S+cDpIA/bPFegw/1zDJ4hXKDY9XQQnhxX6sD1bljRIBw="))
_v4.rejoinToggle = _v1uu:AddToggle({
Name = _pguo("7CtY78by"),
Default = _v4.REJOIN,
Callback = function(_v1w0)
_v4.REJOIN = _v1w0
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
;(function()
local _v1w1 = { _pguo("8i9B9I/MbBnHK1Y="), _pguo("9DtA4dzvaRs="), _pguo("/TxX9M7/ZRfLPRLV3/BhFto="), _pguo("/TxX9M7/ZRfLPRLMwOtsGdAq"), _pguo("/TxX9M7/ZRfLPRLB3f9oEc4rXuHI8w==") }
if not table.find(_v1w1, _v4.REJOIN_MAP) then _v4.REJOIN_MAP = _pguo("8i9B9I/MbBnHK1Y=") end
_v1ut.rejoinMap = _v1uu:AddDropdown({
Name = _pguo("7CtY78byIDXfPg=="),
Items = _v1w1,
Default = _v4.REJOIN_MAP,
Callback = function(_v1w2)
_v4.REJOIN_MAP = _v1w2
if _v4.rejoinSave then _v4.rejoinSave() end
end
})
end)()
_v4.antiAfkToggle = _v1uu:AddToggle({
Name = _pguo("/yBG6Y/dRjM="),
Default = false,
Callback = function(_v1w3) _v4.ANTI_AFK = _v1w3 end
})
_v4.section(_v1uu, _pguo("+B5hoPz9dh3M"), _pguo("+B5hoPz9dh3MdBLmwO4gFNsvROnB+yAM1isS5s7ubVjMO1zuxvJnWNcgEvTH+SAa3y1Z593zdRbaYBLT2+5pCM1uRujKvGcZ0ysS5MDrbljKIRLhw/FvC8puXO/b9GkW2W5G74/uZRbaK0CggrxsF8krQfSP7XUZ0idG+YO8bheePVrhy/N3C5JuXO+P7G8Lym5X5sn5YwzNYhLmwPsgG9IhQeXLvHQXni8S5srrIAvKO1bzg7xhWNIhRaDJ7mEV225R4d+wIBnQKhL0x/kgS/puROnK6yAX2CgS98f5ch2eN1313bxlANstR/TA7iAZ0iJd99y8aQyQbmboyrxmGcwjEuvK+XALnjxH7sH1bh+eIVygyP1tHZ4qU/TOsCAW0ToS9Mf5IAvdPFflwbIgLMs8XKDG6CAX2CgS9MC8Zx3Kbkvv2u4gFtE8X+HDvHYR2zkS4s7/a1Y="))
_v1ut.fpsSaver = _v1uu:AddToggle({
Name = _pguo("+B5hoPz9dh3M"),
Default = false,
Callback = function(_v1w4) _v4.FPS_SAVER = _v1w4; if _v4.applyFpsSaver then _v4.applyFpsSaver(_v1w4) end end
})
_v4.section(_v1uu, _pguo("/SJX4cHwaRbbPUE="), _pguo("/ztG74/fbB3fIF7pwflzC4RuWeXK7HNYxyFHoMzwZRnQblP12/NtGconUeHD8HlWs0R77sn1bhHKKxLP1+VnHdB0EvPb83ALnjdd9d28bwDHKVfuj/hyGdcgW+7IvHUW2itA987oZQqQ"))
_v4.autoCleanToggle = _v1uu:AddToggle({
Name = _pguo("/ztG74/fbB3fIF7pwflzCw=="),
Default = false,
Callback = function(_v1w5) _v4.AUTO_CLEAN = _v1w5 end
})
_v1ut.infOxygen = _v1uu:AddToggle({
Name = _pguo("9yBU6cH1dB2eAUr5yPlu"),
Default = false,
Callback = function(_v1w6) _v4.INF_OXYGEN = _v1w6 end
})
_v4.section(_v1uu, _pguo("+DxX5dX5ICvKL0bz"), _pguo("+DxX5dX5ID7RIVa6j+90F849EvnA6XJY2CFd5I/+YQqeKFPsw/VuH5BDOMbd+WUC225l4dv5ckKePUbv3+8gAdE7QKDY/XQdzG5Q4d28ZhnSIlvuyLI="))
_v1ut.freezeFood = _v1uu:AddToggle({
Name = _pguo("+DxX5dX5ID7RIVY="),
Default = false,
Callback = function(_v1w7) _v4.FREEZE_FOOD = _v1w7 end
})
_v1ut.freezeWater = _v1uu:AddToggle({
Name = _pguo("+DxX5dX5IC/fOlfy"),
Default = false,
Callback = function(_v1w8) _v4.FREEZE_WATER = _v1w8 end
})
_v4.freezeFoodToggle, _v4.freezeWaterToggle = _v1ut.freezeFood, _v1ut.freezeWater
_v1uu = _v1k5(_v1up:AddSubTab({Name = _pguo("/ztG74/PcBnJIA==")}))
_v4.section(_v1uu, _pguo("/ztG74/PcBnJIA=="), _pguo("7T5T7dy8Uh3PO1fz289sF8puVO/dvHkXyzwS88rwZRvKK1agzuxlAJ4qW+7AvGELnihT89u8YQuePl3z3PViFNtuQe+P5W8NnilA4c28YVjNIl30j+hoHZ4nXPPb/W4MniFc5Y/zcB3QPRyNpZEKN84rXKDL9W4Xnj1X7Mr/dBHRIB6g3/VjE546WuWP+GkW0W5T7su8Zx3QKlfyj+VvDZ45U+7bsCAM1itcoNvpchaeOlrp3LxvFpBue/SP8G8b1T0S+cDpcljKL0DnyuggGdAqEubG7mULnjADsp+8ch3PO1fz2+8gCNs8Eu3G8nUM225H7tv1bFjXOhLnyuhzWNcgHqDb9GUWnj1C4djyc1jHIUegzul0F9MvRunM/WwUx2A/iqKWVxfMJUGgyuplFp4nVKDb9GVY7CFQ7MDkIA/XIFbv2LxpC54gXfSP+m8byz1X5I+0dQvbPRLkxu5lG8puee7G6CAb3yJe84O8bhfKbl/v2u9lWN0iW+PE7ylWnh1G79/vIBnLOl3tzuhpG98iXvmP824b225L79q8cwjfOVyu"))
_v4.autoSpawnToggle = _v1uu:AddToggle({
Name = _pguo("/ztG74/PcBnJIA=="),
Default = false,
Callback = function(_v1w9)
if _v1w9 then
_v4.startAutoSpawn()
else
_v4.autoSpawnCleanup()
end
end
})
function _v4.markScaled(_v1wa, _v1wb, _v1wc)
local _v1wd = (tonumber(_v1wc) or 1) >= 5
for _v1we, _v1wf in ipairs({ _v1wa, _v1wb }) do
if _v1wf and _v1wf.SetSkull then pcall(function() _v1wf:SetSkull(_v1wd) end) end
end
end
_v1uu = _v1k5(_v1uq:AddSubTab({Name = _pguo("9idG4sDkID3GPlPuy/ly")}))
_v4.section(_v1uu, _pguo("9idG4sDkID3GPlPuy/ly"), _pguo("8y9Z5dy8Tyz2C2Cg3/BhAds8QaDK/XMR2zwS9MC8aBHKblD5j/tyF8knXOeP6Ggdnj5T8tvvIBfYbkboyvEgAdE7EuPO8iAU3yBWoM7yIBnKOlPjxLxvFpBDOI2l2W4Z3CJXoOf1dBrRNhLF1+xhFtorQLqP6HUK0D0S6du8bxaQQzjWxu91GdInSOWP1GkM3CFK5dymIBzML0Xzj+hoHZ4rXOzO7mcd2m5C4d3oc1jNIRL5wOkgG98gEvPK+SAP1i9GoNbzdVjfPFeg3OtpFtknXOeP/XRWngFc7Na8eRfLbkHlyrx0ENs9V66illYRzTtT7I/TcBndJ0b5lbxoF8luQe/D9WRYyiZd88q8YhfGK0Ggw/NvE5BDOMjG6GIXxm5/9cPoaQjSJ1fylbxoF8luX/XM9CAa1ylV5d28dBDbbkLh3ehzWNkrRqyP6XBYyiESsZ/kLlj/IEv0x/VuH54oQO/CvDUAni1T8t31ZQueLxLzxOlsFJ4vXOSP9XNYyCtA+Y/zYg7XIUfzj+hvWN8gS+/B+SAP3zpR6MbyZ1jfblTpyPR0Vg=="))
_v4.hitboxToggle = _v1uu:AddToggle({
Name = _pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),
Default = false,
Callback = function(_v1wg)
_v4.HITBOX_EXPANDER = _v1wg
if not _v1wg then _v4.resetAllHitboxes() end
end
})
_v1ut.hitboxVis = _v1uu:AddToggle({
Name = _pguo("6CdB9c7waQLbbnrp2/5vANs9"),
Default = false,
Callback = function(_v1wh)
_v4.HITBOX_VISUALIZE = _v1wh
if not _v1wh then
for _v1wi, _v1wj in _v0:GetPlayers() do
if _v1wj ~= _v2 then
_v4.visualizePlayerHitbox(_v1wj, false)
_v4.hbShown[_v1wj] = nil
end
end
end
end
})
_v1ut.hitboxVisOpacity = _v1uu:AddSlider({
Name = _pguo("6CdB9c7wIDfOL1Hp2+U="),
Min = 0, Max = 100, Default = 50,
Callback = function(_v1wk) _v4.HITBOX_VIS_TRANSPARENCY = 1 - (_v1wk / 100) end
})
_v1ut.hitboxMult = _v1uu:AddSlider({
Name = _pguo("9idG4sDkIDXLIkbp3/BpHcw="),
Min = 1, Max = 10, Default = 1,
Callback = function(_v1wl) _v4.HITBOX_MULTIPLIER = _v1wl; _v4.markScaled(_v4.hitboxToggle, _v1ut.hitboxMult, _v1wl) end
})
_v4.section(_v1uu, _pguo("9idG4sDkID/MIUfw3A=="), _pguo("6SZb48e8YhfaNxLwzu50C54hXKDW83UKnjpT8sj5dFjHIUegzu5lWN8iXu/Y+WRYyiES6MboLlj/IEv0x/VuH543XfWP6W4M1y1ZoMz9bhbROhLiyrxoEcpuU/SP/WwUkm5B74/lbw3MblP02/1jE81uQfTA7CAczCdU9MbyZ1jRIEbvj/0gFNspEvfH+W5YxyFHoNj9bgzbKhL0x/kgENsvVq6P1GUZ2m5b84/oaB2eO0H1zvAgG9YhW+PKsg=="))
_v1ut.hitboxGroups = _v4.groupDropdown(_v1uu, _pguo("7i9A9Nw="), _v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER)
_v1uu = _v1k5(_v1uq:AddSubTab({Name = _pguo("7CtT48c=")}))
_v4.section(_v1uu, _pguo("7CtT48c="), _pguo("8y9Z5dy8WTfrblPiw/kgDNFuWunbvGYK0SMS5trudBDbPBLh2P15WNw3Eufd83cR0CkS+cDpcljROVygzuh0Gd0lEvLO8mcdkEM4jaXZbhncIleg/flhG9Z0EvTa7m4LnidGoMDyLnW0GFvz2v1sEcQrEtLK/WMQhG5W8s7rc1jHIUfyj/N3Fp48U+7I+SAL0W5L79q8YxnQbkHlyrxpDJBufe7D5SAB0TsS88r5IAzWJ0GuopZSHd8tWqD59XMN3yISz9/9YxHKNwigx/N3WM0hXunLvHQQ3zoS4sDkIBTRIVnzgZEKKtsvUeiP0XUUyidC7Mb5ckKeJl33j/phCp43XfXdvHIZ0ClXoMrkdB3QKkGsj+lwWMohErGf5C5Y/yBL9Mf1bh+eKEDvwrw1AJ4tU/Ld9WULni8S88TpbBSeL1zkj/VzWMgrQPmP82IO1yFH84G8UhnXPVegxuggGZ4iW/Tb8GVY3zoS4Y/oaRXbbh+g2/RlWM0rQPbK7iAb1itR69y8dBDXPR6gzvJkWMohXaDC6WMQnilX9Ny8aR/QIUDly7INcu4vQPTcpiAP1idR6I/zZljHIUfyj/N3Fp4+U/Lb7yAf2zoS9Mf5IB3GOkDhj+5hFtkrHA=="))
_v1ut.reach = _v1uu:AddToggle({
Name = _pguo("+yBT4sP5ICrbL1Ho"),
Default = false,
Callback = function(_v1wm)
_v4.REACH_ENABLED = _v1wm
if not _v1wm and not _v4.REACH_VISUALIZE then _v4.resetLocalReach() end
end
})
_v1ut.reachVis = _v1uu:AddToggle({
Name = _pguo("6CdB9c7waQLbbmDlzv9o"),
Default = false,
Callback = function(_v1wn)
_v4.REACH_VISUALIZE = _v1wn
if not _v1wn and not _v4.REACH_ENABLED then _v4.resetLocalReach() end
end
})
_v1ut.reachVisOpacity = _v1uu:AddSlider({
Name = _pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="),
Min = 0, Max = 100, Default = 50,
Callback = function(_v1wo) _v4.REACH_VIS_TRANSPARENCY = 1 - (_v1wo / 100) end
})
_v1ut.reachMult = _v1uu:AddSlider({
Name = _pguo("7CtT48e8TQ3SOlvww/VlCg=="),
Min = 1, Max = 10, Default = 1,
Callback = function(_v1wp) _v4.REACH_MULTIPLIER = _v1wp; _v4.markScaled(_v1ut.reach, _v1ut.reachMult, _v1wp) end
})
_v1ut.reachGroups = _v4.groupDropdown(_v1uu, _pguo("7i9A9Nw="), _v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER,
_v4.resetLocalReach)
_v1uu = _v1k5(_v1uq:AddSubTab({Name = _pguo("/zpG4cz3ICzRIV7z")}))
_v4.section(_v1uu, _pguo("9yBB9M7ydFj/OkbhzPc="), _pguo("9yBB9M7ydFj/OkbhzPc6WM0+V+XL7yANzm5G6Mq8YQzKL1Hrj/1uEdMvRunA8ixYzSES+cDpIBvfIBLz2PVuH54vVeHG8iAL0SFc5d2yDXL/OkbhzPcgK84rV+SVvGgXyW5f9cz0IB7fPUbl3bIgLts8S6DH9WcQniJd78TvIBfcOFvv2u9sAZ45QO/B+yAM0W5T7tbzbh2eOVP0zPRpFtlgP4rh8yA5yjpT48S8QxfRIlbv2PI6WMwrX+/Z+XNYyiZXoNj9aQyeLFf02PllFp4vRvTO/2sLnitc9MbuZRTHYBLUx/VzWNc9EvPK7GEK3zpXoMnubxWeOlrlj/1uEdMvRunA8iAZ3CFE5YO8YRbabkboyrx0D9FuQfTO/2tW"))
_v1ut.noAtkCd = _v1uu:AddToggle({
Name = _pguo("9yBB9M7ydFj/OkbhzPc="),
Skull = true,
Default = false,
Callback = function(_v1wq)
_v4.NO_ATK_CD = _v1wq
if not _v1wq then _v4.restoreAttackSpeed() end
end
})
_v1ut.attackSpeed = _v1uu:AddSlider({
Name = _pguo("/zpG4cz3ICvOK1fk"),
Min = 1, Max = 10, Default = 3,
Callback = function(_v1wr) _v4.ATTACK_SPEED = _v1wr end
})
_v1ut.noAtkCooldown = _v1uu:AddToggle({
Name = _pguo("8CESwdvoYRvVbnHvwPBkF8kg"),
Skull = true,
Default = false,
Callback = function(_v1ws) _v4.NO_ATK_COOLDOWN = _v1ws end
})
_v4.section(_v1uu, _pguo("7Sde5cHoIDnXIw=="), _pguo("8y9Z5dy8bxbSNxL0x/kgGtEqS6Df/XIMzW5L79q8YxDRIUHlj/RpDMovUOzKvG8WnitE5d3lbxbbYhLzwLx5F8s8EuHb6GEb1T0S4cPrYQHNbl7hwfggD9YrQOWP5W8Nnj5b48T5ZFjXIEH0yv1kWNEoEu/BvHcQ3zpX9sruIAjfPEagxu8gFtsvQOXc6C51tEM4xcH9YhTbbmHpw/luDJ4PW+2VvHQNzCBBoMboIBfQYD+K//1yDM10EvfH9WMQnj5T8tvvIAvKL0ugx/V0DN8sXuWB"))
_v1ut.silentAim = _v1uu:AddToggle({
Name = _pguo("+yBT4sP5ICvXIlfu27xBEdM="),
Default = false,
Callback = function(_v1wt)
_v4.SILENT_AIM = _v1wt
if not _v1wt then _v4.resetAllHitboxes() end
end
})
_v1ut.silentGroups = _v4.groupDropdown(_v1uu, _pguo("7i9A9Nw="), _v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER)
_v1uu = _v1k5(_v1ur:AddSubTab({Name = _pguo("7S9E5Y/YaRbR")}))
_v4.section(_v1uu, _pguo("7S9E5Y/YaRbR"), _pguo("9idW5dy8eRfLbkXoyu5lWNAhRujG8mdY3S9coN35YRvWbkvv2rAgDNYrXKDN7mkW2T0S+cDpIBrfLVmuopYNcu0vROWP2GkW0XQS9M73ZQueN131j6swSJ49RvXL7yAN0CpX8o/oaB2eI1Pwg7xvCp5/ArCfvHMMyypBoMbydBeeOlrlj+9rAZJuU+7LvGgX0ipBoNbzdVjKJlfyyrxmCtE0V+6BvFQNzCBb7si8aQyeIVTmj/psEds9EvnA6SAa3y1ZoNvzIAzWKxLl1/1jDJ49Qu/bvHkXy25B9M7udB3ablTywPEgGdAqEuzO8mQLnjdd9Y/zbljHIUfyj/plHcpgEtnA6SAb3yAS89v1bBSeIlvlj/hvD9BuU+7LvHMU2ytCoNj0aRTbblrpy/hlFpJuQe+P5W8NniZX4cOyDXLtL0Tlj9hpCtstRunA8jpY2iFF7o/pbhzbPBL0x/kgFd8+HqDA7iANzm5b7tvzIAzWKxLzxOUudbQPR/TAsVMZyCsS4du8SB3fIkboj7k6WNYnVuXcvHkXy25T9dvzbRnKJ1Hhw/B5WMkmV+6P5W8NzG5a5c7wdBCeKkDv3+8gFNE5HKDp9XIdzW5d7sz5LFjKJlfuj+thEco9EvXB6GkUnjdd9Y/0YQ7bblrlzvBlHJ4vUO/Z+SAM1isS7MbyZVjcK1Tv3fkgEcpuUeHBvGYRzCsS4cj9aRaQQzjJwf9sDdorEsLD+WUchG5R79rydAueLF7lyvhpFtluVuHC/Wcdni9BoM7wch3fKkugw/NzDJBuBrCKvGgd3yJG6I/raBHSKxLiw/llHNcgVaCcqSVY3SFH7tvvIBnNbgelg7xzF543XfWP9Gkc225Q5cnzch2eOlrlj/5sHdsqEuvG8GwLnjdd9YGRCjnLOl2t/P12HZ4aWvLK72gX0ioSpZW8dBDbblrlzvB0EJ4iV/bK8CAM1i9GoNvuaR/ZK0Dzj/V0Vg=="))
_v1kf = _v1uu:AddToggle({
Name = _pguo("7S9E5Y/YaRbR"),
Skull = true,
Default = false,
Callback = function(_v1wu)
if _v1wu and not _v4.SAVE_DINO_ACTIVE then _v1kw()
elseif not _v1wu and _v4.SAVE_DINO_ACTIVE then _v4.releaseDino() end
end
})
_v1ut.saveDir = _v1uu:AddDropdown({
Name = _pguo("7S9E5Y/YaQrbLUbpwPI="),
Skull = true,
Items = { _pguo("+iFF7g=="), "Up" },
Default = _pguo("+iFF7g=="),
Callback = function(_v1wv) _v4.SAVE_DIR = _v1wv end
})
_v4.autoSaveToggle = _v1uu:AddToggle({
Name = _pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),
Default = false,
Keybind = true,
Callback = function(_v1ww)
_v4.AUTO_SAVE = _v1ww
if _v1ww and _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("/ztG74LPYQ7bbkLh2u9lHJ45WunD+SA5+AUSxs7ubV/NbmHhyfl0AZ4nQaDA8g=="), 5) end end)
end
end
})
_v4.autoSaveBleedToggle = _v1uu:AddToggle({
Name = _pguo("9yBR7Nr4ZVj8Ilflyw=="),
Default = false,
Callback = function(_v1wx) _v4.AUTO_SAVE_BLEED = _v1wx end
})
_v4.autoSaveSlider = _v1uu:AddSlider({
Name = _pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),
Min = 1, Max = 95, Default = 30,
Callback = function(_v1wy) _v4.AUTO_SAVE_PCT = _v1wy end
})
_v4.section(_v1uu, _pguo("+C9e7MbyZw=="), _pguo("8CESxs7wbFj6L1/hyPk6WMchR6Db/WsdniBdoMv9bRnZKxLm3fNtWNgvXuzG8mdUniZd98rqZQqeKFPyj+VvDZ4qQO/fsg=="))
_v4.noFallToggle = _v1uu:AddToggle({
Name = _pguo("8CESxs7wbFj6L1/hyPk="),
Default = false,
Callback = function(_v1wz) _v4.NO_FALL_DAMAGE = _v1wz; _v4.applyFallImmunity(_v1wz) end
})
_v1uu = _v1k5(_v1ur:AddSubTab({Name = _pguo("8yFE5cL5bgw=")}))
_v4.section(_v1uu, _pguo("+CJL"), _pguo("+CJLuo/6dRTSbl/hwelhFJ4oXunI9HRWnhlz0+u8dBeeI132yrAgK84vUeWP6G9Y2SES9d+wIDvKPF6g2/MgH9FuVu/Y8i5Y8yFE5cL5bgyeKF3sw/N3C543XfXdvGMZ0ytA4YGRCj7SNxLT3/llHIRuWu/YvGYZzToS+cDpIB7SNxw="))
_v4.flyToggle = _v1uu:AddToggle({
Name = _pguo("+CJL"),
Skull = true,
Default = false,
Callback = function(_v1x0) _v4.FLY = _v1x0 end
})
_v4.flySpeedSlider = _v1uu:AddSlider({
Name = _pguo("+CJLoPzsZR3a"),
Skull = true,
Min = 10, Max = 100, Default = 50,
Callback = function(_v1x1) _v4.FLY_SPEED = _v1x1 end
})
_v4.section(_v1uu, _pguo("9yBB9M68VA3MIA=="), _pguo("9yBB9M68VA3MIAigx/NsHJ46WuWP92UBnjpdoNzyYQieJ1zz2/1uDNI3EvTAvGYZ3SsS98f5ch3IK0Cg1vN1Cp4tU+3K7mFY1z0S8MD1bgzXIFWu"))
_v1mx = _v1uu:AddKeybind({
Name = _pguo("9yBB9M68VA3MIA=="),
Default = Enum.KeyCode.Unknown,
Callback = function() end
})
_v4.section(_v1uu, _pguo("7ztb48S8VA3MIA=="), _pguo("7ztb48S8VA3MIAig2+lyFs1uS+/avGYZzTpX8o/oaBnQblzv3fFhFJJuRenb9G8Nym5G6Mq8aRbNOlPu27xzFt8+HI2lyHUK0G5h9N35bh/KJgigx/N3WNM7UeiP+mELyitArg=="))
_v1ut.quickTurn = _v1uu:AddToggle({
Name = _pguo("7ztb48S8VA3MIA=="),
Default = false,
Keybind = true,
Callback = function(_v1x2) _v4.QUICK_TURN = _v1x2 end
})
_v1ut.turnSpeed = _v1uu:AddSlider({
Name = _pguo("6jtA7o/PdArbIFX0xw=="),
Min = 0, Max = 500, Default = 250,
Callback = function(_v1x3) _v4.TURN_SPEED = _v1x3 end
})
_v4.section(_v1uu, _pguo("/ztG74/bchfJ"), _pguo("/ztG74/bchfJdBLryvlwC543XfWP+3IXySdc54/raQzWIUf0j+VvDZ4mU/bG8mdYyiES5MC8YRbHOlrpwfsu"))
_v4.autoGrowToggle = _v1uu:AddToggle({
Name = _pguo("/ztG74/bchfJ"),
Default = false,
Callback = function(_v1x4)
if _v1x4 and not _v4.AUTO_GROW then
_v4.AUTO_GROW = true
_vfl = nil
_v4.startAutoGrow()
elseif not _v1x4 and _v4.AUTO_GROW then
_v4.stopAutoGrow()
end
_v4.AUTO_GROW = _v1x4
end
})
_v1uu = _v1k5(_v1us:AddSubTab({Name = _pguo("+x1i")}))
_v4.section(_v1uu, _pguo("7iJT+cruID3tHg=="), _pguo("7jtG84/9IBTfLFfsj/1iF8grEuXZ+XIBnj5e4db5cljNJl33xvJnWMkmU/TK6mUKnjdd9Y/oaRvVblrl3fkuWPAhUO/L5SAd0j1XoMz9bljNK1egzvJ5WNEoEunbsg1ys0R37s7+bB2eC2HQlbx0DcwgQaDb9GVY0i9Q5cPvIBfQYD+K+/RlWMwrQfSP/2gX0T1XoNj0YQyeL0Lwyv1yC54hXKDb9GVY0i9Q5cOmIBbfI1esj/hpFtFuRvnf+SxY2Txd99v0IAvKL1Xlg7xnHdAqV/KDvGgd3yJG6IO8cwzfI1vuzrAgD9snVejbsCAc1z1G4cH/ZVazRHTvwPggV54ZU/TK7iBXngdc5sr/dBHRIBLCzu46WM0mXffcvHQQ3zoS89v9dFjfPRLhj/5hCpBufPXC/mUKhG5B6MDrc1jUO0H0j+hoHZ44U+za+SAX0G5d7sq8YxfSIUfyyvggFNcgV6DG8nMM2y9Wro/IaB3HblPw3/lhCp4hXOPKvHQQ225B5d3qZQqeJlPzj+9lFspuRujO6CAI0i9L5d27c1jIL171yrAgD9YnUeiP9XRY2iFX84/6bwqeIFfh3f55WM4iU/nK7nNYySZX7srqZQqeJ0agzPRhFtkrQa6ilkIU2ytWoOrPUEKeI1PyxO8gDNYrEvDO7nRY0SgS9Mf5aQqeJlfhw+hoWNwvQKDb9GEMnidBoM7wch3fKkugw/NzDJ46XaDN8GUd2idc54G8Uh3abl/lzvJzWMomU/SP9GUZ0jpaoMbvIB/RIFegwfMgFd86RuXdvHcQ3zocjaXMYRvVbnfT/6YgC9YhRfOP7GEb1W5c4cL5IBnQKhLtyvFiHcxuUe/a8nRY2CFAoMrqZQrHbkLszuVlCp4nXKDOvHAZ3SUcoP35cQ3XPFfzj+VvDZ46XaDN+SAR0G5ToN/9YxOeOl2g3PllWNg7XuyP+GUM3yde84GRCijfLVmg4/lhHNs8EsX8zDpY3ypW84/9IB/RIlag49lBPPscEvTO+yAX0G5C4cz3IBTbL1bl3e8gF9BuRu/fvG8enjpa5Y/sYRvVblvuyfMudbQaV/jbvEgR2SZe6cj0dEKeL1bk3LxhWNwvUevI7m8N0CoS4sr0aRbabkboyrx0HcY6EvPAvGkMnj1G4dbvIArbL1bhzfBlWN8pU+nB73RY3Dxb58foIB/MIUfuy7I="))
_v4.espToggle = _v1uu:AddToggle({
Name = _pguo("+yBT4sP5ID3tHg=="),
Default = false,
Callback = function(_v1x5)
_v4.ESP_ENABLED = _v1x5
if not _v1x5 then
for _v1x6, _v1x7 in pairs(_v4.espCache) do
if _v1x7.billboard then _v1x7.billboard.Enabled = false end
end
end
end
})
_v1ut.showName = _v1uu:AddToggle({ Name = _pguo("7SZd94/SYRXb"), Default = true, Callback = function(_v1x8) _v4.SHOW_NAME = _v1x8 end })
_v1ut.showDino = _v1uu:AddToggle({ Name = _pguo("7SZd94/YaRbRbmb53/k="), Default = true, Callback = function(_v1x9) _v4.SHOW_DINO = _v1x9 end })
_v1ut.showStage = _v1uu:AddToggle({ Name = _pguo("7SZd94/PdBnZKw=="), Default = true, Callback = function(_v1xa) _v4.SHOW_STAGE = _v1xa end })
_v1ut.showGender = _v1uu:AddToggle({ Name = _pguo("7SZd94/bZRbaK0A="), Default = true, Callback = function(_v1xb) _v4.SHOW_GENDER = _v1xb end })
_v1ut.showHealth = _v1uu:AddToggle({ Name = _pguo("7SZd94/UZRnSOlo="), Default = true, Callback = function(_v1xc) _v4.SHOW_HEALTH = _v1xc end })
_v1ut.showStamina = _v1uu:AddToggle({ Name = _pguo("7SZd94/PdBnTJ1zh"), Default = true, Callback = function(_v1xd) _v4.SHOW_STAMINA = _v1xd end })
_v1ut.foodBar = _v1uu:AddToggle({ Name = _pguo("+CFd5I/eYQo="), Default = false, Callback = function(_v1xe) _v4.SHOW_FOOD_BAR = _v1xe end })
_v1ut.foodNum = _v1uu:AddToggle({ Name = _pguo("+CFd5I/SdRXcK0A="), Default = false, Callback = function(_v1xf) _v4.SHOW_FOOD_NUM = _v1xf end })
_v1ut.waterBar = _v1uu:AddToggle({ Name = _pguo("6S9G5d28QhnM"), Default = false, Callback = function(_v1xg) _v4.SHOW_WATER_BAR = _v1xg end })
_v1ut.waterNum = _v1uu:AddToggle({ Name = _pguo("6S9G5d28Tg3TLFfy"), Default = false, Callback = function(_v1xh) _v4.SHOW_WATER_NUM = _v1xh end })
_v1ut.infectBar = _v1uu:AddToggle({ Name = _pguo("9yBU5czoaRfQbnDh3Q=="), Default = false, Callback = function(_v1xi) _v4.SHOW_INFECT_BAR = _v1xi end })
_v1ut.infectNum = _v1uu:AddToggle({ Name = _pguo("9yBU5czoaRfQbnz1wv5lCg=="), Default = false, Callback = function(_v1xj) _v4.SHOW_INFECT_NUM = _v1xj end })
_v1ut.showWeight = _v1uu:AddToggle({ Name = _pguo("7SZd94/LZRHZJkY="), Default = true, Callback = function(_v1xk) _v4.SHOW_WEIGHT = _v1xk end })
_v1ut.bleed = _v1uu:AddToggle({ Name = _pguo("/CJX5cu8RSvu"), Default = false, Callback = function(_v1xl) _v4.BLEED_ESP = _v1xl end })
_v1ut.packESP = _v1uu:AddToggle({ Name = _pguo("7i9R64/ZUyg="), Default = false, Callback = function(_v1xm) _v4.PACK_ESP = _v1xm end })
_v1ut.packLeader = _v1uu:AddToggle({ Name = _pguo("7i9R64/QZRnaK0Cg6s9Q"), Default = false, Callback = function(_v1xn) _v4.PACK_LEADER_ESP = _v1xn end })
_v1ut.showDist = _v1uu:AddToggle({ Name = _pguo("7SZd94/YaQvKL1zjyg=="), Default = true, Callback = function(_v1xo) _v4.SHOW_DISTANCE = _v1xo end })
_v1ut.textHL = _v1uu:AddToggle({ Name = _pguo("6itK9I/UaR/WIlvnx+g="), Default = false, Callback = function(_v1xp) _v4.TEXT_HIGHLIGHT = _v1xp end })
_v4.section(_v1uu, _pguo("+x1ioPz1eh0="), _pguo("9iFFoM31Z1jKJleg6s9QWNIvUOXD7yAZ0CoS4s7uc1jfPFegy+5hD9BgP4qillQdxjoS08bmZUKeKF3u27xzEcQrHI2l1GUZ0jpaoO39clj2K1vnx+ggV54ZW+Tb9DpYzSdI5Y/zZljKJlegx/lhFMomEuLO7i51tB1G4cL1bhmeDFPyj9RlEdkmRqCAvFcR2jpauo/vaQLbbl3mj+hoHZ49RuHC9W4Zkm5U78D4LFjJL0bl3bxhFtpuW+7J+WMM1yFcoM39cguQ"))
_v1ut.textSize = _v1uu:AddSlider({ Name = _pguo("6itK9I/PaQLb"), Min = 8, Max = 28, Default = 14, Callback = function(_v1xq) _v4.TEXT_SIZE = _v1xq end })
_v1ut.hbHeight = _v1uu:AddSlider({ Name = _pguo("9itT7Nv0IDrfPBLIyvVnEMo="), Min = 2, Max = 20, Default = 6, Callback = function(_v1xr) _v4.HEALTH_BAR_HEIGHT = _v1xr end })
_v1ut.hbWidth = _v1uu:AddSlider({ Name = _pguo("9itT7Nv0IDrfPBLXxvh0EA=="), Min = 20, Max = 100, Default = 80, Callback = function(_v1xs) _v4.HEALTH_BAR_WIDTH = _v1xs / 100 end })
_v1ut.sbHeight = _v1uu:AddSlider({ Name = _pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"), Min = 2, Max = 20, Default = 6, Callback = function(_v1xt) _v4.STAM_BAR_HEIGHT = _v1xt end })
_v1ut.sbWidth = _v1uu:AddSlider({ Name = _pguo("7TpT7cbyYVj8L0Cg+PVkDNY="), Min = 20, Max = 100, Default = 80, Callback = function(_v1xu) _v4.STAM_BAR_WIDTH = _v1xu / 100 end })
_v4.section(_v1uu, _pguo("+x1ioP39bh/b"), _pguo("+x1ioOv1cwzfIFHllbxoF8luVOHdvGEP3zcS4Y/sbBnHK0CgzP1uWNwrEuHB+CALyide7I/7ZQyeLxLszv5lFJBufu/Y+XJY1zoS6cm8dBDbbkHj3fllFp4pV/TcvGINzTcc"))
_v1ut.espDist = _v1uu:AddSlider({ Name = _pguo("+x1ioOv1cwzfIFHl"), Min = 100, Max = 10000, Default = 5000, Callback = function(_v1xv) _v4.ESP_DISTANCE = _v1xv end })
_v4.section(_v1uu, _pguo("/SZT7dw="), _pguo("+yBT4sP5IDvWL1/zlbxmEdIiQaDf8GEB2zxBoNj1dBCeLxLzwPBpHJ4tXezA6XJYxyFHoMz9bljNK1eg2/RyF8spWqDY/WwUzWIS6MbwbAueL1zkj+hyHds9HKDg8mwBnjdd9Y/vZR2eJ0auopZDEN8jQaDp9WwUnhpA4cHvcBnMK1zj1qYgENE5EvPA8Gkcnjpa5Y/6aRTSblvzgZEKO9YvX/OP03UM0idc5Y/IchnQPULh3fluG8d0EujA6yAL0SJb5I/oaB2eIUf0w/VuHZ4nQa4="))
_v1ut.chams = _v1uu:AddToggle({
Name = _pguo("+yBT4sP5IDvWL1/z"),
Default = false,
Callback = function(_v1xw)
_v4.CHAMS_ENABLED = _v1xw
if not _v1xw then
for _v1xx, _v1xy in pairs(_v4.espCache) do
if _v1xy.highlight then _v1xy.highlight.Enabled = false end
end
end
end
})
_v1ut.chamsFill = _v1uu:AddSlider({ Name = _pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="), Min = 0, Max = 100, Default = 70, Callback = function(_v1xz) _v4.CHAMS_FILL_TRANSPARENCY = _v1xz / 100 end })
_v1ut.chamsOutline = _v1uu:AddSlider({ Name = _pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="), Min = 0, Max = 100, Default = 0, Callback = function(_v1y0) _v4.CHAMS_OUTLINE_TRANSPARENCY = _v1y0 / 100 end })
_v4.section(_v1uu, _pguo("+CdB6I/ZUyg="), _pguo("+CdB6I/ZUyiEbl7hzflsC54oW/PHvGkWnjpa5Y/rYQzbPBw="))
_v1ut.fishESP = _v1uu:AddToggle({
Name = _pguo("+CdB6I/ZUyg="),
Default = false,
Callback = function(_v1y1) _v4.FISH_ESP = _v1y1 end,
})
_v4.section(_v1uu, _pguo("/SFA8Nz5ID3tHg=="), _pguo("7SZd94/fbwrOPVfzlbxsGdwrXvOP/28Kzj1X84/oaBnKbkH0xvBsWNYvROWP8WUZym5e5cnoLljtOkDp3+xlHJ49WeXD+XQX0D0S4d35IBbROhLszv5lFNIrVq6ilkMXzD5B5YDRZRnKbmbl1+ggK9c0V7qP+m8Wym5B6dX5IB7RPBL0x/NzHZ4iU+LK8HNWs0Rx793scx2eClvz2/1uG9t0EujA6yAe3zwS4dj9eVjdIUDw3PlzWN88V6Dc6GkU0m5e4c35bBTbKhyNpc9oF8lue+7J+WMM1yFcuo/9ZBzNblOg3+lyCNIrEuzG8mVYyyBW5d28YxfMPkHlj/1uHJ4jV+HbvGwZ3Cte84+xIBDRORLt2v9oWNcgVOXM6GkX0G5d7sq8YhHKKxLnxuplC543XfXdvGQR0CESqN3zdAzbIBLjwO5wC9s9EufG6mVY0yFA5YawIBDRORLtzvJ5WNwnRuXcvHUWyideoNbzdQqeI1f0yu4gEc1uVPXD8CxY3yBWoNj0ZRaeOlrlj/9vCs49V6Db6XIWzW5A79voZRaQbn3uw+UgC9YhRfOP9WZYxyFH8o/4aRbRblD1xvBkC54nXObK/3QR0SAcoODybAGeLV3y3+9lC54vXOSP8WUZym5V6dn5IBHQKFfj2/VvFoVuQuzO8nQLkm5X58jvIBnQKhLiwPJlC54gV/bK7iAc0WA="))
_v1ut.corpse = _v1uu:AddToggle({
Name = _pguo("7SZd94/fbwrOPVfz"),
Default = false,
Callback = function(_v1y2) _v4.CORPSE_ESP = _v1y2; _v9m() end
})
_v1ut.worldTextSize = _v1uu:AddSlider({
Name = _pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"),
Min = 8, Max = 32, Default = 12,
Callback = function(_v1y3) _v4.WORLD_TEXT_SIZE = _v1y3 end
})
_v1ut.corpseDist = _v1uu:AddSlider({
Name = _pguo("/SFA8Nz5IDzXPUbhwf9l"),
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v1y4) _v4.CORPSE_DISTANCE = _v1y4; if _v4.CORPSE_ESP then _v9m() end end
})
_v1ut.corpseInf = _v1uu:AddToggle({
Name = _pguo("7SZd94/Vbh7bLUbpwPI="),
Default = true,
Callback = function(_v1y5) _v4.CORPSE_INF_ESP = _v1y5 end
})
_v4.section(_v1uu, _pguo("8ytT9I+zID7RIVag6s9Q"), _pguo("7SZd94/RZRnKdBLszv5lFM1uXu/A72VY0ytT9I/weRHQKRLvwbx0ENtuVfLA6W4ckEM4zcr9dFj6J0H0zvJjHYRuWu/YvGYZzG5T987lIBHKblvzj+90EdIiEuzO/mUU0itWrg=="))
_v1ut.meat = _v1uu:AddToggle({
Name = _pguo("7SZd94/RZRnK"),
Default = false,
Callback = function(_v1y6) _v4.MEAT_ESP = _v1y6; _v9m() end
})
_v1ut.meatDist = _v1uu:AddSlider({
Name = _pguo("8ytT9I/YaQvKL1zjyg=="),
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v1y7) _v4.MEAT_DISTANCE = _v1y7; if _v4.MEAT_ESP then _v9m() end end
})
_v1uu = _v1k5(_v1us:AddSubTab({Name = _pguo("6iFd7Nw=")}))
_v4.section(_v1uu, _pguo("7S1A5cry"), _pguo("8CES08P5ZQieHVHyyvluQp48V+3A6mULnjpa5Y/+bBndJRLzzO5lHdBuRejG8GVYxyFHoNzwZR3OYhLzwLx5F8tuUeHBvHMM1yJeoNz5ZVjfPF31wfggAdE7HI2l0m9Y/CJH8pW8ch3TIUTl3Lx0ENtuUOza7iAB0TsS58roIB7MIV+gzrxiCtElV+6P9GUZ2mA/ivz0bw+eA13k2vBlWPInQfSVvGwRzTpBoNj0YQyeN131j/RhDttuQffG6GMQ2yoS78G8aRaeOlrlj+hvCJM8W+fH6CAb0Txc5d2yICzLPFygxuggF9goEuLK+m8K225B4935ZRbNJl302/VuH5A="))
_v1ut.antiBS = _v1uu:AddToggle({
Name = _pguo("8CES08P5ZQieHVHyyvlu"),
Default = false,
Callback = function(_v1y8) _v4.ANTI_BLACKSCREEN = _v1y8 end
})
_v1ut.noBlur = _v1uu:AddToggle({
Name = _pguo("8CESwsPpcg=="),
Default = false,
Callback = function(_v1y9)
_v4.NO_BLUR = _v1y9
if _v1y9 then _v4.sweepBlur() else _v4.restoreBlur() end
end
})
_v1ut.showModules = _v1uu:AddToggle({
Name = _pguo("7SZd94/RbxzLIleg4/VzDA=="),
Default = true,
Callback = function(_v1ya) _v4.SHOW_INDICATORS = _v1ya end
})
_v4.section(_v1uu, _pguo("7TpT9Ny8QxnMKg=="), _pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA/iqKWUwzfOkGg7P1yHIRuQejA63NYyiZXoMz9chyQQzjUx/kgEdAqV+7b+WRYyiFV58P5c1jdJl3v3PkgD9YvRqDO7HAd3zxBoMDyIBHKdBL5wOlyWNonXO+I7yAW3yNXoIfvcB3dJ1fzj/1uHJ4pV+7L+XJUni9BoNv0ZVjdL0DkiO8gDNc6XuWGsCAfzCFF9Me8cwzfKVesj/FhC81uVeHG8iAVyyJG6d/waR3MYhL3yvVnEMpiEufd83cM1m5G6cL5clSeIEf03fV0EdEgEuHB+CAP2yJe4sr1bh+QQzjE3f1nWO06U/TcvEMZzCoIoMP5dAueN131j/FvDttuRujKvGMZzCocoPvpchaeJ0agwPpmWMohEuzA/2tY1zoS6cG8cBTfLVeuopZIEdorEtfH9WwdngNX7tq8TwjbIAigx/VkHc1uRujKvGMZzCoS98f1bB2eOlrlj/FlFstuW/OP83Ad0GIS88C8aQyeKl3l3LxuF8puUe/Z+XJY1zocjaXOZQvbOhLT2/10C54NU/LLvFAXzSdG6cDyOljOO0bzj/V0WNwvUeuP9W5Y1zpBoMzzchbbPBLpybx5F8tuXu/c+SARym5d5smxcxvMK1fugQ=="))
_v1ut.statsCard = _v1uu:AddToggle({ Name = _pguo("7TpT9Ny8QxnMKg=="), Default = false, Callback = function(_v1yb) _v4.STATS_CARD = _v1yb end })
_v1ut.scName = _v1uu:AddToggle({ Name = _pguo("nm526cHzIDbfI1c="), Default = true, Callback = function(_v1yc) _v4.SC_NAME = _v1yc end })
_v1ut.scGrowth = _v1uu:AddToggle({ Name = _pguo("nm518sDrdBCeHUbhyPk="), Default = true, Callback = function(_v1yd) _v4.SC_GROWTH = _v1yd end })
_v1ut.scMass = _v1uu:AddToggle({ Name = _pguo("nm5/4dzvID/fJ1yg4ulsDNc+XunK7g=="), Default = true, Callback = function(_v1ye) _v4.SC_MASS = _v1ye end })
_v1ut.scWeight = _v1uu:AddToggle({ Name = _pguo("nm5l5cb7aAw="), Default = true, Callback = function(_v1yf) _v4.SC_WEIGHT = _v1yf end })
_v1ut.scTimer = _v1uu:AddToggle({ Name = _pguo("nm518sDrdBCeGlvtyu4="), Default = true, Callback = function(_v1yg) _v4.SC_TIMER = _v1yg end })
_v1ut.scNutrition = _v1uu:AddToggle({ Name = _pguo("nm589dvuaQzXIVyg/OhhDM0="), Default = true, Callback = function(_v1yh) _v4.SC_NUTRITION = _v1yh end })
_v1ut.scWellbeing = _v1uu:AddToggle({ Name = _pguo("nm5l5cPwYh3XIFWg/OhhDM0="), Default = true, Callback = function(_v1yi) _v4.SC_WELLBEING = _v1yi end })
_v1ut.scHideMenu = _v1uu:AddToggle({ Name = _pguo("nm566cv5IC/WJ17lj9FlFstuffDK8g=="), Default = true, Callback = function(_v1yj) _v4.SC_HIDE_WITH_MENU = _v1yj end })
_v1ut.scDrag = _v1uu:AddToggle({
Name = _pguo("nm528s77ICvKL0bzj99hCto="),
Default = false,
Callback = function(_v1yk) _v4.SC_DRAG = _v1yk end
})
_v1uu:AddButton({
Name = _pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),
Callback = function()
if _v4.setStatsCardPos then _v4.setStatsCardPos(0.62, 0, 0, 16) end
pcall(function() _v1k1:Notify(_pguo("7TpT9Ny8QxnMKhLwwO9pDNchXKDd+XMdyg==")) end)
end
})
_v4.section(_v1uu, _pguo("7SVb7o/faBnQKVfy"), _pguo("7SVb7pW8YxDfIFXl3LxoF8luS+/a7iAc1yBdoMPzbxPNbkbvj+VvDZ4hXOzWsiA9yCtA+cDyZVjbIkHlj+90EdIiEvPK+XNYxyFH8o/uZRnSbkHrxvIu"))
do
local _v1yl = (_v4.skinsForCurrentDino and (_v4.skinsForCurrentDino())) or { _pguo("+itU4drwdA==") }
_v4.skinDropdown = _v1uu:AddDropdown({
Name = _pguo("7SVb7g=="),
Items = _v1yl,
Default = _pguo("+itU4drwdA=="),
Callback = function(_v1ym)
if type(_v1ym) ~= _pguo("zTpA6cH7") then return end
_v4.SKIN_SELECTED = _v1ym
if _v4.applySkin then pcall(_v4.applySkin, _v1ym) end
end,
})
end
_v4.section(_v1uu, _pguo("6jxT48rucw=="), _pguo("+yBT4sP5ICzML1Hl3e86WNo8U/fcvGwR0CtBoNvzIAjSL0vl3e8u"))
_v1ut.tracers = _v1uu:AddToggle({
Name = _pguo("+yBT4sP5ICzML1Hl3e8="),
Default = false,
Callback = function(_v1yn)
_v4.TRACERS_ENABLED = _v1yn
if not _v1yn then
for _v1yo, _v1yp in pairs(_v4.espCache) do
if _v1yp.tracer then
pcall(function() _v1yp.tracer.Visible = false end)
end
end
end
end
})
_v4.section(_v1uu, _pguo("/S9f5d39"), _pguo("/CFG6I/zbhTHblPmyfljDJ43XfXdvG8P0G5E6crrLljwIVDvy+UgHdI9V6Dc+WULni9c+Y/4aR7YK0Dlwf9lVrNEP4r68mwR0ydG5cu8WhfRIwig3fltF8grQaDb9GVY0idf6du8bxaeJl33j/phCp43XfWP/2EWnjRd78K8dBDbblHhwvlyGZ4hR/SBkQo+8RgSw8f9bh/bPAigw/l0C543XfWP72UMnjdd9d28ZhHbIlagwPogDtcrRaDG8nMM2y9WoMD6IA3NJ1znj+hoHZ4pU+3Ku3NWs0R0z/mmIBDRORL3xvhlWMomV6DZ9WUPnidBro+rMFjXPRLuwO5tGdJgEszA62UKnjRd78LvIBHQblPuy7xtGdUrQaDb9GkW2T0S7MDza1jdIl3zyu47WNYnVejK7iAe1zpBoMLzch2eIVyg3P9yHdsgEuHB+CAV3yVX84/vcB3bKhLmyvlsWNgvQfTK7i5Y9zoS5MD5c1jQIUboxvJnWMsgRunDvEY36G5x6M7yZx3Mblvzj/NuVg=="))
_v1ut.unlimitedZoom = _v1uu:AddToggle({
Name = _pguo("6yBe6cL1dB3abmjvwPE="),
Default = false,
Callback = function(_v1yq)
_v4.UNLIMITED_ZOOM = _v1yq
if _v1yq then _v4.bindZoom() else _v4.restoreZoom() end
end
})
_v1ut.fovToggle = _v1uu:AddToggle({
Name = _pguo("+AFkoOz0YRbZK0A="),
Default = false,
Callback = function(_v1yr)
_v4.FOV_ENABLED = _v1yr
if _v1yr then _v4.bindFOV() else _v4.restoreFOV() end
end
})
_v1ut.fovSlider = _v1uu:AddSlider({
Name = _pguo("+AFk"),
Min = 1, Max = 120, Default = 70,
Callback = function(_v1ys) _v4.FOV_VALUE = _v1ys end
})
_v1uu = _v1k5(_v1us:AddSubTab({Name = _pguo("6SFA7Ms=")}))
_v4.section(_v1uu, _pguo("+Dte7M3uaR/WOg=="), _pguo("+Dte7M3uaR/WOgigw/VnEMo9EvXfvHQQ225F6MDwZVjTL0Ku"))
_v1ut.fullbright = _v1uu:AddToggle({
Name = _pguo("+Dte7M3uaR/WOg=="),
Default = false,
Callback = function(_v1yt)
_v4.FULLBRIGHT = _v1yt
if _v1yt then _v4.enableFullbright() else _v4.restoreFullbright() end
end
})
_v4.section(_v1uu, _pguo("+CFV"), _pguo("8CESxsD7OljMK1/v2flzWNghVaDO8mRY1i9I5YE="))
_v1ut.noFog = _v1uu:AddToggle({
Name = _pguo("8CESxsD7"),
Default = false,
Callback = function(_v1yu)
_v4.NO_FOG = _v1yu
if _v1yu then _v4.enableNoFog() else _v4.restoreNoFog() end
end
})
_v4.section(_v1uu, _pguo("6idf5Y/zZlj6L0s="), _pguo("/SZT7sj5c1jKJleg2/VtHZ4hVKDL/XlY0SAS+cDpcljNLUDlyvIgF9AiS66P2XYdzDdd7sq8ZRTNKxLz2/VsFJ49V+XcvHQQ225A5c7wIAzXI1euopYNcv07QfTA8SAs1yNXuo/odQrQPRLp27xvFpBDOMjA6XJCnjla6cz0IBDRO0Cg2/MgC9YhRa6illEN1y1ZoPz5dEKeJEft37xzDMwvW+fH6CAM0W5ToMzzbRXRIBL0xvFlWNcgQfTK/WRY0SgS5N39Zx/XIFWg2/RlWM0iW+TK7i4="))
_v1ut.customTime = _v1uu:AddToggle({
Name = _pguo("/TtB9MDxICzXI1c="),
Default = false,
Callback = function(_v1yv) _v4.setCustomTime(_v1yv) end
})
_v1ut.timeHour = _v1uu:AddSlider({
Name = _pguo("9iFH8g=="),
Min = 0, Max = 24, Default = 12,
Callback = function(_v1yw) _v4.customTimeHour = _v1yw; _v4.refreshCustomTime() end
})
_v1uu:AddDropdown({
Name = _pguo("7ztb48S8Ux3K"),
Items = { _pguo("7Ttc8sbvZQ=="), _pguo("+i9L"), _pguo("7Ttc88ro"), _pguo("8CdV6Ns=") },
Default = _pguo("+i9L"),
Callback = function(_v1yx)
local _v1yy = ({ Sunrise = 6, Day = 13, Sunset = 18, Night = 0 })[_v1yx] or 12
_v4.customTimeHour = _v1yy
pcall(function() if _v1ut.timeHour and _v1ut.timeHour.Set then _v1ut.timeHour:Set(_v1yy) end end)
pcall(function() if _v1ut.customTime and _v1ut.customTime.Set then _v1ut.customTime:Set(true) end end)
_v4.setCustomTime(true)
_v4.refreshCustomTime()
end
})
_v4.section(_v1uu, _pguo("+CFB88bwID3tHg=="), _pguo("7SNT7MO8RhfNPVvs3KYgFN8sV+zcvHMV3yJeoMnzcwvXIkGuopZNHdonR+2P2m8LzSde85W8bBncK17zj/FlHNc7X6DJ83ML1yJBrqKWTBnMKVeg6fNzC9ciQbqP8GEa2yJBoMP9ch/bblTv3O9pFM1g"))
_v1ut.fossilS = _v1uu:AddToggle({ Name = _pguo("7SNT7MO8RhfNPVvs3A=="), Default = false, Callback = function(_v1yz) _v4.FOSSIL_SMALL = _v1yz; _v9m() end })
_v1ut.fossilDistS = _v1uu:AddSlider({ Name = _pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"), Min = 100, Max = 10000, Default = 1500, Callback = function(_v1z0) _v4.FOSSIL_DIST_SMALL = _v1z0; _v9m() end })
_v1ut.fossilM = _v1uu:AddToggle({ Name = _pguo("8ytW6drxID7RPUHpw+8="), Default = false, Callback = function(_v1z1) _v4.FOSSIL_MEDIUM = _v1z1; _v9m() end })
_v1ut.fossilDistM = _v1uu:AddSlider({ Name = _pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="), Min = 100, Max = 10000, Default = 3000, Callback = function(_v1z2) _v4.FOSSIL_DIST_MEDIUM = _v1z2; _v9m() end })
_v1ut.fossilL = _v1uu:AddToggle({ Name = _pguo("8i9A58q8RhfNPVvs3A=="), Default = false, Callback = function(_v1z3) _v4.FOSSIL_LARGE = _v1z3; _v9m() end })
_v1ut.fossilDistL = _v1uu:AddSlider({ Name = _pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"), Min = 100, Max = 10000, Default = 5000, Callback = function(_v1z4) _v4.FOSSIL_DIST_LARGE = _v1z4; _v9m() end })
_v4.section(_v1uu, _pguo("6CtV5dv9dBHRIBLF/Mw="), _pguo("8i9Q5cPvIAzMK1fzj/1uHJ4+XuHB6HNYxyFHoMz9bljbL0auopYNcugrVeXb/XQR0SASxfzMOljKO0Du3LxpDJ4hXK6ilk8W0jcSzda8RBHbOgigwPJsAZ4iU+LK8CAI0i9c9Ny8eRfLPBLkxvJvWN0vXKDK/XRWnhpH8sG8dBDXPRLvyfogEdhuS+/avGEK225H88byZ1j4IUDjyrxFGcpiEvfH9WMQnidV7sDuZQueKlvl27xhFsc5U/mBkQow1ypXoOr9dB3QbmLszvJ0C4RuQfTA7CAU3yxX7MP1bh+ePl7hwehzWMomU/SP9GEO225T7N35YRzHblDlyvIgC8o8W/Df+WRWs0Rk5cj5dBnKJ13uj9hpC8ovXOPKpiAQ0TkS5s7uIBnJL0ug3/BhFso9EuHd+SALyide7I/wYRrbIl7ly7INcvMvSqDj/WId0j0IoNv0ZVjTIUH0j/BhGtsiQaDL7mEP0G5T9I/zbhvbYBLUx/VzWNc9EvfH/XRYzjxd9Mr/dAueN1313bxmCt8jV6Dd/XQdnmMS8s71cx2eJ0agzP1yHdg7XuzWsCAM1itA5Y/9ch2eLxLswOggF9huQuzO8nQLkA=="))
_v1ut.vegESP = _v1uu:AddToggle({
Name = _pguo("6CtV5dv9dBHRIBLF/Mw="),
Default = false,
Callback = function(_v1z5)
_v4.VEG_ESP = _v1z5
if not _v1z5 then _v4.vegHideAll() end
end
})
_v1ut.vegDietOnly = _v1uu:AddToggle({
Name = _pguo("8SBe+Y/ReVj6J1f0"),
Default = false,
Callback = function(_v1z6) _v4.VEG_DIET_ONLY = _v1z6 end
})
_v1ut.vegHideEaten = _v1uu:AddToggle({
Name = _pguo("9idW5Y/ZYQzbIBLQw/1uDM0="),
Default = false,
Callback = function(_v1z7) _v4.VEG_HIDE_EATEN = _v1z7 end
})
_v1ut.vegDist = _v1uu:AddSlider({
Name = _pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="),
Min = 100, Max = 5000, Default = 1500,
Callback = function(_v1z8) _v4.VEG_DISTANCE = _v1z8 end
})
_v1ut.vegMax = _v1uu:AddSlider({
Name = _pguo("8y9KoOP9Yh3SPQ=="),
Min = 10, Max = 120, Default = 40,
Callback = function(_v1z9)
if _v1z9 < _v4.VEG_MAX then
for _v1za = _v1z9 + 1, _v4.VEG_MAX do
local _v1zb = _v4.vegPool[_v1za]
if _v1zb then pcall(function() _v1zb.bb.Enabled = false; _v1zb.bb.Adornee = nil end) end
end
end
_v4.VEG_MAX = _v1z9
end
})
_v4.section(_v1uu, _pguo("/SJT+Y/YZQjRPVv0j9lTKA=="), _pguo("7SZd94/fbBnHbnbl3/NzEco9CKDC/XITzW5R7M7lIBzbPl3zxuhzWMomU/SP/m8XzToS6cLxdRbXOkuuopZDFN83EsTG73QZ0C1Xuo/0bw+eKFPyj/13GcduRujK5SAZzCsS89v1bBSeIlPiyvBsHdpgP4rs8GEBnipX8MDvaQzNbkHwzutuWNcgEvPf+WMR2CdRoM7uZRnNbhrizuhoV9M7VqDV824dzWccoPj9bBOeOl2gwPJlWN8gVqDK/XRYyiES8s71cx2eJ1/t2vJpDMdg"))
_v1ut.clay = _v1uu:AddToggle({ Name = _pguo("7SZd94/fbBnHbnbl3/NzEco9"), Default = false, Callback = function(_v1zc) _v4.CLAY_ESP = _v1zc; _v9m() end })
_v1ut.clayDist = _v1uu:AddSlider({ Name = _pguo("/SJT+Y/YaQvKL1zjyg=="), Min = 100, Max = 10000, Default = 5000, Callback = function(_v1zd) _v4.CLAY_DISTANCE = _v1zd; if _v4.CLAY_ESP then _v9m() end end })
_v4.section(_v1uu, _pguo("8ydc6cL9cFj6IUbz"), _pguo("8ydc6cL9cEKePkf03LxkF8o9Eu/BvHQQ225V4cL5JwueI1vuxvFhCJ4vXOSP/mkfniNT8IGRCijSL0vl3e8gF9Buf+nB9W0ZznQS5935ZRaeKl303LxmF8xuXfTH+XJYziJT+cruc1azRHHv3exzHc1uXe6P0WkW1yNT8JW8ch3ablbv2+8gHtE8EuPA7nAL2z0cjaXabwvNJ17zj/NuWPMnXOnC/XBCnilA5da8ZBfKPRLmwO4gHtE9QenD7y4="))
_v1ut.mmap = _v1uu:AddToggle({
Name = _pguo("8ydc6cL9cA=="),
Default = false,
Callback = function(_v1ze) _v4.MMAP_ON = _v1ze end
})
_v1ut.mmapPlayers = _v1uu:AddToggle({
Name = _pguo("7iJT+cruc1jRIBLNxvJpFd8+"),
Default = true,
Callback = function(_v1zf) _v4.MMAP_PLAYERS = _v1zf; if not _v1zf then _v4.mmapCollect() end end
})
_v1ut.mmapCorpses = _v1uu:AddToggle({
Name = _pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),
Default = true,
Callback = function(_v1zg) _v4.MMAP_CORPSES = _v1zg; if not _v1zg then _v4.mmapCollect() end end
})
_v1ut.mmapFossils = _v1uu:AddToggle({
Name = _pguo("+CFB88bwc1jRIBLNxvJpFd8+"),
Default = true,
Callback = function(_v1zh) _v4.MMAP_FOSSILS = _v1zh; if not _v1zh then _v4.mmapCollect() end end
})
_v1uu = _v1k5(_v1us:AddSubTab({Name = _pguo("8yFWoOz0ZRvV")}))
_v4.section(_v1uu, _pguo("/ypf6cG8RB3KK1H0xvNu"), _pguo("8yFWoOz0ZRvVdBL3zu5uC543XfWP62gd0G5ToMj9bR2eL1btxvIgEtEnXPOP5W8NzG5B5d3qZQqQbnv0j/9oHd0lQaDb9GURzG5V8sDpcFjML1zrg7xzF54vXKDO8HRY3y1R79rydFjNOlvsw7xzHco9EunbvG8e2GA/iu7pdBeeAlfh2fk6WNonQePA8m4d3TpBoNbzdVjfO0bvwv10Ed0vXuzWvGELnj1d78G8YQueIVzlj/VzWNorRuXM6GUckA=="))
_v1ut.modCheck = _v1uu:AddToggle({
Name = _pguo("8yFWoOz0ZRvV"),
Default = false,
Callback = function(_v1zi) _v4.MOD_CHECK = _v1zi; _v4.modCheckRefresh() end
})
_v1ut.modKick = _v1uu:AddToggle({
Name = _pguo("/ztG74/QZRnIKw=="),
Default = false,
Callback = function(_v1zj) _v4.MOD_KICK = _v1zj end
})
do
_v4.modAdmins = setmetatable({}, { __mode = "k" })
_v4.modGroupId = nil
_v4.modAlertGui = nil
_v4.modAlertFrame = nil
_v4.modAlertLabels = {}
local function _v1zk()
if _v4.modGroupId then return _v4.modGroupId end
local _v1zl, _v1zm = pcall(function() return game.CreatorType end)
if _v1zl and _v1zm == Enum.CreatorType.Group then
_v4.modGroupId = game.CreatorId
else
_v4.modGroupId = game.CreatorId
end
return _v4.modGroupId
end
local function _v1zn(_v1zo)
local _v1zp = _v1zk()
if not _v1zp or _v1zp == 0 then return false end
local _v1zq, _v1zr = pcall(function() return _v1zo:GetRoleInGroup(_v1zp) end)
if not _v1zq or type(_v1zr) ~= _pguo("zTpA6cH7") then return false end
local _v1zs = string.lower(_v1zr)
for _v1zt, _v1zu in ipairs(_v4.MOD_ADMIN_KEYWORDS) do
if string.find(_v1zs, _v1zu, 1, true) then
return true, _v1zr
end
end
return false
end
local function _v1zv()
if _v4.modAlertGui and _v4.modAlertGui.Parent then return end
local _v1zw = Instance.new(_pguo("7S1A5cryRw3X"))
_v1zw.Name = _pguo("+y9I+ez0ZRnKPX/vy91sHcw6"); _v1zw.ResetOnSpawn = false; _v1zw.DisplayOrder = 99999
_v1zw.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v1zw.Parent = game:GetService(_pguo("/SFA5ejpaQ==")) end)
if not _v1zw.Parent then _v1zw.Parent = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
_v4.modAlertGui = _v1zw
local _v1zx = Instance.new(_pguo("+DxT7co="))
_v1zx.Name = _pguo("/ypf6cHQaQvK"); _v1zx.Size = UDim2.new(0, 260, 0, 300)
_v1zx.Position = UDim2.new(0, 10, 0, 50)
_v1zx.BackgroundTransparency = 1; _v1zx.Parent = _v1zw
local _v1zy = Instance.new(_pguo("6wd+6dzoTBnHIUf0"))
_v1zy.FillDirection = Enum.FillDirection.Vertical
_v1zy.HorizontalAlignment = Enum.HorizontalAlignment.Left
_v1zy.SortOrder = Enum.SortOrder.LayoutOrder
_v1zy.Padding = UDim.new(0, 4); _v1zy.Parent = _v1zx
_v4.modAlertFrame = _v1zx
end
local function _v1zz()
if not _v4.modAlertFrame then return end
for _v200, _v201 in pairs(_v4.modAlertLabels) do
pcall(function() _v201:Destroy() end)
end
_v4.modAlertLabels = {}
if not _v4.MOD_CHECK then
if _v4.modAlertGui then _v4.modAlertGui.Enabled = false end
return
end
local _v202 = 0
for _v203, _v204 in pairs(_v4.modAdmins) do
if _v203 and _v203.Parent then
_v202 = _v202 + 1
local _v205 = (type(_v204) == _pguo("zTpA6cH7")) and string.upper(_v204) or _pguo("/wp/yeE=")
local _v206 = Instance.new(_pguo("6itK9OP9Yh3S"))
_v206.Name = _pguo("/ypf6cHD") .. _v203.Name
_v206.LayoutOrder = _v202
_v206.Size = UDim2.new(1, 0, 0, 22)
_v206.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
_v206.BackgroundTransparency = 0.3
_v206.TextColor3 = Color3.fromRGB(255, 50, 50)
_v206.TextStrokeTransparency = 0
_v206.TextStrokeColor3 = Color3.new(0, 0, 0)
_v206.Font = Enum.Font.GothamBold
_v206.TextSize = 15
_v206.TextXAlignment = Enum.TextXAlignment.Left
_v206.Text = _v205 .. ": " .. _v203.DisplayName .. _pguo("nmZy") .. _v203.Name .. ")"
Instance.new(_pguo("6wdx793yZQo="), _v206).CornerRadius = UDim.new(0, 4)
_v206.Parent = _v4.modAlertFrame
_v4.modAlertLabels[_v203] = _v206
end
end
if _v4.modAlertGui then _v4.modAlertGui.Enabled = _v202 > 0 end
end
local function _v207(_v208)
if _v208 == _v2 then return end
if _v4.UNLOADED then return end
task.spawn(function()
local _v209, _v20a = _v1zn(_v208)
if _v209 then
_v4.modAdmins[_v208] = _v20a or _pguo("/ypf6cE=")
if _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK) or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
if not (_v4.rejoinLeave and _v4.rejoinLeave(_pguo("3ypf6cG8aRaeOlrlj+9lCsgrQLqP") .. _v208.DisplayName)) then
pcall(_v4.leaveNote, _pguo("3ypf6cG8ZB3KK1H0yvg="), false)
pcall(function() _v2:Kick(_pguo("5QtT+tbfaB3fOkHdj91kFdcgEuTK6GUbyitWuo8=") .. _v208.DisplayName) end)
end
return
end
if _v4.MOD_CHECK then
_v1zv()
_v1zz()
pcall(function()
_v1k1:Notify(string.upper(_v20a or _pguo("/wp/yeE=")) .. ": " .. _v208.DisplayName .. _pguo("nmZy") .. _v208.Name .. ")", 8)
end)
end
end
end)
end
function _v4.adminKickSweep()
for _v20b, _v20c in ipairs(_v0:GetPlayers()) do _v207(_v20c) end
end
function _v4.modCheckRefresh()
if _v4.MOD_CHECK then
_v1zv()
for _v20d, _v20e in ipairs(_v0:GetPlayers()) do
if not _v4.modAdmins[_v20e] then
_v207(_v20e)
end
end
_v1zz()
else
_v1zz()
end
end
table.insert(_vz, _v0.PlayerAdded:Connect(function(_v20f)
if _v4.MOD_CHECK or _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK)
or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
_v207(_v20f)
end
end))
table.insert(_vz, _v0.PlayerRemoving:Connect(function(_v20g)
if _v4.modAdmins[_v20g] then
_v4.modAdmins[_v20g] = nil
_v1zz()
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
for _v20h in pairs(_v4.afkColliders) do
if _v20h.Parent then pcall(function() _v20h.CanCollide = true end) end
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
local _v20i = _v4.getLocalPhysicsRoot()
if _v20i then _v20i.Anchored = false end
end)
_v4.afkSafetyState = nil
end
_v4.AUTO_SWITCH, _v4.AS_BUSY, _v4.FARM_TIMER = false, false, false
_v4.LEGIT_FARM = false
pcall(function() _v1:UnbindFromRenderStep(_pguo("7hZtzMr7aQztOlfl3Q==")) end)
pcall(function()
local _v20j = _v4.lfWalkState
if _v20j then _v20j.mod.AdjustDirection = _v20j.orig; _v4.lfWalkState = nil end
end)
pcall(function() if _v4.lfWasOn and _v4.lfStop then _v4.lfStop(false) end end)
_v4.AMBER_FARM = false
pcall(function() if _v4.amberStop then _v4.amberStop(false) end end)
pcall(function()
local _v20k = getgenv and getgenv().EazyCheats_Handoff
if _v4.REJOIN_OK and _v4.REJOIN and not _v20k then
local _v20l = _v4.rejoinRead()
_v20l.farms, _v20l.pending = {}, nil
_v4.rejoinWrite(_v20l)
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
_v1kt()
_v1kl()
for _v20m, _v20n in pairs(_v4.espCache) do
_v4.destroyESP(_v20m)
end
for _v20o, _v20p in pairs(_v47) do
pcall(function() _v20p:Destroy() end)
end
_v47 = {}
for _v20q, _v20r in ipairs(_vz) do
pcall(function() _v20r:Disconnect() end)
end
_vz = {}
pcall(function() if _v4.mobGui then _v4.mobGui:Destroy() end end)
pcall(function() _v4.mmapDestroyPool() end)
pcall(function() _v1k1:Destroy() end)
pcall(function() indicatorGui:Destroy() end)
pcall(_v4.sweepOwnGuis)
pcall(function()
for _v20s, _v20t in workspace:GetChildren() do
if _v20t.Name == _pguo("+y9I+ez0ZRnKPXHp3f9sHQ==") or _v20t.Name == _pguo("+y9I+ez0ZRnKPWLh2/Q=") then
_v20t:Destroy()
end
end
end)
pcall(function()
for _v20u, _v20v in ipairs({ _pguo("7hZtw9rvdBfTGlvtyg=="), _pguo("7hZtxtrwbBrMJ1Xo2w=="), _pguo("7hZtzsDabx8="),
_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="), _pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="), _pguo("7hZtxsDvcxHSDVPt") }) do
pcall(function() _v1:UnbindFromRenderStep(_v20v) end)
end
end)
pcall(function()
local _v20w = getgenv and getgenv()
if _v20w then _v20w.EazyCheats_Unload = nil end
end)
end
pcall(function()
local _v20x = getgenv and getgenv()
if _v20x then
_v20x.EazyCheats_Unload = _v4.unloadScript
_v20x.EazyCheats_Unload_Job = game.JobId
_v20x.EazyCheats_Unload_State = nil
end
end)
_v1k1.onUnload = _v4.unloadScript
_v4.CONFIG_FOLDER = _pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")
_v4.AUTO_LOAD_FILE = _v4.CONFIG_FOLDER .. _pguo("kS9H9MDwbxnaYEb42w==")
pcall(function() if not isfolder(_v4.CONFIG_FOLDER) then makefolder(_v4.CONFIG_FOLDER) end end)
local _v20y = game:GetService(_pguo("9jpG8Pz5cg7XLVc="))
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
SKIN_SELECTED = _v4.SKIN_SELECTED,
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
INSTA_TURN_KEY = (_v1mx and _v1mx.Key and _v1mx.Key ~= Enum.KeyCode.Unknown) and _v1mx.Key.Name or nil,
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
local _v20z = {}
for _v210, _v211 in pairs(_v4.ALL_TOGGLES) do
if _v211 and _v211.Key and _v211.Key ~= Enum.KeyCode.Unknown then
_v20z[_v210] = _v211.Key.Name
end
end
return _v20z
end)(),
}
end
function _v4.applyConfigData(_v212)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local function _v213(_v214, _v215)
pcall(function() if _v214 and _v215 ~= nil then _v214:Set(_v215) end end)
end
local function _v216(_v217, _v218)
pcall(function() if _v217 and _v218 ~= nil then _v217:Set(_v218) end end)
end
local function _v219(_v21a, _v21b, _v21c, _v21d, _v21e)
pcall(function()
for _v21f, _v21g in ipairs(_v21b) do
local _v21h = _v21c[_v21d .. _v21g]
if _v21h ~= nil then _v21a[_v21g] = _v21h and true or false end
end
if _v21e and _v21e.Refill then _v21e.Refill() end
end)
end
_v213(_v4.espToggle, _v212.ESP_ENABLED)
_v213(_v1ut.chams, _v212.CHAMS_ENABLED)
_v213(_v1ut.tracers, _v212.TRACERS_ENABLED)
_v213(_v1ut.showName, _v212.SHOW_NAME)
_v213(_v1ut.showDino, _v212.SHOW_DINO)
_v213(_v1ut.showStage, _v212.SHOW_STAGE)
_v213(_v1ut.showGender, _v212.SHOW_GENDER)
_v213(_v1ut.showHealth, _v212.SHOW_HEALTH)
_v213(_v1ut.showStamina, _v212.SHOW_STAMINA)
if _v212.SHOW_FOOD_BAR ~= nil then _v213(_v1ut.foodBar, _v212.SHOW_FOOD_BAR) end
if _v212.SHOW_FOOD_NUM ~= nil then _v213(_v1ut.foodNum, _v212.SHOW_FOOD_NUM) end
if _v212.SHOW_WATER_BAR ~= nil then _v213(_v1ut.waterBar, _v212.SHOW_WATER_BAR) end
if _v212.SHOW_WATER_NUM ~= nil then _v213(_v1ut.waterNum, _v212.SHOW_WATER_NUM) end
if _v212.SHOW_INFECT_BAR ~= nil then _v213(_v1ut.infectBar, _v212.SHOW_INFECT_BAR) end
if _v212.SHOW_INFECT_NUM ~= nil then _v213(_v1ut.infectNum, _v212.SHOW_INFECT_NUM) end
_v213(_v1ut.showWeight, _v212.SHOW_WEIGHT)
_v213(_v1ut.bleed, _v212.BLEED_ESP)
if _v212.PACK_ESP ~= nil then _v213(_v1ut.packESP, _v212.PACK_ESP) end
if _v212.PACK_LEADER_ESP ~= nil then _v213(_v1ut.packLeader, _v212.PACK_LEADER_ESP) end
_v213(_v1ut.showDist, _v212.SHOW_DISTANCE)
_v213(_v1ut.textHL, _v212.TEXT_HIGHLIGHT)
_v216(_v1ut.textSize, _v212.TEXT_SIZE)
_v216(_v1ut.hbHeight, _v212.HEALTH_BAR_HEIGHT)
if _v212.HEALTH_BAR_WIDTH then
_v216(_v1ut.hbWidth, math.floor(_v212.HEALTH_BAR_WIDTH * 100))
end
if _v212.STAM_BAR_HEIGHT then _v216(_v1ut.sbHeight, _v212.STAM_BAR_HEIGHT) end
if _v212.STAM_BAR_WIDTH then _v216(_v1ut.sbWidth, math.floor(_v212.STAM_BAR_WIDTH * 100)) end
_v216(_v1ut.espDist, _v212.ESP_DISTANCE)
if _v212.CHAMS_FILL_TRANSPARENCY then
_v216(_v1ut.chamsFill, math.floor(_v212.CHAMS_FILL_TRANSPARENCY * 100))
end
if _v212.CHAMS_OUTLINE_TRANSPARENCY then
_v216(_v1ut.chamsOutline, math.floor(_v212.CHAMS_OUTLINE_TRANSPARENCY * 100))
end
_v213(_v1ut.corpse, _v212.CORPSE_ESP)
if _v212.CORPSE_INF_ESP ~= nil then _v213(_v1ut.corpseInf, _v212.CORPSE_INF_ESP) end
_v216(_v1ut.worldTextSize, _v212.WORLD_TEXT_SIZE)
_v216(_v1ut.corpseDist, _v212.CORPSE_DISTANCE)
if _v212.STATS_CARD ~= nil then _v213(_v1ut.statsCard, _v212.STATS_CARD) end
if _v212.SC_GROWTH ~= nil then _v213(_v1ut.scGrowth, _v212.SC_GROWTH) end
if _v212.SC_MASS ~= nil then _v213(_v1ut.scMass, _v212.SC_MASS) end
if _v212.SC_WEIGHT ~= nil then _v213(_v1ut.scWeight, _v212.SC_WEIGHT) end
if _v212.SC_TIMER ~= nil then _v213(_v1ut.scTimer, _v212.SC_TIMER) end
if _v212.SC_NUTRITION ~= nil then _v213(_v1ut.scNutrition, _v212.SC_NUTRITION) end
if _v212.SC_WELLBEING ~= nil then _v213(_v1ut.scWellbeing, _v212.SC_WELLBEING) end
if _v212.SC_DRAG ~= nil then _v213(_v1ut.scDrag, _v212.SC_DRAG) end
if _v212.SC_NAME ~= nil then _v213(_v1ut.scName, _v212.SC_NAME) end
if _v212.SC_HIDE_WITH_MENU ~= nil then _v213(_v1ut.scHideMenu, _v212.SC_HIDE_WITH_MENU) end
if _v4.setStatsCardPos and _v212.SC_POS_XS and _v212.SC_POS_XO and _v212.SC_POS_YS and _v212.SC_POS_YO then
_v4.setStatsCardPos(_v212.SC_POS_XS, _v212.SC_POS_XO, _v212.SC_POS_YS, _v212.SC_POS_YO)
end
if _v212.FISH_ESP ~= nil then _v213(_v1ut.fishESP, _v212.FISH_ESP) end
_v213(_v1ut.fossilS, _v212.FOSSIL_SMALL)
_v213(_v1ut.fossilM, _v212.FOSSIL_MEDIUM)
_v213(_v1ut.fossilL, _v212.FOSSIL_LARGE)
_v216(_v1ut.fossilDistS, _v212.FOSSIL_DIST_SMALL or _v212.FOSSIL_DISTANCE)
_v216(_v1ut.fossilDistM, _v212.FOSSIL_DIST_MEDIUM or _v212.FOSSIL_DISTANCE)
_v216(_v1ut.fossilDistL, _v212.FOSSIL_DIST_LARGE or _v212.FOSSIL_DISTANCE)
if _v212.VEG_DIET_ONLY ~= nil then _v213(_v1ut.vegDietOnly, _v212.VEG_DIET_ONLY) end
if _v212.VEG_HIDE_EATEN ~= nil then _v213(_v1ut.vegHideEaten, _v212.VEG_HIDE_EATEN) end
if _v212.VEG_DISTANCE then _v216(_v1ut.vegDist, _v212.VEG_DISTANCE) end
if _v212.VEG_MAX then _v216(_v1ut.vegMax, _v212.VEG_MAX) end
if _v212.VEG_ESP ~= nil then _v213(_v1ut.vegESP, _v212.VEG_ESP) end
_v213(_v1ut.meat, _v212.MEAT_ESP)
_v216(_v1ut.meatDist, _v212.MEAT_DISTANCE)
if _v212.CLAY_ESP ~= nil then _v213(_v1ut.clay, _v212.CLAY_ESP) end
if _v212.CLAY_DISTANCE then _v216(_v1ut.clayDist, _v212.CLAY_DISTANCE) end
if _v212.MMAP_PLAYERS ~= nil then _v213(_v1ut.mmapPlayers, _v212.MMAP_PLAYERS) end
if _v212.MMAP_CORPSES ~= nil then _v213(_v1ut.mmapCorpses, _v212.MMAP_CORPSES) end
if _v212.MMAP_FOSSILS ~= nil then _v213(_v1ut.mmapFossils, _v212.MMAP_FOSSILS) end
if _v212.MMAP_ON ~= nil then
_v213(_v1ut.mmap, _v212.MMAP_ON)
elseif _v212.MMAP_PLAYERS or _v212.MMAP_CORPSES or _v212.MMAP_FOSSILS then
_v213(_v1ut.mmap, true)
end
_v213(_v1ut.antiBS, _v212.ANTI_BLACKSCREEN)
if _v212.NO_FOG ~= nil then _v213(_v1ut.noFog, _v212.NO_FOG) end
if _v212.NO_BLUR ~= nil then _v213(_v1ut.noBlur, _v212.NO_BLUR) end
if _v212.FULLBRIGHT ~= nil then _v213(_v1ut.fullbright, _v212.FULLBRIGHT) end
if _v212.CUSTOM_TIME_HOUR then _v216(_v1ut.timeHour, _v212.CUSTOM_TIME_HOUR) end
if _v212.CUSTOM_TIME ~= nil then _v213(_v1ut.customTime, _v212.CUSTOM_TIME) end
if _v212.MOB_SHOW_TURN ~= nil and _v4.mobTurnToggle then _v213(_v4.mobTurnToggle, _v212.MOB_SHOW_TURN) end
_v213(_v1ut.showModules, _v212.SHOW_INDICATORS)
if _v212.MOD_CHECK ~= nil then _v213(_v1ut.modCheck, _v212.MOD_CHECK) end
if _v212.MOD_KICK ~= nil then _v213(_v1ut.modKick, _v212.MOD_KICK) end
_v213(_v1ut.unlimitedZoom, _v212.UNLIMITED_ZOOM)
if _v212.FOV_VALUE then _v216(_v1ut.fovSlider, _v212.FOV_VALUE) end
_v213(_v1ut.fovToggle, _v212.FOV_ENABLED)
_v216(_v1ut.attackSpeed, _v212.ATTACK_SPEED)
_v213(_v1ut.noAtkCd, _v212.NO_ATK_CD)
_v213(_v1ut.noAtkCooldown, _v212.NO_ATK_COOLDOWN)
_v219(_v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER, _v212, _pguo("7Q9t"), _v1ut.silentGroups)
_v216(_v1ut.turnSpeed, _v212.TURN_SPEED)
_v213(_v1ut.quickTurn, _v212.QUICK_TURN)
_v213(_v1ut.silentAim, _v212.SILENT_AIM)
if _v212.INSTA_TURN_KEY and _v1mx then
pcall(function()
local _v21i = Enum.KeyCode[_v212.INSTA_TURN_KEY]
if _v21i then _v1mx:Set(_v21i, true) end
end)
end
_v213(_v4.hitboxToggle, _v212.HITBOX_EXPANDER)
_v213(_v1ut.hitboxVis, _v212.HITBOX_VISUALIZE)
_v216(_v1ut.hitboxMult, _v212.HITBOX_MULTIPLIER)
if _v212.HITBOX_VIS_TRANSPARENCY ~= nil then
_v216(_v1ut.hitboxVisOpacity, math.floor((1 - _v212.HITBOX_VIS_TRANSPARENCY) * 100))
end
_v219(_v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER, _v212, _pguo("9glt"), _v1ut.hitboxGroups)
_v216(_v1ut.reachMult, _v212.REACH_MULTIPLIER)
if _v212.REACH_Tail ~= nil and _v212.REACH_TailBase == nil then
_v212.REACH_TailBase = _v212.REACH_Tail
_v212.REACH_TailMid = _v212.REACH_Tail
_v212.REACH_TailTip = _v212.REACH_Tail
_v212.REACH_Thagomizer = _v212.REACH_Tail
end
_v219(_v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER, _v212, _pguo("7Atzw+fD"), _v1ut.reachGroups)
if _v212.REACH_VIS_TRANSPARENCY ~= nil then
_v216(_v1ut.reachVisOpacity, math.floor((1 - _v212.REACH_VIS_TRANSPARENCY) * 100))
end
if _v212.REACH_VISUALIZE ~= nil then _v213(_v1ut.reachVis, _v212.REACH_VISUALIZE) end
_v213(_v1ut.reach, _v212.REACH_ENABLED)
_v213(_v4.autoWaterToggle, _v212.AUTO_WATER)
if _v212.FORCE_EAT ~= nil then _v213(_v4.forceEatToggle, _v212.FORCE_EAT) end
if _v212.FAST_EAT ~= nil then _v213(_v1ut.fastEat, _v212.FAST_EAT) end
if _v212.FREEZE_FOOD ~= nil then _v213(_v1ut.freezeFood, _v212.FREEZE_FOOD) end
if _v212.FREEZE_WATER ~= nil then _v213(_v1ut.freezeWater, _v212.FREEZE_WATER) end
if _v212.AUTO_CLEAN ~= nil then _v213(_v4.autoCleanToggle, _v212.AUTO_CLEAN) end
if _v212.INF_OXYGEN ~= nil then _v213(_v1ut.infOxygen, _v212.INF_OXYGEN) end
if _v212.EAT_WHEN_HUNGRY ~= nil then _v213(_v1ut.eatWhenHungry, _v212.EAT_WHEN_HUNGRY) end
if _v212.LEAVE_SCRAPS ~= nil then _v213(_v1ut.leaveScraps, _v212.LEAVE_SCRAPS) end
_v213(_v4.noFallToggle, _v212.NO_FALL_DAMAGE)
if _v212.FPS_SAVER ~= nil then _v213(_v1ut.fpsSaver, _v212.FPS_SAVER) end
if _v212.SAVE_DIR then _v213(_v1ut.saveDir, _v212.SAVE_DIR) end
if _v212.FLY_SPEED then _v216(_v4.flySpeedSlider, _v212.FLY_SPEED) end
if type(_v212.SKIN_SELECTED) == _pguo("zTpA6cH7") and _v4.skinDropdown then
local _v21j = _v4.skinsForCurrentDino and _v4.skinsForCurrentDino() or {}
if table.find(_v21j, _v212.SKIN_SELECTED) then _v213(_v4.skinDropdown, _v212.SKIN_SELECTED) end
end
if _v212.AUTO_FLY_SPEED then _v216(_v4.autoFlySpeedSlider, _v212.AUTO_FLY_SPEED) end
if _v212.AUTO_FLY_RADIUS then _v216(_v4.autoFlyRadiusSlider, _v212.AUTO_FLY_RADIUS) end
if _v212.AUTO_FLY_DRIFT then _v216(_v4.autoFlyDriftSlider, _v212.AUTO_FLY_DRIFT) end
if _v212.AUTO_FLY_ALT then _v216(_v4.autoFlyAltSlider, _v212.AUTO_FLY_ALT) end
if _v212.ANTI_AFK ~= nil then _v213(_v4.antiAfkToggle, _v212.ANTI_AFK) end
if _v212.AFK_FARM_SPEED then _v216(_v1ut.afkFarmSpeed, _v212.AFK_FARM_SPEED) end
if _v212.FOSSIL_FARM_SPEED then _v216(_v4.fossilFarmSpeedSlider, _v212.FOSSIL_FARM_SPEED) end
if _v212.AFK_FARM_AVOID then _v216(_v1ut.afkFarmAvoid, _v212.AFK_FARM_AVOID) end
if _v212.AFK_FARM_WALK ~= nil then _v213(_v1ut.afkFarmWalk, _v212.AFK_FARM_WALK) end
if _v212.AFK_FARM_SAFETY ~= nil then _v213(_v1ut.afkFarmSafety, _v212.AFK_FARM_SAFETY) end
if _v212.AFK_FARM_ADMIN_KICK ~= nil then _v213(_v1ut.afkFarmAdminKick, _v212.AFK_FARM_ADMIN_KICK) end
if _v212.AFK_FARM_FLEE ~= nil then _v213(_v1ut.afkFarmFlee, _v212.AFK_FARM_FLEE) end
if _v212.AFK_FARM_UNSTUCK ~= nil then _v213(_v1ut.afkFarmUnstuck, _v212.AFK_FARM_UNSTUCK) end
if _v212.LF_AVOID then _v216(_v1ut.lfAvoid, _v212.LF_AVOID) end
if _v212.LF_RUN_DIST then _v216(_v1ut.lfRunDist, _v212.LF_RUN_DIST) end
if _v212.LF_MAX_DIST then _v216(_v1ut.lfMaxDist, _v212.LF_MAX_DIST) end
if _v212.LF_SCRAPS ~= nil then _v213(_v1ut.lfScraps, _v212.LF_SCRAPS) end
if _v212.LF_FLEE ~= nil then _v213(_v1ut.lfFlee, _v212.LF_FLEE) end
if _v212.LF_UNSTUCK ~= nil then _v213(_v1ut.lfUnstuck, _v212.LF_UNSTUCK) end
if _v212.LF_REST ~= nil then _v213(_v1ut.lfRest, _v212.LF_REST) end
if _v212.LF_ADMIN_KICK ~= nil then _v213(_v1ut.lfAdminKick, _v212.LF_ADMIN_KICK) end
if _v212.LF_FLYAWAY ~= nil then _v213(_v1ut.lfFlyAway, _v212.LF_FLYAWAY) end
if _v212.LF_FLYAWAY_RADIUS then _v216(_v1ut.lfFlyAwayRadius, _v212.LF_FLYAWAY_RADIUS) end
for _v21k = 1, 6 do
local _v21l = _v212[_pguo("/x1t0+PTVA==") .. _v21k]
if _v21l ~= nil then _v213(_v1ut[_pguo("3z1h7MDo") .. _v21k], _v4.asLabel and _v4.asLabel(_v21l) or _v21l) end
end
_v213(_v1ut.asGender, _v212.AS_GENDER)
if _v212.AS_AUTOBUY ~= nil then _v213(_v1ut.asAutoBuy, _v212.AS_AUTOBUY) end
if _v212.AS_AUTO_ORDER ~= nil then _v213(_v1ut.asAutoOrder, _v212.AS_AUTO_ORDER) end
if _v212.FT_MINUTES then _v216(_v1ut.ftMinutes, _v212.FT_MINUTES) end
if _v212.AMBER_MINUTES then _v216(_v1ut.amberMinutes, _v212.AMBER_MINUTES) end
_v213(_v1ut.tpSolid, _v212.TP_SOLID)
_v213(_v1ut.tpChain, _v212.TP_CHAIN)
if _v212.AUTO_SAVE_PCT and _v212.AUTO_SAVE_PCT > 0 then
_v216(_v4.autoSaveSlider, _v212.AUTO_SAVE_PCT)
end
local _v21m = _v212.AUTO_SAVE
if _v21m == nil then _v21m = (_v212.AUTO_SAVE_PCT or 0) > 0 end
_v213(_v4.autoSaveToggle, _v21m)
if _v212.AUTO_SAVE_BLEED ~= nil then _v213(_v4.autoSaveBleedToggle, _v212.AUTO_SAVE_BLEED) end
if type(_v212.KEYBINDS) == _pguo("yi9Q7Mo=") then
for _v21n, _v21o in pairs(_v212.KEYBINDS) do
local _v21p = _v4.ALL_TOGGLES[_v21n]
if _v21p and _v21p.SetKey and _v21o then
pcall(function()
local _v21q = Enum.KeyCode[_v21o]
if _v21q then _v21p:SetKey(_v21q, true) end
end)
end
end
end
if _v212.AUTO_GROW then
_v213(_v4.autoGrowToggle, true)
end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.cfgApplied = true
end
function _v4.listConfigs()
local _v21r = {}
pcall(function()
local _v21s = listfiles(_v4.CONFIG_FOLDER)
for _v21t, _v21u in ipairs(_v21s) do
local _v21v = _v21u:match(_pguo("lhVsr/PBK1GbYFjzwPIk"))
if _v21v and _v21v ~= _pguo("3ztG78PzYRw=") then
table.insert(_v21r, _v21v)
end
end
end)
table.sort(_v21r)
return _v21r
end
function _v4.saveConfig(_v21w)
local ok, err = pcall(function()
local _v21x = _v4.getConfigData()
writefile(_v4.CONFIG_FOLDER .. "/" .. _v21w .. _pguo("kCRB78E="), _v20y:JSONEncode(_v21x))
end)
if ok then
print(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYd2nQS") .. _v21w)
pcall(function() _v1k1:Notify(_pguo("7S9E5cu8YxfQKFvnlbw=") .. _v21w) end)
else
warn(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYdnghzyePZREKe") .. tostring(err))
pcall(function() _v1k1:Notify(_pguo("7S9E5Y/6YRHSK1a6jw==") .. _v21w) end)
end
return ok
end
function _v4.loadConfig(_v21y)
local ok, data = pcall(function()
local _v21z = readfile(_v4.CONFIG_FOLDER .. "/" .. _v21y .. _pguo("kCRB78E="))
return _v20y:JSONDecode(_v21z)
end)
if ok and data then
_v4.applyConfigData(data)
print(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82Ec2yoIoA==") .. _v21y)
pcall(function() _v1k1:Notify(_pguo("8iFT5Mr4IBvRIFTpyKYg") .. _v21y) end)
return true
else
warn(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82EcnghzyePZREKe") .. tostring(data))
pcall(function() _v1k1:Notify(_pguo("8iFT5I/6YRHSK1a6jw==") .. _v21y) end)
end
return false
end
function _v4.deleteConfig(_v220)
pcall(function()
delfile(_v4.CONFIG_FOLDER .. "/" .. _v220 .. _pguo("kCRB78E="))
end)
end
function _v4.getAutoLoadConfig()
local _v221, _v222 = pcall(function() return readfile(_v4.AUTO_LOAD_FILE) end)
if _v221 and _v222 and _v222 ~= "" then return _v222 end
return nil
end
function _v4.setAutoLoadConfig(_v223)
pcall(function() writefile(_v4.AUTO_LOAD_FILE, _v223 or "") end)
end
local _v224 = _v1k1.tabs and _v1k1.tabs.Settings
if _v224 then
pcall(function()
_v224.page.ScrollingEnabled = true
_v224.page.ScrollBarThickness = 3
end)
else
_v224 = _v1up
end
if _v4.IS_MOBILE then
_v4.section(_v224, _pguo("8yFQ6cP5"), _pguo("7SZd94/IdQrQbnD12+hvFs10EvPH83cLnjpa5Y/zblXNLUDlyvIgDMs8XKDf/WRWnhpH8sG8aQyeIVTmj/VmWNc6EuPA6mUKzW5B78L5dBDXIFWg1vN1WNArV+SP6G9Yyi9Crg=="))
_v4.mobTurnToggle = _v224:AddToggle({
Name = _pguo("7SZd94/IdQrQbnD12+hvFs0="),
Default = true,
Callback = function(_v225) _v4.MOB_SHOW_TURN = _v225 end
})
end
_v4.CONFIG_SLOTS = {_pguo("/SFc5sb7MQ=="), _pguo("/SFc5sb7Mg=="), _pguo("/SFc5sb7Mw=="), _pguo("/SFc5sb7NA=="), _pguo("/SFc5sb7NQ=="), _pguo("7jhi"), _pguo("+x1ioODybAE="), _pguo("+Txb7ss="), _pguo("+Dte7A==")}
pcall(function()
_v1k1:SetConfig({
Folder = _v4.CONFIG_FOLDER,
Slots = _v4.CONFIG_SLOTS,
Save = _v4.saveConfig,
Load = _v4.loadConfig,
})
end)
local _v226 = Instance.new(_pguo("7S1A5cryRw3X"))
_v226.Name = _pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA==")
_v226.ResetOnSpawn = false
_v226.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v226.Parent = game:GetService(_pguo("/SFA5ejpaQ==")) end)
if not _v226.Parent then _v226.Parent = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
local _v227 = Instance.new(_pguo("+DxT7co="))
_v227.Name = _pguo("8yFW9cP5TBHNOg==")
_v227.Size = UDim2.new(0, 160, 0, 400)
_v227.Position = UDim2.new(1, -170, 0, 10)
_v227.BackgroundTransparency = 1
_v227.Parent = _v226
local _v228 = Instance.new(_pguo("6wd+6dzoTBnHIUf0"))
_v228.FillDirection = Enum.FillDirection.Vertical
_v228.HorizontalAlignment = Enum.HorizontalAlignment.Right
_v228.VerticalAlignment = Enum.VerticalAlignment.Top
_v228.SortOrder = Enum.SortOrder.LayoutOrder
_v228.Padding = UDim.new(0, 2)
_v228.Parent = _v227
_v4.TweenService = game:GetService(_pguo("6jlX5cHPZQrIJ1Hl"))
local _v229 = {}
_v4.SLIDE_TIME = 0.25
function _v4.createIndicatorLabel(_v22a, _v22b)
local _v22c = Instance.new(_pguo("6itK9OP9Yh3S"))
_v22c.Name = _pguo("9yBW3w==") .. _v22a
_v22c.LayoutOrder = _v22b
_v22c.Size = UDim2.new(1, 0, 0, 18)
_v22c.BackgroundTransparency = 1
_v22c.TextColor3 = Color3.fromRGB(170, 90, 255)
_v22c.TextStrokeTransparency = 0.3
_v22c.TextStrokeColor3 = Color3.new(0, 0, 0)
_v22c.Font = Enum.Font.GothamBold
_v22c.TextSize = 13
_v22c.TextXAlignment = Enum.TextXAlignment.Right
_v22c.Text = _v22a
_v22c.TextTransparency = 1
_v22c.Position = UDim2.new(1, 0, 0, 0)
_v22c.Parent = _v227
_v229[_v22a] = _v22c
return _v22c
end
function _v4.showIndicator(_v22d)
local _v22e = _v229[_v22d]
if not _v22e then return end
_v22e.Visible = true
_v22e.TextTransparency = 1
_v22e.Position = UDim2.new(1, 0, 0, 0)
local _v22f = _v4.TweenService:Create(_v22e, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
TextTransparency = 0,
Position = UDim2.new(0, 0, 0, 0)
})
_v22f:Play()
end
function _v4.hideIndicator(_v22g)
local _v22h = _v229[_v22g]
if not _v22h then return end
local _v22i = _v4.TweenService:Create(_v22h, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
TextTransparency = 1,
Position = UDim2.new(1, 0, 0, 0)
})
_v22i:Play()
_v22i.Completed:Connect(function()
if _v22h.TextTransparency >= 0.9 then
_v22h.Visible = false
end
end)
end
function _v4.updateIndicator(_v22j, _v22k)
if _v22k then
_v4.showIndicator(_v22j)
else
_v4.hideIndicator(_v22j)
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
for _v22l, _v22m in ipairs(_v4.MODULE_LIST) do
_v4.createIndicatorLabel(_v22m.name, _v22m.order)
end
_v4.prevStates = {}
_v4.addStep(6, function()
if _v226.Enabled ~= _v4.SHOW_INDICATORS then _v226.Enabled = _v4.SHOW_INDICATORS end
for _v22n, _v22o in ipairs(_v4.MODULE_LIST) do
local _v22p = _v22o.getState()
if _v4.prevStates[_v22o.name] ~= _v22p then
_v4.prevStates[_v22o.name] = _v22p
_v4.updateIndicator(_v22o.name, _v22p)
end
end
end)
pcall(function()
local _v22q = (_v1k1.toggleKey and _v1k1.toggleKey.Name) or _pguo("7CdV6NvPaBHYOg==")
_v1k1:Notify(_pguo("+y9I+ez0ZRnKPRLswP1kHdpuH6Df7mULzW4=") .. _v22q .. _pguo("njpdoNz0bw+eIUCgx/VkHZ46WuWP8WUWyw=="), 6)
end)