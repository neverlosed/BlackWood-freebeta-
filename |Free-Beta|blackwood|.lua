local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("BlackWood(FREE-beta)", "RJTheme6")

local Tab = Window:NewTab("Visual")

local Section = Tab:NewSection("esp")


Section:NewButton("Enabled", "Klick to enabled", function()
local function getRoleColor(plr)
   if (plr.Backpack:FindFirstChild("Knife") or plr.Character:FindFirstChild("Knife")) then
       return Color3.new(255, 0, 0)
   elseif (plr.Backpack:FindFirstChild("Gun") or plr.Character:FindFirstChild("Gun")) then
       return Color3.new(0, 0, 255)
   else
       return Color3.new(0, 255, 0)
   end
end
while true do
   for _, v in pairs(game.Players:GetChildren()) do
       if v ~= game.Players.LocalPlayer and v.Character and not v.Character:FindFirstChild("Highlight") then
           Instance.new("Highlight", v.Character)
           v.Character.Highlight.FillTransparency = 0.5
           v.Character.Highlight.OutlineTransparency = 0.5
           v.Character.Highlight.FillColor = getRoleColor(v)
       elseif (v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Highlight")) then
           v.Character.Highlight.FillColor = getRoleColor(v)
       end
   end
   wait(0.1)
end
end)

local Tab = Window:NewTab("Player")

local Section = Tab:NewSection("Players")


Section:NewSlider("WalkSpeed", "Speed player", 200, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewToggle("gravity", "ToggleInfo", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 500
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

Section:NewToggle("infinjump", "fly Jumping", function(state)
    if state then
        _G.infinjump = true
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k == "f" then
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
    else
     _G.infinjump = false
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
if _G.infinjump then
if k:byte() == 32 then
Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
Humanoid:ChangeState("Jumping")
wait(0.1)
Humanoid:ChangeState("Seated")
end
end
end)
 
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
k = k:lower()
if k == "f" then
if _G.infinjump == true then
_G.infinjump = false
else
_G.infinjump = true
end
end
end)
    end
end)

Section:NewButton("antikick", "ButtonInfo", function()
    assert(getrawmetatable)
grm = getrawmetatable(game)
setreadonly(grm, false)
old = grm.__namecall
grm.__namecall = newcclosure(function(self, ...)
    local args = {...}
    if tostring(args[1]) == "TeleportDetect" then
        return
    elseif tostring(args[1]) == "CHECKER_1" then
        return
    elseif tostring(args[1]) == "CHECKER" then
        return
    elseif tostring(args[1]) == "GUI_CHECK" then
        return
    elseif tostring(args[1]) == "OneMoreTime" then
        return
    elseif tostring(args[1]) == "checkingSPEED" then
        return
    elseif tostring(args[1]) == "BANREMOTE" then
        return
    elseif tostring(args[1]) == "PERMAIDBAN" then
        return
    elseif tostring(args[1]) == "KICKREMOTE" then
        return
    elseif tostring(args[1]) == "BR_KICKPC" then
        return
    elseif tostring(args[1]) == "BR_KICKMOBILE" then
        return
    end
    return old(self, ...)
end)
end)

Section:NewButton("Noclip","press to noclip",function()
local noclip = true char = game.Players.LocalPlayer.Character while true do if noclip == true then for _,v in
pairs(char:children()) do pcall(function() if v.className == "Part" then v.CanCollide = false elseif v.ClassName 
== "Model" then v.Head.CanCollide = false end end) end end game:service("RunService").Stepped:wait() end
end)

Section:NewButton("Flashing","Flashing",function()
local p=game:GetService"Players".LocalPlayer
local c=p.Character
local surf='SmoothNoOutlines'
if not c then error'Cannot find character, please respawn, then rerun the script' end
 
-- Flashlight Handle
local hand=Instance.new"Part"
hand.BrickColor=BrickColor.DarkGray()
hand.Parent=c
hand.Anchored=false
hand.Locked=true
hand.CanCollide=false
hand.FormFactor='Custom'
hand.Size=Vector3.new(1,1,2)
hand.TopSurface,hand.BottomSurface=surf,surf
 
-- Torch Effect
local fe=Instance.new"Part"
fe.BrickColor=BrickColor.new"Black"
fe.Parent=c
fe.Anchored=false
fe.Locked=true
fe.CanCollide=false
fe.FormFactor='Custom'
fe.Size=Vector3.new(.8,.8,.2)
fe.TopSurface,hand.BottomSurface=surf,surf
 
-- Welding stuff
 
-- Flash to Right Arm
local weld1=Instance.new"Weld"
weld1.Parent=hand
weld1.Part0=hand
weld1.Part1=c['Right Arm']
weld1.C0=CFrame.new(0, 1.5, 0)
 
-- Torch Effect to Flash
local weld2=Instance.new"Weld"
weld2.Parent=hand
weld2.Part0=hand
weld2.Part1=fe
weld2.C0=CFrame.new(0, 0, 1)
 
-- Right Arm Weld
local ra=Instance.new"Weld"
ra.Parent=c['Torso']
ra.Part0=c['Right Arm']
ra.Part1=c['Torso']
ra.C0=CFrame.new(-1.5,1,0)*CFrame.Angles(math.rad(180),0,0)
 
 
 
-- Flashlight Functionality
 
local flashlightOn = false
local Battery=100
 
-- Handles turning the flashlight on/off
p:GetMouse().Button1Down:connect(function()
	flashlightOn=not flashlightOn
	if flashlightOn then
		fe.BrickColor=BrickColor.new"New Yeller"
		light=Instance.new"SurfaceLight"
		light.Parent=fe
		light.Range=32
		light.Face="Back"
		light.Brightness=2
		fe.Material="Neon"
	else
		fe.BrickColor=BrickColor.new"Black"
		if light then light:destroy() end
		fe.Material="SmoothPlastic"
	end
end)
 
 -- Battery Modules
 
-- Depleting and Charging
spawn(function()
	while wait(1) do
		if flashlightOn then
			if Battery > 0 then
				Battery=Battery-1
			end
		else
			if Battery < 100 then
				Battery=Battery+1
			end
		end
		print(Battery)
	end
end)
 
-- Turning off flashlight if the battery is too low
spawn(function()
	while wait() do
		if Battery <= 0 then
			flashlightOn=false
			if light then light:destroy() end
			fe.BrickColor=BrickColor.new"Black"
			fe.Material="SmoothPlastic"
		end
	end
end)
 
local stepped = game:GetService'RunService'.RenderStepped
end)

Section:NewButton("change NO face","klick to change NO face",function()
char = game:service'Players'.LocalPlayer.Character
m = game:service'Players'.LocalPlayer:GetMouse()
 
-----------------------------
function Aesthetics()
 
 
    char.Head.face.Texture = "https://www.roblox.com/catalog/494291269"
end
 
Aesthetics()
 
 
m.KeyDown:connect(function(k)
if k == "z" then
char.Head.face.Texture = "https://www.roblox.com/catalog/494291269"
end
end)
end)

local Tab = Window:NewTab("AA")

local Section = Tab:NewSection("AntiAim")


Section:NewButton("enabled AA", "Klick to aa", function()
power = 50 -- change this to make it more or less powerful
 
game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.UpperTorso.CanCollide = false
game.Players.LocalPlayer.Character.LowerTorso.CanCollide = false
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
end)
wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
end)

