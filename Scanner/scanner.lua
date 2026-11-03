--[[
    PRIOR EXTINCTION — GAME SCANNER
    ================================
    loadstring(game:HttpGet("https://eazycheats.com/s/priorscanner"))()

    Recon script. Scans every player character in the server and dumps:
      1. All hitbox parts + their Group attributes (finds jaw bones, new groups)
      2. All character/player attributes (finds pack leader, roles, etc.)
      3. Model children structure (MouthPart, CameraPart, anything new)

    Output goes to the executor console via print().
    Run this in a populated server for best results.
]]

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ── Utilities ───────────────────────────────────────────────

local seen_groups = {}
local seen_attrs  = {}
local pack_data   = {}

local function divider(title)
    print("\n" .. string.rep("=", 60))
    print("  " .. title)
    print(string.rep("=", 60))
end

local function sub(title)
    print("\n--- " .. title .. " " .. string.rep("-", 40 - #title))
end

local function dumpAttributes(obj, label)
    local attrs = obj:GetAttributes()
    local found = false
    for k, v in pairs(attrs) do
        if not found then
            sub(label .. " — Attributes")
            found = true
        end
        local vtype = typeof(v)
        local vstr = tostring(v)
        if vtype == "Color3" then
            vstr = string.format("RGB(%d,%d,%d)", v.R*255, v.G*255, v.B*255)
        end
        print(string.format("  %-30s = %-30s  [%s]", k, vstr, vtype))
        seen_attrs[k] = true
    end
    return found
end

-- ── Scan one player ─────────────────────────────────────────

local function scanPlayer(player)
    local char = player.Character
    if not char then return end

    divider(player.DisplayName .. " (@" .. player.Name .. ")")

    -- Player-level attributes (account, premium, pack info may live here)
    dumpAttributes(player, "Player object")

    -- Character-level attributes (dino type, scale, growth, gender, pack role)
    dumpAttributes(char, "Character model")

    -- Scan every child of character for attributes too
    for _, child in ipairs(char:GetChildren()) do
        if child:IsA("Model") or child:IsA("Folder") or child:IsA("BasePart") then
            dumpAttributes(child, "Character." .. child.Name)
        end
    end

    -- Character children overview
    sub("Character children")
    for _, child in ipairs(char:GetChildren()) do
        local extra = ""
        if child:IsA("BasePart") then
            extra = string.format("  Size=(%s)  CanCollide=%s  CanQuery=%s",
                tostring(child.Size), tostring(child.CanCollide), tostring(child.CanQuery))
        end
        print(string.format("  %-25s  [%s]%s", child.Name, child.ClassName, extra))
    end

    -- Hitbox folder deep scan
    local hitboxFolder = char:FindFirstChild("Hitbox")
    if hitboxFolder then
        sub("Hitbox folder contents")
        local parts = {}
        for _, part in ipairs(hitboxFolder:GetChildren()) do
            if part:IsA("BasePart") then
                local group = part:GetAttribute("Group") or "NONE"
                local link  = part:GetAttribute("Link")
                local linkStr = link and ("  Link=" .. tostring(link)) or ""

                -- Track unique groups
                if not seen_groups[group] then
                    seen_groups[group] = true
                end

                table.insert(parts, {
                    name  = part.Name,
                    group = group,
                    size  = tostring(part.Size),
                    link  = linkStr,
                })
            end
        end

        -- Sort by group then name
        table.sort(parts, function(a, b)
            if a.group == b.group then return a.name < b.name end
            return a.group < b.group
        end)

        for _, p in ipairs(parts) do
            print(string.format("  %-25s  Group=%-12s  Size=%-20s%s",
                p.name, p.group, p.size, p.link))
        end
        print(string.format("  >> %d hitbox parts total", #parts))
    else
        print("  [!] No 'Hitbox' folder found on this character")
    end

    -- HitBox part (separate from folder)
    local hitboxPart = char:FindFirstChild("HitBox")
    if hitboxPart and hitboxPart:IsA("BasePart") then
        sub("HitBox part (standalone)")
        print(string.format("  Size=%s  CanQuery=%s", tostring(hitboxPart.Size), tostring(hitboxPart.CanQuery)))
        dumpAttributes(hitboxPart, "HitBox part")
    end

    -- MouthPart scan
    local mouth = char:FindFirstChild("MouthPart")
    if mouth then
        sub("MouthPart")
        print(string.format("  Class=%s  Size=%s", mouth.ClassName, tostring(mouth.Size)))
        dumpAttributes(mouth, "MouthPart")
    end

    -- Search for anything with "jaw", "pack", "leader", "rank" in name or attributes
    sub("Keyword scan (jaw/pack/leader/rank/patriarch/matriarch)")
    local keywords = {"jaw", "pack", "leader", "rank", "patriarch", "matriarch", "elder", "role", "alpha"}
    local found_any = false
    for _, desc in ipairs(char:GetDescendants()) do
        local lower_name = desc.Name:lower()
        for _, kw in ipairs(keywords) do
            if lower_name:find(kw) then
                print(string.format("  MATCH: %s  [%s]  path=%s",
                    desc.Name, desc.ClassName, desc:GetFullName()))
                found_any = true
                break
            end
        end
        -- Also check attributes for keyword matches
        if desc:IsA("Instance") then
            pcall(function()
                for attrName, attrVal in pairs(desc:GetAttributes()) do
                    local lower_attr = attrName:lower()
                    local lower_val  = tostring(attrVal):lower()
                    for _, kw in ipairs(keywords) do
                        if lower_attr:find(kw) or lower_val:find(kw) then
                            print(string.format("  ATTR MATCH: %s.%s = %s  [%s]",
                                desc.Name, attrName, tostring(attrVal), typeof(attrVal)))
                            found_any = true

                            -- Collect pack data
                            if kw == "pack" or kw == "leader" or kw == "rank" or kw == "patriarch" or kw == "matriarch" then
                                pack_data[player.Name] = pack_data[player.Name] or {}
                                pack_data[player.Name][attrName] = attrVal
                            end
                            break
                        end
                    end
                end
            end)
        end
    end
    if not found_any then
        print("  (none found)")
    end
end

-- ── Run scan ────────────────────────────────────────────────

divider("PRIOR EXTINCTION SCANNER — START")
print("  Players in server: " .. #Players:GetPlayers())
print("  Local player: " .. LocalPlayer.DisplayName)
print("  Time: " .. os.date("%Y-%m-%d %H:%M:%S"))

-- Scan local player first
scanPlayer(LocalPlayer)

-- Scan all other players
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        pcall(function() scanPlayer(player) end)
    end
end

-- ── Summary ─────────────────────────────────────────────────

divider("SUMMARY — ALL UNIQUE HITBOX GROUPS FOUND")
local groupList = {}
for g in pairs(seen_groups) do table.insert(groupList, g) end
table.sort(groupList)
for i, g in ipairs(groupList) do
    print(string.format("  %d. %s", i, g))
end
print(string.format("  >> %d unique groups total", #groupList))

divider("SUMMARY — ALL UNIQUE ATTRIBUTES FOUND")
local attrList = {}
for a in pairs(seen_attrs) do table.insert(attrList, a) end
table.sort(attrList)
for i, a in ipairs(attrList) do
    print(string.format("  %d. %s", i, a))
end
print(string.format("  >> %d unique attributes total", #attrList))

if next(pack_data) then
    divider("SUMMARY — PACK / LEADER DATA")
    for pname, data in pairs(pack_data) do
        print("  " .. pname .. ":")
        for k, v in pairs(data) do
            print(string.format("    %-20s = %s", k, tostring(v)))
        end
    end
else
    divider("SUMMARY — PACK / LEADER DATA")
    print("  No pack/leader attributes detected on any player.")
    print("  Try running in a server where players are in packs.")
end

divider("SCAN COMPLETE")
print("  Copy this output and send it back so we can wire up:")
print("    - Jaw bone / new hitbox groups into reach + hitbox expander")
print("    - Pack leader detection into ESP")
