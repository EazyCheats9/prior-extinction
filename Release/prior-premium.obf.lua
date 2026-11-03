--EZ:__EZ_WM__
-- EazyCheats | Prior Extinction Hub | PREMIUM
local _pguo do local B="" for c=65,90 do B=B..string.char(c) end for c=97,122 do B=B..string.char(c) end for c=48,57 do B=B..string.char(c) end B=B..string.char(43)..string.char(47) local L={} for i=1,#B do L[B:sub(i,i)]=i-1 end local Kr={90,170,214,100,75,120,228,156} local m=228 local bx=bit32.bxor local ch=string.char local K={} for i=1,#Kr do K[i]=bx(Kr[i],m) end local C={} _pguo=function(s) local c=C[s] if c then return c end local o={} local a,b,n=0,0,0 for i=1,#s do local v=L[s:sub(i,i)] if v then a=a*64+v b=b+6 if b>=8 then b=b-8 local by=math.floor(a/2^b)%256 a=a%(2^b) o[#o+1]=ch(bx(by,K[n%8+1])) n=n+1 end end end local r=table.concat(o) C[s]=r return r end end

local _v0 = game:GetService(_pguo("7iJT+crucw=="))
local _v1 = game:GetService(_pguo("7Dtc08rudhHdKw=="))
local _v2 = _v0.LocalPlayer
local _v3 = workspace.CurrentCamera
local _v4 = {}
_v4.BUILD_TAG = _pguo("4RF32vDLTSfh")
_v4.EXECUTOR = nil
_v4.CAP = { filtergc = type(filtergc) == _pguo("2Dtc49v1bxY=") }
_v4.CAP.drawing = (type(Drawing) == _pguo("yi9Q7Mo=") and type(Drawing.new) == _pguo("2Dtc49v1bxY=")) or false
_v4.CAP.drawingTimed = false
_v4.DRAW_STUB = setmetatable({}, {
__index = function() return function() end end,
__newindex = function() end,
})
function _v4.safeDraw(_v5)
if not _v4.CAP.drawing then return _v4.DRAW_STUB end
if not _v4.IS_XENO then
local _v6, _v7 = pcall(Drawing.new, _v5)
return (_v6 and _v7) or _v4.DRAW_STUB
end
local _v8 = os.clock()
local _v9, _va = pcall(Drawing.new, _v5)
if not _v9 or not _va then _v4.CAP.drawing = false; return _v4.DRAW_STUB end
if not _v4.CAP.drawingTimed then
_v4.CAP.drawingTimed = true
if os.clock() - _v8 > 0.02 then
_v4.CAP.drawing = false
pcall(function() _va:Remove() end)
return _v4.DRAW_STUB
end
end
return _va
end
_v4.CS_DENY = { xeno = true }
do
local _vb = ""
pcall(function()
_vb = tostring((identifyexecutor and select(1, identifyexecutor()))
or (getexecutorname and getexecutorname()) or "")
end)
if _vb ~= "" then _v4.EXECUTOR = _vb end
local _vc = string.lower(_vb)
local _vd = false
for _ve in pairs(_v4.CS_DENY) do if _vc ~= "" and string.find(_vc, _ve, 1, true) then _vd = true break end end
_v4.CAP.charstate = not _vd
_v4.IS_XENO = string.find(_vc, _pguo("xitc7w=="), 1, true) ~= nil
end
function _v4.requireCS()
if _v4.csCache then return _v4.csCache end
if not _v4.CAP.charstate then return nil end
pcall(function() _v4.csCache = require(game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s=")).Common.CharacterState) end)
return _v4.csCache
end
_v4.XENO_REQ_OK = {
_pguo("+idc79z9dQr6L0bhgQ=="), _pguo("7SZT8sr4LjvRIEH1wux0EdEgduHb/Q=="), _pguo("7SZT8sr4Li/bIl7iyvVuH/ovRuE="), _pguo("7SZT8sr4LivVJ1zEzuhh"), _pguo("7SZT8sr4LjTRLFD56/10GQ=="),
_pguo("7SZT8sr4LjvRI1Dh29hhDN8="), _pguo("8yFW9cP5c1b9IVzz2vFwDNchXK7o+XQq0TpG5cHPZQzKJ1zn3A=="), _pguo("8yFW9cP5c1b9IVzz2vFwDNchXK7o+XQ70TxC88rQaR7bOlvtyg=="),
_pguo("8yFW9cP5c1b9IV/izuguP9s6e+7J+WMM1yFc08rodBHQKUE="), _pguo("/SFf7cDyLj/bOnXywOt0EPcgVuXX"), _pguo("/SFf7cDyLjrLKFTl3e8uO9EgQfXC/WIU2wxH5sn5cg=="),
}
_v4.reqCache = setmetatable({}, { __mode = "k" })
function _v4.req(_vf)
if not _v4.IS_XENO then return require(_vf) end
local _vg = _v4.reqCache[_vf]
if _vg == false then error(_pguo("0CFGoM7qYRHSL1DsyrxvFp46WuncvGUA2y1H9MDu"), 2) end
if _vg ~= nil then return _vg end
local _vh, _vi = false, "?"
pcall(function()
_vi = _vf:GetFullName()
local _vj = string.match(_vi, _pguo("4BxX8MP1YxnKK1bT2/NyGdkrF66HsitRmg=="))
for _vk, _vl in ipairs(_v4.XENO_REQ_OK) do
if _vj and string.sub(_vj, 1, #_vl) == _vl then _vh = true break end
end
end)
if not _vh then
_v4.reqCache[_vf] = false
if _v4.xlog then _v4.xlog(_pguo("zCtD9cbuZVjNJVvw3/lkWJYgXfSP+GEM32cIoA==") .. tostring(_vi)) end
error(_pguo("0CFGoM7qYRHSL1DsyrxvFp46WuncvGUA2y1H9MDu"), 2)
end
local _vm, _vn = pcall(require, _vf)
_v4.reqCache[_vf] = _vm and _vn or false
if not _vm then error(_vn, 2) end
return _vn
end
_v4.xlogBuf, _v4.xlogBytes = {}, 0
function _v4.xlog(_vo)
if not _v4.IS_XENO or _v4.xlogBytes > 400000 then return end
_v4.xlogBuf[#_v4.xlogBuf + 1] = os.date(_pguo("mwYIpeKmJSs=")) .. string.format(_pguo("nmUXrp76c1ie"), os.clock()) .. tostring(_vo) .. "\n"
end
if _v4.IS_XENO then
task.spawn(function()
local _vp = _pguo("+y9I+ez0ZRnKPR34yvJvVdIhVa7b5HQ=")
pcall(function() if not isfolder(_pguo("+y9I+ez0ZRnKPQ==")) then makefolder(_pguo("+y9I+ez0ZRnKPQ==")) end end)
pcall(function() if isfile(_vp) and #readfile(_vp) > 800000 then writefile(_vp, "") end end)
while true do
task.wait(5)
if #_v4.xlogBuf > 0 then
local _vq = table.concat(_v4.xlogBuf)
_v4.xlogBuf = {}
_v4.xlogBytes = _v4.xlogBytes + #_vq
if not pcall(function() appendfile(_vp, _vq) end) then
pcall(function() writefile(_vp, ((isfile(_vp) and readfile(_vp)) or "") .. _vq) end)
end
elseif _v4.UNLOADED then
break
end
end
end)
task.spawn(function()
local _vr = _v2.Character
_v4.xlog((_pguo("g3MPoOr9egH9Jlfh2+8gFNEvVqDTvGUA2y1H9MDuIF3Nbk6g3/BhG9tuF/OP4CAS0SwSpdy8fFjaJ1zvj7lzWMJuQfTO+2VYmz0=")):format(
tostring(_v4.EXECUTOR), tostring(game.PlaceId), string.sub(tostring(game.JobId), 1, 8),
tostring(_vr and _vr:GetAttribute(_pguo("6jdC5Q=="))), tostring(_vr and _vr:GetAttribute(_pguo("7TpT58o=")))))
local _vs = {}
local function _vt(_vu, _vv) local _vw, _vx = pcall(function() return _vu:Connect(_vv) end) if _vw then _vs[#_vs + 1] = _vx end end
_vt(game:GetService(_pguo("8iFV08rudhHdKw==")).MessageOut, function(_vy, _vz)
if _vz == Enum.MessageType.MessageError then _v4.xlog(_pguo("+xxgz/28") .. string.sub(tostring(_vy), 1, 500))
elseif _vz == Enum.MessageType.MessageWarning then _v4.xlog(_pguo("yS9A7o+8") .. string.sub(tostring(_vy), 1, 300)) end
end)
_vt(_v2.CharacterRemoving, function() _v4.xlog(_pguo("2itB8M7rbliWLVrh3f1jDNs8EvLK8W8O2yob")) end)
_vt(_v2.CharacterAdded, function(_v10)
task.wait(1)
_v4.xlog((_pguo("zT5T98GmIF3Nbhfz")):format(tostring(_v10:GetAttribute(_pguo("6jdC5Q=="))), tostring(_v10:GetAttribute(_pguo("7TpT58o=")))))
end)
local _v11 = 0
_vt(_v1.Heartbeat, function() _v11 = _v11 + 1 end)
local _v12 = os.clock()
while not _v4.UNLOADED do
task.wait(10)
local _v13 = os.clock()
local _v14, _v15 = _pguo("0CFc5Q=="), "?"
pcall(function()
local _v16 = getgenv().__PX_EZ_WIN
local _v17 = _v16 and (_v16._gui or _v16.gui)
if _v17 then _v14 = _v17.Parent and _v17.Parent:GetFullName() or _pguo("0CdeoN/9ch3QOg=="); _v15 = tostring(_v17.Enabled) end
end)
_v4.xlog((_pguo("3yJb9sq8fFibYALmj/pwC54yEufO7CBdkH9U84/gIBzXIF2giu8gBJ4jV+7avGkWnmtBrI/5bhncIlfkj7lz")):format(
_v11 / math.max(_v13 - _v12, 0.1), _v13 - _v12, tostring(_v2.Character ~= nil), _v14, _v15))
_v11, _v12 = 0, _v13
end
_v4.xlog(_pguo("g3MPoNrybBffKlfk"))
for _v18, _v19 in ipairs(_vs) do pcall(function() _v19:Disconnect() end) end
end)
end
_v4.CAP.hwid = type(gethwid) == _pguo("2Dtc49v1bxY=")
_v4.HWID = nil
_v4.httpReq = (type(request) == _pguo("2Dtc49v1bxY=") and request)
or (type(http_request) == _pguo("2Dtc49v1bxY=") and http_request)
or (type(syn) == _pguo("yi9Q7Mo=") and type(syn.request) == _pguo("2Dtc49v1bxY=") and syn.request)
or nil
_v4.CAP.http = _v4.httpReq ~= nil
_v4.REPORT_URL = _pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8Zzicd6Nj1ZFXMK0Lv3eg=")
function _v4.reportPresence()
if not (_v4.CAP.http and _v4.httpReq) then return end
while not _v4.UNLOADED do
if _v4.HWID == nil then
_v4.HWID = _pguo("yyBZ7sDrbg==")
pcall(function() if _v4.CAP.hwid then _v4.HWID = tostring(gethwid()) end end)
pcall(function()
_v4.EXECUTOR = (identifyexecutor and select(1, identifyexecutor()))
or (getexecutorname and getexecutorname()) or "?"
end)
end
pcall(function()
local _v1a = game:GetService(_pguo("9jpG8Pz5cg7XLVc="))
local _v1b = _v1a:JSONEncode({
hwid = _v4.HWID,
userId = _v2.UserId,
name = _v2.Name,
display = _v2.DisplayName,
placeId = game.PlaceId,
jobId = game.JobId,
executor = _v4.EXECUTOR,
game = _pguo("7jxb7928RQDKJ1zj2/VvFg=="),
})
local _v1c = _v4.httpReq({
Url = _v4.REPORT_URL,
Method = _pguo("7gFh1A=="),
Headers = { [_pguo("/SFc9MrydFXqN0Ll")] = _pguo("3z5C7Mb/YQzXIVyvxe9vFg==") },
Body = _v1b,
})
if type(_v1c) == _pguo("yi9Q7Mo=") and type(_v1c.Body) == _pguo("zTpA6cH7") then
local _v1d, _v1e = pcall(function() return _v1a:JSONDecode(_v1c.Body) end)
if _v1d and type(_v1e) == _pguo("yi9Q7Mo=") and type(_v1e.m) == _pguo("yi9Q7Mo=") then
local _v1f = {}
for _v1g, _v1h in ipairs(_v1e.m) do
local _v1i = tonumber(_v1h)
if _v1i then _v1f[_v1i] = true end
end
_v4.hbMask = _v1f
end
end
end)
local _v1j = 25 + math.random(0, 20)
for _v1k = 1, _v1j do
if _v4.UNLOADED then break end
task.wait(1)
end
end
end
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
_v4.SHOW_INFECTED = false
_v4.FOOD_COLOR = Color3.fromRGB(230, 140, 50)
_v4.WATER_COLOR = Color3.fromRGB(40, 210, 230)
_v4.INFECT_COLOR = Color3.fromRGB(175, 90, 230)
_v4.ROT_COLOR = Color3.fromRGB(150, 190, 70)
_v4.INFECT_MAX = 100
_v4.infectCur = {}
_v4.foodSeenMax, _v4.waterSeenMax = {}, {}
function _v4.espVital(_v1l, _v1m, _v1n, _v1o, _v1p, _v1q, _v1r, _v1s, _v1t, _v1u, _v1v)
local _v1w = type(_v1q) == _pguo("0Dtf4sru")
local _v1x = _v1u and _v1w
if _v1l then
_v1l.Visible = _v1x
if _v1x then
if _v1m then _v1m.Size = UDim2.new(math.clamp(_v1q / math.max(_v1r or _v1q, 1), 0, 1), 0, 1, 0) end
if _v1n then _v1n.Text = _v1p .. " " .. math.floor(_v1q) .. (_v1s and ("/" .. math.floor(_v1s)) or "") end
end
end
if _v1v and not _v1x and _v1w then
_v1o[#_v1o + 1] = string.format(_pguo("gihd7tu8YxfSIUC9jb8lC5xwF/OPuWREkShd7tui"), _v1t:ToHex(), _v1p, math.floor(_v1q))
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
_v4.PUMPKIN_ESP = false
_v4.PUMPKIN_DISTANCE = 10000
_v4.PUMPKIN_COLOR = Color3.fromRGB(255, 130, 20)
_v4.PUMPKIN_GIANT_COLOR = Color3.fromRGB(255, 225, 60)
_v4.TEXT_HIGHLIGHT = false
_v4.WORLD_TEXT_SIZE = 12
_v4.ANTI_BLACKSCREEN = false
_v4.SHOW_INDICATORS = false
_v4.AUTO_GROW = false
_v4.AUTO_WATER = false
_v4.WATER_ANYWHERE = false
_v4.DRINK_WADE = 20
_v4.DRINK_AT = 0.2
_v4.LF_WATER_CRITICAL = 0.01
_v4.DRINK_SEARCH = 1500
_v4.SIP_RATE = 1 / 0.93
_v4.FORCE_EAT = false
_v4.LEAVE_SCRAPS = false
_v4.scrapBite, _v4.scrapBiteType = nil, nil
function _v4.noteBiteDrop(_v1y)
local _v1z
pcall(function() _v1z = _v2.Character:GetAttribute(_pguo("6jdC5Q==")) end)
if _v1z ~= _v4.scrapBiteType then _v4.scrapBite, _v4.scrapBiteType = nil, _v1z end
if type(_v1y) == _pguo("0Dtf4sru") and _v1y > 0 and _v1y < 1e6 then
_v4.scrapBite = math.max(_v1y, (_v4.scrapBite or 0) * 0.9)
end
end
function _v4.isScraps(_v20)
if type(_v20) ~= _pguo("0Dtf4sru") then return false end
local _v21
pcall(function() _v21 = _v2.Character:GetAttribute(_pguo("6jdC5Q==")) end)
local _v22 = (_v21 == _v4.scrapBiteType) and _v4.scrapBite or nil
return _v20 <= math.max(5, (_v22 or 0) * 2.2)
end
function _v4.scrapsWanted()
return _v4.LEAVE_SCRAPS or (_v4.LEGIT_FARM and _v4.LF_SCRAPS) or false
end
_v4.FAST_EAT = true
_v4.FAST_EAT_RATE = 1 / 0.85
_v4.EAT_WHEN_HUNGRY = false
_v4.foodCur = {}
_v4.foodMax = {}
_v4.STATS_CARD = false
_v4.SC_GROWTH, _v4.SC_MASS, _v4.SC_WEIGHT, _v4.SC_TIMER, _v4.SC_NUTRITION, _v4.SC_WELLBEING = true, true, true, true, true, true
_v4.SC_STAGE_TIMER = true
_v4.SC_NAME = true
_v4.SC_DRAG = false
_v4.SC_HIDE_WITH_MENU = true
_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO = 0.62, 0, 0, 16
_v4.SKIN_SELECTED = _pguo("+itU4drwdA==")
_v4.FISH_ESP = false
_v4.FLY = false
_v4.AUTO_FLY = false
_v4.AUTO_FLY_SPEED = 25
_v4.AUTO_FLY_RADIUS = 1000
_v4.AUTO_FLY_DRIFT = 10
_v4.AUTO_FLY_ALT = 150
_v4.ANTI_AFK = false
_v4.AFK_FARM = false
_v4.AFK_FARM_AVOID = 200
_v4.AFK_FARM_WALK = true
function _v4.dinoEatsMeat()
if not _v4.CAP.charstate then return false end
local _v23, _v24 = pcall(function()
return require(game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s=")).Common.CharacterState).Data.Diet.Categories.Meat ~= nil
end)
return _v23 and _v24 == true
end
_v4.OTHER_FOOD = { [_pguo("/CFc5dy8Jlj9Jlv0xvI=")] = true, Shellfish = true, Eggs = true, Insects = true }
_v4.NUTRIENTS = { _pguo("7jxd9Mr1bgs="), _pguo("+C9G8w=="), _pguo("/S9e48bpbQ=="), _pguo("/S9A4sD0eRzML0bl3A=="), _pguo("+CdQ5d0=") }
_v4.AFK_FARM_SAFETY = true
_v4.AFK_FARM_ADMIN_KICK = true
_v4.AFK_FARM_FLEE = true
_v4.AFK_FARM_UNSTUCK = false
_v4.UNSTUCK_EAT_SECS = 25
_v4.NO_GAIN_SECS = 12
_v4.NO_GAIN_SKIP = 1200
function _v4.foodGap(_v25, _v26)
return math.min(_v26, _v25 * _v26 / 20)
end
function _v4.foodNoGain(_v27, _v28)
local _v29, _v2a = _v4.myFood()
if not (_v29 and _v2a and _v2a > 0) or _v29 >= _v2a - _v4.foodGap(_v2a, 1) then
_v27.gainT, _v27.gainFood = nil, nil
return false
end
if not _v27.gainT or (_v27.gainFood and _v29 > _v27.gainFood + 0.001) then _v27.gainT = _v28 end
_v27.gainFood = _v29
return _v28 - _v27.gainT > _v4.NO_GAIN_SECS
end
function _v4.tookDamage(_v2b, _v2c)
if type(_v2c) ~= _pguo("0Dtf4sru") then return false end
local _v2d, _v2e = _v4.hurtHp, _v4.hurtChar
_v4.hurtHp, _v4.hurtChar = _v2c, _v2b
return _v2e == _v2b and _v2d ~= nil and _v2c < _v2d - 0.5
end
function _v4.lfWantRest(_v2f, _v2g, _v2h, _v2i)
if type(_v2h) == _pguo("0Dtf4sru") and type(_v2i) == _pguo("0Dtf4sru") and _v2i > 0 and _v2h <= _v4.foodGap(_v2i, 1) then
return false, true
end
return _v2f < 0.5 or (_v2g and _v2f < 0.99) or false, false
end
_v4.LEGIT_FARM = false
_v4.LF_AVOID = 200
_v4.LF_MAX_DIST = 1000
_v4.LF_SCRAPS = false
_v4.LF_CIRCLE = false
_v4.LF_FLEE = false
_v4.LF_TABOUT = true
_v4.AUTO_GAIT = nil
_v4.LF_UNSTUCK = true
_v4.LF_REST = true
_v4.LF_ADMIN_KICK = true
_v4.LF_FLYAWAY = true
_v4.LF_FLYAWAY_RADIUS = 150
_v4.AUTO_SWITCH = false
_v4.AS_BUSY = false
_v4.AS_SLOTS = {}
_v4.AS_GENDER = _pguo("8y9e5Q==")
function _v4.saveGender(_v2j)
if _v2j == _pguo("8y9e5Q==") or _v2j == _pguo("+Ctf4cP5") then return _v2j end
local _v2k = type(_v2j) == _pguo("zTpA6cH7") and _v2j:sub(1, 1):upper() or nil
if _v2k == "M" then return _pguo("8y9e5Q==") end
if _v2k == "F" then return _pguo("+Ctf4cP5") end
return nil
end
_v4.AS_AUTOBUY = false
_v4.AS_AUTO_ORDER = false
_v4.FARM_TIMER = false
_v4.FT_MINUTES = 120
_v4.REJOIN = false
_v4.REJOIN_MAP = _pguo("8i9B9I/MbBnHK1Y=")
_v4.REJOIN_OK = false
_v4.LOW_POP_LEAVE = false
_v4.LOW_POP_MIN = 80
_v4.FARM_DINO = nil
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
_v4.PUMPKIN_FARM = false
function _v4.ffOn() return _v4.FOSSIL_FARM or _v4.PUMPKIN_FARM end
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
local _v2l = {}
_v4.OWN_GUIS = {
EazyCheats = true, EazyCheatsIndicator = true, EazyCheatsModAlert = true, EazyCheatsVegESP = true,
PD_StatsCard = true, EZGuiV1 = true, EazyCheatsTouch = true, EazyCheatsKey = true,
}
function _v4.sweepOwnGuis(_v2m)
local _v2n, _v2o = {}, {}
local function _v2p(_v2q) if _v2q and not _v2o[_v2q] then _v2o[_v2q] = true; _v2n[#_v2n + 1] = _v2q end end
pcall(function() if gethui then _v2p(gethui()) end end)
pcall(function() _v2p(game:GetService(_pguo("/SFA5ejpaQ=="))) end)
pcall(function() _v2p(_v2:FindFirstChild(_pguo("7iJT+cruRw3X"))) end)
for _v2r, _v2s in ipairs(_v2n) do
for _v2r, _v2u in ipairs(_v2s:GetChildren()) do
local _v2v = _v2u.Name
if _v4.OWN_GUIS[_v2v] and not (_v2m and (_v2v == _pguo("+y9I+ez0ZRnKPQ==") or _v2v == _pguo("+y9I+ez0ZRnKPXnl1g=="))) then
pcall(function() _v2u:Destroy() end)
end
end
end
end
pcall(_v4.sweepOwnGuis, true)
pcall(function()
local _v2w = getgenv and getgenv()
if _v2w and type(_v2w.EazyCheats_Unload) == _pguo("2Dtc49v1bxY=") then
local _v2x = _v2w.EazyCheats_Unload
_v4.rjReloaded = _v2w.EazyCheats_Unload_Job == game.JobId
_v2w.EazyCheats_Unload = nil
_v2w.EazyCheats_Handoff = true
local _v2y = false
task.spawn(function() pcall(_v2x) _v2y = true end)
local _v2z = os.clock()
while not _v2y and os.clock() - _v2z < 10 do task.wait() end
_v2w.EazyCheats_Handoff = nil
end
end)
pcall(function()
for _v30, _v31 in ipairs(workspace:GetChildren()) do
if _v31.Name == _pguo("+y9I+ez0ZRnKPXHp3f9sHQ==") or _v31.Name == _pguo("+y9I+ez0ZRnKPWLh2/Q=") then _v31:Destroy() end
end
end)
function _v4.rejoinRead()
local _v32, _v33 = pcall(function()
return game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONDecode(readfile(_v4.REJOIN_FILE))
end)
return (_v32 and type(_v33) == _pguo("yi9Q7Mo=")) and _v33 or {}
end
function _v4.rejoinWrite(_v34)
pcall(function()
if not isfolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) then makefolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) end
writefile(_v4.REJOIN_FILE, game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONEncode(_v34))
end)
end
function _v4.atDeployMenu()
local _v35 = false
pcall(function()
if _v2:GetAttribute(_pguo("8SB/5cHp")) == true then _v35 = true return end
local _v36 = _v2.PlayerGui
if _v36:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k=")) or _v36:FindFirstChild(_pguo("8y9b7uL5bg35O1s=")) then _v35 = true end
end)
return _v35
end
function _v4.leaveNote(_v37, _v38)
if not _v4.REJOIN_OK then return end
pcall(function()
if not isfolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) then makefolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) end
writefile(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HezK+nRV") .. _v2.Name .. _pguo("kCRB78E="), game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONEncode({
reason = _v37, finished = _v38 and true or false, t = os.time() }))
end)
if _v38 then
_v4.rjFinished = true
pcall(function()
local _v39 = _v4.rejoinRead()
_v39.farms, _v39.pending = {}, nil
_v4.rejoinWrite(_v39)
end)
end
end
pcall(function()
local _v3a = _v4.rejoinRead()
_v4.REJOIN = _v4.REJOIN_OK and _v3a.on == true
if type(_v3a.map) == _pguo("zTpA6cH7") then _v4.REJOIN_MAP = _v3a.map end
if type(_v3a.lowPopLeave) == _pguo("3CFd7Mr9bg==") then _v4.LOW_POP_LEAVE = _v3a.lowPopLeave end
if tonumber(_v3a.lowPopMin) then _v4.LOW_POP_MIN = tonumber(_v3a.lowPopMin) end
if type(_v3a.farmDino) == _pguo("zTpA6cH7") then _v4.FARM_DINO = _v3a.farmDino end
end)
_v4.MAP_ORDER = { _pguo("9DtA4dzvaRs="), _pguo("/TxX9M7/ZRfLPRLV3/BhFto="), _pguo("/TxX9M7/ZRfLPRLMwOtsGdAq"), _pguo("/TxX9M7/ZRfLPRLB3f9oEc4rXuHI8w==") }
function _v4.pickRejoinMap(_v3b, _v3c)
local _v3d = type(_v3b.doneMaps) == _pguo("yi9Q7Mo=") and _v3b.doneMaps or {}
local function _v3e(_v3f) return _v3f ~= nil and _v3c[_v3f] and not _v3d[_v3f] end
local _v3g = _v3b.nextMap
if not _v3e(_v3g) then _v3g = _v3b.map end
if not _v3e(_v3g) then _v3g = _v3b.lastMap end
if not _v3e(_v3g) then
_v3g = nil
for _v3h, _v3i in ipairs(_v4.MAP_ORDER) do if _v3e(_v3i) then _v3g = _v3i break end end
if not _v3g then for _v3j in pairs(_v3c) do if _v3e(_v3j) then _v3g = _v3j break end end end
end
if not _v3c[_v3g] then _v3g = _v3b.map end
if not _v3c[_v3g] then _v3g = _v3b.lastMap end
if not _v3c[_v3g] then _v3g = _v3c.Jurassic and _pguo("9DtA4dzvaRs=") or next(_v3c) end
return _v3g
end
function _v4.lobbyJoin(_v3k)
local _v3l = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local function _v3m(_v3n, _v3o, _v3p, _v3q)
pcall(function()
local _v3r = { Title = _pguo("+y9I+ez0ZRnKPRLSyvZvEdA="), Text = _v3n, Duration = _v3o or 6 }
if _v3p then _v3r.Button1, _v3r.Callback = _v3p, _v3q end
game:GetService(_pguo("7TpT8tv5cj/LJw==")):SetCore(_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="), _v3r)
end)
end
local function _v3s(_v3t)
pcall(function() getgenv().EazyCheats_Unload_State = _v3t end)
end
local _v3u = _v4.req(_v3l:WaitForChild(_pguo("7i9R6877ZQs=")):WaitForChild(_pguo("9SBb9A==")))
pcall(function() _v3u.OnStart():await() end)
local _v3v = _v3u.GetService(_pguo("7StA9sruTRnQL1XlwvluDO0rQPbG/2U="))
local _v3w = _pguo("7CtR78v5")
pcall(function() _v3w = _v3u.GetController(_pguo("8iFQ4tbfbxbKPF3sw/ly")).ChosenVersion or _v3w end)
local _v3x = {}
pcall(function()
for _v3y, _v3z in pairs(_v4.req(_v3l.Shared.LobbyData).Gamemodes[_v3w].Survival.Ecosystems) do
if not _v3z.Maintenance then _v3x[_v3y] = true end
end
end)
local _v40 = _v4.pickRejoinMap(_v3k, _v3x)
if not _v40 then _v3s(_pguo("2S9E5Y/pcA==")) _v3m(_pguo("3SFH7Mu8bhfKbkDlzvggDNYrEu3O7CAU1z1GoIK8cBHdJRLhj+9lCsgrQKDW83UKzSte5g=="), 10) return end
local _v41 = false
local _v42 = Instance.new(_pguo("/Cdc5M7+bB34O1zj2/VvFg=="))
_v42.OnInvoke = function() _v41 = true end
_v3m(_pguo("1CFb7sbyZ1jtO0D2xuphFJ5jEg==") .. _v40 .. _pguo("nidcoJfv"), 8, _pguo("/S9c48rw"), _v42)
for _v43 = 1, 80 do
if _v41 or _v4.UNLOADED then
if _v41 then _v3s(_pguo("3S9c48rwbB3a")) end
_v3m(_pguo("3S9c48rwbB3abh+g3/VjE54vEvPK7nYdzG5L79rucx3SKA=="), 6)
return
end
task.wait(0.1)
end
local _v44 = {}
for _v45 = 1, 8 do
if _v41 or _v4.UNLOADED then return end
local _v46
pcall(function() _v46 = _v3v:GetAllServersForGamemode(_pguo("7TtA9sbqYRQ="), _v40) end)
local _v47 = {}
for _v48, _v49 in pairs(type(_v46) == _pguo("yi9Q7Mo=") and _v46 or {}) do
local _v4a = 0
for _v45 in pairs(type(_v49.Players) == _pguo("yi9Q7Mo=") and _v49.Players or {}) do _v4a = _v4a + 1 end
local _v4c = tonumber(_v49.MaxPlayerCount) or 150
if _v4a > 0 and _v4a <= _v4c - 2 and not _v44[_v48] and _v48 ~= _v3k.lastJob then
_v47[#_v47 + 1] = { id = _v48, n = _v4a, cap = _v4c }
end
end
table.sort(_v47, function(_v4d, _v4e) return _v4d.n > _v4e.n end)
local _v4f = _v47[math.random(1, math.max(1, math.min(3, #_v47)))]
_v3k.pending = os.time()
_v4.rejoinWrite(_v3k)
local _v4g, _v4h
if _v4f then
_v44[_v4f.id] = true
_v3m(_pguo("1CFb7sbyZ1jfbg==") .. _v40 .. _pguo("nj1X8tn5cliW") .. _v4f.n .. "/" .. _v4f.cap .. _pguo("nj5e4db5cguX"), 6)
_v4g, _v4h = pcall(function() return _v3v:RequestJoinServer(_v3w, _pguo("7TtA9sbqYRQ="), _v40, _v4f.id) end)
else
_v3m(_pguo("0CES79/5blg=") .. _v40 .. _pguo("nj1X8tn5cljSJ0H0yvggVZ4kXenB9W4fni8S8s7yZBfTbl3uyg=="), 6)
_v4g, _v4h = pcall(function() return _v3v:RequestJoinRandomServer(_v3w, _pguo("7TtA9sbqYRQ="), _v40) end)
end
if not _v4g then
_v3m(_pguo("1CFb7o/6YRHSK1a6jw==") .. tostring(_v4h), 6)
elseif type(_v4h) == _pguo("yi9Q7Mo=") and _v4h.Success == false then
_v3m(_pguo("zStA9sruIAvfJ1agwfM6WA==") .. tostring(_v4h.Message), 6)
else
local _v4i = os.clock()
while os.clock() - _v4i < 45 do
if _v41 or _v4.UNLOADED then return end
task.wait(0.5)
end
end
task.wait(3)
end
if not _v4.UNLOADED then _v3s(_pguo("2S9E5Y/pcA==")) end
_v3m(_pguo("3SFH7Mu8bhfKblXl27xpFsohEuGP72UKyCtAoIK8dArHblPnzvVuWNg8Xe2P6Ggdnj1G4d3oIAvdPFflwQ=="), 10)
end
if _v4.REJOIN and (function()
local _v4j, _v4k = pcall(function() return game.PlaceId end)
return _v4j and _v4k == _v4.LOBBY_PLACE
end)() then
pcall(function()
local _v4l = getgenv and getgenv()
if _v4l then
if type(_v4l.EazyCheats_Unload) == _pguo("2Dtc49v1bxY=") then
_v4l.EazyCheats_Handoff = true
pcall(_v4l.EazyCheats_Unload)
_v4l.EazyCheats_Handoff = nil
end
_v4l.EazyCheats_Unload = function() _v4.UNLOADED = true end
_v4l.EazyCheats_Unload_Job = game.JobId
_v4l.EazyCheats_Unload_State = _pguo("1CFb7sbyZw==")
end
end)
task.spawn(function()
local _v4m, _v4n = pcall(_v4.lobbyJoin, _v4.rejoinRead())
if not _v4m then warn(_pguo("5QtT+tbfaB3fOkHdj85lEtEnXLqP") .. tostring(_v4n)) end
end)
return
end
_v4.steps = {}
function _v4.addStep(_v4o, _v4p)
_v4.steps[#_v4.steps + 1] = { interval = _v4o or 1, fn = _v4p }
end
_v4.frameN = 0
table.insert(_v2l, _v1.Heartbeat:Connect(function(_v4q)
if _v4.UNLOADED then return end
local _v4r = _v4.frameN + 1
if _v4r >= 2147483000 then _v4r = 0 end
_v4.frameN = _v4r
local _v4s = _v4.steps
for _v4t = 1, #_v4s do
local _v4u = _v4s[_v4t]
if _v4u.interval == 1 or _v4r % _v4u.interval == 0 then
pcall(_v4u.fn, _v4q)
end
end
end))
_v4.connSweepT = os.clock()
_v4.addStep(300, function()
if os.clock() - _v4.connSweepT < 60 then return end
_v4.connSweepT = os.clock()
local _v4v = {}
for _v4w, _v4x in ipairs(_v2l) do
local _v4y = true
pcall(function() _v4y = _v4x.Connected ~= false end)
if _v4y then _v4v[#_v4v + 1] = _v4x end
end
if #_v4v < #_v2l then
table.clear(_v2l)
for _v4z, _v50 in ipairs(_v4v) do _v2l[_v4z] = _v50 end
end
end)
task.spawn(_v4.reportPresence)
_v4.rootCacheVisual = setmetatable({}, { __mode = "k" })
_v4.rootCachePhysics = setmetatable({}, { __mode = "k" })
function _v4.resolveRoot(_v51, _v52)
if not _v51 then return nil end
local _v53 = _v51:FindFirstChild(_pguo("/CFW+Q=="))
local _v54 = _v51:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA=="))
local _v55, _v56
if _v52 then _v55, _v56 = _v54, _v53 else _v55, _v56 = _v53, _v54 end
if _v55 and _v55:IsA(_pguo("/C9B5f/9cgw=")) then return _v55 end
if _v56 and _v56:IsA(_pguo("/C9B5f/9cgw=")) then return _v56 end
local _v57 = _v51.PrimaryPart
if _v57 and _v57:IsA(_pguo("/C9B5f/9cgw=")) then return _v57 end
local _v58 = _v51:FindFirstChild(_pguo("9idG4sDk"))
if _v58 then
local _v59 = _v58:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA=="))
if _v59 and _v59:IsA(_pguo("/C9B5f/9cgw=")) then return _v59 end
end
for _v5a, _v5b in _v51:GetChildren() do
if _v5b:IsA(_pguo("/C9B5f/9cgw=")) and _v5b.Name ~= _pguo("8yFH9MfMYQrK") and _v5b.Name ~= _pguo("9idGwsDk") and _v5b.Name ~= _pguo("/S9f5d39UBnMOg==") then
return _v5b
end
end
local _v5c = _v51:FindFirstChild(_pguo("9idGwsDk"))
if _v5c and _v5c:IsA(_pguo("/C9B5f/9cgw=")) then return _v5c end
for _v5d, _v5e in _v51:GetDescendants() do
if _v5e:IsA(_pguo("/C9B5f/9cgw=")) and _v5e.Name ~= _pguo("8yFH9MfMYQrK") and _v5e.Name ~= _pguo("/S9f5d39UBnMOg==") then
return _v5e
end
end
return nil
end
function _v4.getRootOf(_v5f, _v5g)
if not _v5f then return nil end
local _v5h = _v5g and _v4.rootCachePhysics or _v4.rootCacheVisual
local _v5i = _v5h[_v5f]
if _v5i and _v5i.Parent then return _v5i end
local _v5j = _v4.resolveRoot(_v5f, _v5g)
_v5h[_v5f] = _v5j
return _v5j
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
local _v5k = {}
local _v5l = {}
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
local _v5m = {}
_v4.hbGoneMark = setmetatable({}, { __mode = "k" })
_v4.hbSweepT = os.clock()
_v4.addStep(300, function()
if os.clock() - _v4.hbSweepT < 30 then return end
_v4.hbSweepT = os.clock()
local _v5n = { _v5k, _v5l, _v5m }
local _v5o = {}
for _v5p, _v5q in ipairs(_v5n) do
for _v5r in pairs(_v5q) do
if _v5o[_v5r] == nil then
local _v5s = false
pcall(function() _v5s = _v5r:IsDescendantOf(game) end)
_v5o[_v5r] = _v5s
end
end
end
for _v5t, _v5u in pairs(_v5o) do
if _v5u then
_v4.hbGoneMark[_v5t] = nil
elseif _v4.hbGoneMark[_v5t] then
_v4.hbGoneMark[_v5t] = nil
for _v5v, _v5w in ipairs(_v5n) do _v5w[_v5t] = nil end
else
_v4.hbGoneMark[_v5t] = true
end
end
end)
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
function _v4.groupDropdown(_v5x, _v5y, _v5z, _v60, _v61)
local _v62, _v63, _v64 = {}, {}, {}
for _v65, _v66 in ipairs(_v60) do
local _v67 = _v4.GROUP_LABELS[_v66] or _v66
_v62[_v67] = _v66
_v63[#_v63 + 1] = _v67
if _v5z[_v66] then _v64[#_v64 + 1] = _v67 end
end
local dd = _v5x:AddDropdown({
Name = _v5y,
Items = _v63,
Multi = true,
Default = _v64,
Callback = function(_v68)
for _v69, _v6a in ipairs(_v60) do _v5z[_v6a] = false end
if type(_v68) == _pguo("yi9Q7Mo=") then
for _v6b, _v6c in pairs(_v68) do
local _v6d = _v62[_v6b]
if _v6c and _v6d then _v5z[_v6d] = true end
end
end
if _v61 then _v61() end
end,
})
dd.Refill = function()
local _v6e = {}
for _v6f, _v6g in ipairs(_v60) do
if _v5z[_v6g] then _v6e[_v4.GROUP_LABELS[_v6g] or _v6g] = true end
end
dd:Set(_v6e, true)
end
return dd
end
function _v4.getTailSubGroup(_v6h)
local _v6i = _v6h:lower()
if _v6i:find(_pguo("yiZT58DxaQLbPA==")) then return _pguo("6iZT58DxaQLbPA==") end
local _v6j = tonumber(_v6h:match(_pguo("6i9b7IqyKF3aZRs=")))
if not _v6j then return _pguo("6i9b7O39cx0=") end
if _v6j <= 4 then return _pguo("6i9b7O39cx0=")
elseif _v6j <= 9 then return _pguo("6i9b7OL1ZA==")
else return _pguo("6i9b7Pv1cA==")
end
end
local _v6k = {}
_v4.espCache = {}
function _v4.getHealthColor(_v6l)
if _v6l > 0.5 then return _v4.HEALTH_COLOR_FULL
elseif _v6l > 0.25 then return _v4.HEALTH_COLOR_MID
else return _v4.HEALTH_COLOR_LOW end
end
function _v4.createESP(_v6m)
if _v6m == _v2 then return end
if _v4.espCache[_v6m] then return end
local _v6n = {
billboard = nil,
highlight = nil,
connections = {},
tracer = nil,
}
_v4.espCache[_v6m] = _v6n
end
function _v4.destroyESP(_v6o)
local _v6p = _v4.espCache[_v6o]
if not _v6p then return end
if _v6p.billboard then
pcall(function() _v6p.billboard:Destroy() end)
end
if _v6p.highlight then
pcall(function() _v6p.highlight:Destroy() end)
end
if _v6p.tracer then
pcall(function() _v6p.tracer:Remove() end)
end
for _v6q, _v6r in pairs(_v6p.connections) do
pcall(function() _v6r:Disconnect() end)
end
_v4.espCache[_v6o] = nil
end
function _v4.updateESP(_v6s)
local _v6t = _v4.espCache[_v6s]
if not _v6t then return end
local _v6u = _v6s.Character
if not _v6u then
if _v6t.billboard then _v6t.billboard.Enabled = false end
if _v6t.highlight then _v6t.highlight.Enabled = false end
return
end
local _v6v = _v6u:GetAttribute(_pguo("9itT7Nv0")) or 0
if _v6v <= 0 then
if _v6t.billboard then _v6t.billboard.Enabled = false end
if _v6t.highlight then _v6t.highlight.Enabled = false end
return
end
local _v6w = _v4.getRootOf(_v6u, false)
if not _v6w then return end
local _v6x = _v4.getLocalRoot()
local _v6y = _v6x and (_v6x.Position - _v6w.Position).Magnitude or 0
if _v6y > _v4.ESP_DISTANCE then
if _v6t.billboard then _v6t.billboard.Enabled = false end
if _v6t.highlight then _v6t.highlight.Enabled = false end
return
end
if _v4.ESP_ENABLED then
if _v6t.billboard and _v6t.billboard.Parent ~= _v6w then
pcall(function()
_v6t.billboard.Adornee = _v6w
_v6t.billboard.Parent = _v6w
end)
end
if not _v6t.billboard or not _v6t.billboard.Parent then
local _v6z = Instance.new(_pguo("/Cde7M3zYQraCUfp"))
_v6z.Name = _pguo("+idc7+rPUA==")
_v6z.Size = UDim2.new(0, 240, 0, 122)
_v6z.StudsOffset = Vector3.new(0, 5, 0)
_v6z.AlwaysOnTop = true
_v6z.LightInfluence = 0
_v6z.MaxDistance = _v4.ESP_DISTANCE
local _v70 = Instance.new(_pguo("+DxT7co="))
_v70.Name = _pguo("/SFc9M71bh3M")
_v70.Size = UDim2.new(1, 0, 1, 0)
_v70.BackgroundTransparency = 1
_v70.Parent = _v6z
local _v71 = Instance.new(_pguo("6wd+6dzoTBnHIUf0"))
_v71.FillDirection = Enum.FillDirection.Vertical
_v71.HorizontalAlignment = Enum.HorizontalAlignment.Center
_v71.VerticalAlignment = Enum.VerticalAlignment.Bottom
_v71.SortOrder = Enum.SortOrder.LayoutOrder
_v71.Padding = UDim.new(0, 2)
_v71.Parent = _v70
local function _v72(_v73, _v74, _v75, _v76, _v77)
local _v78 = Instance.new(_pguo("6itK9OP9Yh3S"))
_v78.Name = _v73; _v78.LayoutOrder = _v74
_v78.Size = UDim2.new(1, 0, 0, _v75 + 3)
_v78.BackgroundTransparency = 1
_v78.TextColor3 = _v77
_v78.TextStrokeTransparency = 0; _v78.TextStrokeColor3 = Color3.new(0, 0, 0)
_v78.Font = _v76; _v78.TextSize = _v75; _v78.TextScaled = false
_v78.Parent = _v70
return _v78
end
local function _v79(_v7a, _v7b, _v7c)
local _v7d = Instance.new(_pguo("+DxT7co="))
_v7d.Name = _v7a; _v7d.LayoutOrder = _v7b
_v7d.Size = UDim2.new(0.92, 0, 0, 15)
_v7d.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
_v7d.BorderSizePixel = 0; _v7d.Parent = _v70
Instance.new(_pguo("6wdx793yZQo="), _v7d).CornerRadius = UDim.new(1, 0)
local _v7e = Instance.new(_pguo("+DxT7co="))
_v7e.Name = _pguo("+Cde7A=="); _v7e.Size = UDim2.new(1, 0, 1, 0)
_v7e.BackgroundColor3 = _v7c; _v7e.BorderSizePixel = 0; _v7e.Parent = _v7d
Instance.new(_pguo("6wdx793yZQo="), _v7e).CornerRadius = UDim.new(1, 0)
local _v7f = Instance.new(_pguo("6itK9OP9Yh3S"))
_v7f.Name = _pguo("6itK9A=="); _v7f.Size = UDim2.new(1, 0, 1, 0)
_v7f.BackgroundTransparency = 1; _v7f.TextColor3 = Color3.new(1, 1, 1)
_v7f.TextStrokeTransparency = 0.3; _v7f.TextStrokeColor3 = Color3.new(0, 0, 0)
_v7f.Font = Enum.Font.GothamBold; _v7f.TextSize = _v4.TEXT_SIZE - 4
_v7f.ZIndex = 3; _v7f.Parent = _v7d
return _v7d
end
_v72(_pguo("8C9f5eP9Yh3S"), 1, _v4.TEXT_SIZE, Enum.Font.GothamBold, Color3.new(1, 1, 1))
_v72(_pguo("9yBU7+P9Yh3S"), 2, _v4.TEXT_SIZE - 2, Enum.Font.GothamSemibold, Color3.fromRGB(235, 235, 235))
local _v7g = _v79(_pguo("9itT7Nv0Qj8="), 3, _v4.HEALTH_COLOR_FULL)
local _v7h = Instance.new(_pguo("+DxT7co="))
_v7h.Name = _pguo("/CJX5cvaaRTS"); _v7h.Size = UDim2.new(0, 0, 1, 0)
_v7h.Position = UDim2.new(1, 0, 0, 0); _v7h.BackgroundColor3 = _v4.BLEED_COLOR
_v7h.BorderSizePixel = 0; _v7h.ZIndex = 2; _v7h.Visible = false
_v7h.Parent = _v7g
_v79(_pguo("7TpT7e3b"), 4, _v4.STAMINA_COLOR)
_v79(_pguo("+CFd5O3b"), 5, _v4.FOOD_COLOR)
_v79(_pguo("6S9G5d3eRw=="), 6, _v4.WATER_COLOR)
_v79(_pguo("9yBU5czoQj8="), 7, _v4.INFECT_COLOR)
_v72(_pguo("6CdG4cPvTBncK14="), 8, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, Color3.new(1, 1, 1)).RichText = true
_v72(_pguo("6Stb58foTBncK14="), 9, _v4.TEXT_SIZE - 3, Enum.Font.GothamSemibold, _v4.WEIGHT_COLOR)
_v72(_pguo("/CJX5cvQYRrbIg=="), 10, _v4.TEXT_SIZE - 3, Enum.Font.GothamBold, _v4.BLEED_COLOR)
_v6z.Adornee = _v6w
_v6z.Parent = _v6w
_v6t.billboard = _v6z
end
local _v7i = _v6t.billboard
_v7i.Enabled = true
local _v7j = _v7i:FindFirstChild(_pguo("/SFc9M71bh3M"))
if _v7j then
local _v7k = _v6t.refs
if not _v7k or _v7k._c ~= _v7j then
_v7k = { _c = _v7j }
_v7k.nameLabel = _v7j:FindFirstChild(_pguo("8C9f5eP9Yh3S"))
_v7k.infoLabel = _v7j:FindFirstChild(_pguo("9yBU7+P9Yh3S"))
_v7k.healthBG = _v7j:FindFirstChild(_pguo("9itT7Nv0Qj8="))
_v7k.stamBG = _v7j:FindFirstChild(_pguo("7TpT7e3b"))
_v7k.weightLabel = _v7j:FindFirstChild(_pguo("6Stb58foTBncK14="))
_v7k.bleedLabel = _v7j:FindFirstChild(_pguo("/CJX5cvQYRrbIg=="))
_v7k.vitalsLabel = _v7j:FindFirstChild(_pguo("6CdG4cPvTBncK14="))
_v7k.foodBG = _v7j:FindFirstChild(_pguo("+CFd5O3b"))
_v7k.waterBG = _v7j:FindFirstChild(_pguo("6S9G5d3eRw=="))
_v7k.infectBG = _v7j:FindFirstChild(_pguo("9yBU5czoQj8="))
_v7k.listLayout = _v7j:FindFirstChildOfClass(_pguo("6wd+6dzoTBnHIUf0"))
if _v7k.healthBG then
_v7k.hpFill = _v7k.healthBG:FindFirstChild(_pguo("+Cde7A=="))
_v7k.hpBleed = _v7k.healthBG:FindFirstChild(_pguo("/CJX5cvaaRTS"))
_v7k.hpText = _v7k.healthBG:FindFirstChild(_pguo("6itK9A=="))
end
if _v7k.stamBG then
_v7k.stFill = _v7k.stamBG:FindFirstChild(_pguo("+Cde7A=="))
_v7k.stText = _v7k.stamBG:FindFirstChild(_pguo("6itK9A=="))
end
if _v7k.foodBG then _v7k.foodText = _v7k.foodBG:FindFirstChild(_pguo("6itK9A==")); _v7k.foodFill = _v7k.foodBG:FindFirstChild(_pguo("+Cde7A==")) end
if _v7k.waterBG then _v7k.waterText = _v7k.waterBG:FindFirstChild(_pguo("6itK9A==")); _v7k.waterFill = _v7k.waterBG:FindFirstChild(_pguo("+Cde7A==")) end
if _v7k.infectBG then _v7k.infectText = _v7k.infectBG:FindFirstChild(_pguo("6itK9A==")); _v7k.infectFill = _v7k.infectBG:FindFirstChild(_pguo("+Cde7A==")) end
_v6t.refs = _v7k
end
local _v7l = _v7k.nameLabel
local _v7m = _v7k.infoLabel
local _v7n = _v7k.healthBG
local _v7o = _v7k.stamBG
local _v7p = _v7k.weightLabel
local _v7q = _v7k.bleedLabel
if _v7l then _v7l.TextSize = _v4.TEXT_SIZE; _v7l.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE + 3) end
if _v7m then _v7m.TextSize = math.max(6, _v4.TEXT_SIZE - 2); _v7m.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE + 1) end
if _v7p then _v7p.TextSize = math.max(6, _v4.TEXT_SIZE - 3); _v7p.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE) end
if _v7q then _v7q.TextSize = math.max(6, _v4.TEXT_SIZE - 3); _v7q.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE) end
if _v7n then
_v7n.Size = UDim2.new(_v4.HEALTH_BAR_WIDTH, 0, 0, _v4.HEALTH_BAR_HEIGHT)
local _v7r = _v7k.hpText; if _v7r then _v7r.TextSize = math.clamp(_v4.HEALTH_BAR_HEIGHT + 2, 7, 18) end
end
if _v7o then
_v7o.Size = UDim2.new(_v4.STAM_BAR_WIDTH, 0, 0, _v4.STAM_BAR_HEIGHT)
local _v7s = _v7k.stText; if _v7s then _v7s.TextSize = math.clamp(_v4.STAM_BAR_HEIGHT + 2, 7, 18) end
end
local _v7t
do local _v7u = _v6u:FindFirstChild(_pguo("7CtC7Mb/YTrXIFY=")); _v7t = _v7u and _v7u.Value end
local _v7v = _v4.MOD_CHECK and _v4.modAdmins[_v6s]
if _v7l then
local _v7w = ""
if _v4.SHOW_NAME then
local _v7x = (_v6s.MembershipType == Enum.MembershipType.Premium) and _pguo("8ytf4sru") or _pguo("+TtX89s=")
_v7w = _v6s.DisplayName .. "  " .. _v7x
end
if _v4.SHOW_DISTANCE then
_v7w = (_v7w ~= "" and (_v7w .. "  ") or "") .. "[" .. math.floor(_v6y) .. "m]"
end
_v7l.Visible = _v7w ~= ""
_v7l.Text = _v7w
_v7l.TextColor3 = _v7v and Color3.fromRGB(255, 50, 50) or Color3.new(1, 1, 1)
end
local _v7y = _v7j:FindFirstChild(_pguo("/ypf6cHQYRrbIg=="))
if _v7v then
if not _v7y then
_v7y = Instance.new(_pguo("6itK9OP9Yh3S"))
_v7y.Name = _pguo("/ypf6cHQYRrbIg=="); _v7y.LayoutOrder = 0
_v7y.Size = UDim2.new(1, 0, 0, 26)
_v7y.BackgroundTransparency = 1
_v7y.TextColor3 = Color3.fromRGB(255, 0, 0)
_v7y.TextStrokeTransparency = 0
_v7y.TextStrokeColor3 = Color3.new(0, 0, 0)
_v7y.Font = Enum.Font.GothamBold
_v7y.TextSize = 22; _v7y.TextScaled = false
_v7y.Parent = _v7j
end
local _v7z = _v4.modAdmins[_v6s]
_v7y.Text = (type(_v7z) == _pguo("zTpA6cH7")) and string.upper(_v7z) or _pguo("/wp/yeE=")
_v7y.Visible = true
elseif _v7y then
_v7y.Visible = false
end
local _v80 = _v7j:FindFirstChild(_pguo("7i9R6+P5YRzbPH7hzfls"))
local _v81 = _v4.PACK_LEADER_ESP and _v4.packLeaders[_v6s]
if _v81 then
if not _v80 then
_v80 = Instance.new(_pguo("6itK9OP9Yh3S"))
_v80.Name = _pguo("7i9R6+P5YRzbPH7hzfls"); _v80.LayoutOrder = 0
_v80.Size = UDim2.new(1, 0, 0, 20)
_v80.BackgroundTransparency = 1
_v80.TextColor3 = _v4.PACK_LEADER_COLOR
_v80.TextStrokeTransparency = 0
_v80.TextStrokeColor3 = Color3.new(0, 0, 0)
_v80.Font = Enum.Font.GothamBold
_v80.TextSize = _v4.TEXT_SIZE; _v80.TextScaled = false
_v80.Parent = _v7j
end
_v80.Text = _v81 ~= "" and (_pguo("8gtzxOrOICM=") .. _v81 .. "]") or _pguo("7g9xy4/QRTn6C2A=")
_v80.Visible = true
elseif _v80 then
_v80.Visible = false
end
local _v82 = _v7j:FindFirstChild(_pguo("7i9R6+P9Yh3S"))
local _v83 = _v4.PACK_ESP and _v4.packMembers[_v6s]
if _v83 then
if not _v82 then
_v82 = Instance.new(_pguo("6itK9OP9Yh3S"))
_v82.Name = _pguo("7i9R6+P9Yh3S"); _v82.LayoutOrder = 1
_v82.Size = UDim2.new(1, 0, 0, 18)
_v82.BackgroundTransparency = 1
_v82.TextColor3 = _v4.PACK_ESP_COLOR
_v82.TextStrokeTransparency = 0
_v82.TextStrokeColor3 = Color3.new(0, 0, 0)
_v82.Font = Enum.Font.GothamMedium
_v82.TextSize = _v4.TEXT_SIZE; _v82.TextScaled = false
_v82.Parent = _v7j
end
local _v84 = _v83.name ~= "" and _v83.name or _pguo("9yAS0M7/aw==")
if _v83.count > 0 then _v84 = _v84 .. " [" .. _v83.count .. "]" end
_v82.Text = _v84
_v82.Visible = true
elseif _v82 then
_v82.Visible = false
end
if _v7m then
local _v85 = {}
if _v4.SHOW_DINO then table.insert(_v85, _v6u:GetAttribute(_pguo("6jdC5Q==")) or _pguo("6yBZ7sDrbg==")) end
if _v4.SHOW_STAGE then
local _v86 = _v6u:GetAttribute(_pguo("7TpT58o=")) or ""
if _v86 ~= "" then
local _v87 = _v6u:GetAttribute(_pguo("+Txd99v0")) or _v6u:GetAttribute(_pguo("+Txd99v0UB3MLVfu2w=="))
or _v6u:GetAttribute(_pguo("+Txd99v0UArRKUDl3O8="))
if type(_v87) == _pguo("0Dtf4sru") then
_v86 = _v86 .. " (" .. math.floor((_v87 <= 1 and _v87 * 100 or _v87) + 0.5) .. "%)"
end
table.insert(_v85, _v86)
end
end
if _v4.SHOW_GENDER then
local _v88 = _v6u:GetAttribute(_pguo("+Stc5Mru")) or ""
if _v88 ~= "" then table.insert(_v85, _v88) end
end
_v7m.Visible = #_v85 > 0
if #_v85 > 0 then _v7m.Text = table.concat(_v85, _pguo("njIS")) end
end
local _v89 = _v6u:GetAttribute(_pguo("9itT7Nv0")) or 0
local _v8a = _v6u:GetAttribute(_pguo("8y9KyMr9bAzW")) or 1
if _v8a <= 0 then _v8a = 1 end
local _v8b = math.clamp(_v89 / _v8a, 0, 1)
local _v8c = _v4.getHealthColor(_v8b)
local _v8d, _v8e = false, 0
if _v7t then
local _v8f = _v4.bleedForecast[_v7t]
if _v8f and _v8f > 0 then _v8d = true; _v8e = math.min(_v8f, _v89) end
end
local _v8g = _v8d and math.clamp(_v8e / _v8a, 0, _v8b) or 0
if _v7n then
_v7n.Visible = _v4.SHOW_HEALTH
local _v8h = _v7k.hpFill
if _v8h then _v8h.Size = UDim2.new(_v8b, 0, 1, 0); _v8h.BackgroundColor3 = _v8c end
local _v8i = _v7k.hpBleed
if _v8i then
if _v4.BLEED_ESP and _v8d and _v4.SHOW_HEALTH and _v8g > 0 then
_v8i.Position = UDim2.new(math.max(0, _v8b - _v8g), 0, 0, 0)
_v8i.Size = UDim2.new(_v8g, 0, 1, 0); _v8i.Visible = true
else _v8i.Visible = false end
end
local _v8j = _v7k.hpText
if _v8j then _v8j.Text = _pguo("9h4S") .. math.floor(_v89) .. "/" .. math.floor(_v8a) end
end
if _v7o then
local _v8k = _v7t and _v4.staminaCur[_v7t]
local _v8l = _v4.SHOW_STAMINA and type(_v8k) == _pguo("0Dtf4sru")
_v7o.Visible = _v8l
if _v8l then
local _v8m = _v7t and _v4.staminaMax[_v7t]
local _v8n = (type(_v8m) == _pguo("0Dtf4sru") and _v8m > 0) and _v8m or math.max(_v8k, 1)
local _v8o = _v7k.stFill
if _v8o then _v8o.Size = UDim2.new(math.clamp(_v8k / _v8n, 0, 1), 0, 1, 0) end
local _v8p = _v7k.stText
if _v8p then _v8p.Text = _pguo("7TpT7cbyYVg=") .. math.floor(_v8k) ..
((type(_v8m) == _pguo("0Dtf4sru")) and ("/" .. math.floor(_v8n)) or "") end
end
end
do
local _v8q, _v8r, _v8s = _v7k.foodBG, _v7k.waterBG, _v7k.infectBG
local _v8t = UDim2.new(_v4.STAM_BAR_WIDTH, 0, 0, _v4.STAM_BAR_HEIGHT)
local _v8u = math.clamp(_v4.STAM_BAR_HEIGHT + 2, 7, 18)
if _v8q then _v8q.Size = _v8t; if _v7k.foodText then _v7k.foodText.TextSize = _v8u end end
if _v8r then _v8r.Size = _v8t; if _v7k.waterText then _v7k.waterText.TextSize = _v8u end end
if _v8s then _v8s.Size = _v8t; if _v7k.infectText then _v7k.infectText.TextSize = _v8u end end
local _v8v = {}
local _v8w, _v8x = _v7t and _v4.foodCur[_v7t], _v7t and _v4.foodMax[_v7t]
local _v8y, _v8z = _v7t and _v4.waterCur[_v7t], _v7t and _v4.waterMax[_v7t]
_v8x = type(_v8x) == _pguo("0Dtf4sru") and _v8x or nil
_v8z = type(_v8z) == _pguo("0Dtf4sru") and _v8z or nil
if type(_v8w) == _pguo("0Dtf4sru") then _v4.foodSeenMax[_v7t] = math.max(_v4.foodSeenMax[_v7t] or 0, _v8w) end
if type(_v8y) == _pguo("0Dtf4sru") then _v4.waterSeenMax[_v7t] = math.max(_v4.waterSeenMax[_v7t] or 0, _v8y) end
_v4.espVital(_v8q, _v7k.foodFill, _v7k.foodText, _v8v, _pguo("+CFd5A=="), _v8w, _v8x or (_v7t and _v4.foodSeenMax[_v7t]), _v8x,
_v4.FOOD_COLOR, _v4.SHOW_FOOD_BAR, _v4.SHOW_FOOD_NUM)
_v4.espVital(_v8r, _v7k.waterFill, _v7k.waterText, _v8v, _pguo("6S9G5d0="), _v8y, _v8z or (_v7t and _v4.waterSeenMax[_v7t]), _v8z,
_v4.WATER_COLOR, _v4.SHOW_WATER_BAR, _v4.SHOW_WATER_NUM)
_v4.espVital(_v8s, _v7k.infectFill, _v7k.infectText, _v8v, _pguo("9yBU5czoaRfQ"), _v7t and _v4.infectCur[_v7t], _v4.INFECT_MAX, _v4.INFECT_MAX,
_v4.INFECT_COLOR, _v4.SHOW_INFECT_BAR, _v4.SHOW_INFECT_NUM)
if _v4.SHOW_INFECTED then
local _v90
pcall(function() _v90 = _v6u:GetAttribute(_pguo("9yBU5czoaRfQ")) end)
if _v90 ~= nil and _v90 ~= false and _v90 ~= "" then
_v8v[#_v8v + 1] = string.format(_pguo("gihd7tu8YxfSIUC9jb8lC5xwDuKR1U4++w1mxeu5c0SRLAy8gPpvFspw"), _v4.INFECT_COLOR:ToHex(),
(type(_v90) == _pguo("zTpA6cH7")) and (": " .. _v90) or "")
end
end
local _v91 = _v7k.vitalsLabel
if _v91 then
_v91.Visible = #_v8v > 0
_v91.TextSize = math.max(6, _v4.TEXT_SIZE - 3); _v91.Size = UDim2.new(1, 0, 0, _v4.TEXT_SIZE)
if #_v8v > 0 then _v91.Text = table.concat(_v8v, "  ") end
end
local _v92 = _v7k.listLayout
local _v93 = _v92 and math.max(122, math.ceil(_v92.AbsoluteContentSize.Y) + 4)
if _v93 and _v7i.Size.Y.Offset ~= _v93 then _v7i.Size = UDim2.new(0, 240, 0, _v93) end
end
if _v7p then
local _v94 = _v6u:GetAttribute(_pguo("6Stb58fo"))
local _v95 = _v4.SHOW_WEIGHT and type(_v94) == _pguo("0Dtf4sru")
_v7p.Visible = _v95
if _v95 then _v7p.Text = math.floor(_v94) .. _pguo("niVV") end
end
if _v7q then
_v7q.Visible = _v4.BLEED_ESP
if _v4.BLEED_ESP then _v7q.Text = _pguo("/CJX5cu8") .. math.floor(_v8e) end
end
end
local _v96 = _v6u:GetAttribute(_pguo("7S1T7Mo=")) or 1
_v7i.StudsOffset = Vector3.new(0, 3 + (_v96 * 3), 0)
else
if _v6t.billboard then
_v6t.billboard.Enabled = false
end
end
if _v4.CHAMS_ENABLED then
if not _v6t.highlight or not _v6t.highlight.Parent then
local _v97 = Instance.new(_pguo("9idV6MP1ZxDK"))
_v97.Name = _pguo("+idc7+z0YRXN")
_v97.FillColor = _v4.ESP_COLOR
_v97.OutlineColor = Color3.new(1, 1, 1)
_v97.FillTransparency = _v4.CHAMS_FILL_TRANSPARENCY
_v97.OutlineTransparency = _v4.CHAMS_OUTLINE_TRANSPARENCY
_v97.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
_v97.Adornee = _v6u
_v97.Parent = _v6u
_v6t.highlight = _v97
end
_v6t.highlight.Enabled = true
_v6t.highlight.FillColor = _v4.ESP_COLOR
_v6t.highlight.FillTransparency = _v4.CHAMS_FILL_TRANSPARENCY
_v6t.highlight.OutlineTransparency = _v4.CHAMS_OUTLINE_TRANSPARENCY
else
if _v6t.highlight then
_v6t.highlight.Enabled = false
end
end
if _v4.TRACERS_ENABLED and _v6x and _v4.CAP.drawing then
pcall(function()
if not _v6t.tracer then
_v6t.tracer = _v4.safeDraw(_pguo("8idc5Q=="))
_v6t.tracer.Thickness = 1
_v6t.tracer.Transparency = 1
end
local _v98, _v99 = _v3:WorldToViewportPoint(_v6w.Position)
_v6t.tracer.Visible = _v99
_v6t.tracer.Color = _v4.ESP_COLOR
_v6t.tracer.From = Vector2.new(_v3.ViewportSize.X / 2, _v3.ViewportSize.Y)
_v6t.tracer.To = Vector2.new(_v98.X, _v98.Y)
end)
else
if _v6t.tracer then
pcall(function() _v6t.tracer.Visible = false end)
end
end
end
_v4.ESP_SLICE = 32
_v4.espCursor = 0
_v4.addStep(3, function()
if not _v4.ESP_ENABLED and not _v4.CHAMS_ENABLED and not _v4.TRACERS_ENABLED then return end
local _v9a = _v0:GetPlayers()
local _v9b = #_v9a
if _v9b == 0 then return end
if (_v4.TRACERS_ENABLED and _v4.CAP.drawing) or _v9b <= (_v4.ESP_SLICE or 32) then
for _v9c, _v9d in _v9a do
if _v9d == _v2 then continue end
if not _v4.espCache[_v9d] then _v4.createESP(_v9d) end
_v4.updateESP(_v9d)
end
return
end
local _v9e = _v4.espCursor or 0
for _v9f = 1, _v4.ESP_SLICE do
_v9e = _v9e % _v9b + 1
local _v9g = _v9a[_v9e]
if _v9g and _v9g ~= _v2 and _v9g.Parent then
if not _v4.espCache[_v9g] then _v4.createESP(_v9g) end
_v4.updateESP(_v9g)
end
end
_v4.espCursor = _v9e
end)
table.insert(_v2l, _v0.PlayerRemoving:Connect(function(_v9h)
_v4.destroyESP(_v9h)
end))
_v4.getMyRoot = _v4.getLocalRoot
local function _v9i(_v9j, _v9k, _v9l, _v9m)
if _v6k[_v9j] then
pcall(function() _v6k[_v9j]:Destroy() end)
end
local _v9n = nil
if _v9j:IsA(_pguo("/C9B5f/9cgw=")) then
_v9n = _v9j
elseif _v9j:IsA(_pguo("8yFW5cM=")) then
_v9n = _v9j:FindFirstChild(_pguo("/CFW+Q=="))
or _v9j.PrimaryPart
or _v9j:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA=="))
if not _v9n then
for _v9o, _v9p in _v9j:GetChildren() do
if _v9p:IsA(_pguo("/C9B5f/9cgw=")) and _v9p.Name ~= _pguo("8yFH9MfMYQrK") and _v9p.Name ~= _pguo("9idGwsDk") and _v9p.Name ~= _pguo("/S9f5d39UBnMOg==") then
_v9n = _v9p
break
end
end
end
if not _v9n then
_v9n = _v9j:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="), true)
end
end
if not _v9n then return end
local _v9q = Instance.new(_pguo("/Cde7M3zYQraCUfp"))
_v9q.Name = _pguo("6SFA7MvZUyg=")
_v9q.Size = UDim2.new(0, 150, 0, 40)
_v9q.StudsOffset = Vector3.new(0, 3, 0)
_v9q.AlwaysOnTop = true
_v9q.LightInfluence = 0
_v9q.MaxDistance = _v9m
local _v9r = Instance.new(_pguo("6itK9OP9Yh3S"))
_v9r.Name = _pguo("8i9Q5cM=")
_v9r.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
_v9r.Position = UDim2.new(0, 0, 0, 0)
_v9r.BackgroundColor3 = Color3.new(0, 0, 0)
_v9r.BackgroundTransparency = 1
_v9r.TextColor3 = _v9l
_v9r.TextStrokeTransparency = 0
_v9r.TextStrokeColor3 = Color3.new(0, 0, 0)
_v9r.Font = Enum.Font.GothamBold
_v9r.TextSize = _v4.WORLD_TEXT_SIZE
_v9r.TextScaled = false
_v9r.Text = _v9k
_v9r.Parent = _v9q
local _v9s = Instance.new(_pguo("6itK9OP9Yh3S"))
_v9s.Name = _pguo("+idB9OP9Yh3S")
_v9s.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_v9s.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
_v9s.BackgroundColor3 = Color3.new(0, 0, 0)
_v9s.BackgroundTransparency = 1
_v9s.TextColor3 = Color3.fromRGB(200, 200, 200)
_v9s.TextStrokeTransparency = 0
_v9s.TextStrokeColor3 = Color3.new(0, 0, 0)
_v9s.Font = Enum.Font.Gotham
_v9s.TextSize = _v4.WORLD_TEXT_SIZE - 2
_v9s.TextScaled = false
_v9s.Text = _pguo("jm5B9Nr4cw==")
_v9s.Parent = _v9q
_v9q.Parent = _v9n
_v6k[_v9j] = _v9q
return _v9q
end
function _v4.destroyWorldESP(_v9t)
local _v9u = _v6k[_v9t]
if _v9u then
pcall(function() _v9u:Destroy() end)
_v6k[_v9t] = nil
end
end
function _v4.clearWorldESPByParent(_v9v)
for _v9w, _v9x in pairs(_v6k) do
if _v9w:IsDescendantOf(_v9v) or _v9w == _v9v then
pcall(function() _v9x:Destroy() end)
_v6k[_v9w] = nil
end
end
end
function _v4.getFossilSize(_v9y)
for _v9z, _va0 in _v9y:GetChildren() do
if _va0:IsA(_pguo("/C9B5f/9cgw=")) then
local _va1 = _va0.Name
if _va1 == _pguo("+CFB88bwUw==") then return "S"
elseif _va1 == _pguo("+CFB88bwTQ==") then return "M"
elseif _va1 == _pguo("+CFB88bwTA==") then return "L"
elseif _va1 == _pguo("7T5a5d35") then return _pguo("7C9A5Q==")
end
end
end
return "?"
end
function _v4.getFossilColor(_va2)
if _va2 == "S" then return _v4.FOSSIL_COLOR_S
elseif _va2 == "M" then return _v4.FOSSIL_COLOR_M
elseif _va2 == "L" then return _v4.FOSSIL_COLOR_L
end
return _v4.FOSSIL_COLOR_M
end
function _v4.isFossilEnabled(_va3)
if _va3 == "S" then return _v4.FOSSIL_SMALL
elseif _va3 == "M" then return _v4.FOSSIL_MEDIUM
elseif _va3 == "L" then return _v4.FOSSIL_LARGE
end
return false
end
function _v4.pumpkinsNow()
local _va4 = os.clock()
if _v4.pumpkinList and _va4 - (_v4.pumpkinAt or 0) < 1 then return _v4.pumpkinList end
_v4.pumpkinAt = _va4
local _va5 = {}
pcall(function()
local _va6 = workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l"))
if not _va6 then return end
for _va7, _va8 in ipairs(_va6:GetChildren()) do
if _va8:GetAttribute(_pguo("9i9e7MDrZR3QHkft3/dpFg==")) then _va5[#_va5 + 1] = _va8 end
end
end)
_v4.pumpkinList = _va5
return _va5
end
function _v4.isGiantPumpkin(_va9)
return _va9:GetAttribute(_pguo("9i9e7MDrZR3QHkft3/dpFg==")) == _pguo("+SdT7tvMdRXOJVvu")
end
function _v4.ffGiantWaiting()
if _v4.ffTarget and _v4.isGiantPumpkin(_v4.ffTarget) then return false end
local _vaa = os.clock()
for _vab, _vac in ipairs(_v4.pumpkinsNow()) do
local _vad = _vac.Parent and _vac:FindFirstChild(_pguo("7jtf8MT1bijMIV/w2w=="))
local _vae = _v4.ffSkip and _v4.ffSkip[_vac]
if _vad and _vad.Enabled ~= false and _v4.isGiantPumpkin(_vac) and not (_vae and _vae > _vaa) then return true end
end
return false
end
_v4.FF_SCOUT_GAP, _v4.FF_SCOUT_CELL, _v4.FF_SCOUT_NEAR = 1.5, 2400, 1500
function _v4.ffScoutGrid()
if _v4.ffGrid then return _v4.ffGrid end
local _vaf, _vag, _vah, _vai, _vaj, _vak, _val = {}, nil, nil, nil, nil, 0, 0
pcall(function()
for _vam, _van in ipairs(_v4.WATER_RS.Locations:GetDescendants()) do
if _van:IsA(_pguo("/C9B5f/9cgw=")) then
local _vao = _van.Position
_vag, _vah = math.min(_vag or _vao.X, _vao.X), math.max(_vah or _vao.X, _vao.X)
_vai, _vaj = math.min(_vai or _vao.Z, _vao.Z), math.max(_vaj or _vao.Z, _vao.Z)
_vak, _val = _vak + _vao.Y, _val + 1
end
end
end)
if _val == 0 then return _vaf end
local _vap, _vaq = _v4.FF_SCOUT_CELL, _vak / _val
for _var = _vag, _vah + _vap, _vap do
for _vas = _vai, _vaj + _vap, _vap do _vaf[#_vaf + 1] = Vector3.new(_var, _vaq, _vas) end
end
_v4.ffGrid = _vaf
return _vaf
end
function _v4.ffScoutStep()
if _v4.UNLOADED or not _v4.ffOn() or _v4.ffScoutBusy or os.clock() < (_v4.ffScoutT or 0) then return end
local _vat = _v4.getLocalPhysicsRoot()
if not _vat then return end
local _vau, _vav, _vaw = _vat.Position, _v4.FF_SCOUT_NEAR, nil
_v4.ffScoutKeep = not _v4.ffScoutKeep
local _vax = _v4.ffTarget
if _v4.ffScoutKeep and _vax and _vax.Parent then
local _vay = _v4.fossilPosOf(_vax)
if _vay and (_vay - _vau).Magnitude > _vav then _vaw = _vay end
end
if not _vaw then
local _vaz = _v4.ffScoutGrid()
if #_vaz == 0 then _v4.ffSwept = true return end
for _vb0 = 1, #_vaz do
_v4.ffScoutI = (_v4.ffScoutI or 0) % #_vaz + 1
if _v4.ffScoutI == #_vaz then _v4.ffSwept = true end
local _vb1 = _vaz[_v4.ffScoutI]
if (Vector3.new(_vb1.X, _vau.Y, _vb1.Z) - _vau).Magnitude > _vav then _vaw = _vb1 break end
end
end
if not _vaw then _v4.ffSwept = true return end
_v4.ffScoutBusy, _v4.ffScoutT = true, os.clock() + _v4.FF_SCOUT_GAP
task.spawn(function()
pcall(function() _v2:RequestStreamAroundAsync(_vaw, 2) end)
_v4.ffScoutBusy = false
end)
end
_v4.addStep(20, _v4.ffScoutStep)
function _v4.fossilDistance(_vb2)
if _vb2 == "S" then return _v4.FOSSIL_DIST_SMALL end
if _vb2 == "L" then return _v4.FOSSIL_DIST_LARGE end
return _v4.FOSSIL_DIST_MEDIUM
end
local function _vb3(_vb4)
local _vb5, _vb6, _vb7, _vb8
for _vb9, _vba in ipairs({_pguo("8ytB6OLzZB3S"), _pguo("6CdB9c7w")}) do
local _vbb = _vb4:FindFirstChild(_vba)
if _vbb then
_vb5 = _vb5 or _vbb:GetAttribute(_pguo("6jdC5Q=="))
_vb6 = _vb6 or _vbb:GetAttribute(_pguo("7TpT58o="))
_vb7 = _vb7 or _vbb:GetAttribute(_pguo("+Stc5Mru"))
_vb8 = _vb8 or _vbb:GetAttribute(_pguo("6Stb58fo"))
end
end
_vb5 = _vb5 or _vb4:GetAttribute(_pguo("7T5X48b5cw==")) or _vb4:GetAttribute(_pguo("6jdC5Q=="))
_vb6 = _vb6 or _vb4:GetAttribute(_pguo("+idc7/zoYR/b")) or _vb4:GetAttribute(_pguo("7TpT58o="))
_vb7 = _vb7 or _vb4:GetAttribute(_pguo("+Stc5Mru"))
_vb8 = _vb8 or _vb4:GetAttribute(_pguo("6Stb58fo"))
if not _vb8 then
local _vbc = _vb4:FindFirstChild(_pguo("7iZL88b/cw=="))
if _vbc then _vb8 = _vbc:GetAttribute(_pguo("6Stb58fo")) end
end
local _vbd = _pguo("/SFA8Nz5")
if _vb5 then _vbd = tostring(_vb5) end
if _vb6 then _vbd = _vbd .. " [" .. tostring(_vb6) .. "]" end
if _vb7 then _vbd = _vbd .. " " .. (tostring(_vb7):sub(1, 1)) end
local _vbe = tonumber(_vb8)
if _vbe then _vbd = _vbd .. "  " .. string.format(_pguo("m2AC5g=="), _vbe) .. "kg" end
return _vbd
end
function _v4.getMeatWeight(_vbf)
local _vbg = nil
pcall(function()
_vbg = _vbf:GetAttribute(_pguo("6Stb58fo")) or _vbf:GetAttribute(_pguo("8ytT9A==")) or _vbf:GetAttribute(_pguo("+CFd5A=="))
end)
if not _vbg then
for _vbh, _vbi in _vbf:GetChildren() do
pcall(function()
if _vbi:IsA(_pguo("8Dtf4sruVhnSO1c=")) and (_vbi.Name:lower():find(_pguo("yStb58fo")) or _vbi.Name:lower():find(_pguo("0ytT9A==")) or _vbi.Name:lower():find(_pguo("2CFd5A=="))) then
_vbg = _vbi.Value
end
end)
end
end
return _vbg
end
function _v4.processFolder(_vbj, _vbk, _vbl, _vbm)
if not _vbj then return end
for _vbn, _vbo in _vbj:GetChildren() do
if _v6k[_vbo] then continue end
local _vbp = _vbk
if _vbo:IsA(_pguo("8yFW5cM=")) then
local _vbq = _vbo:GetAttribute(_pguo("6jdC5Q=="))
if _vbq then
_vbp = _vbk .. " [" .. _vbq .. "]"
else
_vbp = _vbk .. " [" .. _vbo.Name .. "]"
end
elseif _vbo:IsA(_pguo("/C9B5f/9cgw=")) then
_vbp = _vbk .. " [" .. _vbo.Name .. "]"
end
_v9i(_vbo, _vbp, _vbl, _vbm)
end
end
_v4.worldESPPart = setmetatable({}, { __mode = "k" })
function _v4.worldESPAnchor(_vbr)
local _vbs = _v4.worldESPPart[_vbr]
if _vbs and _vbs.Parent then return _vbs end
local _vbt
if _vbr:IsA(_pguo("/C9B5f/9cgw=")) then
_vbt = _vbr
elseif _vbr:IsA(_pguo("8yFW5cM=")) then
_vbt = _vbr:FindFirstChild(_pguo("/CFW+Q=="))
or _vbr.PrimaryPart
or _vbr:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA=="))
or _vbr:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="), true)
end
_v4.worldESPPart[_vbr] = _vbt
return _vbt
end
function _v4.infectionMods()
if _v4.infMods == nil then
_v4.infMods = false
pcall(function()
local _vbu = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
_v4.infMods = {
rotten = _v4.req(_vbu.Modules.Consumption.GetRottenSettings),
life = _v4.req(_vbu.Modules.Consumption.GetCorpseLifetime),
infect = _v4.req(_vbu.Modules.Combat.GetInfectionSettings),
data = _v4.req(_vbu.Shared.ConsumptionData),
}
end)
end
return _v4.infMods or nil
end
function _v4.infectionIndex()
local _vbv = os.clock()
if _v4.infIndex and _vbv - (_v4.infIndexT or 0) < 2 then return _v4.infIndex end
local _vbw = {}
pcall(function()
for _vbx, _vby in pairs(_v4.getCC().CorpseData) do
local _vbz = _vby and _vby.Root
if _vbz then
_vbw[_vbz] = _vby
local _vc0 = _vbz.Parent
if _vc0 and _vc0:IsA(_pguo("8yFW5cM=")) then
_vbw[_vc0] = _vby
if _vc0.Parent and _vc0.Parent:IsA(_pguo("8yFW5cM=")) then _vbw[_vc0.Parent] = _vby end
end
end
end
end)
_v4.infIndex, _v4.infIndexT = _vbw, _vbv
return _vbw
end
function _v4.rotSettingsFor(_vc1, _vc2, _vc3, _vc4)
if _vc4 and _vc4.Rotten then return _vc4.Rotten end
_v4.rotSet = _v4.rotSet or {}
local _vc5 = _v4.rotSet[_vc2]
if _vc5 ~= nil then return _vc5 or nil end
local _vc6 = (_vc2:sub(1, 4) == _pguo("8ytT9A==")) and _vc2:sub(5) or _vc2
local _vc7
pcall(function() _vc7 = _vc1.rotten.FromCorpseName(_vc6) end)
if not _vc7 then pcall(function() _vc7 = _vc1.rotten.FromCorpseType(_vc6) end) end
if not _vc7 and _vc3 and _vc3 ~= _pguo("8ytT9A==") then pcall(function() _vc7 = _vc1.rotten.FromCorpseType(_vc3) end) end
_v4.rotSet[_vc2] = _vc7 or false
return _vc7
end
function _v4.rottingFlag(_vc8)
local _vc9 = _vc8
for _vca = 1, 3 do
if not _vc9 then return nil end
local _vcb = _vc9:GetAttribute(_pguo("7CFG9MbyZw=="))
if type(_vcb) == _pguo("3CFd7Mr9bg==") then return _vcb end
_vc9 = _vc9.Parent
end
return nil
end
function _v4.rotClock(_vcc)
_vcc = math.max(0, math.floor(_vcc))
if _vcc >= 3600 then return math.floor(_vcc / 3600) .. "h" .. string.format(_pguo("m34A5A=="), math.floor(_vcc % 3600 / 60)) .. "m" end
if _vcc >= 600 then return math.floor(_vcc / 60) .. "m" end
return math.floor(_vcc / 60) .. ":" .. string.format(_pguo("m34A5A=="), _vcc % 60)
end
function _v4.infectionLine(_vcd)
local _vce = _v4.infectionIndex()[_vcd]
local _vcf = _vce and _v4.infectionMods()
if not _vcf then return nil end
local _vcg = tostring(_vce.Name or "")
local _vch = (_vcg:sub(1, 4) == _pguo("8ytT9A==")) and _pguo("8ytT9A==") or (_vcf.data.CorpseTypes and _vcf.data.CorpseTypes[_vcg])
local _vci = _vch and _vcf.data.CorpseConsumables and _vcf.data.CorpseConsumables[_vch]
local _vcj = _vci and _vci.Actions and _vci.Actions[1]
if not _vcj then return nil end
local _vck = _v4.rotSettingsFor(_vcf, _vcg, _vch, _vcj)
local _vcl = _vce.Root
local _vcm = _v4.rottingFlag(_vcl)
local _vcn
local _vco = _vcl and ((_vcl:GetAttribute(_pguo("/TxX4dv5ZDnK")) ~= nil and _vcl) or _vcl.Parent)
local _vcp = _vco and _vco:GetAttribute(_pguo("/TxX4dv5ZDnK"))
local _vcq = tonumber(_vce.Weight) or (_vco and tonumber(_vco:GetAttribute(_pguo("6Stb58fo"))))
if _vck and type(_vcp) == _pguo("0Dtf4sru") and _vcq and _vcq > 0 then
local _vcr = _vcf.life.FromWeight(_vcq)
local _vcs = (tonumber(_vcf.data.RotStart) and _vcr * tonumber(_vcf.data.RotStart) / 100)
or _vcf.rotten.GetRotTime(_vck, _vcr)
local _vct = tick() - _vcp
if _vcm == nil then _vcm = _vct >= _vcs end
if not _vcm then
_vcn = _vcs - _vct
if _vcn <= 0 then _vcm = true end
end
end
if _vcm == nil then return nil end
local _vcu = _v2.Character and _v2.Character:GetAttribute(_pguo("6jdC5Q=="))
local _vcv = _vcu and _vcg == tostring(_vcu)
if not _vcm then
local _vcw = _vcn and (_pguo("zCFG9MryIBHQbg==") .. _v4.rotClock(_vcn)) or _pguo("2DxX88c=")
return _vcv and (_vcw .. _pguo("njIS79jyIAvOK1Hpyu8sWN0vXKfbvGUZyg==")) or _vcw, false
end
local _vcx = _pguo("7AFm1OrS")
if _vcv then return _vcx .. _pguo("njIS79jyIAvOK1Hpyu8sWN0vXKfbvGUZyg=="), true end
local _vcy = _v4.getCS()
if _vck and _vcy and _vcy.Data and _vcy.Data.Diet and _vcy.Replica then
local _vcz = _vcf.rotten.GetInfectionGain(_vck, _vcy.Data.Diet, _vcj.Category)
if type(_vcz) == _pguo("0Dtf4sru") and _vcz > 0 then
local _vd0 = tonumber(_vcf.infect.GetRequiredAmount()) or 100
local _vd1 = tonumber(_vcy.Replica.Data.Stats.Infection) or 0
_vcx = _vcx .. _pguo("njISqw==") .. (math.floor(_vcz / _vd0 * 10000 + 0.5) / 100) .. _pguo("m25b7sn5YwzXIVyvzfV0HQ==")
if _vd1 >= _vd0 then
_vcx = _vcx .. _pguo("njIS7croZQqeKEfsww==")
else
_vcx = _vcx .. _pguo("njIS") .. math.ceil((_vd0 - _vd1) / _vcz) .. _pguo("njpdoMnpbBQ=")
end
end
end
return _vcx, true
end
function _v4.updateWorldESPDistances()
local _vd2 = _v4.getMyRoot()
if not _vd2 then return end
local _vd3 = _vd2.Position
pcall(function()
for _vd4, _vd5 in pairs(_v6k) do
if not _vd4.Parent then
_v4.destroyWorldESP(_vd4)
continue
end
local _vd6 = _v4.worldESPAnchor(_vd4)
if not _vd6 then continue end
local _vd7 = (_vd3 - _vd6.Position).Magnitude
local _vd8 = _vd5:FindFirstChild(_pguo("8i9Q5cM="))
local _vd9 = _vd5:FindFirstChild(_pguo("+idB9OP9Yh3S"))
if _vd8 then
_vd8.BackgroundTransparency = 1
_vd8.TextSize = _v4.WORLD_TEXT_SIZE
_vd8.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
if _v4.TEXT_HIGHLIGHT then
_vd8.TextColor3 = Color3.new(1, 1, 1)
_vd8.TextStrokeTransparency = 0
end
end
if _vd9 then
_vd9.Text = math.floor(_vd7) .. _pguo("nj1G9cvv")
_vd9.BackgroundTransparency = 1
_vd9.TextSize = _v4.WORLD_TEXT_SIZE - 2
_vd9.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_vd9.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE + 2)
if _v4.TEXT_HIGHLIGHT then
_vd9.TextColor3 = Color3.new(1, 1, 1)
_vd9.TextStrokeTransparency = 0
end
end
local _vda = _vd5:FindFirstChild(_pguo("9yBUzM7+ZRQ="))
local _vdb, _vdc, _vdd = false, nil, false
if _v4.CORPSE_INF_ESP then _vdb, _vdc, _vdd = pcall(_v4.infectionLine, _vd4) end
if _vdb and _vdc then
if not _vda then
_vda = Instance.new(_pguo("6itK9OP9Yh3S"))
_vda.Name = _pguo("9yBUzM7+ZRQ=")
_vda.BackgroundTransparency = 1
_vda.TextStrokeTransparency = 0
_vda.TextStrokeColor3 = Color3.new(0, 0, 0)
_vda.Font = Enum.Font.GothamBold
_vda.Parent = _vd5
end
_vda.Text = _vdc
_vda.TextColor3 = _v4.TEXT_HIGHLIGHT and Color3.new(1, 1, 1) or (_vdd and _v4.ROT_COLOR or _v4.INFECT_COLOR)
_vda.TextSize = _v4.WORLD_TEXT_SIZE - 2
_vda.Size = UDim2.new(1, 0, 0, _v4.WORLD_TEXT_SIZE)
_vda.Position = UDim2.new(0, 0, 0, _v4.WORLD_TEXT_SIZE * 2 + 2)
_vd5.Size = UDim2.new(0, 260, 0, _v4.WORLD_TEXT_SIZE * 3 + 4)
elseif _vda then
_vda:Destroy()
_vd5.Size = UDim2.new(0, 150, 0, 40)
end
end
end)
end
function _v4.pumpkinESPStep()
for _vde, _vdf in ipairs(_v4.pumpkinsNow()) do
if _vdf.Parent and not _v6k[_vdf] then
local _vdg = _v4.isGiantPumpkin(_vdf)
_v9i(_vdf, _vdg and _pguo("+SdT7tu8UA3TPlnpwQ==") or _pguo("7jtf8MT1bg=="), _vdg and _v4.PUMPKIN_GIANT_COLOR or _v4.PUMPKIN_COLOR, _v4.PUMPKIN_DISTANCE)
end
end
end
local function _vdh()
for _vdi, _vdj in pairs(_v6k) do
pcall(function() _vdj:Destroy() end)
end
_v6k = {}
if _v4.CORPSE_ESP then
pcall(function()
local _vdk = workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l")) and workspace.CharacterIgnore:FindFirstChild(_pguo("8itU9Oz0YQrfLUbl3e8="))
if _vdk then
for _vdl, _vdm in _vdk:GetChildren() do
if _v6k[_vdm] then continue end
local _vdn = _vb3(_vdm)
_v9i(_vdm, _vdn, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vdo = workspace:FindFirstChild(_pguo("+idc79z9dQrsL1XkwPBsCw=="))
if _vdo then
for _vdp, _vdq in _vdo:GetChildren() do
if _v6k[_vdq] then continue end
local _vdr = _vb3(_vdq)
_v9i(_vdq, _vdr, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vds = workspace:FindFirstChild(_pguo("7C9V5MDwbAs="))
if _vds then
for _vdt, _vdu in _vds:GetChildren() do
if _v6k[_vdu] then continue end
local _vdv = _vb3(_vdu)
_v9i(_vdu, _vdv, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _vdw = workspace:FindFirstChild(_pguo("/wdg4cj4bxTSPQ=="))
if _vdw then
for _vdx, _vdy in _vdw:GetChildren() do
if _v6k[_vdy] then continue end
local _vdz = _vb3(_vdy)
_v9i(_vdy, _vdz, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _ve0 = workspace:FindFirstChild(_pguo("7C9V5MDwbCvKIUDhyPk="))
if _ve0 then
for _ve1, _ve2 in _ve0:GetChildren() do
if _v6k[_ve2] then continue end
local _ve3 = _vb3(_ve2)
_v9i(_ve2, _ve3, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _ve4 = workspace:FindFirstChild(_pguo("+TxT4s35ZCrfKVbvw/Bz"))
if _ve4 then
for _ve5, _ve6 in _ve4:GetChildren() do
if _v6k[_ve6] then continue end
local _ve7 = _vb3(_ve6)
_v9i(_ve6, _ve7, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end)
pcall(function()
local _ve8 = workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l"))
if _ve8 then
local _ve9 = _ve8:FindFirstChild(_pguo("7C9V5MDwbAs="))
if _ve9 then
for _vea, _veb in _ve9:GetChildren() do
if _v6k[_veb] then continue end
local _vec = _vb3(_veb)
_v9i(_veb, _vec, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
end
end
end)
end
pcall(function()
local _ved = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if _ved then
for _vee, _vef in _ved:GetChildren() do
if _v6k[_vef] then continue end
local _veg = _v4.getFossilSize(_vef)
if _v4.isFossilEnabled(_veg) then
local _veh = {S = _pguo("7SNT7MM="), M = _pguo("8ytW6drx"), L = _pguo("8i9A58o=")}
local _vei = _pguo("+CFB88bwIFA=") .. (_veh[_veg] or _veg) .. ")"
_v9i(_vef, _vei, _v4.getFossilColor(_veg), _v4.fossilDistance(_veg))
end
end
end
end)
if _v4.MEAT_ESP then
pcall(function()
local _vej = workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l")) and workspace.CharacterIgnore:FindFirstChild(_pguo("7T5T98H5ZDXbL0Y="))
if _vej then
for _vek, _vel in _vej:GetChildren() do
if _v6k[_vel] then continue end
local _vem = _pguo("8ytT9A==")
_v9i(_vel, _vem, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end)
pcall(function()
local _ven = workspace:FindFirstChild(_pguo("+CFd5A=="))
if _ven then
local _veo = _ven:FindFirstChild(_pguo("8ytT9A=="))
if _veo then
for _vep, _veq in _veo:GetChildren() do
if _v6k[_veq] then continue end
local _ver = _pguo("8ytT9A==")
_v9i(_veq, _ver, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
local _ves = _ven:FindFirstChild(_pguo("/SFe7Mr/dB3aA1fh2w=="))
if _ves then
for _vet, _veu in _ves:GetChildren() do
if _v6k[_veu] then continue end
local _vev = _pguo("8ytT9A==")
_v9i(_veu, _vev, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
end
end
end)
end
if _v4.CLAY_ESP then
pcall(function()
local _vew = workspace:FindFirstChild(_pguo("/C9G6Nw="))
local _vex = _vew and _vew:FindFirstChild(_pguo("/SJT+ev5cBfNJ0bz"))
if _vex then
for _vey, _vez in _vex:GetChildren() do
if _v6k[_vez] then continue end
_v9i(_vez, _pguo("/SJT+Y/YZQjRPVv0"), _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end
end)
end
if _v4.PUMPKIN_ESP then pcall(_v4.pumpkinESPStep) end
end
local function _vf0(_vf1, _vf2)
pcall(function()
local _vf3 = workspace
if _vf2 then
for _vf4, _vf5 in ipairs(_vf2) do
_vf3 = _vf3:FindFirstChild(_vf5)
if not _vf3 then return end
end
end
local _vf6 = _vf3:FindFirstChild(_vf1)
if not _vf6 then return end
table.insert(_v2l, _vf6.ChildAdded:Connect(function(_vf7)
task.wait(0.5)
local _vf8 = {LeftCharacters=true, DinosaurRagdolls=true, Ragdolls=true, AIRagdolls=true, RagdollStorage=true, GrabbedRagdolls=true}
if _v4.CORPSE_ESP and _vf8[_vf1] then
local _vf9 = _vb3(_vf7)
_v9i(_vf7, _vf9, _v4.CORPSE_COLOR, _v4.CORPSE_DISTANCE)
end
if _vf1 == _pguo("7T5T98H5ZD7RPUHpw+8=") then
local _vfa = _v4.getFossilSize(_vf7)
if _v4.isFossilEnabled(_vfa) then
local _vfb = {S = _pguo("7SNT7MM="), M = _pguo("8ytW6drx"), L = _pguo("8i9A58o=")}
local _vfc = _pguo("+CFB88bwIFA=") .. (_vfb[_vfa] or _vfa) .. ")"
_v9i(_vf7, _vfc, _v4.getFossilColor(_vfa), _v4.fossilDistance(_vfa))
end
end
if _v4.MEAT_ESP and (_vf1 == _pguo("7T5T98H5ZDXbL0Y=") or _vf1 == _pguo("8ytT9A==") or _vf1 == _pguo("/SFe7Mr/dB3aA1fh2w==")) then
local _vfd = _pguo("8ytT9A==")
_v9i(_vf7, _vfd, _v4.MEAT_COLOR, _v4.MEAT_DISTANCE)
end
if _v4.CLAY_ESP and _vf1 == _pguo("/SJT+ev5cBfNJ0bz") then
_v9i(_vf7, _pguo("/SJT+Y/YZQjRPVv0"), _v4.CLAY_COLOR, _v4.CLAY_DISTANCE)
end
end))
table.insert(_v2l, _vf6.ChildRemoved:Connect(function(_vfe)
_v4.destroyWorldESP(_vfe)
end))
end)
end
_vf0(_pguo("8itU9Oz0YQrfLUbl3e8="), {_pguo("/SZT8s7/dB3MB1XuwO5l")})
_vf0(_pguo("+idc79z9dQrsL1XkwPBsCw=="))
_vf0(_pguo("7C9V5MDwbAs="))
_vf0(_pguo("/wdg4cj4bxTSPQ=="))
_vf0(_pguo("7C9V5MDwbCvKIUDhyPk="))
_vf0(_pguo("+TxT4s35ZCrfKVbvw/Bz"))
_vf0(_pguo("7C9V5MDwbAs="), {_pguo("/SZT8s7/dB3MB1XuwO5l")})
_vf0(_pguo("7T5T98H5ZD7RPUHpw+8="))
_vf0(_pguo("7T5T98H5ZDXbL0Y="), {_pguo("/SZT8s7/dB3MB1XuwO5l")})
_vf0(_pguo("8ytT9A=="), {_pguo("+CFd5A==")})
_vf0(_pguo("/SFe7Mr/dB3aA1fh2w=="), {_pguo("+CFd5A==")})
_vf0(_pguo("/SJT+ev5cBfNJ0bz"), {_pguo("/C9G6Nw=")})
_v4.addStep(60, function()
if _v4.PUMPKIN_ESP then pcall(_v4.pumpkinESPStep) end
end)
_v4.addStep(5, function()
if not _v4.CORPSE_ESP and not _v4.FOSSIL_SMALL and not _v4.FOSSIL_MEDIUM and not _v4.FOSSIL_LARGE and not _v4.MEAT_ESP and not _v4.CLAY_ESP and not _v4.PUMPKIN_ESP then return end
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
function _v4.mmapFolder(_vff)
local _vfg = workspace
for _vfh, _vfi in ipairs(_vff) do
_vfg = _vfg:FindFirstChild(_vfi)
if not _vfg then return nil end
end
return _vfg
end
function _v4.mmapFind()
local _vfj = _v4.mmapCache
if _vfj then
local ok, alive = pcall(function()
local _vfk = rawget(_vfj, _pguo("6i9V8+nuYRXb"))
return _vfk ~= nil and _vfk.Parent ~= nil
end)
if ok and alive then return _vfj end
_v4.mmapCache = nil
end
local _vfl = os.clock()
if _v4.mmapNextScan and _vfl < _v4.mmapNextScan then return nil end
_v4.mmapNextScan = _vfl + 3
if not _v4.CAP.filtergc then return nil end
local _vfm
local _vfn = os.clock()
pcall(function()
_vfm = filtergc(_pguo("yi9Q7Mo="), {Keys = {_pguo("6i9V8+nuYRXb"), _pguo("6i9V8w=="), _pguo("6CdX99/zcgw=")}}, true)
end)
if _v4.IS_XENO and os.clock() - _vfn > 0.05 then _v4.CAP.filtergc = false end
_v4.mmapCache = _vfm
return _vfm
end
function _v4.mmapMakeDot(_vfo)
local _vfp = Instance.new(_pguo("+DxT7co="))
_vfp.Name = _pguo("+xRtxMDo")
_vfp.AnchorPoint = Vector2.new(0.5, 0.5)
_vfp.BorderSizePixel = 0
_vfp.BackgroundColor3 = Color3.new(1, 1, 1)
_vfp.Size = UDim2.fromOffset(_v4.MMAP_DOT, _v4.MMAP_DOT)
_vfp.ZIndex = 9
_vfp.Visible = false
local _vfq = Instance.new(_pguo("6wdx793yZQo="))
_vfq.CornerRadius = UDim.new(1, 0)
_vfq.Parent = _vfp
_vfp.Parent = _vfo
return _vfp
end
function _v4.mmapDestroyPool()
for _vfr, _vfs in ipairs(_v4.mmapPool) do
pcall(function() if _vfs.mini then _vfs.mini:Destroy() end end)
pcall(function() if _vfs.exp then _vfs.exp:Destroy() end end)
end
_v4.mmapPool = {}
_v4.mmapShown = 0
end
function _v4.mmapHideAll()
for _vft, _vfu in ipairs(_v4.mmapPool) do
if _vfu.mini then _vfu.mini.Visible = false end
if _vfu.exp then _vfu.exp.Visible = false end
end
_v4.mmapShown = 0
end
function _v4.mmapEnsure(_vfv, _vfw)
local _vfx = _v4.mmapPool
local _vfy = rawget(_vfw, _pguo("6i9V8+nuYRXb"))
local _vfz = rawget(_vfw, _pguo("+zZC4cH4ZRz6K0bhxvBz"))
while #_vfx < _vfv do
local _vg0 = {}
if _vfy then _vg0.mini = _v4.mmapMakeDot(_vfy) end
if _vfz then _vg0.exp = _v4.mmapMakeDot(_vfz) end
_vfx[#_vfx + 1] = _vg0
end
end
function _v4.mmapCollect()
local _vg1 = {}
local _vg2 = _v4.getLocalRoot()
local _vg3 = _vg2 and _vg2.Position or Vector3.zero
local function _vg4(_vg5, _vg6)
_vg1[#_vg1 + 1] = { pos = _vg5, color = _vg6, d = (_vg5 - _vg3).Magnitude }
end
if _v4.MMAP_PLAYERS then
pcall(function()
for _vg7, _vg8 in ipairs(_v0:GetPlayers()) do
if _vg8 ~= _v2 then
local _vg9 = _vg8.Character
local _vga = _vg9 and _v4.getRootOf(_vg9, false)
if _vga then _vg4(_vga.Position, _v4.MMAP_COLOR_PLAYER) end
end
end
end)
end
if _v4.MMAP_CORPSES then
for _vgb, _vgc in ipairs(_v4.MMAP_CORPSE_FOLDERS) do
pcall(function()
local _vgd = _v4.mmapFolder(_vgc)
if not _vgd then return end
for _vgb, _vgf in ipairs(_vgd:GetChildren()) do
local _vgg = _v4.worldESPAnchor(_vgf)
if _vgg then _vg4(_vgg.Position, _v4.MMAP_COLOR_CORPSE) end
end
end)
end
end
if _v4.MMAP_FOSSILS then
pcall(function()
local _vgh = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if not _vgh then return end
for _vgi, _vgj in ipairs(_vgh:GetChildren()) do
local _vgk = _v4.worldESPAnchor(_vgj)
if _vgk then _vg4(_vgk.Position, _v4.MMAP_COLOR_FOSSIL) end
end
end)
end
if #_vg1 > _v4.MMAP_MAX then
table.sort(_vg1, function(_vgl, _vgm) return _vgl.d < _vgm.d end)
end
_v4.mmapList = _vg1
end
function _v4.mmapStep()
if _v4.UNLOADED then return end
if not _v4.MMAP_ON or not (_v4.MMAP_PLAYERS or _v4.MMAP_CORPSES or _v4.MMAP_FOSSILS) then
if _v4.mmapShown > 0 then _v4.mmapHideAll() end
return
end
local _vgn = _v4.mmapFind()
if not _vgn then return end
if _v4.mmapBoundTo ~= _vgn then
_v4.mmapPool = {}
_v4.mmapShown = 0
_v4.mmapBoundTo = _vgn
end
_v4.mmapTick = (_v4.mmapTick or 0) + 1
if not _v4.mmapList or _v4.mmapTick % 5 == 1 then _v4.mmapCollect() end
local _vgo = _v4.mmapList
if not _vgo then return end
local _vgp = math.min(#_vgo, _v4.MMAP_MAX)
_v4.mmapEnsure(_vgp, _vgn)
local _vgq = rawget(_vgn, _pguo("8ydc6Q=="))
local _vgr = rawget(_vgn, _pguo("+zZC4cH4ZRw="))
local _vgs = rawget(_vgn, _pguo("6CdX99/zcgw="))
local _vgt = _vgq and _vgq.Visible
local _vgu = _vgr and _vgr.Visible
local _vgv = 0
pcall(function() if _vgs then _vgv = _vgs.AbsoluteSize.X * 0.5 end end)
local _vgw, _vgx, _vgy
pcall(function()
_vgw = _vgn.GetTagPosition
_vgx = _vgn.GetDistanceFromCenter
_vgy = _vgn.TransformPosition
end)
for _vgz = 1, _vgp do
local _vh0 = _vgo[_vgz]
local _vh1 = _v4.mmapPool[_vgz]
if _vh1 then
if _vh1.mini then
if _vgt then
local _vh2, _vh3
if _vgw then _vh2, _vh3 = pcall(_vgw, _vgn, _vh0.pos) end
if _vh2 and _vh3 then
_vh1.mini.Position = UDim2.fromOffset(_vh3.X, _vh3.Y)
_vh1.mini.BackgroundColor3 = _vh0.color
local _vh4, _vh5
if _vgx then _vh4, _vh5 = pcall(_vgx, _vgn, _vh3) end
_vh1.mini.Visible = (not _vh4) or (_vh5 <= _vgv)
else
_vh1.mini.Visible = false
end
else
_vh1.mini.Visible = false
end
end
if _vh1.exp then
if _vgu then
local _vh6, _vh7
if _vgy then _vh6, _vh7 = pcall(_vgy, _vgn, _vh0.pos) end
if _vh6 and _vh7 then
_vh1.exp.Position = _vh7
_vh1.exp.BackgroundColor3 = _vh0.color
_vh1.exp.Visible = true
else
_vh1.exp.Visible = false
end
else
_vh1.exp.Visible = false
end
end
end
end
for _vh8 = _vgp + 1, #_v4.mmapPool do
local _vh9 = _v4.mmapPool[_vh8]
if _vh9.mini then _vh9.mini.Visible = false end
if _vh9.exp then _vh9.exp.Visible = false end
end
_v4.mmapShown = _vgp
end
_v4.addStep(3, _v4.mmapStep)
function _v4.expandPlayerHitbox(_vha)
local _vhb = _vha.Character
if not _vhb then return end
local _vhc = _vhb:FindFirstChild(_pguo("9idG4sDk"))
if not _vhc then return end
for _vhd, _vhe in _vhc:GetChildren() do
if not _vhe:IsA(_pguo("/C9B5f/9cgw=")) then continue end
local _vhf = _vhe:GetAttribute(_pguo("+Txd9d8="))
if not _vhf then continue end
if _vhe:GetAttribute(_pguo("8idc6w==")) then continue end
local _vhg = (_vhf == _pguo("6i9b7A==")) and _v4.getTailSubGroup(_vhe.Name) or _vhf
if not _v5k[_vhe] then
_v5k[_vhe] = _vhe.Size
end
local _vhh = _v5k[_vhe]
pcall(function()
if _v4.HITBOX_EXPANDER and _v4.HITBOX_GROUPS[_vhg] then
_vhe.Size = _vhh * _v4.HITBOX_MULTIPLIER
else
_vhe.Size = _vhh
end
end)
pcall(function()
if _v4.SILENT_AIM then
_vhe.CanQuery = _v4.SILENT_GROUPS[_vhg] and true or false
else
_vhe.CanQuery = true
end
end)
end
end
function _v4.resetPlayerHitbox(_vhi)
local _vhj = _vhi.Character
if not _vhj then return end
local _vhk = _vhj:FindFirstChild(_pguo("9idG4sDk"))
if _vhk then
for _vhl, _vhm in _vhk:GetChildren() do
if not _vhm:IsA(_pguo("/C9B5f/9cgw=")) then continue end
local _vhn = _v5k[_vhm]
if _vhn then
pcall(function() _vhm.Size = _vhn; _vhm.CanQuery = true end)
_v5k[_vhm] = nil
end
end
end
local _vho = _vhj:FindFirstChild(_pguo("9idGwsDk"))
if _vho and _v5k[_vho] then
pcall(function() _vho.Size = _v5k[_vho] end)
_v5k[_vho] = nil
end
end
function _v4.visualizePlayerHitbox(_vhp, _vhq)
local _vhr = _vhp.Character
if not _vhr then return end
local _vhs = _vhr:FindFirstChild(_pguo("9idG4sDk"))
if _vhs then
for _vht, _vhu in _vhs:GetChildren() do
if not _vhu:IsA(_pguo("/C9B5f/9cgw=")) then continue end
local _vhv = _vhu:GetAttribute(_pguo("+Txd9d8=")) or _pguo("yyBV8sDpcB3a")
local _vhw = false
if _vhv == _pguo("6i9b7A==") then
local _vhx = _v4.getTailSubGroup(_vhu.Name)
_vhw = _v4.HITBOX_GROUPS[_vhx]
else
_vhw = _v4.HITBOX_GROUPS[_vhv]
end
pcall(function()
if _vhq and _vhw then
if not _v5l[_vhu] then
_v5l[_vhu] = { _vhu.Transparency, _vhu.Material, _vhu.Color }
end
_vhu.Transparency = _v4.HITBOX_VIS_TRANSPARENCY
_vhu.Color = _v4.HITBOX_VIS_COLOR
_vhu.Material = Enum.Material.Neon
else
local _vhy = _v5l[_vhu]
if _vhy then
_vhu.Transparency, _vhu.Material, _vhu.Color = _vhy[1], _vhy[2], _vhy[3]
_v5l[_vhu] = nil
else
_vhu.Transparency = 1
end
end
end)
end
end
local _vhz = _vhr:FindFirstChild(_pguo("9idGwsDk"))
if _vhz and _vhz:IsA(_pguo("/C9B5f/9cgw=")) then
pcall(function()
if _vhq then
if not _v5l[_vhz] then
_v5l[_vhz] = { _vhz.Transparency, _vhz.Material, _vhz.Color }
end
_vhz.Transparency = _v4.HITBOX_VIS_TRANSPARENCY
_vhz.Color = _v4.HITBOX_VIS_COLOR
_vhz.Material = Enum.Material.Neon
else
local _vi0 = _v5l[_vhz]
if _vi0 then
_vhz.Transparency, _vhz.Material, _vhz.Color = _vi0[1], _vi0[2], _vi0[3]
_v5l[_vhz] = nil
else
_vhz.Transparency = 1
end
end
end)
end
end
function _v4.resetAllHitboxes()
for _vi1, _vi2 in _v0:GetPlayers() do
if _vi2 == _v2 then continue end
_v4.resetPlayerHitbox(_vi2)
_v4.visualizePlayerHitbox(_vi2, false)
_v4.hbShown[_vi2] = nil
end
end
function _v4.expandLocalReach()
local _vi3 = _v2.Character
if not _vi3 then return end
local _vi4 = _vi3:FindFirstChild(_pguo("9idG4sDk"))
if not _vi4 then return end
for _vi5, _vi6 in _vi4:GetChildren() do
if not _vi6:IsA(_pguo("/C9B5f/9cgw=")) then continue end
local _vi7 = _vi6:GetAttribute(_pguo("+Txd9d8="))
if not _vi7 then continue end
if _vi6:GetAttribute(_pguo("8idc6w==")) then continue end
local _vi8 = (_vi7 == _pguo("6i9b7A==")) and _v4.getTailSubGroup(_vi6.Name) or _vi7
if not _v4.REACH_GROUPS[_vi8] then continue end
if not _v5m[_vi6] then
_v5m[_vi6] = _vi6.Size
end
local _vi9 = _v5m[_vi6]
pcall(function()
_vi6.Size = _v4.REACH_ENABLED and (_vi9 * _v4.REACH_MULTIPLIER) or _vi9
_vi6.CanQuery = true
if _v4.REACH_VISUALIZE then
_vi6.Transparency = _v4.REACH_VIS_TRANSPARENCY
_vi6.Color = Color3.fromRGB(150, 85, 235)
_vi6.Material = Enum.Material.ForceField
else
_vi6.Transparency = 1
end
end)
end
end
function _v4.resetLocalReach()
for _via, _vib in pairs(_v5m) do
pcall(function() _via.Size = _vib; _via.Transparency = 1 end)
end
table.clear(_v5m)
end
local _vic = 0
table.insert(_v2l, _v1.Heartbeat:Connect(function()
if _v4.UNLOADED then return end
local _vid = next(_v4.hbShown) ~= nil
if not _v4.HITBOX_EXPANDER and not _v4.HITBOX_VISUALIZE and not _v4.REACH_ENABLED
and not _v4.REACH_VISUALIZE and not _v4.SILENT_AIM
and not _vid then return end
if _v4.REACH_ENABLED or _v4.REACH_VISUALIZE then pcall(_v4.expandLocalReach) end
if not _v4.HITBOX_EXPANDER and not _v4.HITBOX_VISUALIZE and not _v4.SILENT_AIM
and not _vid then return end
_vic = _vic + 1
local _vie = (_vic % 5 == 0)
for _vif, _vig in _v0:GetPlayers() do
if _vig == _v2 then continue end
pcall(function()
if _v4.HITBOX_EXPANDER or _v4.SILENT_AIM then _v4.expandPlayerHitbox(_vig) end
if _vie then
if _v4.HITBOX_VISUALIZE then
_v4.visualizePlayerHitbox(_vig, true)
_v4.hbShown[_vig] = true
elseif _v4.hbShown[_vig] then
_v4.visualizePlayerHitbox(_vig, false)
_v4.hbShown[_vig] = nil
end
end
end)
end
end))
_v4.hbMask = {}
_v4.hbMaskT = setmetatable({}, { __mode = "k" })
function _v4.hbMaskStep()
if _v4.UNLOADED then return end
local _vih = _v4.hbMask or {}
for _vii, _vij in pairs(_v4.hbMaskT) do
if not _vih[_vij] then
if _vii and _vii.Parent then pcall(function() _vii.CanQuery = true end) end
_v4.hbMaskT[_vii] = nil
end
end
if not next(_vih) then return end
for _vik, _vil in ipairs(_v0:GetPlayers()) do
if _vil ~= _v2 and _vih[_vil.UserId] then
local _vim = _vil.Character and _vil.Character:FindFirstChild(_pguo("9idG4sDk"))
if _vim then
for _vik, _vio in ipairs(_vim:GetChildren()) do
if _vio:IsA(_pguo("/C9B5f/9cgw=")) and _vio:GetAttribute(_pguo("+Txd9d8=")) and not _vio:GetAttribute(_pguo("8idc6w==")) then
if _vio.CanQuery then pcall(function() _vio.CanQuery = false end) end
_v4.hbMaskT[_vio] = _vil.UserId
end
end
end
end
end
end
_v4.addStep(10, _v4.hbMaskStep)
local _vip = game:GetService(_pguo("8idV6Nv1bh8="))
function _v4.isBlackOverlay(_viq)
if not _viq:IsA(_pguo("+DxT7co=")) and not _viq:IsA(_pguo("9yNT58rQYRrbIg==")) then return false end
if _viq.BackgroundTransparency > 0.1 then return false end
local _vir = _viq.BackgroundColor3
if _vir.R > 0.05 or _vir.G > 0.05 or _vir.B > 0.05 then return false end
local _vis = _viq.AbsoluteSize
local _vit, _viu = _v3.ViewportSize.X, _v3.ViewportSize.Y
if _vis.X < _vit * 0.8 or _vis.Y < _viu * 0.8 then return false end
return true
end
_v4.absDirty = true
_v4.absLastFull = 0
_v4.ABS_FULL_INTERVAL = 6
function _v4.markAbsDirty()
_v4.absDirty = true
end
pcall(function()
local _viv = _v2:FindFirstChild(_pguo("7iJT+cruRw3X"))
if _viv then table.insert(_v2l, _viv.DescendantAdded:Connect(_v4.markAbsDirty)) end
end)
pcall(function()
table.insert(_v2l, game:GetService(_pguo("/SFA5ejpaQ==")).DescendantAdded:Connect(_v4.markAbsDirty))
end)
_v4.sleepGui = nil
function _v4.bindSleepWatch(_viw)
local function _vix(_viy) if _viy and _viy.Name == _pguo("7SJX5d/bdRE=") then _v4.sleepGui = _viy end end
_vix(_viw:FindFirstChild(_pguo("7SJX5d/bdRE=")))
table.insert(_v2l, _viw.ChildAdded:Connect(_vix))
table.insert(_v2l, _viw.ChildRemoved:Connect(function(_viz)
if _viz == _v4.sleepGui then _v4.sleepGui = nil end
end))
end
pcall(function()
local _vj0 = _v2:FindFirstChild(_pguo("7iJT+cruRw3X"))
if _vj0 then
_v4.bindSleepWatch(_vj0)
else
local _vj1
_vj1 = _v2.ChildAdded:Connect(function(_vj2)
if _vj2:IsA(_pguo("7iJT+cruRw3X")) then pcall(_v4.bindSleepWatch, _vj2); if _vj1 then _vj1:Disconnect() end end
end)
table.insert(_v2l, _vj1)
end
end)
function _v4.sweepGuiRoot(_vj3)
for _vj4, _vj5 in _vj3:GetChildren() do
if not _vj5:IsA(_pguo("7S1A5cryRw3X")) then continue end
if _vj5.Name == _pguo("+y9I+ez0ZRnKPQ==") or _vj5.Name == _pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA==") or _vj5.Name == _pguo("7S1T7uHzdBHYNw==") then continue end
for _vj4, _vj7 in _vj5:GetDescendants() do
if _v4.isBlackOverlay(_vj7) then
_vj7.BackgroundTransparency = 1
end
end
end
end
function _v4.neutralizeBlackScreens()
local _vj8 = os.clock()
local _vj9 = (_vj8 - _v4.absLastFull) >= _v4.ABS_FULL_INTERVAL
if _v4.absDirty or _vj9 then
_v4.absDirty = false
if _vj9 then _v4.absLastFull = _vj8 end
pcall(function()
local _vja = _v2:FindFirstChild(_pguo("7iJT+cruRw3X"))
if _vja then _v4.sweepGuiRoot(_vja) end
end)
pcall(function() _v4.sweepGuiRoot(game:GetService(_pguo("/SFA5ejpaQ=="))) end)
end
pcall(function()
for _vjb, _vjc in _vip:GetChildren() do
if _vjc:IsA(_pguo("/SFe793fbwrMK1H0xvNuPdgoV+Pb")) then
if _vjc.Brightness < -0.3 then
_vjc.Brightness = 0
end
if _vjc.TintColor.R < 0.1 and _vjc.TintColor.G < 0.1 and _vjc.TintColor.B < 0.1 then
_vjc.TintColor = Color3.new(1, 1, 1)
end
end
end
end)
pcall(function()
for _vjd, _vje in _v3:GetChildren() do
if _vje:IsA(_pguo("/C9B5f/9cgw=")) then
local _vjf = _vje.Color
if _vjf and _vjf.R < 0.05 and _vjf.G < 0.05 and _vjf.B < 0.05 and _vje.Transparency ~= 1 then
_vje.Transparency = 1
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
local _vjg = _v4.sleepGui
if _vjg and _vjg.Parent then
pcall(function()
if _vjg:IsA(_pguo("7S1A5cryRw3X")) and _vjg.Enabled then _vjg.Enabled = false end
local _vjh = _vjg:FindFirstChild(_pguo("+DxT7co="))
if _vjh then
if _vjh.Visible then _vjh.Visible = false end
if _vjh:IsA(_pguo("+Ttbz832ZRvK")) and _vjh.BackgroundTransparency < 1 then _vjh.BackgroundTransparency = 1 end
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
_v4.weatherCtrl = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_pguo("6StT9Mf5cjvRIEbywPBsHcw="))
end)
return _v4.weatherCtrl
end
function _v4.isNightHour(_vji)
return _vji >= 20 or _vji <= 5
end
function _v4.timePresetFor(_vjj)
if _v4.isNightHour(_vjj) then return _pguo("8CdV6Ns=") end
if _vjj < 8 then return _pguo("7Ttc8sbvZQ==") end
if _vjj >= 18 then return _pguo("7Ttc88ro") end
return _pguo("+i9L")
end
function _v4.refreshCustomTime()
task.spawn(function()
local _vjk = _v4.getWeatherController()
if not (_vjk and _v4.customTime) then return end
pcall(function() _vjk:ApplyLightingTransition(0, true) end)
pcall(function() _vjk:ApplyRenderClockTime(_v4.customTimeHour, _v4.timePresetFor(_v4.customTimeHour)) end)
end)
end
function _v4.setCustomTime(_vjl)
_v4.customTime = _vjl
task.spawn(_v4.applyCustomTime, _vjl)
end
function _v4.applyCustomTime(_vjm)
local _vjn = _v4.getWeatherController()
if not _vjn then
pcall(function() _v4.Hub:Notify(_pguo("/TtB9MDxICzXI1e6j+tlGcomV/KP/28Wyjxd7MP5cljLIEDlzv9oGdwiV6BNHJRY3SJd48S8bxbSNx6gw/VnEMonXOeP6W4b1i9c58r4"), 6) end)
return
end
if _vjm then
if not _v4.wcOrig then
_v4.wcOrig = {
IsArtificialNight = _vjn.IsArtificialNight,
GetSimulationClockTime = _vjn.GetSimulationClockTime,
GetDesiredTransitionType = _vjn.GetDesiredTransitionType,
}
end
_vjn.IsArtificialNight = function() return _v4.isNightHour(_v4.customTimeHour) end
_vjn.GetSimulationClockTime = function() return _v4.customTimeHour end
_vjn.GetDesiredTransitionType = function() return _v4.timePresetFor(_v4.customTimeHour) end
_v4.refreshCustomTime()
elseif _v4.wcOrig then
_vjn.IsArtificialNight = _v4.wcOrig.IsArtificialNight
_vjn.GetSimulationClockTime = _v4.wcOrig.GetSimulationClockTime
_vjn.GetDesiredTransitionType = _v4.wcOrig.GetDesiredTransitionType
_v4.wcOrig = nil
pcall(function() _vjn:ApplyLightingTransition(0, true) end)
end
end
pcall(function()
_v1:BindToRenderStep(_pguo("7hZtw9rvdBfTGlvtyg=="), Enum.RenderPriority.Last.Value, function()
if _v4.customTime and not _v4.UNLOADED then
pcall(function() _vip.ClockTime = _v4.customTimeHour end)
end
end)
end)
_v4.FULLBRIGHT = false
do
local _vjo = nil
_v4.enableFullbright = function()
if _vjo then return end
_vjo = {
Brightness = _vip.Brightness,
Ambient = _vip.Ambient,
OutdoorAmbient = _vip.OutdoorAmbient,
GlobalShadows = _vip.GlobalShadows,
FogEnd = _vip.FogEnd,
ExposureCompensation = _vip.ExposureCompensation,
}
end
_v4.restoreFullbright = function()
if not _vjo then return end
pcall(function()
_vip.Brightness = _vjo.Brightness
_vip.Ambient = _vjo.Ambient
_vip.OutdoorAmbient = _vjo.OutdoorAmbient
_vip.GlobalShadows = _vjo.GlobalShadows
_vip.FogEnd = _vjo.FogEnd
_vip.ExposureCompensation = _vjo.ExposureCompensation
end)
_vjo = nil
end
pcall(function()
_v1:BindToRenderStep(_pguo("7hZtxtrwbBrMJ1Xo2w=="), Enum.RenderPriority.Last.Value + 1, function()
if _v4.FULLBRIGHT and not _v4.UNLOADED then
pcall(function()
_vip.Brightness = 2
_vip.Ambient = Color3.fromRGB(190, 190, 190)
_vip.OutdoorAmbient = Color3.fromRGB(190, 190, 190)
_vip.GlobalShadows = false
_vip.FogEnd = 1e9
_vip.ExposureCompensation = 0.15
for _vjp, _vjq in ipairs(_vip:GetChildren()) do
if _vjq:IsA(_pguo("/zpf79zsaB3MKw==")) and _vjq.Density > 0.3 then _vjq.Density = 0.3 end
end
end)
end
end)
end)
end
_v4.NO_WEATHER = false
_v4.weatherCtrl = nil
function _v4.getWeatherController()
if _v4.weatherCtrl then return _v4.weatherCtrl end
local ok, wc = pcall(function()
local _vjr = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
return _v4.req(_vjr:WaitForChild(_pguo("7i9R6877ZQs=")):WaitForChild(_pguo("9SBb9A=="))).GetController(_pguo("6StT9Mf5cjvRIEbywPBsHcw="))
end)
if ok and wc then _v4.weatherCtrl = wc end
return _v4.weatherCtrl
end
function _v4.applyNoWeather(_vjs)
task.spawn(function()
local _vjt = _v4.getWeatherController()
if not _vjt then return end
pcall(function()
if _vjs then
local _vju = (_vjt.transitionPeriod and _vjt.transitionPeriod.Period)
or game:GetService(_pguo("8idV6Nv1bh8=")):GetAttribute(_pguo("6idf5eb4")) or _pguo("+i9L")
_vjt.weatherEnabled = true
if _vjt.ChangeTransition then _vjt:ChangeTransition(_pguo("/SJX4d0="), _vju, 0) end
if _vjt.CleanupEffects then _vjt:CleanupEffects() end
_vjt.weatherEnabled = false
else
_vjt.weatherEnabled = true
if _vjt.TransitionToCurrent then _vjt:TransitionToCurrent() end
end
end)
end)
end
_v4.addStep(30, function()
if not _v4.NO_WEATHER then return end
local _vjv = _v4.weatherCtrl
if _vjv and _vjv.weatherEnabled then pcall(_v4.applyNoWeather, true) end
end)
_v4.NO_FOG = false
do
local _vjw = nil
_v4.enableNoFog = function()
if _vjw then return end
_vjw = { FogEnd = _vip.FogEnd, FogStart = _vip.FogStart, atmos = {}, dof = {} }
pcall(function()
for _vjx, _vjy in ipairs(_vip:GetChildren()) do
if _vjy:IsA(_pguo("/zpf79zsaB3MKw==")) then
_vjw.atmos[_vjy] = { Density = _vjy.Density, Haze = _vjy.Haze }
elseif _vjy:IsA(_pguo("+itC9MfTZj7XK17k6vpmHd06")) then
_vjw.dof[_vjy] = _vjy.Enabled
end
end
local _vjz = workspace.CurrentCamera
for _vk0, _vk1 in ipairs(_vjz and _vjz:GetChildren() or {}) do
if _vk1:IsA(_pguo("+itC9MfTZj7XK17k6vpmHd06")) then _vjw.dof[_vk1] = _vk1.Enabled end
end
end)
end
_v4.restoreNoFog = function()
if not _vjw then return end
pcall(function()
_vip.FogEnd = _vjw.FogEnd
_vip.FogStart = _vjw.FogStart
end)
for _vk2, _vk3 in pairs(_vjw.atmos) do
pcall(function()
if _vk2.Parent then _vk2.Density = _vk3.Density; _vk2.Haze = _vk3.Haze end
end)
end
for _vk4, _vk5 in pairs(_vjw.dof) do
pcall(function() if _vk4.Parent then _vk4.Enabled = _vk5 end end)
end
_vjw = nil
end
pcall(function()
_v1:BindToRenderStep(_pguo("7hZtzsDabx8="), Enum.RenderPriority.Last.Value + 2, function()
if not _v4.NO_FOG or _v4.UNLOADED then return end
pcall(function()
if _vip.FogEnd < 1e6 then _vip.FogEnd = 1e6 end
if _vip.FogStart ~= 0 then _vip.FogStart = 0 end
for _vk6, _vk7 in ipairs(_vip:GetChildren()) do
if _vk7:IsA(_pguo("/zpf79zsaB3MKw==")) then
if _vk7.Density ~= 0 then _vk7.Density = 0 end
if _vk7.Haze ~= 0 then _vk7.Haze = 0 end
elseif _vk7:IsA(_pguo("+itC9MfTZj7XK17k6vpmHd06")) and _vk7.Enabled then
_vk7.Enabled = false
end
end
local _vk8 = workspace.CurrentCamera
for _vk9, _vka in ipairs(_vk8 and _vk8:GetChildren() or {}) do
if _vka:IsA(_pguo("+itC9MfTZj7XK17k6vpmHd06")) and _vka.Enabled then _vka.Enabled = false end
end
end)
end)
end)
end
_v4.VIM = game:GetService(_pguo("6CdA9Nr9bDHQPkf04v1uGdkrQA=="))
local _vkb = nil
_v4.AG_UIS = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
local _vkc = true
table.insert(_v2l, _v4.AG_UIS.WindowFocused:Connect(function() _vkc = true end))
table.insert(_v2l, _v4.AG_UIS.WindowFocusReleased:Connect(function() _vkc = false end))
local _vkd = _v4.getLocalPhysicsRoot
_v4.AG_SPEED = 16
_v4.AG_TURN_RATE = math.rad(70)
function _v4.startAutoGrow()
if _vkb then return end
_vkb = task.spawn(function()
local _vke = math.random() < 0.5 and Enum.KeyCode.A or Enum.KeyCode.D
local _vkf = (_vke == Enum.KeyCode.A) and 1 or -1
local _vkg = false
local _vkh = _v4.AG_SPEED
local _vki = _v4.AG_TURN_RATE * _vkf
local _vkj = 1
local _vkk, _vkl
local function _vkm()
if not _vkg then return end
_vkg = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, _vke, false, game) end)
end
while _v4.AUTO_GROW and not _v4.UNLOADED do
local _vkn = task.wait()
if _vkn <= 0 then _vkn = 1 / 60 end
local _vko = _vkd()
if _vkc then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(true, _vke, false, game) end)
_vkg = true
if _vko then
pcall(function()
local _vkp = _vko.CFrame.LookVector
local _vkq = Vector3.new(_vkp.X, 0, _vkp.Z)
if _vkq.Magnitude > 0.01 then
local _vkr = math.atan2(_vkq.X, _vkq.Z)
if _vkl then
local _vks = _vkr - _vkl
if _vks > math.pi then _vks = _vks - 2 * math.pi
elseif _vks < -math.pi then _vks = _vks + 2 * math.pi end
local _vkt = _vks / _vkn
if math.abs(_vkt) > 0.05 then _vki = _vkt end
end
_vkl = _vkr
end
if _vkk then
local _vku = _vko.Position
local _vkv = Vector3.new(_vku.X - _vkk.X, 0, _vku.Z - _vkk.Z).Magnitude
local _vkw = _vkv / _vkn
if _vkw > 1 then _vkh = _vkw end
end
_vkk = _vko.Position
local _vkx = _v2.Character and _v2.Character:GetAttribute(_pguo("7S1T7Mo="))
if type(_vkx) == _pguo("0Dtf4sru") and _vkx > 0 then _vkj = _vkx end
end)
end
else
_vkm()
_vkk, _vkl = nil, nil
if _vko and not _vko.Anchored then
pcall(function()
local _vky, _vkz = _vki, _vkh
local _vl0 = _v2.Character and _v2.Character:GetAttribute(_pguo("7S1T7Mo="))
if type(_vl0) == _pguo("0Dtf4sru") and _vl0 > 0 and _vkj > 0 then
local _vl1 = _vkj / _vl0
_vky = _vki * _vl1
_vkz = _vkh * _vl1
end
local _vl2 = _vko.CFrame.LookVector
local _vl3 = Vector3.new(_vl2.X, 0, _vl2.Z)
if _vl3.Magnitude < 0.01 then _vl3 = Vector3.new(0, 0, 1) end
_vl3 = _vl3.Unit
local _vl4 = _vky * _vkn
local _vl5, _vl6 = math.cos(_vl4), math.sin(_vl4)
local _vl7 = Vector3.new(_vl3.X * _vl5 + _vl3.Z * _vl6, 0, -_vl3.X * _vl6 + _vl3.Z * _vl5)
local _vl8 = _vko.Position
_vko.CFrame = CFrame.lookAt(_vl8, _vl8 + _vl7)
local _vl9 = _vko.AssemblyLinearVelocity
_vko.AssemblyLinearVelocity = Vector3.new(_vl7.X * _vkz, _vl9.Y, _vl7.Z * _vkz)
end)
end
end
end
_vkm()
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, _vke, false, game) end)
_vkb = nil
end)
end
function _v4.stopAutoGrow()
_v4.AUTO_GROW = false
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.V, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.A, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.D, false, game) end)
pcall(function()
local _vla = _vkd()
if _vla and not _vla.Anchored then
local _vlb = _vla.AssemblyLinearVelocity
_vla.AssemblyLinearVelocity = Vector3.new(0, _vlb.Y, 0)
end
end)
_vkb = nil
end
_v4.WATER_RS = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local _vlc = _v4.WATER_RS:FindFirstChild(_pguo("7Ctf79v5RQ7bIEbz"))
local _vld = _vlc and _vlc:FindFirstChild(_pguo("7CtC7Mb/YSvXKVzhww=="))
_v4.ReplicaSetRemote = _vlc and _vlc:FindFirstChild(_pguo("7CtC7Mb/YSvbOg=="))
local _vle = nil
_v4.cleanliness = {}
_v4.waterCur = {}
_v4.waterMax = {}
if _v4.ReplicaSetRemote then
table.insert(_v2l, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_vlf, _vlg, _vlh)
if typeof(_vlg) ~= _pguo("yi9Q7Mo=") then return end
if _vlg[1] == _pguo("/SFc89rxYRrSK3bh2/0=") then
_vle = _vlf
elseif _vlg[1] == _pguo("7TpT9Nw=") and _vlg[2] == _pguo("/CJX5cvabwrbLVPz2w==") then
_v4.bleedForecast[_vlf] = (typeof(_vlh) == _pguo("0Dtf4sru") and _vlh) or 0
elseif _vlg[1] == _pguo("7TpT9Nw=") and _vlg[2] == _pguo("7TpT7cbyYQ==") then
if typeof(_vlh) == _pguo("0Dtf4sru") then _v4.staminaCur[_vlf] = _vlh end
elseif _vlg[1] == _pguo("8y9K09v9dAs=") and _vlg[2] == _pguo("7TpT7cbyYQ==") then
if typeof(_vlh) == _pguo("0Dtf4sru") then _v4.staminaMax[_vlf] = _vlh end
elseif _vlg[1] == _pguo("7TpT9Nw=") and _vlg[2] == _pguo("9yBU5czoaRfQ") then
if typeof(_vlh) == _pguo("0Dtf4sru") then _v4.infectCur[_vlf] = _vlh end
elseif _vlg[1] == _pguo("7TpT9Nw=") and _vlg[2] == _pguo("6S9G5d0=") then
if typeof(_vlh) == _pguo("0Dtf4sru") then _v4.waterCur[_vlf] = _vlh end
elseif _vlg[1] == _pguo("8y9K09v9dAs=") and _vlg[2] == _pguo("6S9G5d0=") then
if typeof(_vlh) == _pguo("0Dtf4sru") then _v4.waterMax[_vlf] = _vlh end
elseif _vlg[1] == _pguo("/SJX4cHwaRbbPUE=") and _vlg[2] == nil then
if typeof(_vlh) == _pguo("0Dtf4sru") then _v4.cleanliness[_vlf] = _vlh end
elseif _vlg[1] == _pguo("8y9K09v9dAs=") and _vlg[2] == _pguo("+CFd5A==") then
if typeof(_vlh) == _pguo("0Dtf4sru") then _v4.foodMax[_vlf] = _vlh end
elseif _vlg[1] == _pguo("7TpT9Nw=") and _vlg[2] == _pguo("+CFd5A==") then
if typeof(_vlh) == _pguo("0Dtf4sru") then _v4.foodCur[_vlf] = _vlh end
end
end))
end
_v4.ReplicaDestroyRemote = _vlc and _vlc:FindFirstChild(_pguo("7CtC7Mb/YTzbPUbywOU="))
if _v4.ReplicaDestroyRemote then
table.insert(_v2l, _v4.ReplicaDestroyRemote.OnClientEvent:Connect(function(_vli)
_v4.bleedForecast[_vli] = nil
_v4.staminaCur[_vli] = nil; _v4.staminaMax[_vli] = nil
_v4.infectCur[_vli] = nil; _v4.foodSeenMax[_vli] = nil; _v4.waterSeenMax[_vli] = nil
_v4.foodCur[_vli] = nil; _v4.foodMax[_vli] = nil; _v4.waterCur[_vli] = nil; _v4.waterMax[_vli] = nil
_v4.cleanliness[_vli] = nil
end))
end
local function _vlj()
local _vlk = _v2.Character
if not _vlk then return nil end
local _vll = _vlk:FindFirstChild(_pguo("7CtC7Mb/YTrXIFY="))
return _vll and _vll.Value or nil
end
function _v4.readWaterStat()
local ok, cur, max = pcall(function()
local _vlm = _v2.PlayerGui.MainHUD.StatsFrame.Water.TextLabel.Text
_vlm = _vlm:gsub(",", "")
local _vln, _vlo = _vlm:match(_pguo("lhUX5IqyXVOXa0GqgLlzUpYVF+SKsl1Tlw=="))
return tonumber(_vln), tonumber(_vlo)
end)
if ok then return cur, max end
return nil, nil
end
function _v4.readFoodStat()
local ok, cur, max = pcall(function()
local function _vlp(_vlq)
if type(_vlq) ~= _pguo("zTpA6cH7") then return nil end
_vlq = _vlq:gsub(",", ""):gsub("%s", "")
local _vlr = _vlq:match(_pguo("5WtWpYHBKw=="))
local _vls = _vlr and tonumber(_vlr)
if not _vls then return nil end
local _vlt = _vlq:sub(-1):lower()
if _vlt == "k" then _vls = _vls * 1e3
elseif _vlt == "m" then _vls = _vls * 1e6
elseif _vlt == "b" then _vls = _vls * 1e9 end
return _vls
end
local _vlu = _v2.PlayerGui.MainHUD.StatsFrame.Food.TextLabel.Text
local _vlv, _vlw = _vlu:match(_pguo("lmAfqYrvKlebPRiogbcp"))
return _vlp(_vlv), _vlp(_vlw)
end)
if ok and cur and max and max > 5 then return cur, max end
return nil, nil
end
function _v4.myFood()
local _vlx = _v2.Character
local _vly = _vlx and _vlx:FindFirstChild(_pguo("7CtC7Mb/YTrXIFY="))
local _vlz = _vly and _vly.Value
if _vlz then
local _vm0, _vm1 = _v4.foodCur[_vlz], _v4.foodMax[_vlz]
if _vm0 and _vm1 then return _vm0, _vm1 end
end
return _v4.readFoodStat()
end
function _v4.myWater()
local _vm2 = _vlj()
if _vm2 then
local _vm3, _vm4 = _v4.waterCur[_vm2], _v4.waterMax[_vm2]
if _vm3 and _vm4 and _vm4 > 0 then return _vm3, _vm4 end
end
return _v4.readWaterStat()
end
function _v4.getConsumptionReplicaId()
if _vle then return _vle end
pcall(function()
if type(_v4.getCC) ~= _pguo("2Dtc49v1bxY=") then return end
local _vm5 = _v4.getCC()
local _vm6 = _vm5 and _vm5.Replica
if _vm6 and _vm6.Id then _vle = _vm6.Id end
end)
return _vle
end
task.spawn(function()
while not _v4.UNLOADED do
pcall(function()
if not _v4.PACK_ESP and not _v4.PACK_LEADER_ESP then return end
local _vm7 = _v4.req(_v4.WATER_RS.Packages.Knit)
local _vm8 = _vm7.GetController(_pguo("7i9R6+zzbgzMIV7syu4="))
local _vm9 = _vm8:GetMyPack()
local _vma = {}
local _vmb = {}
if _vm9 and _vm9.Parent then
for _vmc, _vmd in _vm9.Parent.Children do
local _vme = _vmc.Tags and _vmc.Tags.Name or _pguo("7i9R6w==")
local _vmf = _vmc.Data
if _vmf and _vmf.Members then
local _vmg = #_vmf.Members
local _vmh = _vmf.Leader and tostring(_vmf.Leader) or nil
for _vmd, _vmj in ipairs(_vmf.Members) do
local _vmk = _v0:GetPlayerByUserId(_vmj[1])
if _vmk then
local _vml = _vmh and (_vmk.Name == _vmh or _vmk.DisplayName == _vmh)
_vma[_vmk] = {name = _vme, count = _vmg, isLeader = _vml}
if _vml then _vmb[_vmk] = _vme end
end
end
end
end
else
for _vmm, _vmn in ipairs(_v0:GetPlayers()) do
if _vmn:GetAttribute(_pguo("9z177v/9YxM=")) then
_vma[_vmn] = {name = "", count = 0, isLeader = false}
end
end
end
_v4.packMembers = _vma
_v4.packLeaders = _vmb
end)
task.wait(3)
end
end)
_v4.drinkRay = RaycastParams.new()
_v4.drinkRay.FilterType = Enum.RaycastFilterType.Include
_v4.drinkRay.FilterDescendantsInstances = { workspace.Terrain }
function _v4.headOverWater()
local _vmo = _v4.getCS and _v4.getCS()
if _vmo and _vmo.FoundWater ~= nil then
if _vmo.FoundWater ~= true then return false end
local _vmp = tonumber(_vmo.WaterLevel)
local _vmq
pcall(function() _vmq = _v4.getLocalPhysicsRoot() end)
if _vmp and _vmq and _vmq.Position then
local _vmr = 6
pcall(function()
local _vms = _vmo.Alignment
local _vmt = (_vms.RideHeight or 0) + (_vms.BodyHeightIncrease or 0)
if _vmt > 0 then _vmr = _vmt end
end)
return _vmq.Position.Y - _vmp <= _vmr + 12
end
return true
end
local _vmu
pcall(function()
local _vmv = _v4.getCS()
local _vmw = _vmv and _vmv.Instances
local _vmx, _vmy = _vmw and _vmw.FrontAttachment, _vmw and _vmw.RootAttachment
if _vmx and _vmy then
local _vmz = _vmx.WorldCFrame
_vmu = workspace:Raycast(_vmz.Position, _vmz.UpVector * -(_vmx.Position.Y - _vmy.Position.Y), _v4.drinkRay)
else
local _vn0 = _v2.Character and _v2.Character:FindFirstChild(_pguo("/CFW+Q=="))
if _vn0 then
_vmu = workspace:Raycast(_vn0.CFrame * Vector3.new(0, 0, -_vn0.Size.Z / 2), Vector3.new(0, -40, 0), _v4.drinkRay)
end
end
end)
return _vmu ~= nil and _vmu.Material == Enum.Material.Water
end
task.spawn(function()
local _vn1 = false
local function _vn2(_vn3)
if _vn1 == _vn3 then return end
_vn1 = _vn3
local _vn4 = _vlj()
if _vn4 and _vld then
pcall(function() _vld:FireServer(_vn4, _pguo("7StGwczoaRfQ"), _pguo("+jxb7sT1bh8="), _vn3) end)
end
end
pcall(function()
local _vn5 = _vlj()
if _vn5 and _vld then _vld:FireServer(_vn5, _pguo("7StGwczoaRfQ"), _pguo("+jxb7sT1bh8="), false) end
end)
while not _v4.UNLOADED do
local _vn6 = 0.5
pcall(function()
local _vn7 = (_v4.AUTO_WATER or _v4.AFK_FARM or _v4.LEGIT_FARM) and _vld and _v4.getConsumptionReplicaId()
local _vn8, _vn9 = _v4.myWater()
local _vna = not (_vn8 and _vn9 and _vn9 > 0) or _vn8 < _vn9 - math.max(_vn9 * 0.002, 0.001)
if _vn7 and _vna and _v4.headOverWater() then
_vn2(true)
_vld:FireServer(_vn7, _pguo("7SdC"))
_v4.drinkSipT = os.clock()
_vn6 = 1 / math.clamp(_v4.SIP_RATE or 1, 0.2, 1 / 0.9)
elseif _vn7 and _vna and _v4.WATER_ANYWHERE and _vlj() then
_vn2(false)
_vld:FireServer(_vlj(), _pguo("7StG0N3zcB3MOks="), _pguo("9z177vj9dB3M"), true)
_vld:FireServer(_vn7, _pguo("7SdC"))
_v4.drinkSipT, _v4.anywhereSips = os.clock(), (_v4.anywhereSips or 0) + 1
_vn6 = 1
else
_vn2(false)
end
end)
task.wait(_vn6)
end
pcall(_vn2, false)
end)
_v4.drinkBad = {}
_v4.drinkWetRay = RaycastParams.new()
_v4.drinkWetRay.FilterType = Enum.RaycastFilterType.Include
_v4.drinkDryRay = RaycastParams.new()
_v4.drinkDryRay.FilterType = Enum.RaycastFilterType.Include
_v4.drinkDryRay.IgnoreWater = true
function _v4.drinkCell(_vnb) return math.floor(_vnb.X / 16) .. ":" .. math.floor(_vnb.Z / 16) end
function _v4.drinkFind(_vnc, _vnd, _vne)
if _v4.drinkSearching then return end
_v4.drinkSearching = true
task.spawn(function()
local _vnf
pcall(function()
local _vng = { workspace.Terrain }
local _vnh = workspace:FindFirstChild(_pguo("6SFA7Ms="))
local _vni = _vnh and _vnh:FindFirstChild(_pguo("8yFH7tv9aRbN"))
if _vni then _vng[2] = _vni end
_v4.drinkWetRay.FilterDescendantsInstances = _vng
_v4.drinkDryRay.FilterDescendantsInstances = _vng
local _vnj = _vnc.Y + 1500
local function _vnk(_vnl, _vnm)
local _vnn = workspace:Raycast(Vector3.new(_vnl, _vnj, _vnm), Vector3.new(0, -2500, 0), _v4.drinkWetRay)
return _vnn and _vnn.Material == Enum.Material.Water and _vnn.Position.Y or nil
end
local _vno = {}
for _vnp, _vnq in ipairs(_v0:GetPlayers()) do
if _vnq ~= _v2 and _vnq.Character then
local _vnr = _v4.getRootOf(_vnq.Character, false)
if _vnr then _vno[#_vno + 1] = _vnr.Position end
end
end
local _vns, _vnt = 0, 20
while _vnt <= _vnd and not _vnf and not _v4.UNLOADED do
local _vnu = math.clamp(math.floor(2 * math.pi * _vnt / 25), 12, 96)
for _vnv = 0, _vnu - 1 do
local _vnw = _vnv * 2 * math.pi / _vnu
local _vnx, _vny = _vnc.X + math.cos(_vnw) * _vnt, _vnc.Z + math.sin(_vnw) * _vnt
_vns = _vns + 1
if _vns % 40 == 0 then task.wait() end
local _vnz = _vnk(_vnx, _vny)
if _vnz then
local _vo0 = Vector3.new(_vnc.X - _vnx, 0, _vnc.Z - _vny).Unit
local _vo1, _vo2, _vo3, _vo4, _vo5 = _vnx, _vny, nil, nil, nil
for _vo6 = 1, 20 do
local _vo7, _vo8 = _vnx + _vo0.X * 4 * _vo6, _vny + _vo0.Z * 4 * _vo6
_vns = _vns + 1
if not _vnk(_vo7, _vo8) then
local _vo9 = workspace:Raycast(Vector3.new(_vo7, _vnj, _vo8), Vector3.new(0, -2500, 0), _v4.drinkDryRay)
if _vo9 then _vo3, _vo4, _vo5 = _vo7, _vo8, _vo9.Position.Y end
break
end
_vo1, _vo2 = _vo7, _vo8
end
if _vo3 then
local _voa = Vector3.new(_vo3, _vo5, _vo4)
local _vob = not _v4.drinkBad[_v4.drinkCell(_voa)]
for _voc, _vod in ipairs(_vno) do
if _vob and (_vod - _voa).Magnitude <= (_vne or 0) then _vob = false end
end
if _vob and _v4.wallCross and _v4.wallCross(_vnc, _voa) then _vob = false end
if _vob then
_vnf = { stand = _voa, water = Vector3.new(_vo1, _vnz, _vo2),
out = Vector3.new(_vo1 - _vo0.X * _v4.DRINK_WADE, _vnz, _vo2 - _vo0.Z * _v4.DRINK_WADE) }
break
end
end
end
end
_vnt = _vnt + ((_vnt < 200) and 20 or 40)
end
end)
_v4.drinkSpot = { from = _vnc, t = os.clock(), stand = _vnf and _vnf.stand, water = _vnf and _vnf.water, out = _vnf and _vnf.out }
_v4.drinkSearching = nil
end)
end
task.spawn(function()
local _voe = game:GetService(_pguo("/SFe7Mr/dBHRIGHl3eppG9s="))
local _vof, _vog, _voh, _voi
pcall(function() _vof = _v4.req(_v4.WATER_RS.Shared.ConsumptionData) end)
_vog = _v4.requireCS()
pcall(function() _voh = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd")) end)
pcall(function() _voi = _v4.req(_v4.WATER_RS.Common.Buffers.ConsumableBuffer) end)
local _voj = _voi and _voi.FOOD or 9
local _vok = _voi and _voi.WATER or 13
local _vol = _voi and _voi.SPAWN or 17
local function _vom()
local _von
pcall(function() _von = _voh and _voh.Replica and _voh.Replica.Id end)
return _von or _vle
end
local _voo = false
local function _vop(_voq)
if _voq == _voo then return end
_voo = _voq
local _vor = _vlj()
if _vor and _vld then
pcall(function() _vld:FireServer(_vor, _pguo("7StGwczoaRfQ"), _pguo("/SFc89rxaRbZ"), _voq) end)
end
end
local function _vos(_vot)
local _vou, _vov = pcall(function() return _vog.Data.Diet.Categories[_vot] ~= nil end)
return _vou and _vov
end
local function _vow()
local _vox
pcall(function() _vox = _vog.Wellbeing.WellbeingReplica.Data.SavableStats.Stats end)
if type(_vox) == _pguo("yi9Q7Mo=") and _vox.Proteins ~= nil then return _vox end
pcall(function() _vox = _vog.Wellbeing.SavableStats end)
if type(_vox) == _pguo("yi9Q7Mo=") and _vox.Proteins ~= nil then return _vox end
return nil
end
local function _voy()
local _voz = _vow()
if not _voz then return nil end
local _vp0 = {}
pcall(function()
for _vp1, _vp2 in ipairs(_vog.Data.Shared.Nutrition) do
if _vp2.Category then _vp0[#_vp0 + 1] = _vp2.Category end
end
end)
if #_vp0 == 0 then
for _vp3, _vp4 in ipairs(_v4.NUTRIENTS) do
if tonumber(_voz[_vp4]) then _vp0[#_vp0 + 1] = _vp4 end
end
end
local _vp5, _vp6
for _vp7, _vp8 in ipairs(_vp0) do
local _vp9 = tonumber(_voz[_vp8])
if _vp9 and (not _vp6 or _vp9 < _vp6) then _vp5, _vp6 = _vp8, _vp9 end
end
return _vp5
end
local function _vpa(_vpb, _vpc)
if not _voh or not _voh.Replica or not _voh.Replica.Data then return nil end
local _vpd = _voh.Replica.Data.ConsumableData
local _vpe = _vpd and (_vpd[tostring(_vpb)] or _vpd[_vpb])
if type(_vpe) ~= _pguo("yi9Q7Mo=") then return nil end
local _vpf = _vpe[_vpc or 1]
if typeof(_vpf) ~= _pguo("3DtU5sru") then return nil end
local _vpg, _vph, _vpi, _vpj = pcall(function()
return buffer.readu32(_vpf, _voj) / 100,
buffer.readu32(_vpf, _vok) / 100,
buffer.readu8(_vpf, _vol) == 1
end)
if _vpg then return _vph, _vpi, _vpj end
return nil
end
local function _vpk(_vpl, _vpm, _vpn)
local _vpo = {}
local _vpp = _vof and _vof.FoliageConsumables and _vof.FoliageConsumables[_vpl]
local _vpq = _vpp and _vpp.Actions
if type(_vpq) == _pguo("yi9Q7Mo=") then
for _vpr, _vps in ipairs(_vpq) do
if type(_vps) == _pguo("yi9Q7Mo=") then
local _vpt, _vpu, _vpv = _vpa(_vpm, _vpr)
local _vpw = false
if _vpt ~= nil then
if not _vpv or (_vpt + (_vpu or 0)) <= 0 then continue end
if _v4.scrapsWanted() and _v4.isScraps(_vpt) then
if not _vpn then continue end
_vpw = true
end
end
_vpo[#_vpo + 1] = { index = _vpr, nutrition = _vps.Nutrition or {},
allowed = _vps.Category ~= nil and _vos(_vps.Category),
category = _vps.Category, food = _vpt or 0, scraps = _vpw }
end
end
end
if #_vpo == 0 then
local _vpx, _vpy, _vpz = _vpa(_vpm, 1)
local _vq0 = _vpx ~= nil and _v4.scrapsWanted() and _v4.isScraps(_vpx)
if _vpx and _vpz and (_vpx + (_vpy or 0)) > 0 and (_vpn or not _vq0) then
_vpo[1] = { index = 1, nutrition = {}, allowed = false, food = _vpx, scraps = _vq0 }
elseif _vpx == nil then
_vpo[1] = { index = 1, nutrition = {}, allowed = false, food = 0 }
end
end
return _vpo
end
local function _vq1(_vq2)
local _vq3 = (type(_vq2) == _pguo("zTpA6cH7") and _vq2:sub(1, 4) == _pguo("8ytT9A==")) and _pguo("8ytT9A==")
or (_vof and _vof.CorpseTypes and _vof.CorpseTypes[_vq2])
local _vq4 = _vq3 and _vof and _vof.CorpseConsumables and _vof.CorpseConsumables[_vq3]
local _vq5 = _vq4 and _vq4.Actions and _vq4.Actions[1]
if _vq5 then
return { index = 1, nutrition = _vq5.Nutrition or {},
allowed = _vq5.Category ~= nil and _vos(_vq5.Category), category = _vq5.Category }
end
return { index = 1, nutrition = {}, allowed = false }
end
local function _vq6(_vq7, _vq8, _vq9)
local _vqa = 22
pcall(function() if _v4.khRange then _vqa = _v4.khRange() end end)
local _vqb = math.max(_vqa * 3, 60)
local _vqc, _vqd, _vqe, _vqf
local _vqg, _vqh, _vqi, _vqj
local _vqk, _vql, _vqm
local _vqn, _vqo, _vqp
local _vqq, _vqr, _vqs
local function _vqt(_vqu, _vqv, _vqw, _vqx, _vqy, _vqz)
if not _vqu then return end
if _v4.feStallSkip and (_v4.feStallSkip[_vqu] or 0) > os.clock() then return end
if _vqz then
if _vqy <= _vqa then
local _vr0 = 2
if _vq8 and _vqw[_vq8] then _vr0 = 0 elseif _vqx then _vr0 = 1 end
if (not _vqg) or _vr0 < _vqg or (_vr0 == _vqg and _vqy < (_vqj or math.huge)) then
_vqg, _vqh, _vqi, _vqj = _vr0, _vqu, _vqv, _vqy
end
end
return
end
if _vqy <= _vqa then
local _vr1 = 2
if _vq8 and _vqw[_vq8] then _vr1 = 0 elseif _vqx then _vr1 = 1 end
if (not _vqc) or _vr1 < _vqc or (_vr1 == _vqc and _vqy < (_vqf or math.huge)) then
_vqc, _vqd, _vqe, _vqf = _vr1, _vqu, _vqv, _vqy
end
end
if not _vqs or _vqy < _vqs then _vqq, _vqr, _vqs = _vqu, _vqv, _vqy end
if _vqy <= _vqb then
if _vqx and (not _vqp or _vqy < _vqp) then _vqn, _vqo, _vqp = _vqu, _vqv, _vqy end
if _vq8 and _vqw[_vq8] and (not _vqm or _vqy < _vqm) then _vqk, _vql, _vqm = _vqu, _vqv, _vqy end
end
end
local _vr2 = {}
for _vr3, _vr4 in ipairs(_voe:GetTagged(_pguo("/SFc89rxYRrSK3Tvw/VhH9s="))) do
local _vr5, _vr6 = _v4.foodSpot(_vr4)
if _vr5 then
local _vr7 = (_vr5 - _vq7).Magnitude
if _vr7 <= _vqb then
local _vr8 = _vpk(_vr4.Name, _vr6, true)
for _vr3, _vra in ipairs(_vr8) do _vqt(tonumber(_vr6), _vra.index, _vra.nutrition, _vra.allowed, _vr7, _vra.scraps) end
else
_vr2[#_vr2 + 1] = { tagged = _vr4, id = _vr6, d = _vr7 }
end
end
end
if _voh and _voh.CorpseData then
for _vrb, _vrc in pairs(_voh.CorpseData) do
local _vrd = _vrc and _vq1(_vrc.Name)
local _vre = _vrd and _vrc.Root
if _vre then
local _vrf
pcall(function() _vrf = _vre:IsA(_pguo("/C9B5f/9cgw=")) and _vre.Position or _vre:GetPivot().Position end)
local _vrg = _vpa(tonumber(_vrb), _vrd.index)
if _vrf then
_vqt(tonumber(_vrb), _vrd.index, _vrd.nutrition, _vrd.allowed, (_vrf - _vq7).Magnitude,
_vrg ~= nil and _v4.LEAVE_SCRAPS and _v4.isScraps(_vrg))
end
end
end
end
if #_vr2 > 0 and not (_vqs and _vqs <= _vqb) then
table.sort(_vr2, function(_vrh, _vri) return _vrh.d < _vri.d end)
for _vrj, _vrk in ipairs(_vr2) do
if _vqs and _vrk.d >= _vqs then break end
local _vrl = _vpk(_vrk.tagged.Name, _vrk.id)
if #_vrl > 0 then
for _vrj, _vrn in ipairs(_vrl) do _vqt(tonumber(_vrk.id), _vrn.index, _vrn.nutrition, _vrn.allowed, _vrk.d) end
break
end
end
end
if _vqd then return _vqd, _vqe end
if _vq9 then return nil end
if _vqh then return _vqh, _vqi, true end
if _vqk then return _vqk, _vql end
if _vqn then return _vqn, _vqo end
return _vqq, _vqr
end
local function _vro(_vrp)
local _vrq, _vrr
for _vrs, _vrt in ipairs(_voe:GetTagged(_pguo("/SFc89rxYRrSK3Tvw/VhH9s="))) do
local _vru, _vrv = _v4.foodSpot(_vrt)
if _vru then
local _vrw = (_vru - _vrp).Magnitude
if not _vrr or _vrw < _vrr then _vrq, _vrr = tonumber(_vrv), _vrw end
end
end
return _vrq, 1
end
_v4.foodSpotCache = setmetatable({}, { __mode = "k" })
function _v4.foodSpot(_vrx)
local _vry = _v4.foodSpotCache[_vrx]
if _vry then return _vry.pos, _vry.id end
local _vrz = _vrx:GetAttribute("ID")
if not _vrz then return nil, nil end
local _vs0
pcall(function() _vs0 = _vrx:GetPivot().Position end)
if not _vs0 then return nil, _vrz end
_v4.foodSpotCache[_vrx] = { pos = _vs0, id = _vrz }
return _vs0, _vrz
end
local _vs1, _vs2, _vs3 = nil, nil, 0
local _vs4 = false
local _vs5 = 0.5
_v4.afkConsumeId = _vom
_v4.afkBufCheck = _vpa
function _v4.afkPickFood(_vs6, _vs7, _vs8)
local _vs9 = 22
pcall(function() if _v4.khRange then _vs9 = _v4.khRange() end end)
local _vsa = (_vs8 and _vs8.avoid) or _v4.AFK_FARM_AVOID or 200
local _vsb = _voy()
local _vsc, _vsd = {}, {}
pcall(function()
local _vse = _vow()
if not _vse then return end
local _vsf = {}
pcall(function()
for _vsg, _vsh in ipairs(_vog.Data.Shared.Nutrition) do _vsf[#_vsf + 1] = _vsh.Category end
end)
if #_vsf == 0 then _vsf = _v4.NUTRIENTS end
for _vsi, _vsj in ipairs(_vsf) do
local _vsk = _vsj and tonumber(_vse[_vsj])
if _vsk and _vsk <= 99 then _vsc[_vsj] = true end
if _vsk and _vsk <= 90 then _vsd[_vsj] = true end
end
end)
local function _vsl(_vsm, _vsn)
for _vso in pairs(_vsn) do
if (tonumber(_vsm[_vso]) or 0) >= 0.5 then return true end
end
return false
end
local _vsp = math.max(150, _vs9 * 6)
local _vsq, _vsr = _vs8 and _vs8.yWeight, (_vs8 and _vs8.feetY) or _vs6.Y
local function _vss(_vst)
if not _vsq then return (_vst - _vs6).Magnitude end
local _vsu = Vector3.new(_vst.X - _vs6.X, 0, _vst.Z - _vs6.Z).Magnitude
return _vsu + math.max(0, math.abs(_vst.Y - _vsr) - 6) * _vsq
end
local _vsv
pcall(function() _vsv = _v2.Character:GetAttribute(_pguo("6jdC5Q==")) end)
local _vsw = RaycastParams.new()
_vsw.FilterType = Enum.RaycastFilterType.Include
_vsw.FilterDescendantsInstances = { workspace.Terrain }
local function _vsx(_vsy)
local _vsz = workspace:Raycast(Vector3.new(_vsy.X, 5000, _vsy.Z), Vector3.new(0, -12000, 0), _vsw)
return _vsz and _vsz.Position.Y
end
local _vt0 = {}
if _vsa > 0 then
for _vt1, _vt2 in ipairs(game.Players:GetPlayers()) do
if _vt2 ~= _v2 and _vt2.Character then
local _vt3 = _v4.getRootOf(_vt2.Character, false)
if _vt3 then _vt0[#_vt0 + 1] = _vt3.Position end
end
end
end
local _vt4, _vt5, _vt6, _vt7, _vt8
local function _vt9(_vta, _vtb, _vtc, _vtd, _vte, _vtf, _vtg, _vth)
if not _vta or not _vtf then return end
if _vs7 and _vs7[_vta] then return end
if _vs8 and _vs8.maxDist and _vte > _vs8.maxDist then return end
for _vti, _vtj in ipairs(_vt0) do
if (_vtj - _vtf).Magnitude <= _vsa then return end
end
local _vtk = -_vte
local _vtl = _vth == _pguo("0Tpa5d0=")
if _vtd and _vsl(_vtc, _vsc) and (not _vtl or _vsl(_vtc, _vsd)) then
_vtk = _vtk + ((_vth == _pguo("0ytT9A==")) and 40000 or _vtl and 20000 or 30000)
if _vsb and (tonumber(_vtc[_vsb]) or 0) >= 0.5 then _vtk = _vtk + 5000 end
elseif _vth == _pguo("0ytT9A==") then
_vtk = _vtk + ((_vte <= _vsp) and 10000 or -50000)
elseif _vtl then
_vtk = _vtk - 100000
end
if not _vt7 or _vtk > _vt7 then
if _v4.wallCross and _v4.wallCross(_vs6, _vtf) then return end
if _vs8 and _vs8.reach and not _vs8.reach(_vtf, _vtg) then return end
_vt4, _vt5, _vt6, _vt7, _vt8 = _vta, _vtb, _vtf, _vtk, _vtg
end
end
for _vtm, _vtn in ipairs(_voe:GetTagged(_pguo("/SFc89rxYRrSK3Tvw/VhH9s="))) do
local _vto, _vtp = _v4.foodSpot(_vtn)
if _vto then
local _vtq = _vss(_vto)
local _vtr = _vpk(_vtn.Name, _vtp)
for _vtm, _vtt in ipairs(_vtr) do
_vt9(tonumber(_vtp), _vtt.index, _vtt.nutrition, _vtt.allowed, _vtq, _vto, false,
_v4.OTHER_FOOD[_vtt.category or ""] and _pguo("0Tpa5d0=") or _pguo("ziJT7ts="))
end
end
end
if (_vs8 and _vs8.meat or (not _vs8 and _v4.dinoEatsMeat())) and _voh and _voh.CorpseData then
for _vtu, _vtv in pairs(_voh.CorpseData) do
if _vtv and tostring(_vtv.Name) ~= tostring(_vsv) then
local _vtw = _vq1(_vtv.Name)
local _vtx = _vtw and _vtv.Root
if _vtx then
local _vty
pcall(function() _vty = _vtx:IsA(_pguo("/C9B5f/9cgw=")) and _vtx.Position or _vtx:GetPivot().Position end)
if _vty then
local _vtz = _vsx(_vty)
local _vu0 = _vtz ~= nil and _vty.Y < _vtz - _vs9
local _vu1, _vu2, _vu3 = _vpa(tonumber(_vtu), _vtw.index)
if not _vu0 and _vu1 ~= nil and _vu3 and (_vu1 + (_vu2 or 0)) > 0 then
_vt9(tonumber(_vtu), _vtw.index, _vtw.nutrition, _vtw.allowed, _vss(_vty), _vty, true,
_v4.OTHER_FOOD[_vtw.category or ""] and _pguo("0Tpa5d0=") or _pguo("0ytT9A=="))
end
end
end
end
end
end
return _vt4, _vt5, _vt6, _vt8
end
local _vu4 = true
local _vu5 = 0
local _vu6 = nil
local _vu7 = nil
local _vu8 = 3
local _vu9, _vua = false, false
while not _v4.UNLOADED do
pcall(function()
local _vub = _vom()
local _vuc = true
if _v4.EAT_WHEN_HUNGRY then
local _vud, _vue = _v4.myFood()
if _vud and _vue and _vue > 0 then
if _vu4 then
if _vud >= _vue - _v4.foodGap(_vue, 0.05) then _vu4 = false end
elseif _vud <= _vue - _v4.foodGap(_vue, 1) then
_vu4 = true
end
_vuc = _vu4
end
end
local _vuf = _v4.LEGIT_FARM and _v4.lfEat
local _vug = false
if _v4.LEGIT_FARM and not _vuf then
local _vuh, _vui = _v4.myFood()
_vug = _vuh ~= nil and _vui ~= nil and _vuh < _vui
end
if (_v4.FORCE_EAT or _vuf or _vug) and not _v4.AFK_FARM and not (_v4.LEGIT_FARM and not _vuf and not _vug) and not _v4.CLEAN_BREAK
and _vld and _vub and _vuc then
local _vuj = os.clock()
local _vuk = _vu5 >= _vu8
if _vuf and (_vs1 ~= _vuf.id or _vs2 ~= _vuf.idx) then
_vs1, _vs2, _vs4 = _vuf.id, _vuf.idx, false
_vu5 = 0; _vu6 = nil; _vu7 = _vuf.id
end
if not _vuf and (_vuj - _vs3 >= _vs5 or not _vs1 or _vuk) then
if _vuk then
if _vu7 then
_v4.feStallSkip = _v4.feStallSkip or {}
_v4.feStallSkip[_vu7] = os.clock() + 60
end
_vu5 = 0; _vu6 = nil; _vu7 = nil
end
_vs3 = _vuj
local _vul = _v2.Character
local _vum = _vul and (_vul:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA==")) or _vul:FindFirstChild(_pguo("/CFW+Q=="))
or _vul:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw=")))
if _vum then
local _vun, _vuo, _vup
if _vof and _vog then
_vun, _vuo, _vup = _vq6(_vum.Position, _voy(), _vug)
else
_vun, _vuo = _vro(_vum.Position)
end
_vs4 = _vup == true
if _vun then
_vs1, _vs2 = _vun, _vuo
if _vun ~= _vu7 then
_vu5 = 0; _vu6 = nil; _vu7 = _vun
end
else
_vs1, _vs2 = nil, nil
end
end
end
for _vuq = 1, 1 do
local _vur, _vus = _vs1, _vs2
if _vur and type(_vur) == _pguo("0Dtf4sru") and _vur >= 0 and _vur < 4294967296 then
local _vut, _vuu, _vuv = _vpa(_vur, _vus)
local _vuw = _vut and (_vut + (_vuu or 0)) or nil
local _vux = false
pcall(function()
_vux = _voh ~= nil and _voh.CorpseData ~= nil
and (_voh.CorpseData[_vur] or _voh.CorpseData[tostring(_vur)]) ~= nil
end)
local _vuy = (_vuf and not _vux and not _vuf.meat and (_v4.LF_SCRAPS or _v4.LEAVE_SCRAPS))
or (not _vuf and _v4.LEAVE_SCRAPS and not _vs4)
if _vut ~= nil and ((not _vuv or _vuw <= 0) or (_vuy and _v4.isScraps(_vut))) then
_vs1 = nil
_vu9 = true
else
local _vuz = buffer.create(5)
buffer.writeu32(_vuz, 0, math.floor(_vur))
buffer.writeu8(_vuz, 4, _vus or 1)
_vld:FireServer(_vub, _pguo("/CdG5Q=="), _vuz)
if _vuf then _v4.lfBiteN = (_v4.lfBiteN or 0) + 1 end
if _vut then
if _vu6 and _vu7 == _vur and _vut < _vu6 then
_v4.noteBiteDrop(_vu6 - _vut)
end
if _vu6 and _vut >= _vu6 and _vu7 == _vur then
_vu5 = _vu5 + 1
else
_vu5 = 0
end
_vu6 = _vut
_vu7 = _vur
end
end
end
end
end
if _voo then _vop(false) end
end)
local _vv0 = _vu9 and not _vua
_vua, _vu9 = _vv0, false
if _vv0 then
task.wait(0.1)
else
task.wait(_v4.FAST_EAT and (1 / math.clamp(_v4.FAST_EAT_RATE or 1.25, 0.2, 1.25)) or 1.6)
end
end
end)
_v4.CLEAN_AT = 60
_v4.CLEAN_STALL = 75
_v4.CLEAN_FULL = 100
_v4.CLEAN_BREAK = false
function _v4.cleanBreakEnd(_vv1, _vv2)
if not _v4.CLEAN_BREAK then return end
_v4.CLEAN_BREAK, _v4.cleanBreak = false, nil
_v4.cleanBreakNext = os.clock() + (_vv2 or 0)
_v4.cleanBreakWhy = _vv1
end
task.spawn(function()
local _vv3 = false
local function _vv4(_vv5, _vv6)
if _vv5 == false and _v4.INF_OXYGEN then return end
if _vv5 == _vv3 and not _vv6 then return end
local _vv7 = _vlj()
if not (_vv7 and _vld) then return end
pcall(function() _vld:FireServer(_vv7, _vv5 and _pguo("/SJX4cHwaRbbPUHT2/1yDA==") or _pguo("/SJX4cHwaRbbPUHT2/Nw")) end)
_vv3 = _vv5
end
function _v4.myCleanliness()
local _vv8
pcall(function() _vv8 = _v4.getCS().Wellbeing.SavableStats.Cleanliness end)
if _vv8 == nil then pcall(function() _vv8 = _v4.getCS().Wellbeing.WellbeingReplica.Data.SavableStats.Stats.Cleanliness end) end
local _vv9 = _vlj()
if _vv8 == nil and _vv9 then _vv8 = _v4.cleanliness[_vv9] end
if _vv8 == nil then pcall(function() _vv8 = _v4.getCS().Replica.Data.Cleanliness end) end
return type(_vv8) == _pguo("0Dtf4sru") and _vv8 or nil
end
local function _vva(_vvb)
local _vvc = _v4.AFK_FARM or _v4.LEGIT_FARM
local _vvd = _v2.Character
local _vve = _vvd ~= nil and _vvd.Parent ~= nil
if _vvb and _vvb >= _v4.CLEAN_FULL then
if _v4.CLEAN_BREAK then _v4.cleanBreakEnd(_pguo("3SJX4cE=")) end
return false
end
local _vvf, _vvg
pcall(function()
local _vvh = _v4.getCS().Replica.Data
_vvf, _vvg = _vvh.Stats.Water / _vvh.MaxStats.Water, _vvh.Stats.Food / _vvh.MaxStats.Food
end)
if type(_vvf) == _pguo("0Dtf4sru") and type(_vvg) == _pguo("0Dtf4sru") then
if _v4.CLEAN_BREAK and (_vvf < 0.25 or _vvg < 0.25) then
_v4.cleanBreakEnd(_pguo("yiZb8tzoeVjRPBLo2vJnCsc="), 60)
return false
end
if not _v4.CLEAN_BREAK and (_vvf < 0.4 or _vvg < 0.4) then return false end
end
if _vvc and _vve and _vvb and _vvb < _v4.CLEAN_AT and not _v4.CLEAN_BREAK
and os.clock() >= (_v4.cleanBreakNext or 0) then
_v4.CLEAN_BREAK = true
_v4.cleanBreak = { t = os.clock(), from = _vvb, sent = false, hp = _vvd:GetAttribute(_pguo("9itT7Nv0")) }
pcall(function()
if _v4.Hub then _v4.Hub:Notify((_pguo("/SJX4cG8YgrbL1m6j/9sHd8gXunB+XMLnmtWpYq8LVjKJlegyf1yFZ49RuHB+HNYzTpb7MO8dRbKJ16gzPBlGdBuGvTH+SAf3yNXoMz9bl/KblHsyv1uWMkmW+zKvGUZyidc54Y=")):format(math.floor(_vvb)), 8) end
end)
end
local _vvi = _v4.CLEAN_BREAK and _v4.cleanBreak
if not _vvi then return false end
local _vvj = os.clock()
local _vvk = _vve and _vvd:GetAttribute(_pguo("9itT7Nv0"))
if not _vvi.sent and _vvj - _vvi.t >= 2 then
_vvi.sent, _vvi.lastRise, _vvi.last = true, _vvj, _vvb
_vv4(true, true)
end
if _vvi.sent and _vvb and _vvi.last and _vvb > _vvi.last then _vvi.lastRise = _vvj end
if _vvb then _vvi.last = _vvb end
_v4.lfStatus = _pguo("3SJX4cG8YgrbL1mghw==") .. tostring(_vvb and math.floor(_vvb) or "?") .. "%)"
if not _vvc or not _vve then
_v4.cleanBreakEnd(_pguo("2C9A7Y/vdBfOPlfk"))
elseif type(_vvk) == _pguo("0Dtf4sru") and type(_vvi.hp) == _pguo("0Dtf4sru") and _vvk < _vvi.hp * 0.97 then
_v4.cleanBreakEnd(_pguo("yi9Z6cH7IBzfI1Pnyg=="), 120)
elseif _vvi.sent and _vvj - _vvi.lastRise > _v4.CLEAN_STALL then
if (_vvi.kicks or 0) < 2 then
_vvi.kicks, _vvi.lastRise = (_vvi.kicks or 0) + 1, _vvj
_vv4(true, true)
else
_v4.cleanBreakEnd(_pguo("0CFGoMj5dAzXIFWgzPBlGdArQA=="), 120)
end
elseif _vvj - _vvi.t > 360 then
_v4.cleanBreakEnd(_pguo("yiFd64/obxeeIl3uyA=="), 120)
end
return true
end
local _vvl, _vvm, _vvn = 0, 0, nil
while not _v4.UNLOADED do
if _v4.INF_OXYGEN and _vld then
_vvl = _vvl + 1
_vv4(true, (_vvl % 5) == 0)
_vva(_v4.myCleanliness())
elseif (_v4.AUTO_CLEAN or _v4.AFK_FARM or _v4.LEGIT_FARM) and _vld then
local _vvo = _v4.myCleanliness()
if _vvo and _vvo >= _v4.CLEAN_FULL then
_vv4(false)
_v4.cleanRiseT = os.clock()
_vva(_vvo)
else
_vvm = _vvm + 1
if (_vvo and _vvn and _vvo > _vvn) or not _v4.cleanRiseT then _v4.cleanRiseT = os.clock() end
if not _vva(_vvo) then
_vv4(true, _vvo ~= nil and os.clock() - _v4.cleanRiseT > 40 and _vvm % 60 == 0)
end
end
_vvn = _vvo
elseif _vv3 then
_vv4(false)
end
if _v4.CLEAN_BREAK and not (_v4.AFK_FARM or _v4.LEGIT_FARM) then _v4.cleanBreakEnd(_pguo("2C9A7Y/vdBfOPlfk")) end
task.wait(1.0)
end
_v4.cleanBreakEnd(_pguo("yyBe7874ZRw="))
if _vv3 then
_v4.INF_OXYGEN = false
_vv4(false)
end
end)
_v4.MV_SIDE_MULT, _v4.MV_SIDE_ADD = 1.0, 0
_v4.MV_AIR_MULT = 1.0
_v4.MV_VERT = 150
_v4.MV_WARMUP = 3
_v4.MV_SNAP_WAIT = 3
_v4.MV_TROT_BELOW, _v4.MV_RUN_ABOVE = 0.15, 0.6
_v4.MV_TRIP_N, _v4.MV_TRIP_WINDOW = 3, 120
_v4.GOV_STEP_MAX = 25
_v4.govCommanded, _v4.govCommandT = nil, 0
_v4.mvHist = {}
_v4.mvRunWantT = -math.huge
_v4.mvSnapT = -math.huge
_v4.mvSnaps = {}
function _v4.mvDataSpeeds()
local _vvp = _v2.Character
local _vvq, _vvr = _vvp and _vvp:GetAttribute(_pguo("6jdC5Q==")), _vvp and _vvp:GetAttribute(_pguo("7TpT58o="))
if not (_vvq and _vvr) then return nil end
local _vvs = _v4.mvDataCache
if not (_vvs and _vvs.sp == _vvq) then
_vvs = { sp = _vvq, st = {} }
pcall(function()
for _vvt, _vvu in pairs(_v4.req(_v4.WATER_RS.DinosaurData[_vvq]).GrowthStages) do
local _vvv = _vvu.Movement and _vvu.Movement.Speeds
local _vvw = _vvv and _vvv.Land
local _vvx = _vvv and _vvv.Swim and tonumber(_vvv.Swim.Normal)
if _vvw and tonumber(_vvw.Normal) and tonumber(_vvw.Run) then _vvs.st[tostring(_vvt)] = { _vvw.Normal, _vvw.Run, _vvx or _vvw.Normal } end
end
end)
_v4.mvDataCache = _vvs
end
local _vvy = _vvs.st[tostring(_vvr)]
if not _vvy then return nil end
local _vvz, _vw0, _vw1 = _vvy[1], _vvy[2], _vvy[3]
local _vw2
pcall(function() _vw2 = _v4.liteGrowthOf(_vvr, _vvp:GetAttribute(_pguo("6Stb58fo")), _v4.dinoStageWeights()) end)
local _vw3 = _vw2 and _vw2.NextStage and _vvs.st[_vw2.NextStage]
if _vw3 and _vw2.Delta then
_vvz, _vw0, _vw1 = _vvz + (_vw3[1] - _vvz) * _vw2.Delta, _vw0 + (_vw3[2] - _vw0) * _vw2.Delta, _vw1 + (_vw3[3] - _vw1) * _vw2.Delta
end
return _vvz, _vw0, _vw1
end
function _v4.mvTrotSpeed()
local _vw4 = _v2.Character
local _vw5, _vw6 = _vw4 and _vw4:GetAttribute(_pguo("6jdC5Q==")), _vw4 and _vw4:GetAttribute(_pguo("7TpT58o="))
if not (_vw5 and _vw6) then return nil end
local _vw7 = tostring(_vw5) .. "/" .. tostring(_vw6)
if _v4.mvTrotCache and _v4.mvTrotCache.key == _vw7 then return _v4.mvTrotCache.v end
local _vw8
pcall(function()
local _vw9 = _v4.req(_v4.WATER_RS.DinosaurData[_vw5]).GrowthStages[_vw6]
_vw8 = tonumber(_vw9.Movement.Speeds.Land.Trot)
end)
_v4.mvTrotCache = { key = _vw7, v = _vw8 }
return _vw8
end
_v4.mvWaterRay = RaycastParams.new()
_v4.mvWaterRay.FilterType = Enum.RaycastFilterType.Include
_v4.mvWaterRay.FilterDescendantsInstances = { workspace.Terrain }
_v4.mvWaterRay.IgnoreWater = false
function _v4.mvOverWater()
local _vwa = os.clock()
if _v4.mvWaterT and _vwa - _v4.mvWaterT < 0.1 then return _v4.mvWaterV end
local _vwb = false
pcall(function()
local _vwc = _v4.getCS and _v4.getCS()
if _vwc and (_vwc.IsInWater == true or (_vwc.Replica and _vwc.Replica.Data and _vwc.Replica.Data.IsInWater == true)) then _vwb = true return end
if _vwc and _vwc.Replica and _v4.mvPlat and _v4.mvPlat.Parent == workspace then return end
local _vwd = _v4.getLocalPhysicsRoot()
if _vwd then
local _vwe = workspace:Raycast(_vwd.Position, Vector3.new(0, -3000, 0), _v4.mvWaterRay)
_vwb = _vwe ~= nil and _vwe.Material == Enum.Material.Water
end
end)
_v4.mvWaterT, _v4.mvWaterV = _vwa, _vwb
return _vwb
end
_v4.MV_WATER_EXTRA = 900
function _v4.mvExtend(_vwf, _vwg, _vwh)
local _vwi = os.clock()
if _v4.mvOverWater() then _vwf = math.min(_vwf + (_vwi - _vwg), _vwh) end
return _vwf, _vwi
end
_v4.mvWinFocused = true
pcall(function()
local _vwj = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
table.insert(_v2l, _vwj.WindowFocused:Connect(function() _v4.mvWinFocused = true end))
table.insert(_v2l, _vwj.WindowFocusReleased:Connect(function() _v4.mvWinFocused = false end))
end)
function _v4.mvFocused()
if not _v4.IS_XENO then
local _vwk, _vwl = pcall(function() return isrbxactive() end)
if _vwk and type(_vwl) == _pguo("3CFd7Mr9bg==") then return _vwl end
end
return _v4.mvWinFocused
end
function _v4.mvSpeeds()
local _vwm = _v4.getCS and _v4.getCS()
local _vwn = _vwm and _vwm.Replica and _vwm.Replica.Data
local _vwo, _vwp = _vwn and tonumber(_vwn.ServerSpeed), _vwn and tonumber(_vwn.RunSpeed)
if _vwo and _vwp then
local _vwq = _vwm.Actions
if not (_vwq and (_vwq.Run or _vwq.Sprint)) then
local _vwr = tonumber(_vwn.BaseWalkSpeed) or _vwo
local _vws = _vwq and _vwq.Trot and _v4.mvTrotSpeed()
if _vws and _vwo <= _vws + 0.5 then _vwr = _vws end
_vwo = math.min(_vwo, _vwr)
end
if _v4.mvOverWater() then
local _vwt, _vwu, _vwv = _v4.mvDataSpeeds()
_vwo = math.min(_vwo, _vwv or tonumber(_vwn.BaseWalkSpeed) or _vwo)
end
return _vwo, _vwp
end
local _vww, _vwx, _vwy = _v4.mvDataSpeeds()
if not _vwx then return 1, 1 end
local _vwz = _v4.mvShiftT and _v4.mvFocused()
local _vx0 = _vwz and _vwx or _vww
if _v4.mvOverWater() then _vx0 = math.min(_vx0, _vwy or _vww) end
return _vx0, _vwx
end
function _v4.mvSideCap(_vx1)
local _vx2, _vx3 = _v4.mvSpeeds()
local _vx4, _vx5 = _vx2, os.clock()
for _vx6, _vx7 in ipairs(_v4.mvHist) do
if _vx5 - _vx7[1] <= _v4.MV_WARMUP and _vx7[2] < _vx4 then _vx4 = _vx7[2] end
end
return (_vx1 and _v4.MV_AIR_MULT or _v4.MV_SIDE_MULT) * math.min(_vx4, _vx3) + _v4.MV_SIDE_ADD
end
function _v4.mvHold()
return os.clock() - _v4.mvSnapT < _v4.MV_SNAP_WAIT
end
function _v4.mvWantsRun()
return os.clock() - _v4.mvRunWantT < 3 or (_v4.FLY and not _v4.UNLOADED) or false
end
function _v4.govNext(_vx8, _vx9, _vxa, _vxb)
local _vxc = os.clock()
if _v4.mvHold() then
if _vxc - _v4.mvRunWantT < 1 then _v4.mvRunWantT = _vxc end
local _vxd = _v4.getLocalPhysicsRoot()
local _vxe = (_vxd and _vxd.Parent and _vxd.Position) or _vx8
_v4.govCommanded, _v4.govCommandT = _vxe, _vxc
return _vxe, true
end
local _vxf = _vx9 - _vx8
if _vxf.Magnitude < 0.001 then return _vx9, false end
_vxa = math.min(_vxa or 0.016, 0.1)
local _vxg = Vector3.new(_vxf.X, 0, _vxf.Z)
local _vxh = _vxg.Magnitude
local _vxi = math.abs(_vxf.Y) > _vxh * 0.5 + 0.05
local _vxj, _vxk = _v4.mvSideCap(_vxi), _v4.MV_VERT
if _vxb then _vxj, _vxk = math.min(_vxj, _vxb), math.min(_vxk, _vxb) end
if _vxh > 0.05 then
_v4.mvRunWantT = _vxc
if not _vxi then _v4.mvPlatT = _vxc end
end
local _vxl = math.min(_vxh, _vxj * _vxa, _v4.GOV_STEP_MAX)
local _vxm = math.min(_vxk * _vxa, _v4.GOV_STEP_MAX)
local _vxn = math.clamp(_vxf.Y, -_vxm, _vxm)
local _vxo = _vx8 + Vector3.new(0, _vxn, 0)
if _vxh > 0.001 then _vxo = _vxo + _vxg * (_vxl / _vxh) end
_v4.govCommanded, _v4.govCommandT = _vxo, _vxc
return _vxo, (_vxl < _vxh - 1e-4) or (_vxn ~= _vxf.Y)
end
function _v4.govGlide(_vxp, _vxq, _vxr, _vxs, _vxt, _vxu)
local _vxv = os.clock() + (_vxs or 20)
local _vxw, _vxx = _vxv + _v4.MV_WATER_EXTRA, os.clock()
local _vxy = _vxt or 6
while not _v4.UNLOADED and os.clock() < _vxv do
_vxv, _vxx = _v4.mvExtend(_vxv, _vxx, _vxw)
if not (_vxp and _vxp.Parent) then return false end
local _vxz = _vxp.Position
if (_vxq - _vxz).Magnitude <= _vxy then return true end
local _vy0 = _v4.govNext(_vxz, _vxq, 0.03, _vxr)
if not _v4.mvHold() then
pcall(function()
_vxp.CFrame = _vxu and (CFrame.new(_vy0) * _vxu) or CFrame.new(_vy0)
_vxp.AssemblyLinearVelocity = Vector3.zero
_vxp.AssemblyAngularVelocity = Vector3.zero
end)
end
task.wait(0.03)
end
return (_vxp and _vxp.Parent and (_vxq - _vxp.Position).Magnitude <= _vxy) or false
end
function _v4.mvPlatformStep()
local _vy1 = _v4.mvPlat
local _vy2 = _v4.govCommanded
local _vy3 = not _v4.UNLOADED and _vy2 and os.clock() - (_v4.mvPlatT or -math.huge) < 0.3 and not _v4.mvHold()
if not _vy3 then
if _vy1 and _vy1.Parent then pcall(function() _vy1.Parent = nil end) end
return
end
if not _vy1 then
pcall(function()
_vy1 = Instance.new(_pguo("7i9A9A=="))
_vy1.Name = _pguo("+xR/79n5cijSL0bmwO5t")
_vy1.Anchored, _vy1.CanCollide, _vy1.CanTouch, _vy1.CastShadow = true, true, false, false
_vy1.Transparency = 1
_vy1.Size = Vector3.new(30, 2, 30)
end)
_v4.mvPlat = _vy1
if not _vy1 then return end
end
local _vy4 = 6
pcall(function()
local _vy5 = _v4.getCS().Alignment
local _vy6 = (_vy5.RideHeight or 0) + (_vy5.BodyHeightIncrease or 0)
if _vy6 > 0 then _vy4 = _vy6 end
end)
pcall(function()
local _vy7 = _v4.getLocalPhysicsRoot()
local _vy8 = math.max(30, _vy7 and _vy7.Size.Z * 2 or 0, _vy7 and _vy7.Size.X * 2 or 0)
if _vy1.Size.X ~= _vy8 then _vy1.Size = Vector3.new(_vy8, 2, _vy8) end
_vy1.CFrame = CFrame.new(_vy2.X, _vy2.Y - _vy4 - 1, _vy2.Z)
if _vy1.Parent ~= workspace then _vy1.Parent = workspace end
end)
end
function _v4.mvCleanup()
pcall(function() _v4.mvRunStep(false) end)
if _v4.mvPlat then pcall(function() _v4.mvPlat:Destroy() end) end
_v4.mvPlat = nil
end
function _v4.mvOnSnap()
local _vy9 = os.clock()
if _vy9 - _v4.mvSnapT < 1 then return end
_v4.mvSnapT = _vy9
pcall(function()
local _vya = _v2.Character
if _vya then _vya:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end
end)
if _vy9 - (_v4.govCommandT or 0) > 2 then return end
local _vyb = {}
for _vyc, _vyd in ipairs(_v4.mvSnaps) do if _vy9 - _vyd < _v4.MV_TRIP_WINDOW then _vyb[#_vyb + 1] = _vyd end end
_vyb[#_vyb + 1] = _vy9
_v4.mvSnaps = _vyb
_v4.mvNotice = { n = #_vyb, trip = #_vyb >= _v4.MV_TRIP_N }
end
do
local function _vye(_vyf)
if not _vyf then return end
local _vyg = _vyf:GetAttribute(_pguo("6ite5d/zcgz3Kg=="))
table.insert(_v2l, _vyf:GetAttributeChangedSignal(_pguo("6ite5d/zcgz3Kg==")):Connect(function()
local _vyh = _vyf:GetAttribute(_pguo("6ite5d/zcgz3Kg=="))
if _vyh ~= nil and _vyh ~= _vyg then _vyg = _vyh; _v4.mvOnSnap() end
end))
end
_vye(_v2.Character)
table.insert(_v2l, _v2.CharacterAdded:Connect(_vye))
task.spawn(function()
local _vyi
pcall(function() _vyi = _v4.req(_v4.WATER_RS.Packages.Knit).GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ==")) end)
if _vyi and _vyi.Teleport then
pcall(function() table.insert(_v2l, _vyi.Teleport:Connect(function() _v4.mvOnSnap() end)) end)
end
end)
end
function _v4.mvTrip()
_v4.mvSnaps = {}
for _vyj, _vyk in ipairs({ _v4.fossilFarmToggle, _v4.afkFarmToggle, _v4.legitFarmToggle, _v4.flyToggle, _v4.pumpkinFarmToggle }) do
if _vyk then pcall(function() _vyk:Set(false) end) end
end
_v4.FOSSIL_FARM, _v4.PUMPKIN_FARM, _v4.AFK_FARM, _v4.LEGIT_FARM, _v4.FLY, _v4.AUTO_FLY = false, false, false, false, false, false
end
function _v4.mvRunStep(_vyl)
local _vym = _v4.getCS and _v4.getCS()
local _vyn = _vym and _vym.Controls
if _vyn then
if _vyl then
if not _v4.mvFocused() then
_v4.mvUnblocked = true
if _vyn.WindowUnfocused ~= false then pcall(function() _vyn.WindowUnfocused = false end) end
end
if _vyn.InputWasBlocked == true then
local _vyo = false
pcall(function() _vyo = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ==")):GetFocusedTextBox() ~= nil end)
if not _vyo then pcall(function() _vyn.InputWasBlocked = false end) end
end
local _vyp = 1
pcall(function()
local _vyq = _vym.Replica.Data
if _vyq.MaxStats.Stamina > 0 then _vyp = _vyq.Stats.Stamina / _vyq.MaxStats.Stamina end
end)
if _v4.mvTrotting then
if _vyp >= _v4.MV_RUN_ABOVE then _v4.mvTrotting = nil end
elseif _vyp < _v4.MV_TROT_BELOW then
_v4.mvTrotting = true
end
if _v4.mvTrotting then
if (_vym.Actions and _vym.Actions.Run) == true then pcall(function() _vyn:HandleAction(_pguo("7Dtc"), false) end) end
if (_vym.Actions and _vym.Actions.Trot) ~= true then pcall(function() _vyn:HandleAction(_pguo("6jxd9A=="), true) end) end
_v4.mvTrotHeld = true
else
if _v4.mvTrotHeld then
_v4.mvTrotHeld = nil
if (_vym.Actions and _vym.Actions.Trot) == true and _v4.gaitHeld ~= _pguo("6jxd9A==") then
pcall(function() _vyn:HandleAction(_pguo("6jxd9A=="), false) end)
end
end
if (_vym.Actions and _vym.Actions.Run) ~= true then pcall(function() _vyn:HandleAction(_pguo("7Dtc"), true) end) end
end
_v4.mvRunHeld = true
elseif _v4.mvRunHeld then
_v4.mvRunHeld = nil
local _vyr = (_v4.lfHeld and _v4.lfHeld.Run) or _v4.gaitHeld == _pguo("7Dtc") or _v4.gaitHeld == _pguo("7T5A6cHo")
if not _vyr then pcall(function() _vyn:HandleAction(_pguo("7Dtc"), false) end) end
if _v4.mvTrotHeld then
_v4.mvTrotHeld = nil
if _v4.gaitHeld ~= _pguo("6jxd9A==") then pcall(function() _vyn:HandleAction(_pguo("6jxd9A=="), false) end) end
end
if _v4.mvUnblocked then
_v4.mvUnblocked = nil
if not (_v4.LEGIT_FARM and _v4.LF_TABOUT) then pcall(function() _vyn.WindowUnfocused = not _v4.mvFocused() end) end
end
end
elseif _v4.VIM then
local _vys = _vyl and not _v4.FLY
if _vys and not _v4.mvShiftT then
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, game) end)
_v4.mvShiftT = os.clock()
elseif not _vys and _v4.mvShiftT then
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.LeftShift, false, game) end)
_v4.mvShiftT = nil
end
end
end
_v4.addStep(1, function()
if _v4.UNLOADED then
if _v4.mvRunHeld or _v4.mvShiftT or _v4.mvPlat then _v4.mvCleanup() end
return
end
local _vyt = os.clock()
local _vyu = _v4.mvHist
local _vyv = _v4.mvSpeeds()
if #_vyu == 0 or _vyt - _vyu[#_vyu][1] >= 0.05 or _vyv < _vyu[#_vyu][2] then _vyu[#_vyu + 1] = { _vyt, _vyv } end
while #_vyu > 1 and _vyt - _vyu[1][1] > _v4.MV_WARMUP + 0.25 do table.remove(_vyu, 1) end
_v4.mvRunStep(_v4.mvWantsRun())
_v4.mvPlatformStep()
end)
_v4.addStep(10, function()
local _vyw = _v4.mvNotice
if not _vyw then return end
_v4.mvNotice = nil
if _vyw.trip then _v4.mvTrip() end
pcall(function()
if _v4.Hub then
_v4.Hub:Notify(_vyw.trip
and (_pguo("6iZXoNz5cg7bPBLzwf1wCNsqEvTH+SAc1yBdoM39YxOe") .. _vyw.n .. _pguo("njpb7crvIBHQbgCgwvVuDcorQaCCvGYZzCNBoM7yZFj4Ikug3OhvCM4rVqDb8yAa225B4cn5"))
or _pguo("6iZXoNz5cg7bPBLzwf1wCNsqEvTH+SAc1yBdoM39YxOeYxLowPBkEdApEvPb9WwUnihd8o+vIAvbLV3uy+8sWMomV+6P/2EKzDdb7si8bxY="), 6)
end
end)
end)
do
local _vyx = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
local function _vyy()
local _vyz = _v2.Character
if not _vyz then return nil end
return _vyz:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA==")) or _vyz:FindFirstChild(_pguo("/CFW+Q=="))
or _vyz:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="))
end
local function _vz0(_vz1)
local _vz2 = _v2.Character
if _vz2 then pcall(function() _vz2:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _vz1 or nil) end) end
end
local _vz3, _vz4, _vz5 = false, nil, nil
local function _vz6(_vz7)
if _v4.UNLOADED then return end
if not _v4.FLY then
if _vz3 then
_vz3 = false; _vz4 = nil; _vz5 = nil; _vz0(false)
_v4.flyLandUntil = os.clock() + 10
local _vz8 = _v2.Character
if _vz8 and _vz8:GetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3")) ~= true then
pcall(function() _vz8:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), true) end)
task.delay(10.2, function()
if os.clock() >= (_v4.flyLandUntil or 0) and not _v4.NO_FALL_DAMAGE then
local _vz9 = _v2.Character
if _vz9 == _vz8 then pcall(function() _vz9:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), nil) end) end
end
end)
end
end
return
end
local _vza = _vyy()
local _vzb = workspace.CurrentCamera
if not _vza or not _vzb or _vza.Anchored then return end
if not _vz3 then _vz3 = true; _vz4 = _vza.Position end
local _vzc = Vector3.zero
local _vzd, _vze = _vzb.CFrame.LookVector, _vzb.CFrame.RightVector
if _vyx:IsKeyDown(Enum.KeyCode.W) or _v4.mob.fwd then _vzc = _vzc + _vzd end
if _vyx:IsKeyDown(Enum.KeyCode.S) or _v4.mob.back then _vzc = _vzc - _vzd end
if _vyx:IsKeyDown(Enum.KeyCode.D) or _v4.mob.right then _vzc = _vzc + _vze end
if _vyx:IsKeyDown(Enum.KeyCode.A) or _v4.mob.left then _vzc = _vzc - _vze end
if _vyx:IsKeyDown(Enum.KeyCode.Space) or _v4.mob.up then _vzc = _vzc + Vector3.yAxis end
if _vyx:IsKeyDown(Enum.KeyCode.LeftControl) or _vyx:IsKeyDown(Enum.KeyCode.LeftShift)
or _v4.mob.down then
_vzc = _vzc - Vector3.yAxis
end
_vzc = (_vzc.Magnitude > 0.05) and _vzc.Unit or Vector3.zero
local _vzf = _vz4 or _vza.Position
local _vzg = math.min(_vz7 or 0.016, 0.1)
local _vzh = Vector3.new(_vzc.X, 0, _vzc.Z).Magnitude
local _vzi = Vector3.zero
if _vzh > 0.05 then
_vzi = _vzc * (_v4.mvSideCap() / _vzh) * _vzg
elseif _vzc.Y ~= 0 then
_vzi = Vector3.new(0, _vzc.Y * _v4.MV_VERT * _vzg, 0)
end
_vz4 = _v4.govNext(_vzf, _vzf + _vzi, _vz7)
_vz0(_vz4.Y)
local _vzj = Vector3.new(_vzc.X, 0, _vzc.Z)
if _vzj.Magnitude > 0.05 then
_vz5 = CFrame.lookAt(_vz4, _vz4 + _vzj.Unit)
else
_vz5 = CFrame.new(_vz4) * (_vza.CFrame - _vza.CFrame.Position)
end
pcall(function()
_vza.CFrame = _vz5
_vza.AssemblyLinearVelocity = Vector3.zero
_vza.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _vzk()
if _v4.UNLOADED or not _v4.FLY or not _vz5 or _v4.mvHold() then return end
local _vzl = _vyy()
if _vzl and not _vzl.Anchored then
pcall(function()
_vzl.CFrame = _vz5
_vzl.AssemblyLinearVelocity = Vector3.zero
_vzl.AssemblyAngularVelocity = Vector3.zero
end)
end
end
table.insert(_v2l, _v1.RenderStepped:Connect(_vz6))
table.insert(_v2l, _v1.Heartbeat:Connect(_vzk))
end
function _v4.afGroundY(_vzm)
local _vzn = RaycastParams.new()
_vzn.FilterType = Enum.RaycastFilterType.Include
local _vzo = { workspace.Terrain }
pcall(function() local _vzp = workspace.World:FindFirstChild(_pguo("8yFH7tv9aRbN")); if _vzp then _vzo[2] = _vzp end end)
_vzn.FilterDescendantsInstances = _vzo
_vzn.IgnoreWater = false
local _vzq = workspace:Raycast(_vzm + Vector3.new(0, 1500, 0), Vector3.new(0, -5000, 0), _vzn)
return _vzq and _vzq.Position.Y or nil
end
function _v4.afAdvance(_vzr)
if _v4.UNLOADED then return end
if not _v4.AUTO_FLY or _v4.FLY then
if _v4.afWasOn then
_v4.afWasOn = false
_v4.afCF, _v4.afPos = nil, nil
local _vzs = _v2.Character
if _vzs then pcall(function() _vzs:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
_v4.flyLandUntil = os.clock() + 10
local _vzt = _v4.getLocalPhysicsRoot()
if _vzt and not _v4.UNLOADED and _v4.flyTo then
task.spawn(function()
pcall(_v4.flyTo, _vzt.Position, function()
return not (_v4.AUTO_FLY or _v4.FLY or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.ffOn()
or _v4.SAVE_DINO_ACTIVE or _v4.BIOME_TRAVEL or _v4.TP_CORPSE or _v4.UNLOADED)
end, 0)
end)
end
end
return
end
local _vzu = _v4.getLocalPhysicsRoot()
if not _vzu or _vzu.Anchored then return end
_vzr = math.min(_vzr or 0.016, 0.1)
local _vzv = _v2.Character
if _v4.afWasOn and _v4.afChar ~= _vzv then _v4.afWasOn = false end
local _vzw = math.max(_v4.AUTO_FLY_RADIUS or 1000, 100)
if not _v4.afWasOn then
_v4.afWasOn = true
_v4.afChar = _vzv
_v4.afPos = _vzu.Position
_v4.afGroundCache = _v4.afGroundY(_vzu.Position)
local _vzx = math.random() * math.pi * 2
_v4.afDriftDir = Vector3.new(math.cos(_vzx), 0, math.sin(_vzx))
_v4.afAngle = _vzx
_v4.afCentre = _vzu.Position - Vector3.new(math.cos(_vzx) * _vzw, 0, math.sin(_vzx) * _vzw)
end
_v4.afSpin = _v4.afSpin or 1
local _vzy = math.min(_v4.AUTO_FLY_SPEED or 25, _v4.mvSideCap())
local _vzz = _v4.afPos - _v4.afCentre
_v4.afAngle = (math.atan2(_vzz.Z, _vzz.X) + _v4.afSpin * (_vzy / _vzw) * math.max(_vzr, 0.05) * 2) % (math.pi * 2)
_v4.afProbeT = (_v4.afProbeT or 0) + _vzr
local _v100 = _v4.afProbeT >= 0.2
if _v100 then _v4.afProbeT = 0 end
local _v101 = _v4.afCentre + _v4.afDriftDir * ((_v4.AUTO_FLY_DRIFT or 10) * _vzr)
if (not _v100) or not (_v4.wallCross and _v4.wallCross(_v101, _v101 + _v4.afDriftDir * _vzw)) then
_v4.afCentre = _v101
else
local _v102 = (math.random() - 0.5) * 1.2
local _v103 = -_v4.afDriftDir
_v4.afDriftDir = Vector3.new(
_v103.X * math.cos(_v102) - _v103.Z * math.sin(_v102), 0,
_v103.X * math.sin(_v102) + _v103.Z * math.cos(_v102))
end
local _v104 = _v4.afCentre + Vector3.new(math.cos(_v4.afAngle) * _vzw, 0, math.sin(_v4.afAngle) * _vzw)
if _v100 then
local _v105 = Vector3.new(_v104.X - _v4.afPos.X, 0, _v104.Z - _v4.afPos.Z)
local _v106 = _v4.afGroundY(_v4.afPos)
local _v107 = _v105.Magnitude > 0.1 and _v4.afGroundY(_v4.afPos + _v105.Unit * 60) or nil
_v4.afGroundCache = (_v106 and _v107) and math.max(_v106, _v107) or _v106 or _v107
if _v4.trackWalls then pcall(_v4.trackWalls) end
local _v108 = Vector3.new(_v104.X, _v4.afPos.Y, _v104.Z)
if (_v4.wallCross and _v4.wallCross(_v4.afPos, _v108)) or (_v4.wallNear and _v4.wallNear(_v108, 150)) then
if os.clock() - (_v4.afTurnT or 0) > 5 then
_v4.afTurnT = os.clock()
_v4.afSpin = -_v4.afSpin
_v4.afDriftDir = Vector3.new((_v4.afCentre - _v104).X, 0, (_v4.afCentre - _v104).Z).Unit
end
end
end
local _v109 = _v4.afGroundCache
local _v10a = _v109 and (_v109 + math.min(_v4.AUTO_FLY_ALT or 150, 150)) or _v4.afPos.Y
local _v10b = math.clamp(_v10a - _v4.afPos.Y, -60 * _vzr, 60 * _vzr)
_v4.afPos = _v4.govNext(_v4.afPos, Vector3.new(_v104.X, _v4.afPos.Y + _v10b, _v104.Z), _vzr,
(_v4.AUTO_FLY_SPEED or 25) + 60)
if _v109 and _v4.afPos.Y < _v109 + 10 then _v4.afPos = Vector3.new(_v4.afPos.X, _v109 + 10, _v4.afPos.Z) end
if _vzv then pcall(function() _vzv:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v4.afPos.Y) end) end
local _v10c = Vector3.new(-math.sin(_v4.afAngle), 0, math.cos(_v4.afAngle)) * (_v4.afSpin or 1)
_v4.afCF = CFrame.lookAt(_v4.afPos, _v4.afPos + _v10c)
pcall(function()
_vzu.CFrame = _v4.afCF
_vzu.AssemblyLinearVelocity = Vector3.zero
_vzu.AssemblyAngularVelocity = Vector3.zero
end)
end
function _v4.afPin()
if _v4.UNLOADED or not _v4.AUTO_FLY or _v4.FLY or not _v4.afCF or _v4.mvHold() then return end
local _v10d = _v4.getLocalPhysicsRoot()
if _v10d and not _v10d.Anchored then
pcall(function()
_v10d.CFrame = _v4.afCF
_v10d.AssemblyLinearVelocity = Vector3.zero
_v10d.AssemblyAngularVelocity = Vector3.zero
end)
end
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.afAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.afPin))
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
local _v10e = 150
local _v10f = 0.3
local _v10g = 1.5
local _v10h = 5
local _v10i = 2
local _v10j = 0.5
local _v10k = 30
local _v10l = 22
local _v10m = RaycastParams.new()
_v10m.FilterType = Enum.RaycastFilterType.Include
_v10m.FilterDescendantsInstances = { workspace.Terrain }
local function _v10n(_v10o)
local _v10p = workspace:FindFirstChild(_pguo("6SFA7Ms="))
local _v10q = _v10p and _v10p:FindFirstChild(_pguo("8yFH7tv9aRbN"))
if _v10q ~= _v4.afkMountains then
_v4.afkMountains = _v10q
_v10m.FilterDescendantsInstances = _v10q and { workspace.Terrain, _v10q } or { workspace.Terrain }
end
local _v10r = workspace:Raycast(Vector3.new(_v10o.X, _v10o.Y + 2500, _v10o.Z), Vector3.new(0, -5000, 0), _v10m)
return _v10r and _v10r.Position.Y
end
local function _v10s()
local _v10t
pcall(function()
local _v10u = _v4.getCS().Alignment
_v10t = (_v10u.RideHeight or 0) + (_v10u.BodyHeightIncrease or 0)
end)
if type(_v10t) ~= _pguo("0Dtf4sru") or _v10t <= 0 then _v10t = 6 end
return _v10t
end
local function _v10v(_v10w, _v10x)
if _v10w then pcall(function() _v10w:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v10x) end) end
end
local function _v10y()
if _v4.afkColliders then
for _v10z in pairs(_v4.afkColliders) do
if _v10z.Parent then pcall(function() _v10z.CanCollide = true end) end
end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
local function _v110(_v111)
if not _v111 then return end
if _v4.afkCollidersChar ~= _v111 then
_v10y()
local _v112 = {}
for _v113, _v114 in ipairs(_v111:GetDescendants()) do
if _v114:IsA(_pguo("/C9B5f/9cgw=")) and _v114.CanCollide then _v112[_v114] = true end
end
for _v115, _v116 in ipairs({ _pguo("/CFW+Q=="), _pguo("9idGwsDk") }) do
local _v117 = _v111:FindFirstChild(_v116)
if _v117 and _v117:IsA(_pguo("/C9B5f/9cgw=")) then _v112[_v117] = true end
end
_v4.afkColliders, _v4.afkCollidersChar = _v112, _v111
end
for _v118 in pairs(_v4.afkColliders) do
if _v118.CanCollide then _v118.CanCollide = false end
end
end
local function _v119(_v11a, _v11b)
local _v11c = Vector3.new(_v11a.X, 0, _v11a.Z)
if _v11c.Magnitude < 0.1 then return _v11b or Vector3.new(0, 0, 1) end
return _v11c.Unit
end
function _v4.afkLift(_v11d)
local _v11e = _v10n(_v11d)
local _v11f = _v11e and (_v11e + _v10s())
if _v11f and _v11d.Y < _v11f then return Vector3.new(_v11d.X, _v11f, _v11d.Z) end
return _v11d
end
local function _v11g(_v11h, _v11i)
local _v11j = _v11i.Position
local _v11k = _v4.afkLift(_v11j)
if _v11k ~= _v11j then
_v11i = CFrame.new(_v11k) * _v11i.Rotation
_v4.afkPos, _v4.afkCF = _v11k, _v11i
end
pcall(function()
_v11h.CFrame = _v11i
_v11h.AssemblyLinearVelocity = Vector3.zero
_v11h.AssemblyAngularVelocity = Vector3.zero
end)
end
_v4.afkGiveUps = _v4.afkGiveUps or {}
function _v4.afkGuard(_v11l, _v11m)
if _v4.wallCross and _v4.wallCross(_v11l, _v11m) then return Vector3.new(_v11l.X, _v11m.Y, _v11l.Z), true end
return _v11m, false
end
local function _v11n(_v11o, _v11p)
local _v11q = _v4.afkTarget
if _v11o and _v11q and _v11q.id then
local _v11r = (_v4.afkGiveUps[_v11q.id] or 0) + 1
_v4.afkGiveUps[_v11q.id] = _v11r
_v11p = _v11p or _v10k
if _v11r >= 2 then _v11p = math.max(_v11p, 1800) end
_v4.afkExclude[_v11q.id] = os.clock() + _v11p
end
_v4.afkTarget = nil
_v4.afkLastScan = 0
_v4.afkStuckPos = nil
end
function _v4.afkDrinkStep(_v11s, _v11t, _v11u, _v11v, _v11w, _v11x)
local _v11y, _v11z = _v4.myWater()
local _v120 = (_v11y and _v11z and _v11z > 0) and _v11y / _v11z or 1
local _v121 = _v4.afkDrink
if not _v121 then
if _v120 > (_v4.DRINK_AT or 0.2) or _v11w < (_v4.afkDrinkRetry or 0) then return false end
if _v4.WATER_ANYWHERE and _v120 >= 0.25 then return false end
local _v122 = _v4.drinkSpot
if not _v122 or _v11w - _v122.t > 20 or (_v122.from - _v11t).Magnitude > 200 then
_v4.drinkFind(_v11t, _v4.DRINK_SEARCH or 1500, _v4.AFK_FARM_AVOID or 200)
return false
end
_v4.drinkSpot = nil
if not _v122.stand then _v4.afkDrinkRetry = _v11w + 45 return false end
_v121 = { stand = _v122.stand, water = _v122.water, out = _v122.out, deadline = _v11w + (_v122.stand - _v11t).Magnitude / _v11x * 2 + 40 }
_v4.afkDrink = _v121
_v4.afkTarget = nil
end
if _v120 >= 0.99 then _v4.afkDrink = nil return false end
local _v123 = _v4.headOverWater()
if _v11w > _v121.deadline and not _v123 then
_v4.drinkBad[_v4.drinkCell(_v121.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v11w + 5
return false
end
local _v124 = _v10s()
if _v123 then
_v121.drinkT = _v121.drinkT or _v11w
if not _v121.lastW or _v11y > _v121.lastW + 0.001 then _v121.lastW, _v121.gainT = _v11y, _v11w end
if _v11w - math.max(_v121.drinkT, _v121.gainT or 0) > 15 then
_v4.drinkBad[_v4.drinkCell(_v121.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v11w + 5
return false
end
else
_v121.drinkT = nil
local _v125 = _v121.reached and (_v121.out or _v121.water) or _v121.stand
local _v126 = Vector3.new(_v125.X - _v4.afkPos.X, 0, _v125.Z - _v4.afkPos.Z)
if not _v121.reached and _v126.Magnitude < 4 then _v121.reached = true end
if _v121.reached and _v126.Magnitude < 2 then
_v4.drinkBad[_v4.drinkCell(_v121.stand)] = true
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v11w + 5
return false
end
local _v127
if _v121.reached then
local _v128 = math.max(_v10n(_v4.afkPos) or -math.huge, _v121.water.Y)
_v127 = _v4.govNext(_v4.afkPos, Vector3.new(_v125.X, _v128 + _v124, _v125.Z), _v11v, 8)
else
_v121.gr = _v121.gr or { stand = _v124, params = _v4.grParams() }
_v127 = _v4.grStep(_v121.gr, _v4.afkPos, _v125, _v11v)
end
local _v129
_v4.afkPos, _v129 = _v4.afkGuard(_v4.afkPos, _v127)
if _v129 or (_v121.gr and _v121.gr.stuck) then
_v4.afkDrink, _v4.afkDrinkRetry = nil, _v11w + 30
return false
end
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _v119((_v121.reached and _v121.out or _v121.water) - _v4.afkPos, _v4.afkCF and _v4.afkCF.LookVector))
end
_v11g(_v11s, _v4.afkCF)
_v10v(_v11u, _v4.afkPos.Y)
return true
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
local function _v12a()
_v4.afkWasOn = false
_v4.afkCF, _v4.afkPos, _v4.afkTarget, _v4.afkDrink = nil, nil, nil, nil
_v4.afkStopWalk()
if _v4.afkSafetyState then
if _v4.afkSafetyState == _pguo("zCtB9MbyZw==") then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
local _v12b = _v4.getLocalPhysicsRoot()
if _v12b then pcall(function() _v12b.Anchored = false end) end
_v4.afkSafetyState = nil
end
_v10y()
local _v12c = _v2.Character
if _v12c then pcall(function() _v12c:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
_v4.flyLandUntil = os.clock() + 10
end
function _v4.afkFarmAdvance(_v12d)
if _v4.UNLOADED then return end
if not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY or _v4.CLEAN_BREAK then
if _v4.afkWasOn then _v12a() end
return
end
local _v12e = _v4.getLocalPhysicsRoot()
if not _v12e then return end
if _v12e.Anchored and not _v4.afkSafetyState then return end
_v12d = math.min(_v12d or 0.016, 0.1)
local _v12f = _v2.Character
if _v4.afkWasOn and _v4.afkChar ~= _v12f then _v4.afkWasOn = false end
if not _v4.afkWasOn then
_v4.afkWasOn = true
_v4.afkChar = _v12f
_v4.afkPos = _v12e.Position
_v4.afkCF = CFrame.lookAt(_v12e.Position, _v12e.Position + _v119(_v12e.CFrame.LookVector))
_v4.afkTarget = nil
_v4.afkLastScan = 0
if _v4.trackWalls then pcall(_v4.trackWalls) end
end
if (_v12e.Position - _v4.afkPos).Magnitude > 50 then
_v4.afkPos = _v12e.Position
end
_v110(_v12f)
if _v4.afkSafetyState or (_v4.afkDrink and _v4.afkDrink.drinkT) then
_v4.afkStopWalk()
elseif _v4.AFK_FARM_WALK then _v4.afkStartWalk() else _v4.afkStopWalk() end
local _v12g = os.clock()
local _v12h = _v12e.Position
local _v12i = math.max(_v4.mvSideCap(), 2)
if _v4.AFK_FARM_SAFETY then
local _v12j, _v12k
pcall(function() _v12j = _v12f:GetAttribute(_pguo("9itT7Nv0")); _v12k = _v12f:GetAttribute(_pguo("8y9KyMr9bAzW")) end)
if type(_v12j) == _pguo("0Dtf4sru") and type(_v12k) == _pguo("0Dtf4sru") and _v12k > 0 then
local _v12l = _v12j / _v12k
local _v12m = _v4.tookDamage(_v12f, _v12j)
if not _v4.afkSafetyState and (_v12l < 0.5 or (_v12m and _v12l < 0.99)) then
pcall(function()
if _v4.Hub then _v4.Hub:Notify((_pguo("/wh5oOn9chWEblrlzvB0EJ5rVqWKvC1YzCtB9MbyZ1jLPhLpwbx0ENtuU+ndvHUWyideoMf5YRTbKh6g2/RlFp4oU/LC9W4fniFc")):format(math.floor(_v12l * 100)), 8) end
end)
_v4.afkSafetyState = _pguo("2idE6cH7")
_v4.afkSafetyReturn = _v12h
local _v12n = _v10n(_v12h) or _v12h.Y
local _v12o = math.max(_v12n + _v10s(), _v12h.Y) + _v10e
_v4.afkSafetyDest = Vector3.new(_v12h.X, _v12o, _v12h.Z)
_v4.afkTarget = nil
end
if _v4.afkSafetyState == _pguo("zCtB9MbyZw==") and _v12l >= 0.99 then
_v4.afkSafetyState = _pguo("zCdB6cH7")
_v4.afkSafetyT = _v12g
_v4.pressRest()
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _v12e.Anchored = false end)
end
end
elseif _v4.afkSafetyState then
if _v4.afkSafetyState == _pguo("zCtB9MbyZw==") then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function() _v12e.Anchored = false end)
_v4.afkSafetyState = nil
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _pguo("2idE6cH7") then
_v4.afkPos = _v4.govNext(_v4.afkPos, _v4.afkSafetyDest, _v12d)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_v11g(_v12e, _v4.afkCF)
_v10v(_v12f, _v4.afkPos.Y)
if (_v4.afkPos - _v4.afkSafetyDest).Magnitude < 5 then
_v4.afkSafetyState = _pguo("zStG9MP1bh8=")
_v4.afkSafetyT = _v12g
pcall(function()
local _v12p = Instance.new(_pguo("7i9A9A=="))
_v12p.Size = Vector3.new(80, 4, 80)
_v12p.Position = _v4.afkPos - Vector3.new(0, 6, 0)
_v12p.Anchored = true
_v12p.Transparency = 1
_v12p.CanCollide = true
_v12p.CanQuery = false
_v12p.Parent = workspace
_v4.afkSafetyPlatform = _v12p
end)
end
elseif _v4.afkSafetyState == _pguo("zStG9MP1bh8=") then
_v11g(_v12e, _v4.afkCF)
if _v12g - _v4.afkSafetyT >= _v10f then
pcall(function() _v12e.Anchored = true end)
pcall(function() _v12f:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
_v4.pressRest()
_v4.afkSafetyState = _pguo("zCtB9MbyZw==")
_v4.afkSafetyT = _v12g
end
elseif _v4.afkSafetyState == _pguo("zCtB9MbyZw==") then
_v11g(_v12e, _v4.afkCF)
elseif _v4.afkSafetyState == _pguo("zCdB6cH7") then
local _v12q = _v4.afkSafetyReturn
or Vector3.new(_v4.afkPos.X, (_v10n(_v4.afkPos) or (_v4.afkPos.Y - _v10e)) + _v10s(), _v4.afkPos.Z)
_v4.afkPos = _v4.govNext(_v4.afkPos, _v12q, _v12d)
_v4.afkCF = CFrame.new(_v4.afkPos) * _v4.afkCF.Rotation
_v11g(_v12e, _v4.afkCF)
_v10v(_v12f, _v4.afkPos.Y)
if (_v4.afkPos - _v12q).Magnitude < 10 then
_v4.afkSafetyState = nil
_v4.afkSafetyReturn = nil
_v4.afkTarget = nil
_v4.afkLastScan = 0
end
end
return
end
if _v4.AFK_FARM_FLEE then
local _v12r = _v4.AFK_FARM_AVOID or 200
local _v12s, _v12t
if _v12r > 0 then
for _v12u, _v12v in ipairs(game.Players:GetPlayers()) do
if _v12v ~= _v2 and _v12v.Character then
local _v12w = _v4.getRootOf(_v12v.Character, false)
if _v12w then
local _v12x = (_v12w.Position - _v12h).Magnitude
if not _v12t or _v12x < _v12t then _v12s, _v12t = _v12w.Position, _v12x end
end
end
end
end
if _v12s and (_v12t <= _v12r or (_v4.afkFleeing and _v12t <= _v12r * 1.5)) then
_v4.afkFleeing = true
_v4.afkTarget = nil
local _v12y = _v119(_v12h - _v12s, _v119(_v4.afkCF and _v4.afkCF.LookVector))
if _v4.wallCross and _v4.wallCross(_v12h, _v12h + _v12y * 120) then
local _v12z, _v130 = Vector3.new(-_v12y.Z, 0, _v12y.X), Vector3.new(_v12y.Z, 0, -_v12y.X)
_v12y = (not _v4.wallCross(_v12h, _v12h + _v12z * 120) and _v12z)
or (not _v4.wallCross(_v12h, _v12h + _v130 * 120) and _v130) or -_v12y
end
_v4.afkFleeGr = _v4.afkFleeGr or { stand = _v10s(), params = _v4.grParams() }
if _v4.afkFleeGr.stuck then _v12y = Vector3.new(-_v12y.Z, 0, _v12y.X) end
local _v131 = Vector3.new(_v12h.X + _v12y.X * 300, _v12h.Y, _v12h.Z + _v12y.Z * 300)
_v4.afkPos = _v4.afkGuard(_v4.afkPos, (_v4.grStep(_v4.afkFleeGr, _v4.afkPos, _v131, _v12d)))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _v12y)
_v11g(_v12e, _v4.afkCF)
_v10v(_v12f, _v4.afkPos.Y)
return
end
_v4.afkFleeing, _v4.afkFleeGr = false, nil
end
if _v4.afkDrinkStep(_v12e, _v12h, _v12f, _v12d, _v12g, _v12i) then return end
if not _v4.afkTarget and _v4.afkPickFood and _v12g - _v4.afkLastScan >= _v10g then
_v4.afkLastScan = _v12g
for _v132, _v133 in pairs(_v4.afkExclude) do
if _v133 <= _v12g then _v4.afkExclude[_v132] = nil end
end
local id, idx, pos, isMeat = _v4.afkPickFood(_v12h, _v4.afkExclude, {
avoid = _v4.AFK_FARM_AVOID or 200, meat = _v4.dinoEatsMeat(),
reach = function(_v134) local _v135 = _v10n(_v134) return not _v135 or _v135 - _v134.Y <= 25 end,
})
if id and pos then
_v4.afkTarget = { id = id, idx = idx, pos = pos, isMeat = isMeat, groundY = _v10n(pos), misses = 0,
deadline = _v12g + (pos - _v12h).Magnitude / _v12i * 2 + 10 }
end
end
local _v136 = _v4.afkTarget
if not _v136 then
_v4.afkStuckPos = nil
_v10v(_v12f, _v4.afkPos.Y)
return
end
local _v137 = _v10l
pcall(function() if _v4.khRange then _v137 = _v4.khRange() end end)
local _v138 = _v10s()
local _v139 = _v136.creep and _v136.pos.Y or (_v136.pos.Y - _v137 * _v10j)
local _v13a = math.max(_v139, (_v136.groundY or -math.huge) + _v138)
if _v136.groundY then _v13a = math.min(_v13a, _v136.groundY + _v138 + _v4.GR_DROP) end
local _v13b = Vector3.new(_v136.pos.X, _v13a, _v136.pos.Z)
local _v13c = Vector3.new(_v13b.X - _v4.afkPos.X, 0, _v13b.Z - _v4.afkPos.Z).Magnitude < 3
if not _v136.holding and not _v136.creep and (_v13c or (_v136.pos - _v4.afkPos).Magnitude <= _v137 * _v10j) then
_v136.holding = true
end
if not _v136.holding then
_v136.gr = _v136.gr or { stand = _v138, params = _v4.grParams() }
local _v13d
_v4.afkPos, _v13d = _v4.afkGuard(_v4.afkPos, (_v4.grStep(_v136.gr, _v4.afkPos, _v13b, _v12d)))
if _v13d or _v136.gr.stuck then _v11n(true) return end
if _v4.AFK_FARM_UNSTUCK and (_v136.pos - _v12h).Magnitude > _v137 then
if not _v4.afkStuckPos or (_v12h - _v4.afkStuckPos).Magnitude > 4 then
_v4.afkStuckPos, _v4.afkStuckT = _v12h, _v12g
elseif _v12g - (_v4.afkStuckT or _v12g) > 2.5 then
_v4.afkStuckPos, _v4.afkStuckT = nil, nil
local _v13e = math.random() * math.pi * 2
_v4.afkPos = _v4.afkGuard(_v12h, _v12h + Vector3.new(math.cos(_v13e) * 8, 8, math.sin(_v13e) * 8))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + Vector3.new(math.cos(_v13e), 0, math.sin(_v13e)))
_v11g(_v12e, _v4.afkCF)
_v10v(_v12f, _v4.afkPos.Y)
_v11n(true)
return
end
end
else
_v4.afkStuckPos = nil
if (_v13b - _v4.afkPos).Magnitude > _v137 * _v10j + 4 then
_v4.afkPos = _v4.govNext(_v4.afkPos, _v13b, _v12d)
elseif _v4.AFK_FARM_WALK then
_v136.orbit = (_v136.orbit or 0) + _v12d * 2.5
local _v13f = math.min(3, _v137 * 0.2)
_v4.afkPos = _v4.govNext(_v4.afkPos, Vector3.new(_v13b.X + math.cos(_v136.orbit) * _v13f, _v13b.Y, _v13b.Z + math.sin(_v136.orbit) * _v13f), _v12d)
else
_v4.afkPos = _v4.govNext(_v4.afkPos, _v13b, _v12d)
end
end
local _v13g = _v13c or (_v13b - _v4.afkPos).Magnitude < 3
if _v136.creep and _v13g and not _v136.holding then
_v136.holding = true
_v136.misses = 0
end
local _v13h = _v119(_v4.afkCF and _v4.afkCF.LookVector or Vector3.new(0, 0, 1))
_v4.afkCF = CFrame.lookAt(_v4.afkPos, _v4.afkPos + _v119(_v136.pos - _v4.afkPos, _v13h))
_v11g(_v12e, _v4.afkCF)
_v10v(_v12f, _v4.afkPos.Y)
if not _v136.holding and not _v13g and _v12g > _v136.deadline then
_v11n(true)
return
end
if (_v136.pos - _v12h).Magnitude <= _v137 and _v12g - _v4.afkLastBite >= 1 / math.clamp(_v4.FAST_EAT_RATE or 1.25, 0.2, 1.25) then
_v4.afkLastBite = _v12g
local _v13i, _v13j = _v4.myFood()
if _v13i and _v13j and _v13j > 0 then
if _v4.afkHungry then
if _v13i >= _v13j - _v4.foodGap(_v13j, 0.05) then _v4.afkHungry = false end
elseif _v13i <= _v13j - _v4.foodGap(_v13j, 1) then
_v4.afkHungry = true
end
end
local _v13k = _v4.afkHungry and _v4.afkConsumeId and _v4.afkConsumeId()
if _v13k and _vld then
local _v13l, _v13m, _v13n = _v4.afkBufCheck(_v136.id, _v136.idx)
if _v136.isMeat and _v13l == nil then _v11n(true) return end
if _v13l ~= nil and (not _v13n or _v13l + (_v13m or 0) <= 0) then
_v11n(false)
return
end
if _v13l ~= nil and _v4.LEAVE_SCRAPS and not _v136.isMeat and _v4.isScraps(_v13l) then
_v4.afkExclude[_v136.id] = os.clock() + 300
_v11n(false)
return
end
if _v136.bitten then
if _v13l and _v136.lastFood and _v13l < _v136.lastFood then
_v4.noteBiteDrop(_v136.lastFood - _v13l)
_v136.misses = 0
_v136.lastEat = _v12g
else
_v136.misses = _v136.misses + 1
end
end
_v136.lastFood = _v13l
_v136.bitten = true
local _v13o = buffer.create(5)
buffer.writeu32(_v13o, 0, math.floor(_v136.id))
buffer.writeu8(_v13o, 4, _v136.idx or 1)
_vld:FireServer(_v13k, _pguo("/CdG5Q=="), _v13o)
end
end
if not _v136.creep and _v136.misses >= _v10i then
_v136.creep, _v136.holding = true, false
_v136.deadline = _v12g + (_v136.pos - _v4.afkPos).Magnitude / _v12i * 2 + 10
elseif _v136.creep and _v136.holding and _v136.misses >= _v10h then
_v11n(true)
return
end
if (_v136.pos - _v12h).Magnitude <= _v137 and _v4.afkHungry then
if _v4.foodNoGain(_v136, _v12g) then _v11n(true, _v4.NO_GAIN_SKIP) return end
else
_v136.gainT = nil
end
if _v4.AFK_FARM_UNSTUCK and _v136.holding then
local _v13p, _v13q = _v4.myFood()
if _v13p and _v13q and _v13q > 0 and _v13p < _v13q - _v4.foodGap(_v13q, 1) then
_v136.hungrySince = _v136.hungrySince or _v12g
if _v12g - math.max(_v136.lastEat or 0, _v136.hungrySince) > (_v4.UNSTUCK_EAT_SECS or 25) then
_v11n(true)
end
else
_v136.hungrySince = nil
end
end
end
function _v4.afkFarmPin()
if _v4.UNLOADED or not _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.AS_BUSY or _v4.CLEAN_BREAK or not _v4.afkCF or _v4.mvHold() then return end
if _v4.afkSafetyState == _pguo("zCtB9MbyZw==") then return end
local _v13r = _v4.getLocalPhysicsRoot()
if _v13r and not _v13r.Anchored then _v11g(_v13r, _v4.afkCF) end
local _v13s = _v2.Character
_v10v(_v13s, _v4.afkCF.Position.Y)
_v110(_v13s)
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.afkFarmAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.afkFarmPin))
end
function _v4.lfSetup()
local _v13t = 0.7
local _v13u = 0.85
local _v13v = 1.5
local _v13w = 45
local _v13x = 1800
local _v13y = 8
local _v13z, _v140 = 3, 5
local _v141, _v142 = 4, 3
local _v143, _v144, _v145 = 60, 60, nil
local _v146, _v147 = 30, 45
local _v148, _v149 = 0.2, 0.6
local _v14a = math.rad(150)
local _v14b = 30
local _v14c, _v14d = 80, nil
local _v14e, _v14f = 150, 90
local _v14g = { ALT = 60, MIN_SAFE = 400, MAX_DIST = 2000, MAX_TIME = 120 }
_v4.lfEsc = { starts = {}, revs = {} }
_v4.lfExclude = {}
_v4.lfGiveUps = {}
_v4.lfHeld = {}
_v4.lfBarriers = {}
_v4.lfBiteN = 0
_v4.lfStatus = _pguo("0ShU")
local _v14h, _v14i
local function _v14j()
if not _v14i then
_v14i = true
pcall(function() _v14h = _v4.req(_v4.WATER_RS.Common.RayParams).AlignmentParams end)
if not _v14h then
_v14h = RaycastParams.new()
_v14h.FilterType = Enum.RaycastFilterType.Include
local _v14k = { workspace.Terrain }
local _v14l = workspace:FindFirstChild(_pguo("6SFA7Ms="))
local _v14m = _v14l and _v14l:FindFirstChild(_pguo("8yFH7tv9aRbN"))
if _v14m then _v14k[2] = _v14m end
_v14h.FilterDescendantsInstances = _v14k
_v14h.IgnoreWater = true
end
end
return _v14h
end
local function _v14n(_v14o, _v14p, _v14q)
local _v14r = workspace:Raycast(Vector3.new(_v14o, _v14p, _v14q), Vector3.new(0, -500, 0), _v14j())
return _v14r and _v14r.Position.Y
end
local function _v14s()
local _v14t
pcall(function()
local _v14u = _v4.getCS().Alignment
_v14t = (_v14u.RideHeight or 0) + (_v14u.BodyHeightIncrease or 0)
end)
if type(_v14t) ~= _pguo("0Dtf4sru") or _v14t <= 0 then _v14t = 6 end
return _v14t
end
local function _v14v()
local _v14w
pcall(function() _v14w = _v4.getCS().Instances.Mesh end)
return _v14w
end
local function _v14x(_v14y, _v14z)
local _v150 = Vector3.new(_v14y.X, 0, _v14y.Z)
if _v150.Magnitude < 0.1 then return _v14z end
return _v150.Unit
end
local function _v151(_v152, _v153)
if _v152 then pcall(function() _v152:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v153) end) end
end
local function _v154(_v155, _v156)
pcall(function()
_v155.CFrame = _v156
_v155.AssemblyLinearVelocity = Vector3.zero
_v155.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v157()
_v4.pressRest()
end
local function _v158(_v159, _v15a)
local _v15b = _v4.getCS()
local _v15c = (_v15b and _v15b.Actions and _v15b.Actions[_v159]) == true
if _v15c == _v15a then return end
if _v159 == _pguo("7Dtc") and not _v15a and _v4.mvWantsRun and _v4.mvWantsRun() then _v4.lfHeld.Run = nil return end
local _v15d = _v15b and _v15b.Controls and pcall(function() _v15b.Controls:HandleAction(_v159, _v15a) end)
if not _v15d and _v159 == _pguo("+CFA987uZA==") then
pcall(function() _v4.VIM:SendKeyEvent(_v15a, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = _v15a or nil
end
_v4.lfHeld[_v159] = _v15a or nil
end
local function _v15e()
for _v15f in pairs(_v4.lfHeld) do
pcall(function() _v4.getCS().Controls:HandleAction(_v15f, false) end)
end
_v4.lfHeld = {}
if _v4.lfVimW then
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.W, false, game) end)
_v4.lfVimW = nil
end
end
local _v15g = 6
local function _v15h(_v15i, _v15j)
if not _v4.lfCircleDir then _v4.lfCircleDir = (math.random() < 0.5) and 1 or -1 end
local _v15k = Vector3.new(_v15j.X - _v15i.X, 0, _v15j.Z - _v15i.Z)
local _v15l = _v15k.Magnitude
local _v15m = (_v15l > 0.5) and (_v15k / _v15l) or Vector3.new(1, 0, 0)
local _v15n = Vector3.new(-_v15m.Z * _v4.lfCircleDir, 0, _v15m.X * _v4.lfCircleDir)
local _v15o = math.clamp((_v15l - _v15g) / _v15g, -1, 1)
_v4.lfHeading = _v14x(_v15n - _v15m * _v15o, _v4.lfHeading or _v15n)
_v158(_pguo("6jxd9A=="), false)
_v158(_pguo("7Dtc"), false)
_v158(_pguo("+CFA987uZA=="), true)
end
local function _v15p()
if _v4.lfColliders then
for _v15q in pairs(_v4.lfColliders) do
if _v15q.Parent then pcall(function() _v15q.CanCollide = true end) end
end
end
_v4.lfColliders, _v4.lfCollidersChar = nil, nil
end
local function _v15r(_v15s)
if _v4.lfCollidersChar ~= _v15s then
_v15p()
local _v15t = {}
for _v15u, _v15v in ipairs(_v15s:GetDescendants()) do
if _v15v:IsA(_pguo("/C9B5f/9cgw=")) and _v15v.CanCollide then _v15t[_v15v] = true end
end
for _v15w, _v15x in ipairs({ _pguo("/CFW+Q=="), _pguo("9idGwsDk") }) do
local _v15y = _v15s:FindFirstChild(_v15x)
if _v15y and _v15y:IsA(_pguo("/C9B5f/9cgw=")) then _v15t[_v15y] = true end
end
_v4.lfColliders, _v4.lfCollidersChar = _v15t, _v15s
end
for _v15z in pairs(_v4.lfColliders) do
if _v15z.Parent and _v15z.CanCollide then _v15z.CanCollide = false end
end
end
_v4.lfWallKeys = _v4.lfWallKeys or {}
function _v4.wallAdd(_v160, _v161, _v162)
local _v163 = math.floor(_v160.X + 0.5) .. ":" .. math.floor(_v160.Y + 0.5) .. ":" .. math.floor(_v160.Z + 0.5)
.. ":" .. math.floor(_v161.X + 0.5) .. ":" .. math.floor(_v161.Z + 0.5)
if _v4.lfWallKeys[_v163] then return end
_v4.lfWallKeys[_v163] = true
_v4.lfBarriers[{ CFrame = _v160, Size = _v161, Parent = true, Radius = (_v161 * 0.5).Magnitude, Saved = _v162 }] = true
if _v162 and not _v4.wallsSavePending then
_v4.wallsSavePending = true
task.delay(10, function() _v4.wallsSavePending = nil pcall(_v4.wallsSave) end)
end
end
function _v4.wallsFile()
local _v164
pcall(function() _v164 = _v4.req(_v4.WATER_RS.Packages.Knit).Ecosystem end)
if type(_v164) ~= _pguo("zTpA6cH7") or _v164 == "" then return nil end
return _pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HffO8GwLkw==") .. _v164:gsub(_pguo("5RAX9/I="), "_") .. _pguo("kCRB78E=")
end
function _v4.wallsSave()
local _v165 = _v4.wallsFile()
if not _v165 or _v4.UNLOADED then return end
local _v166 = {}
for _v167 in pairs(_v4.lfBarriers) do
if _v167.Saved then
local _v168 = { _v167.CFrame:GetComponents() }
_v168[13], _v168[14], _v168[15] = _v167.Size.X, _v167.Size.Y, _v167.Size.Z
for _v169 = 1, 15 do _v168[_v169] = math.floor(_v168[_v169] * 1000 + 0.5) / 1000 end
_v166[#_v166 + 1] = _v168
end
end
if not isfolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) then makefolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) end
writefile(_v165, game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONEncode({ v = 1, walls = _v166 }))
end
function _v4.wallsLoad()
local _v16a = _v4.wallsFile()
local _v16b, _v16c = pcall(function() return game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONDecode(readfile(_v16a)) end)
if not (_v16b and type(_v16c) == _pguo("yi9Q7Mo=") and type(_v16c.walls) == _pguo("yi9Q7Mo=")) then return end
for _v16d, _v16e in ipairs(_v16c.walls) do
if type(_v16e) == _pguo("yi9Q7Mo=") and #_v16e == 15 then
pcall(function()
_v4.wallAdd(CFrame.new(table.unpack(_v16e, 1, 12)), Vector3.new(_v16e[13], _v16e[14], _v16e[15]), false)
end)
end
end
for _v16f in pairs(_v4.lfBarriers) do if _v16f.Saved == false then _v16f.Saved = true end end
end
function _v4.wallsRect()
local _v16g
pcall(function()
local _v16h = _v4.req(_v4.WATER_RS.Packages.Knit).Ecosystem
_v16g = _v4.req(_v4.WATER_RS.Shared.MapData).MapEcosystemData[_v16h]
end)
if not (_v16g and typeof(_v16g.MapSize) == _pguo("6CtR9MDuMg==") and typeof(_v16g.MapCenter) == _pguo("6CtR9MDuMg==")) then return end
local _v16i, _v16j, _v16k = _v16g.MapCenter, _v16g.MapSize.X / 2, _v16g.MapSize.Y / 2
local function _v16l(_v16m) return math.abs(_v16m.X - _v16i.X) <= _v16j and math.abs(_v16m.Z - _v16i.Y) <= _v16k end
local _v16n, _v16o = 0, 0
pcall(function()
for _v16p, _v16q in ipairs(workspace.UnstuckPoints:GetChildren()) do
if _v16q:IsA(_pguo("/QhA4cL5VhnSO1c=")) then
_v16n = _v16n + 1
if _v16l(_v16q.Value.Position) then _v16o = _v16o + 1 end
end
end
end)
local _v16r = _v4.getLocalPhysicsRoot()
if (_v16r and not _v16l(_v16r.Position)) or (_v16n > 0 and _v16o < _v16n * 0.95) then
_v4.wallsRectNote = _pguo("0y9CoN35YwzfIFXsyrxuF8puR/PK+CBQ") .. _v16o .. "/" .. _v16n .. _pguo("njtc89vpYxOePl3pwehzWNcgQenL+Sk=")
return
end
local _v16s, _v16t, _v16u = 50, 20, 200000
_v4.wallAdd(CFrame.new(_v16i.X + _v16j - _v16s + _v16t / 2, 0, _v16i.Y), Vector3.new(_v16t, _v16u, 2 * _v16k + 2 * _v16t), nil)
_v4.wallAdd(CFrame.new(_v16i.X - _v16j + _v16s - _v16t / 2, 0, _v16i.Y), Vector3.new(_v16t, _v16u, 2 * _v16k + 2 * _v16t), nil)
_v4.wallAdd(CFrame.new(_v16i.X, 0, _v16i.Y + _v16k - _v16s + _v16t / 2), Vector3.new(2 * _v16j + 2 * _v16t, _v16u, _v16t), nil)
_v4.wallAdd(CFrame.new(_v16i.X, 0, _v16i.Y - _v16k + _v16s - _v16t / 2), Vector3.new(2 * _v16j + 2 * _v16t, _v16u, _v16t), nil)
_v4.wallsRectNote = _pguo("0y9CoN35YwzfIFXsyrxvFp5m") .. _v16o .. "/" .. _v16n .. _pguo("njtc89vpYxOePl3pwehzWNcgQenL+Sk=")
end
local function _v16v(_v16w)
local _v16x = workspace:FindFirstChild(_pguo("/Cdd7crv"))
local _v16y = _v16w.Parent
while _v16y and _v16y ~= _v16x and _v16y ~= workspace do
if _v16y.Name == _pguo("/C9A8sb5cg==") then return true end
_v16y = _v16y.Parent
end
return false
end
local function _v16z()
if _v4.lfBarriersTracked then return end
local _v170 = workspace:FindFirstChild(_pguo("/Cdd7crv"))
if not _v170 then return end
_v4.lfBarriersTracked = true
pcall(_v4.wallsLoad)
pcall(_v4.wallsRect)
local function _v171(_v172)
if _v172:IsA(_pguo("/C9B5f/9cgw=")) and _v16v(_v172) then _v4.wallAdd(_v172.CFrame, _v172.Size, true) end
end
for _v173, _v174 in ipairs(_v170:GetChildren()) do
local _v175 = (_v174.Name == _pguo("/C9A8sb5cg==")) and _v174 or _v174:FindFirstChild(_pguo("/C9A8sb5cg=="))
if _v175 then
for _v173, _v177 in ipairs(_v175:GetDescendants()) do _v171(_v177) end
end
end
table.insert(_v2l, _v170.DescendantAdded:Connect(function(_v178)
if not _v4.UNLOADED then _v171(_v178) end
end))
end
local function _v179(_v17a, _v17b)
for _v17c in pairs(_v4.lfBarriers) do
if _v17c.Radius and (_v17c.CFrame.Position - _v17a).Magnitude > _v17c.Radius + _v17b then
elseif _v17c.Parent then
local _v17d = _v17c.CFrame:PointToObjectSpace(_v17a)
local _v17e = _v17c.Size * 0.5
local _v17f = Vector3.new(math.max(math.abs(_v17d.X) - _v17e.X, 0), math.max(math.abs(_v17d.Y) - _v17e.Y, 0),
math.max(math.abs(_v17d.Z) - _v17e.Z, 0))
if _v17f.Magnitude < _v17b then return true end
else
_v4.lfBarriers[_v17c] = nil
end
end
return false
end
local function _v17g(_v17h, _v17i)
if next(_v4.lfBarriers) == nil then return true end
local _v17j = _v17i - _v17h
local _v17k = math.clamp(math.ceil(_v17j.Magnitude / 25), 1, 80)
for _v17l = 0, _v17k do
if _v179(_v17h + _v17j * (_v17l / _v17k), _v14b) then return false end
end
return true
end
local function _v17m(_v17n, _v17o)
local _v17p = _v17o - _v17n
local _v17q = _v17p:Dot(_v17p)
for _v17r in pairs(_v4.lfBarriers) do
local _v17s = true
if _v17r.Radius then
local _v17t = _v17r.CFrame.Position
local _v17u = (_v17q > 1e-6) and math.clamp((_v17t - _v17n):Dot(_v17p) / _v17q, 0, 1) or 0
_v17s = (_v17n + _v17p * _v17u - _v17t).Magnitude <= _v17r.Radius + 4
end
if _v17s and _v17r.Parent then
local _v17v, _v17w = _v17r.CFrame:PointToObjectSpace(_v17n), _v17r.CFrame:PointToObjectSpace(_v17o)
local _v17x = _v17r.Size * 0.5 + Vector3.new(2, 2, 2)
local _v17y, _v17z, _v180 = 0, 1, true
for _v181, _v182 in ipairs({ "X", "Y", "Z" }) do
local _v183, _v184, _v185 = _v17v[_v182], _v17w[_v182] - _v17v[_v182], _v17x[_v182]
if math.abs(_v184) < 1e-6 then
if math.abs(_v183) > _v185 then _v180 = false break end
else
local _v186, _v187 = (-_v185 - _v183) / _v184, (_v185 - _v183) / _v184
if _v186 > _v187 then _v186, _v187 = _v187, _v186 end
_v17y, _v17z = math.max(_v17y, _v186), math.min(_v17z, _v187)
if _v17y > _v17z then _v180 = false break end
end
end
if _v180 then return true end
end
end
return false
end
_v4.trackWalls, _v4.wallCross, _v4.wallNear = _v16z, _v17m, _v179
local function _v188(_v189)
local _v18a = {}
for _v18b, _v18c in ipairs(game:GetService(_pguo("/SFe7Mr/dBHRIGHl3eppG9s=")):GetTagged(_pguo("/SFc89rxYRrSK3Tvw/VhH9s="))) do
local _v18d, _v18e = pcall(_v4.foodSpot, _v18c)
if _v18d and _v18e then _v18a[#_v18a + 1] = { d = (_v18e - _v189).Magnitude, p = _v18e } end
end
table.sort(_v18a, function(_v18f, _v18g) return _v18f.d < _v18g.d end)
local _v18h, _v18i = math.min(#_v18a, 15), 0
for _v18j = 1, _v18h do
if _v17m(_v189, _v18a[_v18j].p) then _v18i = _v18i + 1 end
end
return _v18h > 0 and _v18i > _v18h / 2
end
local _v18k
local function _v18l(_v18m, _v18n, _v18o)
if not _v18k then
_v18k = RaycastParams.new()
_v18k.FilterType = Enum.RaycastFilterType.Include
local _v18p = { workspace.Terrain }
local _v18q = workspace:FindFirstChild(_pguo("6SFA7Ms="))
local _v18r = _v18q and _v18q:FindFirstChild(_pguo("8yFH7tv9aRbN"))
if _v18r then _v18p[2] = _v18r end
_v18k.FilterDescendantsInstances = _v18p
_v18k.IgnoreWater = true
end
local _v18s = workspace:Raycast(Vector3.new(_v18m, _v18o, _v18n), Vector3.new(0, -2500, 0), _v18k)
return _v18s and _v18s.Position.Y
end
local _v18t
local function _v18u(_v18v, _v18w, _v18x)
if not _v18t then
_v18t = RaycastParams.new()
_v18t.FilterType = Enum.RaycastFilterType.Include
local _v18y = { workspace.Terrain }
local _v18z = workspace:FindFirstChild(_pguo("6SFA7Ms="))
local _v190 = _v18z and _v18z:FindFirstChild(_pguo("8yFH7tv9aRbN"))
if _v190 then _v18y[2] = _v190 end
_v18t.FilterDescendantsInstances = _v18y
_v18t.IgnoreWater = false
end
local _v191 = workspace:Raycast(Vector3.new(_v18v, _v18x, _v18w), Vector3.new(0, -2500, 0), _v18t)
if _v191 and _v191.Material == Enum.Material.Water then return _v191.Position.Y end
return nil
end
local function _v192(_v193, _v194)
local _v195 = _v193.Y + 1500
if not _v18u(_v193.X, _v193.Z, _v195) then return nil end
_v194 = _v194 or Vector3.new(1, 0, 0)
local _v196 = math.atan2(_v194.Z, _v194.X)
local _v197 = { 0, 1, -1, 2, -2, 3, -3, 4, -4, 5, -5, 6, -6, 7, -7, 8 }
for _v198 = 20, 400, 20 do
for _v199, _v19a in ipairs(_v197) do
local _v19b = _v196 + _v19a * math.pi / 8
local _v19c, _v19d = _v193.X + math.cos(_v19b) * _v198, _v193.Z + math.sin(_v19b) * _v198
if not _v18u(_v19c, _v19d, _v195) and _v18l(_v19c, _v19d, _v195)
and not _v17m(_v193, Vector3.new(_v19c, _v193.Y, _v19d)) then
return Vector3.new(_v19c, _v193.Y, _v19d)
end
end
end
return nil
end
local _v19e = 3
local _v19f = { { 15, 8 }, { 30, 8 }, { 45, 12 } }
local function _v19g(_v19h, _v19i, _v19j)
local _v19k = _v18u(_v19h, _v19i, _v19j)
if not _v19k then return false end
local _v19l = _v18l(_v19h, _v19i, _v19j)
return not _v19l or _v19k - _v19l >= _v19e
end
local _v19m, _v19n = {}, 0
local function _v19o(_v19p)
local _v19q = math.floor(_v19p.X / 8) .. ":" .. math.floor(_v19p.Z / 8)
local _v19r = _v19m[_v19q]
if _v19r == true or (_v19r and os.clock() < _v19r) then return _v19r == true end
if _v19r == nil then
_v19n = _v19n + 1
if _v19n > 20000 then
local _v19s, _v19t = os.clock(), 0
for _v19u, _v19v in pairs(_v19m) do
if _v19v ~= true and _v19s >= _v19v then _v19m[_v19u] = nil else _v19t = _v19t + 1 end
end
if _v19t > 20000 then table.clear(_v19m) _v19t = 0 end
_v19n = _v19t + 1
end
end
local _v19w = _v19p.Y + 1500
local _v19x = _v18u(_v19p.X, _v19p.Z, _v19w) ~= nil
for _v19y, _v19z in ipairs(_v19f) do
if _v19x then break end
local _v1a0, _v1a1 = _v19z[1], _v19z[2]
for _v1a2 = 0, _v1a1 - 1 do
local _v1a3 = _v1a2 * 2 * math.pi / _v1a1
if _v18u(_v19p.X + math.cos(_v1a3) * _v1a0, _v19p.Z + math.sin(_v1a3) * _v1a0, _v19w) ~= nil then _v19x = true break end
end
end
_v19m[_v19q] = _v19x or (os.clock() + 30)
return _v19x
end
local function _v1a4(_v1a5)
return not _v19o(_v1a5)
end
local _v1a6, _v1a7, _v1a8, _v1a9 = 60, 30, 300, 20
local function _v1aa(_v1ab, _v1ac)
local _v1ad = Vector3.new(_v1ac.X - _v1ab.X, 0, _v1ac.Z - _v1ab.Z)
local _v1ae = _v1ad.Magnitude
if _v1ae < 10 then return nil end
local _v1af = _v1ad / _v1ae
local _v1ag = math.max(_v1ab.Y, _v1ac.Y) + 1500
local _v1ah, _v1ai
for _v1aj = 10, _v1ae, 15 do
if not _v1ah and _v1aj > _v1a6 then return nil end
if _v19g(_v1ab.X + _v1af.X * _v1aj, _v1ab.Z + _v1af.Z * _v1aj, _v1ag) then
_v1ah = _v1ah or _v1aj
_v1ai = _v1aj
elseif _v1ai and _v1aj - _v1ai > 45 then
break
end
end
if not _v1ai then return nil end
local _v1ak = math.min(_v1ai + _v1a7, _v1ae)
while _v1ak < _v1ae and _v18u(_v1ab.X + _v1af.X * _v1ak, _v1ab.Z + _v1af.Z * _v1ak, _v1ag) do _v1ak = _v1ak + 15 end
_v1ak = math.min(_v1ak, _v1ae)
local _v1al, _v1am = _v1ab.X + _v1af.X * _v1ak, _v1ab.Z + _v1af.Z * _v1ak
if _v1ak - _v1ah > _v1a8 or _v18u(_v1al, _v1am, _v1ag) or not _v18l(_v1al, _v1am, _v1ag) then return nil, true end
return Vector3.new(_v1al, _v1ac.Y, _v1am)
end
local function _v1an(_v1ao, _v1ap, _v1aq)
_v1ap = _v1ap or _v14n(_v1ao.X, _v1ao.Y + 5, _v1ao.Z) or _v1ao.Y
local _v1ar = _v18l(_v1ao.X, _v1ao.Z, _v1ao.Y + 1200)
return _v1ar ~= nil and _v1ar - _v1ap > math.max(_v1aq * 2, 25)
end
local function _v1as(_v1at, _v1au, _v1av, _v1aw)
local _v1ax = _v14n(_v1at.X, _v1at.Y + 60, _v1at.Z) or _v14n(_v1at.X, _v1at.Y + 300, _v1at.Z)
if _v1ax == nil or math.abs(_v1at.Y - (_v1ax + _v1av + _v1aw)) > _v1au * _v13u then return false end
return not _v1an(_v1at, _v1ax, _v1av)
end
local function _v1ay()
local _v1az
pcall(function()
local _v1b0 = _v4.getCS().Replica.Data
_v1az = _v1b0.Stats.Stamina / math.max(_v1b0.MaxStats.Stamina, 1)
end)
if not _v1az then return end
if _v4.lfTired then
if _v1az >= _v149 then _v4.lfTired = false end
elseif _v1az <= _v148 then
_v4.lfTired = true
end
end
local function _v1b1(_v1b2)
local _v1b3 = 5
pcall(function() _v1b3 = _v4.getCS().Data.Movement.Speeds.Land.Normal or _v1b3 end)
return _v1b2 / math.max(_v1b3, 1) * 1.6 + 20
end
local function _v1b4(_v1b5)
local _v1b6 = _v4.lfTarget
if _v1b5 and _v1b6 and _v1b6.id then
if _v1b5 >= _v13w then
local _v1b7 = (_v4.lfGiveUps[_v1b6.id] or 0) + 1
_v4.lfGiveUps[_v1b6.id] = _v1b7
if _v1b7 >= 2 then _v1b5 = math.max(_v1b5, _v13x) end
end
_v4.lfExclude[_v1b6.id] = os.clock() + _v1b5
end
_v4.lfTarget, _v4.lfEat = nil, nil
_v4.lfLastScan = 0
_v4.lfProgPos = nil
end
local function _v1b8(_v1b9, _v1ba, _v1bb)
_v15e()
_v4.lfEat = nil
local _v1bc = _v14n(_v1ba.X, _v1ba.Y + 5, _v1ba.Z) or (_v1ba.Y - _v1bb)
local _v1bd = _v4.lfHeading or _v14x(_v1b9.CFrame.LookVector, Vector3.new(0, 0, -1))
_v4.lfFly = { phase = "up", pos = _v1ba, dest = Vector3.new(_v1ba.X, _v1bc + _v1bb + _v143, _v1ba.Z), dir = _v1bd }
_v4.lfProgPos = nil
end
local function _v1be(_v1bf)
local _v1bg, _v1bh
for _v1bi, _v1bj in ipairs(_v0:GetPlayers()) do
if _v1bj ~= _v2 and _v1bj.Character then
local _v1bk = _v4.getRootOf(_v1bj.Character, false)
if _v1bk then
local _v1bl = (_v1bk.Position - _v1bf).Magnitude
if not _v1bh or _v1bl < _v1bh then _v1bg, _v1bh = _v1bk.Position, _v1bl end
end
end
end
return _v1bg, _v1bh
end
function _v14g.noteStart(_v1bm)
local _v1bn, _v1bo = _v4.lfEsc, {}
for _v1bp, _v1bq in ipairs(_v1bn.starts) do if _v1bm - _v1bq < 60 then _v1bo[#_v1bo + 1] = _v1bq end end
_v1bo[#_v1bo + 1] = _v1bm
_v1bn.starts = _v1bo
end
function _v14g.noteDir(_v1br, _v1bs, _v1bt)
local _v1bu = _v4.lfEsc
_v1bu.fleeSince = _v1bu.fleeSince or _v1bt
if not _v1bu.baseDir or _v1bt - _v1bu.baseT >= 2 then
if _v1bu.baseDir and _v1br:Dot(_v1bu.baseDir) < -0.3 then
local _v1bv = {}
for _v1bw, _v1bx in ipairs(_v1bu.revs) do if _v1bt - _v1bx < 25 then _v1bv[#_v1bv + 1] = _v1bx end end
_v1bv[#_v1bv + 1] = _v1bt
_v1bu.revs = _v1bv
end
_v1bu.baseDir, _v1bu.baseT = _v1br, _v1bt
end
if not _v1bu.trailT or _v1bt - _v1bu.trailT >= 1 then
_v1bu.trail = _v1bu.trail or {}
table.insert(_v1bu.trail, { t = _v1bt, pos = _v1bs })
while #_v1bu.trail > 0 and _v1bt - _v1bu.trail[1].t > 20 do table.remove(_v1bu.trail, 1) end
_v1bu.trailT = _v1bt
end
end
function _v14g.boxed(_v1by, _v1bz)
local _v1c0 = _v4.lfEsc
if _v1by < (_v1c0.lockUntil or 0) then return false end
local _v1c1, _v1c2 = 0, 0
for _v1c3, _v1c4 in ipairs(_v1c0.revs) do if _v1by - _v1c4 < 25 then _v1c1 = _v1c1 + 1 end end
for _v1c5, _v1c6 in ipairs(_v1c0.starts) do if _v1by - _v1c6 < 60 then _v1c2 = _v1c2 + 1 end end
if _v1c1 >= 3 or _v1c2 >= 3 then return true end
if _v1c0.fleeSince and _v1by - _v1c0.fleeSince >= 15 and _v1c0.trail then
for _v1c7, _v1c8 in ipairs(_v1c0.trail) do
if _v1by - _v1c8.t >= 15 then
return Vector3.new(_v1bz.X - _v1c8.pos.X, 0, _v1bz.Z - _v1c8.pos.Z).Magnitude < 60
end
end
end
return false
end
function _v14g.pick(_v1c9, _v1ca)
local _v1cb = {}
for _v1cc, _v1cd in ipairs(_v0:GetPlayers()) do
if _v1cd ~= _v2 and _v1cd.Character then
local _v1ce = _v4.getRootOf(_v1cd.Character, false)
if _v1ce then _v1cb[#_v1cb + 1] = _v1ce.Position end
end
end
local _v1cf = math.max(_v14g.MIN_SAFE, (_v4.LF_FLYAWAY_RADIUS or 150) * 2 + 50, (_v4.LF_AVOID or 200) * 1.5)
local _v1cg = _v4.lfDrink
if _v1cg and _v1cg.stand and _v17g(_v1c9, _v1cg.stand) then
local _v1ch, _v1ci = _v4.myWater()
local _v1cj = _v1ch ~= nil and _v1ci ~= nil and _v1ci > 0 and _v1ch / _v1ci < (_v4.LF_WATER_CRITICAL or 0.01)
if not _v1cj then
_v1cj = true
for _v1ck, _v1cl in ipairs(_v1cb) do
if Vector3.new(_v1cl.X - _v1cg.stand.X, 0, _v1cl.Z - _v1cg.stand.Z).Magnitude < _v1cf then _v1cj = false break end
end
end
if _v1cj then return _v1cg.stand, true end
end
if _v4.afkPickFood then
local _v1cm = _v4.khRange()
local _v1cn = _v14v()
local _v1co = _v1cn and (_v1cn.Position.Y - _v1c9.Y) or 8
local _v1cr, _v1cs, _v1ct, _v1cu = pcall(_v4.afkPickFood, _v1c9, _v4.lfExclude, {
avoid = _v1cf, meat = _v4.dinoEatsMeat(), maxDist = _v14g.MAX_DIST,
feetY = _v1c9.Y - _v1ca, yWeight = 5,
reach = function(_v1cp, _v1cq)
if not _v1a4(_v1cp) then return false end
if not _v17g(_v1c9, _v1cp) then return false end
if _v1cq then return not _v1an(_v1cp, nil, _v1ca) end
return _v1as(_v1cp, _v1cm, _v1ca, _v1co)
end,
})
if _v1cr and _v1cs and _v1cu then return _v1cu end
end
local _v1cv, _v1cw
for _v1cx = 0, 15 do
local _v1cy = _v1cx * math.pi / 8
local _v1cz = Vector3.new(math.cos(_v1cy), 0, math.sin(_v1cy))
for _v1d0, _v1d1 in ipairs({ _v1cf + 150, _v1cf + 400 }) do
local _v1d2 = _v1c9 + _v1cz * _v1d1
if _v17g(_v1c9, _v1d2) and not _v18u(_v1d2.X, _v1d2.Z, _v1d2.Y + 1500) then
local _v1d3 = math.huge
for _v1d0, _v1d5 in ipairs(_v1cb) do
_v1d3 = math.min(_v1d3, Vector3.new(_v1d5.X - _v1d2.X, 0, _v1d5.Z - _v1d2.Z).Magnitude)
end
if not _v1cw or _v1d3 > _v1cw then _v1cv, _v1cw = _v1d2, _v1d3 end
end
end
end
return _v1cv
end
function _v14g.start(_v1d6, _v1d7, _v1d8, _v1d9)
local _v1da = _v4.lfEsc
local _v1db, _v1dc = _v14g.pick(_v1d7, _v1d8)
_v1da.revs, _v1da.starts, _v1da.trail, _v1da.trailT, _v1da.baseDir, _v1da.fleeSince = {}, {}, nil, nil, nil, nil
if not _v1db then _v1da.lockUntil = _v1d9 + 20 return false end
_v1da.lockUntil = _v1d9 + 45
_v15e()
_v1b4(nil)
_v4.lfFleeing = false
if _v4.lfDrink then _v4.lfDrink.deadline = math.max(_v4.lfDrink.deadline or _v1d9, _v1d9 + _v14g.MAX_TIME + 60) end
local _v1dd = _v14x(_v1db - _v1d7, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _pguo("2z1R4d/5"), toWater = _v1dc, phase = _pguo("zCdB5Q=="), pos = _v1d7, start = _v1d7, dir = _v1dd, goal = _v1db, t0 = _v1d9,
cf = CFrame.lookAt(_v1d7, _v1d7 + _v1dd),
dest = Vector3.new(_v1d7.X, math.max(_v1d7.Y, _v14g.floorAt(_v1d7) + _v1d8 + _v14g.ALT), _v1d7.Z) }
_v4.lfHeading = _v1dd
_v4.lfProgPos = nil
return true
end
function _v14g.floorAt(_v1de)
local _v1df = _v1de.Y + 1500
local _v1dg = math.max(_v18l(_v1de.X, _v1de.Z, _v1df) or -math.huge, _v18u(_v1de.X, _v1de.Z, _v1df) or -math.huge)
if _v1dg == -math.huge then return _v1de.Y - _v14s() end
return _v1dg
end
local function _v1dh(_v1di, _v1dj, _v1dk, _v1dl, _v1dm)
if next(_v4.lfBarriers) and _v17m(_v1dj, _v1dm) then return false end
_v15e()
_v4.lfEat = nil
local _v1dn = _v14x(_v1dm - _v1dj, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _pguo("2z1R4d/5"), cross = true, maxT = _v1a9, phase = _pguo("zCdB5Q=="), pos = _v1dj, start = _v1dj, dir = _v1dn, goal = _v1dm, t0 = _v1dl,
cf = CFrame.lookAt(_v1dj, _v1dj + _v1dn),
dest = Vector3.new(_v1dj.X, math.max(_v1dj.Y, _v14g.floorAt(_v1dj) + _v1dk + _v14g.ALT), _v1dj.Z) }
if _v4.lfTarget then _v4.lfTarget.deadline = (_v4.lfTarget.deadline or _v1dl) + _v14g.MAX_TIME end
_v4.lfHeading = _v1dn
_v4.lfProgPos = nil
return true
end
_v14g.HEAL_UP = 150
function _v14g.hide(_v1do, _v1dp, _v1dq, _v1dr)
_v15e()
_v1b4(nil)
_v4.lfEat, _v4.lfHeading = nil, nil
_v4.lfFly = { kind = _pguo("1idW5Q=="), phase = _pguo("zCdB5Q=="), pos = _v1dp, start = _v1dp, t0 = _v1dr,
dir = _v14x(_v1do.CFrame.LookVector, Vector3.new(0, 0, -1)),
dest = Vector3.new(_v1dp.X, math.max(_v1dp.Y, _v14g.floorAt(_v1dp) + _v1dq + _v14g.HEAL_UP), _v1dp.Z) }
_v4.lfProgPos = nil
end
function _v14g.surface(_v1ds)
local _v1dt, _v1du = _v2.Character, _v4.getLocalPhysicsRoot()
if not (_v1dt and _v1dt.Parent and _v1du) then return end
local _v1dv = _v1du.Position
local _v1dw = _v18l(_v1dv.X, _v1dv.Z, _v1dv.Y + 1500)
if not _v1dw then return end
local _v1dx = _v14s()
if _v1dv.Y > _v1dw - 2 and _v1dv.Y < _v1dw + _v1dx + 6 then return end
local _v1dy = {}
if _v1dv.Y <= _v1dw - 2 then _v1dy[#_v1dy + 1] = Vector3.new(_v1dv.X, _v1dw + _v1dx + 10, _v1dv.Z) end
local _v1dz = _v192(_v1dv, _v1ds.dir)
if _v1dz then _v1dy[#_v1dy + 1] = Vector3.new(_v1dz.X, math.max(_v1dv.Y, _v1dw + _v1dx + 10), _v1dz.Z) end
_v1dy[#_v1dy + 1] = _pguo("0i9c5A==")
local _v1e0 = _v1du.CFrame.Rotation
_v4.lfSurfacing = true
task.spawn(function()
local _v1e1, _v1e2 = os.clock(), 1
local _v1e3 = _v1dy[1]
_v15r(_v1dt)
while os.clock() - _v1e1 < 25 and _v1dt.Parent and _v1du.Parent do
if _v1e3 == _pguo("0i9c5A==") then
local _v1e4 = _v14n(_v1dv.X, _v1dv.Y, _v1dv.Z) or _v18l(_v1dv.X, _v1dv.Z, _v1dv.Y + 1500) or (_v1dv.Y - _v1dx)
_v1e3 = Vector3.new(_v1dv.X, _v1e4 + _v1dx, _v1dv.Z)
end
local _v1e5 = task.wait(0.03)
_v1dv = _v4.govNext(_v1dv, _v1e3, math.min(_v1e5 or 0.03, 0.1), _v14d)
_v154(_v1du, CFrame.new(_v1dv) * _v1e0)
_v151(_v1dt, _v1dv.Y)
if (_v1dv - _v1e3).Magnitude < 2 then
_v1e2 = _v1e2 + 1
if not _v1dy[_v1e2] then break end
_v1e3 = _v1dy[_v1e2]
end
end
_v151(_v1dt, nil)
_v15p()
_v4.flyLandUntil = os.clock() + 10
_v4.lfSurfacing = nil
end)
end
function _v14g.drink(_v1e6, _v1e7, _v1e8, _v1e9)
local _v1ea, _v1eb = _v4.myWater()
local _v1ec = (_v1ea and _v1eb and _v1eb > 0) and _v1ea / _v1eb or 1
local _v1ed = _v4.lfDrink
if not _v1ed then
if _v1ec > (_v4.DRINK_AT or 0.2) or _v1e9 < (_v4.lfDrinkRetry or 0) then return false end
if _v4.WATER_ANYWHERE and _v1ec >= 0.25 then return false end
local _v1ee = _v4.drinkSpot
if not _v1ee or _v1e9 - _v1ee.t > 20 or (_v1ee.from - _v1e7).Magnitude > 200 then
_v4.drinkFind(_v1e7, _v4.DRINK_SEARCH or 1500, _v4.LF_AVOID or 200)
return false
end
_v4.drinkSpot = nil
if not _v1ee.stand then
_v4.lfDrinkRetry = _v1e9 + 45
_v4.lfDrinkNote = _pguo("0CES987oZQqeKF31wfggD9c6WunBvA==") .. (_v4.DRINK_SEARCH or 1500) .. _pguo("nj1G9cvv")
return false
end
local _v1ef = Vector3.new(_v1ee.stand.X - _v1e7.X, 0, _v1ee.stand.Z - _v1e7.Z).Magnitude
_v1ed = { stand = _v1ee.stand, water = _v1ee.water, out = _v1ee.out, swims = 0, deadline = _v1e9 + _v1b1(_v1ef) + 60 }
_v4.lfDrink, _v4.lfDrinkNote = _v1ed, nil
_v1b4(nil)
_v4.lfEat = nil
end
local function _v1eg()
_v4.drinkBad[_v4.drinkCell(_v1ed.stand)] = true
_v4.lfDrink, _v4.lfDrinkRetry = nil, _v1e9 + 5
_v15e()
return false
end
if _v1ec >= 0.99 then _v4.lfDrink = nil _v15e() return false end
if _v1e9 > _v1ed.deadline or _v1ed.swims >= 2 then return _v1eg() end
if _v4.headOverWater() then
_v158(_pguo("+CFA987uZA=="), false)
_v158(_pguo("7Dtc"), false)
_v158(_pguo("6jxd9A=="), false)
_v4.lfProgPos = nil
_v1ed.drinkT = _v1ed.drinkT or _v1e9
if not _v1ed.lastW or _v1ea > _v1ed.lastW + 0.001 then _v1ed.lastW, _v1ed.gainT = _v1ea, _v1e9 end
if _v1e9 - math.max(_v1ed.drinkT, _v1ed.gainT or 0) > 15 then return _v1eg() end
_v4.lfStatus = _pguo("2jxb7sT1bh+eZg==") .. math.floor(_v1ec * 100) .. "%)"
return true
end
_v1ed.drinkT = nil
if _v1ec < (_v4.LF_WATER_CRITICAL or 0.01) and not _v1ed.flown and not _v1ed.reached
and Vector3.new(_v1ed.stand.X - _v1e7.X, 0, _v1ed.stand.Z - _v1e7.Z).Magnitude > 60 and _v17g(_v1e7, _v1ed.stand) then
_v1ed.flown = true
_v1ed.deadline = math.max(_v1ed.deadline, _v1e9 + _v14g.MAX_TIME + 60)
_v15e()
_v4.lfEat = nil
local _v1eh = _v14x(_v1ed.stand - _v1e7, _v4.lfHeading or Vector3.new(0, 0, -1))
_v4.lfFly = { kind = _pguo("2z1R4d/5"), toWater = true, critical = true, phase = _pguo("zCdB5Q=="), pos = _v1e7, start = _v1e7,
dir = _v1eh, goal = _v1ed.stand, t0 = _v1e9, cf = CFrame.lookAt(_v1e7, _v1e7 + _v1eh),
dest = Vector3.new(_v1e7.X, math.max(_v1e7.Y, _v14g.floorAt(_v1e7) + _v1e8 + _v14g.ALT), _v1e7.Z) }
_v4.lfHeading = _v1eh
_v4.lfProgPos = nil
return true
end
local _v1ei = _v1ed.reached and (_v1ed.out or _v1ed.water) or _v1ed.stand
local _v1ej = Vector3.new(_v1ei.X - _v1e7.X, 0, _v1ei.Z - _v1e7.Z)
if not _v1ed.reached and _v1ej.Magnitude < 5 then _v1ed.reached = true end
if _v1ed.reached and _v1ej.Magnitude < 3 then return _v1eg() end
_v4.lfHeading = _v14x(_v1ej, _v4.lfHeading)
if not _v1ed.reached and _v1e9 - (_v1ed.wetT or 0) >= 1 then
_v1ed.wetT = _v1e9
local _v1ek, _v1el = _v1aa(_v1e7, _v1ed.stand)
if _v1el then return _v1eg() end
if _v1ek and _v1dh(_v1e6, _v1e7, _v1e8, _v1e9, _v1ek) then return true end
end
if not _v1ed.progPos or Vector3.new(_v1e7.X - _v1ed.progPos.X, 0, _v1e7.Z - _v1ed.progPos.Z).Magnitude > _v142 then
_v1ed.progPos, _v1ed.progT = _v1e7, _v1e9
elseif _v1e9 - _v1ed.progT > 6 then
_v1ed.progPos, _v1ed.flyOuts = nil, (_v1ed.flyOuts or 0) + 1
if _v1ed.flyOuts > 2 then return _v1eg() end
_v1b8(_v1e6, _v1e7, _v1e8)
_v4.lfFly.overTo = _v1ed.stand
return true
end
_v158(_pguo("6jxd9A=="), false)
_v158(_pguo("7Dtc"), false)
_v158(_pguo("+CFA987uZA=="), true)
_v4.lfStatus = _pguo("yiZb8tzoeViW") .. math.floor(_v1ec * 100) .. _pguo("m2cSrY/rYRTVJ1znj+hvWMkvRuXdsCA=") .. math.floor(_v1ej.Magnitude) .. _pguo("nj1G9cvv")
return true
end
function _v14g.holdDrink(_v1em, _v1en)
local _v1eo = _v4.lfDrink
if not _v1eo then return false end
local _v1ep, _v1eq = _v4.myWater()
if _v1ep and _v1eq and _v1eq > 0 and _v1ep / _v1eq < (_v4.LF_WATER_CRITICAL or 0.01) then return true end
if not _v1eo.drinkT then return false end
if _v1en - (_v1eo.closeT or 0) >= 1 then
local _v1er = _v1en - (_v1eo.closeT or _v1en)
_v1eo.closeT = _v1en
_v1eo.seen = _v1eo.seen or {}
local _v1es = math.max(_v4.LF_AVOID or 200, _v4.LF_FLYAWAY_RADIUS or 150)
local _v1et = false
for _v1eu, _v1ev in ipairs(_v0:GetPlayers()) do
local _v1ew = _v1ev ~= _v2 and _v1ev.Character and _v4.getRootOf(_v1ev.Character, false)
if _v1ew then
local _v1ex = (_v1ew.Position - _v1em).Magnitude
local _v1ey = _v1eo.seen[_v1ev]
local _v1ez = _v1ey ~= nil and _v1er > 0 and (_v1ey.dist - _v1ex) / _v1er >= 1.5
local _v1f0 = _v1ez and (_v1ey.n + 1) or 0
_v1eo.seen[_v1ev] = { dist = _v1ex, n = _v1f0 }
if _v1f0 >= 2 and _v1ex <= _v1es then _v1et = true end
end
end
_v1eo.closing = _v1et
end
return not _v1eo.closing
end
local function _v1f1(_v1f2, _v1f3, _v1f4, _v1f5)
local _v1f6 = os.clock()
_v14g.noteStart(_v1f6)
if _v14g.boxed(_v1f6, _v1f3) and _v14g.start(_v1f2, _v1f3, _v1f4, _v1f6) then return end
_v15e()
_v1b4(nil)
local _v1f7 = _v14n(_v1f3.X, _v1f3.Y + 5, _v1f3.Z) or (_v1f3.Y - _v1f4)
local _v1f8 = _v14x(_v1f3 - _v1f5, _v4.lfHeading or _v14x(_v1f2.CFrame.LookVector, Vector3.new(0, 0, -1)))
_v4.lfFly = { kind = _pguo("2CJX5Q=="), phase = "up", pos = _v1f3, start = _v1f3, dir = _v1f8, t0 = os.clock(),
dest = Vector3.new(_v1f3.X, _v1f7 + _v1f4 + _v14c, _v1f3.Z) }
_v4.lfProgPos = nil
end
function _v4.lfStop(_v1f9)
local _v1fa = _v4.lfFly
if _v1fa and _v1fa.plat then pcall(function() _v1fa.plat:Destroy() end) _v1fa.plat = nil end
if _v1fa and _v1fa.kind == _pguo("1idW5Q==") and _v1fa.phase == _pguo("zCtB9A==") and _v4.saveIsResting() then _v157() end
local _v1fb = (not _v1f9 and _v1fa) and _v1fa or nil
if _v4.lfResting == _pguo("zCtB9MbyZw==") and _v4.saveIsResting() then _v157() end
if _v4.lfAnchored then
local _v1fc = _v4.getLocalPhysicsRoot()
if _v1fc then pcall(function() _v1fc.Anchored = false end) end
_v4.lfAnchored = nil
end
_v4.lfResting, _v4.lfFly, _v4.lfHealUp = nil, nil, nil
_v15e()
_v15p()
if not _v1f9 then
local _v1fd = _v2.Character
if _v1fd then pcall(function() _v1fd:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
end
if _v4.lfRestoreInput then _v4.lfRestoreInput() end
_v4.lfWasOn, _v4.lfChar = false, nil
_v4.lfTarget, _v4.lfEat, _v4.lfHeading, _v4.lfProgPos, _v4.lfFleeing = nil, nil, nil, nil, false
_v4.lfDrink = nil
_v4.lfStatus = _pguo("0ShU")
_v4.lfEsc = { starts = {}, revs = {} }
_v4.flyLandUntil = os.clock() + 10
if _v1fb then _v14g.surface(_v1fb) end
end
function _v4.lfAdvance(_v1fe)
if _v4.UNLOADED then return end
if _v4.lfSurfacing then return end
if _v4.lfKeepInput then _v4.lfKeepInput() end
local _v1ff = _v4.lfFly and (_v4.lfFly.kind == _pguo("1idW5Q==") or _v4.lfFly.kind == _pguo("2z1R4d/5"))
local _v1fg = _v4.AFK_FARM or _v4.FLY or _v4.AUTO_FLY or _v4.ffOn() or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY
or (_v4.CLEAN_BREAK and not _v1ff)
if not _v4.LEGIT_FARM or _v1fg then
if _v4.lfWasOn then _v4.lfStop(_v1fg) end
return
end
local _v1fh = _v2.Character
local _v1fi = _v4.getLocalPhysicsRoot()
if not (_v1fh and _v1fi) then return end
if not _v1fh.Parent then
if _v4.lfWasOn then _v4.lfStop(false) end
return
end
_v1fe = math.min(_v1fe or 0.016, 0.1)
if _v4.lfWasOn and _v4.lfChar ~= _v1fh then _v4.lfStop(false) end
if not _v4.lfWasOn then
_v4.lfWasOn, _v4.lfChar = true, _v1fh
_v4.lfY = _v1fi.Position.Y
_v4.lfTarget, _v4.lfEat, _v4.lfLastScan = nil, nil, 0
_v16z()
end
local _v1fj = os.clock()
local _v1fk = _v1fi.Position
local _v1fl = _v14s()
local _v1fm = _v4.getCS()
local _v1fn, _v1fo
pcall(function() _v1fn = _v1fh:GetAttribute(_pguo("9itT7Nv0")); _v1fo = _v1fh:GetAttribute(_pguo("8y9KyMr9bAzW")) end)
local _v1fp = (type(_v1fn) == _pguo("0Dtf4sru") and type(_v1fo) == _pguo("0Dtf4sru") and _v1fo > 0) and _v1fn / _v1fo or 1
local function _v1fq()
if _v4.saveIsResting() then _v157() end
if _v4.lfAnchored then pcall(function() _v1fi.Anchored = false end); _v4.lfAnchored = nil end
_v4.lfResting = nil
_v4.lfY = _v1fk.Y
end
if _v4.lfResting then
local _v1fr, _v1fs = _v1be(_v1fk)
if _v1fr and _v1fs <= math.max(_v4.LF_FLYAWAY_RADIUS or 150, 150) then
_v1fq()
if not _v4.lfFly then _v1f1(_v1fi, _v1fk, _v1fl, _v1fr) end
end
end
if _v4.tookDamage(_v1fh, _v1fn) then
_v4.lfHealUp = true
if _v4.lfResting then
local _v1ft, _v1fu = _v1be(_v1fk)
if _v1ft and _v1fu <= 400 then _v1fq() end
end
if not _v4.lfFly and not _v4.lfResting then
local _v1fv, _v1fw = _v1be(_v1fk)
if _v1fv and _v1fw <= 400 then _v1f1(_v1fi, _v1fk, _v1fl, _v1fv) end
end
end
local _v1fx, _v1fy
if _v1fp < 0.99 then pcall(function() _v1fx, _v1fy = _v4.myFood() end) end
local _v1fz, _v1g0 = _v4.lfWantRest(_v1fp, _v4.lfHealUp, _v1fx, _v1fy)
if _v1g0 then _v4.lfHealUp = nil end
if _v4.LF_REST and not _v4.lfResting and not _v4.lfFly and _v1fz then
local _v1g1, _v1g2 = _v1be(_v1fk)
if _v1g1 and _v1g2 <= math.max(_v4.LF_FLYAWAY_RADIUS or 150, 150) then
_v1f1(_v1fi, _v1fk, _v1fl, _v1g1)
else
_v14g.hide(_v1fi, _v1fk, _v1fl, _v1fj)
return
end
elseif _v4.lfResting and (_v1fp >= 0.99 or not _v4.LF_REST or _v1g0) then
if _v4.saveIsResting() then _v157() end
if _v4.lfAnchored then pcall(function() _v1fi.Anchored = false end); _v4.lfAnchored = nil end
_v4.lfResting = nil
_v4.lfHealUp = nil
_v4.lfY = _v1fk.Y
end
if _v1fp >= 0.99 then _v4.lfHealUp = nil end
if _v4.lfResting then
if _v4.lfResting == _pguo("zStG9MP1bh8=") then
_v151(_v1fh, _v4.lfY)
if _v1fj - _v4.lfRestT >= 1 then
pcall(function() _v1fi.Anchored = true end)
_v4.lfAnchored = true
_v151(_v1fh, nil)
_v157()
_v4.lfResting, _v4.lfRestT = _pguo("zCtB9MbyZw=="), _v1fj
end
elseif not _v4.saveIsResting() and _v1fj - _v4.lfRestT > 6 then
_v157()
_v4.lfRestT = _v1fj
end
_v4.lfStatus = _pguo("zCtB9MbyZ1jKIRLoyv1sWJY=") .. math.floor(_v1fp * 100) .. "%)"
return
end
if _v1fi.Anchored and not (_v4.lfFly and _v4.lfFly.kind == _pguo("1idW5Q==")) then return end
_v15r(_v1fh)
if _v4.lfSteerPatch then _v4.lfSteerPatch() end
if not _v4.lfFly then
local _v1g3 = getgenv and getgenv()
if _v1g3 and _v1g3.EazyCheats_LfEscapeTest then
_v1g3.EazyCheats_LfEscapeTest = nil
if _v14g.start(_v1fi, _v1fk, _v1fl, _v1fj) then return end
end
end
if _v4.LF_FLYAWAY and not _v4.lfFly and not _v14g.holdDrink(_v1fk, _v1fj) then
local _v1g4, _v1g5 = _v1be(_v1fk)
if _v1g4 and _v1g5 <= (_v4.LF_FLYAWAY_RADIUS or 150) then _v1f1(_v1fi, _v1fk, _v1fl, _v1g4) end
end
if _v4.lfFly then
local _v1g6 = _v4.lfFly
if _v1g6.ride == nil then _v1g6.ride = _v1g6.kind ~= _pguo("1idW5Q==") end
if _v1g6.ride then
if _v1g6.kind == _pguo("2z1R4d/5") and _v1g6.phase == _pguo("zCdB5Q==") then
_v1g6.phase = _pguo("3TxH6dz5")
elseif _v1g6.kind == _pguo("2CJX5Q==") and _v1g6.phase == "up" then
_v1g6.phase = _pguo("3zlT+Q==")
elseif _v1g6.phase == "up" then
local _v1g7 = _v1g6.overTo or (_v1g6.pos + _v1g6.dir * _v144)
if next(_v4.lfBarriers) and _v179(_v1g7, _v14b) then _v1g7 = _v1g6.pos - _v1g6.dir * _v144 end
_v1g6.phase, _v1g6.dest = _pguo("0ThX8g=="), Vector3.new(_v1g7.X, _v1g6.pos.Y, _v1g7.Z)
end
end
if _v1g6.kind == _pguo("2CJX5Q==") and _v1g6.phase == _pguo("3zlT+Q==") then
local _v1g8, _v1g9 = _v1be(_v1g6.pos)
if _v1g8 then _v1g6.dir = _v14x(_v1g6.pos - _v1g8, _v1g6.dir) end
if next(_v4.lfBarriers) and _v17m(_v1g6.pos, _v1g6.pos + _v1g6.dir * 60) then
local _v1ga, _v1gb = Vector3.new(-_v1g6.dir.Z, 0, _v1g6.dir.X), Vector3.new(_v1g6.dir.Z, 0, -_v1g6.dir.X)
_v1g6.dir = (not _v17m(_v1g6.pos, _v1g6.pos + _v1ga * 60) and _v1ga)
or (not _v17m(_v1g6.pos, _v1g6.pos + _v1gb * 60) and _v1gb) or -_v1g6.dir
end
_v14g.noteDir(_v1g6.dir, _v1g6.pos, _v1fj)
if _v14g.boxed(_v1fj, _v1g6.pos) and _v14g.start(_v1fi, _v1g6.pos, _v1fl, _v1fj) then return end
_v1g6.dest = Vector3.new(_v1g6.pos.X + _v1g6.dir.X * 50, _v1g6.pos.Y, _v1g6.pos.Z + _v1g6.dir.Z * 50)
local _v1gc = not _v1g8 or _v1g9 > (_v4.LF_FLYAWAY_RADIUS or 150) * 2
local _v1gd = Vector3.new(_v1g6.pos.X - _v1g6.start.X, 0, _v1g6.pos.Z - _v1g6.start.Z).Magnitude
if (_v1gc and _v1gd >= _v14e) or os.clock() - _v1g6.t0 > _v14f then
local _v1ge = _v192(_v1g6.pos, _v1g6.dir)
if _v1ge then
_v1g6.phase, _v1g6.dest = _pguo("0ThX8g=="), _v1ge
else
local _v1gf = _v14n(_v1g6.pos.X, _v1g6.pos.Y, _v1g6.pos.Z)
_v1g6.phase, _v1g6.dest = _pguo("0i9c5A=="), Vector3.new(_v1g6.pos.X, (_v1gf or (_v1g6.pos.Y - _v14c - _v1fl)) + _v1fl, _v1g6.pos.Z)
end
end
end
if _v1g6.kind == _pguo("2z1R4d/5") and _v1g6.phase == _pguo("3TxH6dz5") then
local _v1gg = Vector3.new(_v1g6.goal.X - _v1g6.pos.X, 0, _v1g6.goal.Z - _v1g6.pos.Z)
local _v1gh = _v1gg.Magnitude
_v1g6.dir = _v14x(_v1gg, _v1g6.dir)
local _v1gi = _v1g6.pos + _v1g6.dir * math.min(40, _v1gh)
local _v1gj = next(_v4.lfBarriers) and _v179(_v1gi, _v14b)
local _v1gk = math.max(_v14g.floorAt(_v1g6.pos), _v14g.floorAt(_v1gi)) + _v1fl + _v14g.ALT
local _v1gl = math.min(50, _v1gh)
_v1g6.dest = Vector3.new(_v1g6.pos.X + _v1g6.dir.X * _v1gl, _v1gk, _v1g6.pos.Z + _v1g6.dir.Z * _v1gl)
if _v1gh <= 12 or _v1gj or _v1fj - _v1g6.t0 > (_v1g6.maxT or _v14g.MAX_TIME) then
local _v1gm = not _v1g6.dryDone and not _v1gj and _v192(_v1g6.pos, _v1g6.dir)
_v1g6.dryDone = true
if _v1gm then
_v1g6.goal, _v1g6.t0 = _v1gm, _v1fj
else
local _v1gn = _v14n(_v1g6.pos.X, _v1g6.pos.Y, _v1g6.pos.Z) or _v18l(_v1g6.pos.X, _v1g6.pos.Z, _v1g6.pos.Y + 1500)
_v1g6.phase, _v1g6.dest = _pguo("0i9c5A=="), Vector3.new(_v1g6.pos.X, (_v1gn or (_v1g6.pos.Y - _v14g.ALT - _v1fl)) + _v1fl, _v1g6.pos.Z)
end
end
end
if _v1g6.kind == _pguo("1idW5Q==") and _v1g6.phase == _pguo("zCtB9A==") then
_v4.lfStatus = _pguo("zCtB9MbyZ1jLPhLpwbx0ENtuU+ndvCg=") .. math.floor(_v1fp * 100) .. "%)"
if not _v1g6.pressed and _v1fj - _v1g6.restT >= 1 then
_v157()
_v1g6.pressed, _v1g6.restT = true, _v1fj
elseif _v1g6.pressed and not _v4.saveIsResting() and _v1fj - _v1g6.restT > 6 then
_v157()
_v1g6.restT = _v1fj
end
if _v1fp >= 0.99 or _v1g0 or not _v4.LF_REST then
if _v4.saveIsResting() then _v157() end
if _v4.lfAnchored then pcall(function() _v1fi.Anchored = false end); _v4.lfAnchored = nil end
if _v1g6.plat then pcall(function() _v1g6.plat:Destroy() end) _v1g6.plat = nil end
_v4.lfHealUp = nil
local _v1go = _v192(_v1g6.pos, _v1g6.dir)
if _v1go then
_v1g6.kind, _v1g6.cross, _v1g6.maxT, _v1g6.phase, _v1g6.goal, _v1g6.t0, _v1g6.dryDone = _pguo("2z1R4d/5"), true, _v1a9, _pguo("3TxH6dz5"), _v1go, _v1fj, true
else
local _v1gp = _v14n(_v1g6.pos.X, _v1g6.pos.Y, _v1g6.pos.Z) or _v18l(_v1g6.pos.X, _v1g6.pos.Z, _v1g6.pos.Y + 1500)
_v1g6.phase, _v1g6.dest = _pguo("0i9c5A=="), Vector3.new(_v1g6.pos.X, (_v1gp or (_v1g6.pos.Y - _v14g.HEAL_UP)) + _v1fl, _v1g6.pos.Z)
end
end
return
end
local _v1gq
if _v1g6.ride then
_v1g6.gr = _v1g6.gr or { stand = _v1fl, params = _v4.grParams() }
local _v1gr
_v1gq, _v1gr = _v4.grStep(_v1g6.gr, _v1g6.pos, _v1g6.dest, _v1fe)
if _v1gr then _v1g6.dir = _v1gr end
else
_v1gq = _v4.govNext(_v1g6.pos, _v1g6.dest, _v1fe, (_v1g6.kind == _pguo("2CJX5Q==") or _v1g6.kind == _pguo("2z1R4d/5") or _v1g6.kind == _pguo("1idW5Q==")) and _v14d or _v145)
end
do
local _v1gs = _v18l(_v1gq.X, _v1gq.Z, _v1gq.Y + 1500)
if _v1gs and _v1gq.Y < _v1gs + _v1fl * 0.5 then _v1gq = Vector3.new(_v1gq.X, _v1gs + _v1fl * 0.5, _v1gq.Z) end
end
if not _v1g6.crossOK and next(_v4.lfBarriers) and _v17m(_v1g6.pos, _v1gq) then
_v1gq = Vector3.new(_v1g6.pos.X, _v1gq.Y, _v1g6.pos.Z)
_v1g6.dest = Vector3.new(_v1g6.pos.X, _v1g6.dest.Y, _v1g6.pos.Z)
if _v1g6.kind == _pguo("2CJX5Q==") and _v1g6.phase == _pguo("3zlT+Q==") then _v1g6.t0 = os.clock() - _v14f - 1 end
end
_v1g6.pos = _v1gq
_v1g6.cf = CFrame.lookAt(_v1g6.pos, _v1g6.pos + _v1g6.dir)
_v154(_v1fi, _v1g6.cf)
_v151(_v1fh, _v1g6.pos.Y)
_v4.lfY = _v1g6.pos.Y
if _v1g6.kind == _pguo("1idW5Q==") then
_v4.lfStatus = _pguo("zCtB9MbyZ1jLPhLpwbx0ENtuU+ndpiA=") .. _v1g6.phase
elseif _v1g6.kind == _pguo("2z1R4d/5") then
_v4.lfStatus = (_v1g6.cross and _pguo("yS9G5d28YRDbL1aggrxmFMcnXOeP83YdzG5b9JW8") or _v1g6.critical and _pguo("yCtA+Y/oaBHMPUb5j7EgHtI3W+7IvHQXnjlT9MruOlg=")
or _v1g6.toWater and _pguo("3CFK5cu8aRaeLEug3/BhAds8QaCCvGYUxydc54/ob1jJL0bl3aYg") or _pguo("3CFK5cu8aRaeLEug3/BhAds8QaCCvGYUxydc54/ob1jNL1Tlj/pvF9p0Eg==")) .. _v1g6.phase .. " ("
.. math.floor(Vector3.new(_v1g6.goal.X - _v1g6.pos.X, 0, _v1g6.goal.Z - _v1g6.pos.Z).Magnitude) .. _pguo("nj1G9cvvKQ==")
else
_v4.lfStatus = (_v1g6.kind == _pguo("2CJX5Q==") and _pguo("2StG9MbyZ1jfOVP5j/pyF9NuU6Df8GEB2zwIoA==") or _pguo("yyBB9Nr/a0Ke")) .. _v1g6.phase
end
if _v1g6.ride and _v1g6.gr.stuck then
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.lfY = _v1g6.pos.Y
_v1b4(_v13w)
return
end
local _v1gt = _v1g6.pos - _v1g6.dest
if (_v1g6.ride and Vector3.new(_v1gt.X, 0, _v1gt.Z).Magnitude or _v1gt.Magnitude) < 2 then
if _v1g6.kind == _pguo("1idW5Q==") then
if _v1g6.phase == _pguo("zCdB5Q==") then
_v1g6.phase, _v1g6.restT, _v1g6.pressed = _pguo("zCtB9A=="), _v1fj, false
pcall(function()
local _v1gu = Instance.new(_pguo("7i9A9A=="))
_v1gu.Name = _pguo("+xRg5dzoTB3aKVc=")
_v1gu.Size = Vector3.new(40, 4, 40)
_v1gu.Position = _v1g6.pos - Vector3.new(0, _v1fl + 2, 0)
_v1gu.Anchored, _v1gu.CanCollide, _v1gu.CanQuery, _v1gu.CanTouch, _v1gu.Transparency = true, true, false, false, 1
_v1gu.Parent = workspace
_v1g6.plat = _v1gu
end)
pcall(function() _v1fi.Anchored = true end)
_v4.lfAnchored = true
_v151(_v1fh, nil)
else
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
_v4.lfY, _v4.lfLastScan = _v1g6.pos.Y, 0
end
elseif _v1g6.kind == _pguo("2z1R4d/5") then
if _v1g6.phase == _pguo("zCdB5Q==") then
_v1g6.phase = _pguo("3TxH6dz5")
elseif _v1g6.phase == _pguo("0i9c5A==") then
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
_v4.lfY, _v4.lfLastScan, _v4.lfHeading = _v1g6.pos.Y, 0, _v1g6.dir
end
elseif _v1g6.phase == "up" and _v1g6.kind == _pguo("2CJX5Q==") then
_v1g6.phase = _pguo("3zlT+Q==")
elseif _v1g6.phase == "up" then
local _v1gv = _v1g6.overTo and Vector3.new(_v1g6.overTo.X, _v1g6.dest.Y, _v1g6.overTo.Z) or (_v1g6.dest + _v1g6.dir * _v144)
if next(_v4.lfBarriers) and _v179(_v1gv, _v14b) then _v1gv = _v1g6.dest - _v1g6.dir * _v144 end
_v1g6.phase, _v1g6.dest = _pguo("0ThX8g=="), _v1gv
elseif _v1g6.phase == _pguo("0ThX8g==") then
local _v1gw = not _v1g6.dryDone and _v192(_v1g6.dest, _v1g6.dir)
_v1g6.dryDone = true
if _v1gw then
_v1g6.dest = _v1gw
else
local _v1gx = _v14n(_v1g6.dest.X, _v1g6.dest.Y, _v1g6.dest.Z)
_v1g6.phase, _v1g6.dest = _pguo("0i9c5A=="), Vector3.new(_v1g6.dest.X, (_v1gx or (_v1g6.dest.Y - _v143)) + _v1fl, _v1g6.dest.Z)
end
else
_v4.lfFly, _v4.lfProgPos = nil, nil
_v4.flyLandUntil = os.clock() + 10
end
end
return
end
local _v1gy = _v1fm and _v1fm.MovementState == _pguo("7Tlb7cL1bh8=")
if not _v1fm then
local _v1gz = _v18u(_v1fk.X, _v1fk.Z, _v1fk.Y + 1500)
_v1gy = _v1gz ~= nil and _v1gz > _v1fk.Y - _v1fl and _v19g(_v1fk.X, _v1fk.Z, _v1fk.Y + 1500)
end
if _v1gy then
_v151(_v1fh, nil)
_v4.lfY = _v1fk.Y
else
if math.abs(_v1fk.Y - _v4.lfY) > 25 then _v4.lfY = _v1fk.Y end
local _v1h0 = _v4.lfY - _v1fl
local _v1h1 = _v14n(_v1fk.X, _v1h0 + math.max(_v1fl * 0.75, 4), _v1fk.Z)
or _v14n(_v1fk.X, _v1h0 + 90, _v1fk.Z)
if _v1h1 then
if _v1h1 >= _v4.lfY then
_v4.lfY = _v1h1 + _v1fl
else
_v4.lfY = _v4.lfY + math.clamp(_v1h1 + _v1fl - _v4.lfY, -_v147 * _v1fe, _v146 * _v1fe)
end
end
_v151(_v1fh, _v4.lfY)
if _v1h1 and _v4.lfHeading and _v1fj >= (_v4.lfLedgeT or 0) then
_v4.lfLedgeT = _v1fj + 0.2
local _v1h2 = _v1fk + _v4.lfHeading * 6
local _v1h3 = _v4.grY(_v1h2.X, _v1h2.Z, _v1fk.Y)
if _v1h3 and _v1h1 - _v1h3 > _v4.GR_DROP then
local _v1h4 = _v4.lfTarget and _v4.lfTarget.pos or (_v4.lfDrink and _v4.lfDrink.stand)
_v1b8(_v1fi, _v1fk, _v1fl)
_v4.lfFly.overTo = _v1h4
return
end
end
end
if _v1gy then
_v4.lfSwimSince = _v4.lfSwimSince or _v1fj
if _v1fj - _v4.lfSwimSince > 1 then
_v4.lfSwimSince = nil
if _v4.lfDrink then _v4.lfDrink.swims = _v4.lfDrink.swims + 1 end
local _v1h5 = _v4.lfHeading or _v14x(_v1fi.CFrame.LookVector, Vector3.new(0, 0, -1))
local _v1h6 = _v192(_v1fk, _v1h5)
if _v1h6 then
if _v1dh(_v1fi, _v1fk, _v1fl, _v1fj, _v1h6) then return end
_v1b8(_v1fi, _v1fk, _v1fl)
local _v1h7 = _v18u(_v1fk.X, _v1fk.Z, _v1fk.Y + 1500)
if _v1h7 and _v4.lfFly.dest.Y < _v1h7 + 20 then
_v4.lfFly.dest = Vector3.new(_v4.lfFly.dest.X, _v1h7 + 20, _v4.lfFly.dest.Z)
end
_v4.lfFly.overTo, _v4.lfFly.dir = _v1h6, _v14x(_v1h6 - _v1fk, _v1h5)
return
end
end
else
_v4.lfSwimSince = nil
end
_v1ay()
if _v4.LF_FLEE and not _v14g.holdDrink(_v1fk, _v1fj) then
local _v1h8 = _v4.LF_AVOID or 200
local _v1h9, _v1ha
if _v1h8 > 0 then
for _v1hb, _v1hc in ipairs(_v0:GetPlayers()) do
if _v1hc ~= _v2 and _v1hc.Character then
local _v1hd = _v4.getRootOf(_v1hc.Character, false)
if _v1hd then
local _v1he = (_v1hd.Position - _v1fk).Magnitude
if not _v1ha or _v1he < _v1ha then _v1h9, _v1ha = _v1hd.Position, _v1he end
end
end
end
end
if _v1h9 and (_v1ha <= _v1h8 or (_v4.lfFleeing and _v1ha <= _v1h8 * 1.5)) then
if not _v4.lfFleeing then _v1b4(nil) end
_v4.lfFleeing = true
_v4.lfHeading = _v14x(_v1fk - _v1h9, _v4.lfHeading or Vector3.new(0, 0, -1))
if next(_v4.lfBarriers) and _v179(_v1fk + _v4.lfHeading * _v14b, _v14b * 0.5) then
_v4.lfHeading = Vector3.new(-_v4.lfHeading.Z, 0, _v4.lfHeading.X)
end
do
local _v1hf = _v1fk + _v4.lfHeading * 40
local _v1hg = _v1fk.Y + 1500
if (_v1fm and _v1fm.MovementState == _pguo("7Tlb7cL1bh8=")) or _v19g(_v1hf.X, _v1hf.Z, _v1hg) then
if _v1fj >= (_v4.lfEsc.lockUntil or 0) and _v14g.start(_v1fi, _v1fk, _v1fl, _v1fj) then return end
local _v1hh = Vector3.new(-_v4.lfHeading.Z, 0, _v4.lfHeading.X)
local _v1hi, _v1hj = _v1fk + _v1hh * 40, _v1fk - _v1hh * 40
if not _v19g(_v1hi.X, _v1hi.Z, _v1hg) then _v4.lfHeading = _v1hh
elseif not _v19g(_v1hj.X, _v1hj.Z, _v1hg) then _v4.lfHeading = -_v1hh end
end
end
_v14g.noteDir(_v4.lfHeading, _v1fk, _v1fj)
if _v14g.boxed(_v1fj, _v1fk) and _v14g.start(_v1fi, _v1fk, _v1fl, _v1fj) then return end
_v4.lfEat = nil
_v158(_pguo("+CFA987uZA=="), true)
_v158(_pguo("7Dtc"), not _v4.lfTired)
_v4.lfStatus = _pguo("2CJX5cbyZ1jfbkLszuVlCp4=") .. math.floor(_v1ha) .. _pguo("nj1G9cvvIBnJL0s=")
return
end
_v4.lfFleeing = false
end
_v4.lfEsc.fleeSince, _v4.lfEsc.trail, _v4.lfEsc.baseDir = nil, nil, nil
if _v14g.drink(_v1fi, _v1fk, _v1fl, _v1fj) then return end
if not _v4.lfTarget and _v1fj - (_v4.lfLastScan or 0) >= _v13v then
_v4.lfLastScan = _v1fj
for _v1hk, _v1hl in pairs(_v4.lfExclude) do
if _v1hl <= _v1fj then _v4.lfExclude[_v1hk] = nil end
end
if _v4.afkPickFood then
local _v1hm = _v4.khRange()
local _v1hn = _v14v()
local _v1ho = _v1hn and (_v1hn.Position.Y - _v1fk.Y) or 8
local _v1hr, _v1hs, _v1ht, _v1hu = _v4.afkPickFood(_v1fk, _v4.lfExclude, {
avoid = _v4.LF_AVOID or 200,
meat = _v4.dinoEatsMeat(),
maxDist = _v4.LF_MAX_DIST or 1000,
feetY = _v1fk.Y - _v1fl, yWeight = 5,
reach = function(_v1hp, _v1hq)
if not _v1a4(_v1hp) then return false end
if not _v17g(_v1fk, _v1hp) then return false end
if _v1hq then return not _v1an(_v1hp, nil, _v1fl) end
return _v1as(_v1hp, _v1hm, _v1fl, _v1ho)
end,
})
if _v1hr and _v1ht then
local _v1hv = Vector3.new(_v1ht.X - _v1fk.X, 0, _v1ht.Z - _v1fk.Z).Magnitude
_v4.lfTarget = { id = _v1hr, idx = _v1hs, pos = _v1ht, isMeat = _v1hu, misses = 0, flyOuts = 0,
biteSeen = _v4.lfBiteN, eat = { id = _v1hr, idx = _v1hs, meat = _v1hu }, deadline = _v1fj + _v1b1(_v1hv) }
end
end
end
local _v1hw = _v4.lfTarget
if not _v1hw then
if _v4.LF_CIRCLE then
_v4.lfIdleC = _v4.lfIdleC or _v1fk
_v15h(_v4.lfIdleC, _v1fk)
_v4.lfEat, _v4.lfProgPos = nil, nil
else
_v15e()
_v4.lfEat, _v4.lfHeading, _v4.lfProgPos = nil, nil, nil
end
_v4.lfStatus = _v4.afkPickFood and _pguo("0iFd68byZ1jYIUCg3flhG9YvUOzKvGYX0So=") or _pguo("yS9b9MbyZ1jYIUCgyfNvHJ4qU/TO")
_v4.lfNoFoodSince = _v4.lfNoFoodSince or _v1fj
if _v4.afkPickFood and _v1fj - _v4.lfNoFoodSince > 30 and _v1fj - (_v4.lfRelocateAt or 0) > 60 then
_v4.lfRelocateAt = _v1fj
local _v1hx = _v4.khRange()
local _v1hy = _v14v()
local _v1hz = _v1hy and (_v1hy.Position.Y - _v1fk.Y) or 8
local _v1i2 = {
avoid = _v4.LF_AVOID or 200, meat = _v4.dinoEatsMeat(), maxDist = math.max(_v4.LF_MAX_DIST or 1000, 2000),
reach = function(_v1i0, _v1i1)
if not _v1a4(_v1i0) then return false end
if not _v17g(_v1fk, _v1i0) then return false end
if _v1i1 then return not _v1an(_v1i0, nil, _v1fl) end
return _v1as(_v1i0, _v1hx, _v1fl, _v1hz)
end,
}
local _v1i3, _v1i4, _v1i5, _v1i6 = pcall(_v4.afkPickFood, _v1fk, _v4.lfExclude, _v1i2)
local _v1i7 = false
if _v1i3 and not _v1i4 and next(_v4.lfBarriers) and _v188(_v1fk) then
_v1i2.reach = function(_v1i8, _v1i9)
if not _v1a4(_v1i8) then return false end
if _v179(_v1i8, _v14b) then return false end
if _v1i9 then return not _v1an(_v1i8, nil, _v1fl) end
return _v1as(_v1i8, _v1hx, _v1fl, _v1hz)
end
_v1i3, _v1i4, _v1i5, _v1i6 = pcall(_v4.afkPickFood, _v1fk, _v4.lfExclude, _v1i2)
_v1i7 = true
end
if _v1i3 and _v1i4 and _v1i6 then
_v1b8(_v1fi, _v1fk, _v1fl)
_v4.lfFly.crossOK = _v1i7
_v4.lfFly.dest = Vector3.new(_v1fk.X, math.max(_v1i6.Y, _v1fk.Y) + _v1fl + _v143, _v1fk.Z)
_v4.lfFly.overTo = _v1i6
_v4.lfFly.dir = _v14x(_v1i6 - _v1fk, _v4.lfFly.dir)
_v4.lfStatus = _pguo("0CES5sDzZFjJJ0boxvIgCtsvUeiP9GUK224foMnweRHQKRL0wLxmF9EqEg==") .. math.floor((_v1i6 - _v1fk).Magnitude) .. _pguo("nj1G9cvvIBfYKA==")
end
end
return
end
_v4.lfNoFoodSince = nil
_v4.lfIdleC = nil
if not _v1hw.isMeat and _v4.afkPickFood and _v4.dinoEatsMeat() and _v1fj - (_v1hw.meatLookT or 0) >= 8 then
_v1hw.meatLookT = _v1fj
local _v1ia = _v4.khRange()
local _v1ib = _v14v()
local _v1ic = _v1ib and (_v1ib.Position.Y - _v1fk.Y) or 8
local _v1if, _v1ig, _v1ih, _v1ii, _v1ij = pcall(_v4.afkPickFood, _v1fk, _v4.lfExclude, {
avoid = _v4.LF_AVOID or 200, meat = true, maxDist = _v4.LF_MAX_DIST or 1000,
feetY = _v1fk.Y - _v1fl, yWeight = 5,
reach = function(_v1id, _v1ie)
if not _v1a4(_v1id) then return false end
if not _v17g(_v1fk, _v1id) then return false end
if _v1ie then return not _v1an(_v1id, nil, _v1fl) end
return _v1as(_v1id, _v1ia, _v1fl, _v1ic)
end,
})
if _v1if and _v1ig and _v1ii and _v1ij and _v1ig ~= _v1hw.id then
local _v1ik = Vector3.new(_v1ii.X - _v1fk.X, 0, _v1ii.Z - _v1fk.Z).Magnitude
_v4.lfTarget = { id = _v1ig, idx = _v1ih, pos = _v1ii, isMeat = true, misses = 0, flyOuts = 0,
biteSeen = _v4.lfBiteN, eat = { id = _v1ig, idx = _v1ih, meat = true }, deadline = _v1fj + _v1b1(_v1ik) }
_v4.lfEat, _v4.lfProgPos = nil, nil
_v1hw = _v4.lfTarget
end
end
local _v1il, _v1im, _v1in = _v4.afkBufCheck(_v1hw.id, _v1hw.idx)
if _v1hw.isMeat and _v1il == nil then _v1b4(_v13w) return end
if _v1il ~= nil and (not _v1in or _v1il + (_v1im or 0) <= 0) then
_v1b4(5)
return
end
if _v1il ~= nil and not _v1hw.isMeat and (_v4.LF_SCRAPS or _v4.LEAVE_SCRAPS) and _v4.isScraps(_v1il) then
_v4.lfExclude[_v1hw.id] = os.clock() + 300
_v1b4(nil)
return
end
local _v1io = _v14v()
local _v1ip = _v1io and _v1io.Position or _v1fk
local _v1iq = _v4.khRange()
local _v1ir = _v1hw.pos - _v1ip
local _v1is = Vector3.new(_v1ir.X, 0, _v1ir.Z).Magnitude
local _v1it = math.sqrt(math.max((_v1iq * 0.9) ^ 2 - _v1ir.Y * _v1ir.Y, 0))
local _v1iu = _v1hw.creep and 3 or math.max(_v1it * _v13t, 3)
if _v1is <= math.max(_v1iq * 1.5, 20) and math.abs(_v1ir.Y) > _v1iq * 0.95 then
_v1hw.vertSince = _v1hw.vertSince or _v1fj
if _v1fj - _v1hw.vertSince > _v13y then
_v1b4(_v13x)
return
end
else
_v1hw.vertSince = nil
end
if _v1hw.holding then
if _v1is > _v1iu + 6 then _v1hw.holding = false end
elseif _v1is <= _v1iu then
_v1hw.holding = true
end
_v4.lfHeading = _v14x(_v1hw.pos - _v1fk, _v4.lfHeading)
if not _v1hw.holding and _v1fj - (_v1hw.wetT or 0) >= 1 then
_v1hw.wetT = _v1fj
local _v1iv, _v1iw = _v1aa(_v1fk, _v1hw.pos)
if _v1iw then _v1b4(_v13x) return end
if _v1iv and _v1dh(_v1fi, _v1fk, _v1fl, _v1fj, _v1iv) then return end
end
_v4.lfEat = (_v1ir.Magnitude <= _v1iq * 0.95) and _v1hw.eat or nil
local _v1ix, _v1iy = _v4.myFood()
local _v1iz = _v1ix and _v1iy and _v1iy > 0 and _v1ix >= _v1iy - _v4.foodGap(_v1iy, 1)
if _v4.lfBiteN ~= _v1hw.biteSeen then
_v1hw.biteSeen = _v4.lfBiteN
if _v1il and _v1hw.lastFood and _v1il < _v1hw.lastFood then
_v4.noteBiteDrop(_v1hw.lastFood - _v1il)
_v1hw.misses = 0
_v1hw.lastEat = _v1fj
elseif _v1hw.lastFood ~= nil and not _v1iz then
_v1hw.misses = _v1hw.misses + 1
end
_v1hw.lastFood = _v1il
end
if _v1hw.holding and not _v1hw.creep and _v1hw.misses >= _v13z then
_v1hw.creep, _v1hw.holding, _v1hw.misses = true, false, 0
_v1hw.deadline = _v1fj + _v1b1(_v1is)
elseif _v1hw.creep and _v1hw.holding and _v1hw.misses >= _v140 then
_v1b4(_v13w)
return
end
if _v1hw.holding and _v4.lfEat then
if _v4.foodNoGain(_v1hw, _v1fj) then _v1b4(_v4.NO_GAIN_SKIP) return end
else
_v1hw.gainT = nil
end
if _v4.LF_UNSTUCK and _v1hw.holding and not _v1iz then
_v1hw.hungrySince = _v1hw.hungrySince or _v1fj
if _v1fj - math.max(_v1hw.lastEat or 0, _v1hw.hungrySince) > (_v4.UNSTUCK_EAT_SECS or 25) then
_v1b4(_v13w)
return
end
elseif _v1iz then
_v1hw.hungrySince = nil
end
if _v1hw.holding then
if _v4.LF_CIRCLE then
_v15h(_v1hw.pos, _v1fk)
else
_v158(_pguo("+CFA987uZA=="), false)
_v158(_pguo("7Dtc"), false)
end
_v4.lfProgPos = nil
_v4.lfStatus = _pguo("2y9G6cH7IFs=") .. _v1hw.id .. " (" .. math.floor(_v1is) .. _pguo("nj1G9cvvLFjTJ0Hzyu8g") .. _v1hw.misses .. ")"
return
end
if next(_v4.lfBarriers) and _v4.lfHeading
and _v179(_v1fk + _v4.lfHeading * _v14b, _v14b * 0.5) then
_v15e()
_v1b4(_v13w)
return
end
if _v1hw.deadline and _v1fj > _v1hw.deadline then _v1b4(_v13w) return end
local _v1j0 = false
_v158(_pguo("6jxd9A=="), false)
_v158(_pguo("+CFA987uZA=="), true)
_v158(_pguo("7Dtc"), _v1j0)
local _v1j1 = _v1fm and _v1fm.Movement and _v1fm.Movement.MoveActionsBlocked
if _v4.LF_UNSTUCK and not _v1j1 then
if not _v4.lfProgPos
or Vector3.new(_v1fk.X - _v4.lfProgPos.X, 0, _v1fk.Z - _v4.lfProgPos.Z).Magnitude > _v142 then
_v4.lfProgPos, _v4.lfProgT = _v1fk, _v1fj
elseif _v1fj - _v4.lfProgT > _v141 then
_v1hw.flyOuts = _v1hw.flyOuts + 1
_v1b8(_v1fi, _v1fk, _v1fl)
if _v1hw.flyOuts >= 2 then _v1b4(_v13w) end
return
end
end
_v4.lfStatus = (_v1j0 and _pguo("zDtc7sbyZw==") or (_v1gy and _pguo("zTlb7cL1bh8=") or _pguo("yS9e68byZw=="))) .. _pguo("njpdoIw=") .. _v1hw.id
.. " (" .. math.floor(_v1is) .. _pguo("nj1G9cvvKQ==")
end
function _v4.lfPin()
local _v1j2 = _v4.lfFly
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _v1j2 or not _v1j2.cf or _v4.mvHold() then return end
local _v1j3 = _v4.getLocalPhysicsRoot()
if _v1j3 and not _v1j3.Anchored then _v154(_v1j3, _v1j2.cf) end
end
local function _v1j4()
if _v4.lfWalkState then return true end
pcall(function()
local _v1j5 = _v4.req(_v2.PlayerScripts.Client.Classes.Character.Movement.States.Walking)
local _v1j6 = rawget(_v1j5, _pguo("/ypY9dzoRBHMK1H0xvNu"))
if type(_v1j6) ~= _pguo("2Dtc49v1bxY=") then return end
_v1j5.AdjustDirection = function(self, _v1j7, ...)
local _v1j8 = _v4.lfHeading
if _v1j8 and _v4.LEGIT_FARM and _v4.lfWasOn and not _v4.lfFly and not _v4.lfResting
and _v4.lfHeld and _v4.lfHeld.Forward then
return _v1j8
end
return _v1j6(self, _v1j7, ...)
end
_v4.lfWalkState = { mod = _v1j5, orig = _v1j6 }
end)
return _v4.lfWalkState ~= nil
end
_v4.lfSteerPatch = _v1j4
function _v4.lfSteer(_v1j9)
if _v4.UNLOADED or not _v4.LEGIT_FARM or not _v4.lfWasOn or _v4.lfFly or _v4.lfResting then return end
if _v4.lfWalkState then return end
local _v1ja = _v4.lfHeading
local _v1jb = workspace.CurrentCamera
if not _v1ja or not _v1jb or _v1jb.CameraType ~= Enum.CameraType.Custom then return end
local _v1jc = _v1jb.CFrame
local _v1jd = _v1jc.LookVector
if Vector3.new(_v1jd.X, 0, _v1jd.Z).Magnitude < 1e-3 then return end
local _v1je = math.atan2(-_v1jd.X, -_v1jd.Z)
local _v1jf = math.atan2(-_v1ja.X, -_v1ja.Z)
local _v1jg = math.clamp(math.atan2(math.sin(_v1jf - _v1je), math.cos(_v1jf - _v1je)),
-_v14a * (_v1j9 or 0.016), _v14a * (_v1j9 or 0.016))
if math.abs(_v1jg) < 1e-4 then return end
local _v1jh = CFrame.Angles(0, _v1jg, 0)
local _v1ji = _v1jb.Focus.Position
_v1jb.CFrame = CFrame.new(_v1ji + _v1jh * (_v1jc.Position - _v1ji)) * (_v1jh * _v1jc.Rotation)
end
local _v1jj = false
local function _v1jk()
if _v4.IS_XENO then return _vkc end
local _v1jl, _v1jm = pcall(function() return isrbxactive() end)
if _v1jl and type(_v1jm) == _pguo("3CFd7Mr9bg==") then return _v1jm end
return _vkc
end
local function _v1jn()
if not _v1jj then return end
_v1jj = false
local _v1jo = _v4.getCS()
if _v1jo and _v1jo.Controls then pcall(function() _v1jo.Controls.WindowUnfocused = not _v1jk() end) end
if getgenv then getgenv().EazyCheats_TabOut = nil end
end
_v4.lfRestoreInput = _v1jn
function _v4.lfKeepInput()
if not (_v4.LEGIT_FARM and _v4.LF_TABOUT) or _v4.UNLOADED then _v1jn() return end
if _v1jk() then _v1jn() return end
local _v1jp = _v4.getCS()
local _v1jq = _v1jp and _v1jp.Controls
if not _v1jq then return end
_v1jj = true
if _v1jq.WindowUnfocused ~= false then pcall(function() _v1jq.WindowUnfocused = false end) end
if _v1jq.InputWasBlocked == true then pcall(function() _v1jq.InputWasBlocked = false end) end
if getgenv then
getgenv().EazyCheats_TabOut = (_v4.lfHeld.Forward and ((_v4.lfHeld.Run and _pguo("zDtc7sbyZw==") or _pguo("yS9e68byZw==")) .. _pguo("nmZG6Mq8ZxnTKxXzj/N3Fp4jXfbK8WUWymc=")))
or (_v4.lfFly and _pguo("2CJL6cH7")) or (_v4.lfResting and _pguo("zCtB9MbyZw==")) or _pguo("0CFGoNj9bBPXIFWgzvJ5D9YrQOU=")
end
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.lfAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.lfPin))
pcall(function()
_v1:BindToRenderStep(_pguo("7hZtzMr7aQztOlfl3Q=="), Enum.RenderPriority.Camera.Value + 2, _v4.lfSteer)
end)
end
_v4.lfSetup()
function _v4.asSetup()
local _v1jr = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
_v4.asDone = {}
_v4.asSkip = {}
_v4.asStatus = _pguo("0ShU")
local function _v1js()
local _v1jt
pcall(function() _v1jt = _v4.req(_v1jr.Packages.Knit) end)
return _v1jt
end
local function _v1ju()
local _v1jv
pcall(function() _v1jv = _v1js().GetController(_pguo("+i9G4ezzbgzMIV7syu4=")) end)
return _v1jv
end
local function _v1jw(_v1jx)
local _v1jy
pcall(function() _v1jy = _v4.req(_v1jr.DinosaurData[_v1jx]) end)
return _v1jy
end
local function _v1jz(_v1k0, _v1k1)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("/ztG74/PdxHKLVq6jw==") .. _v1k0, _v1k1 or 6) end end)
end
local function _v1k2()
local _v1k3 = _v1js()
return (_v1k3 and _v1k3.Roster) or {}
end
local function _v1k4(_v1k5)
local _v1k6
pcall(function() _v1k6 = _v1ju().Dinosaurs[_v1k5] end)
return _v1k6 and true or false
end
local function _v1k7(_v1k8)
local _v1k9
pcall(function()
local _v1ka = tonumber(_v1ju().DinosaursData[_v1k8].Pricing.Amber)
if _v1ka and _v1ka > 0 then
_v1k9 = _v1js().GetController(_pguo("7jtA48f9cxHQKXHvwehyF9IiV/I=")):GetDinosaurAmberCost(_v1k8)
end
end)
return tonumber(_v1k9)
end
local function _v1kb()
local _v1kc
pcall(function() _v1kc = _v1ju().Currencies.Amber end)
return tonumber(_v1kc) or 0
end
local function _v1kd(_v1ke)
if _v1ke >= 1e6 then return (math.floor(_v1ke / 1e4 + 0.5) / 100) .. "M" end
if _v1ke >= 1e3 then return math.floor(_v1ke / 1e3 + 0.5) .. "K" end
return tostring(math.floor(_v1ke))
end
function _v4.asAvailable()
local _v1kf = {}
for _v1kg, _v1kh in ipairs(_v1k2()) do
if _v1k4(_v1kh) then _v1kf[#_v1kf + 1] = _v1kh end
end
return _v1kf
end
function _v4.asLabel(_v1ki)
if not _v1ki or _v1ki == _pguo("liBd7sq1") then return _pguo("liBd7sq1") end
if _v1k4(_v1ki) then return _v1ki .. _pguo("nmMS9cHwbxvVK1Y=") end
local _v1kj = _v1k7(_v1ki)
return _v1ki .. (_v1kj and (_pguo("nmMS7MD/ax3aYhI=") .. _v1kd(_v1kj) .. _pguo("ng9f4sru")) or _pguo("nmMS7MD/ax3aYhLSwP51AJ4hXOzW"))
end
function _v4.asNameOf(_v1kk)
if type(_v1kk) ~= _pguo("zTpA6cH7") then return nil end
return _v1kk:match(_pguo("4GYcrYa8JVWe")) or _v1kk
end
function _v4.asItems()
local _v1kl = { _pguo("liBd7sq1") }
for _v1km, _v1kn in ipairs(_v1k2()) do _v1kl[#_v1kl + 1] = _v4.asLabel(_v1kn) end
return _v1kl
end
_v4.asDropdowns = {}
function _v4.asRefreshLists()
local _v1ko = _v4.asItems()
for _v1kp = 1, 6 do
local _v1kq = _v4.asDropdowns[_v1kp]
if _v1kq and _v1kq.Refresh then pcall(function() _v1kq:Refresh(_v1ko, true) end) end
local _v1kr = _v4.AS_SLOTS and _v4.AS_SLOTS[_v1kp]
if _v1kq and _v1kq.Set and _v1kr and _v1kr ~= _pguo("liBd7sq1") then pcall(function() _v1kq:Set(_v4.asLabel(_v1kr), true) end) end
end
end
local function _v1ks(_v1kt)
local _v1ku, _v1kv = _v1jw(_v1kt), nil
pcall(function() _v1kv = _v4.req(_v1jr.Common.GetGrowthIndex):GetHighestGrowthStage(_v1ku.GrowthStages) end)
return _v1kv
end
local function _v1kw(_v1kx)
local _v1ky
pcall(function()
_v1ky = _v1ju().Replica.Data[_pguo("/SZT8s7/dB3MClP0zsM=") .. _v1kx .. "_" .. (_v4.saveGender(_v4.AS_GENDER) or _pguo("8y9e5Q==")) .. "_1"].Growth.Stage
end)
return _v1ky
end
local function _v1kz(_v1l0, _v1l1)
if not _v1l1 then return false end
if _v1l1 == _pguo("8yFc89v5cg==") then return true, _pguo("zCtT48f5ZFjzIVzz2/ly") end
if _v1l1 == _v1ks(_v1l0) then return true, _pguo("zCtT48f5ZFg=") .. _v1l1 .. _pguo("km5b9Ny8ZhHQL16g3OhhH9s=") end
return false
end
pcall(function() _v4.AS_DONE_FILE = _pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHc+G8W22M=") .. _v2.UserId .. _pguo("kCRB78E=") end)
function _v4.asDoneRead()
local _v1l2, _v1l3 = pcall(function()
return game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONDecode(readfile(_v4.AS_DONE_FILE))
end)
return (_v1l2 and type(_v1l3) == _pguo("yi9Q7Mo=") and type(_v1l3.list) == _pguo("yi9Q7Mo=")) and _v1l3 or { list = {} }
end
function _v4.asDoneAdd(_v1l4, _v1l5)
if type(_v1l4) ~= _pguo("zTpA6cH7") or not _v4.AS_DONE_FILE then return end
_v1l5 = (_v1l5 == "F" or _v1l5 == _pguo("+Ctf4cP5")) and _pguo("+Ctf4cP5") or _pguo("8y9e5Q==")
local _v1l6 = _v4.asDoneRead()
for _v1l7, _v1l8 in ipairs(_v1l6.list) do
if _v1l8.sp == _v1l4 and _v1l8.g == _v1l5 then return end
end
local _v1l9
pcall(function() _v1l9 = _v1js().Ecosystem end)
table.insert(_v1l6.list, { sp = _v1l4, g = _v1l5, map = _v1l9, t = os.time() })
pcall(function()
if not isfolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) then makefolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) end
writefile(_v4.AS_DONE_FILE, game:GetService(_pguo("9jpG8Pz5cg7XLVc=")):JSONEncode(_v1l6))
end)
end
function _v4.asRefreshDone()
for _v1la, _v1lb in ipairs(_v1k2()) do
if _v1k4(_v1lb) and _v1kz(_v1lb, _v1kw(_v1lb)) then _v4.asDoneAdd(_v1lb, _v4.AS_GENDER) end
end
local _v1lc = {}
for _v1ld, _v1le in ipairs(_v4.asDoneRead().list) do
_v1lc[#_v1lc + 1] = tostring(_v1le.sp) .. (_v1le.g == _pguo("+Ctf4cP5") and _pguo("nmZ0qQ==") or _pguo("nmZ/qQ=="))
end
local _v1lf = #_v1lc > 0 and (_pguo("+Cdc6dz0ZRyeZg==") .. #_v1lc .. _pguo("l3QS") .. table.concat(_v1lc, ", ")) or _pguo("+Cdc6dz0ZRyEblzvwfkgAds6")
local _v1lg = _v4.asDoneLabel
if _v1lg and _v1lg.SetText then pcall(function() _v1lg:SetText(_v1lf) end) end
return _v1lf
end
local function _v1lh()
local _v1li = _v2.Character
return (_v1li and _v1li:GetAttribute(_pguo("6jdC5Q=="))) or _v2:GetAttribute(_pguo("/TtA8srydCjSL0vhzfBl"))
end
local function _v1lj()
local _v1lk = _v4.getCS()
local _v1ll
pcall(function() _v1ll = _v1lk.Replica.Data.Growth end)
local _v1lm = _v1lh()
if type(_v1ll) ~= _pguo("yi9Q7Mo=") or not _v1lm then return false end
if _v1ll.Stage == _pguo("8yFc89v5cg==") then return true, _pguo("zCtT48f5ZFjzIVzz2/ly") end
if _v1ll.NextStage == _pguo("8yFc89v5cg==") then return true, _pguo("zCtT48f5ZFg=") .. tostring(_v1ll.Stage) .. _pguo("km5b9Ny8ZhHQL16g3OhhH9s=") end
return false
end
local _v1ln = {}
local function _v1lo(_v1lp)
if _v1ln[_v1lp] then return _v1ln[_v1lp] end
local _v1lq
pcall(function()
local _v1lr = _v1jw(_v1lp).GrowthStages[_v1ks(_v1lp)]
_v1lr = _v1lr[_v4.AS_GENDER or _pguo("8y9e5Q==")] or _v1lr.Male or _v1lr
_v1lq = tonumber(_v1lr.CoreStats.Weight)
end)
_v1ln[_v1lp] = _v1lq or math.huge
return _v1ln[_v1lp]
end
local function _v1ls()
local _v1lt = {}
if not _v4.AS_AUTO_ORDER then
local _v1lu = {}
for _v1lv, _v1lw in ipairs(_v1k2()) do _v1lu[_v1lw] = true end
for _v1lx = 1, 6 do
local _v1ly = _v4.AS_SLOTS[_v1lx]
if _v1ly and _v1ly ~= _pguo("liBd7sq1") and _v1lu[_v1ly] then _v1lt[#_v1lt + 1] = _v1ly end
end
if #_v1lt > 0 then return _v1lt end
end
for _v1lz, _v1m0 in ipairs(_v1k2()) do _v1lt[#_v1lt + 1] = _v1m0 end
table.sort(_v1lt, function(_v1m1, _v1m2)
local _v1m3, _v1m4 = _v1k4(_v1m1), _v1k4(_v1m2)
if _v1m3 ~= _v1m4 then return _v1m3 end
local _v1m5, _v1m6 = _v1lo(_v1m1), _v1lo(_v1m2)
if _v1m5 ~= _v1m6 then return _v1m5 < _v1m6 end
return _v1m1 < _v1m2
end)
return _v1lt
end
local function _v1m7(_v1m8)
local _v1m9 = {}
for _v1ma, _v1mb in ipairs(_v1k2()) do _v1m9[_v1mb] = true end
local _v1mc = _v1kb()
for _v1md, _v1me in ipairs(_v1ls()) do
if _v1me and _v1me ~= _pguo("liBd7sq1") and _v1me ~= _v1m8 and _v1m9[_v1me] and not _v4.asDone[_v1me] and not _v4.asSkip[_v1me] then
if _v1k4(_v1me) then
if not _v1kz(_v1me, _v1kw(_v1me)) then return _v1me end
elseif _v4.AS_AUTOBUY then
local _v1mf = _v1k7(_v1me)
if _v1mf and _v1mf <= _v1mc then return _v1me, _v1mf end
end
end
end
return nil
end
local function _v1mg(_v1mh)
local _v1mi, _v1mj = {}, 0
for _v1mk, _v1ml in ipairs(_v1ls()) do
if _v1ml and _v1ml ~= _pguo("liBd7sq1") then
if _v4.asSkip[_v1ml] or not _v1k4(_v1ml) then
_v1mj = _v1mj + 1
elseif _v1ml == _v1mh or _v4.asDone[_v1ml] or _v1kz(_v1ml, _v1kw(_v1ml)) then
_v1mi[#_v1mi + 1] = _v1ml
end
end
end
local _v1mm = (#_v1mi > 0) and (_pguo("3zoS9Mf5aQqeKFvuzvAgC8ovVeWVvA==") .. table.concat(_v1mi, ", ")) or _pguo("0CES9cHwbxvVK1agy/VuF546XaDI7m8P")
if _v1mj > 0 then _v1mm = _v1mm .. "; " .. _v1mj .. (_v4.AS_AUTOBUY and _pguo("niJd48T5ZFiWIF30j/luF8spWqDu8WIdzGc=") or _pguo("niJd48T5ZA==")) end
return _v1mm .. _pguo("nmMS78HweVjaJ1zv3LxvFp46WuncvG0Zzm5R4cG8Yh2eO0Hlyw==")
end
local function _v1mn(_v1mo)
return _v1mo and _v1mo.FoundWater and not (_v1mo.Classifications and _v1mo.Classifications.IsSemiAquatic)
end
local function _v1mp()
local _v1mq = _v4.getCS()
if _v2:GetAttribute(_pguo("9z177uzzbRrfOg==")) then return false, _pguo("1yAS48DxYhnK") end
if _v1mq and _v1mq.MovementState == _pguo("+CJL6cH7") then return false, _pguo("2CJL6cH7") end
if _v1mn(_v1mq) then return false, _pguo("1yAS987oZQo=") end
if _v1mq and _v1mq.UsingTimedAction then return false, _pguo("3yBd9Mf5cljKJ1/ly7xhG8onXe6P9XNYzDtc7sbyZw==") end
local _v1mr = false
pcall(function() _v1mr = _v1mq.Classifications.IsApex and _v1mq.Movement:IsMoving() end)
if _v1mr then return false, _pguo("zTpb7MO8bRfIJ1znj7RhCNs2Eu3a73RYzTpT7su8cwzXIl6p") end
return true
end
local _v1ms
local function _v1mt(_v1mu, _v1mv, _v1mw)
if not _v1ms then
_v1ms = RaycastParams.new()
_v1ms.FilterType = Enum.RaycastFilterType.Include
local _v1mx = { workspace.Terrain }
local _v1my = workspace:FindFirstChild(_pguo("6SFA7Ms="))
local _v1mz = _v1my and _v1my:FindFirstChild(_pguo("8yFH7tv9aRbN"))
if _v1mz then _v1mx[2] = _v1mz end
_v1ms.FilterDescendantsInstances = _v1mx
_v1ms.IgnoreWater = false
end
local _v1n0 = workspace:Raycast(Vector3.new(_v1mu, _v1mw, _v1mv), Vector3.new(0, -3000, 0), _v1ms)
if not _v1n0 then return nil end
return _v1n0.Position.Y, _v1n0.Material == Enum.Material.Water
end
local function _v1n1()
local _v1n2, _v1n3 = _v4.getLocalPhysicsRoot(), _v2.Character
if not (_v1n2 and _v1n3) then return false end
local _v1n4 = _v1n2.Position
local _v1n5 = _v1n4.Y + 1500
local _v1n6, _v1n7
for _v1n8 = 20, 400, 20 do
for _v1n9 = 0, 15 do
local _v1na = _v1n9 * math.pi / 8
local _v1nb, _v1nc = _v1n4.X + math.cos(_v1na) * _v1n8, _v1n4.Z + math.sin(_v1na) * _v1n8
local _v1nd, _v1ne = _v1mt(_v1nb, _v1nc, _v1n5)
if _v1nd and not _v1ne then _v1n6, _v1n7 = Vector3.new(_v1nb, _v1nd, _v1nc), _v1nd break end
end
if _v1n6 then break end
end
if not _v1n6 then return false end
return (_v4.flyTo(_v1n6, function() return not _v4.UNLOADED end, 0))
end
_v4.asLeaveWater = _v1n1
local function _v1nf(_v1ng)
local _v1nh = _v1js()
local _v1ni = _v1nh.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="))
local _v1nj = _v1nh.GetController(_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="))
local _v1nk = _v4.getCS()
if os.clock() < (_v4.rtmFailUntil or 0) then return false end
_v1nk.UsingTimedAction = true
_v2:SetAttribute(_pguo("7CtG9d3yaRbZGl3NyvJ1"), true)
if not pcall(function() _v1ni:BeginReturnToMenu() end) then
_v4.rtmFailUntil = os.clock() + 60
pcall(function() _v2:SetAttribute(_pguo("7CtG9d3yaRbZGl3NyvJ1"), false) end)
_v1nk.UsingTimedAction = false
return false
end
local _v1nl = 30
pcall(function() _v1nl = tonumber(_v1ni:GetReturnToMenuDuration()) or 30 end)
local _v1nm = os.clock() + _v1nl + 1
local _v1nn, _v1no = true, false
while os.clock() < _v1nm do
_v4.asStatus = _pguo("zCtG9d3yaRbZbkbvj/FlFstuGg==") .. math.ceil(_v1nm - os.clock()) .. "s)"
local _v1np = false
pcall(function() _v1np = _v1nk.Classifications.IsApex and _v1nk.Movement:IsMoving() end)
if _v4.UNLOADED then
_v1nn, _v1no = false, true
break
end
if not _v1ng() or _v2:GetAttribute(_pguo("9z177uzzbRrfOg=="))
or (_v1nk.Actions and _v1nk.Actions.Run) or _v1mn(_v1nk) or _v1np then
_v1nn = false
break
end
task.wait(0.2)
end
if _v1nn then
_v1ni:Despawn()
_v1nj:StartMainMenu()
end
if _v1no then
task.delay(math.max(0, _v1nm - os.clock()), function()
pcall(function() _v1ni:Despawn() end)
pcall(function() _v1nj:StartMainMenu() end)
pcall(function() _v2:SetAttribute(_pguo("7CtG9d3yaRbZGl3NyvJ1"), false) end)
pcall(function() _v1nk.UsingTimedAction = false end)
end)
return false
end
_v2:SetAttribute(_pguo("7CtG9d3yaRbZGl3NyvJ1"), false)
_v1nk.UsingTimedAction = false
return _v1nn
end
_v4.asSafeToLeave, _v4.asReturnToMenu = _v1mp, _v1nf
local function _v1nq(_v1nr, _v1ns)
_v1ns = _v4.saveGender(_v1ns) or _v4.saveGender(_v4.AS_GENDER) or _pguo("8y9e5Q==")
local _v1nt = _v1js()
local _v1nu = _v1nt.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="))
pcall(function()
local _v1nv = _v1nt.GetController(_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA=="))
if _v1nv.WelcomeGui then
_v1nv.WelcomeGui:Destroy()
_v1nv.WelcomeGui = nil
_v1nv:StartMainMenu()
task.wait(2)
end
end)
local _v1nw = _pguo("+itU4drwdA==")
pcall(function() _v1nw = _v1ju().Replica.Data.SkinInventory[_v1nr].LastSelected or _pguo("+itU4drwdA==") end)
local _v1nx = _v1nt.GetController(_pguo("/z5X+OzzbgzMIV7syu4="))
local _v1ny = false
_v4.asSpawnInfo = nil
pcall(function()
if _v1nx:GetDeathGraceStatus(_v1nr).HoldingSlot == true then
pcall(function() _v1nx:EndDeathGrace(_v1nr) end)
_v1ny = _v1nx:GetDeathGraceStatus(_v1nr).HoldingSlot == true
_v4.asSpawnInfo = _pguo("2itT9Me8ZwrfLVegyvJkHdpiEvPD83RYzTpb7MO8aB3SKgig") .. tostring(_v1ny)
end
end)
local _v1nz, _v1o0 = os.clock() + 600, 0
while not _v1ny and os.clock() < _v1nz and not _v4.UNLOADED do
local _v1o1, _v1o2, _v1o3 = pcall(function() return _v1nx:RequestSlot(_v1nr) end)
_v4.asSpawnInfo = _pguo("7CtD9crvdCvSIUao") .. _v1nr .. _pguo("l24fvo8=") .. tostring(_v1o1 and _v1o2) .. " " .. tostring(_v1o1 and _v1o3 or _v1o2)
if _v1o1 and _v1o2 then _v1ny = true break end
if not _v1o1 then break end
if _v1o3 == _pguo("+Dte7A==") then
_v4.asStatus = _pguo("yS9b9MbyZ1jYIUCgzvIgGc4rSqDc8G8Mnihd8o8=") .. _v1nr
else
_v1o0 = _v1o0 + 1
_v4.asStatus = _pguo("zSJd9I/uZR7LPVfkj/pvCp4=") .. _v1nr .. " (" .. tostring(_v1o3) .. ")"
if _v1o0 >= 3 then break end
end
task.wait(3)
end
if not _v1ny and os.clock() >= _v1nz then return false end
if _v1ny then task.wait(2) end
_v4.asStatus = _pguo("zT5T98H1bh+e") .. _v1nr
local function _v1o4()
local _v1o5 = _v2.Character
return _v1o5 ~= nil and _v1o5.Parent ~= nil and _v1o5:GetAttribute(_pguo("6jdC5Q==")) == _v1nr
end
local _v1o6, _v1o7, _v1o8 = os.clock() + 60, 0, 0
while os.clock() < _v1o6 and not _v1o4() do
if _v1o7 < 3 and os.clock() >= _v1o8 then
_v1o7 = _v1o7 + 1
_v1o8 = os.clock() + 20
local _v1o9, _v1oa, _v1ob = pcall(function()
return _v1nu:InitiateSpawning({ Species = _v1nr, Gender = _v1ns or _v4.AS_GENDER or _pguo("8y9e5Q=="), Skin = _v1nw, Variant = _pguo("+itU4drwdA==") })
end)
_v4.asSpawnInfo = (_v4.asSpawnInfo or "") .. _pguo("njISycH1dBHfOlfT3/13FtcgVaM=") .. _v1o7 .. _pguo("nmMMoA==") .. tostring(_v1o9) .. " " .. tostring(_v1oa) .. " " .. tostring(_v1ob)
end
task.wait(0.5)
end
pcall(_v4.autoSpawnCleanupGUI)
if _v1o4() then _v4.closeMainMenu() end
return _v1o4() and true or false
end
_v4.asSpawnDino = _v1nq
function _v4.closeMainMenu()
local _v1oc
pcall(function() _v1oc = _v1js().GetController(_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA==")) end)
if _v1oc then
pcall(function()
if _v1oc.currentMainMenuWindow and _v1oc.currentMainMenuWindow.Class then _v1oc.currentMainMenuWindow.Class:Destroy() end
_v1oc.currentMainMenuWindow = nil
end)
pcall(function() if _v1oc.MainMenuGui then _v1oc.MainMenuGui:Destroy() end _v1oc.MainMenuGui = nil end)
pcall(function() if _v1oc.BoostsGui then _v1oc.BoostsGui:Destroy() end _v1oc.BoostsGui = nil end)
end
pcall(function()
for _v1od, _v1oe in ipairs(_v2.PlayerGui:GetChildren()) do
if _v1oe.Name == _pguo("8y9b7uL5bg35O1s=") or _v1oe.Name == _pguo("/CFd89vvRw3X") then _v1oe:Destroy() end
end
end)
end
function _v4.asResumeTarget(_v1of)
if _v4.AS_AUTO_ORDER then
local _v1og, _v1oh = _v1m7(nil)
if _v1og then return _v1og, _v1oh end
end
if _v1of and _v1k4(_v1of) and not _v1kz(_v1of, _v1kw(_v1of)) then return _v1of end
local _v1oi, _v1oj = _v1m7(_v1of)
if _v1oi and not _v1oj then return _v1oi end
return _v1of
end
function _v4.asMapsWithWork(_v1ok)
local _v1ol, _v1om = {}, {}
local _v1on, _v1oo = nil, {}
pcall(function() _v1on = _v4.req(_v1jr.Modules.GamemodeUtils.GetRoster) end)
pcall(function()
local _v1op = _pguo("7CtR78v5")
pcall(function() _v1op = _v1js().GetController(_pguo("8iFQ4tbfbxbKPF3sw/ly")).ChosenVersion or _v1op end)
for _v1oq, _v1or in pairs(_v4.req(_v1jr.Shared.LobbyData).Gamemodes[_v1op].Survival.Ecosystems) do
if not _v1or.Maintenance then _v1oo[_v1oq] = true end
end
end)
if not _v1on then return _v1ol, _v1om end
local _v1os = {}
for _v1ot, _v1ou in ipairs(_v4.MAP_ORDER) do if _v1oo[_v1ou] then _v1os[#_v1os + 1] = _v1ou; _v1oo[_v1ou] = nil end end
local _v1ov = {}
for _v1ow in pairs(_v1oo) do _v1ov[#_v1ov + 1] = _v1ow end
table.sort(_v1ov)
for _v1ox, _v1oy in ipairs(_v1ov) do _v1os[#_v1os + 1] = _v1oy end
local _v1oz = _v1kb()
for _v1p0, _v1p1 in ipairs(_v1os) do
if _v1p1 ~= _v1ok then
local _v1p2, _v1p3 = nil, false
pcall(function() _v1p2 = _v1on(_v1p1) end)
for _v1p0, _v1p5 in ipairs(type(_v1p2) == _pguo("yi9Q7Mo=") and _v1p2 or {}) do
if not _v4.asDone[_v1p5] and not _v4.asSkip[_v1p5] then
if _v1k4(_v1p5) then
if not _v1kz(_v1p5, _v1kw(_v1p5)) then _v1p3 = true end
elseif _v4.AS_AUTOBUY then
local _v1p6 = _v1k7(_v1p5)
if _v1p6 and _v1p6 <= _v1oz then _v1p3 = true end
end
end
if _v1p3 then break end
end
if _v1p3 then _v1ol[#_v1ol + 1] = _v1p1 else _v1om[#_v1om + 1] = _v1p1 end
end
end
return _v1ol, _v1om
end
function _v4.asBuy(_v1p7)
local _v1p8, _v1p9 = false, nil
pcall(function() _v1p8, _v1p9 = _v1js().GetService(_pguo("7jtA48f9cxHQKWHl3eppG9s=")):PurchaseDinosaurWithAmber(_v1p7) end)
if _v1p8 or _v1k4(_v1p7) then
pcall(_v4.asRefreshLists)
return true
end
_v4.asSkip[_v1p7] = true
return false, _v1p9
end
local function _v1pa(_v1pb, _v1pc)
_v4.asDone[_v1pb] = true
pcall(function()
local _v1pd = _v2.Character
_v4.asDoneAdd(_v1pb, (_v1pd and _v1pd:GetAttribute(_pguo("+Stc5Mru"))) or _v4.AS_GENDER)
_v4.asRefreshDone()
end)
local _v1pe, _v1pf = _v1m7(_v1pb)
_v1jz(_v1pb .. _pguo("nidBoMvzbh2eZg==") .. _v1pc .. _pguo("l2AS") .. (_v1pe and (_pguo("8CtK9JW8") .. _v1pe .. (_v1pf and (_pguo("nmZQ9db1bh+eJ0agyfNyWA==") .. _v1kd(_v1pf) .. _pguo("ng9f4sruKQ==")) or "") .. ".")
or (_pguo("8CES5MbybwueIlfm27wo") .. _v1mg(_v1pb) .. _pguo("l24foMP5YQ7XIFWgzvp0HcxuXu/I+2kW2W5d9duy"))), 10)
_v4.AS_BUSY = true
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1pg, _v1ph = nil, os.clock() + 300
while _v4.AUTO_SWITCH and not _v4.UNLOADED do
local _v1pi, _v1pj = _v1mp()
if _v1pi then break end
if _v1pj == _pguo("1yAS48DxYhnK") or os.clock() > _v1ph then
_v4.asDone[_v1pb] = nil
_v4.asRetryAt = os.clock() + 60
_v1jz(_pguo("3S9c7sDoIBTRKRLv2uggUA==") .. _v1pj .. _pguo("l24foMn9chXXIFWgwPIsWM05W/TM9GkW2W5T5871bljXIBLhj/FpFss6Vw=="), 6)
return
end
_v4.asStatus = _pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA=") .. _v1pj
if _v1pj == _pguo("1yAS987oZQo=") then
_v1pg = _v1pg or os.clock()
if os.clock() - _v1pg > 5 then
_v4.asStatus = _pguo("0itT9sbyZ1jKJleg2P10HcxuRu+P8G8fniFH9A==")
pcall(_v1n1)
_v1pg = nil
task.wait(2)
end
else
_v1pg = nil
end
task.wait(1)
end
if not (_v4.AUTO_SWITCH and not _v4.UNLOADED) then return end
if not _v1nf(function() return _v4.AUTO_SWITCH end) then
_v4.asDone[_v1pb] = nil
_v4.asRetryAt = os.clock() + 60
_v1jz(_pguo("0iFV79roIA/fPRLpwehlCsw7QvTK+CBVnjlb7MO8dArHblPnzvVuWNcgEuGP8WkWyzpX"), 6)
return
end
task.wait(3)
while _v1pe and _v1pf do
local _v1pk, _v1pl = false, nil
pcall(function() _v1pk, _v1pl = _v1js().GetService(_pguo("7jtA48f9cxHQKWHl3eppG9s=")):PurchaseDinosaurWithAmber(_v1pe) end)
if _v1pk or _v1k4(_v1pe) then
_v1jz(_pguo("3CFH58foIA==") .. _v1pe .. _pguo("nihd8o8=") .. _v1kd(_v1pf) .. _pguo("ng9f4sru"), 8)
pcall(_v4.asRefreshLists)
break
end
_v1jz(_pguo("3SFH7Mu8bhfKblD11rw=") .. _v1pe .. " (" .. tostring(_v1pl or _pguo("2C9b7Mr4")) .. _pguo("l24foNvueRHQKRL0x/kgFts2RqDL9W4X"), 8)
_v4.asSkip[_v1pe] = true
task.wait(3)
_v1pe, _v1pf = _v1m7(_v1pb)
end
if not _v1pe then
local _v1pm = _v1mg(_v1pb)
local _v1pn
pcall(function() _v1pn = _v1js().Ecosystem end)
local _v1po, _v1pp = {}, {}
if _v4.REJOIN and _v4.REJOIN_OK and _v4.asMapsWithWork then _v1po, _v1pp = _v4.asMapsWithWork(_v1pn) end
if _v1po[1] and _v4.rjNextMap then
_v1jz(_pguo("2zhX8ta8ZBHQIRLvwbw=") .. tostring(_v1pn) .. _pguo("nidBoMvzbh2eYxLtwOppFtluRu+P") .. _v1po[1], 10)
task.wait(3)
if _v4.rjNextMap(_v1pn, _v1po[1], _v1pp, _pguo("2zhX8ta8ZBHQIRLvwbw=") .. tostring(_v1pn) .. _pguo("nidBoMvzbh0=")) then return end
end
if _v4.REJOIN and _v4.REJOIN_OK then _v1pm = _v1pm .. _pguo("hW5c74/zdBDbPBLtzuwgEN89EuGP+GkW0W5e5cnoIAzRblXywOsgHdc6WuXd") end
_v1jz(_pguo("2zhX8ta8ZBHQIRLpwbx0ENtuXunc6CARzW5W78H5IFWeO1zswP1kEdApEuHB+CAU2y9E6cH7"), 6)
task.wait(3)
pcall(function() _v4.unloadScript() end)
pcall(_v4.leaveNote, _pguo("/ztG74/PdxHKLVqgyfVuEc0mV+Q="), true)
pcall(function() _v2:Kick(_pguo("5QtT+tbfaB3fOkHdj911DNFuYffG6GMQnihb7sbvaB3abh+g") .. _v1pm .. ".") end)
return
end
if not _v1nq(_v1pe) then
if _v4.rjSpawnRejoin and _v4.rjSpawnRejoin(_pguo("3SFH7Mu8bhfKbkHwzutuWA==") .. _v1pe) then return end
if _v4.REJOIN and _v4.REJOIN_OK then
_v1jz(_pguo("3SFH7Mu8bhfKbkHwzutuWA==") .. _v1pe .. _pguo("nmMS0sr2bxHQbkbyxvlzWN8pU+nBvHMQ0TxG7NY="), 8)
return
end
_v1jz(_pguo("3SFH7Mu8bhfKbkHwzutuWA==") .. _v1pe .. _pguo("nmMSwdrob1jtOVv0zPQgDMs8XOXLvG8e2A=="), 8)
if _v4.autoSwitchToggle then pcall(function() _v4.autoSwitchToggle:Set(false) end) end
else
_v1jz(_pguo("0CFFoMjubw/XIFWg") .. _v1pe, 6)
end
end
function _v4.asRelog(_v1pq)
if _v4.AS_BUSY or _v4.asRelogging then return false end
local _v1pr = _v2.Character
local _v1ps = _v1pr and _v1pr.Parent and _v1pr:GetAttribute(_pguo("6jdC5Q=="))
if not _v1ps then return false end
local _v1pt = _v4.saveGender(_v1pr:GetAttribute(_pguo("+Stc5Mru"))) or _v4.AS_GENDER
_v4.asRelogging, _v4.AS_BUSY = true, true
_v1jz(_pguo("0iFV58byZ1jRO0agzvJkWNwvUeuP9W5Y3z0S") .. _v1ps .. " (" .. tostring(_v1pq) .. ")", 8)
local ok, err = pcall(function()
task.wait(1.5)
pcall(function() _v2.Character:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1pu, _v1pv = os.clock(), nil
while not _v4.UNLOADED and os.clock() - _v1pu < 300 do
local _v1pw, _v1px = _v1mp()
if _v1pw then break end
_v4.asStatus = _pguo("zCte78imIA/fJ0bpwfsgDNFuXu/IvG8NynQS") .. _v1px
if _v1px == _pguo("1yAS987oZQo=") then
_v1pv = _v1pv or os.clock()
if os.clock() - _v1pv > 5 then pcall(_v1n1) _v1pv = nil task.wait(2) end
else
_v1pv = nil
end
task.wait(1)
end
if _v4.UNLOADED or not _v1mp() then return end
if not _v1nf(function() return not _v4.UNLOADED end) then return end
task.wait(3)
_v4.asStatus = _pguo("zCte78imIAvOL0XuxvJnWA==") .. _v1ps
if not _v1nq(_v1ps, _v1pt) and _v4.rjSpawnRejoin then
_v4.rjSpawnRejoin(_pguo("3SFH7Mu8bhfKbkHwzutuWA==") .. _v1ps .. _pguo("ni9U9MruIBmePFfswPs="))
end
end)
_v4.asRelogging, _v4.AS_BUSY = false, false
if not ok then _v1jz(_pguo("zCte78i8ZQrMIUC6jw==") .. tostring(err), 8) end
return ok
end
_v4.ftElapsed, _v4.ftStatus = 0, _pguo("0ShU")
local function _v1py()
_v1jz(_pguo("yidf5Y/1c1jLPhKtj+h1CtAnXOeP6GgdnihT8sLvIBfYKBLhwfggFNsvROnB+w=="), 8)
for _v1pz, _v1q0 in ipairs({ { _pguo("/wh53+ndUjU="), _pguo("3yhZxs7ubSzRKVXsyg==") }, { _pguo("8gt1yfvDRjnsAw=="), _pguo("0itV6dvaYQrTGl3nyPBl") },
{ _pguo("/xtmz/DPVzHqDXo="), _pguo("3ztG7/zraQzdJmbvyPtsHQ==") } }) do
if _v4[_v1q0[1]] and _v4[_v1q0[2]] then pcall(function() _v4[_v1q0[2]]:Set(false) end) end
_v4[_v1q0[1]] = false
end
task.wait(2)
pcall(function() _v2.Character:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
_v4.flyLandUntil = os.clock() + 15
local _v1q1 = function() return _v4.FARM_TIMER and not _v4.UNLOADED end
local _v1q2 = os.clock() + 300
while _v1q1() and _v2.Character and os.clock() < _v1q2 do
local _v1q3, _v1q4 = _v1mp()
if _v1q3 then
if _v1nf(_v1q1) then break end
else
_v4.ftStatus = _pguo("yS9b9MbyZ1jKIRLswPsgF8s6CKA=") .. _v1q4
if _v1q4 == _pguo("1yAS987oZQo=") then
_v4.ftWaterT = _v4.ftWaterT or os.clock()
if os.clock() - _v4.ftWaterT > 5 then pcall(_v1n1) _v4.ftWaterT = nil task.wait(2) end
else
_v4.ftWaterT = nil
end
end
task.wait(1)
end
if not _v1q1() then return end
pcall(_v4.leaveNote, _pguo("+C9A7Y/IaRXbPBLmxvJpC9YrVg=="), true)
pcall(function()
_v2:Kick(_pguo("5QtT+tbfaB3fOkHdj9phCtNuZunC+XJY2Cdc6dz0ZRyeL1T0yu4g") .. math.floor(_v4.FT_MINUTES or 0) .. _pguo("niNb7troZQueIVSgyf1yFdcgVa4="))
end)
end
task.spawn(function()
local _v1q5 = os.clock()
while not _v4.UNLOADED do
task.wait(1)
local _v1q6 = os.clock()
local _v1q7 = math.min(_v1q6 - _v1q5, 5)
_v1q5 = _v1q6
if _v4.FARM_TIMER and (_v4.AFK_FARM or _v4.LEGIT_FARM) then
_v4.ftElapsed = _v4.ftElapsed + _v1q7
local _v1q8 = (_v4.FT_MINUTES or 120) * 60 - _v4.ftElapsed
_v4.ftStatus = _pguo("0itT9sbyZ1jXIBI=") .. math.max(0, math.ceil(_v1q8 / 60)) .. _pguo("niNb7g==")
if _v1q8 <= 300 and not _v4.ftWarned then
_v4.ftWarned = true
_v1jz(_pguo("+C9A7Y/IaRXbPAigmrxtEdA7RuXcvGwd2DoeoNv0ZRaeOlrlj/phCtM9EvTa7m5Y0ShUoM7yZFjHIUegw/lhDts="), 8)
end
if _v1q8 <= 0 and not _v4.AS_BUSY then
local _v1q9, _v1qa = pcall(_v1py)
if not _v1q9 then _v1jz(_pguo("+C9A7Y/IaRXbPBLl3e5vCoRu") .. tostring(_v1qa), 8) end
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
if _v4.AUTO_SWITCH and not _v4.AS_BUSY and _v2.Character and _v2.Character.Parent then
local _v1qb, _v1qc = _v1lj()
local _v1qd = type(_v4.FARM_DINO) == _pguo("zTpA6cH7") and _v4.FARM_DINO ~= "" and _v4.FARM_DINO ~= _pguo("8i9B9I/MbBnHK1Y=")
and _v1lh() == _v4.FARM_DINO
if _v1qb and _v1qd then
_v4.asStatus = _pguo("+C9A7Y/YaRbRbkHl27wtWM06U/nG8mdY0SAS") .. tostring(_v1lh())
elseif _v1qb and os.clock() < (_v4.asRetryAt or 0) then
_v4.asStatus = _pguo("3SFH7Mu8bhfKbl7vyLxvDcpuH6Dc62kM3SZb7si8YR/fJ1ygxvIg") .. math.ceil(_v4.asRetryAt - os.clock()) .. "s"
elseif _v1qb then
local _v1qe, _v1qf = pcall(_v1pa, _v1lh(), _v1qc)
if not _v1qe then _v1jz(_pguo("2zxA792mIA==") .. tostring(_v1qf), 8) end
_v4.AS_BUSY = false
else
_v4.asStatus = _pguo("2Txd98byZ1g=") .. tostring(_v1lh())
end
end
end
end)
end
_v4.asSetup()
_v4.RJ_FARMS = {
{ _pguo("+AFh0+bQXz7/HH8="), _pguo("2CFB88bwRhnMI2bvyPtsHQ=="), _pguo("+CFB88bwID7fPF8=") },
{ _pguo("7ht/0OTVTif4D2DN"), _pguo("zjtf8MT1bj7fPF/UwPtnFNs="), _pguo("/ztG74/MdRXOJVvu") },
}
function _v4.farmDinoPick(_v1qg, _v1qh)
local _v1qi = _v4.FARM_DINO
if type(_v1qi) ~= _pguo("zTpA6cH7") or _v1qi == "" or _v1qi == _pguo("8i9B9I/MbBnHK1Y=") then return nil end
local _v1qj, _v1qk = pcall(_v4.asAvailable)
if not (_v1qj and type(_v1qk) == _pguo("yi9Q7Mo=") and table.find(_v1qk, _v1qi)) then return nil, nil, _v1qi end
return _v1qi, (_v1qg == _v1qi and _v1qh) or _v4.AS_GENDER or _v1qh
end
function _v4.cfgFarms(_v1ql)
local _v1qm, _v1qn = {}, false
for _v1qo, _v1qp in ipairs(_v4.RJ_FARMS) do
if _v1ql[_v1qp[1]] ~= nil then _v1qm[_v1qp[1]] = _v1ql[_v1qp[1]] == true; _v1qn = true end
end
if not _v1qn then return end
if not _v4.cfgApplied and _v4.REJOIN and _v4.REJOIN_OK and _v4.rejoinRead then
local _v1qq = _v4.rejoinRead()
local _v1qr = tonumber(_v1qq.t) ~= nil and os.time() - tonumber(_v1qq.t) < 1800
for _v1qs, _v1qt in pairs(type(_v1qq.farms) == _pguo("yi9Q7Mo=") and _v1qq.farms or {}) do
if _v1qt == true and _v1qr then return end
end
end
for _v1qu, _v1qv in ipairs(_v4.RJ_FARMS) do
if _v1qm[_v1qv[1]] == false and _v4[_v1qv[1]] and _v4[_v1qv[2]] then pcall(function() _v4[_v1qv[2]]:Set(false) end) end
end
_v4.cfgFarmsOwed = _v1qm.AUTO_SWITCH and { AUTO_SWITCH = true } or nil
end
function _v4.rejoinSetup()
local _v1qw = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local function _v1qx()
local _v1qy
pcall(function() _v1qy = _v4.req(_v1qw.Packages.Knit) end)
return _v1qy
end
local function _v1qz(_v1r0, _v1r1)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("7CtY78byOlg=") .. _v1r0, _v1r1 or 6) end end)
end
local function _v1r2()
local _v1r3 = _v2.Character
return _v1r3 ~= nil and _v1r3.Parent ~= nil
end
function _v4.rejoinSave()
if _v4.UNLOADED then return end
if not _v4.REJOIN_OK or _v4.rjResuming then return end
local _v1r4 = _v4.rejoinRead()
if _v1r4.map ~= nil and _v1r4.map ~= _v4.REJOIN_MAP then _v1r4.doneMaps, _v1r4.nextMap = nil, nil end
_v1r4.on, _v1r4.map = _v4.REJOIN and true or false, _v4.REJOIN_MAP
_v1r4.lowPopLeave, _v1r4.lowPopMin = _v4.LOW_POP_LEAVE and true or false, _v4.LOW_POP_MIN
_v1r4.farmDino = (type(_v4.FARM_DINO) == _pguo("zTpA6cH7") and _v4.FARM_DINO ~= "") and _v4.FARM_DINO or nil
pcall(function() _v1r4.lastMap = _v1qx().Ecosystem end)
if _v1r4.nextMap ~= nil and _v1r4.nextMap == _v1r4.lastMap then _v1r4.nextMap = nil end
_v1r4.lastJob = game.JobId
_v1r4.farms = {}
for _v1r5, _v1r6 in ipairs(_v4.RJ_FARMS) do _v1r4.farms[_v1r6[1]] = _v4[_v1r6[1]] and true or false end
if _v4.rjKeep then _v1r4.farms = _v4.rjKeep.farms end
if _v4.rjFinished then _v1r4.farms = {} end
_v1r4.ftElapsed = _v4.ftElapsed
_v1r4.t = os.time()
pcall(function() _v1r4.status = getgenv().EazyCheats_Status end)
pcall(function()
local _v1r7 = _v2.Character
_v1r4.dino = (_v1r7 and _v1r7.Parent and _v1r7:GetAttribute(_pguo("6jdC5Q=="))) or nil
end)
_v4.rejoinWrite(_v1r4)
end
function _v4.rejoinLeave(_v1r8)
if _v4.rjLeaving then return true end
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
_v4.rjLeaving = true
_v4.rejoinSave()
_v1qz(_pguo("0itT9sbyZ1iTbg==") .. _v1r8 .. _pguo("nmMS4s7/a1jKIRL0x/kgC8ovQPSP72MK2ytc"), 6)
local _v1r9 = pcall(function() game:GetService(_pguo("6ite5d/zcgztK0D2xv9l")):Teleport(_v4.LOBBY_PLACE, _v2) end)
if not _v1r9 then _v4.rjLeaving = false return false end
task.delay(30, function()
if _v4.UNLOADED then return end
pcall(_v4.leaveNote, _v1r8, false)
pcall(function() _v2:Kick(_pguo("5QtT+tbfaB3fOkHdj9BlGcgnXOeVvA==") .. _v1r8) end)
end)
return true
end
function _v4.rjSpawnRejoin(_v1ra)
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
local _v1rb = _v4.rejoinRead()
if tonumber(_v1rb.spawnRejoinT) and os.time() - tonumber(_v1rb.spawnRejoinT) < 1200 then return false end
_v1rb.spawnRejoinT = os.time()
_v4.rejoinWrite(_v1rb)
_v4.rjResuming = false
return _v4.rejoinLeave(_v1ra) and true or false
end
function _v4.rjNextMap(_v1rc, _v1rd, _v1re, _v1rf)
if not (_v4.REJOIN_OK and _v4.REJOIN) then return false end
local _v1rg = _v4.rejoinRead()
local _v1rh = {}
if type(_v1rc) == _pguo("zTpA6cH7") then _v1rh[_v1rc] = os.time() end
for _v1ri, _v1rj in ipairs(type(_v1re) == _pguo("yi9Q7Mo=") and _v1re or {}) do _v1rh[_v1rj] = os.time() end
_v1rg.doneMaps, _v1rg.nextMap = _v1rh, _v1rd
_v4.rejoinWrite(_v1rg)
_v4.rjResuming = false
return _v4.rejoinLeave(_v1rf) and true or false
end
local function _v1rk(_v1rl)
local _v1rm
pcall(function() _v1rm = _v1qx().GetController(_pguo("+i9G4ezzbgzMIV7syu4=")).Replica.Data[_pguo("8i9B9Oz0YQrfLUbl3cM=") .. _v1rl] end)
if type(_v1rm) == _pguo("yi9Q7Mo=") and type(_v1rm[1]) == _pguo("zTpA6cH7") then return _v1rm[1], _v1rm[2] end
return nil
end
local function _v1rn(_v1ro, _v1rp)
local _v1rq = {}
for _v1rr, _v1rs in ipairs(_v4.RJ_FARMS) do
if _v1ro[_v1rs[1]] and _v4[_v1rs[2]] and not _v4[_v1rs[1]] and not _v4.UNLOADED then
pcall(function() _v4[_v1rs[2]]:Set(true) end)
_v1rq[#_v1rq + 1] = _v1rs[3]
end
end
if _v1ro.FARM_TIMER and tonumber(_v1rp.ftElapsed) then _v4.ftElapsed = tonumber(_v1rp.ftElapsed) end
_v1qz(#_v1rq > 0 and (_pguo("3C9R64/zbkKe") .. table.concat(_v1rq, ", ")) or _pguo("zT5T98H5ZFiTblzv2/RpFtluV+zc+SAP3z0S8trybhHQKQ=="), 8)
end
local function _v1rt(_v1ru)
local _v1rv = type(_v1ru.farms) == _pguo("yi9Q7Mo=") and _v1ru.farms or {}
local _v1rw = (getgenv and getgenv()) or {}
local _v1rx = tonumber(_v1rw.EazyCheats_RjSpawnAt)
if not _v1r2() and _v1rx and os.clock() - _v1rx < 75 then
local _v1ry = _v1rx + 75
while not _v1r2() and os.clock() < _v1ry and not _v4.UNLOADED do task.wait(0.5) end
end
if not _v1r2() then
local _v1rz
pcall(function() _v1rz = _v1qx().Ecosystem end)
local _v1s0, _v1s1 = _v1rk(tostring(_v1rz))
local _v1s2, _v1s3, _v1s4 = _v4.farmDinoPick(_v1s0, _v1s1)
if _v1s4 and _v4.rjFarmDinoSaid ~= _v1s4 then
_v4.rjFarmDinoSaid = _v1s4
_v1qz(_pguo("+C9A7Y/YaRbRbg==") .. _v1s4 .. _pguo("nidBoMHzdFjLIF7vzPdlHJ4hXKDb9GkLniNT8I+xIAvOL0XuxvJnWA==")
.. (_v1rv.AUTO_SWITCH and _pguo("/ztG74/PdxHKLVqn3LxwEd0l") or _pguo("yiZXoMP9cwyePl7h1vlkWNonXO8=")) .. _pguo("nidc89v5YRw="), 10)
end
if _v1s2 then
_v1s0, _v1s1 = _v1s2, _v1s3
elseif _v1rv.AUTO_SWITCH and _v4.asResumeTarget then
for _v1s5 = 1, 4 do
local _v1s6, _v1s7 = _v4.asResumeTarget(_v1s0)
if not _v1s6 then break end
if _v1s7 then
_v1qz(_pguo("yyBe78z3aRbZbg==") .. _v1s6 .. " (" .. tostring(_v1s7) .. _pguo("ng9f4sruKQ=="), 6)
if not _v4.asBuy(_v1s6) then
_v1qz(_pguo("3SFH7Mu8bhfKbkfuw/NjE54=") .. _v1s6 .. _pguo("nmMS9N3laRbZbkboyrxuHcY6EuTG8m8="), 6)
task.wait(3)
continue
end
task.wait(2)
end
if _v1s6 ~= _v1s0 then _v1s0, _v1s1 = _v1s6, _v4.AS_GENDER end
break
end
end
if not _v1s0 then
_v4.rjKeep = { farms = _v1rv, st = _v1ru }
_v1qz(_pguo("0CES5Mbyb1jOIlP5yvggF9Bu") .. tostring(_v1rz) .. _pguo("njdX9I+xIAvOL0Xuj/NuHZ4vXOSP6GgdnihT8sLvIBvRI1egzf1jE54hXA=="), 10)
return
end
if not _v1r2() and _v4.atDeployMenu and _v4.atDeployMenu() then
for _v1s8 = 1, 50 do
if _v4.UNLOADED or not _v4.REJOIN then return end
if _v1r2() then _v4.rjKeep = { farms = _v1rv, st = _v1ru } return end
task.wait(0.5)
end
end
_v1qz(_pguo("zT5T98H1bh+e") .. _v1s0 .. " (" .. tostring(_v1s1 or _pguo("8y9e5Q==")) .. ")", 6)
_v4.rjSpawning = true
local _v1s9 = false
for _v1sa = 1, 3 do
if _v4.UNLOADED or not _v4.REJOIN then break end
if _v1r2() then _v1s9 = true break end
_v1rw.EazyCheats_RjSpawnAt = os.clock()
local _v1sb, _v1sc = pcall(_v4.asSpawnDino, _v1s0, _v1s1)
if (_v1sb and _v1sc) or _v1r2() then _v1s9 = true break end
task.wait(10)
end
_v4.rjSpawning = false
if _v4.UNLOADED then return end
if not _v1s9 then
_v4.rjKeep = { farms = _v1rv, st = _v1ru }
if _v4.rjSpawnRejoin and _v4.rjSpawnRejoin(_pguo("3SFH7Mu8bhfKbkHwzutuWA==") .. _v1s0) then return end
_v1qz(_pguo("3SFH7Mu8bhfKbkHwzutuWA==") .. _v1s0 .. _pguo("nmMS89/9dxaeN1313e9lFNhuU+7LvHQQ225U4d3xc1jdIV/lj/5hG9VuXe4="), 10)
return
end
task.wait(3)
end
_v1rn(_v1rv, _v1ru)
end
local _v1sd = { _pguo("/x1twfrITyfxHHbF/Q=="), _pguo("/x1twfrITzrrFw=="), _pguo("/x1tx+rSRD3s"), _pguo("8ghtwfnTSTw="), _pguo("8ghtze7EXzz3HWY="),
_pguo("8ght0+zOQSjt"), _pguo("8ghtw+bOQzT7"), _pguo("8ghtxuPZRQ=="), _pguo("8ght1eHPVC39BQ=="), _pguo("8ght0urPVA=="), _pguo("8ghtwevRSTbhBXvD5A=="), _pguo("8ghtxuPFQS//Fw=="), _pguo("8ghtxuPFQS//F23S7thJLe0="),
_pguo("/wBmyfDdRjM="), _pguo("+w9m3/jURTbhBmfO6M5Z"), _pguo("+A9h1PDZQSw="), _pguo("8gtz1urDUzvsD2LT") }
local function _v1se()
local _v1sf = game:GetService(_pguo("9jpG8Pz5cg7XLVc="))
local _v1sg
pcall(function() _v1sg = readfile(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HeHa6G8U0S9WrtvkdA==")):gsub(_pguo("mz0ZpA=="), "") end)
if not _v1sg or _v1sg == "" then return end
local _v1sh = os.clock() + 60
while not _v4.cfgApplied and os.clock() < _v1sh and not _v4.UNLOADED do task.wait(1) end
pcall(function()
local _v1si = _v1sf:JSONDecode(readfile(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9HQ==") .. _v1sg .. _pguo("kCRB78E=")))
for _v1sj, _v1sk in ipairs(_v1sd) do
if _v1si[_v1sk] ~= nil then _v4[_v1sk] = _v1si[_v1sk] end
end
end)
end
task.spawn(function()
task.wait(8)
local _v1sl = _v4.rejoinRead()
local _v1sm = tonumber(_v1sl.pending) and os.time() - _v1sl.pending < 900
local _v1sn = false
for _v1so, _v1sp in pairs(type(_v1sl.farms) == _pguo("yi9Q7Mo=") and _v1sl.farms or {}) do
if _v1sp == true then _v1sn = true end
end
local _v1sq = tonumber(_v1sl.t) ~= nil and os.time() - tonumber(_v1sl.t) < 1800
local _v1sr = _v1sn and _v1sq and _v1sl.lastJob ~= nil
local _v1ss = _v1sn and _v1sq and _v4.rjReloaded and _v1sl.lastJob == game.JobId
if _v4.REJOIN_OK and _v4.REJOIN and not _v4.UNLOADED and (_v1sm or _v1sr or _v1ss) then
_v1se()
_v4.rjResuming = true
local _v1st, _v1su = pcall(_v1rt, _v1sl)
_v4.rjResuming, _v4.rjSpawning = false, false
if not _v4.UNLOADED then
local _v1sv = _v4.rejoinRead()
_v1sv.pending = nil
_v4.rejoinWrite(_v1sv)
end
if not _v1st then _v1qz(_pguo("2zxA792mIA==") .. tostring(_v1su), 8) end
end
while not _v4.UNLOADED do
if _v4.rjKeep and (not _v4.REJOIN or not _v4.REJOIN_OK) then _v4.rjKeep = nil end
if _v4.rjKeep and _v1r2() then
local _v1sw = _v4.rjKeep
task.wait(3)
_v4.rjKeep = nil
if _v1r2() then pcall(_v1rn, _v1sw.farms, _v1sw.st) end
end
if _v4.REJOIN_OK and _v4.REJOIN and not _v1r2() and not _v4.AS_BUSY and not _v4.rjSpawning
and not _v4.deathBusy and not _v4.rjResuming
and (_v4.rjKeep or _v4.cfgFarmsOwed or _v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) then
local _v1sx
pcall(function() _v1sx = _v1qx().GetController(_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA==")).RevivalGui end)
if _v1sx then
_v4.rjNoDinoSince = nil
else
_v4.rjNoDinoSince = _v4.rjNoDinoSince or os.clock()
end
if _v4.rjNoDinoSince and os.clock() - _v4.rjNoDinoSince > 120 and os.clock() - (_v4.rjRetryAt or 0) > 180 then
_v4.rjRetryAt, _v4.rjNoDinoSince = os.clock(), nil
local _v1sy = _v4.rejoinRead()
local _v1sz = _v4.rjKeep and _v4.rjKeep.farms
if not _v1sz then
_v1sz = {}
for _v1t0, _v1t1 in ipairs(_v4.RJ_FARMS) do _v1sz[_v1t1[1]] = _v4[_v1t1[1]] and true or false end
end
_v1sy.farms = _v1sz
_v1qz(_pguo("0CES5Mbyb1jYIUCgnbxtEdA7RuXcvC1YzT5T98H1bh+eL1XhxvI="), 8)
_v4.rjResuming = true
local _v1t2, _v1t3 = pcall(_v1rt, _v1sy)
_v4.rjResuming, _v4.rjSpawning = false, false
if not _v1t2 then _v1qz(_pguo("2zxA792mIA==") .. tostring(_v1t3), 8) end
end
else
_v4.rjNoDinoSince = nil
end
if _v1r2() and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) and not _v4.AS_BUSY and not _v4.rjSpawning
and _v2.PlayerGui:FindFirstChild(_pguo("8y9b7uL5bg35O1s=")) then
_v4.rjMenuSince = _v4.rjMenuSince or os.clock()
if os.clock() - _v4.rjMenuSince > 10 then
_v4.rjMenuSince = nil
_v4.closeMainMenu()
end
else
_v4.rjMenuSince = nil
end
do
local _v1t4, _v1t5 = _v2.Character, _v2.ReplicationFocus
if _v1r2() and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) and not _v4.AS_BUSY
and not _v4.rjSpawning and not _v4.rjResuming and _v4.asRelog and _v1t4
and (_v2:GetAttribute(_pguo("8SB/5cHp")) == true or (_v1t5 ~= nil and not _v1t5:IsDescendantOf(_v1t4))) then
_v4.rjFocusSince = _v4.rjFocusSince or os.clock()
if os.clock() - _v4.rjFocusSince > 20 and os.clock() - (_v4.rjRelogAt or -1e9) > 600 then
_v4.rjRelogAt, _v4.rjFocusSince = os.clock(), nil
task.spawn(_v4.asRelog, _pguo("yiZXoMj9bR2eOVPzj+90EdIiEu/BvGkMzW5f5cHp"))
end
else
_v4.rjFocusSince = nil
end
end
if _v4.LOW_POP_LEAVE and _v4.REJOIN and not _v4.rjLeaving and _v1r2()
and (_v4.LEGIT_FARM or _v4.AFK_FARM or _v4.AUTO_SWITCH) then
if #_v0:GetPlayers() < (tonumber(_v4.LOW_POP_MIN) or 80) then
_v4.lowPopSince = _v4.lowPopSince or os.clock()
if os.clock() - _v4.lowPopSince > 30 then
_v4.lowPopSince = nil
_v4.rejoinLeave(_pguo("zStA9sruIAjRPkfszuhpF9BuR+7L+XJY") .. tostring(_v4.LOW_POP_MIN or 80))
end
else
_v4.lowPopSince = nil
end
else
_v4.lowPopSince = nil
end
if _v4.cfgFarmsOwed and _v1r2() and not _v4.rjResuming and not _v4.rjSpawning and not _v4.AS_BUSY then
local _v1t6 = _v4.cfgFarmsOwed
_v4.cfgFarmsOwed = nil
task.wait(3)
for _v1t7, _v1t8 in ipairs(_v4.RJ_FARMS) do
if _v1t6[_v1t8[1]] and _v1r2() and _v4[_v1t8[2]] and not _v4[_v1t8[1]] and not _v4.UNLOADED then
pcall(function() _v4[_v1t8[2]]:Set(true) end)
end
end
end
if _v4.REJOIN then _v4.rejoinSave() end
pcall(function()
local _v1t9 = (_v4.LEGIT_FARM and (_pguo("8itV6du8RhnMIwig") .. tostring(_v4.lfStatus)))
or (_v4.AFK_FARM and (_pguo("/wh5oOn9chWEbg==") .. ((_v4.CLEAN_BREAK and _pguo("3SJX4cG8YgrbL1k=")) or (_v4.afkSafetyState and (_pguo("1itT7MbyZ1iW") .. tostring(_v4.afkSafetyState) .. ")")) or "on")))
or _pguo("0CES5s7ubQ==")
local _v1ta = _v4.AUTO_SWITCH and (_pguo("/ztG74/PdxHKLVo=") .. (_v4.AS_AUTO_ORDER and _pguo("nmZB7c7wbB3NOhLmxu5zDJc=") or "")
.. ": " .. tostring(_v4.asStatus)) or _pguo("/ztG74/PdxHKLVqgwPpm")
getgenv().EazyCheats_Status = _v1t9 .. _pguo("njIS") .. _v1ta
end)
task.wait(5)
end
end)
end
_v4.rejoinSetup()
function _v4.deathSetup()
local _v1tb = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local function _v1tc()
local _v1td
pcall(function() _v1td = _v4.req(_v1tb.Packages.Knit) end)
return _v1td
end
local function _v1te(_v1tf, _v1tg)
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("7CtB8M7rbkKe") .. _v1tf, _v1tg or 6) end end)
end
local function _v1th()
return _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.ffOn() or _v4.AUTO_SWITCH
end
local function _v1ti(_v1tj)
pcall(function() _v1:UnbindFromRenderStep(_pguo("7CtE6dn9bDvfI1fyzs93Gcc=")) end)
if not pcall(function() _v1tj:Destroy() end) then
pcall(function() if _v1tj.gui then _v1tj.gui.Enabled = false end end)
end
pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end
local function _v1tk(_v1tl)
local _v1tm, _v1tn = _v1tl.dinosaur, _v1tl.gender
if type(_v1tm) ~= _pguo("zTpA6cH7") then return end
_v1te(_pguo("2idX5I+xIArbPULh2PJpFtluU/OP") .. _v1tm, 6)
task.wait(4)
if _v1tl.finished or not _v1th() or _v4.UNLOADED then return end
_v1tl.finished = true
local _v1to = _v1tc()
pcall(function() _v1to.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ==")):RevivalScreenClosed() end)
pcall(function() _v1to.GetController(_pguo("/z5X+OzzbgzMIV7syu4=")):EndDeathGrace(_v1tm) end)
_v4.rjSpawning = true
local _v1tp, _v1tq = pcall(_v4.asSpawnDino, _v1tm, _v1tn)
_v4.rjSpawning = false
if _v1tp and _v1tq then
_v1ti(_v1tl)
_v1te(_pguo("3C9R64/9c1g=") .. _v1tm .. _pguo("nmMS5s7ubRHQKRLvwQ=="), 6)
else
_v1tl.finished = false
_v1te(_pguo("3SFH7Mu8bhfKbkDl3OxhD9Bu") .. _v1tm .. _pguo("nmMS8Mb/a1jsK0HwzutuWNE8Es3O9W5Y8ytc9Y/lbw3MPVfsyQ=="), 10)
end
end
task.spawn(function()
while not _v4.UNLOADED do
task.wait(1)
local _v1tr
pcall(function() _v1tr = _v1tc().GetController(_pguo("9yBG5d36YRvbDV3u2+5vFNIrQA==")).RevivalGui end)
if _v1tr and not _v1tr.fromMenu and not _v1tr.finished and _v1th() and _v4.asSpawnDino and not _v4.deathBusy then
_v4.deathBusy = true
local _v1ts, _v1tt = pcall(_v1tk, _v1tr)
if not _v1ts then _v1te(_pguo("2zxA792mIA==") .. tostring(_v1tt), 8) end
_v4.deathBusy = false
end
end
end)
end
_v4.deathSetup()
pcall(function() _v4.VirtualUser = game:GetService(_pguo("6CdA9Nr9bC3NK0A=")) end)
if _v4.VirtualUser then
table.insert(_v2l, _v2.Idled:Connect(function()
if _v4.UNLOADED or not (_v4.ANTI_AFK or _v4.LEGIT_FARM) then return end
pcall(function()
_v4.VirtualUser:CaptureController()
_v4.VirtualUser:MoveMouse(Vector2.new(1, 1))
_v4.VirtualUser:MoveMouse(Vector2.new(0, 0))
end)
_v4.antiAfkCount = (_v4.antiAfkCount or 0) + 1
end))
end
function _v4.dinoGrowthShared()
local _v1tu = _v2.Character
local _v1tv = _v1tu and _v1tu:GetAttribute(_pguo("6jdC5Q=="))
if not _v1tv then return nil end
if _v4.growthShared and _v4.growthShared.sp == _v1tv then return _v4.growthShared.v end
local _v1tw
pcall(function() _v1tw = _v4.req(_v4.WATER_RS.DinosaurData[_v1tv]).Shared.Growth end)
_v4.growthShared = { sp = _v1tv, v = _v1tw }
return _v1tw
end
function _v4.dinoNutritionCats()
local _v1tx = _v2.Character
local _v1ty = _v1tx and _v1tx:GetAttribute(_pguo("6jdC5Q=="))
if not _v1ty then return nil end
if _v4.nutCats and _v4.nutCats.sp == _v1ty then return _v4.nutCats.v end
local _v1tz
pcall(function()
local _v1u0 = {}
for _v1u1, _v1u2 in ipairs(_v4.req(_v4.WATER_RS.DinosaurData[_v1ty]).Shared.Nutrition) do
if type(_v1u2) == _pguo("yi9Q7Mo=") and _v1u2.Category then _v1u0[#_v1u0 + 1] = tostring(_v1u2.Category) end
end
_v1tz = _v1u0
end)
_v4.nutCats = { sp = _v1ty, v = _v1tz }
return _v1tz
end
function _v4.dinoStageWeights()
local _v1u3 = _v2.Character
local _v1u4 = _v1u3 and _v1u3:GetAttribute(_pguo("6jdC5Q=="))
if not _v1u4 then return nil end
if _v4.stageWeights and _v4.stageWeights.sp == _v1u4 then return _v4.stageWeights.v end
local _v1u5
pcall(function()
local _v1u6 = _v4.req(_v4.WATER_RS.DinosaurData[_v1u4])
local _v1u7 = {}
for _v1u8, _v1u9 in pairs(_v1u6.GrowthStages) do
local _v1ua = _v1u9.CoreStats and _v1u9.CoreStats.Weight
if type(_v1ua) == _pguo("0Dtf4sru") then _v1u7[tostring(_v1u8)] = _v1ua end
end
_v1u5 = _v1u7
end)
_v4.stageWeights = { sp = _v1u4, v = _v1u5 }
return _v1u5
end
function _v4.liteGrowthOf(_v1ub, _v1uc, _v1ud)
if type(_v1ud) ~= _pguo("yi9Q7Mo=") or _v1ub == nil then return nil end
local _v1ue = _v1ud[tostring(_v1ub)]
if type(_v1ue) ~= _pguo("0Dtf4sru") then return nil end
local _v1uf, _v1ug
for _v1uh, _v1ui in pairs(_v1ud) do
if type(_v1ui) == _pguo("0Dtf4sru") and _v1ui > _v1ue and (not _v1ug or _v1ui < _v1ug) then _v1uf, _v1ug = _v1uh, _v1ui end
end
local _v1uj = { Stage = tostring(_v1ub) }
if not _v1uf then _v1uj.final = true return _v1uj end
_v1uj.NextStage, _v1uj.span = _v1uf, _v1ug - _v1ue
if type(_v1uc) == _pguo("0Dtf4sru") then _v1uj.Delta = math.clamp((_v1uc - _v1ue) / _v1uj.span, 0, 1) end
return _v1uj
end
function _v4.fmtLeft(_v1uk)
_v1uk = math.floor(_v1uk + 0.5)
if _v1uk <= 0 then return _pguo("3yBLoMLzbR3QOg==") end
if _v1uk < 60 then return "~" .. _v1uk .. _pguo("zW5e5cno") end
if _v1uk < 3600 then return "~" .. math.floor(_v1uk / 60) .. _pguo("025e5cno") end
return string.format(_pguo("wGtW6IqsMhzTbl7lyeg="), math.floor(_v1uk / 3600), math.floor(_v1uk % 3600 / 60))
end
function _v4.litePaceEta(_v1ul, _v1um)
if type(_v1ul) ~= _pguo("yi9Q7Mo=") then return "" end
if _v1ul.final then return _pguo("lihb7s7wIAvKL1Xlhg==") end
local _v1un, _v1uo = 0, 0
for _v1up, _v1uq in ipairs(_v1um or {}) do _v1un = _v1un + _v1uq[1]; _v1uo = _v1uo + _v1uq[2] end
if #(_v1um or {}) < 2 or _v1uo < 60 or _v1un <= 0 or not _v1ul.Delta or not _v1ul.span then return _pguo("liNX4dzpchHQKRyugbU=") end
return "(" .. _v4.fmtLeft((1 - _v1ul.Delta) * _v1ul.span / (_v1un / _v1uo)) .. _pguo("ni9GoNv0aQuePlPjyrU=")
end
function _v4.stageSpan(_v1ur)
if type(_v1ur) ~= _pguo("yi9Q7Mo=") then return nil end
local _v1us = _v4.dinoStageWeights()
local _v1ut, _v1uu = _v1us and _v1ur.Stage and _v1us[tostring(_v1ur.Stage)], _v1us and _v1ur.NextStage and _v1us[tostring(_v1ur.NextStage)]
if not (_v1ut and _v1uu) or _v1uu <= _v1ut then return nil end
return _v1uu - _v1ut
end
task.spawn(function()
local _v1uv = not _v4.CAP.charstate
local _v1uw = (not _v1uv) and _v4.requireCS() or nil
local _v1ux = _v1uw ~= nil
if (_v1ux and _v1uw and _v4.ReplicaSetRemote) or _v1uv then
local _v1uy, _v1uz, _v1v0 = os.clock(), 30, {}
local _v1v1, _v1v2, _v1v3 = {}, nil, nil
local _v1v4, _v1v5 = {}, 0
local _v1v6, _v1v7 = {}, nil
local _v1v8 = 0.75
local _v1v9 = 0
local _v1va = 8
local _v1vb, _v1vc = nil, os.clock()
local _v1vd = 3
local _v1ve
pcall(function() _v1ve = _v4.req(_v4.WATER_RS.Shared.WellbeingData) end)
local function _v1vf()
local _v1vg = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1vh = _v1vg and _v1vg.StateMultipliers
if type(_v1vh) ~= _pguo("yi9Q7Mo=") then return nil end
local _v1vi
for _v1vj, _v1vk in pairs(_v1vh) do
if type(_v1vk) == _pguo("0Dtf4sru") and (not _v1vi or _v1vk > _v1vi) then _v1vi = _v1vk end
end
return _v1vi
end
local function _v1vl()
local _v1vm = _v1ve and _v1ve.NutritionSettings and _v1ve.NutritionSettings.MassGainMultiplier
if type(_v1vm) ~= _pguo("yi9Q7Mo=") then return nil end
local _v1vn
for _v1vo, _v1vp in ipairs(_v1vm) do
if type(_v1vp) == _pguo("yi9Q7Mo=") and type(_v1vp.Multiplier) == _pguo("0Dtf4sru") and (not _v1vn or _v1vp.Multiplier > _v1vn) then
_v1vn = _v1vp.Multiplier
end
end
return _v1vn
end
local function _v1vq(_v1vr)
local _v1vs = _v1ve and _v1ve.NutritionSettings and _v1ve.NutritionSettings.MassGainMultiplier
if type(_v1vs) ~= _pguo("yi9Q7Mo=") or type(_v1vr) ~= _pguo("0Dtf4sru") then return nil end
local _v1vt, _v1vu
for _v1vv, _v1vw in ipairs(_v1vs) do
if type(_v1vw) == _pguo("yi9Q7Mo=") and type(_v1vw.Value) == _pguo("0Dtf4sru") and type(_v1vw.Multiplier) == _pguo("0Dtf4sru")
and _v1vw.Value <= _v1vr + 1e-6 and (not _v1vu or _v1vw.Value > _v1vu) then _v1vt, _v1vu = _v1vw.Multiplier, _v1vw.Value end
end
return _v1vt
end
local function _v1vx()
local _v1vy, _v1vz = 0, 0
for _v1w0, _v1w1 in ipairs(_v4.dinoNutritionCats() or {}) do
local _v1w2; pcall(function() _v1w2 = _v1uw.Wellbeing.SavableStats[_v1w1] end)
if type(_v1w2) == _pguo("0Dtf4sru") then _v1vy = _v1vy + _v1w2; _v1vz = _v1vz + 1 end
end
return _v1vz > 0 and _v1vy / _v1vz or nil
end
local function _v1w3()
local _v1w4, _v1w5 = nil, false
for _v1w6, _v1w7 in ipairs(_v1v4) do
if not _v1w4 or _v1w7[2] > _v1w4 then _v1w4 = _v1w7[2] end
_v1w5 = _v1w5 or _v1w7[3]
end
local _v1w8, _v1w9, _v1wa = _v1vq(_v1vx()), _v1vl(), _v1vf()
if not (_v1w4 and _v1w8 and _v1w8 > 0 and _v1w9 and _v1wa) then return nil end
if not _v1w5 then
local _v1wb = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1wc = _v1wb and _v1wb.StateMultipliers and _v1wb.StateMultipliers.Rest or 1
_v1w4 = _v1w4 * _v1wa / _v1wc
end
return _v1w4 * _v1w9 / _v1w8
end
local function _v1wd(_v1we)
local _v1wf = _v4.dinoGrowthShared and _v4.dinoGrowthShared()
local _v1wg = _v1wf and _v1wf.MassGainStages and _v1we and _v1wf.MassGainStages[tostring(_v1we)]
local _v1wh = _v1wg and _v1wg.MassGain
return (type(_v1wh) == _pguo("0Dtf4sru") and _v1wh > 0) and _v1wh or nil
end
local function _v1wi()
local _v1wj
pcall(function() _v1wj = _v1uw.Replica.Data.Multipliers.MassGain end)
return (type(_v1wj) == _pguo("0Dtf4sru") and _v1wj > 0) and _v1wj or nil
end
local function _v1wk(_v1wl)
if #_v1wl == 0 then return _v1uz end
local _v1wm = table.clone(_v1wl); table.sort(_v1wm); return _v1wm[math.ceil(#_v1wm / 2)]
end
local _v1wn = {}
if _v1uv then
local _v1wo, _v1wp, _v1wq = nil, nil, nil
local function _v1wr(_v1ws)
if _v1wo then pcall(function() _v1wo:Disconnect() end) end
_v1wo, _v1wp, _v1wq = nil, nil, nil
if not _v1ws then return end
_v1wo = _v1ws:GetAttributeChangedSignal(_pguo("6Stb58fo")):Connect(function()
if _v4.UNLOADED then return end
local _v1wt, _v1wu = _v1ws:GetAttribute(_pguo("6Stb58fo")), os.clock()
if type(_v1wt) ~= _pguo("0Dtf4sru") then return end
if _v1wp and _v1wq and _v1wt > _v1wp then
local _v1wv = _v1wu - _v1wq
if _v1wv > 5 and _v1wv < 300 then
_v1v0[#_v1v0 + 1] = _v1wv
if #_v1v0 > 6 then table.remove(_v1v0, 1) end
local _v1ww = table.clone(_v1v0); table.sort(_v1ww)
_v1uz = _v1ww[math.ceil(#_v1ww / 2)]
_v1wn[#_v1wn + 1] = { _v1wt - _v1wp, _v1wv }
if #_v1wn > 10 then table.remove(_v1wn, 1) end
end
_v1uy = _v1wu
end
_v1wp, _v1wq = _v1wt, _v1wu
end)
table.insert(_v2l, _v1wo)
end
_v1wr(_v2.Character)
table.insert(_v2l, _v2.CharacterAdded:Connect(_v1wr))
end
if not _v1uv then
table.insert(_v2l, _v4.ReplicaSetRemote.OnClientEvent:Connect(function(_v1wx, _v1wy)
if _v4.UNLOADED or typeof(_v1wy) ~= _pguo("yi9Q7Mo=") then return end
if _v1wy[1] == _pguo("+Txd99v0") and _v1wy[2] == _pguo("8y9B8w==") then
local _v1wz = _v1uw.Replica
if _v1wz and _v1wx == _v1wz.Id then
local _v1x0 = os.clock()
pcall(function()
local _v1x1 = _v1wz.Data and _v1wz.Data.Growth
if type(_v1x1) == _pguo("yi9Q7Mo=") and type(_v1x1.Mass) == _pguo("0Dtf4sru") then
local _v1x2 = _v2.Character and _v2.Character:GetAttribute(_pguo("6jdC5Q=="))
if _v1x2 ~= _v1v2 then _v1v1, _v1v2, _v1v3, _v1v9 = {}, _v1x2, nil, 0 end
if _v1x1.Stage ~= _v1v7 then _v1v6, _v1v7, _v1v1, _v1v9 = {}, _v1x1.Stage, {}, 0 end
_v1v9 = _v1v9 + 1
local _v1x3 = _v1v3 and (_v1x1.Mass - _v1v3) or nil
local _v1x4, _v1x5 = _v1wd(_v1x1.Stage), _v1wi()
if _v1v9 > _v1va and _v1x3 and _v1x3 > 0 and _v1x4 and _v1x5 and os.clock() - _v1vc >= 3 then
_v1v1[#_v1v1 + 1] = _v1x3 / (_v1x4 * _v1x5)
if #_v1v1 > 5 then table.remove(_v1v1, 1) end
end
_v1v3 = _v1x1.Mass
local _v1x6 = _v1w3()
if #_v1v1 >= _v1vd and _v1x6 and type(_v1x1.Delta) == _pguo("0Dtf4sru") then
_v1v6[#_v1v6 + 1] = { _v1x1.Delta, _v1wk(_v1v1) * _v1x6 }
if #_v1v6 > 240 then table.remove(_v1v6, 1) end
end
end
end)
local _v1x7 = _v1x0 - _v1uy
if _v1x7 > 5 and _v1x7 < 300 then
_v1v0[#_v1v0 + 1] = _v1x7
if #_v1v0 > 6 then table.remove(_v1v0, 1) end
_v1uz = _v1wk(_v1v0)
end
_v1uy = _v1x0
end
end
end))
end
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
_v1v1, _v1v2, _v1v3, _v1v4, _v1v6, _v1v7, _v1v9 = {}, nil, nil, {}, {}, nil, 0
end))
_v4.addStep(8, function()
local _v1x8 = os.clock()
local _v1x9 = _v1wi()
if _v1x9 and (not _v1vb or math.abs(_v1x9 - _v1vb) > 0.03 * _v1vb) then _v1vc = _v1x8 end
_v1vb = _v1x9
if not _v1x9 or _v1x8 - _v1v5 < 1 then return end
_v1v5 = _v1x8
local _v1xa = false
pcall(function() _v1xa = _v4.getCS().Movement.isMoving == true end)
_v1v4[#_v1v4 + 1] = { _v1x8, _v1x9, _v1xa }
while _v1v4[1] and _v1x8 - _v1v4[1][1] > 120 do table.remove(_v1v4, 1) end
end)
local function _v1xb() return _v1uw and _v1uw.Replica and _v1uw.Replica.Data end
local function _v1xc(_v1xd)
local _v1xe; pcall(function() _v1xe = _v1uw.Wellbeing.SavableStats[_v1xd] end)
return type(_v1xe) == _pguo("0Dtf4sru") and math.floor(_v1xe) or nil
end
local function _v1xf(_v1xg)
_v1xg = math.floor(_v1xg + 0.5)
if _v1xg < 60 then return "~" .. math.max(_v1xg, 1) .. "s" end
if _v1xg < 3600 then return "~" .. math.floor(_v1xg / 60) .. "m" end
if _v1xg < 86400 then return string.format(_pguo("wGtW6IqsMhzT"), math.floor(_v1xg / 3600), math.floor(_v1xg % 3600 / 60)) end
if _v1xg < 60 * 86400 then return string.format(_pguo("wGtW5Ir4aA=="), math.floor(_v1xg / 86400), math.floor(_v1xg % 86400 / 3600)) end
return "~" .. math.floor(_v1xg / (30 * 86400)) .. "mo"
end
local function _v1xh(_v1xi, _v1xj)
if type(_v1xi) ~= _pguo("yi9Q7Mo=") then return "" end
if _v1xi.Paused then return _pguo("lj5T9dz5ZFE=") end
local _v1xk, _v1xl = _v1wd(_v1xi.Stage), _v1w3()
if #_v1v1 < _v1vd or not (_v1xk and _v1xl) then return _pguo("liNX4dzpchHQKRyugbU=") end
local _v1xm = _v1wk(_v1v1) * _v1xk * _v1xl
local _v1xn = _v1uz > 0 and _v1uz or 30
local _v1xo = math.clamp(tonumber(_v1xj) or 0, 0, 0.9999)
if _v1xi.NextStage ~= nil and _v1xi.NextStage ~= _pguo("8yFc89v5cg==") then
local _v1xp = _v4.stageSpan(_v1xi)
if not (_v1xp and _v1xm > 0) then return _pguo("liNX4dzpchHQKRyugbU=") end
local _v1xq, _v1xr = _v1v8, #_v1v6
if _v1xr >= 10 and _v1v6[_v1xr][1] - _v1v6[1][1] >= 0.05 then
local _v1xs, _v1xt, _v1xu, _v1xv = 0, 0, 0, 0
for _v1xw, _v1xx in ipairs(_v1v6) do _v1xs, _v1xt, _v1xu, _v1xv = _v1xs + _v1xx[1], _v1xt + _v1xx[2], _v1xu + _v1xx[1] * _v1xx[1], _v1xv + _v1xx[1] * _v1xx[2] end
local _v1xy = _v1xr * _v1xu - _v1xs * _v1xs
if _v1xy > 0 then
local _v1xz = (_v1xr * _v1xv - _v1xs * _v1xt) / _v1xy
local _v1y0 = (_v1xt - _v1xz * _v1xs) / _v1xr
if _v1y0 > 0 then
_v1xq = math.clamp(-_v1xz / _v1y0, 0, 0.95)
_v1xm = (_v1y0 + _v1xz * _v1xo) * _v1xk
end
end
end
if _v1xm <= 0 then return _pguo("liNX4dzpchHQKRyugbU=") end
local _v1y1
if _v1xq < 0.01 then
_v1y1 = (1 - _v1xo) * _v1xp / _v1xm
else
local _v1y2 = 1 - _v1xq * _v1xo
_v1y1 = _v1xp * _v1y2 / (_v1xm * _v1xq) * math.log(_v1y2 / (1 - _v1xq))
end
local _v1y3 = _v1y1 * _v1xn
return _v1y3 < 1 and _pguo("li9c+Y/xbxXbIEap") or "(" .. _v1xf(_v1y3) .. _pguo("niJX5tu1")
end
local _v1y4, _v1y5 = _v4.dinoStageWeights(), _v4.dinoGrowthShared()
local _v1y6 = _v1y4 and _v1y4[tostring(_v1xi.Stage)]
local _v1y7 = _v1y5 and _v1y5.Monster and _v1y5.Monster.WeightMultiplier
if not (type(_v1y6) == _pguo("0Dtf4sru") and type(_v1y7) == _pguo("0Dtf4sru") and _v1y7 > 1 and _v1xm > 0) then return "" end
local _v1y8 = _v1xm / (_v1y6 * (_v1y7 - 1)) / (1 - _v1xo) ^ 2.5
local function _v1y9(_v1ya) return ((1 - _v1ya) ^ -1.5 - (1 - _v1xo) ^ -1.5) / (1.5 * _v1y8) * _v1xn end
local _v1yb, _v1yc = 30 * 86400, _v1xo * 100
local _v1yd
for _v1ye, _v1yf in ipairs({ 20, 40, 60, 80, 95 }) do
if _v1yf > _v1yc + 1e-6 then _v1yd = _v1yf break end
end
if not (_v1yd and _v1y9(_v1yd / 100) <= _v1yb) then _v1yd = math.floor(_v1yc / 5 + 1e-6) * 5 + 5 end
if _v1yd > 99 or _v1y9(_v1yd / 100) > _v1yb then _v1yd = math.floor(_v1yc + 1e-6) + 1 end
if _v1yd > 99 then return "" end
local _v1yg = _v1y9(_v1yd / 100)
if _v1yg > _v1yb then return _pguo("ln8XoNv9ax3Nbg==") .. _v1xf(_v1yg) .. ")" end
return "(" .. _v1yd .. _pguo("m25b7o8=") .. _v1xf(_v1yg) .. ")"
end
local function _v1yh(_v1yi, _v1yj, _v1yk)
local _v1yl, _v1ym = 0, 0; for _v1yn, _v1yo in pairs({ _v1yi, _v1yj, _v1yk }) do if _v1yo then _v1yl = _v1yl + _v1yo; _v1ym = _v1ym + 1 end end
return _v1ym > 0 and math.floor(_v1yl / _v1ym) or 0
end
local function _v1yp()
local _v1yq = _v1xb(); local _v1yr; pcall(function() _v1yr = _v1yq.Multipliers.MassGain end)
if type(_v1yr) ~= _pguo("0Dtf4sru") then return "?" end
if _v1yr > 1 then return tostring(math.floor(_v1yr * 10) * 10)
elseif _v1yr < 0.1 then return tostring(math.floor(_v1yr * 1000) / 10)
else return tostring(math.floor(_v1yr * 100)) end
end
local function _v1ys(_v1yt) return _v1yt and (_v1yt .. "%") or "?" end
local _v1yu = (gethui and gethui()) or game:GetService(_pguo("/SFA5ejpaQ=="))
if not _v1yu then _v1yu = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
local _v1yv = Instance.new(_pguo("7S1A5cryRw3X")); _v1yv.Name = _pguo("7gpt09v9dAv9L0Dk"); _v1yv.ResetOnSpawn = false; _v1yv.IgnoreGuiInset = true
pcall(function() _v1yv.Parent = _v1yu end)
local _v1yw = Instance.new(_pguo("+DxT7co="))
_v1yw.Size = UDim2.new(0, 500, 0, 168); _v1yw.AnchorPoint = Vector2.new(0.5, 0)
_v1yw.Position = UDim2.new(0.62, 0, 0, 16)
_v1yw.BackgroundColor3 = Color3.fromRGB(24, 16, 38); _v1yw.BackgroundTransparency = 0.1
_v1yw.BorderSizePixel = 0; _v1yw.Visible = false; _v1yw.Parent = _v1yv
Instance.new(_pguo("6wdx793yZQo="), _v1yw).CornerRadius = UDim.new(0, 10)
do
local _v1yx = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
local _v1yy, _v1yz, _v1z0 = false, nil, nil
local function _v1z1()
_v1yw.Position = UDim2.new(_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO)
end
_v1z1()
_v4.setStatsCardPos = function(_v1z2, _v1z3, _v1z4, _v1z5)
_v4.SC_POS_XS, _v4.SC_POS_XO, _v4.SC_POS_YS, _v4.SC_POS_YO = _v1z2, _v1z3, _v1z4, _v1z5
pcall(_v1z1)
end
table.insert(_v2l, _v1yw.InputBegan:Connect(function(_v1z6)
if _v4.UNLOADED or not _v4.SC_DRAG then return end
if _v1z6.UserInputType == Enum.UserInputType.MouseButton1
or _v1z6.UserInputType == Enum.UserInputType.Touch then
_v1yy, _v1yz, _v1z0 = true, _v1z6.Position, _v1yw.Position
end
end))
table.insert(_v2l, _v1yw.InputEnded:Connect(function(_v1z7)
if _v1z7.UserInputType == Enum.UserInputType.MouseButton1
or _v1z7.UserInputType == Enum.UserInputType.Touch then
if _v1yy then
_v1yy = false
_v4.SC_POS_XS, _v4.SC_POS_XO = _v1yw.Position.X.Scale, _v1yw.Position.X.Offset
_v4.SC_POS_YS, _v4.SC_POS_YO = _v1yw.Position.Y.Scale, _v1yw.Position.Y.Offset
end
end
end))
table.insert(_v2l, _v1yx.InputChanged:Connect(function(_v1z8)
if _v4.UNLOADED or not _v1yy or not _v4.SC_DRAG then return end
if _v1z8.UserInputType == Enum.UserInputType.MouseMovement
or _v1z8.UserInputType == Enum.UserInputType.Touch then
local _v1z9 = _v1z8.Position - _v1yz
_v1yw.Position = UDim2.new(_v1z0.X.Scale, _v1z0.X.Offset + _v1z9.X,
_v1z0.Y.Scale, _v1z0.Y.Offset + _v1z9.Y)
end
end))
end
local _v1za = Instance.new(_pguo("6wdh9N3zax0="), _v1yw); _v1za.Color = Color3.fromRGB(150, 90, 255); _v1za.Thickness = 1.5
local _v1zb = Instance.new(_pguo("6itK9OP9Yh3S"))
_v1zb.Size = UDim2.new(1, 0, 0, 24); _v1zb.Position = UDim2.new(0, 0, 0, 8); _v1zb.BackgroundTransparency = 1
_v1zb.Font = Enum.Font.GothamBold; _v1zb.TextSize = 18; _v1zb.TextColor3 = Color3.fromRGB(190, 140, 255)
_v1zb.Text = _pguo("7Rpz1Pw="); _v1zb.TextTruncate = Enum.TextTruncate.AtEnd; _v1zb.Parent = _v1yw
local function _v1zc(_v1zd)
local _v1ze = Instance.new(_pguo("+DxT7co="))
_v1ze.Size = UDim2.new(0.5, -20, 0, 0); _v1ze.Position = UDim2.new(_v1zd, _v1zd == 0 and 14 or 6, 0, 38)
_v1ze.BackgroundTransparency = 1; _v1ze.Parent = _v1yw
local _v1zf = Instance.new(_pguo("6wd+6dzoTBnHIUf0"), _v1ze)
_v1zf.FillDirection = Enum.FillDirection.Vertical; _v1zf.SortOrder = Enum.SortOrder.LayoutOrder
_v1zf.Padding = UDim.new(0, 3)
return _v1ze, _v1zf
end
local _v1zg, _v1zh = _v1zc(0)
local _v1zi, _v1zj = _v1zc(0.5)
local function _v1zk(_v1zl, _v1zm, _v1zn)
local _v1zo = Instance.new(_pguo("6itK9OP9Yh3S"))
_v1zo.Size = UDim2.new(1, 0, 0, _v1zm + 5); _v1zo.BackgroundTransparency = 1; _v1zo.Font = Enum.Font.GothamSemibold
_v1zo.TextSize = _v1zm; _v1zo.TextXAlignment = Enum.TextXAlignment.Left
_v1zo.TextColor3 = _v1zn or Color3.fromRGB(220, 210, 240); _v1zo.RichText = true; _v1zo.Parent = _v1zl; return _v1zo
end
local _v1zp = _v1zk(_v1zg, 14)
local _v1zq = _v1zk(_v1zg, 13, Color3.fromRGB(170, 160, 190))
local _v1zr = _v1zk(_v1zg, 14)
local _v1zs = _v1zk(_v1zg, 14)
local _v1zt = _v1zk(_v1zg, 15, Color3.fromRGB(120, 230, 140))
local _v1zu = _v1zk(_v1zi, 14, Color3.fromRGB(190, 140, 255)); _v1zu.Font = Enum.Font.GothamBold
local _v1zv = _v1zk(_v1zi, 13)
local _v1zw = _v1zk(_v1zi, 14, Color3.fromRGB(190, 140, 255)); _v1zw.Font = Enum.Font.GothamBold
local _v1zx = _v1zk(_v1zi, 13)
local _v1zy = _v1zk(_v1zi, 13)
task.spawn(function()
while not _v4.UNLOADED do
if _v4.STATS_CARD and not (_v4.SC_HIDE_WITH_MENU and _v4.Hub and _v4.Hub.IsVisible and _v4.Hub:IsVisible()) then
_v1yw.Visible = true
if _v1yw.Active ~= _v4.SC_DRAG then _v1yw.Active = _v4.SC_DRAG end
pcall(function()
local _v1zz = _v2.Character
local _v200 = _v1xb()
local _v201 = _v4.SC_NAME and _v1zz and _v1zz:GetAttribute(_pguo("6jdC5Q=="))
if _v201 then
local _v202 = _v1zz:GetAttribute(_pguo("+Stc5Mru"))
_v1zb.Text = tostring(_v201) .. ((_v202 == "M" and _pguo("nm4azc7wZVE=")) or (_v202 == "F" and _pguo("nm4axsrxYRTbZw==")) or "")
else
_v1zb.Text = _pguo("7Rpz1Pw=")
end
_v1zp.Visible = _v4.SC_GROWTH; _v1zq.Visible = _v4.SC_GROWTH
if _v4.SC_GROWTH and _v1uv then
local _v203 = _v4.liteGrowthOf(_v1zz and _v1zz:GetAttribute(_pguo("7TpT58o=")), _v1zz and _v1zz:GetAttribute(_pguo("6Stb58fo")),
_v4.dinoStageWeights())
_v1zp.Text = _pguo("+Txd99v0ICvKL1XllbwgRNxw") .. tostring((_v203 and _v203.Stage) or (_v1zz and _v1zz:GetAttribute(_pguo("7TpT58o="))) or "?") .. _pguo("gmFQvg==")
if _v203 and _v203.final then
_v1zq.Text = _pguo("+Cdc4cO8cwzfKVc=")
else
_v1zq.Text = _pguo("7jxd5935cwueOl2g") .. tostring(_v203 and _v203.NextStage or "?") .. _pguo("hG4S")
.. ((_v203 and _v203.Delta) and (math.floor(_v203.Delta * 100) .. "%") or "?")
if _v4.SC_STAGE_TIMER and _v203 then
_v1zq.Text = _v1zq.Text .. _pguo("nm4S") .. _v4.litePaceEta(_v203, _v1wn)
end
end
elseif _v4.SC_GROWTH then
local _v204 = (_v200 and _v200.Growth and _v200.Growth.Stage) or (_v1zz and _v1zz:GetAttribute(_pguo("7TpT58o="))) or "?"
local _v205 = (_v200 and _v200.Growth and _v200.Growth.NextStage) or "?"
local _v206 = (_v200 and _v200.Growth and _v200.Growth.Delta) or 0
_v1zp.Text = _pguo("+Txd99v0ICvKL1XllbwgRNxw") .. tostring(_v204) .. _pguo("gmFQvg==")
_v1zq.Text = _pguo("7jxd5935cwueOl2g") .. tostring(_v205) .. _pguo("hG4S") .. math.floor(_v206 * 100) .. "%"
if _v4.SC_STAGE_TIMER then
_v1zq.Text = _v1zq.Text .. _pguo("nm4S") .. _v1xh(_v200 and _v200.Growth, _v206)
end
end
_v1zr.Visible = _v4.SC_MASS and not _v1uv
if _v4.SC_MASS and not _v1uv then _v1zr.Text = _pguo("8y9B84/bYRHQbn/1w+hpCNInV/KVvCBE3HA=") .. _v1yp() .. _pguo("m3Id4pE=") end
_v1zs.Visible = _v4.SC_WEIGHT
if _v4.SC_WEIGHT then
local _v207 = _v1zz and _v1zz:GetAttribute(_pguo("6Stb58fo"))
_v1zs.Text = _pguo("6Stb58foOlieclC+") .. (_v207 and (math.floor(_v207 * 10) / 10 .. _pguo("niVV")) or "?") .. _pguo("gmFQvg==")
end
_v1zt.Visible = _v4.SC_TIMER
if _v4.SC_TIMER then
local _v208 = math.max(0, math.floor(_v1uz - (os.clock() - _v1uy)))
_v1zt.Text = _pguo("8CtK9I/7chfJOlqgx/V0Qp5u") .. string.format(_pguo("myoIpZ+uZA=="), math.floor(_v208 / 60), _v208 % 60)
end
local _v209, _v20a = _v4.SC_NUTRITION and not _v1uv, _v4.SC_WELLBEING and not _v1uv
_v1zu.Visible = _v209; _v1zv.Visible = _v209
if _v209 then
local _v20b = _v4.dinoNutritionCats() or { _pguo("7jxd9Mr1bgs="), _pguo("+C9G8w=="), _pguo("/S9e48bpbQ==") }
local _v20c, _v20d, _v20e = {}, 0, 0
for _v20f, _v20g in ipairs(_v20b) do
local _v20h = _v1xc(_v20g)
if _v20h then _v20d = _v20d + _v20h; _v20e = _v20e + 1 end
_v20c[#_v20c + 1] = (_v20g == _pguo("/S9A4sD0eRzML0bl3A==") and _pguo("/S9A4tw=") or _v20g) .. " " .. _v1ys(_v20h)
end
_v1zu.Text = _pguo("8DtG8sboaRfQdBKg") .. (_v20e > 0 and math.floor(_v20d / _v20e) or "?") .. "%"
_v1zv.Text = table.concat(_v20c, _pguo("nm4S"))
end
_v1zw.Visible = _v20a; _v1zx.Visible = _v20a; _v1zy.Visible = _v20a
if _v20a then
local _v20i, _v20j, _v20k = _v1xc(_pguo("/SJX4cHwaRbbPUE=")), _v1xc(_pguo("/y1G6dn1dAE=")), _v1xc(_pguo("/SFf5sDudA=="))
local _v20l = _v1xc(_pguo("9yNf9cH1dAE="))
_v1zw.Text = _pguo("6Ste7M35aRbZdBKg") .. _v1yh(_v20i, _v20j, _v20k) .. "%"
_v1zx.Text = _pguo("/SJX4cG8") .. _v1ys(_v20i) .. _pguo("nm4SwczoaQ7XOkug") .. _v1ys(_v20j) .. _pguo("nm4Sw8DxZhfMOhI=") .. _v1ys(_v20k)
if _v20l then
local _v20m = _v20l >= 70 and Color3.fromRGB(100, 255, 100)
or _v20l >= 40 and Color3.fromRGB(255, 255, 80)
or Color3.fromRGB(255, 80, 80)
_v1zy.Text = _pguo("9yNf9cH1dAGEbhK8zaI=") .. _v20l .. _pguo("m3Id4pE=") .. (_v20l < 40 and _pguo("nm7QGg+8TDfpbtAAO7xlGcpuUezO5SE=") or "")
_v1zy.TextColor3 = _v20m
else
_v1zy.Text = _pguo("9yNf9cH1dAGEbhK/")
_v1zy.TextColor3 = Color3.fromRGB(170, 160, 190)
end
end
local _v20n, _v20o = _v1zh.AbsoluteContentSize.Y, _v1zj.AbsoluteContentSize.Y
_v1zg.Size = UDim2.new(0.5, -20, 0, _v20n)
_v1zi.Size = UDim2.new(0.5, -20, 0, _v20o)
_v1yw.Size = UDim2.new(0, (_v209 or _v20a) and 500 or 270, 0, 40 + math.max(_v20n, _v20o) + 8)
end)
else
_v1yw.Visible = false
end
task.wait(0.3)
end
pcall(function() _v1yv:Destroy() end)
end)
end
end)
do
local _v20p, _v20q = pcall(function() return _v4.req(_v4.WATER_RS.Shared.SkinData) end)
local _v20r = _v4.WATER_RS:FindFirstChild(_pguo("7SVb7tw="))
local _v20s = _v4.WATER_RS:FindFirstChild(_pguo("/SZT8s7/dB3MA13kyvBz"))
if _v20p and _v20q and _v20q.Skins and _v20r and _v20s then
local function _v20t()
local _v20u = _v2.Character
if not _v20u then return nil end
local _v20v = _v20u:GetAttribute(_pguo("6jdC5Q=="))
local _v20w = _v20u:GetAttribute(_pguo("7TpT58o=")) or _pguo("/ypH7Ns=")
local _v20x = (tostring(_v20u:GetAttribute(_pguo("+Stc5Mru"))):upper():sub(1, 1) == "F") and _pguo("+Ctf4cP5") or _pguo("8y9e5Q==")
local _v20y = _v20u:GetAttribute(_pguo("9z177vj9dB3M")) or _v20u:GetAttribute(_pguo("7Tlb7cL1bh8="))
return _v20u, _v20v, _v20w, _v20x, _v20y and _pguo("6StG") or _pguo("+jxL")
end
local function _v20z(_v210, _v211, _v212, _v213, _v214)
if _v211 == _pguo("+itU4drwdA==") then
local _v215 = _v20s:FindFirstChild(_v210)
local _v216 = _v215 and (_v215:FindFirstChild(_v212) or _v215:GetChildren()[1])
local _v217 = _v216 and _v216:FindFirstChild(_pguo("7TpT9Nrv"))
local _v218 = _v217 and (_v217:FindFirstChild(_v210 .. _v214) or _v217:FindFirstChild(_v210 .. _pguo("+jxL")))
return _v218 and _v218:FindFirstChild(_v213)
else
local _v219 = _v20r:FindFirstChild(_v210)
local _v21a = _v219 and _v219:FindFirstChild(_v211)
local _v21b = _v21a and (_v21a:FindFirstChild(_v212) or _v21a:GetChildren()[1])
local _v21c = _v21b and _v21b:FindFirstChild(_v213)
return _v21c and (_v21c:FindFirstChild(_v214) or _v21c:FindFirstChild(_pguo("+jxL")) or _v21c:FindFirstChild(_pguo("6StG")))
end
end
_v4.applySkin = function(_v21d)
local _v21e, _v21f, _v21g, _v21h, _v21i = _v20t()
if not (_v21e and _v21f) then return false end
local _v21j = _v21e:FindFirstChild(_pguo("8ytB6OLzZB3S")) or _v21e
local _v21k = _v20z(_v21f, _v21d, _v21g, _v21h, _v21i)
if not _v21k then return false end
for _v21l, _v21m in ipairs(_v21j:GetDescendants()) do
if _v21m:IsA(_pguo("7TtA5s7/ZTnOPlfh3f1uG9s=")) then pcall(function() _v21m:Destroy() end) end
end
local _v21n = 0
for _v21o, _v21p in ipairs(_v21k:GetChildren()) do
local _v21q = _v21p:FindFirstChildWhichIsA(_pguo("7TtA5s7/ZTnOPlfh3f1uG9s="))
local _v21r = _v21j:FindFirstChild(_v21p.Name)
if _v21q and _v21r then pcall(function() _v21q:Clone().Parent = _v21r end); _v21n = _v21n + 1 end
end
return _v21n > 0
end
_v4.skinsForCurrentDino = function()
local _v21s, _v21t = _v20t()
local _v21u = { _pguo("+itU4drwdA==") }
local _v21v = _v21t and _v20q.Skins[_v21t]
if _v21v and _v21v.Unlockables then for _v21w in pairs(_v21v.Unlockables) do _v21u[#_v21u + 1] = _v21w end end
table.sort(_v21u, function(_v21x, _v21y) if _v21x == _pguo("+itU4drwdA==") then return true elseif _v21y == _pguo("+itU4drwdA==") then return false end return _v21x < _v21y end)
return _v21u, _v21t
end
task.spawn(function()
while not _v4.UNLOADED do
if _v4.SKIN_SELECTED ~= _pguo("+itU4drwdA==") then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
task.wait(2)
end
end)
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
task.wait(2)
local _v21z, _v220 = _v4.skinsForCurrentDino()
local _v221 = _v4.SKIN_WANTED or _v4.SKIN_SELECTED
_v4.SKIN_SELECTED = table.find(_v21z, _v221) and _v221 or _pguo("+itU4drwdA==")
if _v4.skinDropdown then
pcall(function() _v4.skinDropdown:Refresh(_v21z, false) end)
pcall(function() _v4.skinDropdown:Set(_v4.SKIN_SELECTED, true) end)
end
if _v4.SKIN_SELECTED ~= _pguo("+itU4drwdA==") then pcall(_v4.applySkin, _v4.SKIN_SELECTED) end
end))
task.spawn(function()
task.wait(3)
if _v4.skinDropdown and _v4.skinsForCurrentDino then
local _v222, _v223 = _v4.skinsForCurrentDino()
if _v223 then
pcall(function() _v4.skinDropdown:Refresh(_v222, true) end)
local _v224 = _v4.SKIN_WANTED
if _v224 and _v224 ~= _pguo("+itU4drwdA==") and table.find(_v222, _v224) and _v4.SKIN_SELECTED ~= _v224 then
_v4.SKIN_SELECTED = _v224
pcall(function() _v4.skinDropdown:Set(_v224, true) end)
if _v4.applySkin then pcall(_v4.applySkin, _v224) end
end
end
end
end)
end
end
do
_v4.fishESP = setmetatable({}, { __mode = "k" })
local _v225 = Color3.fromRGB(80, 200, 255)
local _v226 = 1500
local function _v227()
local _v228 = workspace:FindFirstChild(_pguo("/SZT8s7/dB3MB1XuwO5l"))
local _v229 = _v228 and _v228:FindFirstChild(_pguo("7T5T98H5ZDn3"))
return _v229 and _v229:FindFirstChild(_pguo("+CdB6A=="))
end
local function _v22a()
local _v22b = _v2.Character
return _v22b and (_v22b:FindFirstChild(_pguo("/CFW+Q==")) or _v22b:FindFirstChild(_pguo("9jtf4cHzaRzsIV30//1yDA==")) or _v22b:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw=")))
end
local function _v22c(_v22d)
return _v22d.PrimaryPart or _v22d:FindFirstChild(_pguo("/CFW+Q==")) or _v22d:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="))
end
local function _v22e(_v22f)
local _v22g = _v4.fishESP[_v22f]
if _v22g and _v22g.hl.Parent then return _v22g end
local _v22h = Instance.new(_pguo("9idV6MP1ZxDK"))
_v22h.FillColor = _v225; _v22h.FillTransparency = 0.55; _v22h.OutlineColor = _v225
_v22h.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; _v22h.Parent = _v22f
local _v22i = _v22c(_v22f)
local _v22j = Instance.new(_pguo("/Cde7M3zYQraCUfp"))
_v22j.Size = UDim2.new(0, 110, 0, 18); _v22j.StudsOffset = Vector3.new(0, 2, 0); _v22j.AlwaysOnTop = true
local _v22k = Instance.new(_pguo("6itK9OP9Yh3S"))
_v22k.Size = UDim2.new(1, 0, 1, 0); _v22k.BackgroundTransparency = 1; _v22k.Font = Enum.Font.GothamBold
_v22k.TextSize = 12; _v22k.TextColor3 = _v225; _v22k.TextStrokeTransparency = 0.4; _v22k.Text = _pguo("+CdB6A=="); _v22k.Parent = _v22j
if _v22i then _v22j.Adornee = _v22i; _v22j.Parent = _v22i end
_v22g = { hl = _v22h, bb = _v22j, lbl = _v22k }; _v4.fishESP[_v22f] = _v22g; return _v22g
end
local function _v22l(_v22m)
local _v22n = _v4.fishESP[_v22m]
if _v22n then pcall(function() _v22n.hl:Destroy(); _v22n.bb:Destroy() end); _v4.fishESP[_v22m] = nil end
end
task.spawn(function()
while not _v4.UNLOADED do
local _v22o = _v227()
local _v22p = _v22a()
if _v22o then
local _v22q = {}
for _v22r, _v22s in ipairs(_v22o:GetChildren()) do
if _v22s:IsA(_pguo("8yFW5cM=")) then
_v22q[_v22s] = true
local _v22t = _v22c(_v22s)
local _v22u = (_v22t and _v22p) and (_v22t.Position - _v22p.Position).Magnitude or 1e9
if _v4.FISH_ESP and _v22u <= _v226 then
local _v22v = _v22e(_v22s)
if _v22v.lbl then _v22v.lbl.Text = _pguo("+CdB6I+8") .. math.floor(_v22u) .. "m" end
else
_v22l(_v22s)
end
end
end
for _v22w in pairs(_v4.fishESP) do if not _v22q[_v22w] then _v22l(_v22w) end end
end
task.wait(0.15)
end
for _v22x in pairs(_v4.fishESP) do _v22l(_v22x) end
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
if not _v4.vegCData then pcall(function() _v4.vegCData = _v4.req(_v4.WATER_RS.Shared.ConsumptionData) end) end
if not _v4.vegCState then _v4.vegCState = _v4.getCS() end
return _v4.vegCData, _v4.vegCState
end
function _v4.vegResolve(_v22y)
local _v22z = _v22y
for _v230 = 1, 3 do
if not _v22z or _v22z == workspace then break end
local _v231 = _v22z:GetAttribute("ID")
if _v231 then return _v22z, _v231 end
_v22z = _v22z.Parent
end
return nil, nil
end
function _v4.vegAllowed(_v232)
local _v233 = _v4.vegAllowCache[_v232]
if _v233 ~= nil then return _v233 end
local _v234, _v235 = _v4.vegData()
local _v236 = false
pcall(function()
local _v237 = _v234.FoliageConsumables[_v232]
local _v238 = _v237 and _v237.Actions
if type(_v238) == _pguo("yi9Q7Mo=") then
for _v239, _v23a in ipairs(_v238) do
if type(_v23a) == _pguo("yi9Q7Mo=") and _v23a.Category
and _v235.Data.Diet.Categories[_v23a.Category] ~= nil then
_v236 = true
break
end
end
end
end)
_v4.vegAllowCache[_v232] = _v236
return _v236
end
function _v4.vegContainer()
if _v4.vegFolder and _v4.vegFolder.Parent then return _v4.vegFolder end
local _v23b = _v2:FindFirstChild(_pguo("7iJT+cruRw3X"))
if not _v23b then return nil end
local _v23c = Instance.new(_pguo("+CFe5Mru"))
_v23c.Name = _pguo("+y9I+ez0ZRnKPWTlyNlTKA==")
_v23c.Parent = _v23b
_v4.vegFolder = _v23c
return _v23c
end
function _v4.vegLabel(_v23d, _v23e)
local _v23f = _v4.vegPool[_v23d]
if _v23f and _v23f.bb.Parent then return _v23f end
local _v23g = Instance.new(_pguo("/Cde7M3zYQraCUfp"))
_v23g.Name = _pguo("6CtVzM7+ZRQ=")
_v23g.Size = UDim2.new(0, 160, 0, 20)
_v23g.StudsOffset = Vector3.new(0, 2.5, 0)
_v23g.AlwaysOnTop = true
_v23g.LightInfluence = 0
_v23g.Enabled = false
local _v23h = Instance.new(_pguo("6itK9OP9Yh3S"))
_v23h.Name = _pguo("8i9Q5cM=")
_v23h.Size = UDim2.new(1, 0, 1, 0)
_v23h.BackgroundTransparency = 1
_v23h.Font = Enum.Font.GothamBold
_v23h.TextSize = 12
_v23h.TextStrokeTransparency = 0
_v23h.TextStrokeColor3 = Color3.new(0, 0, 0)
_v23h.Parent = _v23g
_v23g.Parent = _v23e
_v23f = { bb = _v23g, lbl = _v23h }
_v4.vegPool[_v23d] = _v23f
return _v23f
end
function _v4.vegHideAll()
for _v23i, _v23j in pairs(_v4.vegPool) do
pcall(function() _v23j.bb.Enabled = false; _v23j.bb.Adornee = nil end)
end
end
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
_v4.vegAllowCache = {}
_v4.vegCState = nil
end))
_v4.addStep(30, function()
if _v4.UNLOADED then return end
if not _v4.VEG_ESP then
if _v4.vegFolder then _v4.vegHideAll() end
return
end
local _v23k = _v4.getLocalRoot()
local _v23l = _v4.vegContainer()
if not (_v23k and _v23l) then return end
local _v23m = _v23k.Position
local _v23n = _v4.VEG_DISTANCE
_v4.vegInstCache = _v4.vegInstCache or {}
_v4.vegSweeps = (_v4.vegSweeps or 0) + 1
if _v4.vegSweeps % 60 == 0 then
for _v23o in pairs(_v4.vegInstCache) do
if not _v23o.Parent then _v4.vegInstCache[_v23o] = nil end
end
end
local _v23p, _v23q = {}, {}
pcall(function()
for _v23r, _v23s in ipairs(_v4.VEG_CS:GetTagged(_pguo("+CFe6c77ZSvKPFfhwv1iFNs="))) do
local _v23t = _v4.vegInstCache[_v23s]
if not (_v23t and _v23t.part.Parent) then
local _v23u, _v23v = _v4.vegResolve(_v23s)
local _v23w = _v23v and (_v23s:IsA(_pguo("/C9B5f/9cgw=")) and _v23s or _v23s:FindFirstChildWhichIsA(_pguo("/C9B5f/9cgw="), true))
_v23t = _v23w and { model = _v23u, id = _v23v, part = _v23w } or nil
_v4.vegInstCache[_v23s] = _v23t
end
local _v23x, _v23y = _v23t and _v23t.model, _v23t and _v23t.id
if _v23y and not _v23q[_v23y] and _v23x:IsDescendantOf(workspace) then
local _v23z = _v23t.part
if _v23z then
_v23q[_v23y] = true
local _v240 = (_v23z.Position - _v23m).Magnitude
if _v240 <= _v23n then
local _v241 = _v4.vegAllowed(_v23x.Name)
local _v242 = _v4.khFoodOf(_v23y)
local _v243
if _v242 then _v243 = (_v242 <= 0)
else _v243 = (_v23x:GetAttribute(_pguo("7T5T98H5ZA==")) == false) end
if (_v241 or not _v4.VEG_DIET_ONLY) and not (_v243 and _v4.VEG_HIDE_EATEN) then
_v23p[#_v23p + 1] = { part = _v23z, name = _v23x.Name, d = _v240,
ok = _v241, eaten = _v243, food = _v242 }
end
end
end
end
end
end)
local function _v244(_v245)
return _v245.eaten and 1 or 0
end
table.sort(_v23p, function(_v246, _v247)
local _v248, _v249 = _v244(_v246), _v244(_v247)
if _v248 ~= _v249 then return _v248 < _v249 end
return _v246.d < _v247.d
end)
for _v24a = 1, _v4.VEG_MAX do
local _v24b = _v4.vegLabel(_v24a, _v23l)
local _v24c = _v23p[_v24a]
if _v24c then
_v24b.bb.Adornee = _v24c.part
_v24b.bb.Enabled = true
local _v24d = ""
if _v24c.eaten then _v24d = _pguo("nm4a5c7oZRaX")
elseif _v24c.food then _v24d = "  " .. math.floor(_v24c.food) .. "f" end
_v24b.lbl.Text = _v24c.name .. _v24d .. "  " .. math.floor(_v24c.d) .. "m"
_v24b.lbl.TextColor3 = _v24c.eaten and _v4.VEG_COLOR_EATEN
or (_v24c.ok and _v4.VEG_COLOR_OK or _v4.VEG_COLOR_NO)
else
_v24b.bb.Enabled = false
_v24b.bb.Adornee = nil
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
local _v24e = Color3.fromRGB(28, 22, 42)
local _v24f = Color3.fromRGB(120, 70, 220)
local _v24g = Instance.new(_pguo("7S1A5cryRw3X"))
_v24g.Name = _pguo("+y9I+ez0ZRnKPWbv2v9o"); _v24g.ResetOnSpawn = false; _v24g.IgnoreGuiInset = true
_v24g.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v24g.Parent = (gethui and gethui()) or game:GetService(_pguo("/SFA5ejpaQ==")) end)
if not _v24g.Parent then _v24g.Parent = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
_v4.mobGui = _v24g
local function _v24h(_v24i, _v24j, _v24k, _v24l, _v24m)
local _v24n = Instance.new(_pguo("6itK9O3pdAzRIA=="))
_v24n.Name = _pguo("9iFe5PA=") .. _v24k
_v24n.Size = _v24m or UDim2.new(0, 58, 0, 58)
_v24n.Position = _v24l
_v24n.BackgroundColor3 = _v24e
_v24n.BackgroundTransparency = 0.25
_v24n.BorderSizePixel = 0
_v24n.Text = _v24j
_v24n.TextColor3 = Color3.fromRGB(235, 225, 255)
_v24n.Font = Enum.Font.GothamBold
_v24n.TextSize = 18
_v24n.AutoButtonColor = false
_v24n.Parent = _v24i
Instance.new(_pguo("6wdx793yZQo="), _v24n).CornerRadius = UDim.new(0, 10)
local _v24o = Instance.new(_pguo("6wdh9N3zax0="), _v24n)
_v24o.Color = Color3.fromRGB(150, 90, 255); _v24o.Thickness = 1.5; _v24o.Transparency = 0.4
local function _v24p(_v24q)
_v4.mob[_v24k] = _v24q
_v24n.BackgroundColor3 = _v24q and _v24f or _v24e
end
_v24n.InputBegan:Connect(function(_v24r)
if _v24r.UserInputType == Enum.UserInputType.Touch
or _v24r.UserInputType == Enum.UserInputType.MouseButton1 then _v24p(true) end
end)
_v24n.InputEnded:Connect(function(_v24s)
if _v24s.UserInputType == Enum.UserInputType.Touch
or _v24s.UserInputType == Enum.UserInputType.MouseButton1 then _v24p(false) end
end)
table.insert(_v2l, _v24n.MouseLeave:Connect(function() _v24p(false) end))
return _v24n
end
local function _v24t(_v24u, _v24v, _v24w, _v24x)
local _v24y = Instance.new(_pguo("+DxT7co="))
_v24y.Name = _v24u; _v24y.Size = UDim2.new(0, _v24v, 0, _v24w); _v24y.Position = _v24x
_v24y.BackgroundTransparency = 1; _v24y.Visible = false; _v24y.Parent = _v24g
return _v24y
end
_v4.mobFlyPad = _v24t(_pguo("+CJL0M74"), 200, 200, UDim2.new(0, 24, 1, -224))
_v24h(_v4.mobFlyPad, _pguo("XNiA"), _pguo("2DlW"), UDim2.new(0, 62, 0, 0))
_v24h(_v4.mobFlyPad, _pguo("XNmy"), _pguo("0itU9A=="), UDim2.new(0, 0, 0, 62))
_v24h(_v4.mobFlyPad, _pguo("XNiE"), _pguo("zCdV6Ns="), UDim2.new(0, 124, 0, 62))
_v24h(_v4.mobFlyPad, _pguo("XNiO"), _pguo("3C9R6w=="), UDim2.new(0, 62, 0, 124))
_v24h(_v4.mobFlyPad, "+", "up", UDim2.new(0, 196, 0, 20), UDim2.new(0, 52, 0, 52))
_v24h(_v4.mobFlyPad, _pguo("XMag"), _pguo("2iFF7g=="), UDim2.new(0, 196, 0, 104), UDim2.new(0, 52, 0, 52))
_v4.mobTurnPad = _v24t(_pguo("6jtA7v/9ZA=="), 200, 70, UDim2.new(1, -224, 1, -100))
_v24h(_v4.mobTurnPad, _pguo("XMiC"), _pguo("yjtA7uM="), UDim2.new(0, 0, 0, 0))
_v24h(_v4.mobTurnPad, _pguo("XMiD"), _pguo("yjtA7v0="), UDim2.new(0, 68, 0, 0))
_v24h(_v4.mobTurnPad, _pguo("XNm8"), _pguo("1yBB9M4="), UDim2.new(0, 136, 0, 0))
_v4.MOB_SHOW_TURN = false
_v4.addStep(10, function()
if _v4.UNLOADED then return end
local _v24z = _v4.FLY and true or false
if _v4.mobFlyPad.Visible ~= _v24z then _v4.mobFlyPad.Visible = _v24z end
local _v250 = _v4.MOB_SHOW_TURN and (_v4.QUICK_TURN or _v4.FLY) and true or false
if _v4.mobTurnPad.Visible ~= _v250 then _v4.mobTurnPad.Visible = _v250 end
end)
end
_v4.MENU_LAYOUT = {
MAIN = { _pguo("/ztG7+n9chU="), _pguo("7TpT9Nw="), _pguo("/SFf4s7o"), _pguo("7Ctc5Mru"), _pguo("6iFd7Nw=") },
RENAME = { [_pguo("+yBT4sP5ID3tHg==")] = _pguo("7iJT+crucw=="),
[_pguo("7iJT+cruc1jRIBLNxvJpFd8+")] = _pguo("7iJT+crucw=="), [_pguo("/SFA8Nz5c1jRIBLNxvJpFd8+")] = _pguo("/SFA8Nz5cw=="), [_pguo("+CFB88bwc1jRIBLNxvJpFd8+")] = _pguo("+CFB88bwcw=="),
[_pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK")] = _pguo("+idB9M7yYx0="), [_pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q==")] = _pguo("+idB9M7yYx0="), [_pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK")] = _pguo("+idB9M7yYx0="),
[_pguo("8itV6du8QQ7RJ1ag/f1kEcs9")] = _pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),
[_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK")] = _pguo("7StT8sz0IDzXPUbhwf9l"), [_pguo("8itV6du8TB3fOFeg/P9yGc49")] = _pguo("8itT9sq8UxvML0Lz"),
[_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM=")] = _pguo("+CJX5Y/achfTbmLszuVlCs0="), [_pguo("8itV6du8VRbNOkfjxA==")] = _pguo("6yBB9Nr/a1iWCF75j9N1DJc="),
[_pguo("8itV6du8VBncbn312w==")] = _pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),
[_pguo("8itV6du8Uh3NOhLUwLxIHd8i")] = _pguo("7CtB9I/Ib1j2K1Ps"), [_pguo("8itV6du8QRzTJ1yg5PVjEw==")] = _pguo("/ypf6cG8SxHdJQ=="),
[_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw=")] = _pguo("8CtE5d28UwzfIFag/OhpFNI="),
[_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB")] = _pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"), [_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc")] = _pguo("+CJLoO7rYQGeHFPkxulz") },
SUB_MAIN = {
[_pguo("+CFB88bwID7fPF8=")] = _pguo("/ztG7+n9chU="), [_pguo("/ztG78n9chU=")] = _pguo("7TpT9Nw="), [_pguo("/ztG74/PcBnJIA==")] = _pguo("/ztG7+n9chU="),
[_pguo("9idG4sDkID3GPlPuy/ly")] = _pguo("/SFf4s7o"), [_pguo("7CtT48c=")] = _pguo("/SFf4s7o"), [_pguo("/zpG4cz3ICzRIV7z")] = _pguo("/SFf4s7o"),
[_pguo("+x1i")] = _pguo("7Ctc5Mru"), [_pguo("6SFA7Ms=")] = _pguo("7Ctc5Mru"), [_pguo("6iFd7Nw=")] = _pguo("7Ctc5Mru"),
[_pguo("7S9E5Y/YaRbR")] = _pguo("6iFd7Nw="), [_pguo("8yFE5cL5bgw=")] = _pguo("6iFd7Nw="), [_pguo("8yFWoOz0ZRvV")] = _pguo("6iFd7Nw="), [_pguo("/SFc5sb7")] = _pguo("6iFd7Nw="),
},
WHERE = {
[_pguo("/yBG6Y/dRjM=")] = _pguo("6iFd7Nw="), [_pguo("/ztG74/bchfJ")] = _pguo("6iFd7Nw="),
[_pguo("7SZd94/RbxzLIleg4/VzDA==")] = _pguo("6iFd7Nw="), [_pguo("7TpT9Ny8QxnMKg==")] = _pguo("6iFd7Nw="), [_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A==")] = _pguo("6iFd7Nw="),
[_pguo("6yBe6cL1dB3abmjvwPE=")] = _pguo("6iFd7Nw="), [_pguo("+AFkoOz0YRbZK0A=")] = _pguo("6iFd7Nw="),
[_pguo("8ydc6cL9cA==")] = _pguo("6iFd7Nw="),
},
NEST = {
[_pguo("+CFA48q8RRnK")] = { _pguo("+C9B9I/ZYQw="), _pguo("+y9GoODybAGeGVrlwbxIDdApQPk="), _pguo("8itT9sq8UxvML0Lz") },
[_pguo("/ztG74/LYQzbPA==")] = { _pguo("6S9G5d28QRbHOVrl3fk=") },
[_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g==")] = { _pguo("6CdB9c7waQLbbnrp2/5vANs9"), _pguo("6CdB9c7wIDfOL1Hp2+U="), _pguo("9idG4sDkIDXLIkbp3/BpHcw="), _pguo("9idG4sDkID3GPlPuy/lyV+4vQPTc") },
[_pguo("+yBT4sP5ICrbL1Ho")] = { _pguo("6CdB9c7waQLbbmDlzv9o"), _pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="), _pguo("7CtT48e8TQ3SOlvww/VlCg=="), _pguo("7CtT48ezUBnMOkE=") },
[_pguo("9yBB9M7ydFj/OkbhzPc=")] = { _pguo("/zpG4cz3ICvOK1fk") },
[_pguo("+yBT4sP5ICvXIlfu27xBEdM=")] = { _pguo("/zpG4cz3ICzRIV7zgMxhCso9") },
[_pguo("7S9E5Y/YaRbR")] = { _pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"), _pguo("9yBR7Nr4ZVj8Ilflyw=="), _pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK") },
[_pguo("6ite5d/zcgyeOl2g7PNyCM0r")] = { _pguo("/SZT6cG8QxfMPkHl3A==") },
[_pguo("/Cdd7cq8VArfOFfs")] = { _pguo("+itB9MbyYQzXIVw=") },
[_pguo("7ztb48S8VA3MIA==")] = { _pguo("6jtA7o/PdArbIFX0xw==") },
[_pguo("+yBT4sP5ID3tHg==")] = { _pguo("7SZd94/SYRXb"), _pguo("7SZd94/YaRbRbmb53/k="), _pguo("7SZd94/PdBnZKw=="), _pguo("7SZd94/bZRbaK0A="), _pguo("7SZd94/UZRnSOlo="), _pguo("7SZd94/PdBnTJ1zh"),
_pguo("+CFd5I/eYQo="), _pguo("+CFd5I/SdRXcK0A="), _pguo("6S9G5d28QhnM"), _pguo("6S9G5d28Tg3TLFfy"), _pguo("9yBU5czoaRfQbnDh3Q=="), _pguo("9yBU5czoaRfQbnz1wv5lCg=="), _pguo("9yBU5czoZRyeGlPn"),
_pguo("7SZd94/LZRHZJkY="), _pguo("/CJX5cu8RSvu"), _pguo("7i9R64/ZUyg="), _pguo("7i9R64/QZRnaK0Cg6s9Q"), _pguo("7SZd94/YaQvKL1zjyg=="), _pguo("6itK9I/UaR/WIlvnx+g="),
_pguo("6itK9I/PaQLb"), _pguo("9itT7Nv0IDrfPBLIyvVnEMo="), _pguo("9itT7Nv0IDrfPBLXxvh0EA=="), _pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"), _pguo("7TpT7cbyYVj8L0Cg+PVkDNY="),
_pguo("+x1ioOv1cwzfIFHl"), _pguo("+yBT4sP5IDvWL1/z") },
[_pguo("+yBT4sP5IDvWL1/z")] = { _pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="), _pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc=") },
[_pguo("7SZd94/fbwrOPVfz")] = { _pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"), _pguo("/SFA8Nz5IDzXPUbhwf9l"), _pguo("7SZd94/Vbh7bLUbpwPI=") },
[_pguo("7SZd94/RZRnK")] = { _pguo("8ytT9I/YaQvKL1zjyg==") },
[_pguo("+AFkoOz0YRbZK0A=")] = { _pguo("+AFk") },
[_pguo("7TpT9Ny8QxnMKg==")] = { _pguo("+idc74/SYRXb"), _pguo("+Txd99v0ICvKL1Xl"), _pguo("8y9B84/bYRHQbn/1w+hpCNInV/I="), _pguo("6Stb58fo"), _pguo("+Txd99v0ICzXI1fy"), _pguo("7TpT58q8VBHTK0A="), _pguo("8DtG8sboaRfQbmH0zuhz"),
_pguo("6Ste7M35aRbZbmH0zuhz"), _pguo("+jxT54/PdBnKPRLDzu5k"), _pguo("9idW5Y/LaBHSKxLNyvJ1WPE+V+4=") },
[_pguo("/TtB9MDxICzXI1c=")] = { _pguo("9iFH8g=="), _pguo("7ztb48S8Ux3K") },
[_pguo("7SNT7MO8RhfNPVvs3A==")] = { _pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK") },
[_pguo("8ytW6drxID7RPUHpw+8=")] = { _pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q==") },
[_pguo("8i9A58q8RhfNPVvs3A==")] = { _pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK") },
[_pguo("6CtV5dv9dBHRIBLF/Mw=")] = { _pguo("8SBe+Y/ReVj6J1f0"), _pguo("9idW5Y/ZYQzbIBLQw/1uDM0="), _pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="), _pguo("8y9KoOP9Yh3SPQ==") },
[_pguo("7SZd94/fbBnHbnbl3/NzEco9")] = { _pguo("/SJT+Y/YaQvKL1zjyg==") },
[_pguo("7SZd94/MdRXOJVvu3A==")] = { _pguo("7jtf8MT1blj6J0H0zvJjHQ==") },
[_pguo("8yFWoOz0ZRvV")] = { _pguo("/ztG74/QZRnIKw==") },
[_pguo("8ydc6cL9cA==")] = { _pguo("7iJT+cruc1jRIBLNxvJpFd8+"), _pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"), _pguo("+CFB88bwc1jRIBLNxvJpFd8+") },
},
ORDER = {
AutoFarm = { _pguo("+CFB88bwID7fPF8="), _pguo("/ztG74/MdRXOJVvu"), _pguo("/ztG74/PcBnJIA==") },
Stats = { _pguo("+CFA48q8RRnK"), _pguo("/S9A8ta8QRbHbnHv3exzHQ=="), _pguo("/ztG74/LYQzbPA=="), _pguo("/ztG74/fbB3fIF7pwflzCw=="), _pguo("9yBU6cH1dB2eAUr5yPlu") },
},
HEADERS = {},
LOCKED = {},
}
function _v4.displayName(_v251)
local _v252 = (tostring(_v251 or ""):gsub(_pguo("4GtBqw=="), ""):gsub(_pguo("mz0ZpA=="), ""))
local _v253 = _v4.MENU_LAYOUT.RENAME and _v4.MENU_LAYOUT.RENAME[_v252]
return _v253 or (_v252:gsub(_pguo("4Atc4c3wZV3NZQ=="), ""))
end
function _v4.ezBridge(_v254)
local _v255 = game:GetService(_pguo("6z1X8ubycA3KHVfy2fVjHQ=="))
local _v256 = game:GetService(_pguo("7Dtc08rudhHdKw=="))
local _v257 = _v4.MENU_LAYOUT
local _v258 = { Caps = { sectionInfo = true } }
local function _v259(_v25a)
return (tostring(_v25a or ""):gsub(_pguo("4GtBqw=="), ""):gsub(_pguo("mz0ZpA=="), ""))
end
local function _v25b(_v25c)
local _v25d, _v25e = {}, nil
for _v25f in (tostring(_v25c) .. "\n"):gmatch(_pguo("lmAfqaU=")) do
local _v25g, _v25h = _v25f:match(_pguo("4GtBqofHXkLjZRu6iu8qUJBlG6Q="))
if _v25g and #_v25g <= 40 then
_v25e = _v259(_v25g)
_v25d[_v25e] = _v25h
elseif _v25e and _v25f:match("%S") then
_v25d[_v25e] = _v25d[_v25e] .. " " .. _v25f
else
_v25e = nil
end
end
return _v25d
end
local function _v25i(_v25j)
local _v25k = {}
function _v25k:Set(_v25l, _v25m)
_v25l = _v25l and true or false
if _v25m then pcall(function() _v25j:Set(_v25l) end) return end
_v25j.Enabled = _v25l
pcall(_v25j.Callback, _v25l)
pcall(function() _v25j:_applyVisual() end)
end
function _v25k:SetKey(_v25n, _v25o)
if typeof(_v25n) == _pguo("+yBH7eboZRU=") and _v25n ~= Enum.KeyCode.Unknown then
_v25j:SetKeybind(_v25n.Name)
else
_v25j.Keybind = nil
pcall(function()
_v25j._kbBtn.Text = _pguo("kGAc")
_v25j:_markBound(false)
end)
end
end
return setmetatable(_v25k, { __index = function(_v25p, _v25q)
if _v25q == _pguo("9StL") then return _v25j.Keybind or Enum.KeyCode.Unknown end
if _v25q == _pguo("6C9e9co=") or _v25q == _pguo("7TpT9Mo=") then return _v25j.Enabled end
return nil
end })
end
local function _v25r(_v25s, _v25t, _v25u)
local _v25v = _v25t.Callback or function() end
local _v25w = _v25s:AddSubToggle({ Name = _v4.displayName(_v25t.Name), Default = _v25t.Default and true or false, Tooltip = _v25u, Callback = _v25v })
local _v25x = {}
function _v25x:Set(_v25y, _v25z)
if not _v25z then pcall(_v25v, _v25y and true or false) end
pcall(function() _v25w:Set(_v25y, false) end)
end
function _v25x:SetKey() end
return setmetatable(_v25x, { __index = function(_v260, _v261)
if _v261 == _pguo("9StL") then return Enum.KeyCode.Unknown end
if _v261 == _pguo("6C9e9co=") or _v261 == _pguo("7TpT9Mo=") then return _v25w.Value end
return nil
end })
end
local function _v262(_v263, _v264)
local _v265 = _v264.Callback or function() end
local _v266 = _v263:AddSlider({
Name = _v4.displayName(_v264.Name), Min = _v264.Min, Max = _v264.Max, Default = _v264.Default,
Step = _v264.Increment or 1, Callback = _v265,
})
local _v267 = {}
function _v267:Set(_v268, _v269)
pcall(function() _v266:Set(_v268) end)
if not _v269 then pcall(_v265, _v266.Value ~= nil and _v266.Value or _v268) end
end
return setmetatable(_v267, { __index = function(_v26a, _v26b)
if _v26b == _pguo("6C9e9co=") then return _v266.Value end
return nil
end })
end
local function _v26c(_v26d, _v26e)
local _v26f = _v26e.Callback or function() end
local _v26g = _v26d:AddDropdown({
Name = _v259(_v26e.Name), Options = _v26e.Items or _v26e.Options or {}, Default = _v26e.Default, Callback = _v26f,
})
local _v26h = {}
function _v26h:Set(_v26i, _v26j)
pcall(function() _v26g:Set(_v26i) end)
if not _v26j then pcall(_v26f, _v26i) end
end
function _v26h:Refresh(_v26k, _v26l)
self._items = _v26k
_v26g:Refresh(_v26k or {})
end
return setmetatable(_v26h, { __index = function(_v26m, _v26n)
if _v26n == _pguo("7Ste5czoZRw=") then return _v26g.Selected end
return nil
end })
end
local function _v26o(_v26p, _v26q)
local _v26r = _v26q.Callback or function() end
local _v26t = _v26p:AddDropdown({
Name = _v259(_v26q.Name), Options = _v26q.Items or _v26q.Options or {}, Multi = true, Default = _v26q.Default,
Callback = function(_v26s) pcall(_v26r, _v26s) end,
})
local _v26u = {}
function _v26u:Set(_v26v, _v26w)
_v26t:Set(type(_v26v) == _pguo("yi9Q7Mo=") and _v26v or {}, not _v26w)
end
function _v26u:Refresh(_v26x, _v26y)
self._items = _v26x
if not _v26y then _v26t:Set({}, false) end
_v26t:Refresh(_v26x or {})
end
return setmetatable(_v26u, { __index = function(_v26z, _v270)
if _v270 == _pguo("7Ste5czoZRw=") then
local _v271 = {}
for _v272 in pairs(_v26t.Selected or {}) do _v271[_v272] = true end
return _v271
end
return nil
end })
end
local function _v273(_v274, _v275)
local _v276 = _v259(_v275.Name or _pguo("9StL4sbyZA=="))
local _v277 = _v275.Changed or _v275.Callback or function() end
local _v278 = { Key = typeof(_v275.Default) == _pguo("+yBH7eboZRU=") and _v275.Default or Enum.KeyCode.Unknown }
local _v279
local function _v27a(_v27b)
if _v279 then
_v279.Text = _v27b or (_v276 .. _pguo("hG4S") .. (_v278.Key == Enum.KeyCode.Unknown and _pguo("0CFc5Q==") or _v278.Key.Name))
end
end
local _v27c = false
local row = _v274:AddButton({
Name = _v276,
Callback = function()
if _v27c then return end
_v27c = true
_v27a(_v276 .. _pguo("hG4S8N35cwueLxLryuUgUPs9UaDM8GUZzD0b"))
local _v27d
_v27d = _v255.InputBegan:Connect(function(_v27e)
if _v27e.UserInputType ~= Enum.UserInputType.Keyboard then return end
_v27d:Disconnect()
_v27c = false
_v278.Key = (_v27e.KeyCode == Enum.KeyCode.Escape) and Enum.KeyCode.Unknown or _v27e.KeyCode
_v27a()
pcall(_v277, _v278.Key)
end)
end,
})
for _v27f, _v27g in ipairs(row:GetChildren()) do
if _v27g:IsA(_pguo("6itK9OP9Yh3S")) and _v27g.Text == _v276 then
_v279 = _v27g
break
end
end
_v27a()
function _v278:Set(_v27h, _v27i)
if typeof(_v27h) == _pguo("+yBH7eboZRU=") then _v278.Key = _v27h end
_v27a()
if not _v27i then pcall(_v277, _v278.Key) end
end
return _v278
end
local function _v27j()
return setmetatable({}, { __index = function(_v27k, _v27l)
if _v27l == _pguo("9StL") then return Enum.KeyCode.Unknown end
if _v27l == _pguo("6C9e9co=") or _v27l == _pguo("7TpT9Mo=") then return false end
if _v27l == _pguo("7Ste5czoZRw=") then return {} end
return function() end
end })
end
local function _v27m(_v27n, _v27o)
local _v27p, _v27q, _v27r = {}, {}, nil
local function _v27s(_v27t)
local _v27u = _v259(_v27t)
return _v27n.locked[_v27u] or _v27n.locked[_v27o .. "/" .. _v27u]
end
local function _v27v(_v27w, _v27x)
local _v27y = _v259(_v27w)
if _v27x then
local _v27z = _v27n.parentOf[_v27o .. "/" .. _v27y] or _v27n.parentOf[_v27y]
local _v280 = _v27z and _v27n.masters[_v27z]
if _v280 then return _v280, true end
end
local _v281 = _v257.WHERE[_v27y] or _v257.SUB_MAIN[_v27o] or _v257.MAIN[#_v257.MAIN]
if not _v27n.tabs[_v281] then _v27n.tabs[_v281] = _v27n.win:AddTab(_v281) end
local _v282 = _v27n.tabs[_v281]
local _v283 = _v257.HEADERS[_v281]
local _v284 = _v283 and _v27r and _v283[_v27r]
if _v284 and _v27n.lastHeader[_v281] ~= _v284 then
_v282:AddSection(_v284)
_v27n.lastHeader[_v281] = _v284
end
return _v282, false, _v281
end
local function _v285(_v286)
local _v287 = _v259(_v286)
if _v27n.premiumRows and _v27n.lockedTop[_v287] then
pcall(function()
local _v288, _v289, _v28a = _v27v(_v286, true)
local _v28b = _v288:AddToggle({ Name = _v4.displayName(_v287), Premium = true })
local _v28c = _v28a and _v27n.rank[_v28a] and _v27n.rank[_v28a][_v287]
if _v28c then _v28b._container.LayoutOrder = _v28c - 100000 end
end)
end
return _v27j()
end
function _v27p:AddSection(_v28d)
_v27r = type(_v28d) == _pguo("yi9Q7Mo=") and _v28d.Name or _v28d
_v27q = (type(_v28d) == _pguo("yi9Q7Mo=") and _v28d.Info) and _v25b(_v28d.Info) or {}
return nil
end
function _v27p:AddToggle(_v28e)
_v28e = _v28e or {}
if _v27s(_v28e.Name) then return _v285(_v28e.Name) end
local _v28f, _v28g, _v28h = _v27v(_v28e.Name, true)
if _v28g then
local _v28i = _v259(_v28e.Name)
if not _v27n.hasKids[_v28i] then return _v25r(_v28f, _v28e, _v28e.Tooltip or _v27q[_v28i]) end
local _v28j = _v28f:AddToggle({
Name = _v4.displayName(_v28i),
Default = false,
Tooltip = _v28e.Tooltip or _v27q[_v28i],
Callback = _v28e.Callback or function() end,
})
if _v28e.Default then _v28j:Set(true) end
_v27n.masters[_v28i] = _v28j
return _v25i(_v28j)
end
local _v28k = _v259(_v28e.Name)
local _v28l = _v28f:AddToggle({
Name = _v4.displayName(_v28k),
Default = false,
Keybind = type(_v28e.Keybind) == _pguo("zTpA6cH7") and _v28e.Keybind or nil,
Tooltip = _v28e.Tooltip or _v27q[_v28k],
Callback = _v28e.Callback or function() end,
})
if _v28e.Default then _v28l:Set(true) end
_v27n.masters[_v28k] = _v28l
local _v28m = _v27n.rank[_v28h] and _v27n.rank[_v28h][_v28k]
if _v28m then _v28l._container.LayoutOrder = _v28m - 100000 end
return _v25i(_v28l)
end
function _v27p:AddSlider(_v28n)
_v28n = _v28n or {}
if _v27s(_v28n.Name) then return _v285(_v28n.Name) end
return _v262(_v27v(_v28n.Name, true), _v28n)
end
function _v27p:AddDropdown(_v28o)
_v28o = _v28o or {}
if _v27s(_v28o.Name) then return _v285(_v28o.Name) end
local _v28p = _v27v(_v28o.Name, true)
if _v28o.Multi then return _v26o(_v28p, _v28o) end
return _v26c(_v28p, _v28o)
end
function _v27p:AddButton(_v28q)
_v28q = _v28q or {}
if _v27s(_v28q.Name) then return _v285(_v28q.Name) end
return (_v27v(_v28q.Name, false)):AddButton({ Name = _v259(_v28q.Name), Callback = _v28q.Callback })
end
function _v27p:AddLabel(_v28r)
_v28r = _v28r or {}
if _v27s(_v28r.Name) then return _v285(_v28r.Name) end
local _v28s
pcall(function()
local _v28t, _v28u = _v27v(_v28r.Name, true)
if _v28u and _v28t.AddNote then
_v28s = _v28t:AddNote(_v28r.Text or "")
elseif not _v28u and _v28t.AddLabel then
_v28s = _v28t:AddLabel(_v28r.Text or "")
end
end)
return { SetText = function(_v28v, _v28w)
_v28v._text = _v28w
pcall(function()
if typeof(_v28s) == _pguo("9yBB9M7yYx0=") then _v28s.Text = tostring(_v28w)
elseif _v28s and _v28s.SetText then _v28s:SetText(tostring(_v28w)) end
end)
end }
end
function _v27p:AddKeybind(_v28x)
_v28x = _v28x or {}
if _v27s(_v28x.Name) then return _v285(_v28x.Name) end
return _v273((_v27v(_v28x.Name, false)), _v28x)
end
_v27p._raw = {}
for _v28y, _v28z in ipairs({ _pguo("/ypW08r/dBHRIA=="), _pguo("/ypW1MD7ZxTb"), _pguo("/ypW08P1ZB3M"), _pguo("/ypWxN3zcBzROVw="), _pguo("/ypWwtrodBfQ"), _pguo("/ypWzM7+ZRQ="), _pguo("/ypWy8rlYhHQKg==") }) do
local _v290 = _v27p[_v28z]
_v27p._raw[_v28z] = _v290
_v27p[_v28z] = function(_v291, _v292, ...)
local _v293 = _v290(_v291, _v292, ...)
local _v294 = _v27n.rec
if _v294 and not _v294.replaying then
_v294.log[#_v294.log + 1] = { proxy = _v27p, method = _v28z, cfg = _v292, obj = _v293 }
end
return _v293
end
end
return _v27p
end
function _v258.new(_v295)
_v295 = _v295 or {}
local _v296 = (type(getgenv) == _pguo("2Dtc49v1bxY=")) and getgenv() or _G
if _v296.__PX_EZ_WIN then
pcall(function()
_v296.__PX_EZ_WIN.OnUnload = nil
_v296.__PX_EZ_WIN:Destroy()
end)
end
local _v297 = { tabs = {}, toggleKey = Enum.KeyCode.RightShift }
local _v298 = false
local _v299 = _pguo("7hZtxfXach3bA1313Pk=")
local _v29a = false
local _v29b, _v29c = _v255.MouseBehavior, _v255.MouseIconEnabled
local _v29d = {}
pcall(function()
_v29d[1] = _v255:GetPropertyChangedSignal(_pguo("8yFH88reZRDfOFvv3Q==")):Connect(function()
local _v29e = _v255.MouseBehavior
if not _v29a or _v29e ~= Enum.MouseBehavior.Default then _v29b = _v29e end
end)
_v29d[2] = _v255:GetPropertyChangedSignal(_pguo("8yFH88rVYxfQC1zhzfBlHA==")):Connect(function()
local _v29f = _v255.MouseIconEnabled
if not _v29a or not _v29f then _v29c = _v29f end
end)
end)
local function _v29g()
_v255.MouseBehavior = _v29b
_v255.MouseIconEnabled = _v29c
end
local function _v29h()
pcall(function() _v256:UnbindFromRenderStep(_v299) end)
for _v29i, _v29j in ipairs(_v29d) do pcall(function() _v29j:Disconnect() end) end
if _v29a then
_v29a = false
pcall(_v29g)
end
end
local _v29k = {}
for _v29l, _v29m in pairs(_v257.NEST) do
for _v29n, _v29o in ipairs(_v29m) do _v29k[_v29o] = _v29l end
end
local _v29p = {}
for _v29q, _v29r in pairs(_v257.ORDER or {}) do
_v29p[_v29q] = {}
for _v29s, _v29t in ipairs(_v29r) do _v29p[_v29q][_v29t] = _v29s end
end
local _v29u = {}
for _v29v in pairs(_v257.NEST) do _v29u[_v29v] = true end
local _v29w = {}
local function _v29x(_v29y)
if _v29w[_v29y] then return end
_v29w[_v29y] = true
for _v29z, _v2a0 in ipairs(_v257.NEST[_v29y] or {}) do _v29x(_v2a0) end
end
for _v2a1, _v2a2 in ipairs(_v257.LOCKED or {}) do _v29x(_v2a2) end
local _v2a3 = {}
for _v2a4, _v2a5 in ipairs(_v257.LOCKED or {}) do
if not _v29w[_v29k[_v2a5] or ""] then _v2a3[_v2a5] = true end
end
local _v2a6 = { EZ = _v254, kind = _v4.guiKindOf(_v254), win = nil, ctx = nil, modal = nil, cfgOpts = nil }
local _v2a7 = { log = {}, replaying = false }
local _v2aa = setmetatable({}, { __index = function(_v2a8, _v2a9) return _v2a6.ctx and _v2a6.ctx[_v2a9] end })
local _v2ab = false
local _v2ac = _v255.TouchEnabled and not _v255.KeyboardEnabled
local function _v2ad(_v2ae)
local _v2ag = function(_v2af) return _v297:SwapGui(_v2af) end
if _v2ae == _pguo("+xRktA==") then
return { current = _pguo("+xRktA=="), options = { _pguo("7Ttc88ro"), _pguo("9y1X"), _pguo("+S9e4dfl"), _pguo("+xRktA==") }, pick = _v2ag }
end
return { options = { { Name = _pguo("+xRktA=="), Accent = Color3.fromRGB(140, 95, 255), Ink = Color3.fromRGB(12, 10, 18),
Blurb = _pguo("yiZXoMLpbAzXY0XpwfhvD54jV+7a") } }, pick = _v2ag }
end
local function _v2ah(_v2ai, _v2aj)
local _v2ak = _v2ai:CreateWindow({
Title = _v295.Title or _pguo("+y9I+ez0ZRnKPQ=="),
Website = _pguo("2y9I+cz0ZRnKPRzjwPE="),
Discord = _pguo("2idB48DuZFbZKR31+cRRLPkrVPbe"),
PremiumUrl = _pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8f3yNXr93zYhTRNh3w3fVvCpM+QOXC9XUVkz1R8sbsdA=="),
GuiSwap = _v2ad(_v2aj),
OnUnload = function()
if _v298 or _v2ab then return end
_v298 = true
if _v297.onUnload then pcall(_v297.onUnload) end
_v29h()
end,
})
local _v2al = { win = _v2ak, tabs = {}, masters = {}, parentOf = _v29k, lastHeader = {}, rank = _v29p,
hasKids = _v29u, locked = _v29w, rec = _v2a7,
lockedTop = _v2a3, premiumRows = _v2ai.PREMIUM_URL ~= nil }
for _v2am, _v2an in ipairs(_v257.MAIN) do
if _v2al.premiumRows or not (_v257.PREMIUM_TABS and _v257.PREMIUM_TABS[_v2an]) then _v2al.tabs[_v2an] = _v2ak:AddTab(_v2an) end
end
local _v2ao
if not _v2ac then
_v2ao = Instance.new(_pguo("6itK9O3pdAzRIA=="))
_v2ao.Name = _pguo("7hZtzcD4YRQ=")
_v2ao.Modal = true
_v2ao.Text = ""
_v2ao.AutoButtonColor = false
_v2ao.BackgroundTransparency = 1
_v2ao.Size = UDim2.new(0, 1, 0, 1)
_v2ao.Visible = false
_v2ao.Parent = _v2ak._gui
end
return _v2ak, _v2al, _v2ao
end
_v2a6.win, _v2a6.ctx, _v2a6.modal = _v2ah(_v254, _v2a6.kind)
_v296.__PX_EZ_WIN = _v2a6.win
if not _v2ac then
pcall(function()
_v256:BindToRenderStep(_v299, Enum.RenderPriority.Camera.Value + 1, function()
local _v2ap, _v2aq = _v2a6.win, _v2a6.modal
if _v2ap and _v2ap._gui and _v2ap._visible then
if _v2aq and not _v2aq.Visible then _v2aq.Visible = true end
if not _v29a then
_v29a = true
else
if _v255.MouseBehavior ~= Enum.MouseBehavior.Default then _v29b = _v255.MouseBehavior end
if not _v255.MouseIconEnabled then _v29c = false end
end
_v255.MouseBehavior = Enum.MouseBehavior.Default
_v255.MouseIconEnabled = true
elseif _v29a and not _v2ab then
_v29a = false
if _v2aq then _v2aq.Visible = false end
_v29g()
end
end)
end)
end
function _v297:IsVisible()
return _v2a6.win ~= nil and _v2a6.win._gui ~= nil and _v2a6.win._visible == true
end
function _v297:Notify(_v2ar, _v2as)
if _v2a6.win and _v2a6.win._gui then return _v2a6.win:Notify(_v2ar, _v2as or 3) end
return nil
end
function _v297:SetConfig(_v2at)
_v2a6.cfgOpts = _v2at
return _v2a6.win:SetConfig(_v2at)
end
function _v297:Destroy()
_v298 = true
_v29h()
pcall(function() _v2a6.win:Destroy() end)
if _v296.__PX_EZ_WIN == _v2a6.win then _v296.__PX_EZ_WIN = nil end
end
function _v297:GetGui()
return _v2a6.kind
end
function _v297:GetLook()
local _v2au
pcall(function() _v2au = _v2a6.win:GetTheme() end)
return _v2au
end
local function _v2av(_v2aw)
local _v2ax = _v2aw.obj
if type(_v2ax) ~= _pguo("yi9Q7Mo=") then return nil end
local _v2ay = {}
pcall(function()
local _v2az = _v2aw.method
if _v2az == _pguo("/ypW1MD7ZxTb") then _v2ay.value = _v2ax.Value; _v2ay.key = _v2ax.Key
elseif _v2az == _pguo("/ypW08P1ZB3M") then _v2ay.value = _v2ax.Value
elseif _v2az == _pguo("/ypWxN3zcBzROVw=") then _v2ay.value = _v2ax.Selected; _v2ay.items = rawget(_v2ax, _pguo("4SdG5cLv"))
elseif _v2az == _pguo("/ypWy8rlYhHQKg==") then _v2ay.key = _v2ax.Key
elseif _v2az == _pguo("/ypWzM7+ZRQ=") then _v2ay.text = rawget(_v2ax, _pguo("4TpX+Ns=")) end
end)
return _v2ay
end
local function _v2b0(_v2b1, _v2b2)
if type(_v2b1.cfg) ~= _pguo("yi9Q7Mo=") then return _v2b1.cfg end
local _v2b3 = {}
for _v2b4, _v2b5 in pairs(_v2b1.cfg) do _v2b3[_v2b4] = _v2b5 end
if _v2b2 then
local _v2b6 = _v2b1.method
if (_v2b6 == _pguo("/ypW1MD7ZxTb") or _v2b6 == _pguo("/ypW08P1ZB3M")) and _v2b2.value ~= nil then _v2b3.Default = _v2b2.value
elseif _v2b6 == _pguo("/ypWxN3zcBzROVw=") then
if _v2b2.value ~= nil then _v2b3.Default = _v2b2.value end
if _v2b2.items then _v2b3.Items, _v2b3.Options = _v2b2.items, nil end
elseif _v2b6 == _pguo("/ypWy8rlYhHQKg==") and _v2b2.key then _v2b3.Default = _v2b2.key end
end
return _v2b3
end
local function _v2b7(_v2b8, _v2b9)
if type(_v2b8) ~= _pguo("yi9Q7Mo=") or type(_v2b9) ~= _pguo("yi9Q7Mo=") or _v2b8 == _v2b9 then return end
for _v2ba in pairs(_v2b8) do
if _v2ba ~= _pguo("4SdG5cLv") and _v2ba ~= _pguo("4TpX+Ns=") then _v2b8[_v2ba] = nil end
end
for _v2bb, _v2bc in pairs(_v2b9) do _v2b8[_v2bb] = _v2bc end
setmetatable(_v2b8, getmetatable(_v2b9))
end
local function _v2bd(_v2be, _v2bf)
local _v2bg = _v2be.obj
if type(_v2bg) ~= _pguo("yi9Q7Mo=") or not _v2bf then return end
pcall(function()
local _v2bh = _v2be.method
if _v2bh == _pguo("/ypW1MD7ZxTb") then
if _v2bf.value ~= nil and _v2bg.Set then _v2bg:Set(_v2bf.value, true) end
if typeof(_v2bf.key) == _pguo("+yBH7eboZRU=") and _v2bf.key ~= Enum.KeyCode.Unknown and _v2bg.SetKey then _v2bg:SetKey(_v2bf.key, true) end
elseif _v2bh == _pguo("/ypW08P1ZB3M") or _v2bh == _pguo("/ypWxN3zcBzROVw=") then
if _v2bf.value ~= nil and _v2bg.Set then _v2bg:Set(_v2bf.value, true) end
elseif _v2bh == _pguo("/ypWy8rlYhHQKg==") then
if _v2bf.key and _v2bg.Set then _v2bg:Set(_v2bf.key, true) end
elseif _v2bh == _pguo("/ypWzM7+ZRQ=") then
if _v2bf.text ~= nil and _v2bg.SetText then _v2bg:SetText(_v2bf.text) end
end
end)
end
function _v297:SwapGui(_v2bi)
_v2bi = tostring(_v2bi or "")
local _v2bj = (_v2bi == _pguo("+xRktA==")) and _pguo("+xRktA==") or _pguo("+DtB6cDy")
if _v2ab or _v298 then return false end
if _v2bj == _v2a6.kind then
if _v2bj == _pguo("+DtB6cDy") then
pcall(function()
if _v2a6.win._pickTheme then _v2a6.win:_pickTheme(_v2bi) else _v2a6.win:SetTheme(_v2bi) end
end)
end
return true
end
local _v2bk = os.clock()
local _v2bl, _v2bm = _v4.guiLibrary(_v2bj)
if not _v2bl then
_v297:Notify(_pguo("/SFH7Mu8bhfKbl7vzvgg") .. _v2bi .. ": " .. tostring(_v2bm), 4)
return false
end
_v2ab = true
local _v2bn = {}
for _v2bo, _v2bp in ipairs(_v2a7.log) do _v2bn[_v2bo] = _v2av(_v2bp) end
local _v2bq = { win = _v2a6.win, ctx = _v2a6.ctx, modal = _v2a6.modal, EZ = _v2a6.EZ, kind = _v2a6.kind }
local _v2br, _v2bs = {}, nil
local okBuild, buildErr = pcall(function()
local _v2bt, _v2bu, _v2bv = _v2ah(_v2bl, _v2bj)
_v2bt._autoLoaded = true
_v2a6.win, _v2a6.ctx, _v2a6.modal, _v2a6.EZ, _v2a6.kind = _v2bt, _v2bu, _v2bv, _v2bl, _v2bj
_v2a7.replaying = true
local _v2bw = _v4.SUPPRESS_TOGGLE_NOTIFY
_v4.SUPPRESS_TOGGLE_NOTIFY = true
for _v2bx, _v2by in ipairs(_v2a7.log) do
local _v2bz, _v2c0 = pcall(_v2by.proxy._raw[_v2by.method], _v2by.proxy, _v2b0(_v2by, _v2bn[_v2bx]))
if not _v2bz then _v2bs = _v2bs or (_v2by.method .. " " .. tostring(type(_v2by.cfg) == _pguo("yi9Q7Mo=") and _v2by.cfg.Name or _v2by.cfg) .. ": " .. tostring(_v2c0)) end
_v2br[_v2bx] = _v2c0
end
_v4.SUPPRESS_TOGGLE_NOTIFY = _v2bw
_v2a7.replaying = false
if _v2bs then error(_v2bs, 0) end
end)
_v2a7.replaying = false
if not okBuild then
local _v2c1, _v2c2 = _v2a6.win, _v2a6.modal
_v2a6.win, _v2a6.ctx, _v2a6.modal, _v2a6.EZ, _v2a6.kind = _v2bq.win, _v2bq.ctx, _v2bq.modal, _v2bq.EZ, _v2bq.kind
if _v2c1 and _v2c1 ~= _v2bq.win then pcall(function() _v2c1.OnUnload = nil _v2c1:Destroy() end) end
if _v2c2 and _v2c2 ~= _v2bq.modal then pcall(function() _v2c2:Destroy() end) end
_v2ab = false
warn(_pguo("5QtT+tbfaB3fOkHdj9tVMZ49ReHfvHQXng==") .. _v2bi .. _pguo("nihT6cP5ZEKe") .. tostring(buildErr))
_v297:Notify(_pguo("/SFH7Mu8bhfKbkH3xuhjEJ46XaA=") .. _v2bi, 4)
return false
end
for _v2c3, _v2c4 in ipairs(_v2a7.log) do
_v2b7(_v2c4.obj, _v2br[_v2c3])
_v2bd(_v2c4, _v2bn[_v2c3])
end
if _v2a6.cfgOpts then
local _v2c5 = {}
for _v2c6, _v2c7 in pairs(_v2a6.cfgOpts) do _v2c5[_v2c6] = _v2c7 end
_v2c5.AutoLoad = false
pcall(function() _v2a6.win:SetConfig(_v2c5) end)
end
_v296.__PX_EZ_WIN = _v2a6.win
pcall(function() _v2bq.win.OnUnload = nil _v2bq.win:Destroy() end)
if _v2bq.modal then pcall(function() _v2bq.modal:Destroy() end) end
if _v2bj == _pguo("+DtB6cDy") then
pcall(function()
if _v2a6.win._pickTheme then _v2a6.win:_pickTheme(_v2bi) else _v2a6.win:SetTheme(_v2bi) end
end)
end
_v2ab = false
_v4.saveGuiChoice(_v2bj)
_v297:Notify(string.format(_pguo("mz0S7crydViWaxyyye8p"), _v2bi, os.clock() - _v2bk), 3)
return true
end
function _v297:AddTab(_v2c8)
local _v2c9 = {}
function _v2c9:AddSubTab(_v2ca)
return _v27m(_v2aa, type(_v2ca) == _pguo("yi9Q7Mo=") and _v2ca.Name or tostring(_v2ca))
end
return _v2c9
end
_v297.tabs.Settings = _v27m(_v2aa, _pguo("/SFc5sb7"))
return _v297
end
return _v258
end
_v4.FUSION_LAYOUT = (function()
return {
kind = _pguo("+xR19cbTbh2QIlP5wOl0"), version = 1, hub = _pguo("7jxb7928RQDKJ1zj2/VvFg=="),
match = 3,
pages = {
{ name = _pguo("/ztG7+n9chU="), icon = _pguo("2C9A7Q=="), blurb = _pguo("+C9A7dy8dBDfOhLww/15WNghQKDW83U="),
sections = {
{ title = _pguo("+C9A7dw="), note = _pguo("7idR64/zbh2Q") },
{ title = _pguo("7T5T98H1bh8="), note = _pguo("+TxT4o/9bljfPlf4j+9sF8puRujKvG0X0ytc9I/zbh2eIULlwe8u") },
} },
{ name = _pguo("7TpT9Nw="), icon = _pguo("3CFe9A=="), blurb = _pguo("9StX8I/lbw3MblbpwfMgHtsqEuHB+CAb0itT7g=="),
sections = {
{ title = _pguo("+CFd5I/9bhyeGVP0yu4="), note = _pguo("+y9GoM7yZFjaPFvuxLx3EcomXfXbvGQX1yBVoMboIAHRO0DzyvBmVg==") },
{ title = _pguo("6z5Z5crs"), note = _pguo("/SJX4cHwaRbbPUGsj/N4AdkrXKyP/W4cnixT8ty8dBDfOhLz2/NwWNgvXuzG8mdW") },
} },
{ name = _pguo("/SFf4s7o"), icon = _pguo("3SFf4s7o"), blurb = _pguo("7CtT48ewIBDXOlDv1/lzVJ4vRvTO/2tYzT5X5cs="),
sections = {
{ title = _pguo("7CtT48e8YRbabnrp2/5vANs9"), note = _pguo("9iFFoMn9cljHIUfyj/RpDM1uQOXO/2hUni9c5I/0bw+eLFvnj/0gDN88VeXbvGkLkA==") },
{ title = _pguo("/zpG4cz3aRbZ"), note = _pguo("9iFFoMn9cwyeN131j+93EdApHqDO8mRYySZb48e8cBnMOhL0x/kgC8knXOeP8GEW2j0S78Gy") },
} },
{ name = _pguo("7Ctc5Mru"), icon = _pguo("zCtc5Mru"), blurb = _pguo("7StXoNj0YQyeOlrlj/thFdtuWunL+XM="),
sections = {
{ title = _pguo("7iJT+cruc1jfIFag6fNvHA=="), note = _pguo("8i9Q5cPvIBfQIkug1vN1WN0vXKDc+WVW") },
{ title = _pguo("5yFH8o/KaR3J"), note = _pguo("/SZT7sj5c1jKIRL5wOlyWNE5XKDc/3Id2yAcoOHzYhfaNxLlw+9lWM0rV/OP/W4BniFUoMboLg==") },
{ title = _pguo("6SFA7Ms="), note = _pguo("8idV6NuwIB7RKR6g2PlhDNYrQKDO8mRYyidf5Y/zZljaL0usj/NuWMchR/KP72MK2ytcoMDybAGQ") },
{ title = _pguo("+CFB88bwc1SeHl7hwehzWN8gVqDs8GEB"), note = _pguo("8i9Q5cPvIB7RPBL3x/10WNc9EvfA7nQQnjlT7MT1bh+eOl2u") },
} },
{ name = _pguo("6iFd7Nw="), icon = _pguo("yiFd7Nw="), blurb = _pguo("9idW6cH7LFjYIkvpwfssWNE4V/LD/XkLkm5f4d8="),
sections = {
{ title = _pguo("7S9U5dvl"), note = _pguo("+StGoMDpdFjRKBLhj/ppH9Y6HA==") },
{ title = _pguo("8yFE5cL5bgw="), note = _pguo("+CJL6cH7LFjKO0DuxvJnVJ4vXOSP+3IXySdc54/raBHSKxL5wOkgFdE4V64=") },
{ title = _pguo("8SAS08zuZR3Q"), note = _pguo("6SZT9I/oaB2eJkfij/hyGck9Eu/BvHQXzm5d5o/oaB2eKVPtyrI=") },
{ title = _pguo("/S9f5d39"), note = _pguo("5yFH8o/zdxaeOFvl2LxvFtI3HA==") },
{ title = _pguo("8y9CoM7yZFj/Kl/pwe8="), note = _pguo("8y9CoMvzdAuSblOg3OhhHthuReHd8mkW2WIS9Mf5IA3QIl3hy7xrHcduU+7LvHQQ225C6MDyZVjKO0Duj+xhHJA=") },
} },
},
features = {
[_pguo("+CFB88bwID7fPF8=")] = { page = _pguo("/ztG7+n9chU="), section = 1,
hint = _pguo("+CJb5dy8dBeeK1Pjx7xmF809W+yP/W4cni1d7MP5YwzNblv0"),
keys = { _pguo("2idV"), _pguo("3CFc5dw="), _pguo("3SFe7Mr/dA=="), _pguo("0yFc5dY=") },
},
[_pguo("/ztG74/MdRXOJVvu")] = { page = _pguo("/ztG7+n9chU="), section = 1,
hint = _pguo("+CJb5dy8dBeeK1Pjx7xwDdM+WenBvGEW2m5R78PwZRvKPRLp2w=="),
keys = { _pguo("1i9e7MDrZR3Q"), _pguo("2zhX7ts="), _pguo("3SFe7Mr/dA=="), _pguo("3yNQ5d0="), _pguo("2ylV8w==") },
},
[_pguo("/yBG6Y/dRjM=")] = { page = _pguo("6iFd7Nw="), section = 1,
hint = _pguo("7Tpd8Ny8dBDbblXhwvkgE9ctWenB+yAB0TsS5sDuIBHaIlvuyA=="),
about = _pguo("7CFQ7MDkIBPXLVnzj/1uAdEgV6DG+Gwdnihd8o+uMFjTJ1z12/lzVp4CV+HZ+SAM1idBoMDyIA/WJ17lj/0gHt88X6Dd6W4LkA=="),
keys = { _pguo("1ype5Q=="), _pguo("1SdR6w=="), _pguo("3yhZ"), _pguo("yjlX7tvlIBXXIEf0yu8=") },
},
[_pguo("/ztG74/PcBnJIA==")] = { page = _pguo("/ztG7+n9chU="), section = 2,
hint = _pguo("7T5T7dy8ZhfMbkboyrxhCNs2EvPD83RYxyFHoN/1YxPbKg=="),
about = _pguo("8T5X7o/4aRbRbkHlw/ljDNchXKDO8mRYzidR64/oaB2eKlvuwLxhFtpuVeXB+GUKnihb8tzoLFjKJlfuj+h1CtBuRujG7yAX0GA="),
keys = { _pguo("3z5X+A=="), _pguo("zSJd9A=="), _pguo("zT5T98E="), _pguo("zztX9co="), _pguo("zCtD9crvdA==") },
},
[_pguo("+CFA48q8RRnK")] = { page = _pguo("7TpT9Nw="), section = 1,
hint = _pguo("+y9G84/yZRnMLEugyfNvHJ45WuHb+XYdzG5L79ruIBzXK0Y="),
keys = { _pguo("1jtc58ru"), _pguo("2CtX5A=="), _pguo("ziJT7tvv"), _pguo("3S9A7sbqbwrb"), _pguo("2idX9A=="), _pguo("2C9B9I/5YQw="), _pguo("zS1A4d/v") },
},
[_pguo("/ztG74/LYQzbPA==")] = { page = _pguo("7TpT9Nw="), section = 1,
hint = _pguo("+jxb7sTvIB7RPBL5wOkgD9YrXOXZ+XJYxyFHoM7uZVjfOhL3zuhlCg=="),
keys = { _pguo("yiZb8tzo"), _pguo("2jxb7sQ="), _pguo("1jdW8s7oaRfQ") },
},
[_pguo("/ztG74/fbB3fIF7pwflzCw==")] = { page = _pguo("7TpT9Nw="), section = 2,
hint = _pguo("9StX8Ny8eRfLblHsyv1uWN87Ru/C/XQR3S9e7NY="),
keys = { _pguo("2idA9NY="), _pguo("0ztW"), _pguo("yS9B6A=="), _pguo("1jdV6cryZQ==") },
},
[_pguo("9yBU6cH1dB2eAUr5yPlu")] = { page = _pguo("7TpT9Nw="), section = 2,
hint = _pguo("8TZL58ryIBbbOFfyj/hyGdcgQaDa8mQdzDlT9Mru"),
keys = { _pguo("3DxX4dv0"), _pguo("2idE5Q=="), _pguo("zTlb7Q=="), _pguo("2jxd98E=") },
},
[_pguo("9idG4sDkID3GPlPuy/ly")] = { page = _pguo("/SFf4s7o"), section = 1,
hint = _pguo("+Txd99y8Tyz2C2Cg3/BhAds8QaeP9GkM3CFK5dw="),
keys = { _pguo("1idG4sDk"), _pguo("yi9A58ro"), _pguo("3CdV58ru"), _pguo("0zte9MbsbBHbPA=="), _pguo("zi9A9Nw="), _pguo("zjhC") },
},
Reach = { page = _pguo("/SFf4s7o"), section = 1,
hint = _pguo("+Txd99y8WTfrHBLv2PIgGco6U+PEvHIZ0ClXrI/0aQyeKEfy2/RlCg=="),
keys = { _pguo("zC9c58o="), _pguo("2idB9M7yYx0="), _pguo("0iFc58ru"), _pguo("0zte9MbsbBHbPA=="), _pguo("zjhC") },
},
[_pguo("9yBB9M7ydFj/OkbhzPc=")] = { page = _pguo("/SFf4s7o"), section = 2,
hint = _pguo("7T5X5cvvIA3ObkboyrxhDMovUeuP/W4R0y9G6cDy"),
keys = { _pguo("3zpG4cz3IAvOK1fk"), _pguo("zTlb7sg="), _pguo("2C9B9Mru"), _pguo("zjhC") },
},
[_pguo("8CESwdvoYRvVbnHvwPBkF8kg")] = { page = _pguo("/SFf4s7o"), section = 2,
hint = _pguo("7Ctf79n5c1jKJleg2P1pDJ4rXPTG7mUUxw=="),
keys = { _pguo("3SFd7MvzdxY="), _pguo("zT5T7Q=="), _pguo("3zpG4cz3IAvOK1fk"), _pguo("zjhC") },
},
[_pguo("7Sde5cHoIDnXIw==")] = { page = _pguo("/SFf4s7o"), section = 2,
hint = _pguo("9idG84/wYRbabl3uj+hoHZ4+U/Lb7yAB0TsS8Mb/aw=="),
keys = { _pguo("3ydf"), _pguo("1itT5A=="), _pguo("zi9A9Nw="), _pguo("yi9A58ro"), _pguo("zjhC") },
},
Players = { page = _pguo("7Ctc5Mru"), section = 1,
hint = _pguo("8i9Q5cPvIB3IK0D5j+xsGccrQLqP8mEV22IS6Mr9bAzWYhLtwO5l"),
keys = { _pguo("2z1C"), _pguo("yS9e7Mf9YxM="), _pguo("3SZT7dw="), _pguo("0C9f5Y/oYR/N"), _pguo("1itT7Nv0"), _pguo("zStXoNv0chfLKVqg2P1sFM0="), _pguo("zi9R6w==") },
groups = {
{ title = _pguo("8i9Q5cM="),
rows = { _pguo("7SZd94/SYRXb"), _pguo("7SZd94/YaRbRbmb53/k="), _pguo("7SZd94/PdBnZKw=="), _pguo("7SZd94/bZRbaK0A="), _pguo("7SZd94/UZRnSOlo="), _pguo("7SZd94/PdBnTJ1zh"), _pguo("+CFd5I/eYQo="), _pguo("+CFd5I/SdRXcK0A="), _pguo("6S9G5d28QhnM"), _pguo("6S9G5d28Tg3TLFfy"), _pguo("9yBU5czoaRfQbnDh3Q=="), _pguo("9yBU5czoaRfQbnz1wv5lCg=="), _pguo("9yBU5czoZRyeGlPn"), _pguo("7SZd94/LZRHZJkY="), _pguo("/CJX5cu8RSvu"), _pguo("7i9R64/ZUyg="), _pguo("7i9R64/QZRnaK0Cg6s9Q"), _pguo("7SZd94/YaQvKL1zjyg=="), _pguo("6itK9I/UaR/WIlvnx+g=") },
},
{ title = _pguo("7SdI5Y/9bhyeHFPuyPk="),
rows = { _pguo("6itK9I/PaQLb"), _pguo("9itT7Nv0IDrfPBLIyvVnEMo="), _pguo("9itT7Nv0IDrfPBLXxvh0EA=="), _pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"), _pguo("7TpT7cbyYVj8L0Cg+PVkDNY="), _pguo("+x1ioOv1cwzfIFHl") },
},
{ title = _pguo("/SZT7dw="), flatten = _pguo("/SZT7dw="),
rows = { _pguo("/SZT7dw="), _pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="), _pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc=") },
dim = { [_pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k=")] = _pguo("/SZT7dw="), [_pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc=")] = _pguo("/SZT7dw=") },
},
},
},
[_pguo("+CdB6I/ZUyg=")] = { page = _pguo("7Ctc5Mru"), section = 1,
hint = _pguo("8i9Q5cPvIAzWKxLmxu9oWNcgEvTH+SAP3zpX8g=="),
keys = { _pguo("2z1C"), _pguo("2CFd5A=="), _pguo("yS9G5d0=") },
},
[_pguo("7SZd94/fbwrOPVfz")] = { page = _pguo("7Ctc5Mru"), section = 1,
hint = _pguo("8i9Q5cPvIBvRPELzyu8gDNYvRqDc6GkU0m5a4dn5IBXbL0Y="),
keys = { _pguo("2z1C"), _pguo("3CFW+Q=="), _pguo("0ytT9A=="), _pguo("2CFd5A=="), _pguo("1yBU5czoaRfQ") },
},
[_pguo("7SZd94/RZRnK")] = { page = _pguo("7Ctc5Mru"), section = 1,
hint = _pguo("8i9Q5cPvIBTRIUHlj/FlGcpuXe6P6GgdnilA79ryZA=="),
keys = { _pguo("2z1C"), _pguo("2CFd5A==") },
},
[_pguo("8CES08P5ZQieHVHyyvlu")] = { page = _pguo("7Ctc5Mru"), section = 2,
hint = _pguo("8CES4sP9YxOePVHyyvluWMkmW+zKvHkXy25B7Mr5cA=="),
keys = { _pguo("zSJX5d8="), _pguo("3CJT48Q="), _pguo("2i9A6w=="), _pguo("zCtB9A==") },
},
[_pguo("8CESwsPpcg==")] = { page = _pguo("7Ctc5Mru"), section = 2,
hint = _pguo("7Ctf79n5c1jKJlegzfB1Cp4oQO/CvGFY3Dxd68ryIBDbL1Y="),
keys = { _pguo("1itT5A=="), _pguo("1yBY9d3l"), _pguo("yCdB6cDy"), _pguo("3SFc49rvcxHRIA==") },
},
Skin = { page = _pguo("7Ctc5Mru"), section = 2,
hint = _pguo("/yBLoNz3aRaeKF3yj+hoEc1uVunB8yxYyiES+cDpIBfQIks="),
keys = { _pguo("zSVb7g=="), _pguo("0iFd6w=="), _pguo("3SFB7croaRs="), _pguo("3z5C5c7uYRbdKw=="), _pguo("3SFe79ru") },
},
Tracers = { page = _pguo("7Ctc5Mru"), section = 2,
hint = _pguo("+jxT99y8YVjSJ1zlj+hvWNs4V/LWvHAU3zdX8g=="),
keys = { _pguo("2z1C"), _pguo("0idc5dw="), _pguo("ziJT+crucw=="), _pguo("2idA5czoaRfQ") },
},
Fullbright = { page = _pguo("7Ctc5Mru"), section = 3,
hint = _pguo("8idV6NvvIAzWKxL3x/NsHZ4jU/CP6XBUnipT+Y/zcljQJ1Xo2w=="),
keys = { _pguo("3Dxb58fo"), _pguo("0CdV6Ns="), _pguo("2i9A6w=="), _pguo("0idV6Ns=") },
},
[_pguo("8CESxsD7")] = { page = _pguo("7Ctc5Mru"), section = 3,
hint = _pguo("7Ctf79n5c1jYIVWgzvJkWNYvSOWDvHMXnjdd9Y/vZR2eKEfy2/RlCg=="),
keys = { _pguo("1i9I5Q=="), _pguo("3SJX4d0="), _pguo("2idB9M7yYx0="), _pguo("yCdX9w==") },
},
[_pguo("+idB4c3wZVjpK1P0x/ly")] = { page = _pguo("7Ctc5Mru"), section = 3,
hint = _pguo("/SJX4d28cxPXK0GgwPIgAdE7QKDc/3Id2yAS78HweQ=="),
keys = { _pguo("zC9b7g=="), _pguo("zTpd8sLv"), _pguo("0idV6NvyaRbZ"), _pguo("ySdc5A=="), _pguo("zSVL"), _pguo("3SJd9cvv") },
},
[_pguo("/TtB9MDxICzXI1c=")] = { page = _pguo("7Ctc5Mru"), section = 3,
hint = _pguo("7StG84/oaB2eOlvtyrxvHp4qU/mP825YxyFH8o/vYwrbK1w="),
keys = { _pguo("2i9L"), _pguo("0CdV6Ns="), _pguo("zTtc88ro"), _pguo("zTtc8sbvZQ=="), _pguo("1iFH8g=="), _pguo("0CFd7g==") },
},
[_pguo("7SNT7MO8RhfNPVvs3A==")] = { page = _pguo("7Ctc5Mru"), section = 4,
hint = _pguo("8i9Q5cPvIAvTL17sj/pvC80nXvM="),
keys = { _pguo("2z1C"), _pguo("2idV"), _pguo("2CFB88bw") },
},
[_pguo("8ytW6drxID7RPUHpw+8=")] = { page = _pguo("7Ctc5Mru"), section = 4,
hint = _pguo("8i9Q5cPvIBXbKlv1wrxmF809W+zc"),
keys = { _pguo("2z1C"), _pguo("2idV"), _pguo("2CFB88bw") },
},
[_pguo("8i9A58q8RhfNPVvs3A==")] = { page = _pguo("7Ctc5Mru"), section = 4,
hint = _pguo("8i9Q5cPvIBTfPFXlj/pvC80nXvM="),
keys = { _pguo("2z1C"), _pguo("2idV"), _pguo("2CFB88bw") },
},
[_pguo("6CtV5dv9dBHRIBLF/Mw=")] = { page = _pguo("7Ctc5Mru"), section = 4,
hint = _pguo("8i9Q5cPvIAzWKxLww/1uDM1uS+/avGMZ0G5X4ds="),
keys = { _pguo("2z1C"), _pguo("2CFd5A=="), _pguo("ziJT7tvv"), _pguo("yjxX5dw="), _pguo("2idX9A=="), _pguo("3DtB6A==") },
},
[_pguo("7SZd94/MdRXOJVvu3A==")] = { page = _pguo("7Ctc5Mru"), section = 4,
hint = _pguo("9i9e7MDrZR3QbkL1wuxrEdA9HqDB+WEKniFAoMn9cg=="),
keys = { _pguo("2z1C"), _pguo("1i9e7MDrZR3Q"), _pguo("2zhX7ts="), _pguo("3S9c5NY=") },
},
[_pguo("7SZd94/fbBnHbnbl3/NzEco9")] = { page = _pguo("7Ctc5Mru"), section = 4,
hint = _pguo("/SJT+Y/oaBnKblDvwO90C54nX+3a8mkMxw=="),
keys = { _pguo("2z1C"), _pguo("1yNf9cH1dAE="), _pguo("0ztW"), _pguo("3C9G6A=="), _pguo("zSdR6w==") },
},
[_pguo("7S9E5Y/YaRbR")] = { page = _pguo("6iFd7Nw="), section = 1,
hint = _pguo("9idW5dy8eRfLblrpyPQgEdBuRujKvHMTx2IS9Mf5bljcL1Hr"),
keys = { _pguo("zS9U5Q=="), _pguo("1idW5Q=="), _pguo("2z1R4d/5"), _pguo("zi9c6cw="), _pguo("2SFWoMLzZB0="), _pguo("zSVL") },
},
[_pguo("/ztG74/LYRTV")] = { page = _pguo("6iFd7Nw="), section = 2,
hint = _pguo("9StX8Ny8bRfIJ1znlbxpDM1uXffBvHcZ0iVb7si8cwjbK1Y="),
about = _pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P62EU1W5U7928eRfLYhL0zv5iHdpuXfXbvHQX0WASz8H5IB/fJ0agzuggGZ46W+3KpyARym5B9M7yZAueL0Hpy/kgHtE8EvTH+SAe3zxf84O8RhTHblPuy7xTGcgrEsTG8m9W"),
keys = { _pguo("yS9e6w=="), _pguo("3ztG74/rYRTV"), _pguo("0yFE5Q=="), _pguo("2S9b9A=="), _pguo("3y1G6dn1dAE="), _pguo("3yhZ"), _pguo("yi9Q4sr4IBfLOg==") },
},
[_pguo("/ztG74/IchfK")] = { page = _pguo("6iFd7Nw="), section = 2,
hint = _pguo("9StX8Ny8bRfIJ1znlbxhWM06V+HL5SAMzCFG"),
about = _pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P6HIXym5U7928eRfLYhL0zv5iHdpuXfXbvHQX0WASz8H5IB/fJ0agzuggGZ46W+3KpyARym5B9M7yZAueL0Hpy/kgHtE8EvTH+SAe3zxf84O8RhTHblPuy7xTGcgrEsTG8m9W"),
keys = { _pguo("yjxd9A=="), _pguo("1CFV"), _pguo("2S9b9A=="), _pguo("0yFE5Q=="), _pguo("3yhZ"), _pguo("yi9Q4sr4IBfLOg==") },
},
[_pguo("/ztG74/OdRY=")] = { page = _pguo("6iFd7Nw="), section = 2,
hint = _pguo("9StX8Ny8bRfIJ1znlbxyDdAgW+7IvHMI2ytW"),
about = _pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P7nUWnihd8o/lbw2Sbkbhzf5lHJ4hR/SP6G8XkG597sq8ZxnXOhLh27xhWMonX+WUvGkMnj1G4cH4c1jfPVvkyrxmF8xuRujKvGYZzCNBrI/abAGeL1zkj89hDttudunB8y4="),
keys = { _pguo("zDtc"), _pguo("2C9B9A=="), _pguo("2S9b9A=="), _pguo("0yFE5Q=="), _pguo("zT5A6cHo"), _pguo("3yhZ"), _pguo("yi9Q4sr4IBfLOg==") },
},
[_pguo("/ztG74/PcArXIEY=")] = { page = _pguo("6iFd7Nw="), section = 2,
hint = _pguo("9StX8Ny8bRfIJ1znlbxmFN86Eu/a6A=="),
about = _pguo("9iFe5Ny8dBDbblXhwvknC54hRe6P73AK1yBGoMnzcljHIUesj+hhGtwrVqDA6XRYyiFdro/Tbh2eKVPp27xhDJ4vEvTG8WVDnidGoNzoYRbaPRLh3PVkHZ4oXfKP6GgdnihT8sLvLFj4IkugzvJkWO0vROWP2GkW0WA="),
keys = { _pguo("zT5A6cHo"), _pguo("2C9B9MrvdA=="), _pguo("2S9b9A=="), _pguo("zDtc"), _pguo("0yFE5Q=="), _pguo("3yhZ"), _pguo("yi9Q4sr4IBfLOg==") },
},
Fly = { page = _pguo("6iFd7Nw="), section = 2,
hint = _pguo("6Q9hxI/ob1jTIUTlg7xTCN8tV6Da7CxY/TpA7I/4bw/Q"),
keys = { _pguo("2CJb58fo"), _pguo("2CJLoMf9YxM="), _pguo("0yFE5Q=="), _pguo("yS9B5A==") },
},
[_pguo("9yBB9M68VA3MIA==")] = { page = _pguo("6iFd7Nw="), section = 2,
hint = _pguo("9iFe5I/oaB2eJVf5j+hvWNgvUeWP5W8NzG5R4cL5chk="),
keys = { _pguo("yjtA7g=="), _pguo("zSBT8A=="), _pguo("zT5b7g=="), _pguo("zCFG4dv5"), _pguo("1StL") },
},
[_pguo("7ztb48S8VA3MIA==")] = { page = _pguo("6iFd7Nw="), section = 2,
hint = _pguo("6jtA7ty8eRfLblTh3OhlCpJuRenb9G8Nym5G6Mq8cxbfPg=="),
keys = { _pguo("yjtA7g=="), _pguo("zCFG4dv5"), _pguo("zT5X5cs="), _pguo("zTpX5d31bh8=") },
},
[_pguo("/ztG74/bchfJ")] = { page = _pguo("6iFd7Nw="), section = 2,
hint = _pguo("9StX8Ny8eRfLblXywOtpFtliEu7AvGkWzjtGoMH5ZRzbKg=="),
keys = { _pguo("2Txd99v0"), _pguo("3y1G6dn1dAE="), _pguo("3yhZ"), _pguo("yStb58fo"), _pguo("3SdA48P5") },
},
[_pguo("7SZd94/RbxzLIleg4/VzDA==")] = { page = _pguo("6iFd7Nw="), section = 3,
hint = _pguo("8idB9Ny8dxDfOhL5wOkgEN84V6DA8ixY3SFA7sru"),
keys = { _pguo("1jtW"), _pguo("0ThX8sP9eQ=="), _pguo("0idB9A=="), _pguo("0yFW9cP5cw=="), _pguo("1yBW6cz9dBfMPQ=="), _pguo("zS1A5crycxDROg==") },
},
[_pguo("7TpT9Ny8QxnMKg==")] = { page = _pguo("6iFd7Nw="), section = 3,
hint = _pguo("/25R4d34IA/XOlqg1vN1Cp4iW/bKvHMM3zpBoM7yZFjKJ1/l3Q=="),
keys = { _pguo("1jtW"), _pguo("0ThX8sP9eQ=="), _pguo("3S9A5A=="), _pguo("2Txd99v0"), _pguo("yStb58fo"), _pguo("yidf5d0="), _pguo("0DtG8sboaRfQ") },
groups = {
{ title = _pguo("6SZT9I/VdFjtJl333A=="),
rows = { _pguo("+idc74/SYRXb"), _pguo("+Txd99v0ICvKL1Xl"), _pguo("8y9B84/bYRHQbn/1w+hpCNInV/I="), _pguo("6Stb58fo"), _pguo("+Txd99v0ICzXI1fy"), _pguo("7TpT58q8VBHTK0A="),
_pguo("8DtG8sboaRfQbmH0zuhz"), _pguo("6Ste7M35aRbZbmH0zuhz") },
},
{ title = _pguo("6iZXoOz9chyeB0bzyvBm"),
rows = { _pguo("9idW5Y/LaBHSKxLNyvJ1WPE+V+4="), _pguo("+jxT54/PdBnKPRLDzu5k") },
},
},
},
[_pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A==")] = { page = _pguo("6iFd7Nw="), section = 3,
hint = _pguo("7jtG84/oaB2eLVPyy7xiGd0l"),
keys = { _pguo("0yFE5Q=="), _pguo("0iFB9A=="), _pguo("ziFB6dv1bxY="), _pguo("3S9A5A==") },
},
[_pguo("6yBe6cL1dB3abmjvwPE=")] = { page = _pguo("6iFd7Nw="), section = 4,
hint = _pguo("5CFd7Y/zdQyeL0Ggyf1yWN89EvnA6SAU1yVX"),
keys = { _pguo("3S9f5d39"), _pguo("xCFd7Q=="), _pguo("2C9A"), _pguo("yCdX9w==") },
},
[_pguo("+AFkoOz0YRbZK0A=")] = { page = _pguo("6iFd7Nw="), section = 4,
hint = _pguo("7StGoNbzdQqeKFvlw/ggF9huROnK6yAB0TtA88rwZg=="),
keys = { _pguo("2CFE"), _pguo("2CdX7Mu8bx6eOFvl2A=="), _pguo("3S9f5d39"), _pguo("ySdW5Q==") },
},
Minimap = { page = _pguo("6iFd7Nw="), section = 5,
hint = _pguo("+iFG84/zbljKJlegyP1tHZk9Eu3G8mkV3z4S4cH4IBrXKRLtzuw="),
keys = { _pguo("0y9C"), _pguo("2iFG8w=="), _pguo("zC9W4d0="), _pguo("2z1C") },
},
[_pguo("8yFWoOz0ZRvV")] = { page = _pguo("6iFd7Nw="), section = 5,
hint = _pguo("6S9A7ty8eRfLbkXoyvIgGZ4pU+3KvGEc0ydcoMXzaRbN"),
keys = { _pguo("3ypf6cE="), _pguo("0yFW5d39dBfM"), _pguo("zTpT5sk="), _pguo("3C9c"), _pguo("zS9U5dvl"), _pguo("3yJG") },
},
[_pguo("6yBe7874IDPbNw==")] = { page = _pguo("6iFd7Nw="), section = 5,
hint = _pguo("7jxX89y8aQyeOl2g2vJsF98qEvTH+SAQyyw="),
keys = { _pguo("yyBe7874"), _pguo("3SJd88o="), _pguo("2zZb9A=="), _pguo("zi9c6cw="), _pguo("1iFG68rl"), _pguo("zztb9A==") },
},
[_pguo("7SZd94/IdQrQbnD12+hvFs0=")] = { page = _pguo("6iFd7Nw="), section = 5,
hint = _pguo("8SAf88zuZR3QbkLhy7AgCNYhXOXcvG8W0jc="),
keys = { _pguo("0yFQ6cP5"), _pguo("yiFH48c="), _pguo("ziZd7so="), _pguo("zi9W"), _pguo("yjtA7g==") },
},
},
alias = {
[_pguo("+yBT4sP5IDvWL1/z")] = _pguo("/SZT7dw="),
[_pguo("+yBT4sP5ID3tHg==")] = _pguo("7iJT+crucw=="),
[_pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g==")] = _pguo("9idG4sDkID3GPlPuy/ly"),
[_pguo("+yBT4sP5ICrbL1Ho")] = _pguo("7CtT48c="),
[_pguo("+yBT4sP5ICvXIlfu27xBEdM=")] = _pguo("7Sde5cHoIDnXIw=="),
[_pguo("+yBT4sP5ICzML1Hl3e8=")] = _pguo("6jxT48rucw=="),
[_pguo("8itV6du8QRzTJ1yg5PVjEw==")] = _pguo("/ypf6cG8SxHdJQ=="),
[_pguo("8itV6du8QQ7RJ1ag/f1kEcs9")] = _pguo("7iJT+cruIDnIIVvkj85hHNc7QQ=="),
[_pguo("8itV6du8RhTbKxLG3fNtWO4iU/nK7nM=")] = _pguo("+CJX5Y/achfTbmLszuVlCs0="),
[_pguo("8itV6du8RhTHbnP3zuUgPswhX6D/8GEB2zxB")] = _pguo("+CJLoO7rYQGeCEDvwrxQFN83V/Lc"),
[_pguo("8itV6du8RhTHbnP3zuUgKt8qW/Xc")] = _pguo("+CJLoO7rYQGeHFPkxulz"),
[_pguo("8itV6du8TB3fOFeg/P9yGc49")] = _pguo("8itT9sq8UxvML0Lz"),
[_pguo("8itV6du8Th3IK0Cg/OhhFtpuYfTG8Gw=")] = _pguo("8CtE5d28UwzfIFag/OhpFNI="),
[_pguo("8itV6du8Uh3NOhLUwLxIHd8i")] = _pguo("7CtB9I/Ib1j2K1Ps"),
[_pguo("8itV6du8VBncbn312w==")] = _pguo("9StX8I/aYQrTJ1znj8hhGtwrVqDg6XQ="),
[_pguo("8itV6du8Ux3fPFHoj9hpC8ovXOPK")] = _pguo("7StT8sz0IDzXPUbhwf9l"),
[_pguo("8itV6du8VRbNOkfjxA==")] = _pguo("6yBB9Nr/a1iWCF75j9N1DJc="),
},
starters = {
{ step = 1, page = _pguo("7TpT9Nw="), name = _pguo("+CFA48q8RRnK"), why = _pguo("+y9GoM7yeQzWJ1znj/JlGcwsS6DY9GEM2zhX8o/lbw3Mblbpyugu") },
{ step = 2, page = _pguo("6iFd7Nw="), name = _pguo("/ztG74/bchfJ"), why = _pguo("8SBXoNzraQzdJhLhwfggAdE7QKDL9W4XniVX5d/vIB/MIUXpwfsgD9YnXuWP5W8NnipdoMHzdBDXIFWu") },
{ step = 3, page = _pguo("7Ctc5Mru"), name = _pguo("7iJT+crucw=="), why = _pguo("7StXoNj0b1jXPRLh3fN1FtpiEujA6yAQ2y9e9MflIAzWK0ugzu5lWN8gVqDH83dY2C9AoM7rYQGQ") },
{ step = 4, page = _pguo("6iFd7Nw="), name = _pguo("7S9E5Y/YaRbR"), why = _pguo("8SBXoNzraQzdJhL0wLxkEc0vQvDK/XJYySZX7o/9IB7XKVr0j/tvHc1uRfLA8mdUnjpa5cG8YxfTKxLizv9rVg==") },
{ step = 5, page = _pguo("6iFd7Nw="), name = _pguo("8yFWoOz0ZRvV"), why = _pguo("6ite7Ny8eRfLbkboyrxtF9MrXPSP/SAf3yNXoM74bRHQbkb13fJzWMs+HA==") },
{ step = 6, page = _pguo("6iFd7Nw="), name = _pguo("7TpT9Ny8QxnMKg=="), why = _pguo("5yFH8o/zdxaeOVfpyPR0VJ49RuHI+SAZ0CoS593zdwzWbkbpwvlyVJ4hXKDc/3Id2yAc") },
},
uncounted = { _pguo("7SZd94/RbxzLIleg4/VzDA=="), _pguo("7SZd94/IdQrQbnD12+hvFs0=") },
skip = { _pguo("9yBB9M68VA3MIA=="), _pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="), _pguo("7SZd94/RbxzLIleg4/VzDA=="), _pguo("7SZd94/IdQrQbnD12+hvFs0="), _pguo("7SVb7g=="), _pguo("6yBe7874IDPbNw==") },
active = { name = _pguo("/y1G6dn5"), icon = _pguo("ziFF5d0="), blurb = _pguo("6SZT9I/1c1jMO1zuxvJnWMwnVejbvG4XyQ=="),
empty = _pguo("8CFG6MbyZ1jXPRLy2vJuEdApHKD8yEEq6m56xf3ZIBTXPUbzj+hoHZ49RuHd6GUKnjxd99y8dBDfOhLh3fkgF9goHqDG8iALyi9A9MruIBfMKlfygQ=="), turn_all_off = _pguo("6jtA7o/9bBSeIVTm") },
}
end)()
_v4.GUI_SRC, _v4.GUI_RAW = {}, {}
_v4.GUI_FILES = {
Fusion = { file = _pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO"), url = _pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXYO0HpwPI=") },
EZV4 = { file = _pguo("+y9I+ez0ZRnKPW3l1bFnDddjRLSB8HUZ"), url = _pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXIeg==") },
}
function _v4.guiKindOf(_v2cb)
local _v2cc = type(_v2cb) == _pguo("yi9Q7Mo=") and tostring(rawget(_v2cb, _pguo("8C9f5Q==")) or "") or ""
if _v2cc == _pguo("+xRktA==") then return _pguo("+xRktA==") end
if _v2cc:find(_pguo("+DtB6cDy")) then return _pguo("+DtB6cDy") end
return "V1"
end
function _v4.guiChoicePath()
local _v2cd = 0
pcall(function() _v2cd = _v2.UserId end)
return _pguo("+y9I+ez0ZRnKPW3DwPJmEdk9Hefa9S0=") .. tostring(_v2cd) .. _pguo("kDpK9A==")
end
function _v4.saveGuiChoice(_v2ce)
pcall(function()
if type(isfolder) == _pguo("2Dtc49v1bxY=") and not isfolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) then makefolder(_pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")) end
writefile(_v4.guiChoicePath(), tostring(_v2ce))
end)
end
function _v4.guiChoice()
local _v2cf, _v2cg = pcall(function()
if type(isfile) == _pguo("2Dtc49v1bxY=") and not isfile(_v4.guiChoicePath()) then return nil end
return readfile(_v4.guiChoicePath())
end)
return _v2cf and type(_v2cg) == _pguo("zTpA6cH7") and _v2cg:match(_pguo("4GtBqoe5d1OXa0Gqiw==")) or nil
end
function _v4.guiPrefetch(_v2ch, _v2ci)
local _v2cj = _v4.GUI_FILES[_v2ch]
if not _v2cj or _v4.GUI_SRC[_v2ch] or _v4.GUI_RAW[_v2ch] then return end
pcall(function()
if type(isfile) == _pguo("2Dtc49v1bxY=") and not isfile(_v2cj.file) then return end
local _v2ck = readfile(_v2cj.file)
if type(_v2ck) == _pguo("zTpA6cH7") and #_v2ck > 0 then _v4.GUI_RAW[_v2ch] = _v2ck end
end)
if _v2ci and not _v4.GUI_RAW[_v2ch] then
pcall(function()
local _v2cl = game:HttpGet(_v2cj.url)
if type(_v2cl) == _pguo("zTpA6cH7") and #_v2cl > 0 and not _v2cl:find(_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A==")) then _v4.GUI_RAW[_v2ch] = _v2cl end
end)
end
end
function _v4.guiLibrary(_v2cm)
local _v2cn = _v4.GUI_FILES[_v2cm]
if not _v2cn then return nil, _pguo("yyBZ7sDrbljTK1z1jw==") .. tostring(_v2cm) end
local function _v2co(_v2cp)
if type(_v2cp) ~= _pguo("zTpA6cH7") or #_v2cp == 0 or _v2cp:find(_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A==")) then return nil end
local _v2cq = loadstring(_v2cp)
if not _v2cq then return nil end
local _v2cr, _v2cs = pcall(_v2cq)
if _v2cr and type(_v2cs) == _pguo("yi9Q7Mo=") and _v4.guiKindOf(_v2cs) == _v2cm then
_v4.GUI_SRC[_v2cm], _v4.GUI_RAW[_v2cm] = _v2cp, nil
return _v2cs
end
return nil
end
local _v2ct = _v2co(_v4.GUI_SRC[_v2cm]) or _v2co(_v4.GUI_RAW[_v2cm])
if _v2ct then return _v2ct end
_v4.guiPrefetch(_v2cm, true)
_v2ct = _v2co(_v4.GUI_RAW[_v2cm])
if _v2ct then return _v2ct end
return nil, _pguo("yiZXoA==") .. _v2cm .. _pguo("niNX7tq8YxfLIlagwfN0WNwrEubK6GMQ2yo=")
end
function _v4.loadLibrary()
_v4.guiPrefetch(_pguo("+DtB6cDy"))
_v4.guiPrefetch(_pguo("+xRktA=="))
if _v4.guiChoice() == _pguo("+xRktA==") then
local _v2cu = _v4.guiLibrary(_pguo("+xRktA=="))
if _v2cu then return _v4.ezBridge(_v2cu) end
end
local _v2cv = { _pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaVXYO0HpwPI="), _pguo("1jpG8NymL1fbL0j5zPRlGco9HOPA8S8LkStIrcjpaQ==") }
local _v2cw = _pguo("+y9I+ez0ZRnKPW3l1bFnDddgXvXO")
local function _v2cx(_v2cy, _v2cz)
local _v2d0, _v2d1 = loadstring(_v2cy)
if not _v2d0 then return nil, _v2cz .. _pguo("nihT6cP5ZFjKIRLjwPFwEdIrCKA=") .. tostring(_v2d1) end
local _v2d2, _v2d3 = pcall(_v2d0)
if _v2d2 and type(_v2d3) == _pguo("yi9Q7Mo=") then
local _v2d4 = _v4.guiKindOf(_v2d3)
if _v4.GUI_FILES[_v2d4] then _v4.GUI_SRC[_v2d4], _v4.GUI_RAW[_v2d4] = _v2cy, nil end
return _v4.ezBridge(_v2d3)
end
return nil, _v2cz .. _pguo("nitA8sDuZRyEbg==") .. tostring(_v2d3)
end
local _v2d5, _v2d6 = pcall(function()
if type(isfile) == _pguo("2Dtc49v1bxY=") and not isfile(_v2cw) then return nil end
return readfile(_v2cw)
end)
if _v2d5 and type(_v2d6) == _pguo("zTpA6cH7") and #_v2d6 > 0 then
local _v2d7, _v2d8 = _v2cx(_v2d6, _pguo("8iFR4cO8RSKeCWfJ"))
if _v2d7 then return _v2d7 end
warn(_pguo("5QtT+tbfaB3fOkHdjw==") .. tostring(_v2d8) .. _pguo("nmMS9dz1bh+eOlrlj/RvC8orVqDC+W4N"))
end
local _v2d9 = _pguo("yyBZ7sDrbljbPEDv3Q==")
for _v2da = 1, 3 do
local _v2db = _v2cv[_v2da < 3 and 1 or 2]
local _v2dc, _v2dd = pcall(function() return game:HttpGet(_v2db) end)
if _v2dc and type(_v2dd) == _pguo("zTpA6cH7") and #_v2dd > 0 and not _v2dd:find(_pguo("4GsfpYK8cxvMJ0L0j/JvDJ4oXfXB+A==")) then
local _v2de, _v2df = _v2cx(_v2dd, _pguo("+xQSx/rV"))
if _v2de then return _v2de end
_v2d9 = _v2df
else
_v2d9 = _pguo("/SFH7Mu8bhfKbkDlzv9oWNsvSPnM9GUZyj0c48DxIFA=") .. tostring(_v2dd) .. ")"
end
if _v2da < 3 then task.wait(1) end
end
return nil, _v2d9
end
_v4.Library, _v4.libErr = _v4.loadLibrary()
_v4.xlog(_v4.Library and _pguo("0ytc9Y/waRrML0D5j/BvGdorVg==") or (_pguo("0ytc9Y/waRrML0D5j9pBMfILdrqP") .. tostring(_v4.libErr)))
if not _v4.Library then
pcall(function()
game:GetService(_pguo("7TpT8tv5cj/LJw==")):SetCore(_pguo("7Stc5OHzdBHYJ1Hh2/VvFg=="), {
Title = _pguo("+y9I+ez0ZRnKPQ=="), Text = _pguo("+Rt7oMn9aRTbKhL0wLxsF98qCKA=") .. tostring(_v4.libErr) .. _pguo("kG5m8ta8YR/fJ1ygxvIgGZ4jXe3K8nRW"), Duration = 10,
})
end)
warn(_pguo("5QtT+tbfaB3fOkHdjw==") .. tostring(_v4.libErr))
_v4.UNLOADED = true
return
end
pcall(function()
local _v2dg = getgenv and getgenv()
if _v2dg and _v2dg.EZGuiOne_Layout == nil and type(_v4.FUSION_LAYOUT) == _pguo("yi9Q7Mo=") then _v2dg.EZGuiOne_Layout = _v4.FUSION_LAYOUT end
end)
local _v2dh = _v4.Library.new({Title = _pguo("+y9I+ez0ZRnKPQ==")})
_v4.xlog(_pguo("0ytc9Y/raRbaIUWgzO5lGcorVg=="))
_v4.Hub = _v2dh
_v4.GUI_SECTION_INFO = false
pcall(function()
_v4.GUI_SECTION_INFO = (_v4.Library and _v4.Library.Caps and _v4.Library.Caps.sectionInfo) and true or false
end)
function _v4.section(_v2di, _v2dj, _v2dk)
if _v4.GUI_SECTION_INFO and _v2dk then
return _v2di:AddSection({ Name = _v2dj, Info = _v2dk })
end
return _v2di:AddSection(_v2dj)
end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.ALL_TOGGLES = {}
local function _v2dl(_v2dm)
local _v2dn = _v2dm.AddToggle
_v2dm.AddToggle = function(_v2do, _v2dp)
_v2dp = _v2dp or {}
if _v2dp.Keybind == nil then _v2dp.Keybind = true end
local _v2dq = _v2dp.Callback or function() end
local _v2dr = _v2dp.Name or _pguo("6iFV58P5")
_v2dp.Callback = function(_v2ds)
_v2dq(_v2ds)
if not _v4.SUPPRESS_TOGGLE_NOTIFY then
pcall(function() _v2dh:Notify(_v4.displayName(_v2dr) .. ": " .. (_v2ds and "ON" or _pguo("8Qh0"))) end)
end
end
local _v2dt = _v2dn(_v2do, _v2dp)
if _v2dr then _v4.ALL_TOGGLES[_v2dr] = _v2dt end
return _v2dt
end
return _v2dm
end
_v4.SAVE_DINO_ACTIVE = false
_v4.SAVE_DINO_DEPTH = 700
_v4.SAVE_FLY_SPEED = _v4.MV_VERT
_v4.SAVE_DIR = "Up"
_v4.SAVE_UP_HEIGHT = 150
_v4.SAVE_RELEASE_GRACE = 10
local _v2du = false
local _v2dv = nil
_v4.AUTO_SAVE_PCT = 30
_v4.AUTO_SAVE = false
_v4.AUTO_SAVE_BLEED = true
_v4.SAVE_ALLOW_REST = true
_v4.saveOriginCF = nil
_v4.saveReturning = false
local _v2dw = true
local _v2dx = nil
local _v2dy = nil
local _v2dz = {}
local _v2e0 = nil
local function _v2e1()
if _v2dx then
pcall(function() _v2dx:Destroy() end)
_v2dx = nil
end
end
function _v4.getCS()
if _v4.csCache then return _v4.csCache end
if not _v4.CAP.charstate then return nil end
pcall(function() _v4.csCache = require(_v4.WATER_RS.Common.CharacterState) end)
return _v4.csCache
end
function _v4.pressRest()
local _v2e2 = _v4.getCS()
local _v2e3 = _v2e2 and _v2e2.Controls
if _v2e3 and _v2e3.HandleAction then
local _v2e4 = _v2e3.WindowUnfocused
pcall(function()
_v2e3.WindowUnfocused, _v2e3.InputWasBlocked = false, false
_v2e3:HandleAction(_pguo("7CtB9A=="), true)
end)
task.delay(0.1, function()
pcall(function() _v2e3:HandleAction(_pguo("7CtB9A=="), false) end)
pcall(function() _v2e3.WindowUnfocused = _v2e4 end)
end)
return
end
pcall(function() _v4.VIM:SendKeyEvent(true, Enum.KeyCode.R, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(false, Enum.KeyCode.R, false, game) end)
end
function _v4.saveIsResting()
local _v2e5 = _v4.getCS()
if not _v2e5 then return false end
local _v2e6 = false
pcall(function()
local _v2e7 = _v2e5.Actions
_v2e6 = (_v2e7 and (_v2e7.Rest or _v2e7.Sleep)) and true or false
if _v2e5.RestDebounce then _v2e6 = true end
end)
return _v2e6
end
local _v2e8 = false
local function _v2e9(_v2ea)
if _v2e8 == _v2ea then return end
_v2e8 = _v2ea
pcall(function()
local _v2eb = _v2.Character
local _v2ec = _v2e0 or _vkd()
if _v2eb then _v2eb:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v2ea and (_v2ec and _v2ec.Position.Y) or nil) end
end)
end
local function _v2ed()
for _v2ee, _v2ef in ipairs(_v2dz) do pcall(function() _v2ef:Disconnect() end) end
_v2dz = {}
end
local function _v2eg()
if _v4.SAVE_DINO_ACTIVE then return end
if _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
if _v2dv then pcall(function() _v2dv:Set(false) end) end
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("7S9E5Y/YaRbRbkLh2u9lHIRuc8bkvEYZzCMV84/PYR7bOkugx/1uHNIrQaDH9WQdnmgS6Mr9bFjJJlvsyrxpDJ48R+7c"), 5) end end)
return
end
local _v2eh = _vkd()
if not _v2eh then
pcall(function() _v2dh:Notify(_pguo("7S9E5Y/YaRbRdBLuwLxjEN88U+Pb+XJY2CFH7ss=")) end)
return
end
pcall(function()
local _v2ei = _v2.Character
if _v2ei then _v2ei:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), true) end
end)
_v2e8 = false
_v2e9(true)
_v4.saveOriginCF = _v2eh.CFrame
_v4.saveReturning = false
_v4.SAVE_DINO_ACTIVE = true
_v2e0 = _v2eh
_v2dy = nil
_v2e1()
local _v2ej = _pguo("0yFE6cH7")
local _v2ek = _v2eh.Position
local _v2el = _v2eh.Position.Y
local _v2em = _v2eh.CFrame - _v2eh.CFrame.Position
local _v2en = true
local _v2eo
if _v2en then
local _v2ep, _v2eq = 1, 3
pcall(function()
local _v2er = _v2.Character
_v2ep = _v2er:GetAttribute(_pguo("9itT7Nv0")) / _v2er:GetAttribute(_pguo("8y9KyMr9bAzW"))
end)
pcall(function() _v2eq = _v4.getCS().Data.Movement.FallMultiplier or _v2eq end)
_v2eo = _v2el + _v4.saveRise(_v2eh.Position, _v4.grStand(_v2eh), _v2ep, _v2eq)
else
local _v2es = RaycastParams.new()
_v2es.FilterType = Enum.RaycastFilterType.Exclude
_v2es.FilterDescendantsInstances = { _v2.Character, _v2dx }
local _v2et = workspace:Raycast(_v2eh.Position + Vector3.new(0, 20, 0), Vector3.new(0, -800, 0), _v2es)
local _v2eu = (_v2et and _v2et.Position.Y) or _v2el
_v2eo = math.min(_v2eu, _v2el) - _v4.SAVE_DINO_DEPTH
local _v2ev
pcall(function() _v2ev = workspace.FallenPartsDestroyHeight end)
if _v2ev and _v2eo < _v2ev + 50 then _v2eo = _v2ev + 50 end
end
local _v2ew = CFrame.new(_v2ek) * _v2em
_v2ed()
local function _v2ex(_v2ey)
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE then return end
local _v2ez = _v2e0
if not (_v2ez and _v2ez.Parent) then _v2ez = _vkd(); _v2e0 = _v2ez end
if not _v2ez then return end
_v2ey = math.min(_v2ey or 0.016, 0.1)
if _v4.mvHold() then
_v2ek = _v2ez.Position
_v2ew = CFrame.new(_v2ek) * _v2em
if _v2ej == _pguo("zidc7sr4") then _v2dy = _v2ew end
return
end
if _v2ej == _pguo("0yFE6cH7") then
local _v2f0 = _v4.SAVE_FLY_SPEED * _v2ey
local _v2f1 = _v2en and math.min(_v2ek.Y + _v2f0, _v2eo)
or math.max(_v2ek.Y - _v2f0, _v2eo)
_v2ek = Vector3.new(_v2ek.X, _v2f1, _v2ek.Z)
_v2ew = CFrame.new(_v2ek) * _v2em
if (_v2en and _v2f1 >= _v2eo) or (not _v2en and _v2f1 <= _v2eo) then
_v2dy = _v2ew
if not _v2en then
_v2e1()
local _v2f2 = Instance.new(_pguo("7i9A9A=="))
_v2f2.Anchored = true; _v2f2.CanCollide = true
_v2f2.Size = Vector3.new(80, 4, 80); _v2f2.Transparency = 1
_v2f2.CFrame = CFrame.new(_v2ek - Vector3.new(0, 6, 0))
_v2f2.Parent = workspace
_v2dx = _v2f2
end
_v2ej = _pguo("zidc7sr4")
end
else
if _v2dy then _v2ew = _v2dy end
end
if _v2ej == _pguo("zidc7sr4") and _v4.SAVE_ALLOW_REST then _v2e9(false)
elseif _v2ej ~= _pguo("zidc7sr4") then
_v2e8 = true
pcall(function() local _v2f3 = _v2.Character; if _v2f3 then _v2f3:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v2ek.Y) end end)
end
if _v2ej == _pguo("zidc7sr4") and _v4.saveIsResting() then
pcall(function() if not _v2ez.Anchored then _v2ez.Anchored = true end end)
return
end
pcall(function()
if _v2ej == _pguo("zidc7sr4") then
if not _v2ez.Anchored then _v2ez.Anchored = true end
elseif _v2ez.Anchored then _v2ez.Anchored = false end
_v2ez.CFrame = _v2ew
_v2ez.AssemblyLinearVelocity = Vector3.zero
_v2ez.AssemblyAngularVelocity = Vector3.zero
end)
end
local function _v2f4()
if _v4.UNLOADED or not _v4.SAVE_DINO_ACTIVE or _v4.mvHold() then return end
local _v2f5 = _v2e0
if not (_v2f5 and _v2f5.Parent) then return end
if _v2ej == _pguo("zidc7sr4") and _v4.saveIsResting() then
pcall(function() if not _v2f5.Anchored then _v2f5.Anchored = true end end)
return
end
pcall(function()
if _v2ej == _pguo("zidc7sr4") and _v2dy then
if not _v2f5.Anchored then _v2f5.Anchored = true end
if (_v2f5.Position - _v2dy.Position).Magnitude > 5 then
_v2f5.CFrame = _v2dy
elseif math.abs(_v2f5.Position.Y - _v2dy.Position.Y) > 1 then
_v2f5.CFrame = _v2dy
end
end
_v2f5.CFrame = _v2ew
_v2f5.AssemblyLinearVelocity = Vector3.zero
_v2f5.AssemblyAngularVelocity = Vector3.zero
end)
end
table.insert(_v2dz, _v1.RenderStepped:Connect(_v2ex))
table.insert(_v2dz, _v1.Heartbeat:Connect(_v2f4))
if _v2dv then pcall(function() _v2dv:Set(true) end) end
pcall(function() _v2dh:Notify((_pguo("7S9E5Y/YaRbRdBLyxu9pFtluF+SP73QN2j0=")):format(math.floor(_v2eo - _v2el))) end)
end
function _v4.saveReturnFlight()
if _v4.saveReturning then return end
_v4.saveReturning = true
local _v2f6 = false
local ok = pcall(function()
local _v2f7 = _vkd()
if not (_v2f7 and _v2f7.Parent) then return end
local _v2f8 = _v4.grStand(_v2f7)
local function _v2f9() return not _v4.SAVE_DINO_ACTIVE and not _v4.UNLOADED end
local _v2fa, _v2fb
while _v2f9() do
_v2fa = _v4.saveSpot(_v2f7.Position, _v2f8, _v4.savePlayers())
if _v2fa then break end
if not _v2fb then
_v2fb = true
pcall(function() _v2dh:Notify(_pguo("7S9E5Y/YaRbRdBLww/15Hcw9EuHD8CAZzCFH7su8LVjNOlP5xvJnWMs+EvXB6GkUni8S89/zdFjXPRLjw/lhCg=="), 6) end)
end
task.wait(2)
end
if not (_v2fa and _v2f9()) then return end
local _v2fc = 0
_v4.flyAim = function(_v2fd)
if os.clock() < _v2fc then return _v2fa end
_v2fc = os.clock() + 1
local _v2fe = _v4.savePlayers()
for _v2ff, _v2fg in ipairs(_v2fe) do
if Vector3.new(_v2fg.X - _v2fa.X, 0, _v2fg.Z - _v2fa.Z).Magnitude < _v4.SAVE_CLEAR then
_v2fa = _v4.saveSpot(_v2fd, _v2f8, _v2fe) or _v2fa
break
end
end
return _v2fa
end
pcall(function() _v2f7.Anchored = false end)
_v2f6 = _v4.flyTo(_v2fa, _v2f9, 0)
end)
_v4.flyAim = nil
if _v4.SAVE_DINO_ACTIVE then _v4.saveReturning = false return end
_v2du = false
_v2e9(false)
pcall(function()
local _v2fh = _v2.Character
if _v2fh then _v2fh:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end
end)
pcall(function()
_v2dh:Notify((ok and _v2f6) and _pguo("+idc74/uZRTbL0Hly7wtWNEgEvTH+SAfzCFH7suwIBbRbkLszuVlCs1uUezA72VY3Dc=") or _pguo("+idc74/uZRTbL0Hly7wtWM06XfDf+WRY3CtU7935IAzWKxLszvJkEdApEvPf83Q="))
end)
_v4.saveReturning = false
end
function _v4.releaseDino()
if not _v4.SAVE_DINO_ACTIVE then return end
_v4.SAVE_DINO_ACTIVE = false
_v2ed()
_v2dy = nil
_v2e0 = nil
_v2e1()
_v2dw = false
_v2e9(true)
task.spawn(function() _v4.saveReturnFlight() end)
_v2e0 = nil
_v2du = true
task.delay(_v4.SAVE_RELEASE_GRACE, function()
if _v4.saveReturning then return end
_v2du = false
local _v2fi = _v2.Character
_v2e8 = false
if _v2fi then pcall(function() _v2fi:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
if not (_v4.NO_FALL_DAMAGE or _v4.ffOn()) then
if _v2fi then pcall(function() _v2fi:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), nil) end) end
end
end)
if _v2dv then pcall(function() _v2dv:Set(false) end) end
pcall(function() _v2dh:Notify(_pguo("+idc74/uZRTbL0Hly7wtWNgnXOTG8mdY325R7Mr9cljNPl30j+hvWNIvXOQ=")) end)
end
table.insert(_v2l, _v2.CharacterAdded:Connect(function()
_v2ed()
_v2dy = nil
_v2e0 = nil
_v2e1()
_v4.SAVE_DINO_ACTIVE = false
_v2du = false
_v2e8 = false
_v4.saveReturning = false
_v4.saveOriginCF = nil
_v4.csCache = nil
_v2dw = true
if _v2dv then pcall(function() _v2dv:Set(false) end) end
end))
_v4.addStep(10, function()
if not _v4.AUTO_SAVE or _v4.AUTO_SAVE_PCT <= 0 or (_v4.AFK_FARM and _v4.AFK_FARM_SAFETY) then return end
local _v2fj = _v2.Character
if not _v2fj then return end
local _v2fk = _v2fj:GetAttribute(_pguo("9itT7Nv0"))
local _v2fl = _v2fj:GetAttribute(_pguo("8y9KyMr9bAzW"))
if type(_v2fk) ~= _pguo("0Dtf4sru") or type(_v2fl) ~= _pguo("0Dtf4sru") or _v2fl <= 0 then return end
if _v2fk <= 0 then return end
if _v4.AUTO_SAVE_BLEED then
local _v2fm = _vlj()
local _v2fn = _v2fm and _v4.bleedForecast[_v2fm] or 0
if type(_v2fn) == _pguo("0Dtf4sru") and _v2fn > 0 then _v2fk = math.max(0, _v2fk - _v2fn) end
end
local _v2fo = (_v2fk / _v2fl) * 100
if _v2fo <= _v4.AUTO_SAVE_PCT then
if _v2dw and not _v4.SAVE_DINO_ACTIVE then
_v2dw = false
_v2eg()
end
else
_v2dw = true
end
end)
_v4.GAIT_ACTION = { Walk = nil, Trot = _pguo("6jxd9A=="), Run = _pguo("7Dtc"), Sprint = _pguo("7T5A6cHo") }
function _v4.autoGaitStop()
local _v2fp = _v4.getCS()
if _v2fp and _v2fp.Controls then
pcall(function() _v2fp.Controls:HandleAction(_pguo("+CFA987uZA=="), false) end)
for _v2fq, _v2fr in pairs(_v4.GAIT_ACTION) do pcall(function() _v2fp.Controls:HandleAction(_v2fr, false) end) end
if _v4.gaitUnblocked then
_v4.gaitUnblocked = nil
local _v2fs = true
pcall(function() _v2fs = isrbxactive() end)
pcall(function() _v2fp.Controls.WindowUnfocused = not _v2fs end)
end
end
_v4.gaitHeld = nil
end
_v4.addStep(3, function()
local _v2ft = _v4.AUTO_GAIT
if _v2ft and (_v4.AFK_FARM or _v4.LEGIT_FARM or _v4.ffOn() or _v4.FLY or _v4.AUTO_FLY
or _v4.SAVE_DINO_ACTIVE or _v4.AS_BUSY or _v4.UNLOADED) then _v2ft = nil end
if not _v2ft then
if _v4.gaitHeld then _v4.autoGaitStop() end
return
end
local _v2fu = _v4.getCS()
local _v2fv = _v2fu and _v2fu.Controls
if not _v2fv then return end
local _v2fw = true
pcall(function() _v2fw = isrbxactive() end)
if not _v2fw then
_v4.gaitUnblocked = true
if _v2fv.WindowUnfocused ~= false then pcall(function() _v2fv.WindowUnfocused = false end) end
if _v2fv.InputWasBlocked == true then pcall(function() _v2fv.InputWasBlocked = false end) end
elseif _v4.gaitUnblocked then
_v4.gaitUnblocked = nil
end
for _v2fx, _v2fy in pairs(_v4.GAIT_ACTION) do
if _v2fy and _v2fx ~= _v2ft and (_v2fu.Actions and _v2fu.Actions[_v2fy]) == true then
pcall(function() _v2fv:HandleAction(_v2fy, false) end)
end
end
local _v2fz = _v4.GAIT_ACTION[_v2ft]
if _v2fz and (_v2fu.Actions and _v2fu.Actions[_v2fz]) ~= true then pcall(function() _v2fv:HandleAction(_v2fz, true) end) end
if (_v2fu.Actions and _v2fu.Actions.Forward) ~= true then pcall(function() _v2fv:HandleAction(_pguo("+CFA987uZA=="), true) end) end
_v4.gaitHeld = _v2ft
end)
function _v4.applyFallImmunity(_v2g0)
local _v2g1 = _v2.Character
if _v2g1 then pcall(function() _v2g1:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), _v2g0 and true or nil) end) end
end
_v4.addStep(5, function()
if not (_v4.NO_FALL_DAMAGE or _v4.ffOn() or _v4.SAVE_DINO_ACTIVE or _v2du
or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM
or os.clock() < (_v4.flyLandUntil or 0)) then return end
local _v2g2 = _v2.Character
if _v2g2 and _v2g2:GetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3")) ~= true then
pcall(function() _v2g2:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), true) end)
end
local _v2g3 = (_v4.SAVE_DINO_ACTIVE and _v2e8) or _v2du
if _v2g3 and _v2g2 and type(_v2g2:GetAttribute(_pguo("6ite5d/zcgzXIFU="))) ~= _pguo("0Dtf4sru") then
local _v2g4 = _vkd()
if _v2g4 then pcall(function() _v2g2:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v2g4.Position.Y) end) end
end
end)
_v4.blurOff = setmetatable({}, { __mode = "k" })
_v4.blurHooked = setmetatable({}, { __mode = "k" })
function _v4.killBlur(_v2g5)
if typeof(_v2g5) ~= _pguo("9yBB9M7yYx0=") or not _v2g5:IsA(_pguo("/CJH8ur6Zh3dOg==")) then return end
if not _v4.blurHooked[_v2g5] then
_v4.blurHooked[_v2g5] = true
pcall(function()
table.insert(_v2l, _v2g5:GetPropertyChangedSignal(_pguo("+yBT4sP5ZA==")):Connect(function()
if _v4.NO_BLUR and _v2g5.Enabled then _v4.killBlur(_v2g5) end
end))
end)
end
pcall(function()
if _v2g5.Enabled then _v4.blurOff[_v2g5] = true; _v2g5.Enabled = false end
if _v2g5.Size ~= 0 then _v2g5.Size = 0 end
end)
end
function _v4.sweepBlur()
pcall(function()
for _v2g6, _v2g7 in ipairs(_vip:GetDescendants()) do _v4.killBlur(_v2g7) end
end)
pcall(function()
local _v2g8 = workspace.CurrentCamera
if _v2g8 then for _v2g9, _v2ga in ipairs(_v2g8:GetChildren()) do _v4.killBlur(_v2ga) end end
end)
end
function _v4.restoreBlur()
for _v2gb in pairs(_v4.blurOff) do
pcall(function() if _v2gb.Parent then _v2gb.Enabled = true end end)
end
_v4.blurOff = setmetatable({}, { __mode = "k" })
end
pcall(function()
table.insert(_v2l, _vip.DescendantAdded:Connect(function(_v2gc)
if _v4.NO_BLUR then _v4.killBlur(_v2gc) end
end))
end)
do
local _v2gd = nil
local function _v2ge()
pcall(function() if _v2gd then _v2gd:Disconnect() end end)
local _v2gf = workspace.CurrentCamera
if not _v2gf then return end
_v2gd = _v2gf.ChildAdded:Connect(function(_v2gg) if _v4.NO_BLUR then _v4.killBlur(_v2gg) end end)
table.insert(_v2l, _v2gd)
if _v4.NO_BLUR then _v4.sweepBlur() end
end
_v2ge()
table.insert(_v2l,
workspace:GetPropertyChangedSignal(_pguo("/TtA8srydDvfI1fyzg==")):Connect(_v2ge))
end
_v4.addStep(3, function()
if not _v4.NO_BLUR then return end
_v4.sweepBlur()
end)
local _v2gh = nil
local _v2gi = false
table.insert(_v2l, _v4.UIS.InputBegan:Connect(function(_v2gj, _v2gk)
if _v4.UNLOADED or _v2gk then return end
local _v2gl = _v2gh and _v2gh.Key
if _v2gl and _v2gl ~= Enum.KeyCode.Unknown and _v2gj.KeyCode == _v2gl then _v2gi = true end
end))
table.insert(_v2l, _v4.UIS.InputEnded:Connect(function(_v2gm)
local _v2gn = _v2gh and _v2gh.Key
if _v2gn and _v2gm.KeyCode == _v2gn then _v2gi = false end
end))
function _v4.instaTurnStep()
if _v4.UNLOADED or not (_v2gi or _v4.mob.insta) then return end
local _v2go = _vkd()
local _v2gp = workspace.CurrentCamera
if not (_v2go and _v2gp) then return end
local _v2gq = _v2gp.CFrame.LookVector
local _v2gr = Vector3.new(_v2gq.X, 0, _v2gq.Z)
if _v2gr.Magnitude < 0.01 then return end
pcall(function()
_v2go.CFrame = CFrame.lookAt(_v2go.Position, _v2go.Position + _v2gr.Unit)
_v2go.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.instaTurnStep)
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.instaTurnStep))
_v4.TURN_SPEED = 250
_v4.QUICK_TURN = false
function _v4.turnAssistStep(_v2gs)
if _v4.UNLOADED or not _v4.QUICK_TURN or _v4.TURN_SPEED <= 0 then return end
if _v2gi or _v4.mob.insta then return end
if _v4.UIS:GetFocusedTextBox() then return end
local _v2gt = 0
if _v4.UIS:IsKeyDown(Enum.KeyCode.A) or _v4.mob.turnL then _v2gt = _v2gt + 1 end
if _v4.UIS:IsKeyDown(Enum.KeyCode.D) or _v4.mob.turnR then _v2gt = _v2gt - 1 end
if _v2gt == 0 then return end
local _v2gu = _vkd()
if not _v2gu then return end
local _v2gv = math.rad(_v4.TURN_SPEED) * (_v2gs or 1 / 60) * _v2gt
pcall(function()
_v2gu.CFrame = _v2gu.CFrame * CFrame.Angles(0, _v2gv, 0)
_v2gu.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
end)
end
_v4.addStep(1, _v4.turnAssistStep)
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.turnAssistStep))
_v4.NO_ATK_CD = false
_v4.NO_ATK_COOLDOWN = false
_v4.ATTACK_SPEED = 3
local _v2gw = setmetatable({}, { __mode = "k" })
_v4.animatorCache = setmetatable({}, { __mode = "k" })
function _v4.getAnimator()
local _v2gx = _v2.Character
if not _v2gx then return nil end
local _v2gy = _v4.animatorCache[_v2gx]
if _v2gy and _v2gy.Parent then return _v2gy end
local _v2gz = _v2gx:FindFirstChildOfClass(_pguo("9jtf4cHzaRw="))
local _v2h0 = _v2gz and _v2gz:FindFirstChildOfClass(_pguo("/yBb7c7obwo="))
if not _v2h0 then _v2h0 = _v2gx:FindFirstChildWhichIsA(_pguo("/yBb7c7obwo="), true) end
_v4.animatorCache[_v2gx] = _v2h0
return _v2h0
end
function _v4.restoreAttackSpeed()
for _v2h1, _v2h2 in pairs(_v2gw) do
pcall(function() if _v2h1.IsPlaying then _v2h1:AdjustSpeed(1) end end)
end
_v2gw = setmetatable({}, { __mode = "k" })
end
_v4.addStep(2, function()
if not _v4.NO_ATK_CD then return end
local _v2h3 = _v4.getAnimator()
if not _v2h3 then return end
pcall(function()
for _v2h4, _v2h5 in ipairs(_v2h3:GetPlayingAnimationTracks()) do
if _v2h5.Priority == Enum.AnimationPriority.Action4 and _v2h5.Speed ~= _v4.ATTACK_SPEED then
_v2h5:AdjustSpeed(_v4.ATTACK_SPEED)
_v2gw[_v2h5] = true
end
end
end)
end)
task.spawn(function()
local _v2h6 = _v4.requireCS()
if _v2h6 then
_v4.addStep(1, function()
if not _v4.NO_ATK_COOLDOWN or _v4.UNLOADED then return end
pcall(function()
if type(_v2h6.Growth) == _pguo("yi9Q7Mo=") and _v2h6.Growth.attackCooldownMultiplier ~= nil then
_v2h6.Growth.attackCooldownMultiplier = 0
end
end)
end)
end
end)
local _v2h7, _v2h8 = nil, nil
local _v2h9 = false
_v4.ZOOM_FAR = nil
function _v4.resolveZoomFar(_v2ha)
if _v4.ZOOM_FAR and not _v2ha then return _v4.ZOOM_FAR end
for _v2hb, _v2hc in ipairs({ 1e6, 1e5, 5e4, 1e4, 5000, 2000 }) do
local _v2hd = pcall(function() _v2.CameraMaxZoomDistance = _v2hc end)
if _v2hd then
local _v2he = _v2.CameraMaxZoomDistance
if type(_v2he) == _pguo("0Dtf4sru") and _v2he > 0 then _v4.ZOOM_FAR = _v2he; return _v4.ZOOM_FAR end
end
end
_v4.ZOOM_FAR = 2000
return _v4.ZOOM_FAR
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
_v4.zoomProbeAt = 0
local function _v2hf()
local _v2hg = workspace.CurrentCamera
if not _v2hg then return nil end
local _v2hh, _v2hi = pcall(function()
return (_v2hg.CFrame.Position - _v2hg.Focus.Position).Magnitude
end)
if not _v2hh or type(_v2hi) ~= _pguo("0Dtf4sru") or _v2hi ~= _v2hi or _v2hi <= 0 then return nil end
return _v2hi
end
function _v4.setZoomRange(_v2hj, _v2hk)
pcall(function()
if _v2.CameraMaxZoomDistance ~= _v2hk then _v2.CameraMaxZoomDistance = _v2hk end
if _v2.CameraMinZoomDistance ~= _v2hj then _v2.CameraMinZoomDistance = _v2hj end
end)
end
function _v4.applyZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v2hl = _v4.zoomWant or _v4.zoomTarget or _v2hf() or 20
_v4.zoomWant = _v2hl
local _v2hm = _v4.ZOOM_FAR or 2000
local _v2hn = math.clamp(_v2hl, 0.5, _v2hm)
_v4.setZoomRange(_v2hn, _v2hn)
local _v2ho = _v2.CameraMaxZoomDistance
if type(_v2ho) == _pguo("0Dtf4sru") and _v2ho > 0 and _v2ho < _v2hn - 1 then
_v4.setZoomRange(_v2ho, _v2ho)
_v4.zoomTarget = _v2ho
if os.clock() - (_v4.zoomProbeAt or 0) > 1 then
_v4.zoomProbeAt = os.clock()
_v4.resolveZoomFar(true)
end
else
_v4.zoomTarget = _v2hn
end
end
_v4.zoomFailFrames = 0
function _v4.enforceZoom()
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
local _v2hp = _v4.zoomTarget
local _v2hq = workspace.CurrentCamera
if not (_v2hp and _v2hq) then return end
local _v2hr = false
pcall(function() _v2hr = (_v2hq.CameraType == Enum.CameraType.Scriptable) end)
if _v2hr then _v4.zoomFailFrames = 0 return end
local _v2hs = _v2hf()
if not _v2hs or math.abs(_v2hs - _v2hp) <= 1.5 then _v4.zoomFailFrames = 0 return end
_v4.zoomFailFrames = _v4.zoomFailFrames + 1
if _v4.zoomFailFrames < 3 then return end
pcall(function()
local _v2ht = _v2hq.Focus.Position
local _v2hu = _v2hq.CFrame.LookVector
if _v2hu.Magnitude < 0.01 then return end
_v2hq.CFrame = CFrame.lookAt(_v2ht - _v2hu.Unit * _v2hp, _v2ht)
end)
end
pcall(function()
table.insert(_v2l, _v4.UIS.InputChanged:Connect(function(_v2hv)
if _v4.UNLOADED or not _v4.UNLIMITED_ZOOM then return end
if _v2hv.UserInputType == Enum.UserInputType.MouseWheel then
local _v2hw = _v4.ZOOM_FAR or 2000
local _v2hx = _v4.zoomWant or _v4.zoomTarget or _v2hf() or 20
local _v2hy = math.max(3, _v2hx * 0.12)
_v2hx = math.clamp(_v2hx - _v2hv.Position.Z * _v2hy, 0.5, _v2hw)
_v4.zoomWant = _v2hx
_v4.zoomTarget = _v2hx
_v4.setZoomRange(_v2hx, _v2hx)
end
end))
end)
function _v4.bindZoom()
if _v2h9 then return end
if _v2h7 == nil then
_v2h7 = _v2.CameraMaxZoomDistance
_v2h8 = _v2.CameraMinZoomDistance
end
_v4.resolveZoomFar(true)
_v4.zoomTarget = _v2hf() or _v4.zoomTarget or 20
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
_v2h9 = true
end
function _v4.restoreZoom()
if _v2h9 then
pcall(function() _v1:UnbindFromRenderStep(_pguo("+xRt1cHwaRXXOlfk9fNvFQ==")) end)
pcall(function() _v1:UnbindFromRenderStep(_pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg==")) end)
_v2h9 = false
end
_v4.zoomTarget = nil
_v4.zoomWant = nil
if _v2h7 ~= nil then
pcall(function()
_v2.CameraMinZoomDistance = _v2h8
_v2.CameraMaxZoomDistance = _v2h7
end)
end
end
table.insert(_v2l,
_v2:GetPropertyChangedSignal(_pguo("/S9f5d39TRnGFF3vwthpC8ovXOPK")):Connect(_v4.applyZoom))
_v4.FOV_ENABLED = false
_v4.FOV_VALUE = 70
local _v2hz = nil
local _v2i0 = false
function _v4.applyFOV()
if _v4.UNLOADED or not _v4.FOV_ENABLED then return end
local _v2i1 = workspace.CurrentCamera
if not _v2i1 then return end
pcall(function()
if _v2i1.CameraType == Enum.CameraType.Scriptable then return end
local _v2i2 = math.clamp(_v4.FOV_VALUE or 70, 1, 120)
if math.abs(_v2i1.FieldOfView - _v2i2) > 0.01 then _v2i1.FieldOfView = _v2i2 end
end)
end
function _v4.bindFOV()
if _v2i0 then return end
if _v2hz == nil then
pcall(function() _v2hz = workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView end)
end
pcall(function()
_v1:BindToRenderStep(_pguo("+xRtxuDK"), Enum.RenderPriority.Camera.Value + 1, _v4.applyFOV)
end)
_v2i0 = true
end
function _v4.restoreFOV()
if _v2i0 then
pcall(function() _v1:UnbindFromRenderStep(_pguo("+xRtxuDK")) end)
_v2i0 = false
end
if _v2hz ~= nil then
pcall(function()
local _v2i3 = workspace.CurrentCamera
if _v2i3 then _v2i3.FieldOfView = _v2hz end
end)
end
end
_v4.GR_LIFT = 0.6
_v4.GR_STEP = 3
_v4.GR_DROP = 9
_v4.GR_CELLS = 3000
_v4.GR_WIDE = 20000
function _v4.grParams()
if not _v4.grTP then
local _v2i4 = RaycastParams.new()
_v2i4.FilterType = Enum.RaycastFilterType.Include
local _v2i5 = { workspace.Terrain }
pcall(function() local _v2i6 = workspace.World:FindFirstChild(_pguo("8yFH7tv9aRbN")); if _v2i6 then _v2i5[2] = _v2i6 end end)
_v2i4.FilterDescendantsInstances = _v2i5
_v2i4.IgnoreWater = false
_v4.grTP = _v2i4
end
return _v4.grTP
end
function _v4.grGround()
if _v4.grGP == nil then
local _v2i7, _v2i8 = pcall(function() return _v4.req(game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s=")).Common.RayParams) end)
_v4.grGP = (_v2i7 and _v2i8 and _v2i8.GroundParams) or false
end
return _v4.grGP or _v4.grParams()
end
function _v4.grY(_v2i9, _v2ia, _v2ib, _v2ic)
local _v2id = workspace:Raycast(Vector3.new(_v2i9, _v2ib + 1500, _v2ia), Vector3.new(0, -5000, 0), _v2ic or _v4.grParams())
if _v2id then return _v2id.Position.Y, _v2id.Material end
end
function _v4.grStand(_v2ie)
local _v2if = math.max(1, _v2ie.Size.Y * 0.5)
pcall(function()
local _v2ig = _v4.getCS().Alignment
local _v2ih = (_v2ig.RideHeight or 0) + (_v2ig.BodyHeightIncrease or 0)
if _v2ih > 0 then _v2if = _v2ih end
end)
return _v2if
end
function _v4.grPath(_v2ii, _v2ij, _v2ik, _v2il, _v2im)
local _v2in, _v2io = _v4.GR_STEP, _v4.GR_DROP
local function _v2ip(_v2iq, _v2ir) return (_v2iq + 2048) * 4096 + (_v2ir + 2048) end
local _v2is, _v2it = {}, 0
local function _v2iu(_v2iv, _v2iw)
local _v2ix = _v2ip(_v2iv, _v2iw)
local _v2iy = _v2is[_v2ix]
if _v2iy == nil then
_v2iy = _v4.grY(_v2ii.X + _v2iv * _v2in, _v2ii.Z + _v2iw * _v2in, _v2ii.Y, _v2ik) or false
_v2is[_v2ix] = _v2iy
_v2it = _v2it + 1
if _v2il and _v2it % 250 == 0 then _v2il() end
end
return _v2iy
end
local _v2iz, _v2j0 = {}, 0
local function _v2j1(_v2j2)
_v2j0 = _v2j0 + 1
_v2iz[_v2j0] = _v2j2
local _v2j3 = _v2j0
while _v2j3 > 1 do
local _v2j4 = math.floor(_v2j3 / 2)
if _v2iz[_v2j4].f <= _v2iz[_v2j3].f then break end
_v2iz[_v2j4], _v2iz[_v2j3] = _v2iz[_v2j3], _v2iz[_v2j4]
_v2j3 = _v2j4
end
end
local function _v2j5()
local _v2j6 = _v2iz[1]
_v2iz[1] = _v2iz[_v2j0]
_v2iz[_v2j0] = nil
_v2j0 = _v2j0 - 1
local _v2j7 = 1
while true do
local _v2j8, _v2j9, _v2ja = _v2j7 * 2, _v2j7 * 2 + 1, _v2j7
if _v2j8 <= _v2j0 and _v2iz[_v2j8].f < _v2iz[_v2ja].f then _v2ja = _v2j8 end
if _v2j9 <= _v2j0 and _v2iz[_v2j9].f < _v2iz[_v2ja].f then _v2ja = _v2j9 end
if _v2ja == _v2j7 then break end
_v2iz[_v2ja], _v2iz[_v2j7] = _v2iz[_v2j7], _v2iz[_v2ja]
_v2j7 = _v2ja
end
return _v2j6
end
local function _v2jb(_v2jc, _v2jd)
local _v2je, _v2jf = _v2ii.X + _v2jc * _v2in - _v2ij.X, _v2ii.Z + _v2jd * _v2in - _v2ij.Z
return math.sqrt(_v2je * _v2je + _v2jf * _v2jf)
end
local _v2jg, _v2jh = {}, { [_v2ip(0, 0)] = 0 }
_v2j1({ i = 0, j = 0, g = 0, f = _v2jb(0, 0) })
local _v2ji, _v2jj, _v2jk, _v2jl = 0, nil, math.huge, nil
while _v2j0 > 0 and _v2ji < (_v2im or _v4.GR_CELLS) do
local _v2jm = _v2j5()
_v2ji = _v2ji + 1
local _v2jn = _v2jb(_v2jm.i, _v2jm.j)
if _v2jn < _v2jk then _v2jj, _v2jk = _v2jm, _v2jn end
if _v2jn < _v2in * 1.5 then _v2jl = _v2jm break end
local _v2jo = _v2iu(_v2jm.i, _v2jm.j)
if _v2jo then
for _v2jp = -1, 1 do
for _v2jq = -1, 1 do
if _v2jp ~= 0 or _v2jq ~= 0 then
local _v2jr, _v2js = _v2jm.i + _v2jp, _v2jm.j + _v2jq
local _v2jt = _v2iu(_v2jr, _v2js)
if _v2jt and math.abs(_v2jt - _v2jo) <= _v2io then
local _v2ju = _v2jm.g + math.sqrt(_v2jp * _v2jp + _v2jq * _v2jq) * _v2in
local _v2jv = _v2ip(_v2jr, _v2js)
if not _v2jh[_v2jv] or _v2ju < _v2jh[_v2jv] then
_v2jh[_v2jv] = _v2ju
_v2jg[_v2jv] = _v2jm
_v2j1({ i = _v2jr, j = _v2js, g = _v2ju, f = _v2ju + _v2jb(_v2jr, _v2js) * 1.2 })
end
end
end
end
end
end
end
local _v2jw = _v2jl or _v2jj
if not _v2jw then return nil, false end
local _v2jx, _v2jy = {}, _v2jw
while _v2jy and #_v2jx < 4000 do
table.insert(_v2jx, 1, Vector3.new(_v2ii.X + _v2jy.i * _v2in, 0, _v2ii.Z + _v2jy.j * _v2in))
_v2jy = _v2jg[_v2ip(_v2jy.i, _v2jy.j)]
end
return _v2jx, _v2jl ~= nil
end
function _v4.grStep(_v2jz, _v2k0, _v2k1, _v2k2)
if _v4.mvHold() then return _v4.govNext(_v2k0, _v2k1, _v2k2), nil end
if _v2jz.wide then return _v2k0, nil end
_v2k2 = math.min(_v2k2 or 0.016, 0.1)
local _v2k3 = _v4.MV_VERT * _v2k2
local _v2k4 = _v2jz.stand + _v4.GR_LIFT
local _v2k5 = _v4.grY(_v2k0.X, _v2k0.Z, _v2k0.Y, _v2jz.params)
if _v2k5 and _v2k0.Y - _v2k4 - _v2k5 > _v4.GR_DROP then
if _v2jz.hill == nil then _v2jz.hill = _v4.grHill(_v2k0, _v2jz.stand) or false end
local _v2k6 = _v2jz.hill and Vector3.new(_v2jz.hill.X - _v2k0.X, 0, _v2jz.hill.Z - _v2k0.Z)
if _v2k6 and _v2k6.Magnitude > 0.05 then
local _v2k7 = _v2k6.Unit
_v4.govNext(_v2k0, _v2k0 + _v2k7 * 10, _v2k2)
local _v2k8 = math.min(_v4.mvSideCap(false) * _v2k2, _v2k6.Magnitude)
return Vector3.new(_v2k0.X + _v2k7.X * _v2k8, _v2k0.Y, _v2k0.Z + _v2k7.Z * _v2k8), _v2k7
end
_v2jz.hill = false
return Vector3.new(_v2k0.X, math.max(_v2k0.Y - _v2k3, _v2k5 + _v2k4), _v2k0.Z), nil
end
_v2jz.hill = nil
local _v2k9 = _v2k1
while _v2jz.path do
local _v2ka = _v2jz.path[_v2jz.i]
if not _v2ka then _v2jz.path = nil break end
if Vector3.new(_v2ka.X - _v2k0.X, 0, _v2ka.Z - _v2k0.Z).Magnitude < 0.1 then _v2jz.i = _v2jz.i + 1 else _v2k9 = _v2ka break end
end
local _v2kb = Vector3.new(_v2k9.X - _v2k0.X, 0, _v2k9.Z - _v2k0.Z)
local _v2kc = _v2kb.Magnitude
if _v2kc < 0.05 then return _v2k0, nil end
local _v2kd = _v2kb.Unit
if not _v2jz.path and _v2k5 and os.clock() >= (_v2jz.noRoute or 0) then
local _v2ke = _v4.grY(_v2k0.X + _v2kd.X * _v4.GR_STEP, _v2k0.Z + _v2kd.Z * _v4.GR_STEP, _v2k0.Y, _v2jz.params)
if _v2ke and _v2k0.Y - _v2k4 - _v2ke > _v4.GR_DROP then
local _v2kf = _v2kc < 45 and _v2k9 or (_v2k0 + _v2kd * 45)
local _v2kg = Vector3.new(_v2kf.X, _v2ke, _v2kf.Z)
local _v2kh, _v2ki = _v4.grPath(_v2k0, _v2kg, _v2jz.params)
if _v2ki and #_v2kh > 1 then
_v2jz.path, _v2jz.i = _v2kh, 2
else
_v2jz.wide = true
task.spawn(function()
local _v2kj, _v2kk, _v2kl = pcall(_v4.grPath, _v2k0, _v2kg, _v2jz.params, task.wait, _v4.GR_WIDE)
if _v2kj and _v2kl and #_v2kk > 1 then
_v2jz.path, _v2jz.i, _v2jz.stuck = _v2kk, 2, nil
else
_v2jz.noRoute, _v2jz.stuck = os.clock() + 10, true
end
_v2jz.wide = nil
end)
return _v2k0, _v2kd
end
end
end
_v4.govNext(_v2k0, _v2k0 + _v2kd * 10, _v2k2)
local _v2km, _v2kn = _v4.grY(_v2k0.X, _v2k0.Z, _v2k0.Y, _v2jz.params)
_v4.mvPlatT = _v2kn == Enum.Material.Water and os.clock() or 0
local _v2ko = math.min(_v4.mvSideCap(false) * _v2k2, _v2kc)
local _v2kp, _v2kq = _v2k0.X + _v2kd.X * _v2ko, _v2k0.Z + _v2kd.Z * _v2ko
local _v2kr = _v4.grY(_v2kp, _v2kq, _v2k0.Y, _v2jz.params)
if not _v2kr then return _v2k0, _v2kd end
local _v2ks = _v2kr + _v2k4
if math.abs(_v2ks - _v2k0.Y) > _v2k3 then
local _v2kt = math.max(_v2ko * _v2k3 / math.abs(_v2ks - _v2k0.Y), 0.05)
_v2kp, _v2kq = _v2k0.X + _v2kd.X * _v2kt, _v2k0.Z + _v2kd.Z * _v2kt
_v2kr = _v4.grY(_v2kp, _v2kq, _v2k0.Y, _v2jz.params) or _v2kr
_v2ks = _v2kr + _v2k4
end
local _v2ku = _v2ks - _v2k0.Y
if _v2ku < -_v4.GR_DROP then return _v2k0, _v2kd end
if _v2ku > _v4.GR_DROP then return Vector3.new(_v2k0.X, _v2k0.Y + _v2k3, _v2k0.Z), _v2kd end
return Vector3.new(_v2kp, _v2k0.Y + math.clamp(_v2ku, -_v2k3, _v2k3), _v2kq), _v2kd
end
function _v4.saveRise(_v2kv, _v2kw, _v2kx, _v2ky)
local _v2kz = _v4.grY(_v2kv.X, _v2kv.Z, _v2kv.Y) or (_v2kv.Y - _v2kw)
local _v2l0 = 0
for _v2l1 = 30, 600, 30 do
local _v2l2 = math.max(16, math.floor(_v2l1 / 12))
for _v2l3 = 0, _v2l2 - 1 do
local _v2l4 = _v2l3 * 2 * math.pi / _v2l2
local _v2l5, _v2l6 = _v2kv.X + math.cos(_v2l4) * _v2l1, _v2kv.Z + math.sin(_v2l4) * _v2l1
local _v2l7, _v2l8 = _v4.grY(_v2l5, _v2l6, _v2kv.Y)
if _v2l7 and _v2l8 ~= Enum.Material.Water and _v2l7 - _v2kz > _v2l0
and not (_v4.wallCross and _v4.wallCross(_v2kv, Vector3.new(_v2l5, _v2kv.Y, _v2l6))) then
_v2l0 = _v2l7 - _v2kz
end
end
end
local _v2l9 = (_v2kx * 0.6 / math.max(_v2ky, 0.1)) * 100 - 5
return math.clamp(math.max(_v2l0, _v2l9), _v4.GR_DROP, _v4.SAVE_UP_HEIGHT)
end
_v4.SAVE_CLEAR = 250
function _v4.savePlayers()
local _v2la = {}
for _v2lb, _v2lc in ipairs(game:GetService(_pguo("7iJT+crucw==")):GetPlayers()) do
local _v2ld = _v2lc ~= _v2 and _v2lc.Character and _v4.getRootOf(_v2lc.Character, false)
if _v2ld then _v2la[#_v2la + 1] = _v2ld.Position end
end
return _v2la
end
function _v4.saveSpot(_v2le, _v2lf, _v2lg)
local _v2lh, _v2li
for _v2lj = 30, 900, 30 do
local _v2lk = math.max(16, math.floor(_v2lj / 12))
for _v2ll = 0, _v2lk - 1 do
local _v2lm = _v2ll * 2 * math.pi / _v2lk
local _v2ln, _v2lo = _v2le.X + math.cos(_v2lm) * _v2lj, _v2le.Z + math.sin(_v2lm) * _v2lj
local _v2lp, _v2lq = _v4.grY(_v2ln, _v2lo, _v2le.Y)
local _v2lr = _v2lp ~= nil and _v2lq ~= Enum.Material.Water
and not (_v4.wallCross and _v4.wallCross(_v2le, Vector3.new(_v2ln, _v2le.Y, _v2lo)))
if _v2lr then
for _v2ls, _v2lt in ipairs(_v2lg) do
if Vector3.new(_v2lt.X - _v2ln, 0, _v2lt.Z - _v2lo).Magnitude < _v4.SAVE_CLEAR then _v2lr = false break end
end
end
if _v2lr then
if _v2lp + _v2lf >= _v2le.Y - _v4.GR_DROP then return Vector3.new(_v2ln, _v2lp, _v2lo), true end
if not _v2li or _v2lp > _v2li then _v2lh, _v2li = Vector3.new(_v2ln, _v2lp, _v2lo), _v2lp end
end
end
end
return _v2lh, false
end
function _v4.grHill(_v2lu, _v2lv)
for _v2lw = 30, 900, 30 do
local _v2lx = math.max(16, math.floor(_v2lw / 12))
for _v2ly = 0, _v2lx - 1 do
local _v2lz = _v2ly * 2 * math.pi / _v2lx
local _v2m0, _v2m1 = _v2lu.X + math.cos(_v2lz) * _v2lw, _v2lu.Z + math.sin(_v2lz) * _v2lw
local _v2m2, _v2m3 = _v4.grY(_v2m0, _v2m1, _v2lu.Y)
if _v2m2 and _v2m3 ~= Enum.Material.Water and _v2m2 + _v2lv >= _v2lu.Y - _v4.GR_DROP
and not (_v4.wallCross and _v4.wallCross(_v2lu, Vector3.new(_v2m0, _v2lu.Y, _v2m1))) then
return Vector3.new(_v2m0, _v2m2, _v2m1)
end
end
end
end
function _v4.flyTo(_v2m4, _v2m5, _v2m6, _v2m7)
local _v2m8 = _v4.getLocalPhysicsRoot()
local _v2m9 = _v2.Character
if not (_v2m8 and _v2m8.Parent and _v2m9) then return false, _pguo("0CES48f9chndOlfy") end
_v2m6 = _v2m6 or 40
local _v2ma = math.max(3, _v2m8.Size.Y * 0.5)
pcall(function()
local _v2mb = _v4.getCS().Alignment
local _v2mc = (_v2mb.RideHeight or 0) + (_v2mb.BodyHeightIncrease or 0)
if _v2mc > _v2ma then _v2ma = _v2mc end
end)
local _v2md = RaycastParams.new()
_v2md.FilterType = Enum.RaycastFilterType.Include
local _v2me = { workspace.Terrain }
pcall(function() local _v2mf = workspace.World:FindFirstChild(_pguo("8yFH7tv9aRbN")); if _v2mf then _v2me[2] = _v2mf end end)
_v2md.FilterDescendantsInstances = _v2me
_v2md.IgnoreWater = false
local function _v2mg(_v2mh, _v2mi, _v2mj)
local _v2mk = workspace:Raycast(Vector3.new(_v2mh, _v2mj + 1500, _v2mi), Vector3.new(0, -5000, 0), _v2md)
if _v2mk then return _v2mk.Position.Y, _v2mk.Material end
end
local function _v2ml(_v2mm)
local _v2mn, _v2mo = _v2mg(_v2mm.X, _v2mm.Z, _v2mm.Y)
if _v2mn and _v2mo ~= Enum.Material.Water then return Vector3.new(_v2mm.X, _v2mn, _v2mm.Z) end
for _v2mp = 20, 800, 20 do
for _v2mq = 0, 15 do
local _v2mr = _v2mq * math.pi / 8
local _v2ms, _v2mt = _v2mm.X + math.cos(_v2mr) * _v2mp, _v2mm.Z + math.sin(_v2mr) * _v2mp
local _v2mu, _v2mv = _v2mg(_v2ms, _v2mt, _v2mm.Y)
if _v2mu and _v2mv ~= Enum.Material.Water and not (_v4.wallCross and _v4.wallCross(_v2mm, Vector3.new(_v2ms, _v2mm.Y, _v2mt))) then
return Vector3.new(_v2ms, _v2mu, _v2mt)
end
end
end
end
local function _v2mw(_v2mx) _v4.flyStatus = _v2mx; if _v2m7 then pcall(_v2m7, _v2mx) end end
if _v4.trackWalls then pcall(_v4.trackWalls) end
if _v4.wallCross and _v4.wallCross(_v2m8.Position, Vector3.new(_v2m4.X, _v2m8.Position.Y, _v2m4.Z)) then
return false, _pguo("325f4d+8dxnSIhLp3LxpFp46WuWP62EB")
end
pcall(function() _v2m9:SetAttribute(_pguo("+C9e7Ov9bRnZK3vtwuluEco3"), true) end)
local _v2my, _v2mz = false, _pguo("yidf5cu8bw3K")
local okRun, err = pcall(function()
local _v2n0 = game:GetService(_pguo("7Dtc08rudhHdKw=="))
local _v2n1 = _v2m8.Position
local _v2n2 = Vector3.new(_v2m4.X, _v2m4.Y, _v2m4.Z)
local _v2n3 = Vector3.new(_v2n2.X - _v2n1.X, 0, _v2n2.Z - _v2n1.Z)
local _v2n4 = _v2n3.Magnitude > 0.1 and _v2n3.Unit or Vector3.new(0, 0, -1)
local _v2n5 = os.clock() + _v2n3.Magnitude / math.max(_v4.mvSideCap(), 1) * 1.6 + 60
local _v2n6, _v2n7 = _v2n5 + _v4.MV_WATER_EXTRA, os.clock()
local _v2n8, _v2n9, _v2na, _v2nb = _pguo("3y1A79zv"), false, nil, 0
local _v2nc, _v2nd = { stand = _v2ma, params = _v2md }, nil
do
local _v2ne = _v2mg(_v2n1.X, _v2n1.Z, _v2n1.Y)
if _v2ne and _v2n1.Y - (_v2ne + _v2ma) > _v4.GR_DROP then
_v2nd = (_v4.flyAim and _v4.flyAim(_v2n1)) or _v4.grHill(_v2n1, _v2ma)
_v2n8 = _v2nd and _pguo("1ide7A==") or _pguo("2iFF7g==")
if _v2nd then
local _v2nf = Vector3.new(_v2nd.X - _v2n1.X, 0, _v2nd.Z - _v2n1.Z).Magnitude / math.max(_v4.mvSideCap(), 1) * 3
_v2n5, _v2n6 = _v2n5 + _v2nf, _v2n6 + _v2nf
end
end
end
while not _v4.UNLOADED do
local _v2ng = _v2n0.Heartbeat:Wait()
if _v2m5 and not _v2m5() then _v2mz = _pguo("zTpd8N/5ZA==") return end
if not (_v2m8.Parent and _v2.Character == _v2m9) then _v2mz = _pguo("yiZXoMv1bheeJ0GgyPNuHQ==") return end
_v2n5, _v2n7 = _v4.mvExtend(_v2n5, _v2n7, _v2n6)
if os.clock() > _v2n5 then return end
if _v4.mvHold() then _v2n1 = _v2m8.Position end
local _v2nh = Vector3.new(_v2n2.X - _v2n1.X, 0, _v2n2.Z - _v2n1.Z).Magnitude
if _v2nh > 0.5 then _v2n4 = Vector3.new(_v2n2.X - _v2n1.X, 0, _v2n2.Z - _v2n1.Z).Unit end
if not _v2n9 and _v2nh < 400 then
local _v2ni = _v2ml(_v2n2)
if _v2ni then _v2n2, _v2n9 = _v2ni, true end
_v2nh = Vector3.new(_v2n2.X - _v2n1.X, 0, _v2n2.Z - _v2n1.Z).Magnitude
end
if _v2n8 == _pguo("3y1A79zv") and os.clock() - _v2nb > 0.5 then
_v2nb = os.clock()
if _v4.wallCross and _v4.wallCross(_v2n1, _v2n1 + _v2n4 * math.min(_v2nh, 80)) then
local _v2nj = _v2ml(_v2n1)
_v2n2, _v2n9, _v2mz = _v2nj or Vector3.new(_v2n1.X, _v2n1.Y, _v2n1.Z), true, _pguo("zTpd8N/5ZFjfOhLhj/FhCJ45U+zD")
_v2nh = Vector3.new(_v2n2.X - _v2n1.X, 0, _v2n2.Z - _v2n1.Z).Magnitude
end
end
local _v2nk
if _v2n8 == _pguo("1ide7A==") then
local _v2nl = _v4.flyAim and _v4.flyAim(_v2n1)
if _v2nl then _v2nd, _v2n2, _v2n9 = _v2nl, _v2nl, true end
local _v2nm = _v2mg(_v2n1.X, _v2n1.Z, _v2n1.Y)
if (_v2nm and _v2n1.Y - (_v2nm + _v2ma) <= _v4.GR_DROP) or Vector3.new(_v2nd.X - _v2n1.X, 0, _v2nd.Z - _v2n1.Z).Magnitude < 1 then
_v2n8 = _pguo("3y1A79zv")
else
_v2nk = Vector3.new(_v2nd.X, _v2n1.Y, _v2nd.Z)
_v2mw(_pguo("yiES6Mb7aFjZPF31wfg="))
end
end
if _v2n8 == _pguo("2iFF7g==") then
if not _v2na then
local _v2nn = _v2mg(_v2n1.X, _v2n1.Z, _v2n1.Y)
_v2na = (_v2nn or (_v2n1.Y - _v2ma - _v2m6)) + _v2ma + 0.5
end
if math.abs(_v2n1.Y - _v2na) < 0.5 then
_v2n8 = _pguo("3y1A79zv")
else
_v2nk = Vector3.new(_v2n1.X, _v2na, _v2n1.Z)
_v2mw(_pguo("0i9c5MbyZw=="))
end
end
local _v2no
if _v2n8 == _pguo("3y1A79zv") then
if _v2nh < 1 and _v2n9 then _v2my = true return end
_v2mw(math.floor(_v2nh) .. _pguo("nj1G9cvvIAzRblXv"))
local _v2np
_v2no, _v2np = _v4.grStep(_v2nc, _v2n1, _v2n2, _v2ng)
if _v2np then _v2n4 = _v2np end
if _v2nc.stuck then _v2mz = _pguo("0CES987lIArRO1zkj/0gHMwhQg==") return end
else
_v2no = _v4.govNext(_v2n1, _v2nk, _v2ng)
end
local _v2nq = _v2mg(_v2no.X, _v2no.Z, _v2no.Y)
if _v2nq and _v2no.Y < _v2nq + _v2ma * 0.5 then _v2no = Vector3.new(_v2no.X, _v2nq + _v2ma * 0.5, _v2no.Z) end
_v2n1 = _v2no
pcall(function()
_v2m9:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v2n1.Y)
_v2m8.CFrame = CFrame.lookAt(_v2n1, _v2n1 + _v2n4)
_v2m8.AssemblyLinearVelocity = Vector3.zero
_v2m8.AssemblyAngularVelocity = Vector3.zero
end)
end
end)
if not okRun then _v2mz = tostring(err) end
pcall(function() _v2m9:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
pcall(function() _v2m8.AssemblyLinearVelocity = Vector3.zero end)
_v4.flyLandUntil = os.clock() + 10
_v4.flyStatus = nil
return _v2my, _v2my and _pguo("3zxA6dn5ZA==") or _v2mz
end
_v4.BIOME_TARGET = nil
_v4.BIOME_TRAVEL = false
_v4.biomeTravelling = false
_v4.biomeToggle = nil
_v4.BIOME_POINTS = {}
function _v4.biomeNames()
local _v2nr = {}
pcall(function()
for _v2ns, _v2nt in ipairs(game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s=")).Locations:GetChildren()) do _v2nr[#_v2nr + 1] = _v2nt.Name end
end)
table.sort(_v2nr)
return _v2nr
end
function _v4.biomePoint(_v2nu)
if _v4.BIOME_POINTS[_v2nu] then return _v4.BIOME_POINTS[_v2nu] end
local _v2nv
pcall(function()
local _v2nw = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s=")).Locations:FindFirstChild(_v2nu)
if _v2nw then _v2nv = _v2nw:GetPivot().Position end
end)
return _v2nv
end
function _v4.travelToBiome(_v2nx)
if _v4.biomeTravelling then return end
_v4.biomeTravelling = true
local _v2ny = _v2nx and _v4.biomePoint(_v2nx)
local _v2nz, _v2o0 = false, _pguo("zidR64/9IAjSL1Hlj/ppCs06")
if _v2ny then
pcall(function() _v2dh:Notify(_pguo("/Cdd7cq8VArfOFfslbxmFMcnXOeP6G9Y") .. tostring(_v2nx), 4) end)
local _v2o1, _v2o2, _v2o3 = pcall(_v4.flyTo, _v2ny, function() return _v4.BIOME_TRAVEL and not (_v4.otherMoverOn and _v4.otherMoverOn()) end, 40)
_v2nz, _v2o0 = _v2o1 and _v2o2, _v2o1 and _v2o3 or tostring(_v2o2)
end
pcall(function()
_v2dh:Notify(_v2nz and (_pguo("/zxA6dn5ZEKe") .. tostring(_v2nx)) or (_pguo("/Cdd7cq8VArfOFfslbw=") .. tostring(_v2o0) .. _pguo("nmMS+cDpIBnMKxL3x/lyHZ4nRqDc6G8IzitW")), 6)
end)
_v4.biomeTravelling = false
_v4.BIOME_TRAVEL = false
if _v4.biomeToggle then pcall(function() _v4.biomeToggle:Set(false) end) end
end
_v4.fossilFarmToggle = nil
local function _v2o4(_v2o5)
local _v2o6 = _v2o5:FindFirstChild(_pguo("7jtf8MT1bijMIV/w2w=="))
if _v2o6 then return _v2o6 end
for _v2o7, _v2o8 in ipairs(_v2o5:GetDescendants()) do
if _v2o8:IsA(_pguo("7jxd+MbxaQzHHkDvwux0")) and _v2o8.Name == _pguo("+CFB88bw") then return _v2o8 end
end
return nil
end
function _v4.fossilPosOf(_v2o9)
local ok, p = pcall(function()
local _v2oa = _v2o4(_v2o9)
_v2oa = _v2oa and _v2oa.Parent
if _v2oa and _v2oa:IsA(_pguo("/zpG4cz0bR3QOg==")) then return _v2oa.WorldPosition end
if _v2oa and _v2oa:IsA(_pguo("/C9B5f/9cgw=")) then return _v2oa.Position end
return _v2o9:GetPivot().Position
end)
if ok then return p end
return nil
end
function _v4.ffPlanRoute(_v2ob)
local _v2oc, _v2od = os.clock(), {}
if _v4.PUMPKIN_FARM then
for _v2oe, _v2of in ipairs(_v4.pumpkinsNow()) do
local _v2og = _v2of.Parent and _v2o4(_v2of)
local _v2oh = _v4.ffSkip and _v4.ffSkip[_v2of]
if _v2og and _v2og.Enabled ~= false and not (_v2oh and _v2oh > _v2oc) then
local _v2oi = _v4.fossilPosOf(_v2of)
if _v2oi and _v2oi.Magnitude > 1 and not (_v4.wallCross and _v4.wallCross(_v2ob, _v2oi)) then
if _v4.isGiantPumpkin(_v2of) then return { _v2of } end
_v2od[#_v2od + 1] = { f = _v2of, p = _v2oi }
end
end
end
end
local _v2oj = _v4.FOSSIL_FARM and #_v2od == 0 and workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if _v2oj then
for _v2ok, _v2ol in ipairs(_v2oj:GetChildren()) do
local _v2om = _v2o4(_v2ol)
local _v2on = _v4.ffSkip and _v4.ffSkip[_v2ol]
if _v2om and _v2om.Enabled ~= false and not (_v2on and _v2on > _v2oc) then
local _v2oo = _v4.fossilPosOf(_v2ol)
if _v2oo and _v2oo.Magnitude > 1 and not (_v4.wallCross and _v4.wallCross(_v2ob, _v2oo)) then _v2od[#_v2od + 1] = { f = _v2ol, p = _v2oo } end
end
if #_v2od >= 150 then break end
end
end
local _v2op = #_v2od
if _v2op == 0 then return {} end
local _v2oq, _v2or, _v2os = {}, {}, _v2ob
for _v2ot = 1, _v2op do
local _v2ou, _v2ov
for _v2ow, _v2ox in ipairs(_v2od) do
if not _v2or[_v2ow] then
local _v2oy = (_v2ox.p - _v2os).Magnitude
if not _v2ov or _v2oy < _v2ov then _v2ou, _v2ov = _v2ow, _v2oy end
end
end
_v2or[_v2ou] = true
_v2oq[#_v2oq + 1] = _v2od[_v2ou]
_v2os = _v2od[_v2ou].p
end
local function _v2oz(_v2p0) return _v2p0 == 0 and _v2ob or _v2oq[_v2p0].p end
for _v2p1 = 1, 8 do
local _v2p2 = false
for _v2p3 = 1, _v2op - 1 do
for _v2p4 = _v2p3 + 1, _v2op do
local _v2p5, _v2p6, _v2p7 = _v2oz(_v2p3 - 1), _v2oz(_v2p3), _v2oz(_v2p4)
local _v2p8 = (_v2p6 - _v2p5).Magnitude
local _v2p9 = (_v2p7 - _v2p5).Magnitude
if _v2p4 < _v2op then
local _v2pa = _v2oz(_v2p4 + 1)
_v2p8 = _v2p8 + (_v2pa - _v2p7).Magnitude
_v2p9 = _v2p9 + (_v2pa - _v2p6).Magnitude
end
if _v2p9 < _v2p8 - 0.01 then
local _v2pb, _v2pc = _v2p3, _v2p4
while _v2pb < _v2pc do _v2oq[_v2pb], _v2oq[_v2pc] = _v2oq[_v2pc], _v2oq[_v2pb]; _v2pb, _v2pc = _v2pb + 1, _v2pc - 1 end
_v2p2 = true
end
end
end
if not _v2p2 then break end
end
local _v2pd = {}
for _v2pe, _v2pf in ipairs(_v2oq) do _v2pd[_v2pe] = _v2pf.f end
return _v2pd
end
function _v4.nearestFossil(_v2pg)
local _v2ph = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if not _v2ph then return nil end
local _v2pi, _v2pj
for _v2pk, _v2pl in ipairs(_v2ph:GetChildren()) do
local _v2pm = _v2o4(_v2pl)
local _v2pn = _v4.ffSkip and _v4.ffSkip[_v2pl]
if _v2pm and _v2pm.Enabled ~= false and not (_v2pn and _v2pn > os.clock()) then
local _v2po = _v4.fossilPosOf(_v2pl)
if _v2po and _v2po.Magnitude > 1 then
local _v2pp = (_v2po - _v2pg).Magnitude
if not _v2pj or _v2pp < _v2pj then _v2pi, _v2pj = _v2pl, _v2pp end
end
end
end
return _v2pi
end
function _v4.isolatePrompt(_v2pq, _v2pr)
local _v2ps = {}
local _v2pt = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if not _v2pt then return _v2ps end
for _v2pu, _v2pv in ipairs(_v2pt:GetChildren()) do
local _v2pw = _v2o4(_v2pv)
if _v2pw and _v2pw ~= _v2pq and _v2pw.Enabled then
local _v2px, _v2py = pcall(function() return _v2pw.Parent.Position end)
if (not _v2px) or (_v2py - _v2pr).Magnitude < 80 then
pcall(function() _v2pw.Enabled = false end)
table.insert(_v2ps, _v2pw)
end
end
end
return _v2ps
end
function _v4.restorePrompts(_v2pz)
for _v2q0, _v2q1 in ipairs(_v2pz) do pcall(function() if _v2q1 and _v2q1.Parent then _v2q1.Enabled = true end end) end
end
function _v4.autoSpawnCleanup()
for _v2q2, _v2q3 in ipairs(_v4.AUTO_SPAWN_DRAWS) do pcall(function() _v2q3:Remove() end) end
table.clear(_v4.AUTO_SPAWN_DRAWS)
_v4.AUTO_SPAWN = false
_v4.AUTO_SPAWN_TARGET = nil
_v4.AUTO_SPAWN_GENDER = nil
_v4.AUTO_SPAWN_ATTEMPTS = 0
end
function _v4.autoSpawnCleanupGUI()
local _v2q4 = _v2.PlayerGui
pcall(function()
local _v2q5 = _v2q4:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="))
if _v2q5 then _v2q5:Destroy() end
end)
pcall(function()
local _v2q6 = _v2q4:FindFirstChild(_pguo("8y9b7uL5bg35O1s="))
if _v2q6 then _v2q6:Destroy() end
end)
pcall(function()
local _v2q7 = _v2q4:FindFirstChild(_pguo("8iFT5MbyZz/LJw=="))
if _v2q7 then _v2q7:Destroy() end
end)
end
function _v4.autoSpawnGetDinoName()
local _v2q8 = _v2.PlayerGui:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="))
if not _v2q8 then return nil end
local _v2q9 = _v2q8:FindFirstChild(_pguo("6iFCxt39bR0="))
if not _v2q9 then return nil end
local _v2qa = _v2q9:FindFirstChild(_pguo("+itG4cbwcw=="))
if not _v2qa then return nil end
local _v2qb = _v2qa:FindFirstChild(_pguo("+idc79z9dQrwL1/l"))
if _v2qb and _v2qb.Text ~= "" then return _v2qb.Text end
return nil
end
function _v4.autoSpawnGetGender()
local _v2qc = _v2.PlayerGui:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k="))
if not _v2qc then return _pguo("8y9e5Q==") end
local ok, result = pcall(function()
local _v2qd = _v2qc.LeftFrame.Customizer.Frame.Gender.Frame
local _v2qe = _v2qd:FindFirstChild(_pguo("8y9e5e3pdAzRIA=="))
if _v2qe then
local _v2qf = _v2qe:FindFirstChild(_pguo("6wdh9N3zax0="))
if _v2qf and _v2qf.Color.G > 0.8 then return _pguo("8y9e5Q==") end
end
return _pguo("+Ctf4cP5")
end)
return ok and result or _pguo("8y9e5Q==")
end
function _v4.autoSpawnIsAlive()
local _v2qg = _v2.Character
if not _v2qg then return false end
local _v2qh = _v2qg:FindFirstChildOfClass(_pguo("9jtf4cHzaRw="))
return _v2qh and _v2qh.Health > 0
end
function _v4.startAutoSpawn()
_v4.autoSpawnCleanup()
_v4.AUTO_SPAWN = true
_v4.AUTO_SPAWN_ATTEMPTS = 0
_v4.AUTO_SPAWN_TARGET = _v4.autoSpawnGetDinoName()
_v4.AUTO_SPAWN_GENDER = _v4.autoSpawnGetGender()
if not _v4.AUTO_SPAWN_TARGET then
pcall(function() _v2dh:Notify(_pguo("/ztG74/PcBnJIAigwOxlFp4qW+7AvHMd0itR9MbzbljfIFag3/VjE54vEuTG8m9Y2CdA89s="), 5) end)
_v4.AUTO_SPAWN = false
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
pcall(function() _v2dh:Notify(_pguo("/ztG74/PcBnJIAigw/NjE9sqEu/BvA==") .. _v4.AUTO_SPAWN_TARGET .. " (" .. _v4.AUTO_SPAWN_GENDER .. _pguo("l27QADu8cwjfI1/pwfsgKts/R+Xc6FMU0To="), 5) end)
local _v2qi = _v4.AUTO_SPAWN_DRAWS
local function _v2qj(_v2qk)
local _v2ql = _v4.safeDraw(_pguo("6itK9A=="))
_v2ql.Visible = true
_v2ql.Color = _v2qk.Color or Color3.fromRGB(255, 255, 255)
_v2ql.Size = _v2qk.Size or 16
_v2ql.Position = _v2qk.Position or Vector2.new(0, 0)
_v2ql.Text = _v2qk.Text or ""
_v2ql.Font = 2
_v2ql.Outline = true
_v2ql.OutlineColor = Color3.fromRGB(0, 0, 0)
table.insert(_v2qi, _v2ql)
return _v2ql
end
local function _v2qm(_v2qn)
local _v2qo = _v4.safeDraw(_pguo("7T9H4d35"))
_v2qo.Visible = true
_v2qo.Color = _v2qn.Color or Color3.fromRGB(10, 10, 10)
_v2qo.Size = _v2qn.Size or Vector2.new(100, 100)
_v2qo.Position = _v2qn.Position or Vector2.new(0, 0)
_v2qo.Filled = _v2qn.Filled ~= false
_v2qo.Transparency = _v2qn.Transparency or 0.3
if _v2qn.Thickness then _v2qo.Thickness = _v2qn.Thickness end
table.insert(_v2qi, _v2qo)
return _v2qo
end
local _v2qp, _v2qq = 12, 12
_v2qm({ Position = Vector2.new(_v2qp, _v2qq), Size = Vector2.new(300, 110) })
local _v2qr = _v2qm({ Position = Vector2.new(_v2qp, _v2qq), Size = Vector2.new(300, 110), Filled = false, Transparency = 1, Color = Color3.fromRGB(0, 200, 80), Thickness = 2 })
local _v2qs = _v2qj({ Text = _pguo("/xtmz4LPUDnpABLb/MxBNeM="), Position = Vector2.new(_v2qp + 6, _v2qq + 4), Size = 18, Color = Color3.fromRGB(0, 220, 80) })
local _v2qt = _v2qj({ Text = _pguo("6i9A58roOlg=") .. _v4.AUTO_SPAWN_TARGET .. _pguo("nmZ+z+zXRTyX"), Position = Vector2.new(_v2qp + 6, _v2qq + 26), Color = Color3.fromRGB(0, 255, 200) })
local _v2qu = _v2qj({ Text = _pguo("7SJd9NymIFWTYR+t"), Position = Vector2.new(_v2qp + 6, _v2qq + 44) })
local _v2qv = _v2qj({ Text = _pguo("/zpG5cLsdAuEbgI="), Position = Vector2.new(_v2qp + 6, _v2qq + 62) })
local _v2qw = _v2qj({ Text = _pguo("7TpT8tv1bh+QYBw="), Position = Vector2.new(_v2qp + 6, _v2qq + 80), Color = Color3.fromRGB(255, 200, 0) })
local _v2qx = game:GetService(_pguo("7CtC7Mb/YQzbKmH0wO5hH9s="))
local _v2qy = _v4.req(_v2qx:WaitForChild(_pguo("7i9R6877ZQs=")):WaitForChild(_pguo("9SBb9A==")))
local _v2qz = _v2qy.GetController(_pguo("/z5X+OzzbgzMIV7syu4="))
local _v2r0 = _v2qy.GetService(_pguo("/SZT8s7/dB3MHVfy2fVjHQ=="))
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
pcall(function()
local _v2r1 = _v2qz:GetInfo(_v4.AUTO_SPAWN_TARGET)
if _v2r1 then
_v2qu.Text = string.format(_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),
_v2r1.UsedTotal or 0, _v2r1.Slots or 0,
_v2r1.UsedZenith or 0, _v2r1.ZenithSlots or 0)
end
end)
task.wait(3)
end
end)
task.spawn(function()
while _v4.AUTO_SPAWN and not _v4.UNLOADED do
if _v4.autoSpawnIsAlive() then
_v4.autoSpawnCleanupGUI()
_v2qw.Text = _pguo("7R5z1+HZRFk=")
_v2qw.Color = Color3.fromRGB(0, 255, 0)
_v2qs.Text = _pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ==")
_v2qs.Color = Color3.fromRGB(0, 255, 0)
_v2qr.Color = Color3.fromRGB(0, 255, 0)
pcall(function() _v2dh:Notify(_pguo("/ztG74/PcBnJIAig1vN1X8wrEunBvSAryiFC8MbyZ1Y="), 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if not _v2.PlayerGui:FindFirstChild(_pguo("+idc79z9dQrtK17lzOhpF9AJR+k=")) then
_v2qw.Text = _pguo("8CFGoMDyIAvbIlfj2/VvFp49UfLK+W5YXM6moN/9dQvbKg==")
_v2qw.Color = Color3.fromRGB(255, 200, 0)
task.wait(1)
continue
end
_v4.AUTO_SPAWN_ATTEMPTS += 1
_v2qv.Text = _pguo("/zpG5cLsdAuEbg==") .. _v4.AUTO_SPAWN_ATTEMPTS
local _v2r2, _v2r3, _v2r4
local _v2r5 = pcall(function()
_v2r2, _v2r3, _v2r4 = _v2qz:RequestSlot(_v4.AUTO_SPAWN_TARGET)
end)
if not _v2r5 then
_v2qw.Text = _pguo("8CFGoM7sZQCerLIUj+9wGckgW+7IvGQRzCtR9A==")
pcall(function()
_v2r0:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _pguo("+itU4drwdA=="),
Variant = _pguo("+itU4drwdA=="),
})
end)
_v4.autoSpawnCleanupGUI()
_v2qw.Text = _pguo("7T5T98G8cx3QOhM=")
_v2qw.Color = Color3.fromRGB(0, 255, 100)
_v2qs.Text = _pguo("/xtmz4LPUDnpABKg69NOPQ==")
_v2qs.Color = Color3.fromRGB(0, 255, 0)
_v2qr.Color = Color3.fromRGB(0, 255, 0)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v2r2 then
_v2qw.Text = _pguo("7QJ91I/bUjn8DHfEjrxTCN85XOnB+yA=") .. _v4.AUTO_SPAWN_TARGET
_v2qw.Color = Color3.fromRGB(0, 255, 0)
_v2qs.Color = Color3.fromRGB(0, 255, 0)
_v2qr.Color = Color3.fromRGB(0, 255, 0)
pcall(function()
_v2r0:InitiateSpawning({
Species = _v4.AUTO_SPAWN_TARGET,
Gender = _v4.AUTO_SPAWN_GENDER,
Skin = _pguo("+itU4drwdA=="),
Variant = _pguo("+itU4drwdA=="),
})
end)
_v4.autoSpawnCleanupGUI()
_v2qs.Text = _pguo("/xtmz4LPUDnpABKg/MlDO/sdYQ==")
pcall(function() _v2dh:Notify(_pguo("/ztG74/PcBnJIAig3PBvDJ4pQOHN/mUcnihd8o8=") .. _v4.AUTO_SPAWN_TARGET .. "!", 4) end)
task.wait(5)
_v4.autoSpawnCleanup()
if _v4.autoSpawnToggle then pcall(function() _v4.autoSpawnToggle:Set(false) end) end
return
end
if _v2r3 == _pguo("+Dte7A==") and _v2r4 then
_v2qu.Text = string.format(_pguo("7SJd9NymIF3aYRfkj7woItsgW/THvCUckWtWqQ=="),
_v2r4.UsedTotal or 0, _v2r4.Slots or 0,
_v2r4.UsedZenith or 0, _v2r4.ZenithSlots or 0)
end
_v2qw.Text = _pguo("+Bt+zI9+gOyePULhwvFpFtlgHK4=")
_v2qw.Color = Color3.fromRGB(255, 80, 80)
_v2qr.Color = Color3.fromRGB(200, 60, 60)
task.wait(0.5)
end
end)
end
function _v4.unanchorFarmRoot()
local _v2r6 = _vkd()
if _v2r6 then pcall(function() _v2r6.Anchored = false end) end
end
local _v2r7 = nil
local _v2r8 = {}
local function _v2r9()
if _v2r7 then
pcall(function() _v4.VIM:SendKeyEvent(false, _v2r7, false, game) end)
_v2r7 = nil
end
if #_v2r8 > 0 then
_v4.restorePrompts(_v2r8)
_v2r8 = {}
end
_v4.unanchorFarmRoot()
if _v4.fossilFarmCleanup then _v4.fossilFarmCleanup() end
if not (_v4.NO_FALL_DAMAGE or _v4.ffOn()) then _v4.applyFallImmunity(false) end
end
function _v4.groundUnder(_v2ra)
local _v2rb = RaycastParams.new()
_v2rb.FilterType = Enum.RaycastFilterType.Exclude
_v2rb.FilterDescendantsInstances = { _v2.Character }
local _v2rc = workspace:Raycast(_v2ra + Vector3.new(0, 25, 0), Vector3.new(0, -300, 0), _v2rb)
return _v2rc and _v2rc.Position or nil
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
function _v4.fossilFarmAdvance(_v2rd)
if _v4.UNLOADED then return end
if not _v4.ffOn() then
if _v4.ffState then
_v4.fossilFarmCleanup()
local _v2re = _v2.Character
if _v2re and not _v4.AFK_FARM and not _v4.LEGIT_FARM then pcall(function() _v2re:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
end
return
end
if _v4.SAVE_DINO_ACTIVE then return end
local _v2rf = _v4.getLocalPhysicsRoot()
if not _v2rf then return end
if _v2rf.Anchored and _v4.ffState ~= _pguo("3SFe7Mr/dBHQKQ==") then
pcall(function() _v2rf.Anchored = false end)
end
_v2rd = math.min(_v2rd or 0.016, 0.1)
local _v2rg = _v2.Character
local _v2rh = _v2rf.Position
if not _v4.ffPos then _v4.ffPos = _v2rh end
if _v4.PUMPKIN_FARM and _v4.ffTarget and os.clock() >= (_v4.ffGiantT or 0) then
_v4.ffGiantT = os.clock() + 0.5
if _v4.ffGiantWaiting() then
_v4.ffDropTarget(_v2rf)
pcall(function() _v2dh:Notify(_pguo("/ztG74/MdRXOJVvulbxHEd8gRqD/6W0I1SdcoIK8cw/XOlHoxvJnWMohEunb"), 5) end)
end
end
if not _v4.ffTarget or not _v4.ffTarget.Parent then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2r8 > 0 then
_v4.restorePrompts(_v2r8)
_v2r8 = {}
end
local _v2ri = _v4.ffPlanRoute(_v2rh)[1]
if _v2ri then
_v4.ffTarget = _v2ri
_v4.ffState = _pguo("2CJL6cH7")
_v4.ffEmptyChecks = 0
_v4.ffWaiting = nil
_v4.ffTries, _v4.ffFace = 0, nil
local _v2rj = _v4.fossilPosOf(_v2ri)
if _v2rj then
local _v2rk = 3
pcall(function() _v2rk = _v2rf.Size.Y * 0.5 end)
_v4.ffPos = _v2rh
_v4.ffSetLeg(_v2rh, Vector3.new(_v2rj.X, _v4.ffLandY(_v2ri, _v2rj) + _v2rk + 0.5, _v2rj.Z))
else
_v4.ffTarget = nil
_v4.ffState = nil
end
else
if _v4.PUMPKIN_FARM then
local _v2rl = _v4.ffCF ~= nil
_v4.ffCF, _v4.ffDest, _v4.ffLeg = nil, nil, nil
if _v2rl then _v4.ffLand(_v2rf, function() return _v4.PUMPKIN_FARM and not _v4.ffTarget and not _v4.UNLOADED end) end
if _v4.ffLanding then return end
if _v2rg and _v2rg:GetAttribute(_pguo("6ite5d/zcgzXIFU=")) ~= nil then pcall(function() _v2rg:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end) end
if not _v4.ffWaiting then
_v4.ffWaiting = true
pcall(function() _v2dh:Notify(_pguo("/ztG74/MdRXOJVvulbx3Gdc6W+7IvGYXzG5C9cLsaxHQPRL0wLxzCN85XA=="), 5) end)
end
return
end
_v4.ffEmptyChecks = _v4.ffEmptyChecks + 1
if _v4.ffEmptyChecks > 180 and _v4.ffSwept then
_v4.FOSSIL_FARM = false
_v4.fossilFarmCleanup()
if _v4.fossilFarmToggle then pcall(function() _v4.fossilFarmToggle:Set(false) end) end
local _v2rm = 0
for _v2rn, _v2ro in pairs(_v4.ffSkip) do if _v2ro > os.clock() then _v2rm = _v2rm + 1 end end
pcall(function()
_v2dh:Notify(_v2rm > 0 and (_pguo("/yJeoMnzcwvXIkGgyf1yFdsqEqg=") .. _v2rm .. _pguo("nj1Z6d/sZRyEblHv2vBkWNAhRqDN+SAb0SJe5czoZRyX"))
or _pguo("/yJeoMnzcwvXIkGgyf1yFdsq"), 8)
end)
end
return
end
end
if (_v4.ffState == _pguo("3SFe7Mr/dBHQKQ==") or _v4.ffFace) and _v4.ffTarget and _v4.ffTarget.Parent then
local _v2rp = os.clock()
if _v2rp - _v4.ffSince > (_v4.ffTries == 0 and 60 or 20) then
if _v4.ffTries < 2 then
_v4.ffTries = _v4.ffTries + 1
_v4.ffReposition(_v2rf)
pcall(function() _v2dh:Notify((_pguo("mz0IoMHzdFjdIV7syv90HdpuS+XbvC1YyjxL6cH7IB7MIV+gzvJvDNYrQKDc9WQdnmYX5ICuKQ==")):format(_v4.ffWho(), _v4.ffTries), 4) end)
else
local _v2rq = _v4.ffWho()
_v4.ffSkip[_v4.ffTarget] = _v2rp + 600
_v4.ffDropTarget(_v2rf)
pcall(function() _v2dh:Notify(_v2rq .. _pguo("hG5B68bscB3abl3uyrxpDJ4tXfXD+CAW0ToS48DwbB3dOhKtj/FvDtcgVaDA8g=="), 5) end)
return
end
end
end
if _v4.ffState == _pguo("2CJL6cH7") and _v4.ffDest then
_v4.ffGr = _v4.ffGr or { stand = _v4.grStand(_v2rf), params = _v4.grParams() }
_v4.ffPos = _v4.grStep(_v4.ffGr, _v4.ffPos, _v4.ffDest, _v2rd)
if _v4.ffGr.stuck then
local _v2rr = _v4.ffWho()
_v4.ffSkip[_v4.ffTarget] = os.clock() + 600
_v4.ffGr = nil
_v4.ffDropTarget(_v2rf)
pcall(function() _v2dh:Notify(_v2rr .. _pguo("hG5B68bscB3abl3uyrxpDJ4tXfXD+CAW0ToS8sr9YxCeIVygyfNvDJ5jEu3A6mkW2W5d7g=="), 5) end)
return
end
if _v2rg then pcall(function() _v2rg:SetAttribute(_pguo("6ite5d/zcgzXIFU="), _v4.ffPos.Y) end) end
local _v2rs = Vector3.new(_v4.ffDest.X - _v4.ffPos.X, 0, _v4.ffDest.Z - _v4.ffPos.Z)
if _v2rs.Magnitude < 0.1 then
local _v2rt = _v4.ffCF or _v2rf.CFrame
_v4.ffCF = CFrame.new(_v4.ffPos) * (_v2rt - _v2rt.Position)
else
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v4.ffPos + _v2rs)
end
pcall(function()
_v2rf.CFrame = _v4.ffCF
_v2rf.AssemblyLinearVelocity = Vector3.zero
_v2rf.AssemblyAngularVelocity = Vector3.zero
end)
if Vector3.new(_v4.ffPos.X - _v4.ffDest.X, 0, _v4.ffPos.Z - _v4.ffDest.Z).Magnitude < 1.5 then
_v4.ffState = _pguo("3SFe7Mr/dBHQKQ==")
_v4.ffCollectStart = os.clock()
_v4.ffSince = _v4.ffCollectStart
if _v4.ffFace then
local _v2ru = Vector3.new(_v4.ffFace.X, _v4.ffPos.Y, _v4.ffFace.Z)
if (_v2ru - _v4.ffPos).Magnitude > 0.1 then
_v4.ffCF = CFrame.lookAt(_v4.ffPos, _v2ru)
pcall(function() _v2rf.CFrame = _v4.ffCF end)
end
end
pcall(function() _v2rf.Anchored = true end)
local _v2rv = _v2o4(_v4.ffTarget)
if _v2rv then
_v2r8 = {}
local _v2rw = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
if _v2rw then
for _v2rx, _v2ry in ipairs(_v2rw:GetChildren()) do
local _v2rz = _v2o4(_v2ry)
if _v2rz and _v2rz ~= _v2rv and _v2rz.Enabled then
pcall(function() _v2rz.Enabled = false end)
table.insert(_v2r8, _v2rz)
end
end
end
local _v2s0 = _v2rv.KeyboardKeyCode
if _v2s0 == nil or _v2s0 == Enum.KeyCode.Unknown then _v2s0 = Enum.KeyCode.E end
_v4.ffHeldKey = _v2s0
_v4.ffHoldDuration = (tonumber(_v2rv.HoldDuration) or 2.5) + 1
pcall(function() _v4.VIM:SendKeyEvent(true, _v2s0, false, game) end)
else
pcall(function() _v2rf.Anchored = false end)
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
if #_v2r8 > 0 then
_v4.restorePrompts(_v2r8)
_v2r8 = {}
end
pcall(function() _v2rf.Anchored = false end)
_v4.ffTarget = nil
_v4.ffState = nil
return
end
local _v2s1 = os.clock() - _v4.ffCollectStart
if _v2s1 > (_v4.ffHoldDuration or 4) then
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
pcall(function() _v4.VIM:SendKeyEvent(true, _v4.ffHeldKey, false, game) end)
end
_v4.ffCollectStart = os.clock()
end
end
end
function _v4.fossilFarmPin()
if _v4.UNLOADED or not _v4.ffOn() or not _v4.ffCF or _v4.mvHold() then return end
local _v2s2 = _v4.getLocalPhysicsRoot()
if _v2s2 and not _v2s2.Anchored then
pcall(function()
_v2s2.CFrame = _v4.ffCF
_v2s2.AssemblyLinearVelocity = Vector3.zero
_v2s2.AssemblyAngularVelocity = Vector3.zero
end)
end
end
function _v4.ffLand(_v2s3, _v2s4)
if not _v2s3 or _v4.ffLanding then return end
local _v2s5, _v2s6 = pcall(_v4.ffGroundY, _v2s3.Position.X, _v2s3.Position.Z, _v2s3.Position.Y, _v4.ffRayParams())
if not (_v2s5 and _v2s6) or _v2s3.Position.Y - _v2s6 < _v2s3.Size.Y * 0.5 + 8 then return end
_v4.ffLanding = true
task.spawn(function()
pcall(_v4.flyTo, _v2s3.Position, _v2s4, 0)
_v4.ffLanding = false
end)
end
function _v4.ffWho()
return (_v4.ffTarget and _v4.ffTarget:GetAttribute(_pguo("9i9e7MDrZR3QHkft3/dpFg=="))) and _pguo("/ztG74/MdRXOJVvu") or _pguo("+CFB88bwID7fPF8=")
end
function _v4.ffLandY(_v2s7, _v2s8)
if _v2s7:GetAttribute(_pguo("9i9e7MDrZR3QHkft3/dpFg==")) then
local _v2s9, _v2sa = pcall(_v4.ffGroundY, _v2s8.X, _v2s8.Z, _v2s8.Y, _v4.ffRayParams())
return (_v2s9 and _v2sa and math.abs(_v2sa - _v2s8.Y) < 15) and _v2sa or _v2s8.Y - 2
end
local _v2sb = _v4.groundUnder(_v2s8)
return _v2sb and _v2sb.Y or _v2s8.Y
end
function _v4.ffRayParams()
local _v2sc = RaycastParams.new()
_v2sc.FilterType = Enum.RaycastFilterType.Include
local _v2sd = workspace:FindFirstChild(_pguo("6SFA7Ms="))
local _v2se = _v2sd and _v2sd:FindFirstChild(_pguo("8yFH7tv9aRbN"))
_v2sc.FilterDescendantsInstances = _v2se and { workspace.Terrain, _v2se } or { workspace.Terrain }
_v2sc.IgnoreWater = false
return _v2sc
end
function _v4.ffGroundY(_v2sf, _v2sg, _v2sh, _v2si)
local _v2sj = workspace:Raycast(Vector3.new(_v2sf, _v2sh + 400, _v2sg), Vector3.new(0, -1200, 0), _v2si)
return _v2sj and _v2sj.Position.Y or nil
end
function _v4.ffSetLeg(_v2sk, _v2sl)
_v4.ffDest = _v2sl
_v4.ffLeg, _v4.ffLegI, _v4.ffGr = { _v2sl }, 1, nil
end
function _v4.ffDropTarget(_v2sm)
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2r8 > 0 then
_v4.restorePrompts(_v2r8)
_v2r8 = {}
end
if _v2sm then pcall(function() _v2sm.Anchored = false end) end
_v4.ffTarget, _v4.ffState, _v4.ffFace = nil, nil, nil
end
function _v4.ffReposition(_v2sn)
local _v2so = _v4.ffTarget
local _v2sp = _v2so and _v4.fossilPosOf(_v2so)
if not _v2sp then _v4.ffDropTarget(_v2sn) return end
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2r8 > 0 then
_v4.restorePrompts(_v2r8)
_v2r8 = {}
end
pcall(function() _v2sn.Anchored = false end)
local _v2sq = 6
pcall(function() _v2sq = math.clamp((_v2o4(_v2so).MaxActivationDistance or 10) * 0.6, 3, 8) end)
local _v2sr = _v4.ffPos or _v2sn.Position
if _v4.ffTries == 1 then _v4.ffBaseAng = math.atan2(_v2sr.Z - _v2sp.Z, _v2sr.X - _v2sp.X) end
local _v2ss = (_v4.ffBaseAng or 0) + _v4.ffTries * (2 * math.pi / 3)
local _v2st = _v2sp + Vector3.new(math.cos(_v2ss) * _v2sq, 0, math.sin(_v2ss) * _v2sq)
local _v2su = _v4.groundUnder(_v2st)
local _v2sv = 3
pcall(function() _v2sv = _v2sn.Size.Y * 0.5 end)
_v4.ffSetLeg(_v4.ffPos or _v2sn.Position, Vector3.new(_v2st.X, (_v2su and _v2su.Y or _v2sp.Y) + _v2sv + 0.5, _v2st.Z))
_v4.ffFace = _v2sp
_v4.ffState = _pguo("2CJL6cH7")
_v4.ffSince = os.clock()
end
function _v4.ffCamStep(_v2sw)
if _v4.UNLOADED or not _v4.ffOn() or not _v4.ffFace then return end
local _v2sx = workspace.CurrentCamera
if not _v2sx or _v2sx.CameraType ~= Enum.CameraType.Custom then return end
local _v2sy = _v2sx.CFrame
local _v2sz = _v2sx.Focus.Position
local _v2t0, _v2t1 = _v2sy.LookVector, _v4.ffFace - _v2sz
if Vector3.new(_v2t0.X, 0, _v2t0.Z).Magnitude < 1e-3 or Vector3.new(_v2t1.X, 0, _v2t1.Z).Magnitude < 1 then return end
local _v2t2 = math.atan2(-_v2t0.X, -_v2t0.Z)
local _v2t3 = math.atan2(-_v2t1.X, -_v2t1.Z)
local _v2t4 = 6 * math.min(_v2sw or 0.016, 0.1)
local _v2t5 = math.clamp(math.atan2(math.sin(_v2t3 - _v2t2), math.cos(_v2t3 - _v2t2)), -_v2t4, _v2t4)
if math.abs(_v2t5) < 1e-4 then return end
local _v2t6 = CFrame.Angles(0, _v2t5, 0)
_v2sx.CFrame = CFrame.new(_v2sz + _v2t6 * (_v2sy.Position - _v2sz)) * (_v2t6 * _v2sy.Rotation)
end
function _v4.fossilFarmCleanup()
if _v4.ffHeldKey then
pcall(function() _v4.VIM:SendKeyEvent(false, _v4.ffHeldKey, false, game) end)
_v4.ffHeldKey = nil
end
if #_v2r8 > 0 then
_v4.restorePrompts(_v2r8)
_v2r8 = {}
end
_v4.unanchorFarmRoot()
_v4.ffTarget = nil
_v4.ffState = nil
_v4.ffCF = nil
_v4.ffPos = nil
_v4.ffDest = nil
_v4.ffLeg, _v4.ffLegI = nil, nil
_v4.ffHoldDuration = nil
_v4.ffEmptyChecks = 0
_v4.ffFace, _v4.ffTries, _v4.ffSince, _v4.ffBaseAng = nil, 0, 0, nil
_v4.ffWaiting = nil
local _v2t7 = _v2.Character
if _v2t7 and not (_v4.ffOn() or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.FLY or _v4.SAVE_DINO_ACTIVE) then
pcall(function() _v2t7:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
end
end
function _v4.startFossilFarm(_v2t8)
local _v2t9 = workspace:FindFirstChild(_pguo("7T5T98H5ZD7RPUHpw+8="))
local _v2ta = _v2t8 and #_v4.pumpkinsNow() or (_v2t9 and #_v2t9:GetChildren() or 0)
pcall(function() _v2dh:Notify((_v2t8 and _pguo("/ztG74/MdRXOJVvulbwlHJ4+R+3f92kWzW5R7MDvZVjcNx6g3PlhCt0mW+7IvHQQ225f4d8=") or _pguo("+CFB88bwID7fPF+6j7lkWNghQfPG8HNY3SJd88q8YgGSbkHlzu5jENcgVaDb9GVY0y9C")):format(_v2ta), 5) end)
_v4.ffPos = nil
_v4.ffCF = nil
_v4.ffTarget = nil
_v4.ffState = nil
_v4.ffEmptyChecks = 0
_v4.ffSkip = setmetatable({}, { __mode = "k" })
_v4.ffSwept, _v4.ffScoutI = false, 0
end
table.insert(_v2l, _v1.RenderStepped:Connect(_v4.fossilFarmAdvance))
table.insert(_v2l, _v1.Heartbeat:Connect(_v4.fossilFarmPin))
pcall(function()
_v1:BindToRenderStep(_pguo("7hZtxsDvcxHSDVPt"), Enum.RenderPriority.Camera.Value + 2, _v4.ffCamStep)
end)
end
function _v4.getCC()
if _v4.ccCache then return _v4.ccCache end
pcall(function()
_v4.ccCache = _v4.req(_v4.WATER_RS.Packages.Knit).GetController(_pguo("/SFc89rxcAzXIVzDwPJ0CtEiXuXd"))
end)
return _v4.ccCache
end
_v4.CARRY_CORPSE = false
_v4.CARRY_RANGE = 1000
_v4.carryOrig = nil
function _v4.carryApply(_v2tb)
local function _v2tc(_v2td)
pcall(function()
for _v2te, _v2tf in pairs(_v2td.ProximityPrompts or {}) do
if typeof(_v2tf) == _pguo("9yBB9M7yYx0=") and _v2tf:IsA(_pguo("7jxd+MbxaQzHHkDvwux0")) then _v2tf.MaxActivationDistance = _v2td.Range end
end
end)
end
if _v2tb then
if _v4.carryOrig then return true end
local _v2tg
pcall(function() _v2tg = _v4.req(_v2.PlayerScripts.Client.Classes.Character.Grab) end)
if type(_v2tg) ~= _pguo("yi9Q7Mo=") then return false end
local _v2th = {}
for _v2ti, _v2tj in ipairs({ _pguo("+StGx939YivbOkbpwftz"), _pguo("/S9cx939YizfPFXl2w=="), _pguo("8ytX9NzLZRHZJkbMxvFpDA=="), _pguo("9z128s77RBHNL1Dsyvg="), _pguo("+TxT4g==") }) do
if type(_v2tg[_v2tj]) ~= _pguo("2Dtc49v1bxY=") then return false end
_v2th[_v2tj] = _v2tg[_v2tj]
end
_v4.carryOrig = { G = _v2tg, o = _v2th }
_v2tg.GetGrabSettings = function(self, ...)
local _v2tk = _v2th.GetGrabSettings(self, ...)
if type(_v2tk) ~= _pguo("yi9Q7Mo=") then return _v2tk end
local _v2tl = table.clone(_v2tk)
_v2tl.GrabLimit, _v2tl.DragLimit = math.huge, math.huge
_v2tl.DragReverseLock, _v2tl.DragDrain = false, 0
return _v2tl
end
_v2tg.CanGrabTarget = function(self, _v2tm, _v2tn, ...)
if _v2tn then return _v2th.CanGrabTarget(self, _v2tm, _v2tn, ...) end
return true
end
_v2tg.MeetsWeightLimit = function(self, _v2to, _v2tp, ...)
if _v2tp then return _v2th.MeetsWeightLimit(self, _v2to, _v2tp, ...) end
return true
end
_v2tg.IsDragDisabled = function() return false end
_v2tg.Grab = function(self, _v2tq, _v2tr, ...)
if _v2tr == _pguo("8ytT9A==") then return _v2th.Grab(self, _v2tq, _v2tr, ...) end
local _v2ts = self.BaseAttachment
self.BaseAttachment = nil
local _v2tt = table.pack(pcall(_v2th.Grab, self, _v2tq, _v2tr, ...))
self.BaseAttachment = _v2ts
if not _v2tt[1] then error(_v2tt[2], 0) end
return table.unpack(_v2tt, 2, _v2tt.n)
end
local _v2tu = _v4.getCC()
if type(_v2tu) == _pguo("yi9Q7Mo=") and type(_v2tu.GetConsumeRange) == _pguo("2Dtc49v1bxY=") then
local _v2tv = _v2tu.GetConsumeRange
_v4.carryOrig.CC, _v4.carryOrig.oRange = _v2tu, _v2tv
_v2tu.GetConsumeRange = function(self, ...)
return math.max(tonumber(_v2tv(self, ...)) or 0, _v4.CARRY_RANGE)
end
pcall(function() _v2tu.Range = _v2tu:GetConsumeRange() end)
_v2tc(_v2tu)
end
return true
end
local _v2tw = _v4.carryOrig
if _v2tw then
for _v2tx, _v2ty in pairs(_v2tw.o) do _v2tw.G[_v2tx] = _v2ty end
if _v2tw.CC then
_v2tw.CC.GetConsumeRange = _v2tw.oRange
pcall(function() _v2tw.CC.Range = _v2tw.CC:GetConsumeRange() end)
_v2tc(_v2tw.CC)
end
_v4.carryOrig = nil
end
return true
end
function _v4.khRange()
local _v2tz
pcall(function() _v2tz = _v2.Character:GetAttribute(_pguo("/SFc89rxcAzXIVzSzvJnHQ==")) end)
if type(_v2tz) == _pguo("0Dtf4sru") and _v2tz > 0 then return _v2tz end
pcall(function() _v2tz = _v4.getCC():GetConsumeRange() end)
if type(_v2tz) ~= _pguo("0Dtf4sru") or _v2tz <= 0 then _v2tz = 22 end
return _v2tz
end
function _v4.nearestCorpse(_v2u0)
local _v2u1 = _v4.getCC()
if not (_v2u1 and _v2u1.CorpseData and _v2u0) then return nil end
local _v2u2
pcall(function() _v2u2 = _v2.Character:GetAttribute(_pguo("6jdC5Q==")) end)
if _v4.trackWalls then pcall(_v4.trackWalls) end
local _v2u3 = RaycastParams.new()
_v2u3.FilterType = Enum.RaycastFilterType.Include
_v2u3.FilterDescendantsInstances = { workspace.Terrain }
local _v2u4, _v2u5, _v2u6
for _v2u7, _v2u8 in pairs(_v2u1.CorpseData) do
local _v2u9 = _v2u8 and _v2u8.Root
if _v2u9 and _v2u9.Parent and (tonumber(_v2u8.Weight) or 0) > 0 and tostring(_v2u8.Name) ~= tostring(_v2u2) then
local _v2ua
pcall(function()
_v2ua = _v2u9:IsA(_pguo("/C9B5f/9cgw=")) and _v2u9.Position or _v2u9:GetPivot().Position
end)
if _v2ua then
local _v2ub = (_v2ua - _v2u0).Magnitude
if not _v2u6 or _v2ub < _v2u6 then
local _v2uc = workspace:Raycast(Vector3.new(_v2ua.X, _v2ua.Y + 3000, _v2ua.Z), Vector3.new(0, -6000, 0), _v2u3)
local _v2ud = _v2uc ~= nil and _v2uc.Position.Y > _v2ua.Y + 25
if not _v2ud and not (_v4.wallCross and _v4.wallCross(_v2u0, _v2ua)) then _v2u4, _v2u5, _v2u6 = _v2u7, _v2u9, _v2ub end
end
end
end
end
return _v2u4, _v2u5, _v2u6
end
function _v4.warpToCorpse(_v2ue, _v2uf)
local _v2ug
pcall(function()
_v2ug = _v2uf:IsA(_pguo("/C9B5f/9cgw=")) and _v2uf.Position or _v2uf:GetPivot().Position
end)
if not _v2ug then return false end
local _v2uh = _v2ug + Vector3.new(_v4.TP_OFFSET or 8, 0, 0)
local _v2ui = _v4.flyTo(_v2uh, function() return _v4.TP_CORPSE and not (_v4.otherMoverOn and _v4.otherMoverOn()) end, 40)
return _v2ui and _v2ue.Parent ~= nil
and Vector3.new(_v2ue.Position.X - _v2ug.X, 0, _v2ue.Position.Z - _v2ug.Z).Magnitude < 40
end
_v4.addStep(30, function()
if _v4.UNLOADED or not _v4.TP_CORPSE or _v4.tpBusy then return end
if _v4.tpDone and not _v4.TP_CHAIN then return end
if _v4.FLY or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.ffOn() or _v4.SAVE_DINO_ACTIVE or _v4.BIOME_TRAVEL then return end
local _v2uj = _vkd()
if not (_v2uj and _v2uj.Parent) then return end
local _v2uk = _v4.getCC()
if not _v2uk then return end
if _v4.tpTargetId then
local _v2ul = _v2uk.CorpseData and _v2uk.CorpseData[_v4.tpTargetId]
if _v2ul and (tonumber(_v2ul.Weight) or 0) > 0 then return end
_v4.tpTargetId = nil
if not _v4.TP_CHAIN then _v4.tpDone = true return end
end
local _v2um, _v2un, _v2uo = _v4.nearestCorpse(_v2uj.Position)
if not _v2um then
if not _v4.tpNoneSaid then
_v4.tpNoneSaid = true
pcall(function() _v2dh:Notify(_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDB8yAb0TxC88q8dxHKJhLtyv10WMchR6DM/W5YzCtT48e8LVjJL1v0xvJnWNghQKDA8mU="), 5) end)
end
return
end
_v4.tpNoneSaid = nil
_v4.tpBusy = true
task.spawn(function()
_v4.applyFallImmunity(true)
pcall(function() _v2dh:Notify(_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDJ8HkR0CkS9MC8YVjdIUDw3Pkg") .. math.floor(_v2uo or 0) .. _pguo("nj1G9cvvIBnJL0s="), 4) end)
local _v2up = _v4.warpToCorpse(_v2uj, _v2un)
_v4.tpTargetId = _v2up and _v2um or nil
if _v2up and not _v4.TP_CHAIN then _v4.tpDone = true end
pcall(function()
_v2dh:Notify(_v2up and _pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDO6CAM1isS48DucAvb")
or (_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKA=") .. (_v4.TP_CORPSE and _pguo("3SFH7Mu8bhfKbkDlzv9oWNc6") or _pguo("zTpd8N/5ZA=="))), 5)
end)
task.delay(6, function()
if not (_v4.NO_FALL_DAMAGE or _v4.ffOn() or _v4.TP_CORPSE) then
_v4.applyFallImmunity(false)
end
end)
_v4.tpBusy = false
end)
end)
_v4.FPS_SAVER = false
do
local _v2uq = game:GetService(_pguo("8idV6Nv1bh8="))
local _v2ur = game:GetService(_pguo("7Dtc08rudhHdKw=="))
local _v2us
function _v4.applyFpsSaver(_v2ut)
if _v2ut then
if not _v2us then
_v2us = { shadows = _v2uq.GlobalShadows, fogEnd = _v2uq.FogEnd, fogStart = _v2uq.FogStart,
quality = nil, effects = {} }
pcall(function() _v2us.quality = settings().Rendering.QualityLevel end)
for _v2uu, _v2uv in ipairs(_v2uq:GetChildren()) do
if _v2uv:IsA(_pguo("7iFB9Or6Zh3dOg==")) or _v2uv:IsA(_pguo("/CJH8ur6Zh3dOg==")) then _v2us.effects[_v2uv] = _v2uv.Enabled end
end
end
pcall(function() if setfpscap and not _v4.IS_XENO then setfpscap(10) end end)
pcall(function() settings().Rendering.QualityLevel = Enum.QualityLevel.Level01 end)
pcall(function() _v2uq.GlobalShadows = false end)
pcall(function() _v2uq.FogStart = 0; _v2uq.FogEnd = 12 end)
for _v2uw, _v2ux in ipairs(_v2uq:GetChildren()) do
if _v2ux:IsA(_pguo("7iFB9Or6Zh3dOg==")) or _v2ux:IsA(_pguo("/CJH8ur6Zh3dOg==")) then pcall(function() _v2ux.Enabled = false end) end
end
pcall(function() _v2ur:Set3dRenderingEnabled(false) end)
else
pcall(function() _v2ur:Set3dRenderingEnabled(true) end)
pcall(function() if setfpscap and not _v4.IS_XENO then setfpscap(0) end end)
if _v2us then
pcall(function() if _v2us.quality then settings().Rendering.QualityLevel = _v2us.quality end end)
pcall(function() _v2uq.GlobalShadows = _v2us.shadows end)
pcall(function() _v2uq.FogStart = _v2us.fogStart; _v2uq.FogEnd = _v2us.fogEnd end)
for _v2uy, _v2uz in pairs(_v2us.effects) do pcall(function() if _v2uy and _v2uy.Parent then _v2uy.Enabled = _v2uz end end) end
_v2us = nil
end
end
end
end
local _v2v0 = _v2dh:AddTab({Name = _pguo("/ztG78n9chU=")})
local _v2v1 = _v2dh:AddTab({Name = _pguo("/SFf4s7o")})
local _v2v2 = _v2dh:AddTab({Name = _pguo("8yFE5cL5bgw=")})
local _v2v3 = _v2dh:AddTab({Name = _pguo("7Ctc5Mru")})
local _v2v4 = {}
local _v2v5
_v2v5 = _v2dl(_v2v0:AddSubTab({Name = _pguo("+CFB88bwID7fPF8=")}))
_v4.section(_v2v5, _pguo("+CFB88bwID7fPF8="), _pguo("/SFe7Mr/dAueKF3z3PVsC54oXfKP5W8Nni9H9MDxYQzXLVPsw+UucrQPR/TAvFAN0z5Z6cGmIAzWKxLzzvFlWMomW+7IvGYXzG564cPwbw/bK1yg3+ltCNUnXPOBvEcR3yBGoP/pbQjVJ1zzj/tvWNgnQPPbsCAZ0CoS6du8dxnXOkGgwPIgDNYrEufd83UW2m5U7928dBDbblzl1+ggF9ArEvTAvHMI3zlcro/LaQzWblDv2/QgF9BiEvDa8XAT1yBBoMzzbR2eLFfmwO5lWNghQfPG8HNWtER079zvaRSeCFPywqYgH9ErQaDb8yAd3y1aoMH5YQrcNxLmwO9zEdJiEuPA8Gwd3TpBoMboLFjKJlfuj/FvDts9EvTAvHQQ225c5dfoLlj3KBLhj/pvC80nXqDG7yAW0ToS8Mb/ax3abkfwj+tpDNYnXKDOvG0R0DtG5YO8aQyeOkDpyu8gGdkvW+6P+nIX025T7sDoaB3MbkHpy/kgD9c6WqDb9GVY3S9f5d39IBTRIVnpwfsgGcpuW/SDvGEW2m5b5o/oaBnKblThxvBzWMohXaDG6CAL1SdC84/oaBnKblTv3O9pFJ4vXOSP/28U0itR9Ny8dBDbbl30x/lyC5BEe/SP+28dzW5T7MDyZ1jKJlegyO5vDdAqEuHcvGYZzToS4dy8dBDbblXhwvkgGdIiXffcvGYXzG5L79ruIBzXIF2gh/V0WNYhXuTcvFIN0G5U7928eRfLYhLhwfggDMwhRvOP62gd0G5B9M7xaRbfblvzj/BvD5duU+7LvHMM0T5BoMnzcljfbl/vwvluDJ4nVKDb9GVYzStA9sruIB3IK0Cg3+lsFM1uW/SP/mEb1WAS18boaFjQIRL3zuhlCp4iV+bbvHkXyzwS5Mbyb1jdL1ygwPJsAZ45U+zEsCAL0W5Z5crsIBHKblbyxvJrEdApHA=="))
function _v4.ffTakeOver()
if _v4.LEGIT_FARM and _v4.legitFarmToggle then pcall(function() _v4.legitFarmToggle:Set(false) end) end
if _v4.AFK_FARM and _v4.afkFarmToggle then pcall(function() _v4.afkFarmToggle:Set(false) end) end
if _v4.FLY and _v4.flyToggle then pcall(function() _v4.flyToggle:Set(false) end) end
if _v4.AUTO_FLY and _v4.autoFlyToggle then pcall(function() _v4.autoFlyToggle:Set(false) end) end
_v4.LEGIT_FARM, _v4.AFK_FARM, _v4.FLY, _v4.AUTO_FLY = false, false, false, false
end
function _v4.ffSwitchedOff()
local _v2v6 = _v4.ffState == _pguo("2CJL6cH7") and _v4.getLocalPhysicsRoot()
_v2r9()
if _v2v6 and not _v4.otherMoverOn() then
_v4.ffLand(_v2v6, function() return not (_v4.otherMoverOn() or _v4.UNLOADED) end)
end
end
_v4.fossilFarmToggle = _v2v5:AddToggle({
Name = _pguo("+CFB88bwID7fPF8="),
Skull = true,
Default = false,
Callback = function(_v2v7)
_v4.FOSSIL_FARM = _v2v7
if _v2v7 then
_v4.ffTakeOver()
_v4.startFossilFarm()
else
_v4.ffSwitchedOff()
end
end
})
_v4.pumpkinFarmToggle = _v2v5:AddToggle({
Name = _pguo("/ztG74/MdRXOJVvu"),
Skull = true,
Default = false,
Callback = function(_v2v8)
_v4.PUMPKIN_FARM = _v2v8
if _v2v8 then
_v4.ffTakeOver()
_v4.startFossilFarm(true)
else
_v4.ffSwitchedOff()
end
end
})
_v2v5 = _v2dl(_v2v0:AddSubTab({Name = _pguo("/ztG78n9chU=")}))
_v4.section(_v2v5, _pguo("/ztG78n9chU="), _pguo("/ztG74/LYQzbPAigy+5pFtU9EubA7iAB0TsS98f5bh3IK0Cg1vN1Cp4qW+7Au3NY1itT5I/1c1jROFfyj+thDNs8Eq2P62EU1W5H8I/ob1jfbl7hxPkgF8xuQOnZ+XJY3yBWoMboIB7XIl7zj+VvDcxuReHb+XJYyiES5trwbFjJJ0boj/JvWNUrS6Db8yAIzCtB84G8KCvXIFHlj+hoHZ4pU+3Ku3NYyz5W4dv5IA/fOlfyj/NuFMduVOnD8HNY3zoS8sr9bFjJL0bl3bIpcukvRuXdvEEWxzla5d35IFDKK0H0hqYgDMwnV/OP6G9Y2jxb7sS8dxDbPFeg1vN1WM06U+7LsCAZyS9LoMnubxWeOVP0yu4sWNw3EvTK8GwR0CkS9Mf5IB/fI1eg1vN1WN88V6DG8iAP3zpX8o/6bwqeLxLtwPFlFspuUOXJ83IdnitT48e8cxHOYBLOwOggCMwhROXBvHQXnjld8sS8eR3KYDjGwO5jHZ4LU/SVvGUZyj0S9Mf5IBbbL0Dl3OggHtEhVqDB8yAV3zpG5d28dxDfOhL5wOlyWNonXO+I7yAc1ytGoMbvLFjXIFHs2vhpFtluQuzO8nQLni8S487ubhHIIUDlj/JvCtMvXuzWvGMZ0CBd9I/obw3dJhw="))
_v4.autoWaterToggle = _v2v5:AddToggle({
Name = _pguo("/ztG74/LYQzbPA=="),
Default = false,
Callback = function(_v2v9) _v4.AUTO_WATER = _v2v9 end
})
_v2v4.waterAnywhere = _v2v5:AddToggle({
Name = _pguo("6S9G5d28QRbHOVrl3fk="),
Default = false,
Callback = function(_v2va) _v4.WATER_ANYWHERE = _v2va; _v4.anywhereSips = 0 end
})
_v4.forceEatToggle = _v2v5:AddToggle({
Name = _pguo("+CFA48q8RRnK"),
Default = false,
Callback = function(_v2vb)
_v4.FORCE_EAT = _v2vb
if _v2vb and _v4.AFK_FARM then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("+CFA48q8RRnKbkLh2u9lHJ45WunD+SA5+AUSxs7ubVjXPRLvwbwoDNYrEubO7m1Y1i9BoMboc1jROVygyv10Hcxn"), 5) end end)
end
end
})
_v4.section(_v2v5, _pguo("+CFA48q8RRnKbmHl2+hpFtk9"), _pguo("7StG9MbyZwueKF3yj9pvCt0rEsXO6C5Y6iZX+Y/4b1jQIUboxvJnWMsgXuXc7yA+0TxR5Y/ZYQyeJ0GgwPIucrQIU/PbvEUZynQS4sboZQueL0Ggyf1zDJ4vQaDb9GVY2S9f5Y/9bBTROUGggrxvFttuUOnb+SAdyCtA+Y+sLkCePVfjwPJkC55mU+7WvGYZzTpX8o/9bhyeOlrlj+9lCsgrQKDG+24XzCtBoMrqZQrHblDp2/kpVp4BVOaP/mkM2z0S6M7wZljfPRLvyehlFpJuVOnD8GkW2W5L79q8dQieKUDhy+lhFNI3HIrq/XRY8SBe+Y/LaB3Qbnr1wftyAYRuReHG6HNYyyBG6cO8eRfLPBLmwPNkWNo8XfDcvGFY0idG9MP5IBrbKF3yyrx0F84+W+7IvHUIkm5B74/ybwzWJ1znj/VzWMkvQfTK+C5Y8ShUoML5YRbNblv0j/lhDM1uUe/B73QZ0Dpe+YGWTB3fOFeg/P9yGc49CKDc6G8IzW5X4dv1bh+eLxLww/1uDJ45WunD+SAZniJb9NvwZVjYIV3kj/VzWM06W+zDvGwd2DoS78G8aQyeZlPiwOl0WMo5XaDA+iAB0TtAoMv1bheZPRLixuhlC5JuXuXO7m4d2m5T84/1dFjbL0bzhrAgC9FuW/SP+G8dzW5c79u8ZB3NPlP3wbAgGdAqEvTd+WEMzW5G6M7oIAjSL1z0j/1zWNsjQvTWvHMXnidGoMr9dAuePV3tyuhoEdApEuXD72VW"))
_v2v4.fastEat = _v2v5:AddToggle({
Name = _pguo("+C9B9I/ZYQw="),
Default = true,
Callback = function(_v2vc) _v4.FAST_EAT = _v2vc end
})
_v2v4.eatWhenHungry = _v2v5:AddToggle({
Name = _pguo("+y9GoODybAGeGVrlwbxIDdApQPk="),
Default = false,
Callback = function(_v2vd) _v4.EAT_WHEN_HUNGRY = _v2vd end
})
_v2v4.leaveScraps = _v2v5:AddToggle({
Name = _pguo("8itT9sq8UxvML0Lz"),
Default = false,
Callback = function(_v2ve) _v4.LEAVE_SCRAPS = _v2ve end
})
if not _v4.IS_XENO then
_v4.section(_v2v5, _pguo("/S9A8ta8QRbHbnHv3exzHQ=="), _pguo("/S9A8ta8QRbHbnHv3exzHYRuQunM9yANzm5T7ta8YxfMPkHlg7xoF8krROXdvGgd3zhLrI/6chfTbkfwj+hvWI9+ArCP73QN2j0S4dj9eViTbkLyyu9zWPluU/SP9XRUniFAoOjuYRqeIVygxuhzWNMrXPWPsSAZ0CoS487ucgGeJ0agzuggD98iWenB+yALzitX5I/1bgvKK1Pkj/NmWNo8U+fI9W4fnidGro/fbwrOPVfzj/NuFMd0Eufd/WIa1yBVoM68bBHIKxLkxvJvWNUrV/DcvHQQ225V4cL5JwueIF3ywv1sWNInX+nb7y5Y8ShUoN/pdAueOlrlj/thFdtpQaDA625Y0idf6dvvIBrfLVmu"))
_v2v4.carryCorpse = _v2v5:AddToggle({
Name = _pguo("/S9A8ta8QRbHbnHv3exzHQ=="),
Default = false,
Callback = function(_v2vf)
_v4.CARRY_CORPSE = _v2vf
if not _v4.carryApply(_v2vf) and _v2vf then
_v4.CARRY_CORPSE = false
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("/S9A8ta8QRbHbnHv3exzHYRuRujKvGcZ0ysV84/7chncblHvy/kgD989Eu7A6CAe0Ttc5IO8bhfKJlvuyLxjEN8gVeXL"), 5) end end)
end
end
})
end
_v4.antiAfkToggle = _v2v5:AddToggle({
Name = _pguo("/yBG6Y/dRjM="),
Default = false,
Callback = function(_v2vg) _v4.ANTI_AFK = _v2vg end
})
_v4.section(_v2v5, _pguo("/SJX4cHwaRbbPUE="), _pguo("/ztG74/fbB3fIF7pwflzC4RuWeXK7HNYxyFHoMzwZRnQblP12/NtGconUeHD8HlWnhpa5Y/7YRXbbkXpw/AgFtE6EuPD+WEWnjdd9Y/raBHSKxL5wOkgHd86HKDm+iARym5B9MDsc1jMJ0HpwfsgEcpuQfTO7nQLni1e5c7yaRbZblPnzvVuVrQHXObG8mkM2259+Nb7ZRaEbkH0wOxzWMchR/KP83gB2StcoMvuYRHQJ1znj+luHNs8ReHb+XJWngdGoNjzchPNblD5j/RvFNonXOeP6Ggdni1e5c7yaRbZbkH0zuhlVg=="))
_v4.autoCleanToggle = _v2v5:AddToggle({
Name = _pguo("/ztG74/fbB3fIF7pwflzCw=="),
Default = false,
Callback = function(_v2vh) _v4.AUTO_CLEAN = _v2vh end
})
_v2v4.infOxygen = _v2v5:AddToggle({
Name = _pguo("9yBU6cH1dB2eAUr5yPlu"),
Default = false,
Callback = function(_v2vi) _v4.INF_OXYGEN = _v2vi end
})
_v2v5 = _v2dl(_v2v0:AddSubTab({Name = _pguo("/ztG74/PcBnJIA==")}))
_v4.section(_v2v5, _pguo("/ztG74/PcBnJIA=="), _pguo("7T5T7dy8Uh3PO1fz289sF8puVO/dvHkXyzwS88rwZRvKK1agzuxlAJ4qW+7AvGELnihT89u8YQuePl3z3PViFNtuQe+P5W8NnilA4c28YVjNIl30j+hoHZ4nXPPb/W4MniFc5Y/zcB3QPRyKpdNwHdBuVunB8yAL2yJX49v1bxaSbkLpzPcgDNYrEuTG8m9Y3yBWoMj5bhzbPBL5wOkgD98gRqyP6Ggd0G5G9d3yIAzWJ0GgwPIuWPc6EuzA/2sLnjdd9d28dBnMKVf0j/1uHJ4oW/LK7yAGj3wCoN35cQ3bPUbzj+xlCp4jW+7a6GVYyyBG6cO8aQyeKVf03LxpFpJuRujK8iALzi9F7ty8eRfLblP12/NtGconUeHD8HlWtERl7933c1jbOFfuj/VmWMomV6D982IU0TYS98byZBfJblvzj/JvDJ4oXePa72UcnmZH88rvIBzXPFfj27xLFtc6EuPO8GwLkm5c79u8bRfLPVegzPBpG9U9G66Pz3QXzj0S4drobxXfOlvjzvBsAZ4hXOPKvHkXy25B8M7rblY="))
_v4.autoSpawnToggle = _v2v5:AddToggle({
Name = _pguo("/ztG74/PcBnJIA=="),
Default = false,
Callback = function(_v2vj)
if _v2vj then
_v4.startAutoSpawn()
else
_v4.autoSpawnCleanup()
end
end
})
function _v4.markScaled(_v2vk, _v2vl, _v2vm)
local _v2vn = (tonumber(_v2vm) or 1) >= 5
for _v2vo, _v2vp in ipairs({ _v2vk, _v2vl }) do
if _v2vp and _v2vp.SetSkull then pcall(function() _v2vp:SetSkull(_v2vn) end) end
end
end
_v2v5 = _v2dl(_v2v1:AddSubTab({Name = _pguo("9idG4sDkID3GPlPuy/ly")}))
_v4.section(_v2v5, _pguo("9idG4sDkID3GPlPuy/ly"), _pguo("8y9Z5dy8Tyz2C2Cg3/BhAds8QaDK/XMR2zwS9MC8aBHKblD5j/tyF8knXOeP6Ggdnj5T8tvvIBfYbkboyvEgAdE7EuPO8iAU3yBWoM7yIBnKOlPjxLxvFpBEOMXB/WIU22566dv+bwCeC0rwzvJkHcx0EvTa7m4LnidGoMDyLnLoJ0H1zvBpAttueunb/m8A2z0IoMvuYQ/NbkboyrxlFtIvQOfK+CAI3zxG84/vb1jHIUegzP1uWM0rV6DY9GEMnjdd9Y/9ch2ePUXpwftpFtluU/SBvE8W0jcS+cDpIAvbKxL0x/lzHZBEZOnc6WEUngFC4cz1dAGEblrv2LxzF9InVqDb9G8L225Q79f5c1jSIV3rgZZIEcosXfiP0XUUyidC7Mb5ckKeJl33j/F1G9ZuUOnI+2UKnjpa5Y/sYQrKPRLnyugsWMs+EvTAvDFIxmASwcHldBDXIFWgye5vFZ57SqDM/XIK1ytBoM68cxPLIl6gzvJkWNc9EvbK7nlY0SxE6cDpc1jKIRLhweVvFttuReHb/2gR0CkS4Y/6aR/WOhw="))
_v4.hitboxToggle = _v2v5:AddToggle({
Name = _pguo("+yBT4sP5IDDXOlDv17xFAM4vXOTK7g=="),
Default = false,
Callback = function(_v2vq)
_v4.HITBOX_EXPANDER = _v2vq
if not _v2vq then _v4.resetAllHitboxes() end
end
})
_v2v4.hitboxVis = _v2v5:AddToggle({
Name = _pguo("6CdB9c7waQLbbnrp2/5vANs9"),
Default = false,
Callback = function(_v2vr)
_v4.HITBOX_VISUALIZE = _v2vr
if not _v2vr then
for _v2vs, _v2vt in _v0:GetPlayers() do
if _v2vt ~= _v2 then
_v4.visualizePlayerHitbox(_v2vt, false)
_v4.hbShown[_v2vt] = nil
end
end
end
end
})
_v2v4.hitboxVisOpacity = _v2v5:AddSlider({
Name = _pguo("6CdB9c7wIDfOL1Hp2+U="),
Min = 0, Max = 100, Default = 50,
Callback = function(_v2vu) _v4.HITBOX_VIS_TRANSPARENCY = 1 - (_v2vu / 100) end
})
_v2v4.hitboxMult = _v2v5:AddSlider({
Name = _pguo("9idG4sDkIDXLIkbp3/BpHcw="),
Min = 1, Max = 10, Default = 1,
Callback = function(_v2vv) _v4.HITBOX_MULTIPLIER = _v2vv; _v4.markScaled(_v4.hitboxToggle, _v2v4.hitboxMult, _v2vv) end
})
_v4.section(_v2v5, _pguo("9idG4sDkID/MIUfw3A=="), _pguo("6SZb48e8YhfaNxLwzu50C54hXKDW83UKnjpT8sj5dFjHIUegzu5lWN8iXu/Y+WRYyiES6MboLlj/IEv0x/VuH543XfWP6W4M1y1ZoMz9bhbROhLiyrxoEcpuU/SP/WwUkm5B74/lbw3MblP02/1jE81uQfTA7CAczCdU9MbyZ1jRIEbvj/0gFNspEvfH+W5YxyFHoNj9bgzbKhL0x/kgENsvVq6P1GUZ2m5b84/oaB2eO0H1zvAgG9YhW+PKsg=="))
_v2v4.hitboxGroups = _v4.groupDropdown(_v2v5, _pguo("7i9A9Nw="), _v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER)
_v2v5 = _v2dl(_v2v1:AddSubTab({Name = _pguo("7CtT48c=")}))
_v4.section(_v2v5, _pguo("7CtT48c="), _pguo("8y9Z5dy8WTfrblPiw/kgDNFuWunbvGYK0SMS5trudBDbPBLh2P15WNw3Eufd83cR0CkS+cDpcljROVygzuh0Gd0lEvLO8mcdkEQ4xcH9YhTbbmDlzv9oQp46R/LB7yARym5d7oGWVhHNO1PsxuZlWOwrU+PHpiAczC9F84/lbw3Mbl33wbxyGdApV6Dc8yAB0TsS487yIAvbKxLp27IgN9AiS6DW83VYzStXoNv0aQuQRGDlzv9oWOgnQfXO8CA3zi9R6dvlOljWIUWg3PNsEdpuRujO6CAa0TYS7MDzawuQRGDlzv9oWPM7XvTG7GwR2zwIoMfzd1jYL0Cg1vN1Cp48U+7I+SAdxjpX7svvLFjLPhL0wLwxSMZgEsHB5XQQ1yBVoMnubxWee0qgzP1yCtcrQaDOvHMTyyJeoM7yZFjXPRL2yu55WNEsROnA6XNWnhxT6dz5IBHKblOgw/V0DNIrEuHbvGFYyidf5Y+xIAzWKxLzyu52HcxuUejK/2sLnjpa6dywIBnQKhL0wPMgFcstWqDI+XQLnidV7sDuZRyQRGLh3ehzQp45WunM9CAX2G5L79ruIBfJIBLwzu50C54pV/SP6GgdnitK9N39IArfIFXlgQ=="))
_v2v4.reach = _v2v5:AddToggle({
Name = _pguo("+yBT4sP5ICrbL1Ho"),
Default = false,
Callback = function(_v2vw)
_v4.REACH_ENABLED = _v2vw
if not _v2vw and not _v4.REACH_VISUALIZE then _v4.resetLocalReach() end
end
})
_v2v4.reachVis = _v2v5:AddToggle({
Name = _pguo("6CdB9c7waQLbbmDlzv9o"),
Default = false,
Callback = function(_v2vx)
_v4.REACH_VISUALIZE = _v2vx
if not _v2vx and not _v4.REACH_ENABLED then _v4.resetLocalReach() end
end
})
_v2v4.reachVisOpacity = _v2v5:AddSlider({
Name = _pguo("7CtT48e8VhHNO1Psj9NwGd0nRvk="),
Min = 0, Max = 100, Default = 50,
Callback = function(_v2vy) _v4.REACH_VIS_TRANSPARENCY = 1 - (_v2vy / 100) end
})
_v2v4.reachMult = _v2v5:AddSlider({
Name = _pguo("7CtT48e8TQ3SOlvww/VlCg=="),
Min = 1, Max = 10, Default = 1,
Callback = function(_v2vz) _v4.REACH_MULTIPLIER = _v2vz; _v4.markScaled(_v2v4.reach, _v2v4.reachMult, _v2vz) end
})
_v2v4.reachGroups = _v4.groupDropdown(_v2v5, _pguo("7i9A9Nw="), _v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER,
_v4.resetLocalReach)
_v2v5 = _v2dl(_v2v1:AddSubTab({Name = _pguo("/zpG4cz3ICzRIV7z")}))
_v4.section(_v2v5, _pguo("9yBB9M7ydFj/OkbhzPc="), _pguo("9yBB9M7ydFj/OkbhzPc6WM0+V+XL7yANzm5G6Mq8YQzKL1Hrj/1uEdMvRunA8ixYzSES+cDpIBvfIBLz2PVuH54vVeHG8iAL0SFc5d2yCjnKOlPjxLxTCNsrVrqP9G8PniNH48e8ZhnNOlfygbxWHcw3EujG+2hY0iFd69y8bxrIJ1313PB5WMk8Xe7IvHQXni9c+cDyZVjJL0bjx/VuH5BEfO+P3XQM3y1ZoOzzbxTaIUXulbxyHdMhROXcvHQQ225F4cboIBrbOkXlyvIgGco6U+PE7yAd0Dpb8srweVaeGlrp3LxpC549V/DO7mEM225U8sDxIAzWKxLhwfVtGconXe6P/WIXyCseoM7yZFjKJleg2+tvWM06U+PEsg=="))
_v2v4.noAtkCd = _v2v5:AddToggle({
Name = _pguo("9yBB9M7ydFj/OkbhzPc="),
Skull = true,
Default = false,
Callback = function(_v2w0)
_v4.NO_ATK_CD = _v2w0
if not _v2w0 then _v4.restoreAttackSpeed() end
end
})
_v2v4.attackSpeed = _v2v5:AddSlider({
Name = _pguo("/zpG4cz3ICvOK1fk"),
Min = 1, Max = 10, Default = 3,
Callback = function(_v2w1) _v4.ATTACK_SPEED = _v2w1 end
})
if _v4.CAP.charstate then
_v2v4.noAtkCooldown = _v2v5:AddToggle({
Name = _pguo("8CESwdvoYRvVbnHvwPBkF8kg"),
Skull = true,
Default = false,
Callback = function(_v2w2) _v4.NO_ATK_COOLDOWN = _v2w2 end
})
end
_v4.section(_v2v5, _pguo("7Sde5cHoIDnXIw=="), _pguo("8y9Z5dy8bxbSNxL0x/kgGtEqS6Df/XIMzW5L79q8YxDRIUHlj/RpDMovUOzKvG8WnitE5d3lbxbbYhLzwLx5F8s8EuHb6GEb1T0S4cPrYQHNbl7hwfggD9YrQOWP5W8Nnj5b48T5ZFjXIEH0yv1kWNEoEu/BvHcQ3zpX9sruIAjfPEagxu8gFtsvQOXc6C5ytAtc4c3wZVjtJ17lweggOdcjCKDb6XIWzW5b9I/zbla0HlPy2+86WMkmW+PHvHAZzDpBoNzoYQGeJlv02/1iFNtg"))
_v2v4.silentAim = _v2v5:AddToggle({
Name = _pguo("+yBT4sP5ICvXIlfu27xBEdM="),
Default = false,
Callback = function(_v2w3)
_v4.SILENT_AIM = _v2w3
if not _v2w3 then _v4.resetAllHitboxes() end
end
})
_v2v4.silentGroups = _v4.groupDropdown(_v2v5, _pguo("7i9A9Nw="), _v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER)
_v2v5 = _v2dl(_v2v2:AddSubTab({Name = _pguo("7S9E5Y/YaRbR")}))
_v4.section(_v2v5, _pguo("7S9E5Y/YaRbR"), _pguo("9idW5dy8eRfLbkXoyu5lWNAhRujG8mdY3S9coN35YRvWbkvv2rAgDNYrXKDN7mkW2T0S+cDpIBrfLVmupZZTGcgrEsTG8m9CniJb5tvvIAHROxLv2uggF9huQOXO/2hY3yBWoMfzbBzNbkvv2rx0ENs8V6DJ7m8C2yAcoOboIB/RK0Ggzu8gENcpWqDO7yAM1isS593zdRbablHswO9lWNw3HqDa7CAM0W4DtZ+8cwzLKkGuj8tpDNZuXO+P9Gkf1m5V8sDpbhyeL0Dv2vJkWNc6EvPb/XkLniJd94O8bxbSNxLh3LxoEdkmEuHcvHkXyzwS5Mbyb1jdL1yg3P1mHdI3EuzO8mRY2Dxd7Y/9dFjXOkGgx/lhFMomHKD76XIW1yBVoMboIBfYKBLzyuhzWMchR6DL83cWniFcoNv0ZVjQK1Pyyu90WNk8XfXB+CAZym5G6M7oIBDbJ1Xo27x3EcomEu7AvHAU3zdX8ty8YxTRPVegzeUsWN8gVqDG6CALyiFC84/oaB3MKxyg5vogCNIvS+Xd7yAZzCsS4cPwIBnMIUfuy7AgEcpuQfTO5XNYyz4S9cHoaRSeLxLz3/N0WNc9EuPD+WEKkG5r79q8YxnQbkH0xvBsWNInV6DL83cWni9c5I/vbB3bPhL3x/VsHZ4mW+TL+W5Unj1doNbzdVjWK1PsgZZBDcohH9PO6mVY3zoSyMr9bAzWbhe6j/RpHNs9EvnA6SAZyzpd7c7oaRvfIl75j+toHdBuS+/a7iAQ2y9e9Me8ZArRPkGgw/N3Vp4IW/LK7yAX0C1XrI/oaB3QbkXhxuhzWMsgRunDvHkXy25a4dn5IBDbL17ly7xhGtE4V6Db9GVY0idc5Y/+ZR7RPFegxuggG98gEubG7mVY3ylT6cGyCjHQLV71y/kgOtIrV+SVvGMXyyBG84/+bB3bKlvuyLxkGdMvVeWP/XNY3yJA5c74eVjSIUH0gbw0SJtuWuXO8HQQnjla6cP5IBrSK1fkxvJnWI17F6DM83UWyj0S4dy8NV2SbkHvj+VvDZ4mW+TKvGId2CFA5Y/oaB2eLF7lyvggE9ciXvOP5W8NkERz9dvzLSvfOFeg+/RyHc0mXezLvCVCnjpa5Y/0ZRnSOlqgw/l2HdJuRujO6CAMzCdV58ruc1jXOhw="))
_v2dv = _v2v5:AddToggle({
Name = _pguo("7S9E5Y/YaRbR"),
Skull = true,
Default = false,
Callback = function(_v2w4)
if _v2w4 and not _v4.SAVE_DINO_ACTIVE then _v2eg()
elseif not _v2w4 and _v4.SAVE_DINO_ACTIVE then _v4.releaseDino() end
end
})
_v4.autoSaveToggle = _v2v5:AddToggle({
Name = _pguo("/ztG74LPYQ7bblP0j9RlGdI6WqCK"),
Default = false,
Keybind = true,
Callback = function(_v2w5)
_v4.AUTO_SAVE = _v2w5
if _v2w5 and _v4.AFK_FARM and _v4.AFK_FARM_SAFETY then
pcall(function() if _v4.Hub then _v4.Hub:Notify(_pguo("/ztG74LPYQ7bbkLh2u9lHJ45WunD+SA5+AUSxs7ubV/NbmHhyfl0AZ4nQaDA8g=="), 5) end end)
end
end
})
_v4.autoSaveBleedToggle = _v2v5:AddToggle({
Name = _pguo("9yBR7Nr4ZVj8Ilflyw=="),
Default = true,
Callback = function(_v2w6) _v4.AUTO_SAVE_BLEED = _v2w6 end
})
_v4.autoSaveSlider = _v2v5:AddSlider({
Name = _pguo("/ztG74LPYQ7bbmbo3flzENEiVqCK"),
Min = 1, Max = 95, Default = 30,
Callback = function(_v2w7) _v4.AUTO_SAVE_PCT = _v2w7 end
})
_v2v5 = _v2dl(_v2v2:AddSubTab({Name = _pguo("8yFE5cL5bgw=")}))
_v4.section(_v2v5, _pguo("+CJL"), _pguo("+CJLuo/6dRTSbl/hwelhFJ4oXunI9HRWnhlz0+u8dBeeI132yrAgK84vUeWP6G9Y2SES9d+wIDvKPF6g2/MgH9FuVu/Y8i5Y8yFE5cL5bgyeKF3sw/N3C543XfXdvGMZ0ytA4YGWUxHaK0Xh1u8gEcpuVe/K7yAZzW5U4dzoIBnNbkboyrxnGdMrEuHD8G8PzW5U7928eRfLPBLkxvJvWJYnRqDH82wczW5g9cG8ZhfMbkvv2rU7WM06QOHG+2gMnjtCoMDuIBzROVygxuggH9ErQaDO6CBJi34c"))
_v4.flyToggle = _v2v5:AddToggle({
Name = _pguo("+CJL"),
Skull = true,
Default = false,
Callback = function(_v2w8) _v4.FLY = _v2w8 end
})
function _v4.moversOff(_v2w9)
for _v2wa, _v2wb in pairs({ flyToggle = _pguo("+AJr"), autoFlyToggle = _pguo("/xtmz/DaTCE="), tpCorpseToggle = _pguo("6h5tw+DOUCv7"),
biomeToggle = _pguo("/Ad9zerDVCr/GHfM"), fossilFarmToggle = _pguo("+AFh0+bQXz7/HH8="), pumpkinFarmToggle = _pguo("7ht/0OTVTif4D2DN"), afkFarmToggle = _pguo("/wh53+ndUjU="),
legitFarmToggle = _pguo("8gt1yfvDRjnsAw==") }) do
local _v2wc = _v4[_v2wa]
if _v2wa ~= _v2w9 and _v4[_v2wb] and _v2wc and _v2wc.Set then pcall(function() _v2wc:Set(false) end) end
end
end
function _v4.otherMoverOn()
return _v4.FLY or _v4.AUTO_FLY or _v4.AFK_FARM or _v4.LEGIT_FARM or _v4.ffOn() or _v4.SAVE_DINO_ACTIVE or false
end
_v4.section(_v2v5, _pguo("/ztG74/abAE="), _pguo("/ztG74/abAGEblrhwfhzVdg8V+WP6HIZyCtero/Fbw3MblbpwfMgHtInV/OP/SAP1ypXrI/vbBfJblHp3f9sHZ5/B7CP73QN2j0S4c3zdh2eOlrlj/tyF8sgVqyP/W4cnjpa5Y//aQrdIlegy+5pHso9EuHM7m8LzW5G6Mq8bRnOYhL02u5uEdApEuLO/2tY3zoS9Mf5IBXfPhXzj/lkH9tgEtfG+GVY3yBWoNzwbw+eIVyg3+lyCNE9V7qP6GgdnilT7cq8bxbSNxLj3flkEco9EuHN83UMnnscto/vdA3aPRLhj+9lG9EgVqDA+iAMzC9E5cOwIBnQKhLhj+9oGcw+EvTa7m5Y0iFB5dy8dBDfOhLj3flkEcpgOMnbvGcX2z0S4du8eRfLPBLkxvJvX81uXffBvHIN0G5B8Mr5ZFjKJkDv2vtoWMomV6Dc/W0dniNd9sruIBnNbnTs1rwoC9IhReXdvG8O2zwS987oZQqSbkXoyu5lWMomV6DI/W0dniRH5Mj5c1jNOVvtwvVuH5dgEs/J+jpY1zoS7Mroc1jHIUegy/N3Fp4pV+7b8HlW"))
_v4.autoFlyToggle = _v2v5:AddToggle({
Name = _pguo("/ztG74/abAE="),
Skull = true,
Default = false,
Callback = function(_v2wd)
_v4.AUTO_FLY = _v2wd
if _v2wd then _v4.moversOff(_pguo("3ztG7+nweSzRKVXsyg==")) end
end
})
_v4.section(_v2v5, _pguo("6ite5d/zcgyeOl2g7PNyCM0r"), _pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDb/WsdzW5L79q8YRTRIFWg2/RlWNk8XfXB+CAM0W5G6Mq8bh3fPFfz27xjF8w+QeWP6GgZym5B9MbwbFjWL0GgwvlhDJ4hXKDG6CAZ0CoS89vzcAueLFfzxvhlWNc6HKDm6CAL1SdC84//bwrOPVfzj/NmWMchR/KP83cWnj1C5cz1ZQuSbkfuy/lyWMomV6DC/XBY0TwS8M7vdFjKJlegwv1wX81uV+TI+S5y/SZT6cG8QxfMPkHl3KYgD9YrXKDb9GEMni1d8t/vZVjXPRLz2+5pCM4rVqyP+mwBniFcoNvzIAzWKxLuyuR0WNEgV66P02YehG5b9I/vdBfOPRLhyehlCp4hXOWB"))
_v4.tpCorpseToggle = _v2v5:AddToggle({
Name = _pguo("6ite5d/zcgyeOl2g7PNyCM0r"),
Skull = true,
Default = false,
Callback = function(_v2we)
_v4.TP_CORPSE = _v2we
_v4.tpDone, _v4.tpTargetId, _v4.tpNoneSaid = false, nil, nil
if _v2we then
_v4.moversOff(_pguo("yj5x793scx3qIVXnw/k="))
local _v2wf = true
pcall(function() _v2wf = _v4.dinoEatsMeat() end)
if not _v2wf then pcall(function() _v2dh:Notify(_pguo("6ite5d/zcgyeOl2g7PNyCM0rCKDW83UKnipb7sC8ZBfbPRLuwOggHd86Eu3K/XRYk25b9I/raRTSbkH0xvBsWNgiS6Db9GUK2w=="), 5) end) end
end
end
})
_v2v4.tpChain = _v2v5:AddToggle({
Name = _pguo("/SZT6cG8QxfMPkHl3A=="),
Default = false,
Callback = function(_v2wg) _v4.TP_CHAIN = _v2wg end
})
_v4.biomeDestItems = (_v4.biomeNames and _v4.biomeNames()) or {}
if #_v4.biomeDestItems == 0 then _v4.biomeDestItems = { _pguo("liBd7sq1") } end
_v4.BIOME_TARGET = (_v4.biomeDestItems[1] ~= _pguo("liBd7sq1")) and _v4.biomeDestItems[1] or nil
_v4.section(_v2v5, _pguo("/Cdd7cq8VArfOFfs"), _pguo("/Cdd7cq8VArfOFfslbxwEd0lEuGP7GwZ3SsS78G8dBDXPRLtzuwgUMomV6DB/W0d2m5C7M7/ZQueJ0bzj/FhCJ4vXOSP/28Vzi9B84/vaBfJZxL1wfhlCp4KV/Pb9W4Zyidd7oO8dBDbIBL02u5uWNc6Eu/BsiAh0TtAoMv1bheeKV3l3Lx0ENs8V6DO8G8W2W5G6Mq8ZwrRO1zkj/1uHJ4nRqDc62kM3SZX84/1dAvbIlSgwPpmWMkmV+6P5W8Nni9A8sbqZVaeGkfywbxpDJ4hVOaP6G9YzTpd8I/raB3MKxL5wOkgGcwrHIrm6CAf0StBoM7oIAHRO0Cgy/VuF5k9EvLa8iALzitX5IO8YRbabkbywOhzWMkmV+6P73QZ0ydc4Y/1c1jSIUWuj8tpDNZuXO+P62EM2zwS7Mr6dFjHIUfyj/hpFtFuUeHBvG8W0jcS987wa1SePV2gxPllCJ4nRqDL7mkW1Sdc54E="))
_v4.biomeToggle = _v2v5:AddToggle({
Name = _pguo("/Cdd7cq8VArfOFfs"),
Skull = true,
Default = false,
Callback = function(_v2wh)
if not _v2wh then _v4.BIOME_TRAVEL = false return end
if not _v4.BIOME_TARGET then
pcall(function() _v2dh:Notify(_pguo("/Cdd7cq8VArfOFfslbxwEd0lEuGP2GULyidc4dv1bxaeKFvy3Og="), 4) end)
task.defer(function() pcall(function() _v4.biomeToggle:Set(false) end) end)
return
end
if _v4.BIOME_TRAVEL then return end
_v4.moversOff(_pguo("3Cdd7crIbx/ZIlc="))
_v4.BIOME_TRAVEL = true
task.spawn(_v4.travelToBiome, _v4.BIOME_TARGET)
end
})
_v2v4.biomeDest = _v2v5:AddDropdown({
Name = _pguo("+itB9MbyYQzXIVw="),
Items = _v4.biomeDestItems,
Default = _v4.biomeDestItems[1],
Callback = function(_v2wi) _v4.BIOME_TARGET = (_v2wi ~= _pguo("liBd7sq1")) and _v2wi or nil end
})
_v4.section(_v2v5, _pguo("/ztG74/Rbw7b"), _pguo("/ztG74/LYRTVbh2g++5vDJ5hEtLa8iBXnh1C8sbydEKeJl3sy+8gDNYvRqDI/WkMnihd8o/lbw2SbkHvj+VvDcxuVunB8yAT2ytC84/xbw7XIFWgwPIgEco9Eu/Y8iBVnjpa5Y/7YRXbaUGgwOtuWNMhROXC+W4Mkm5T9I/1dAueIUXuj+9wHdsqEqjY/WwTkm5G8sDoLFjMO1ysj+9wCtcgRqmDvHcQ1y1aoMbvIA/WL0ag2/RlWNkvX+WP/28N0DpBoMnzcljTIUTpwfsucvc6EuvK+XALnild6cH7IA/WJ17lj+VvDZ4vQOWP6GEa3CtWoMDpdFaeAVzs1rxvFttuU/SP/SAM1yNXrI/9bhyeJ0ag3OhhFto9EuHc9WQdnjla6cP5IBmeKFPywrAgPtI3Eu/dvFMZyCsSxMbyb1jXPRLy2vJuEdApHA=="))
do
local _v2wj = false
local function _v2wk(_v2wl, _v2wm)
if _v2wj then return end
_v2wj = true
_v4.AUTO_GAIT = _v2wm and _v2wl or nil
for _v2wn, _v2wo in pairs({ Walk = _v2v4.autoWalk, Trot = _v2v4.autoTrot, Run = _v2v4.autoRun, Sprint = _v2v4.autoSprint }) do
if _v2wn ~= _v2wl and _v2wo and _v2wo.Set then pcall(function() _v2wo:Set(false) end) end
end
if not _v2wm and _v4.autoGaitStop then _v4.autoGaitStop() end
_v2wj = false
end
_v2v4.autoWalk = _v2v5:AddToggle({ Name = _pguo("/ztG74/LYRTV"), Default = false, Callback = function(_v2wp) _v2wk(_pguo("6S9e6w=="), _v2wp) end })
_v2v4.autoTrot = _v2v5:AddToggle({ Name = _pguo("/ztG74/IchfK"), Default = false, Callback = function(_v2wq) _v2wk(_pguo("6jxd9A=="), _v2wq) end })
_v2v4.autoRun = _v2v5:AddToggle({ Name = _pguo("/ztG74/OdRY="), Default = false, Callback = function(_v2wr) _v2wk(_pguo("7Dtc"), _v2wr) end })
_v2v4.autoSprint = _v2v5:AddToggle({ Name = _pguo("/ztG74/PcArXIEY="), Default = false, Callback = function(_v2ws) _v2wk(_pguo("7T5A6cHo"), _v2ws) end })
end
_v4.section(_v2v5, _pguo("9yBB9M68VA3MIA=="), _pguo("9yBB9M68VA3MIAigx/NsHJ46WuWP92UBnjpdoNzyYQieJ1zz2/1uDNI3EvTAvGYZ3SsS98f5ch3IK0Cg1vN1Cp4tU+3K7mFY1z0S8MD1bgzXIFWu"))
_v2gh = _v2v5:AddKeybind({
Name = _pguo("9yBB9M68VA3MIA=="),
Default = Enum.KeyCode.Unknown,
Callback = function() end
})
_v4.section(_v2v5, _pguo("7ztb48S8VA3MIA=="), _pguo("7ztb48S8VA3MIAig2+lyFs1uS+/avGYZzTpX8o/oaBnQblzv3fFhFJJuRenb9G8Nym5G6Mq8aRbNOlPu27xzFt8+HIr76XIWnh1G8sryZwzWdBLowOsgFcstWqDJ/XMM2zwc"))
_v2v4.quickTurn = _v2v5:AddToggle({
Name = _pguo("7ztb48S8VA3MIA=="),
Default = false,
Keybind = true,
Callback = function(_v2wt) _v4.QUICK_TURN = _v2wt end
})
_v2v4.turnSpeed = _v2v5:AddSlider({
Name = _pguo("6jtA7o/PdArbIFX0xw=="),
Min = 0, Max = 500, Default = 250,
Callback = function(_v2wu) _v4.TURN_SPEED = _v2wu end
})
_v4.section(_v2v5, _pguo("/ztG74/bchfJ"), _pguo("/ztG74/bchfJdBLryvlwC543XfWP+3IXySdc54/raQzWIUf0j+VvDZ4mU/bG8mdYyiES5MC8YRbHOlrpwfsu"))
_v4.autoGrowToggle = _v2v5:AddToggle({
Name = _pguo("/ztG74/bchfJ"),
Default = false,
Callback = function(_v2wv)
if _v2wv and not _v4.AUTO_GROW then
_v4.AUTO_GROW = true
_vkb = nil
_v4.startAutoGrow()
elseif not _v2wv and _v4.AUTO_GROW then
_v4.stopAutoGrow()
end
_v4.AUTO_GROW = _v2wv
end
})
_v2v5 = _v2dl(_v2v3:AddSubTab({Name = _pguo("+x1i")}))
_v4.section(_v2v5, _pguo("7iJT+cruID3tHg=="), _pguo("7jtG84/9IBTfLFfsj/1iF8grEuXZ+XIBnj5e4db5cljNJl33xvJnWMkmU/TK6mUKnjdd9Y/oaRvVblrl3fkuWPAhUO/L5SAd0j1XoMz9bljNK1egzvJ5WNEoEunbsgpy+yBT4sP5ID3tHgig2+lyFs1uRujKvGwZ3Cte84/zbla0Glrlj+5lC8puUejA83Mdnjla4du8YQjOK1Py3LxvFp46WuWP8GEa2yIIoMH9bR2SblbpwfMgDMc+V6yP+3IXyTpaoNzoYR/bYhLnyvJkHcxiEujK/WwM1mIS89v9bRHQLx6g2PlpH9Y6HqDL9XMM3yBR5YGWRhfRKhKvj8thDNs8Eq+P1W4e2y1G6cDyIDrfPAig3PRvD81uRujO6CALyi9GoM7vIBmeLFPygbxODdMsV/KVvHMQ0TlBoMXpcwyeOlrlj+phFMsrEu/BvG8W225R78PzdQrbKhLsxvJlWNcgQfTK/WRWnhpa5da8YQjOK1Pyj/NuG9tuRujKvHMdzDhX8o/0YQuePVfu27x0EN86EvDD/XkdzGlBoNn9bA3bYhL3x/VjEJ4nRqDL82ULnihd8o/yZRnMLEug3/BhAds8QaDY9GUW2zhX8o/1dFjdJlPuyPlzVrQHXObK/3QR0SASws7uIFeeAEftzflyWM0mXfeP/SAc1yBdp9y8aRbYK1H0xvNuWP0Gc9Lo2TpY2idc79y8dxHKJhLhwbxpFtgrUfTG825Y3zpG4cz3IFD/O0H03fNyGc46XfKDvFMZyzxd8Mf9ZxnQL0qsj9tpH98gXfTA72ENzDtBoM7yZFjTIUDlhrxmEdIiEunbvGIBnitT9MbyZ1SeL1zkj/10WI9+AqDb9GURzG5b7sn5YwzXIVygzuh0Gd0lEuPO8iAR0ChX49u8dxDRK0Tl3bx0ENs3EuLG6GVWtAdc5sr/dB3abmbhyKYgFd88WfOP+XYdzDcS5Mbyb1jKJlP0j9VTWNcgVOXM6GUcnmMS4sbodB3QblD5j/0gG9YvQOfK+CAR0ChX49v1bxaeL0b0zv9rWJNuU/OP1U4++w1mxeuwIA/XOlqg2/RlWNcgVOXM6GkX0GlBoMH9bR2eZnTl2flyVJ4AV/Xd82wX2SdR4cOyLlaXbkXoyvIgDNYrEufO8WVY2SdE5dy8bxbbYBLMxuplWNghQKDK6mUKx25W6cHzIBHQbkDhwftlVrQMXuXK+CA97R4IoML9chPNbkboyrxwGcw6Eu/JvHQQ2ydAoMf5YRTKJhLizu4gDNYvRqDG7yAZ0jxX4cvlIBTRPUag2/MgGtIrV+TG8mdWnhxX5I/xZRnQPRL0x/10WNYrU+zb9CARzW5V78H5IBbRbl/h2+hlCp45WuHbsgoo3y1ZoOrPUEKePVrv2O8gCN8tWaDB/W0dni9c5I/xZRXcK0CgzPN1FspuVO/dvGUO2zxLoN/wYQHbPBLpwbxhWM4vUeuBvFIdzztb8srvIAHROxL0wLxiHZ4nXKDOvHAZ3SUS9MC8cx3bblT1w/AgHNs6U+nD7y5y7i9R64/QZRnaK0Cg6s9QQp4vVuTcvGFY2SFe5I/QRTn6C2Cg2/1nWNEgEvDO/2tY0itT5Mruc1jRIBL0wOwgF9huRujKvHAZ3SUS6cH6b1a0Glf427xIEdkmXunI9HRCni9W5Ny8YVjcL1HryO5vDdAqEuLK9GkW2m5G6Mq8dB3GOhLzwLxpDJ49RuHW7yAK2y9W4c3wZVjfKVPpwe90WNw8W+fH6CAfzCFH7suy"))
_v4.espToggle = _v2v5:AddToggle({
Name = _pguo("+yBT4sP5ID3tHg=="),
Default = false,
Callback = function(_v2ww)
_v4.ESP_ENABLED = _v2ww
if not _v2ww then
for _v2wx, _v2wy in pairs(_v4.espCache) do
if _v2wy.billboard then _v2wy.billboard.Enabled = false end
end
end
end
})
_v2v4.showName = _v2v5:AddToggle({ Name = _pguo("7SZd94/SYRXb"), Default = true, Callback = function(_v2wz) _v4.SHOW_NAME = _v2wz end })
_v2v4.showDino = _v2v5:AddToggle({ Name = _pguo("7SZd94/YaRbRbmb53/k="), Default = true, Callback = function(_v2x0) _v4.SHOW_DINO = _v2x0 end })
_v2v4.showStage = _v2v5:AddToggle({ Name = _pguo("7SZd94/PdBnZKw=="), Default = true, Callback = function(_v2x1) _v4.SHOW_STAGE = _v2x1 end })
_v2v4.showGender = _v2v5:AddToggle({ Name = _pguo("7SZd94/bZRbaK0A="), Default = true, Callback = function(_v2x2) _v4.SHOW_GENDER = _v2x2 end })
_v2v4.showHealth = _v2v5:AddToggle({ Name = _pguo("7SZd94/UZRnSOlo="), Default = true, Callback = function(_v2x3) _v4.SHOW_HEALTH = _v2x3 end })
_v2v4.showStamina = _v2v5:AddToggle({ Name = _pguo("7SZd94/PdBnTJ1zh"), Default = true, Callback = function(_v2x4) _v4.SHOW_STAMINA = _v2x4 end })
_v2v4.foodBar = _v2v5:AddToggle({ Name = _pguo("+CFd5I/eYQo="), Default = false, Callback = function(_v2x5) _v4.SHOW_FOOD_BAR = _v2x5 end })
_v2v4.foodNum = _v2v5:AddToggle({ Name = _pguo("+CFd5I/SdRXcK0A="), Default = false, Callback = function(_v2x6) _v4.SHOW_FOOD_NUM = _v2x6 end })
_v2v4.waterBar = _v2v5:AddToggle({ Name = _pguo("6S9G5d28QhnM"), Default = false, Callback = function(_v2x7) _v4.SHOW_WATER_BAR = _v2x7 end })
_v2v4.waterNum = _v2v5:AddToggle({ Name = _pguo("6S9G5d28Tg3TLFfy"), Default = false, Callback = function(_v2x8) _v4.SHOW_WATER_NUM = _v2x8 end })
_v2v4.infectBar = _v2v5:AddToggle({ Name = _pguo("9yBU5czoaRfQbnDh3Q=="), Default = false, Callback = function(_v2x9) _v4.SHOW_INFECT_BAR = _v2x9 end })
_v2v4.infectNum = _v2v5:AddToggle({ Name = _pguo("9yBU5czoaRfQbnz1wv5lCg=="), Default = false, Callback = function(_v2xa) _v4.SHOW_INFECT_NUM = _v2xa end })
_v2v4.infectTag = _v2v5:AddToggle({ Name = _pguo("9yBU5czoZRyeGlPn"), Default = false, Callback = function(_v2xb) _v4.SHOW_INFECTED = _v2xb end })
_v2v4.showWeight = _v2v5:AddToggle({ Name = _pguo("7SZd94/LZRHZJkY="), Default = true, Callback = function(_v2xc) _v4.SHOW_WEIGHT = _v2xc end })
_v2v4.bleed = _v2v5:AddToggle({ Name = _pguo("/CJX5cu8RSvu"), Default = false, Callback = function(_v2xd) _v4.BLEED_ESP = _v2xd end })
_v2v4.packESP = _v2v5:AddToggle({ Name = _pguo("7i9R64/ZUyg="), Default = false, Callback = function(_v2xe) _v4.PACK_ESP = _v2xe end })
_v2v4.packLeader = _v2v5:AddToggle({ Name = _pguo("7i9R64/QZRnaK0Cg6s9Q"), Default = false, Callback = function(_v2xf) _v4.PACK_LEADER_ESP = _v2xf end })
_v2v4.showDist = _v2v5:AddToggle({ Name = _pguo("7SZd94/YaQvKL1zjyg=="), Default = true, Callback = function(_v2xg) _v4.SHOW_DISTANCE = _v2xg end })
_v2v4.textHL = _v2v5:AddToggle({ Name = _pguo("6itK9I/UaR/WIlvnx+g="), Default = false, Callback = function(_v2xh) _v4.TEXT_HIGHLIGHT = _v2xh end })
_v4.section(_v2v5, _pguo("+x1ioPz1eh0="), _pguo("9iFFoM31Z1jKJleg6s9QWNIvUOXD7yAZ0CoS4s7uc1jfPFegy+5hD9BgOIr7+XgMnh1b+sqmIB7RIEag3PV6HZBEeuXO8HQQngxT8o/UZRHZJkaggLxXEdo6WrqP72kC225d5o/oaB2eJlfhw+hoWNwvQK6lz3QZ0ydc4Y/eYQqeBlfpyPR0WJFuZenL6GhCnj1b+sq8bx6eOlrlj+90GdMnXOGDvGYX0SoeoNj9dB3MblPuy7xpFtgrUfTG825Y3C9A84E="))
_v2v4.textSize = _v2v5:AddSlider({ Name = _pguo("6itK9I/PaQLb"), Min = 8, Max = 28, Default = 14, Callback = function(_v2xi) _v4.TEXT_SIZE = _v2xi end })
_v2v4.hbHeight = _v2v5:AddSlider({ Name = _pguo("9itT7Nv0IDrfPBLIyvVnEMo="), Min = 2, Max = 20, Default = 6, Callback = function(_v2xj) _v4.HEALTH_BAR_HEIGHT = _v2xj end })
_v2v4.hbWidth = _v2v5:AddSlider({ Name = _pguo("9itT7Nv0IDrfPBLXxvh0EA=="), Min = 20, Max = 100, Default = 80, Callback = function(_v2xk) _v4.HEALTH_BAR_WIDTH = _v2xk / 100 end })
_v2v4.sbHeight = _v2v5:AddSlider({ Name = _pguo("7TpT7cbyYVj8L0Cg5/lpH9Y6"), Min = 2, Max = 20, Default = 6, Callback = function(_v2xl) _v4.STAM_BAR_HEIGHT = _v2xl end })
_v2v4.sbWidth = _v2v5:AddSlider({ Name = _pguo("7TpT7cbyYVj8L0Cg+PVkDNY="), Min = 20, Max = 100, Default = 80, Callback = function(_v2xm) _v4.STAM_BAR_WIDTH = _v2xm / 100 end })
_v4.section(_v2v5, _pguo("+x1ioP39bh/b"), _pguo("+x1ioOv1cwzfIFHllbxoF8luVOHdvGEP3zcS4Y/sbBnHK0CgzP1uWNwrEuHB+CALyide7I/7ZQyeLxLszv5lFJBufu/Y+XJY1zoS6cm8dBDbbkHj3fllFp4pV/TcvGINzTcc"))
_v2v4.espDist = _v2v5:AddSlider({ Name = _pguo("+x1ioOv1cwzfIFHl"), Min = 100, Max = 10000, Default = 5000, Callback = function(_v2xn) _v4.ESP_DISTANCE = _v2xn end })
_v4.section(_v2v5, _pguo("/SZT7dw="), _pguo("+yBT4sP5IDvWL1/zlbxmEdIiQaDf8GEB2zxBoNj1dBCeLxLzwPBpHJ4tXezA6XJYxyFHoMz9bljNK1eg2/RyF8spWqDY/WwUzWIS6MbwbAueL1zkj+hyHds9HKDg8mwBnjdd9Y/vZR2eJ0aupd9oGdM9EsbG8GxY6jxT7tzsYQrbIFH5lbxoF8luQe/D9WRYyiZXoMn1bBSeJ0Gupd9oGdM9Es/a6GwR0CsS1N39bgvOL0Dlwf95Qp4mXfeP728U1yoS9Mf5IBfLOl7pwfkgEc1g"))
_v2v4.chams = _v2v5:AddToggle({
Name = _pguo("+yBT4sP5IDvWL1/z"),
Default = false,
Callback = function(_v2xo)
_v4.CHAMS_ENABLED = _v2xo
if not _v2xo then
for _v2xp, _v2xq in pairs(_v4.espCache) do
if _v2xq.highlight then _v2xq.highlight.Enabled = false end
end
end
end
})
_v2v4.chamsFill = _v2v5:AddSlider({ Name = _pguo("/SZT7dy8RhHSIhLU3f1uC84vQOXB/3k="), Min = 0, Max = 100, Default = 70, Callback = function(_v2xr) _v4.CHAMS_FILL_TRANSPARENCY = _v2xr / 100 end })
_v2v4.chamsOutline = _v2v5:AddSlider({ Name = _pguo("/SZT7dy8Tw3KIlvuyrxUCt8gQfDO7mUW3Tc="), Min = 0, Max = 100, Default = 0, Callback = function(_v2xs) _v4.CHAMS_OUTLINE_TRANSPARENCY = _v2xs / 100 end })
_v4.section(_v2v5, _pguo("+CdB6I/ZUyg="), _pguo("+CdB6I/ZUyiEbl7hzflsC54oW/PHvGkWnjpa5Y/rYQzbPBw="))
_v2v4.fishESP = _v2v5:AddToggle({
Name = _pguo("+CdB6I/ZUyg="),
Default = false,
Callback = function(_v2xt) _v4.FISH_ESP = _v2xt end,
})
_v4.section(_v2v5, _pguo("/SFA8Nz5ID3tHg=="), _pguo("7SZd94/fbwrOPVfzlbxsGdwrXvOP/28Kzj1X84/oaBnKbkH0xvBsWNYvROWP8WUZym5e5cnoLljtOkDp3+xlHJ49WeXD+XQX0D0S4d35IBbROhLszv5lFNIrVq6l328Kzj1Xr+L5YQyeGlf427xTEcQrCKDJ824Mnj1b+sq8ZhfMbkbowO9lWNIvUOXD7y5y/SFA8Nz5IDzXPUbhwf9lQp4mXfeP+mEKni9F4da8YxfMPkHl3LxhCttuQfTG8GxY0i9Q5cPwZRyQRGHowOsgMdAoV+Pb9W8WhG5T5MvvIBmeIlvuyrx1FtorQKDM83IIzSsS4cH4IBXbL0agw/1iHdI9HKD49GkU225U8srvaFjXOhLjwOluDM1uVu/Y8iAM0W5F6MryIBHKbkDv2+8gVZ4oQOXc9CAV2y9GoMj1dh3Nblzvj/VuHtstRunA8i5Y8SBR5Y/ubwzKK1ygxuggDMs8XPOP+3Id2yAS4cH4IArbL1bzj85PLOoLfKyP62kM1m5a79i8bQ3dJhLpwfplG8onXe6P824dnixb9Mq8ZxHIK0Gg1vN1Cp4qW+7AvGEW2m5a79i8bRnQNxLixuhlC547XPTG8CAB0TtAoML5dB3Mblvzj/p1FNJgEs/B8HlY3SFA8Nz5c1jfIFagwvlhDJ48XfSUvHAU3yBG84O8ZR/ZPRLhwfggGtEgV/OP8mUO2zwS5MCy"))
_v2v4.corpse = _v2v5:AddToggle({
Name = _pguo("7SZd94/fbwrOPVfz"),
Default = false,
Callback = function(_v2xu) _v4.CORPSE_ESP = _v2xu; _vdh() end
})
_v2v4.worldTextSize = _v2v5:AddSlider({
Name = _pguo("/SFA8Nz5LzXbL0ag+/l4DJ4dW/rK"),
Min = 8, Max = 32, Default = 12,
Callback = function(_v2xv) _v4.WORLD_TEXT_SIZE = _v2xv end
})
_v2v4.corpseDist = _v2v5:AddSlider({
Name = _pguo("/SFA8Nz5IDzXPUbhwf9l"),
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v2xw) _v4.CORPSE_DISTANCE = _v2xw; if _v4.CORPSE_ESP then _vdh() end end
})
_v2v4.corpseInf = _v2v5:AddToggle({
Name = _pguo("7SZd94/Vbh7bLUbpwPI="),
Default = true,
Callback = function(_v2xx) _v4.CORPSE_INF_ESP = _v2xx end
})
_v4.section(_v2v5, _pguo("8ytT9I+zID7RIVag6s9Q"), _pguo("7SZd94/RZRnKdBLszv5lFM1uXu/A72VY0ytT9I/weRHQKRLvwbx0ENtuVfLA6W4ckER/5c7oIDzXPUbhwf9lQp4mXfeP+mEKni9F4da8aQyeJ0Gg3OhpFNJuXuHN+WwU2yoc"))
_v2v4.meat = _v2v5:AddToggle({
Name = _pguo("7SZd94/RZRnK"),
Default = false,
Callback = function(_v2xy) _v4.MEAT_ESP = _v2xy; _vdh() end
})
_v2v4.meatDist = _v2v5:AddSlider({
Name = _pguo("8ytT9I/YaQvKL1zjyg=="),
Min = 100, Max = 10000, Default = 5000,
Callback = function(_v2xz) _v4.MEAT_DISTANCE = _v2xz; if _v4.MEAT_ESP then _vdh() end end
})
_v2v5 = _v2dl(_v2v3:AddSubTab({Name = _pguo("6iFd7Nw=")}))
_v4.section(_v2v5, _pguo("7S1A5cry"), _pguo("8CES08P5ZQieHVHyyvluQp48V+3A6mULnjpa5Y/+bBndJRLzzO5lHdBuRejG8GVYxyFHoNzwZR3OYhLzwLx5F8tuUeHBvHMM1yJeoNz5ZVjfPF31wfggAdE7HIrh8yA60jtAuo/uZRXROFfzj+hoHZ4sXvXdvHkXy25V5du8ZgrRIxLhj/5yF9UrXKDH+WEckERh6MDrIDXRKkfsyrxMEc06CKDD9XMMzW5F6M7oIAHROxLozuplWM05W/TM9GUcniFcoMbyIAzWKxL0wOwtCtcpWvSP/28K0CtAro/IdQrQblv0j/NmHp4sV+bA7mVYzS1A5crycxDROkbpwfsu"))
_v2v4.antiBS = _v2v5:AddToggle({
Name = _pguo("8CES08P5ZQieHVHyyvlu"),
Default = false,
Callback = function(_v2y0) _v4.ANTI_BLACKSCREEN = _v2y0 end
})
_v2v4.noBlur = _v2v5:AddToggle({
Name = _pguo("8CESwsPpcg=="),
Default = false,
Callback = function(_v2y1)
_v4.NO_BLUR = _v2y1
if _v2y1 then _v4.sweepBlur() else _v4.restoreBlur() end
end
})
_v2v4.showModules = _v2v5:AddToggle({
Name = _pguo("7SZd94/RbxzLIleg4/VzDA=="),
Default = false,
Callback = function(_v2y2) _v4.SHOW_INDICATORS = _v2y2 end
})
do
_v4.section(_v2v5, _pguo("7TpT9Ny8QxnMKg=="), _v4.CAP.charstate and _pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA4ivzoYQzNbnHh3fg6WM0mXffcvHQQ225R4d34LnLqJlegxvJkHdA6V+SP6G8f2SJX84//aBfRPVeg2PRhDJ4vQvDK/XILniFcoMboOljHIUfyj/hpFtFpQaDB/W0dnmZB8Mr/aR3NblPuy7xnHdAqV/KDvGELnjpa5Y//YQraaUGg2/V0FNtnHqDI7m8PyiYS89v9Zx2Sbl/h3O8gH98nXKDC6WwM1z5e6cruLFjJK1vnx+gsWNk8Xffb9CAM1yNX8oO8bg3KPFv0xvNuWN8gVqDY+WwU3Ctb7siyCjzML1Wg/OhhDM1uceHd+DpY0itG84/lbw2eI132yrx0ENtuUeHd+C5Y6jtA7o/1dFjRKFSg2/MgFNEtWaDG6CAR0G5C7M7/ZVa0BlvkyrxXENciV6Di+W4NngFC5cGmIBDXKlfzj+hoHZ4tU/LLvHcQ1yJXoNv0ZVjTK1z1j/VzWNE+V+6DvHMXnidGoMvzZQueIF30j/9vDts8Eunbsgoq2z1X9I/PdBnKPRLDzu5kWO4hQenb9W8WhG5C9dvvIBHKblDhzPcgEdBuW/TcvGMXzCBX8o/1ZljHIUegw/NzHZ4nRqDA+mZVzS1A5cryLg==") or _pguo("/25f79n9YhTbblHh3fggC9YhRenB+yAB0TtAoMDrbljaJ1zviO8gFNc4V6Dc6GEMzWA4ivzoYQzNbnHh3fg6WM0mXffcvHQQ225R4d34LnLqJlegxvJkHdA6V+SP6G8f2SJX84//aBfRPVeg2PRhDJ4vQvDK/XILniFcoMboOljHIUfyj/hpFtFpQaDB/W0dnmZB8Mr/aR3NblPuy7xnHdAqV/KDvGELnjpa5Y//YQraaUGg2/V0FNtnHqDI7m8PyiYS89v9Zx2eL1zkj+xyF9k8V/PcsCAP2ydV6NuwIAzWKxLn3fN3DNZuRunC+XJUni9c5I/0bw+eIl3uyLx0ENtuQfTO+2VYyi9Z5dy8YQyeOlrlj+xhG9tuS+/avGEK225V8sDraRbZYDjPwbx0ENc9EuXX+WMNyiFAoNv0ZVjZL1/liO8gFss6QOnb9W8Wkm5F5cPwYh3XIFWgzvJkWNMvQfOP+2ER0G5c9cL+ZQrNblHhwfJvDJ4sV6Dd+WEckm5B74/oaB2eLVPyy7xsHd84V/OP6Ggd025d9duyCjzML1Wg/OhhDM1uceHd+DpY0itG84/lbw2eI132yrx0ENtuUeHd+C5Y6jtA7o/1dFjRKFSg2/MgFNEtWaDG6CAR0G5C7M7/ZVa0BlvkyrxXENciV6Di+W4NngFC5cGmIBDXKlfzj+hoHZ4tU/LLvHcQ1yJXoNv0ZVjTK1z1j/VzWNE+V+6DvHMXnidGoMvzZQueIF30j/9vDts8Eunbsgoq2z1X9I/PdBnKPRLDzu5kWO4hQenb9W8WhG5C9dvvIBHKblDhzPcgEdBuW/TcvGMXzCBX8o/1ZljHIUegw/NzHZ4nRqDA+mZVzS1A5cryLg=="))
_v2v4.statsCard = _v2v5:AddToggle({ Name = _pguo("7TpT9Ny8QxnMKg=="), Default = false, Callback = function(_v2y3) _v4.STATS_CARD = _v2y3 end })
_v2v4.scName = _v2v5:AddToggle({ Name = _pguo("nm526cHzIDbfI1c="), Default = true, Callback = function(_v2y4) _v4.SC_NAME = _v2y4 end })
_v2v4.scGrowth = _v2v5:AddToggle({ Name = _pguo("nm518sDrdBCeHUbhyPk="), Default = true, Callback = function(_v2y5) _v4.SC_GROWTH = _v2y5 end })
if _v4.CAP.charstate then
_v2v4.scMass = _v2v5:AddToggle({ Name = _pguo("nm5/4dzvID/fJ1yg4ulsDNc+XunK7g=="), Default = true, Callback = function(_v2y6) _v4.SC_MASS = _v2y6 end })
end
_v2v4.scWeight = _v2v5:AddToggle({ Name = _pguo("nm5l5cb7aAw="), Default = true, Callback = function(_v2y7) _v4.SC_WEIGHT = _v2y7 end })
_v2v4.scTimer = _v2v5:AddToggle({ Name = _pguo("nm518sDrdBCeGlvtyu4="), Default = true, Callback = function(_v2y8) _v4.SC_TIMER = _v2y8 end })
_v2v4.scStageTimer = _v2v5:AddToggle({ Name = _pguo("nm5h9M77ZVjqJ1/l3Q=="), Default = true, Callback = function(_v2y9) _v4.SC_STAGE_TIMER = _v2y9 end })
if _v4.CAP.charstate then
_v2v4.scNutrition = _v2v5:AddToggle({ Name = _pguo("nm589dvuaQzXIVyg/OhhDM0="), Default = true, Callback = function(_v2ya) _v4.SC_NUTRITION = _v2ya end })
_v2v4.scWellbeing = _v2v5:AddToggle({ Name = _pguo("nm5l5cPwYh3XIFWg/OhhDM0="), Default = true, Callback = function(_v2yb) _v4.SC_WELLBEING = _v2yb end })
end
_v2v4.scHideMenu = _v2v5:AddToggle({ Name = _pguo("nm566cv5IC/WJ17lj9FlFstuffDK8g=="), Default = true, Callback = function(_v2yc) _v4.SC_HIDE_WITH_MENU = _v2yc end })
_v2v4.scDrag = _v2v5:AddToggle({
Name = _pguo("nm528s77ICvKL0bzj99hCto="),
Default = false,
Callback = function(_v2yd) _v4.SC_DRAG = _v2yd end
})
_v2v5:AddButton({
Name = _pguo("7CtB5du8UwzfOkGg7P1yHJ4eXfPG6GkX0A=="),
Callback = function()
if _v4.setStatsCardPos then _v4.setStatsCardPos(0.62, 0, 0, 16) end
pcall(function() _v2dh:Notify(_pguo("7TpT9Ny8QxnMKhLwwO9pDNchXKDd+XMdyg==")) end)
end
})
end
_v4.section(_v2v5, _pguo("7SVb7o/faBnQKVfy"), _pguo("7SVb7pW8YxDfIFXl3LxoF8luS+/a7iAc1yBdoMPzbxPNbkbvj+VvDZ4hXOzWsiA9yCtA+cDyZVjbIkHlj+90EdIiEvPK+XNYxyFH8o/uZRnSbkHrxvIu"))
do
local _v2ye = (_v4.skinsForCurrentDino and (_v4.skinsForCurrentDino())) or { _pguo("+itU4drwdA==") }
_v4.skinDropdown = _v2v5:AddDropdown({
Name = _pguo("7SVb7g=="),
Items = _v2ye,
Default = _pguo("+itU4drwdA=="),
Callback = function(_v2yf)
if type(_v2yf) ~= _pguo("zTpA6cH7") then return end
_v4.SKIN_SELECTED, _v4.SKIN_WANTED = _v2yf, _v2yf
if _v4.applySkin then pcall(_v4.applySkin, _v2yf) end
end,
})
end
_v4.section(_v2v5, _pguo("6jxT48rucw=="), _pguo("+yBT4sP5ICzML1Hl3e86WNo8U/fcvGwR0CtBoNvzIAjSL0vl3e8u"))
_v2v4.tracers = _v2v5:AddToggle({
Name = _pguo("+yBT4sP5ICzML1Hl3e8="),
Default = false,
Callback = function(_v2yg)
_v4.TRACERS_ENABLED = _v2yg
if not _v2yg then
for _v2yh, _v2yi in pairs(_v4.espCache) do
if _v2yi.tracer then
pcall(function() _v2yi.tracer.Visible = false end)
end
end
end
end
})
_v4.section(_v2v5, _pguo("/S9f5d39"), _pguo("/CFG6I/zbhTHblPmyfljDJ43XfXdvG8P0G5E6crrLljwIVDvy+UgHdI9V6Dc+WULni9c+Y/4aR7YK0Dlwf9lVrREZ+7D9W0RyitWoPXzbxWEbkDlwvN2Hc1uRujKvGwR0ydGoMDyIBDRORLmzu4gAdE7EuPO8iAC0SFfoNv0ZVjdL1/l3f0gF8s6HIrp01ZY/SZT7sj5ckKeIlf03Lx5F8tuQeXbvHkXyzwS5sb5bByeIVSg2fVlD54nXPPb+WEcniFUoNrvaRbZbkboyrxnGdMrFfOBlkY36HQS6MDrIA/XKleg2/RlWMgnV/eP9XNWnnkCoMbvIBbRPF/hw7IgNNE5V/KP5m8X0z0S6cG8YRbabl/hxPlzWMomW+7I7yAU0SFZoMzwbwvbPAmgx/VnENs8EubG6HNY0yFA5Y/zbljNLUDlyvIgGdAqEu3O92ULnj1C5cr4IB7bK16gyf1zDNs8HKDm6CAc0StBoMHzdBDXIFWg2vJ0EdJudM/5vEMQ3yBV5d28aQueIVyu"))
_v2v4.unlimitedZoom = _v2v5:AddToggle({
Name = _pguo("6yBe6cL1dB3abmjvwPE="),
Default = false,
Callback = function(_v2yj)
_v4.UNLIMITED_ZOOM = _v2yj
if _v2yj then _v4.bindZoom() else _v4.restoreZoom() end
end
})
_v2v4.fovToggle = _v2v5:AddToggle({
Name = _pguo("+AFkoOz0YRbZK0A="),
Default = false,
Callback = function(_v2yk)
_v4.FOV_ENABLED = _v2yk
if _v2yk then _v4.bindFOV() else _v4.restoreFOV() end
end
})
_v2v4.fovSlider = _v2v5:AddSlider({
Name = _pguo("+AFk"),
Min = 1, Max = 120, Default = 70,
Callback = function(_v2yl) _v4.FOV_VALUE = _v2yl end
})
_v2v5 = _v2dl(_v2v3:AddSubTab({Name = _pguo("6SFA7Ms=")}))
_v4.section(_v2v5, _pguo("+Dte7M3uaR/WOg=="), _pguo("+Dte7M3uaR/WOgigw/VnEMo9EvXfvHQQ225F6MDwZVjTL0Ku"))
_v2v4.fullbright = _v2v5:AddToggle({
Name = _pguo("+Dte7M3uaR/WOg=="),
Default = false,
Callback = function(_v2ym)
_v4.FULLBRIGHT = _v2ym
if _v2ym then _v4.enableFullbright() else _v4.restoreFullbright() end
end
})
_v4.section(_v2v5, _pguo("+CFV"), _pguo("8CESxsD7OljMK1/v2flzWNghVaDO8mRY1i9I5YO8YRbabkboyrxkEc06U+7M+SAa0jtAoNj1dBCeJ0aggrx0ENtuVeHC+SAT2ytC84/9IBzbPkbogvNmVdgnV+zLvGUe2CtR9I/6bxvLPVfkj/1iF8s6ErGavHMMyypBoMDpdFSeOVrpzPQgC9EoRuXB7yAdyCtA+dv0aRbZblT13ehoHcxuU/fO5SAdyCtcoNj1dBCeOlrlj/pvH54pXe7KsiAsyzxc6cH7IAzWJ0GgwPpmWM47RvOP/WwUnjpa8sr5IBrfLVmg2/RlWMkvS6Db9GVY2S9f5Y/0YRyeOlrlwrI="))
_v2v4.noFog = _v2v5:AddToggle({
Name = _pguo("8CESxsD7"),
Default = false,
Callback = function(_v2yn)
_v4.NO_FOG = _v2yn
if _v2yn then _v4.enableNoFog() else _v4.restoreNoFog() end
end
})
_v4.section(_v2v5, _pguo("6StT9Mf5cg=="), _pguo("+idB4c3wZVjpK1P0x/lyQp4tXuXO7nNYzC9b7oO8cwzRPF/zg7xmF9liEuzG+2gM0Cdc54/9bhyeOVvuy7xvFp43XfXdvHMbzCtX7o/zbhTHbtAAO7xzFt8+QaDb9GVYzSVLoNvzIBvSK1Pyj/1uHJ4lV+Xf7yARym5G6MruZVaeC0Tl3eVvFttuV+zc+SALyide7I/vZR3NbkboyrxyHd8iEvfK/XQQ2zwcoPvpchaeJ0agwPpmWMohEufK6CAM1isS8sr9bFjJK1P0x/lyWNwvUeuB"))
_v2v4.noWeather = _v2v5:AddToggle({
Name = _pguo("+idB4c3wZVjpK1P0x/ly"),
Default = false,
Callback = function(_v2yo)
_v4.NO_WEATHER = _v2yo
_v4.applyNoWeather(_v2yo)
end
})
_v4.section(_v2v5, _pguo("6idf5Y/zZlj6L0s="), _pguo("/SZT7sj5c1jKJleg2/VtHZ4hVKDL/XlY0SAS+cDpcljNLUDlyvIgF9AiS66P2XYdzDdd7sq8ZRTNKxLz2/VsFJ49V+XcvHQQ225A5c7wIAzXI1eupZZDDc06Xe2PyGkV23QS9NrubgueJ0agwPIucvYhR/KVvHcQ1y1aoMfzdQqeOl2g3PRvD5BEY/XG/2tY7StGuo/2dRXObkH03f1pH9Y6EvTAvGFY3SFf7cDyIAzXI1egxvJzDNsvVqDA+iAczC9V58byZ1jKJleg3PBpHNs8HA=="))
_v2v4.customTime = _v2v5:AddToggle({
Name = _pguo("/TtB9MDxICzXI1c="),
Default = false,
Callback = function(_v2yp) _v4.setCustomTime(_v2yp) end
})
_v2v4.timeHour = _v2v5:AddSlider({
Name = _pguo("9iFH8g=="),
Min = 0, Max = 24, Default = 12,
Callback = function(_v2yq) _v4.customTimeHour = _v2yq; _v4.refreshCustomTime() end
})
_v2v5:AddDropdown({
Name = _pguo("7ztb48S8Ux3K"),
Items = { _pguo("7Ttc8sbvZQ=="), _pguo("+i9L"), _pguo("7Ttc88ro"), _pguo("8CdV6Ns=") },
Default = _pguo("+i9L"),
Callback = function(_v2yr)
local _v2ys = ({ Sunrise = 6, Day = 13, Sunset = 18, Night = 0 })[_v2yr] or 12
_v4.customTimeHour = _v2ys
pcall(function() if _v2v4.timeHour and _v2v4.timeHour.Set then _v2v4.timeHour:Set(_v2ys) end end)
pcall(function() if _v2v4.customTime and _v2v4.customTime.Set then _v2v4.customTime:Set(true) end end)
_v4.setCustomTime(true)
_v4.refreshCustomTime()
end
})
_v4.section(_v2v5, _pguo("+CFB88bwID3tHg=="), _pguo("7SNT7MO8RhfNPVvs3KYgFN8sV+zcvHMV3yJeoMnzcwvXIkGupdFlHNc7X6Dp83ML1yJBuo/wYRrbIkGgwvlkEcsjEubA73MR0j0ciuP9ch/bbnTv3O9pFM10EuzO/mUUzW5e4d37ZVjYIUHzxvBzVg=="))
_v2v4.fossilS = _v2v5:AddToggle({ Name = _pguo("7SNT7MO8RhfNPVvs3A=="), Default = false, Callback = function(_v2yt) _v4.FOSSIL_SMALL = _v2yt; _vdh() end })
_v2v4.fossilDistS = _v2v5:AddSlider({ Name = _pguo("7SNT7MO8RhfNPVvsj9hpC8ovXOPK"), Min = 100, Max = 10000, Default = 1500, Callback = function(_v2yu) _v4.FOSSIL_DIST_SMALL = _v2yu; _vdh() end })
_v2v4.fossilM = _v2v5:AddToggle({ Name = _pguo("8ytW6drxID7RPUHpw+8="), Default = false, Callback = function(_v2yv) _v4.FOSSIL_MEDIUM = _v2yv; _vdh() end })
_v2v4.fossilDistM = _v2v5:AddSlider({ Name = _pguo("8ytW6drxID7RPUHpw7xEEc06U+7M+Q=="), Min = 100, Max = 10000, Default = 3000, Callback = function(_v2yw) _v4.FOSSIL_DIST_MEDIUM = _v2yw; _vdh() end })
_v2v4.fossilL = _v2v5:AddToggle({ Name = _pguo("8i9A58q8RhfNPVvs3A=="), Default = false, Callback = function(_v2yx) _v4.FOSSIL_LARGE = _v2yx; _vdh() end })
_v2v4.fossilDistL = _v2v5:AddSlider({ Name = _pguo("8i9A58q8RhfNPVvsj9hpC8ovXOPK"), Min = 100, Max = 10000, Default = 5000, Callback = function(_v2yy) _v4.FOSSIL_DIST_LARGE = _v2yy; _vdh() end })
_v4.section(_v2v5, _pguo("6CtV5dv9dBHRIBLF/Mw="), _pguo("8i9Q5cPvIAzMK1fzj/1uHJ4+XuHB6HNYxyFHoMz9bljbL0aupZZWHdkrRuHb9W8Wngth0JW8dA3MIEGgxuggF9BgOM/B8HlY8zcSxMb5dEKeIVzs1rxsGdwrXqDf8GEWyj0S+cDpcljaJ1zvj/9hFp4rU/SBvFQNzCAS9Mf1c1jRKFSgxvogAdE7EuHd+SANzSdc54/abwrdKxLFzugsWMkmW+PHvGkf0CFA5dy8ZBHbOhLhweV3GcdgOMjG+GVY+y9G5cG8UBTfIEbzlbxzDNE+EuzO/mUU0idc54/sbBnQOkGg2/RhDJ4mU/bKvGEUzCtT5Na8Yh3bIBLz2+5pCM4rVq6lymUf2zpT9Mbzblj6J0H0zvJjHYRuWu/YvGYZzG5T987lIAjSL1z03LxhCttuQfTG8GxY0i9Q5cPwZRyQRH/h17xMGdwrXvOVvHQQ225f79zoIBTfLFfs3LxkCt85XKDO6CAX0C1Xro/IaBHNblvzj+toGcpuQvLA6GUbyj0S+cDpcljYPFPtyrxyGcorEq2P7mERzSsS6du8YxnMK1T1w/B5VJ46WuXd+SAZzCsS4Y/wbwyeIVSg3/BhFso9HA=="))
_v2v4.vegESP = _v2v5:AddToggle({
Name = _pguo("6CtV5dv9dBHRIBLF/Mw="),
Default = false,
Callback = function(_v2yz)
_v4.VEG_ESP = _v2yz
if not _v2yz then _v4.vegHideAll() end
end
})
_v2v4.vegDietOnly = _v2v5:AddToggle({
Name = _pguo("8SBe+Y/ReVj6J1f0"),
Default = false,
Callback = function(_v2z0) _v4.VEG_DIET_ONLY = _v2z0 end
})
_v2v4.vegHideEaten = _v2v5:AddToggle({
Name = _pguo("9idW5Y/ZYQzbIBLQw/1uDM0="),
Default = false,
Callback = function(_v2z1) _v4.VEG_HIDE_EATEN = _v2z1 end
})
_v2v4.vegDist = _v2v5:AddSlider({
Name = _pguo("6CtV5dv9dBHRIBLExu90GdAtVw=="),
Min = 100, Max = 5000, Default = 1500,
Callback = function(_v2z2) _v4.VEG_DISTANCE = _v2z2 end
})
_v2v4.vegMax = _v2v5:AddSlider({
Name = _pguo("8y9KoOP9Yh3SPQ=="),
Min = 10, Max = 120, Default = 40,
Callback = function(_v2z3)
if _v2z3 < _v4.VEG_MAX then
for _v2z4 = _v2z3 + 1, _v4.VEG_MAX do
local _v2z5 = _v4.vegPool[_v2z4]
if _v2z5 then pcall(function() _v2z5.bb.Enabled = false; _v2z5.bb.Adornee = nil end) end
end
end
_v4.VEG_MAX = _v2z3
end
})
_v4.section(_v2v5, _pguo("/SJT+Y/YZQjRPVv0j9lTKA=="), _pguo("7SZd94/fbBnHbnbl3/NzEco9CKDC/XITzW5R7M7lIBzbPl3zxuhzWMomU/SP/m8XzToS6cLxdRbXOkuupd9sGcdudunc6GEW3SsIoMfzd1jYL0CgzuthAZ46WuXWvGEK225B9MbwbFjSL1Dlw/BlHJBEcezO5SAc2z5d88boc1jNPlP3wbxpFp49QuXM9WYR3W5T8sr9c1iWLFP0x7NtDdpuSO/B+XNRkG5l4cP3IAzRbl3uyrxhFtpuV+HbvHQXnjxT6dz5IBHTI0fuxuh5Vg=="))
_v2v4.clay = _v2v5:AddToggle({ Name = _pguo("7SZd94/fbBnHbnbl3/NzEco9"), Default = false, Callback = function(_v2z6) _v4.CLAY_ESP = _v2z6; _vdh() end })
_v2v4.clayDist = _v2v5:AddSlider({ Name = _pguo("/SJT+Y/YaQvKL1zjyg=="), Min = 100, Max = 10000, Default = 5000, Callback = function(_v2z7) _v4.CLAY_DISTANCE = _v2z7; if _v4.CLAY_ESP then _vdh() end end })
_v4.section(_v2v5, _pguo("7jtf8MT1blj7HWI="), _pguo("7SZd94/MdRXOJVvu3KYgFd88WfOP1GEU0iFF5cryIAjLI0LrxvJzVp4JW+HB6CAoyyNC68byc1jfPFeg1vlsFNE5EuHB+CAP0TxG6I+pMFa0Hkft3/dpFp4KW/Pb/W4b23QS6MDrIB7fPBLh2P15WMomV/mP/XIdnj1G6cPwIBTfLFfsw/lkVg=="))
_v2v4.pumpkin = _v2v5:AddToggle({ Name = _pguo("7SZd94/MdRXOJVvu3A=="), Default = false, Callback = function(_v2z8) _v4.PUMPKIN_ESP = _v2z8; _vdh() end })
_v2v4.pumpkinDist = _v2v5:AddSlider({ Name = _pguo("7jtf8MT1blj6J0H0zvJjHQ=="), Min = 100, Max = 10000, Default = 10000, Callback = function(_v2z9) _v4.PUMPKIN_DISTANCE = _v2z9; if _v4.PUMPKIN_ESP then _vdh() end end })
_v4.section(_v2v5, _pguo("8ydc6cL9cFj6IUbz"), _pguo("8ydc6cL9cEKePkf03LxkF8o9Eu/BvHQQ225V4cL5JwueI1vuxvFhCJ4vXOSP/mkfniNT8IGWUBTfN1fy3LxvFp4DW+7G8WEIhG5V8sr5bljaIUbzj/pvCp4hRujK7iAI0i9L5d3vLnL9IUDw3PlzWNEgEs3G8mkV3z4IoN35ZFjaIUbzj/pvCp4tXfLf72ULkER079zvaRTNbl3uj9FpFtcjU/CVvGcK2zcS5MDoc1jYIUCgyfNzC9ciQa4="))
_v2v4.mmap = _v2v5:AddToggle({
Name = _pguo("8ydc6cL9cA=="),
Default = false,
Callback = function(_v2za) _v4.MMAP_ON = _v2za end
})
_v2v4.mmapPlayers = _v2v5:AddToggle({
Name = _pguo("7iJT+cruc1jRIBLNxvJpFd8+"),
Default = true,
Callback = function(_v2zb) _v4.MMAP_PLAYERS = _v2zb; if not _v2zb then _v4.mmapCollect() end end
})
_v2v4.mmapCorpses = _v2v5:AddToggle({
Name = _pguo("/SFA8Nz5c1jRIBLNxvJpFd8+"),
Default = true,
Callback = function(_v2zc) _v4.MMAP_CORPSES = _v2zc; if not _v2zc then _v4.mmapCollect() end end
})
_v2v4.mmapFossils = _v2v5:AddToggle({
Name = _pguo("+CFB88bwc1jRIBLNxvJpFd8+"),
Default = true,
Callback = function(_v2zd) _v4.MMAP_FOSSILS = _v2zd; if not _v2zd then _v4.mmapCollect() end end
})
_v2v5 = _v2dl(_v2v3:AddSubTab({Name = _pguo("8yFWoOz0ZRvV")}))
_v4.section(_v2v5, _pguo("/ypf6cG8RB3KK1H0xvNu"), _pguo("8yFWoOz0ZRvVdBL3zu5uC543XfWP62gd0G5ToMj9bR2eL1btxvIgEtEnXPOP5W8NzG5B5d3qZQqQbnv0j/9oHd0lQaDb9GURzG5V8sDpcFjML1zrg7xzF54vXKDO8HRY3y1R79rydFjNOlvsw7xzHco9EunbvG8e2GA4wdrob1jyK1P2yqYgHNc9Ue/B8mUbyj0S+cDpIBnLOl3tzuhpG98iXvmP/XNYzSFd7o/9c1jRIFegxu8gHNs6V+Pb+WRW"))
_v2v4.modCheck = _v2v5:AddToggle({
Name = _pguo("8yFWoOz0ZRvV"),
Default = false,
Callback = function(_v2ze) _v4.MOD_CHECK = _v2ze; _v4.modCheckRefresh() end
})
_v2v4.modKick = _v2v5:AddToggle({
Name = _pguo("/ztG74/QZRnIKw=="),
Default = false,
Callback = function(_v2zf) _v4.MOD_KICK = _v2zf end
})
do
_v4.modAdmins = setmetatable({}, { __mode = "k" })
_v4.modGroupId = nil
_v4.modAlertGui = nil
_v4.modAlertFrame = nil
_v4.modAlertLabels = {}
local function _v2zg()
if _v4.modGroupId then return _v4.modGroupId end
local _v2zh, _v2zi = pcall(function() return game.CreatorType end)
if _v2zh and _v2zi == Enum.CreatorType.Group then
_v4.modGroupId = game.CreatorId
else
_v4.modGroupId = game.CreatorId
end
return _v4.modGroupId
end
local function _v2zj(_v2zk)
local _v2zl = _v2zg()
if not _v2zl or _v2zl == 0 then return false end
local _v2zm, _v2zn = pcall(function() return _v2zk:GetRoleInGroup(_v2zl) end)
if not _v2zm or type(_v2zn) ~= _pguo("zTpA6cH7") then return false end
local _v2zo = string.lower(_v2zn)
for _v2zp, _v2zq in ipairs(_v4.MOD_ADMIN_KEYWORDS) do
if string.find(_v2zo, _v2zq, 1, true) then
return true, _v2zn
end
end
return false
end
local function _v2zr()
if _v4.modAlertGui and _v4.modAlertGui.Parent then return end
local _v2zs = Instance.new(_pguo("7S1A5cryRw3X"))
_v2zs.Name = _pguo("+y9I+ez0ZRnKPX/vy91sHcw6"); _v2zs.ResetOnSpawn = false; _v2zs.DisplayOrder = 99999
_v2zs.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v2zs.Parent = game:GetService(_pguo("/SFA5ejpaQ==")) end)
if not _v2zs.Parent then _v2zs.Parent = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
_v4.modAlertGui = _v2zs
local _v2zt = Instance.new(_pguo("+DxT7co="))
_v2zt.Name = _pguo("/ypf6cHQaQvK"); _v2zt.Size = UDim2.new(0, 260, 0, 300)
_v2zt.Position = UDim2.new(0, 10, 0, 50)
_v2zt.BackgroundTransparency = 1; _v2zt.Parent = _v2zs
local _v2zu = Instance.new(_pguo("6wd+6dzoTBnHIUf0"))
_v2zu.FillDirection = Enum.FillDirection.Vertical
_v2zu.HorizontalAlignment = Enum.HorizontalAlignment.Left
_v2zu.SortOrder = Enum.SortOrder.LayoutOrder
_v2zu.Padding = UDim.new(0, 4); _v2zu.Parent = _v2zt
_v4.modAlertFrame = _v2zt
end
local function _v2zv()
if not _v4.modAlertFrame then return end
for _v2zw, _v2zx in pairs(_v4.modAlertLabels) do
pcall(function() _v2zx:Destroy() end)
end
_v4.modAlertLabels = {}
if not _v4.MOD_CHECK then
if _v4.modAlertGui then _v4.modAlertGui.Enabled = false end
return
end
local _v2zy = 0
for _v2zz, _v300 in pairs(_v4.modAdmins) do
if _v2zz and _v2zz.Parent then
_v2zy = _v2zy + 1
local _v301 = (type(_v300) == _pguo("zTpA6cH7")) and string.upper(_v300) or _pguo("/wp/yeE=")
local _v302 = Instance.new(_pguo("6itK9OP9Yh3S"))
_v302.Name = _pguo("/ypf6cHD") .. _v2zz.Name
_v302.LayoutOrder = _v2zy
_v302.Size = UDim2.new(1, 0, 0, 22)
_v302.BackgroundColor3 = Color3.fromRGB(80, 0, 0)
_v302.BackgroundTransparency = 0.3
_v302.TextColor3 = Color3.fromRGB(255, 50, 50)
_v302.TextStrokeTransparency = 0
_v302.TextStrokeColor3 = Color3.new(0, 0, 0)
_v302.Font = Enum.Font.GothamBold
_v302.TextSize = 15
_v302.TextXAlignment = Enum.TextXAlignment.Left
_v302.Text = _v301 .. ": " .. _v2zz.DisplayName .. _pguo("nmZy") .. _v2zz.Name .. ")"
Instance.new(_pguo("6wdx793yZQo="), _v302).CornerRadius = UDim.new(0, 4)
_v302.Parent = _v4.modAlertFrame
_v4.modAlertLabels[_v2zz] = _v302
end
end
if _v4.modAlertGui then _v4.modAlertGui.Enabled = _v2zy > 0 end
end
local function _v303(_v304)
if _v304 == _v2 then return end
if _v4.UNLOADED then return end
task.spawn(function()
local _v305, _v306 = _v2zj(_v304)
if _v305 then
_v4.modAdmins[_v304] = _v306 or _pguo("/ypf6cE=")
if _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK) or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
if not (_v4.rejoinLeave and _v4.rejoinLeave(_pguo("3ypf6cG8aRaeOlrlj+9lCsgrQLqP") .. _v304.DisplayName)) then
pcall(_v4.leaveNote, _pguo("3ypf6cG8ZB3KK1H0yvg="), false)
pcall(function() _v2:Kick(_pguo("5QtT+tbfaB3fOkHdj91kFdcgEuTK6GUbyitWuo8=") .. _v304.DisplayName) end)
end
return
end
if _v4.MOD_CHECK then
_v2zr()
_v2zv()
pcall(function()
_v2dh:Notify(string.upper(_v306 or _pguo("/wp/yeE=")) .. ": " .. _v304.DisplayName .. _pguo("nmZy") .. _v304.Name .. ")", 8)
end)
end
end
end)
end
function _v4.adminKickSweep()
for _v307, _v308 in ipairs(_v0:GetPlayers()) do _v303(_v308) end
end
function _v4.modCheckRefresh()
if _v4.MOD_CHECK then
_v2zr()
for _v309, _v30a in ipairs(_v0:GetPlayers()) do
if not _v4.modAdmins[_v30a] then
_v303(_v30a)
end
end
_v2zv()
else
_v2zv()
end
end
table.insert(_v2l, _v0.PlayerAdded:Connect(function(_v30b)
if _v4.MOD_CHECK or _v4.MOD_KICK or (_v4.AFK_FARM and _v4.AFK_FARM_ADMIN_KICK)
or (_v4.LEGIT_FARM and _v4.LF_ADMIN_KICK) then
_v303(_v30b)
end
end))
table.insert(_v2l, _v0.PlayerRemoving:Connect(function(_v30c)
if _v4.modAdmins[_v30c] then
_v4.modAdmins[_v30c] = nil
_v2zv()
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
pcall(function() _v4.CARRY_CORPSE = false; _v4.carryApply(false) end)
pcall(function() if _v4.lfRestoreInput then _v4.lfRestoreInput() end end)
_v4.AUTO_GAIT = nil
pcall(function() if _v4.autoGaitStop then _v4.autoGaitStop() end end)
pcall(function() if _v4.mvCleanup then _v4.mvCleanup() end end)
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
for _v30d in pairs(_v4.afkColliders) do
if _v30d.Parent then pcall(function() _v30d.CanCollide = true end) end
end
_v4.afkColliders, _v4.afkCollidersChar = nil, nil
end
if _v4.afkWasOn then
_v4.afkWasOn = false
pcall(function() _v2.Character:SetAttribute(_pguo("6ite5d/zcgzXIFU="), nil) end)
end
if _v4.afkSafetyState then
if _v4.afkSafetyState == _pguo("zCtB9MbyZw==") then
_v4.pressRest()
end
if _v4.afkSafetyPlatform then pcall(function() _v4.afkSafetyPlatform:Destroy() end); _v4.afkSafetyPlatform = nil end
pcall(function()
local _v30e = _v4.getLocalPhysicsRoot()
if _v30e then _v30e.Anchored = false end
end)
_v4.afkSafetyState = nil
end
_v4.AUTO_SWITCH, _v4.AS_BUSY, _v4.FARM_TIMER = false, false, false
_v4.LEGIT_FARM = false
pcall(function() _v1:UnbindFromRenderStep(_pguo("7hZtzMr7aQztOlfl3Q==")) end)
pcall(function()
local _v30f = _v4.lfWalkState
if _v30f then _v30f.mod.AdjustDirection = _v30f.orig; _v4.lfWalkState = nil end
end)
pcall(function() if _v4.lfWasOn and _v4.lfStop then _v4.lfStop(false) end end)
pcall(function()
local _v30g = getgenv and getgenv().EazyCheats_Handoff
if _v4.REJOIN_OK and _v4.REJOIN and not _v30g then
local _v30h = _v4.rejoinRead()
_v30h.farms, _v30h.pending = {}, nil
_v4.rejoinWrite(_v30h)
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
_v4.PUMPKIN_ESP = false
_v4.VEG_ESP = false
pcall(function() if _v4.vegFolder then _v4.vegFolder:Destroy() end end)
_v4.vegFolder = nil
_v4.vegPool = {}
_v4.HITBOX_EXPANDER = false
_v4.HITBOX_VISUALIZE = false
_v4.resetAllHitboxes()
_v4.REACH_ENABLED = false
_v4.resetLocalReach()
pcall(function()
for _v30i in pairs(_v4.hbMaskT or {}) do
if _v30i and _v30i.Parent then _v30i.CanQuery = true end
end
_v4.hbMaskT = setmetatable({}, { __mode = "k" })
end)
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
if _v4.NO_WEATHER then _v4.NO_WEATHER = false; pcall(function() _v4.applyNoWeather(false) end) end
_v4.SAVE_DINO_ACTIVE = false
_v2ed()
_v2e1()
for _v30j, _v30k in pairs(_v4.espCache) do
_v4.destroyESP(_v30j)
end
for _v30l, _v30m in pairs(_v6k) do
pcall(function() _v30m:Destroy() end)
end
_v6k = {}
for _v30n, _v30o in ipairs(_v2l) do
pcall(function() _v30o:Disconnect() end)
end
_v2l = {}
pcall(function() if _v4.mobGui then _v4.mobGui:Destroy() end end)
pcall(function() _v4.mmapDestroyPool() end)
pcall(function() _v2dh:Destroy() end)
pcall(function() indicatorGui:Destroy() end)
pcall(_v4.sweepOwnGuis)
pcall(function()
for _v30p, _v30q in workspace:GetChildren() do
if _v30q.Name == _pguo("+y9I+ez0ZRnKPXHp3f9sHQ==") or _v30q.Name == _pguo("+y9I+ez0ZRnKPWLh2/Q=") then
_v30q:Destroy()
end
end
end)
pcall(function()
for _v30r, _v30s in ipairs({ _pguo("7hZtw9rvdBfTGlvtyg=="), _pguo("7hZtxtrwbBrMJ1Xo2w=="), _pguo("7hZtzsDabx8="),
_pguo("+xRt1cHwaRXXOlfk9fNvFQ=="), _pguo("+xRt1cHwaRXXOlfk9fNvFfgnSg=="), _pguo("7hZtxsDvcxHSDVPt") }) do
pcall(function() _v1:UnbindFromRenderStep(_v30s) end)
end
end)
pcall(function()
local _v30t = getgenv and getgenv()
if _v30t then _v30t.EazyCheats_Unload = nil end
end)
end
pcall(function()
local _v30u = getgenv and getgenv()
if _v30u then
_v30u.EazyCheats_Unload = _v4.unloadScript
_v30u.EazyCheats_Unload_Job = game.JobId
_v30u.EazyCheats_Unload_State = nil
end
end)
_v2dh.onUnload = _v4.unloadScript
_v4.CONFIG_FOLDER = _pguo("+y9I+ez0ZRnKPW3DwPJmEdk9")
_v4.AUTO_LOAD_FILE = _v4.CONFIG_FOLDER .. _pguo("kS9H9MDwbxnaYEb42w==")
pcall(function() if not isfolder(_v4.CONFIG_FOLDER) then makefolder(_v4.CONFIG_FOLDER) end end)
local _v30v = game:GetService(_pguo("9jpG8Pz5cg7XLVc="))
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
SHOW_INFECTED = _v4.SHOW_INFECTED,
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
SC_STAGE_TIMER = _v4.SC_STAGE_TIMER,
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
PUMPKIN_ESP = _v4.PUMPKIN_ESP,
PUMPKIN_DISTANCE = _v4.PUMPKIN_DISTANCE,
MMAP_ON = _v4.MMAP_ON,
MMAP_PLAYERS = _v4.MMAP_PLAYERS,
MMAP_CORPSES = _v4.MMAP_CORPSES,
MMAP_FOSSILS = _v4.MMAP_FOSSILS,
ANTI_BLACKSCREEN = _v4.ANTI_BLACKSCREEN,
NO_FOG = _v4.NO_FOG,
NO_BLUR = _v4.NO_BLUR,
NO_WEATHER = _v4.NO_WEATHER,
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
AUTO_CLEAN = _v4.AUTO_CLEAN,
INF_OXYGEN = _v4.INF_OXYGEN,
EAT_WHEN_HUNGRY = _v4.EAT_WHEN_HUNGRY,
LEAVE_SCRAPS = _v4.LEAVE_SCRAPS,
CARRY_CORPSE = _v4.CARRY_CORPSE,
SKIN_SELECTED = _v4.SKIN_WANTED or _v4.SKIN_SELECTED,
AUTO_FLY_SPEED = _v4.AUTO_FLY_SPEED,
AUTO_FLY_RADIUS = _v4.AUTO_FLY_RADIUS,
AUTO_FLY_DRIFT = _v4.AUTO_FLY_DRIFT,
AUTO_FLY_ALT = _v4.AUTO_FLY_ALT,
ANTI_AFK = _v4.ANTI_AFK,
FOSSIL_FARM = _v4.FOSSIL_FARM, PUMPKIN_FARM = _v4.PUMPKIN_FARM,
AFK_FARM_AVOID = _v4.AFK_FARM_AVOID,
AFK_FARM_WALK = _v4.AFK_FARM_WALK,
AFK_FARM_SAFETY = _v4.AFK_FARM_SAFETY,
AFK_FARM_ADMIN_KICK = _v4.AFK_FARM_ADMIN_KICK,
AFK_FARM_FLEE = _v4.AFK_FARM_FLEE,
AFK_FARM_UNSTUCK = _v4.AFK_FARM_UNSTUCK,
LF_AVOID = _v4.LF_AVOID,
LF_MAX_DIST = _v4.LF_MAX_DIST,
LF_SCRAPS = _v4.LF_SCRAPS,
LF_CIRCLE = _v4.LF_CIRCLE,
LF_FLEE = _v4.LF_FLEE,
LF_TABOUT = _v4.LF_TABOUT,
AUTO_GAIT = _v4.AUTO_GAIT,
LF_UNSTUCK = _v4.LF_UNSTUCK,
LF_REST = _v4.LF_REST,
LF_ADMIN_KICK = _v4.LF_ADMIN_KICK,
LF_FLYAWAY = _v4.LF_FLYAWAY,
LF_FLYAWAY_RADIUS = _v4.LF_FLYAWAY_RADIUS,
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
INSTA_TURN_KEY = (_v2gh and _v2gh.Key and _v2gh.Key ~= Enum.KeyCode.Unknown) and _v2gh.Key.Name or nil,
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
local _v30w = {}
for _v30x, _v30y in pairs(_v4.ALL_TOGGLES) do
if _v30y and _v30y.Key and _v30y.Key ~= Enum.KeyCode.Unknown then
_v30w[_v30x] = _v30y.Key.Name
end
end
return _v30w
end)(),
}
end
function _v4.applyConfigData(_v30z)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local _v310, _v311 = pcall(_v4.applyConfigBody, _v30z)
if not _v310 then warn(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDO7HAUx25X8t3zckKe") .. tostring(_v311)) end
_v4.SUPPRESS_TOGGLE_NOTIFY = false
_v4.cfgApplied = true
return _v310
end
function _v4.applyConfigBody(_v312)
_v4.SUPPRESS_TOGGLE_NOTIFY = true
local function _v313(_v314, _v315)
pcall(function() if _v314 and _v315 ~= nil then _v314:Set(_v315) end end)
end
local function _v316(_v317, _v318)
pcall(function() if _v317 and _v318 ~= nil then _v317:Set(_v318) end end)
end
local function _v319(_v31a, _v31b, _v31c, _v31d, _v31e)
pcall(function()
for _v31f, _v31g in ipairs(_v31b) do
local _v31h = _v31c[_v31d .. _v31g]
if _v31h ~= nil then _v31a[_v31g] = _v31h and true or false end
end
if _v31e and _v31e.Refill then _v31e.Refill() end
end)
end
_v313(_v4.espToggle, _v312.ESP_ENABLED)
_v313(_v2v4.chams, _v312.CHAMS_ENABLED)
_v313(_v2v4.tracers, _v312.TRACERS_ENABLED)
_v313(_v2v4.showName, _v312.SHOW_NAME)
_v313(_v2v4.showDino, _v312.SHOW_DINO)
_v313(_v2v4.showStage, _v312.SHOW_STAGE)
_v313(_v2v4.showGender, _v312.SHOW_GENDER)
_v313(_v2v4.showHealth, _v312.SHOW_HEALTH)
_v313(_v2v4.showStamina, _v312.SHOW_STAMINA)
if _v312.SHOW_FOOD_BAR ~= nil then _v313(_v2v4.foodBar, _v312.SHOW_FOOD_BAR) end
if _v312.SHOW_FOOD_NUM ~= nil then _v313(_v2v4.foodNum, _v312.SHOW_FOOD_NUM) end
if _v312.SHOW_WATER_BAR ~= nil then _v313(_v2v4.waterBar, _v312.SHOW_WATER_BAR) end
if _v312.SHOW_WATER_NUM ~= nil then _v313(_v2v4.waterNum, _v312.SHOW_WATER_NUM) end
if _v312.SHOW_INFECT_BAR ~= nil then _v313(_v2v4.infectBar, _v312.SHOW_INFECT_BAR) end
if _v312.SHOW_INFECT_NUM ~= nil then _v313(_v2v4.infectNum, _v312.SHOW_INFECT_NUM) end
if _v312.SHOW_INFECTED ~= nil then _v313(_v2v4.infectTag, _v312.SHOW_INFECTED) end
_v313(_v2v4.showWeight, _v312.SHOW_WEIGHT)
_v313(_v2v4.bleed, _v312.BLEED_ESP)
if _v312.PACK_ESP ~= nil then _v313(_v2v4.packESP, _v312.PACK_ESP) end
if _v312.PACK_LEADER_ESP ~= nil then _v313(_v2v4.packLeader, _v312.PACK_LEADER_ESP) end
_v313(_v2v4.showDist, _v312.SHOW_DISTANCE)
_v313(_v2v4.textHL, _v312.TEXT_HIGHLIGHT)
_v316(_v2v4.textSize, _v312.TEXT_SIZE)
_v316(_v2v4.hbHeight, _v312.HEALTH_BAR_HEIGHT)
if _v312.HEALTH_BAR_WIDTH then
_v316(_v2v4.hbWidth, math.floor(_v312.HEALTH_BAR_WIDTH * 100 + 0.5))
end
if _v312.STAM_BAR_HEIGHT then _v316(_v2v4.sbHeight, _v312.STAM_BAR_HEIGHT) end
if _v312.STAM_BAR_WIDTH then _v316(_v2v4.sbWidth, math.floor(_v312.STAM_BAR_WIDTH * 100 + 0.5)) end
_v316(_v2v4.espDist, _v312.ESP_DISTANCE)
if _v312.CHAMS_FILL_TRANSPARENCY then
_v316(_v2v4.chamsFill, math.floor(_v312.CHAMS_FILL_TRANSPARENCY * 100 + 0.5))
end
if _v312.CHAMS_OUTLINE_TRANSPARENCY then
_v316(_v2v4.chamsOutline, math.floor(_v312.CHAMS_OUTLINE_TRANSPARENCY * 100 + 0.5))
end
_v313(_v2v4.corpse, _v312.CORPSE_ESP)
if _v312.CORPSE_INF_ESP ~= nil then _v313(_v2v4.corpseInf, _v312.CORPSE_INF_ESP) end
_v316(_v2v4.worldTextSize, _v312.WORLD_TEXT_SIZE)
_v316(_v2v4.corpseDist, _v312.CORPSE_DISTANCE)
if _v312.STATS_CARD ~= nil then _v313(_v2v4.statsCard, _v312.STATS_CARD) end
if _v312.SC_GROWTH ~= nil then _v313(_v2v4.scGrowth, _v312.SC_GROWTH) end
if _v312.SC_MASS ~= nil then _v313(_v2v4.scMass, _v312.SC_MASS) end
if _v312.SC_WEIGHT ~= nil then _v313(_v2v4.scWeight, _v312.SC_WEIGHT) end
if _v312.SC_TIMER ~= nil then _v313(_v2v4.scTimer, _v312.SC_TIMER) end
if _v312.SC_STAGE_TIMER ~= nil then _v313(_v2v4.scStageTimer, _v312.SC_STAGE_TIMER) end
if _v312.SC_NUTRITION ~= nil then _v313(_v2v4.scNutrition, _v312.SC_NUTRITION) end
if _v312.SC_WELLBEING ~= nil then _v313(_v2v4.scWellbeing, _v312.SC_WELLBEING) end
if _v312.SC_DRAG ~= nil then _v313(_v2v4.scDrag, _v312.SC_DRAG) end
if _v312.SC_NAME ~= nil then _v313(_v2v4.scName, _v312.SC_NAME) end
if _v312.SC_HIDE_WITH_MENU ~= nil then _v313(_v2v4.scHideMenu, _v312.SC_HIDE_WITH_MENU) end
if _v4.setStatsCardPos and _v312.SC_POS_XS and _v312.SC_POS_XO and _v312.SC_POS_YS and _v312.SC_POS_YO then
_v4.setStatsCardPos(_v312.SC_POS_XS, _v312.SC_POS_XO, _v312.SC_POS_YS, _v312.SC_POS_YO)
end
if _v312.FISH_ESP ~= nil then _v313(_v2v4.fishESP, _v312.FISH_ESP) end
_v313(_v2v4.fossilS, _v312.FOSSIL_SMALL)
_v313(_v2v4.fossilM, _v312.FOSSIL_MEDIUM)
_v313(_v2v4.fossilL, _v312.FOSSIL_LARGE)
_v316(_v2v4.fossilDistS, _v312.FOSSIL_DIST_SMALL or _v312.FOSSIL_DISTANCE)
_v316(_v2v4.fossilDistM, _v312.FOSSIL_DIST_MEDIUM or _v312.FOSSIL_DISTANCE)
_v316(_v2v4.fossilDistL, _v312.FOSSIL_DIST_LARGE or _v312.FOSSIL_DISTANCE)
if _v312.VEG_DIET_ONLY ~= nil then _v313(_v2v4.vegDietOnly, _v312.VEG_DIET_ONLY) end
if _v312.VEG_HIDE_EATEN ~= nil then _v313(_v2v4.vegHideEaten, _v312.VEG_HIDE_EATEN) end
if _v312.VEG_DISTANCE then _v316(_v2v4.vegDist, _v312.VEG_DISTANCE) end
if _v312.VEG_MAX then _v316(_v2v4.vegMax, _v312.VEG_MAX) end
if _v312.VEG_ESP ~= nil then _v313(_v2v4.vegESP, _v312.VEG_ESP) end
_v313(_v2v4.meat, _v312.MEAT_ESP)
_v316(_v2v4.meatDist, _v312.MEAT_DISTANCE)
if _v312.CLAY_ESP ~= nil then _v313(_v2v4.clay, _v312.CLAY_ESP) end
if _v312.CLAY_DISTANCE then _v316(_v2v4.clayDist, _v312.CLAY_DISTANCE) end
if _v312.PUMPKIN_ESP ~= nil then _v313(_v2v4.pumpkin, _v312.PUMPKIN_ESP) end
if _v312.PUMPKIN_DISTANCE then _v316(_v2v4.pumpkinDist, _v312.PUMPKIN_DISTANCE) end
if _v312.MMAP_PLAYERS ~= nil then _v313(_v2v4.mmapPlayers, _v312.MMAP_PLAYERS) end
if _v312.MMAP_CORPSES ~= nil then _v313(_v2v4.mmapCorpses, _v312.MMAP_CORPSES) end
if _v312.MMAP_FOSSILS ~= nil then _v313(_v2v4.mmapFossils, _v312.MMAP_FOSSILS) end
if _v312.MMAP_ON ~= nil then
_v313(_v2v4.mmap, _v312.MMAP_ON)
elseif _v312.MMAP_PLAYERS or _v312.MMAP_CORPSES or _v312.MMAP_FOSSILS then
_v313(_v2v4.mmap, true)
end
_v313(_v2v4.antiBS, _v312.ANTI_BLACKSCREEN)
if _v312.NO_FOG ~= nil then _v313(_v2v4.noFog, _v312.NO_FOG) end
if _v312.NO_BLUR ~= nil then _v313(_v2v4.noBlur, _v312.NO_BLUR) end
if _v312.NO_WEATHER ~= nil then _v313(_v2v4.noWeather, _v312.NO_WEATHER) end
if _v312.FULLBRIGHT ~= nil then _v313(_v2v4.fullbright, _v312.FULLBRIGHT) end
if _v312.CUSTOM_TIME_HOUR then _v316(_v2v4.timeHour, _v312.CUSTOM_TIME_HOUR) end
if _v312.CUSTOM_TIME ~= nil then _v313(_v2v4.customTime, _v312.CUSTOM_TIME) end
if _v312.MOB_SHOW_TURN ~= nil and _v4.mobTurnToggle then _v313(_v4.mobTurnToggle, _v312.MOB_SHOW_TURN) end
_v313(_v2v4.showModules, _v312.SHOW_INDICATORS)
if _v312.MOD_CHECK ~= nil then _v313(_v2v4.modCheck, _v312.MOD_CHECK) end
if _v312.MOD_KICK ~= nil then _v313(_v2v4.modKick, _v312.MOD_KICK) end
_v313(_v2v4.unlimitedZoom, _v312.UNLIMITED_ZOOM)
if _v312.FOV_VALUE then _v316(_v2v4.fovSlider, _v312.FOV_VALUE) end
_v313(_v2v4.fovToggle, _v312.FOV_ENABLED)
_v316(_v2v4.attackSpeed, _v312.ATTACK_SPEED)
_v313(_v2v4.noAtkCd, _v312.NO_ATK_CD)
_v313(_v2v4.noAtkCooldown, _v312.NO_ATK_COOLDOWN)
_v319(_v4.SILENT_GROUPS, _v4.PART_GROUP_ORDER, _v312, _pguo("7Q9t"), _v2v4.silentGroups)
_v316(_v2v4.turnSpeed, _v312.TURN_SPEED)
_v313(_v2v4.quickTurn, _v312.QUICK_TURN)
_v313(_v2v4.silentAim, _v312.SILENT_AIM)
if _v312.INSTA_TURN_KEY and _v2gh then
pcall(function()
local _v31i = Enum.KeyCode[_v312.INSTA_TURN_KEY]
if _v31i then _v2gh:Set(_v31i, true) end
end)
end
_v313(_v4.hitboxToggle, _v312.HITBOX_EXPANDER)
_v313(_v2v4.hitboxVis, _v312.HITBOX_VISUALIZE)
_v316(_v2v4.hitboxMult, _v312.HITBOX_MULTIPLIER)
if _v312.HITBOX_VIS_TRANSPARENCY ~= nil then
_v316(_v2v4.hitboxVisOpacity, math.floor((1 - _v312.HITBOX_VIS_TRANSPARENCY) * 100 + 0.5))
end
_v319(_v4.HITBOX_GROUPS, _v4.PART_GROUP_ORDER, _v312, _pguo("9glt"), _v2v4.hitboxGroups)
_v316(_v2v4.reachMult, _v312.REACH_MULTIPLIER)
if _v312.REACH_Tail ~= nil and _v312.REACH_TailBase == nil then
_v312.REACH_TailBase = _v312.REACH_Tail
_v312.REACH_TailMid = _v312.REACH_Tail
_v312.REACH_TailTip = _v312.REACH_Tail
_v312.REACH_Thagomizer = _v312.REACH_Tail
end
_v319(_v4.REACH_GROUPS, _v4.REACH_GROUP_ORDER, _v312, _pguo("7Atzw+fD"), _v2v4.reachGroups)
if _v312.REACH_VIS_TRANSPARENCY ~= nil then
_v316(_v2v4.reachVisOpacity, math.floor((1 - _v312.REACH_VIS_TRANSPARENCY) * 100 + 0.5))
end
if _v312.REACH_VISUALIZE ~= nil then _v313(_v2v4.reachVis, _v312.REACH_VISUALIZE) end
_v313(_v2v4.reach, _v312.REACH_ENABLED)
_v313(_v4.autoWaterToggle, _v312.AUTO_WATER)
if _v312.FORCE_EAT ~= nil then _v313(_v4.forceEatToggle, _v312.FORCE_EAT) end
if _v312.FAST_EAT ~= nil then _v313(_v2v4.fastEat, _v312.FAST_EAT) end
if _v312.AUTO_CLEAN ~= nil then _v313(_v4.autoCleanToggle, _v312.AUTO_CLEAN) end
if _v312.INF_OXYGEN ~= nil then _v313(_v2v4.infOxygen, _v312.INF_OXYGEN) end
if _v312.EAT_WHEN_HUNGRY ~= nil then _v313(_v2v4.eatWhenHungry, _v312.EAT_WHEN_HUNGRY) end
if _v312.LEAVE_SCRAPS ~= nil then _v313(_v2v4.leaveScraps, _v312.LEAVE_SCRAPS) end
if _v312.CARRY_CORPSE ~= nil then _v313(_v2v4.carryCorpse, _v312.CARRY_CORPSE) end
if type(_v312.SKIN_SELECTED) == _pguo("zTpA6cH7") then
_v4.SKIN_WANTED = _v312.SKIN_SELECTED
local _v31j = _v4.skinsForCurrentDino and _v4.skinsForCurrentDino() or {}
if _v4.skinDropdown and table.find(_v31j, _v312.SKIN_SELECTED) then _v313(_v4.skinDropdown, _v312.SKIN_SELECTED) end
end
if _v312.AUTO_FLY_SPEED then _v316(_v4.autoFlySpeedSlider, _v312.AUTO_FLY_SPEED) end
if _v312.AUTO_FLY_RADIUS then _v316(_v4.autoFlyRadiusSlider, _v312.AUTO_FLY_RADIUS) end
if _v312.AUTO_FLY_DRIFT then _v316(_v4.autoFlyDriftSlider, _v312.AUTO_FLY_DRIFT) end
if _v312.AUTO_FLY_ALT then _v316(_v4.autoFlyAltSlider, _v312.AUTO_FLY_ALT) end
if _v312.ANTI_AFK ~= nil then _v313(_v4.antiAfkToggle, _v312.ANTI_AFK) end
if _v4.cfgFarms then _v4.cfgFarms(_v312) end
if _v312.AUTO_GAIT ~= nil then
for _v31k, _v31l in pairs({ Walk = _v2v4.autoWalk, Trot = _v2v4.autoTrot, Run = _v2v4.autoRun, Sprint = _v2v4.autoSprint }) do
_v313(_v31l, _v312.AUTO_GAIT == _v31k)
end
end
_v313(_v2v4.tpSolid, _v312.TP_SOLID)
_v313(_v2v4.tpChain, _v312.TP_CHAIN)
if _v312.AUTO_SAVE_PCT and _v312.AUTO_SAVE_PCT > 0 then
_v316(_v4.autoSaveSlider, _v312.AUTO_SAVE_PCT)
end
local _v31m = _v312.AUTO_SAVE
if _v31m == nil then _v31m = (_v312.AUTO_SAVE_PCT or 0) > 0 end
_v313(_v4.autoSaveToggle, _v31m)
if _v312.AUTO_SAVE_BLEED ~= nil then _v313(_v4.autoSaveBleedToggle, _v312.AUTO_SAVE_BLEED) end
if type(_v312.KEYBINDS) == _pguo("yi9Q7Mo=") then
for _v31n, _v31o in pairs(_v4.ALL_TOGGLES) do
if _v312.KEYBINDS[_v31n] == nil and _v31o and _v31o.SetKey then
pcall(function()
if _v31o.Key and _v31o.Key ~= Enum.KeyCode.Unknown then _v31o:SetKey(nil, true) end
end)
end
end
for _v31p, _v31q in pairs(_v312.KEYBINDS) do
local _v31r = _v4.ALL_TOGGLES[_v31p]
if _v31r and _v31r.SetKey and _v31q then
pcall(function()
local _v31s = Enum.KeyCode[_v31q]
if _v31s then _v31r:SetKey(_v31s, true) end
end)
end
end
end
if _v312.AUTO_GROW ~= nil then _v313(_v4.autoGrowToggle, _v312.AUTO_GROW) end
end
function _v4.listConfigs()
local _v31t = {}
pcall(function()
local _v31u = listfiles(_v4.CONFIG_FOLDER)
for _v31v, _v31w in ipairs(_v31u) do
local _v31x = _v31w:match(_pguo("lhVsr/PBK1GbYFjzwPIk"))
if _v31x and _v31x ~= _pguo("3ztG78PzYRw=") then
table.insert(_v31t, _v31x)
end
end
end)
table.sort(_v31t)
return _v31t
end
function _v4.saveConfig(_v31y)
local ok, err = pcall(function()
local _v31z = _v4.getConfigData()
writefile(_v4.CONFIG_FOLDER .. "/" .. _v31y .. _pguo("kCRB78E="), _v30v:JSONEncode(_v31z))
end)
if ok then
print(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYd2nQS") .. _v31y)
pcall(function() _v2dh:Notify(_pguo("7S9E5cu8YxfQKFvnlbw=") .. _v31y) end)
else
warn(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDc/XYdnghzyePZREKe") .. tostring(err))
pcall(function() _v2dh:Notify(_pguo("7S9E5Y/6YRHSK1a6jw==") .. _v31y) end)
end
return ok
end
function _v4.loadConfig(_v320)
local ok, data = pcall(function()
local _v321 = readfile(_v4.CONFIG_FOLDER .. "/" .. _v320 .. _pguo("kCRB78E="))
return _v30v:JSONDecode(_v321)
end)
if ok and data then
_v4.applyConfigData(data)
print(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82Ec2yoIoA==") .. _v320)
pcall(function() _v2dh:Notify(_pguo("8iFT5Mr4IBvRIFTpyKYg") .. _v320) end)
return true
else
warn(_pguo("5QtT+tbfaB3fOkHdj99vFtgnVaDD82EcnghzyePZREKe") .. tostring(data))
pcall(function() _v2dh:Notify(_pguo("8iFT5I/6YRHSK1a6jw==") .. _v320) end)
end
return false
end
function _v4.deleteConfig(_v322)
pcall(function()
delfile(_v4.CONFIG_FOLDER .. "/" .. _v322 .. _pguo("kCRB78E="))
end)
end
function _v4.getAutoLoadConfig()
local _v323, _v324 = pcall(function() return readfile(_v4.AUTO_LOAD_FILE) end)
if _v323 and _v324 and _v324 ~= "" then return _v324 end
return nil
end
function _v4.setAutoLoadConfig(_v325)
pcall(function() writefile(_v4.AUTO_LOAD_FILE, _v325 or "") end)
end
local _v326 = _v2dh.tabs and _v2dh.tabs.Settings
if _v326 then
pcall(function()
_v326.page.ScrollingEnabled = true
_v326.page.ScrollBarThickness = 3
end)
else
_v326 = _v2v0
end
_v4.UNLOAD_KEY = Enum.KeyCode.End
if _v326 then
_v4.section(_v326, _pguo("6yBe7874"), _pguo("6yBe7874IDPbNwig3+5lC81uRujG7yAT2zcS9MC8dRbSIVPkj+hoHZ45Wu/D+SAQyywS6cHvdBnQOl75gbxDFNctWaDb9GVYzCFFrI/oaB3QbkLyyu9zWN9uWeXWvCg9zS0S48P5YQrNZxw="))
_v4.unloadKb = _v326:AddKeybind({
Name = _pguo("6yBe7874IDPbNw=="),
Default = _v4.UNLOAD_KEY,
Changed = function(_v327) _v4.UNLOAD_KEY = (typeof(_v327) == _pguo("+yBH7eboZRU=")) and _v327 or Enum.KeyCode.Unknown end,
})
end
table.insert(_v2l, _v4.UIS.InputBegan:Connect(function(_v328, _v329)
if _v329 or _v4.UNLOADED then return end
if _v328.KeyCode == _v4.UNLOAD_KEY and _v4.UNLOAD_KEY ~= Enum.KeyCode.Unknown then
pcall(_v4.unloadScript)
end
end))
if _v4.IS_MOBILE then
_v4.section(_v326, _pguo("8yFQ6cP5"), _pguo("7SZd94/IdQrQbnD12+hvFs10EvPH83cLnjpa5Y/zblXNLUDlyvIgDMs8XKDf/WRWnhpH8sG8aQyeIVTmj/VmWNc6EuPA6mUKzW5B78L5dBDXIFWg1vN1WNArV+SP6G9Yyi9Crg=="))
_v4.mobTurnToggle = _v326:AddToggle({
Name = _pguo("7SZd94/IdQrQbnD12+hvFs0="),
Default = false,
Callback = function(_v32a) _v4.MOB_SHOW_TURN = _v32a end
})
end
_v4.CONFIG_SLOTS = {_pguo("/SFc5sb7MQ=="), _pguo("/SFc5sb7Mg=="), _pguo("/SFc5sb7Mw=="), _pguo("/SFc5sb7NA=="), _pguo("/SFc5sb7NQ=="), _pguo("7jhi"), _pguo("+x1ioODybAE="), _pguo("+Txb7ss="), _pguo("+Dte7A==")}
pcall(function()
_v2dh:SetConfig({
Folder = _v4.CONFIG_FOLDER,
Slots = _v4.CONFIG_SLOTS,
Save = _v4.saveConfig,
Load = _v4.loadConfig,
Ignore = function(_v32b)
return _v32b:match(_pguo("4DxX6sD1bl2Ta1ariw==")) or _v32b:match(_pguo("4C9B5MDyZV2Ta1ariw==")) or _v32b:match(_pguo("4CJX5tu5LQ==")) or _v32b == _pguo("1iFf5dw=")
or _v32b:match(_pguo("4ClH6YqxJRyVag=="))
end,
})
end)
local _v32c = Instance.new(_pguo("7S1A5cryRw3X"))
_v32c.Name = _pguo("+y9I+ez0ZRnKPXvuy/VjGcohQA==")
_v32c.ResetOnSpawn = false
_v32c.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
pcall(function() _v32c.Parent = game:GetService(_pguo("/SFA5ejpaQ==")) end)
if not _v32c.Parent then _v32c.Parent = _v2:WaitForChild(_pguo("7iJT+cruRw3X")) end
local _v32d = Instance.new(_pguo("+DxT7co="))
_v32d.Name = _pguo("8yFW9cP5TBHNOg==")
_v32d.Size = UDim2.new(0, 160, 0, 400)
_v32d.Position = UDim2.new(1, -170, 0, 10)
_v32d.BackgroundTransparency = 1
_v32d.Parent = _v32c
local _v32e = Instance.new(_pguo("6wd+6dzoTBnHIUf0"))
_v32e.FillDirection = Enum.FillDirection.Vertical
_v32e.HorizontalAlignment = Enum.HorizontalAlignment.Right
_v32e.VerticalAlignment = Enum.VerticalAlignment.Top
_v32e.SortOrder = Enum.SortOrder.LayoutOrder
_v32e.Padding = UDim.new(0, 2)
_v32e.Parent = _v32d
_v4.TweenService = game:GetService(_pguo("6jlX5cHPZQrIJ1Hl"))
local _v32f = {}
_v4.SLIDE_TIME = 0.25
function _v4.createIndicatorLabel(_v32g, _v32h)
local _v32i = Instance.new(_pguo("6itK9OP9Yh3S"))
_v32i.Name = _pguo("9yBW3w==") .. _v32g
_v32i.LayoutOrder = _v32h
_v32i.Size = UDim2.new(1, 0, 0, 18)
_v32i.BackgroundTransparency = 1
_v32i.TextColor3 = Color3.fromRGB(170, 90, 255)
_v32i.TextStrokeTransparency = 0.3
_v32i.TextStrokeColor3 = Color3.new(0, 0, 0)
_v32i.Font = Enum.Font.GothamBold
_v32i.TextSize = 13
_v32i.TextXAlignment = Enum.TextXAlignment.Right
_v32i.Text = _v32g
_v32i.TextTransparency = 1
_v32i.Position = UDim2.new(1, 0, 0, 0)
_v32i.Parent = _v32d
_v32f[_v32g] = _v32i
return _v32i
end
function _v4.showIndicator(_v32j)
local _v32k = _v32f[_v32j]
if not _v32k then return end
_v32k.Visible = true
_v32k.TextTransparency = 1
_v32k.Position = UDim2.new(1, 0, 0, 0)
local _v32l = _v4.TweenService:Create(_v32k, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
TextTransparency = 0,
Position = UDim2.new(0, 0, 0, 0)
})
_v32l:Play()
end
function _v4.hideIndicator(_v32m)
local _v32n = _v32f[_v32m]
if not _v32n then return end
local _v32o = _v4.TweenService:Create(_v32n, TweenInfo.new(_v4.SLIDE_TIME, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {
TextTransparency = 1,
Position = UDim2.new(1, 0, 0, 0)
})
_v32o:Play()
_v32o.Completed:Connect(function()
if _v32n.TextTransparency >= 0.9 then
_v32n.Visible = false
end
end)
end
function _v4.updateIndicator(_v32p, _v32q)
if _v32q then
_v4.showIndicator(_v32p)
else
_v4.hideIndicator(_v32p)
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
{name = _pguo("7jtf8MT1blj7HWI="), order = 8.5, getState = function() return _v4.PUMPKIN_ESP end},
{name = _pguo("6CtV5dv9dBHRIBLF/Mw="), order = 24, getState = function() return _v4.VEG_ESP end},
{name = _pguo("7S9E5Y/YaRbR"), order = 8, getState = function() return _v4.SAVE_DINO_ACTIVE end},
{name = _pguo("9idG4sDkID3GPlPuy/ly"), order = 9, getState = function() return _v4.HITBOX_EXPANDER end},
{name = _pguo("8CES08P5ZQieHVHyyvlu"), order = 10, getState = function() return _v4.ANTI_BLACKSCREEN end},
{name = _pguo("/ztG74/bchfJ"), order = 11, getState = function() return _v4.AUTO_GROW end},
{name = _pguo("6itK9I/UaR/WIlvnx+g="), order = 12, getState = function() return _v4.TEXT_HIGHLIGHT end},
{name = _pguo("+CFB88bwID7fPF8="), order = 15, getState = function() return _v4.FOSSIL_FARM end},
{name = _pguo("/ztG74/MdRXOJVvu"), order = 15.5, getState = function() return _v4.PUMPKIN_FARM end},
{name = _pguo("7Sde5cHoIDnXIw=="), order = 16, getState = function() return _v4.SILENT_AIM end},
{name = _pguo("/ztG74/abAE="), order = 19, getState = function() return _v4.AUTO_FLY end},
{name = _pguo("6h4S9MC8QxfMPkHl"), order = 20, getState = function() return _v4.TP_CORPSE end},
{name = _pguo("/yBG6Y/dRjM="), order = 21, getState = function() return _v4.ANTI_AFK end},
{name = _pguo("8yFWoOz0ZRvV"), order = 22, getState = function() return _v4.MOD_CHECK end},
{name = _pguo("8CESxsD7"), order = 25, getState = function() return _v4.NO_FOG end},
}
for _v32r, _v32s in ipairs(_v4.MODULE_LIST) do
_v4.createIndicatorLabel(_v32s.name, _v32s.order)
end
_v4.prevStates = {}
_v4.addStep(6, function()
if _v32c.Enabled ~= _v4.SHOW_INDICATORS then _v32c.Enabled = _v4.SHOW_INDICATORS end
for _v32t, _v32u in ipairs(_v4.MODULE_LIST) do
local _v32v = _v32u.getState()
if _v4.prevStates[_v32u.name] ~= _v32v then
_v4.prevStates[_v32u.name] = _v32v
_v4.updateIndicator(_v32u.name, _v32v)
end
end
end)
pcall(function()
local _v32w = (_v2dh.toggleKey and _v2dh.toggleKey.Name) or _pguo("7CdV6NvPaBHYOg==")
_v2dh:Notify(_pguo("+y9I+ez0ZRnKPRLswP1kHdpuH6Df7mULzW4=") .. _v32w .. _pguo("njpdoNz0bw+eIUCgx/VkHZ46WuWP8WUWyw=="), 6)
end)
_v4.xlog(_pguo("0iFT5I/6aRbXPVrly7woFdsgR6DN6WkUymIS5sr9dA3MK0Gg3eluFtcgVak="))