Section:NewButton("SilentAim(kat)","SilentAim for kat",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/hxq5arRj", true))()
end)

Section:NewButton("SilentAim(ZombieAttack)","SilentAim for game ZombieAttack")
     local oPlBfNRNfyJz = game.Players.LocalPlayer;local ZtYjkXDgMlxc = "Head";local dAociCiEvJMB = function()local QInaUnazu = math.huge;local 
     J8IhabzuN = nil;for iUIhaztYUbnZ,uUhsabzyuG in next, game.Workspace:GetDescendants() do if uUhsabzyuG:FindFirstChild(ZtYjkXDgMlxc) and 
      oPlBfNRNfyJz.Character:FindFirstChild(ZtYjkXDgMlxc) and not uUhsabzyuG:FindFirstChild('Guns') and uUhsabzyuG.Parent.Name ~= "deadenemies" 
      then local IIhzabUtd = (uUhsabzyuG:FindFirstChild(ZtYjkXDgMlxc).Position-oPlBfNRNfyJz.Character.Head.Position).magnitude;if IIhzabUtd < 
        QInaUnazu then QInaUnazu = IIhzabUtd;J8IhabzuN = uUhsabzyuG;end;end;end;return J8IhabzuN;end;local GtsZsUbJOuJk = 
        oPlBfNRNfyJz:GetMouse();local tZcInsImQQfX = getrawmetatable(game);local sCtxkbklLnmy = 
        tZcInsImQQfX.__index;setreadonly(tZcInsImQQfX,false);tZcInsImQQfX.__index = newcclosure(function(hFcjBtZBXthW,tGNxqMIMabVS)if hFcjBtZBXthW ==
        GtsZsUbJOuJk and tostring(tGNxqMIMabVS) == "Hit" then return dAociCiEvJMB():FindFirstChild(ZtYjkXDgMlxc).CFrame;end;return 
        sCtxkbklLnmy(hFcjBtZBXthW,tGNxqMIMabVS)end)setreadonly(tZcInsImQQfX,true)

Section:NewButton("no recoil and inf ammo","no recoil",function()
do
    local Plr = game:GetService("Players").LocalPlayer
    for i,v in pairs(Plr.Backpack:GetChildren()) do
        Plr.Character.Humanoid:EquipTool(v)
        task.wait()
        Plr.Character.Humanoid:UnequipTools(v)

    end
end

for i,v in pairs(getgc(true)) do
    if type(v) == 'table' and rawget(v, 'Ammo') then
        --v.CrossHair = true
        --v.CrosshairOffset = 0
        v.Ammo = 9e9
        v.StoredAmmo = 9e9
        v.MaxStoredAmmo = 9e9
        v.BulletPenetration = 9e9
        v.MinDamage = 100
        v.BulletDrop = 0
        v.gunRecoil = {
            gunRecoilUp = {0,0},
            gunRecoilTilt = {0,0},
            gunRecoilLeft = {0,0},
            gunRecoilRight = {0,0},
        }
        v.camRecoil = {
            camRecoilUp = {0,0},
            camRecoilTilt = {0,0},
            camRecoilLeft = {0,0},
            camRecoilRight = {0,0},
        }
        v.FireModes = {
            ChangeFiremode = true,
            Semi = true,
            Burst = true,
            Auto = true }
        v.MinSpread = 0
        v.MaxSpread = 0
        task.wait()
    end
end
end)

Section:NewButton("AimBot for all games","AimLock",function()
PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()
CC      = game.Workspace.CurrentCamera
 
ENABLED      = false
ESP_ENABLED  = false
 
_G.FREE_FOR_ALL = true
 
_G.ESP_BIND    = 52
_G.CHANGE_AIM  = 'q'
 
_G.AIM_AT = 'Head'
 
wait(1)
 
function GetNearestPlayerToMouse()
  local PLAYERS      = {}
  local PLAYER_HOLD  = {}
  local DISTANCES    = {}
  for i, v in pairs(game.Players:GetPlayers()) do
    if v ~= PLAYER then
      table.insert(PLAYERS, v)
    end
  end
  for i, v in pairs(PLAYERS) do
    if _G.FREE_FOR_ALL == false then
      if v and (v.Character) ~= nil and v.TeamColor ~= PLAYER.TeamColor then
        local AIM = v.Character:FindFirstChild(_G.AIM_AT)
        if AIM ~= nil then
          local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
          local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
          local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
          local DIFF                     = math.floor((POS - AIM.Position).magnitude)
          PLAYER_HOLD[v.Name .. i]       = {}
          PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
          PLAYER_HOLD[v.Name .. i].plr   = v
          PLAYER_HOLD[v.Name .. i].diff  = DIFF
          table.insert(DISTANCES, DIFF)
        end
      end
    elseif _G.FREE_FOR_ALL == true then
      local AIM = v.Character:FindFirstChild(_G.AIM_AT)
      if AIM ~= nil then
        local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
        local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
        local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
        local DIFF                     = math.floor((POS - AIM.Position).magnitude)
        PLAYER_HOLD[v.Name .. i]       = {}
        PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
        PLAYER_HOLD[v.Name .. i].plr   = v
        PLAYER_HOLD[v.Name .. i].diff  = DIFF
        table.insert(DISTANCES, DIFF)
      end
    end
  end
 
  if unpack(DISTANCES) == nil then
    return false
  end
 
  local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
  if L_DISTANCE > 20 then
    return false
  end
 
  for i, v in pairs(PLAYER_HOLD) do
    if v.diff == L_DISTANCE then
      return v.plr
    end
  end
  return false
end
 
GUI_MAIN                           = Instance.new('ScreenGui', game.CoreGui)
GUI_TARGET                         = Instance.new('TextLabel', GUI_MAIN)
GUI_AIM_AT                         = Instance.new('TextLabel', GUI_MAIN)
 
GUI_MAIN.Name                      = 'AIMBOT'
 
GUI_TARGET.Size                    = UDim2.new(0,200,0,30)
GUI_TARGET.BackgroundTransparency  = 0.5
GUI_TARGET.BackgroundColor         = BrickColor.new('Fossil')
GUI_TARGET.BorderSizePixel         = 0
GUI_TARGET.Position                = UDim2.new(0.5,-100,0,0)
GUI_TARGET.Text                    = 'AIMBOT : OFF'
GUI_TARGET.TextColor3              = Color3.new(1,1,1)
GUI_TARGET.TextStrokeTransparency  = 1
GUI_TARGET.TextWrapped             = true
GUI_TARGET.FontSize                = 'Size24'
GUI_TARGET.Font                    = 'SourceSansBold'
 
GUI_AIM_AT.Size                    = UDim2.new(0,200,0,20)
GUI_AIM_AT.BackgroundTransparency  = 0.5
GUI_AIM_AT.BackgroundColor         = BrickColor.new('Fossil')
GUI_AIM_AT.BorderSizePixel         = 0
GUI_AIM_AT.Position                = UDim2.new(0.5,-100,0,30)
GUI_AIM_AT.Text                    = 'AIMING : HEAD'
GUI_AIM_AT.TextColor3              = Color3.new(1,1,1)
GUI_AIM_AT.TextStrokeTransparency  = 1
GUI_AIM_AT.TextWrapped             = true
GUI_AIM_AT.FontSize                = 'Size18'
GUI_AIM_AT.Font                    = 'SourceSansBold'
 
local TRACK = false
 
function CREATE(BASE, TEAM)
  local ESP_MAIN                   = Instance.new('BillboardGui', PLAYER.PlayerGui)
  local ESP_DOT                    = Instance.new('Frame', ESP_MAIN)
  local ESP_NAME                   = Instance.new('TextLabel', ESP_MAIN)
 
  ESP_MAIN.Name                    = 'ESP'
  ESP_MAIN.Adornee                 = BASE
  ESP_MAIN.AlwaysOnTop             = true
  ESP_MAIN.ExtentsOffset           = Vector3.new(0, 1, 0)
  ESP_MAIN.Size                    = UDim2.new(0, 5, 0, 5)
 
  ESP_DOT.Name                     = 'DOT'
  ESP_DOT.BackgroundColor          = BrickColor.new('Bright red')
  ESP_DOT.BackgroundTransparency   = 0.3
  ESP_DOT.BorderSizePixel          = 0
  ESP_DOT.Position                 = UDim2.new(-0.5, 0, -0.5, 0)
  ESP_DOT.Size                     = UDim2.new(2, 0, 2, 0)
  ESP_DOT.Visible                  = true
  ESP_DOT.ZIndex                   = 10
 
  ESP_NAME.Name                    = 'NAME'
  ESP_NAME.BackgroundColor3        = Color3.new(255, 255, 255)
  ESP_NAME.BackgroundTransparency  = 1
  ESP_NAME.BorderSizePixel         = 0
  ESP_NAME.Position                = UDim2.new(0, 0, 0, -40)
  ESP_NAME.Size                    = UDim2.new(1, 0, 10, 0)
  ESP_NAME.Visible                 = true
  ESP_NAME.ZIndex                  = 10
  ESP_NAME.Font                    = 'ArialBold'
  ESP_NAME.FontSize                = 'Size14'
  ESP_NAME.Text                    = BASE.Parent.Name:upper()
  ESP_NAME.TextColor               = BrickColor.new('Bright red')
end
 
function CLEAR()
  for _,v in pairs(PLAYER.PlayerGui:children()) do
    if v.Name == 'ESP' and v:IsA('BillboardGui') then
      v:Destroy()
    end
  end
end
 
function FIND()
  CLEAR()
  TRACK = true
  spawn(function()
    while wait() do
      if TRACK then
        CLEAR()
        for i,v in pairs(game.Players:GetChildren()) do
          if v.Character and v.Character:FindFirstChild('Head') then
            if _G.FREE_FOR_ALL == false then
              if v.TeamColor ~= PLAYER.TeamColor then
                if v.Character:FindFirstChild('Head') then
                  CREATE(v.Character.Head, true)
                end
              end
            else
              if v.Character:FindFirstChild('Head') then
                CREATE(v.Character.Head, true)
              end
            end
          end
        end
      end
    end
    wait(1)
  end)
end
 
MOUSE.Button2Down:connect(function()
  ENABLED = true
end)
 
MOUSE.Button2Up:connect(function()
  ENABLED = false
end)
 
MOUSE.KeyDown:connect(function(KEY)
  KEY = KEY:lower():byte()
  if KEY == _G.ESP_BIND then
    if ESP_ENABLED == false then
      FIND()
      ESP_ENABLED = true
      print('ESP : ON')
    elseif ESP_ENABLED == true then
      wait()
      CLEAR()
      TRACK = false
      ESP_ENABLED = false
      print('ESP : OFF')
    end
  end
end)
 
MOUSE.KeyDown:connect(function(KEY)
  if KEY == _G.CHANGE_AIM then
    if _G.AIM_AT == 'Head' then
      _G.AIM_AT = 'Torso'
      GUI_AIM_AT.Text = 'AIMING : TORSO'
    elseif _G.AIM_AT == 'Torso' then
      _G.AIM_AT = 'Head'
      GUI_AIM_AT.Text = 'AIMING : HEAD'
    end
  end
end)
 
game:GetService('RunService').RenderStepped:connect(function()
  if ENABLED then
    local TARGET = GetNearestPlayerToMouse()
    if (TARGET ~= false) then
      local AIM = TARGET.Character:FindFirstChild(_G.AIM_AT)
      if AIM then
        CC.CoordinateFrame = CFrame.new(CC.CoordinateFrame.p, AIM.CFrame.p)
      end
      GUI_TARGET.Text = 'AIMBOT : '.. TARGET.Name:sub(1, 5)
    else
      GUI_TARGET.Text = 'AIMBOT : OFF'
    end
  end
end)
 
repeat
  wait()
  if ESP_ENABLED == true then
    FIND()
  end
until ESP_ENABLED == false
end)
