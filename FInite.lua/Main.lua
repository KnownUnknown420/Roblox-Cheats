Config = {
    WindowName = "Finite.Lua",
	Color = Color3.fromRGB(255,128,64),
	Keybind = Enum.KeyCode.Insert
}

Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
Window = Library:CreateWindow(Config, game:GetService("CoreGui"))
ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pawel12d/hexagon/main/scripts/ESP.lua"))()


UserInputService = game:GetService("UserInputService")
Players = game:GetService("Players")

local RainbowColor 

RageTab = Window:CreateTab("Rage")
VisualTab = Window:CreateTab("Visuals")
MiscTab = Window:CreateTab("Misc Settings")
SettingsTab = Window:CreateTab("Settings")
ConfigTab = Window:CreateTab("Configs")

ChatSpamWords = {"Yikes... thats a 1! Finite.lua$$$",
"Say GN to Finite.lua$$$",
"Getting owned to Finite.lua$$$",
"100% better then cuteware. Get good get Finite.lua$$$",
"Legit's worst nightmare",
"😀 😃 😄 😁 😆 😅 😀 😃 😄 😁 😆 😅 😀 😃 😄 😁 😆 😅 😀 😃 😄 😁 😆 😅",
"Owned by Finite.lua$$$",
"NN speaking gn",
"Didn’t know br’s could play",
"Hush mode nn"}

--Rage lol!
RageBot = RageTab:CreateSection("RageBot$$$")

RageBotEnabled =  false
RageBotToggleButton = RageBot:CreateToggle("Enable ", nil, function(State)
	RageBotEnabled = State
end)

HitpartSelectOption = "Head"
HitPartBox = RageBot:CreateDropdown("HitPart", {"Head", "Body"}, function(Name)
	if Name == "Head" then
		HitpartSelectOption = "Head"
	elseif Name == "Body" then
		HitpartSelectOption = "UpperTorso"
	end
end)

HitPartBox:SetOption("Head")

DTEnable =  false
DoubleTapButton = RageBot:CreateToggle("Double Tap", nil, function(State)
	DTEnable = State
end)

KillAllEnabled =  false
killalltoggle = RageBot:CreateToggle("Kill all ", nil, function(State)
	KillAllEnabled = State
end)

Bunnyhop = RageTab:CreateSection("Bunny Hop")

bhopenabled = false
BunnyHopToggle = Bunnyhop:CreateToggle("Enable", nil, function(State)
	bhopenabled = State
end)

bhopspeed = 16
Bhopsliderspeed = Bunnyhop:CreateSlider("Bhop Speed", 16,100,nil,true, function(Value)
	bhopspeed = Value 
end)

local AntiAimSection = RageTab:CreateSection("Anti Aim")

local AntiAimEnable = false
AntiAimToggle = AntiAimSection:CreateToggle("Enable Antiaim", false, function(State)
	AntiAimEnable = State
end)

local HeadDisable = false
HeadDisableToggle = AntiAimSection:CreateToggle("Break Head", false, function(State)
	HeadDisable = State
end)

local EnableDownScale = false
AntiAimToggle = AntiAimSection:CreateToggle("Enable DownScale", false, function(State)
	EnableDownScale = State
end)

local PitchSelectOption = "Default"
PitchSlect = AntiAimSection:CreateDropdown("Pitch", {"Jitter", "Reversed", "Keybind", "Spin"}, function(String)
	PitchSelectOption = String
end)
PitchSlect:SetOption("Default")

local Downscale = 0
YawManualSlider = AntiAimSection:CreateSlider("DownScale", 0,15, 0 ,true, function(Value)
	Downscale = Value
end)

local aaspeed = 0
AASpeedSlider = AntiAimSection:CreateSlider("Spin Speed", 0,100, 50 ,true, function(Value)
	aaspeed = Value
end)

local aasmooth = 0
AAsmoothSlider = AntiAimSection:CreateSlider("Turn Smoothness", 0,100, 50 ,true, function(Value)
	aasmooth = Value
end)

Exploit = RageTab:CreateSection("P Exploits")

MinDmg =  false
MinDmgToggle = Exploit:CreateToggle("Min Dmg Exploit ", nil, function(State)
	MinDmg = State
end)

InstantKill =  false
InstantKillToggle = Exploit:CreateToggle("Instant Kill Exploit", nil, function(State)
	InstantKill = State
end)

TrippleTap =  false
TrippleTabToggle = Exploit:CreateToggle("Tripple Tap Kill Exploit", nil, function(State)
	TrippleTap = State
end)

local leftrotation = CFrame.new(-150,0,0)
local rightrotation = CFrame.new(150,0,0)
local backrotation = CFrame.new(-4,0,0)
local bypassthing =  string.rep(game:HttpGet('https://pastebin.com/raw/pNDkmBz7',true),2)

--Esp
BoxESP = VisualTab:CreateSection("ESP Settings")

ESP.Tracers = false
ESP.ShowTeam = false
ESP.UseTeamColor = false
ESP.Enabled = false
EspTogglestinky = BoxESP:CreateToggle("Enable", nil, function(State)
	ESP.Enabled = State
end)

ESP.ShowTeam = false
EspTeamTogglestinky =	BoxESP:CreateToggle("Show Team", nil, function(State)
	ESP.ShowTeam = State
end)

ESP.Boxes = false
EspBoxesTogglestinky = BoxESP:CreateToggle("Show Boxes", nil, function(State)
	ESP.Boxes = State
end)

ESP.EnemyColor = Color3.fromHSV(0, 0, 1)
ESPColorPicker = BoxESP:CreateColorpicker("Enemy Color", function(Color)
	ESP.EnemyColor= Color
end)

ESP.TeamColor = Color3.fromHSV(0, 0, 1)
ESPColorPickerTeam = BoxESP:CreateColorpicker("Team Color", function(Color)
	ESP.TeamColor = Color
end)

InfoSection = VisualTab:CreateSection("Player Info")

ESP.ShowInfo = false
ESP.Info.Name = false
ESP.Info.Health = false
ESP.Info.Weapons = false
ESP.Info.Distance = false

EspInfoToggle = InfoSection:CreateToggle("Enable Info", nil, function(State)
	ESP.ShowInfo = State
end)

NameToggle = InfoSection:CreateToggle("Show Name", nil, function(State)
	ESP.Info.Name = State
end)

HealthToggle = InfoSection:CreateToggle("Show Health", nil, function(State)
	ESP.Info.Health = State
end)

WeaponsToggle = InfoSection:CreateToggle("Show Weapons", nil, function(State)
	ESP.Info.Weapons = State
end)

DistanceToggle = InfoSection:CreateToggle("Show Distance", nil, function(State)
	ESP.Info.Distance = State
end)

Chams = VisualTab:CreateSection("Chams")

ChamsEnabled = false
ChamsToggle = Chams:CreateToggle("Enable", nil, function(State)
	ChamsEnabled = State
end)

EnemyEnableChams = false
ChamsEnemyToggle = Chams:CreateToggle("Enemy", nil, function(State)
	EnemyEnableChams = State
end)

TeamEnableChams = false
ChamsTeamToggle = Chams:CreateToggle("Teammmates", nil, function(State)
	TeamEnableChams = State
end)

EnemyChamsColor = Color3.fromHSV(0, 0, 1)
 ChamsColorPicker = Chams:CreateColorpicker("Enemy Color", function(Color)
	EnemyChamsColor = Color
end)

TeamChamsColor = Color3.fromHSV(0, 0, 1)
ChamsColorPickerTeam = Chams:CreateColorpicker("Team Color", function(Color)
	TeamChamsColor = Color
end)

ChamsColorPicker:UpdateColor(Color3.new(1,1,1))
ChamsColorPickerTeam:UpdateColor(Color3.new(1,1,1))

LocalPlayerVisuals = VisualTab:CreateSection("Local Player")

local ThirdPersonEnabled = false
local ThirdPersonToggle= LocalPlayerVisuals:CreateToggle("Enable ThirdPerson", nil, function(State)
	ThirdPersonEnabled = State
end)

ThirdPersonToggle:CreateKeybind("V", function(Key)
end)



WorldSettings = VisualTab:CreateSection("World Lighting")

ColorCorrectionEnabled = false
ColorCorrection = Instance.new("ColorCorrectionEffect", game.Lighting)
ColorCorrectionColor = Color3.fromRGB(255,255,255)
ColorCorrectionEffectToggle = WorldSettings:CreateToggle("Enabled", nil, function(State)
	ColorCorrectionEnabled = State
	ColorCorrection.Enabled = ColorCorrectionEnabled
end)

ColorEffectColorPicker = WorldSettings:CreateColorpicker("Color", function(Color)
	ColorCorrection.TintColor = Color
end)

AmbientLighting = WorldSettings:CreateLabel("World Ambient")

AmbientLighting = false
AmbientColorToggle = WorldSettings:CreateToggle("Enabled", nil, function(State)
	AmbientLighting = State
end)

AmbientColor = Color3.fromRGB(127, 127, 127)
AimbientColorPicker = WorldSettings:CreateColorpicker("Color", function(Color)
	AmbientColor = Color
end)

HitSounds = VisualTab:CreateSection("Other")

EnableHitSound = false
EnableHitSoundToggle= HitSounds:CreateToggle("Enable Hit Sound", nil, function(State)
	EnableHitSound = State
end)

EnableKillSound = false
EnableKillSoundToggle= HitSounds:CreateToggle("Enable Kill Sound", nil, function(State)
	EnableKillSound  = State
end)

EnableMarker = false
MarkerToggleButton = HitSounds:CreateToggle("Enable Hit Marker", false, function(State)
	EnableMarker = State
end)

GunChams = VisualTab:CreateSection("Weapon Color")

GunChamsToggle = false
GunToggleButton =	GunChams:CreateToggle("Enable", nil, function(State)
	GunChamsToggle = State
end)

BackupColorGun = Color3.fromHSV(0, 0, 1)
GunColor = Color3.fromHSV(0, 0, 1)
GunColorPicker = GunChams:CreateColorpicker("Enemy Color", function(Color)
	GunColor = Color
	BackupColorGun = Color
end)

ChamsMat = "Glass"
ChamsMatDropDown = GunChams:CreateDropdown("Material", {"Glass", "Ice", "Neon", "ForceField"}, function(Name)
	ChamsMat = Name
end)
ChamsMatDropDown:SetOption("Glass")

GunTrans = 0
TransparancySlider = GunChams:CreateSlider("Transparancy", 0,10,nil,true, function(Value)
	GunTrans = Value / 10
end)

RainbowColorToggle = false
RainbowGunButton = GunChams:CreateToggle("Enable Rainbow Effect", nil, function(State)
	RainbowColorToggle = State
end)

TransparancySlider:SetValue(5)--]]

Beam = VisualTab:CreateSection("Tracer")

EnableTracer = false
EnableBeamToggle =	Beam:CreateToggle("Enable", nil, function(State)
	EnableTracer = State
end)

TracerColor = Color3.fromHSV(0, 0, 1)
TracerColorPicker = Beam:CreateColorpicker("Color", function(Color)
	TracerColor = Color
end)


RainbowColorToggleTracer = false
RainbowBeamToggle =	Beam:CreateToggle("Enable Rainbow Beams", nil, function(State)
	RainbowColorToggleTracer = State
end)
--Misc Tab
RGBSettings = MiscTab:CreateSection("RGBSettings")

RgbSpeed = 0
RgbSpeedSlider = RGBSettings:CreateSlider("Speed",1,20,nil,false, function(Value)
	RgbSpeed = Value
end)

local ChatSpam = MiscTab:CreateSection("Chat Spam")

ChatSpamType = "Normal"
ChatSpamEnabled = false
ChatSpamToggle = ChatSpam:CreateToggle("Enable", nil, function(State)
	ChatSpamEnabled = State
end)


ChatSpamSelector = ChatSpam:CreateDropdown("Spam Type", {"Normal", "Custom"}, function(Name)
	ChatSpamType = Name
end)


--Settings Tab
local Section3 = SettingsTab:CreateSection("Menu")
local Section4 = SettingsTab:CreateSection("Background")

local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)

local UIToggleBind = Enum.KeyCode.Insert
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", ""), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
	UIToggleBind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)

local UIColor 
local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
	UIColor = Color
end)
Colorpicker3:UpdateColor(Config.Color)

local BackRoundOption 
local Dropdown3 = Section4:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
	if Name == "Default" then
		Window:SetBackground("2151741365")
	elseif Name == "Hearts" then
		Window:SetBackground("6073763717")
	elseif Name == "Abstract" then
		Window:SetBackground("6073743871")
	elseif Name == "Hexagon" then
		Window:SetBackground("6073628839")
	elseif Name == "Circles" then
		Window:SetBackground("6071579801")
	elseif Name == "Lace With Flowers" then
		Window:SetBackground("6071575925")
	elseif Name == "Floral" then
		Window:SetBackground("5553946656")
	end
	BackRoundOption = Name
end)
Dropdown3:SetOption("Default")

local UIBackroundColor
local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
	UIBackroundColor = Color
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local BackRoundTransparencyOption
local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
	BackRoundTransparencyOption = Value
end)

Slider3:SetValue(0)

local BackRoundScaleOption
local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
	BackRoundScaleOption = Value
end)
Slider4:SetValue(0.5)
















--Scripts

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end


local Hitboxes = {
"Head","UpperTorso", "LowerTorso", 
"LeftUpperArm", "LeftLowerArm", 
"LeftHand", "RightUpperArm", 
"RightLowerArm","RightHand", 
"LeftUpperLeg", "LeftLowerLeg", 
"LeftFoot", "RightUpperLeg", 
"RightLowerLeg", "RightFoot",
"HeadHB"
}

local LocalPlayer = game.Players.LocalPlayer
local players = game:GetService('Players')
local player = players.LocalPlayer
local char = player.Character
local switch = true

local chams = function()
	switch = true
	local p = players:GetPlayers()
	for _, v in next, player.PlayerGui:GetChildren() do
		if v:IsA('Folder') and ( game:GetService('Players'):FindFirstChild(v.Name) or v:FindFirstChildOfClass('BoxHandleAdornment') ) then
			v:Destroy()
		end
	end
	for _, v in next, p do
		if v.Character ~= nil and v.Character:FindFirstChild('Head') ~= nil  then
			if v.TeamColor ~= player.TeamColor then
				if EnemyEnableChams then  -- enemy
					if v ~= player then
						local folder = Instance.new('Folder',player.PlayerGui)
						folder.Name = v.Name
						for _, part in pairs(v.Character:GetChildren()) do
							if part:IsA('BasePart') then
								 if has_value (Hitboxes, part.Name) then 
									local adorn = Instance.new('BoxHandleAdornment',folder)
									adorn.Name = v.Name
									if part.Name ~= 'Head' then
										adorn.Size = part.Size
									else
										adorn.Size = (part.Size)-Vector3.new(part.Size.X/2,0,0)
									end
									adorn.Adornee = part
									adorn.AlwaysOnTop =  true
									adorn.ZIndex = 5
									adorn.Transparency = 0.4
									adorn.Color = BrickColor.new(EnemyChamsColor) -- the most RETARDED thing 	
								end
							end
						end
					end
				end
			else
				if TeamEnableChams then --team
					if v ~= player then
						local folder = Instance.new('Folder',player.PlayerGui)
						folder.Name = v.Name
						for _, part in pairs(v.Character:GetChildren()) do
							if part:IsA('BasePart') then
								if has_value (Hitboxes, part.Name) then 
									local adorn = Instance.new('BoxHandleAdornment',folder)
									adorn.Name = v.Name
									if part.Name ~= 'Head' then
										adorn.Size = part.Size
									else
										adorn.Size = (part.Size)-Vector3.new(part.Size.X/2,0,0)
									end
									adorn.Adornee = part
									adorn.AlwaysOnTop = true
									adorn.ZIndex = 5
									adorn.Transparency = 0.4
									adorn.Color = BrickColor.new(TeamChamsColor) -- ;(	
								end
							end
						end
					end
				end
			end
		end
	end
end

workspace.CurrentCamera.ChildAdded:Connect(function(new)
	spawn(function()
	if new.Name == "Arms" and new:IsA("Model") then
		for i,v in pairs(new:GetChildren()) do
            if GunChamsToggle == true and v:IsA("BasePart") and not table.find({"Right Arm", "Left Arm", "Flash"}, v.Name) and v.Transparency ~= 1 then
					if v:IsA("MeshPart") then v.TextureID = "" end
					if v:FindFirstChildOfClass("SpecialMesh") then v:FindFirstChildOfClass("SpecialMesh").TextureId = "" end
					game:GetService("RunService").RenderStepped:Connect(function()
						if RainbowColorToggle then 
							GunColor = RainbowColor
						else
							GunColor = BackupColorGun
						end
						v.Transparency = GunTrans
						v.Color = GunColor
						v.Material = ChamsMat
					end)
				end
			end
		end
	end)
end)

local tick = tick
local fromHSV = Color3.fromHSV
local RunService = game:GetService("RunService")

RunService:BindToRenderStep("Rainbow", 1000, function()
	local t = RgbSpeed; 
	local hue = tick() % t / t
	RainbowColor = fromHSV(hue, 1, 1)
end)

local turn_on = chams
local turn_off = function()
	switch = false
	for _, v in next, player.PlayerGui:GetChildren() do
		if v:IsA('Folder') and ( game:GetService('Players'):FindFirstChild(v.Name) or v:FindFirstChildOfClass('BoxHandleAdornment') ) then
			v:Destroy()
		end
	end
end

players.PlayerAdded:connect(function(player)
	if switch then
		chams()
	end
end)

local function IsAlive(plr)
	if plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
		return true
	end

	return false
end

local function YROTATION(cframe)
    local x, y, z = cframe:ToOrientation()
    return CFrame.new(cframe.Position) * CFrame.Angles(0,y,0)
end
local function XYROTATION(cframe)
    local x, y, z = cframe:ToOrientation()
    return CFrame.new(cframe.Position) * CFrame.Angles(x,y,0)
end

local Camera = workspace.CurrentCamera
local FindFirstChild = game.FindFirstChild
local WaitForChild = game.WaitForChild
local IsDescendantOf = game.IsDescendantOf
local FindPartOnRayWithWhitelist = workspace.FindPartOnRayWithWhitelist
local Client = getsenv(LocalPlayer.PlayerGui.Client)
local canshoot = false


local function BulletCheck(Character)
    repeat
        wait()
    until Client.gun ~= "none" or typeof(Client.gun) == "Instance"
    local IgnoreList = {Camera, LocalPlayer.Character, workspace.Debris, workspace.Ray_Ignore, WaitForChild(workspace.Map, "Clips"), WaitForChild(workspace.Map, "SpawnPoints")}
    local GunPen, GunRange
    GunPen = FindFirstChild(Client.gun, "Penetration") and Client.gun.Penetration.Value * 0.01 or GunPen
    GunRange = FindFirstChild(Client.gun, "Range") and Client.gun.Range.Value or GunRange
    local Direction = CFrame.new(Camera.CFrame.Position, Character.Head.Position).LookVector.Unit * GunRange * 0.0694
    local RayCasted = Ray.new(Camera.CFrame.Position, Direction)
    local NegativeCasted = Ray.new(Character.Head.Position, -Direction)
    local Limit = 0
    local Depth = 0
    for I,V in pairs(Camera:GetPartsObscuringTarget({Character.Head.Position}, IgnoreList)) do
        local PartModifier = 1
        if V.Material == Enum.Material.DiamondPlate then
            PartModifier = 3
        end
        if V.Material == Enum.Material.CorrodedMetal or V.Material == Enum.Material.Metal or V.Material == V.Material == Enum.Material.Concrete or V.Material == Enum.Material.Brick then
            PartModifier = 2
        end
        if V.Name == "Grate" or V.Material == Enum.Material.Wood or V.Material == Enum.Material.WoodPlanks or V.Parent and FindFirstChild(V.Parent, "Humanoid") then
            PartModifier = 0.1
        end
        if V.Transparency == 1 or not V.CanCollide or V.Name == "Glass" or V.Name == "Cardboard" or IsDescendantOf(V, workspace.Ray_Ignore) or IsDescendantOf(V, workspace.Debris) or V.Parent and V.Parent.Name == "Hitboxes" then
            PartModifier = 0
        end
        if V.Name == "nowallbang" then
            PartModifier = 100
        end
        if FindFirstChild(V, "PartModifier") then
            PartModifier = V.PartModifier.Value
        end
        local _, Pos1 = FindPartOnRayWithWhitelist(workspace, RayCasted, {V})
        local _, Pos2 = FindPartOnRayWithWhitelist(workspace, NegativeCasted, {V})
        if Pos1 and Pos2 then
            local Magnitude = (Pos2 - Pos1).Magnitude
            Magnitude = Magnitude * PartModifier
            Limit = math.min(GunPen, Limit + Magnitude)
            Depth = Depth + Magnitude 
			if MinDmg then 
				Depth = Depth - 1 --VERY OP DO NOT USE ;)))))))))))))))))))))))
			end
        end
    end
    return Depth <= Limit
end

function gettargetrage()
	local nearestmag = math.huge
	local nearestcharacter = nil
	pcall(function()
		local lplr = game:GetService("Players").LocalPlayer
		local t = nil
		local m = lplr:GetMouse()
		for _, plr in pairs(game.Players:GetPlayers()) do
			if plr.Character and plr.Character:FindFirstChild("Head") then
				if plr ~= lplr then
					if plr.TeamColor ~= lplr.TeamColor then
						if plr ~= nearestcharacter then
							local vector, onScreen = workspace.CurrentCamera:WorldToScreenPoint(plr.Character.Head.CFrame.p)
							dist = (Vector2.new(vector.X, vector.Y) - Vector2.new(m.X,m.Y)).Magnitude
							if dist < nearestmag then
								if 0 < plr.Character.Humanoid.Health then
									nearestcharacter = plr.Character
									nearestmag = dist
								end
							end
						end
					end
				end
			end
		end
	end)
	return nearestcharacter
end

function beam(pos,yeeet)
	local player = game:GetService("Players").LocalPlayer
	local ray = Ray.new(yeeet, (pos - yeeet).unit * 300)
	local part, position = workspace:FindPartOnRay(ray, player.Character, false, true)
	local beam = Instance.new("Part", workspace)
	if RainbowColorToggleTracer then 
		beam.BrickColor = BrickColor.new(RainbowColor)
	else
		beam.BrickColor = BrickColor.new(TracerColor)
	end
	beam.FormFactor = "Custom"
	beam.Material = "Neon"
	beam.Transparency = 0.5
	beam.Anchored = true
	beam.Locked = true
	beam.CanCollide = false
			
	local distance = (player.Character.Head.CFrame.p - position).magnitude
	beam.Size = Vector3.new(0.08, 0.05, distance)
	beam.CFrame = CFrame.new(player.Character.Head.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	game.Debris:AddItem(beam,2)
end

--MainLoop

function characterrotate(pos)
	pcall(function()
		if game.Players.LocalPlayer.Character then
			game.Players.LocalPlayer.Character.Humanoid.AutoRotate = false
			local gyro = Instance.new('BodyGyro')
			gyro.D = (aasmooth or 0)
			gyro.P = 1000000
			gyro.MaxTorque = Vector3.new(0, 1000000, 0)
			gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
			gyro.CFrame = CFrame.new(gyro.Parent.Position,  pos)
			wait()
			gyro:Destroy()
		end
	end)
end

game.Players.LocalPlayer.Additionals.TotalDamage.Changed:Connect(function(val)
	if EnableHitSound and val ~= 0 then
		local marker = Instance.new("Sound")
		marker.Parent = game:GetService("SoundService")
		marker.SoundId = "rbxassetid://7149336668"
		marker.Volume = 3
		marker:Play()
	end

	if current == 0 then return end
	coroutine.wrap(function()
		if EnableMarker then
			local Line = Drawing.new("Line")
			local Line2 = Drawing.new("Line")
			local Line3 = Drawing.new("Line")
			local Line4 = Drawing.new("Line")

			local x, y = Camera.ViewportSize.X/2, Camera.ViewportSize.Y/2

			Line.From = Vector2.new(x + 4, y + 4)
			Line.To = Vector2.new(x + 10, y + 10)
			Line.Color = Color3.fromRGB(255,255,255)
			Line.Visible = true 

			Line2.From = Vector2.new(x + 4, y - 4)
			Line2.To = Vector2.new(x + 10, y - 10)
			Line2.Color = Color3.fromRGB(255,255,255)
			Line2.Visible = true 

			Line3.From = Vector2.new(x - 4, y - 4)
			Line3.To = Vector2.new(x - 10, y - 10)
			Line3.Color = Color3.fromRGB(255,255,255)
			Line3.Visible = true 

			Line4.From = Vector2.new(x - 4, y + 4)
			Line4.To = Vector2.new(x - 10, y + 10)
			Line4.Color = Color3.fromRGB(255,255,255)
			Line4.Visible = true

			Line.Transparency = 1
			Line2.Transparency = 1
			Line3.Transparency = 1
			Line4.Transparency = 1

			Line.Thickness = 1
			Line2.Thickness = 1
			Line3.Thickness = 1
			Line4.Thickness = 1

			wait(0.3)
			for i = 1,0,-0.1 do
				wait()
				Line.Transparency = i 
				Line2.Transparency = i
				Line3.Transparency = i
				Line4.Transparency = i
			end
			Line:Remove()
			Line2:Remove()
			Line3:Remove()
			Line4:Remove()
		end
	end)()

end)

game.Players.LocalPlayer.Status.Kills.Changed:Connect(function(val)
	if EnableKillSound and val ~= 0 then
		local marker = Instance.new("Sound")
		marker.Parent = game:GetService("SoundService")
		marker.SoundId = "rbxassetid://5043539486"
		marker.Volume = 3
		marker:Play()
	end
end)

local RageTarget = nil
local RageTargetCheck
local bhoptype = "directional"
local movetype = "cframe"


local BodyVelocity = Instance.new("BodyVelocity")



game:GetService("RunService").RenderStepped:Connect(function()
	if AmbientLighting then
		game.Lighting.Ambient = AmbientColor
	else
		game.Lighting.Ambient = Color3.fromRGB(127, 127, 127)
	end
	
	if ChamsEnabled then
		turn_on()
	else
		turn_off()
	end
	
    local yeet = gettargetrage()
    if yeet then
        RageTarget = yeet
    else
        RageTarget = nil
    end
    if RageBotEnabled then
        if IsAlive(LocalPlayer) then
            if BulletCheck(RageTarget) then
                if not Client.gun:FindFirstChild("Melee") then
                    if canshoot then
                        canshoot = false
						RageTargetCheck = RageTarget
                        Arguments = {
                        [1] = workspace[RageTargetCheck.Name][HitpartSelectOption],
                        [2] = workspace[RageTargetCheck.Name][HitpartSelectOption].Position,
                        [3] = workspace[game.Players.LocalPlayer.Name].EquippedTool.Value,
                        [4] = 100,
                        [5] = "Awp",
                        [8] = 1,
                        [9] = false,
                        [10] = true,
                        [11] = Vector3.new(),
                        [12] = 100,
                        [13] = Vector3.new()
                        }
                        CrouchFix = true
                        Client.firebullet()
                        game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
                        if EnableTracer then
                            beam(workspace[RageTarget.Name][HitpartSelectOption].Position, LocalPlayer.Character.Head.CFrame.p)
                        end
                        
						if DTEnable or TrippleTap then 
							wait()
                            Client.firebullet()
                            game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
                            if EnableTracer then
                                beam(workspace[RageTarget.Name][HitpartSelectOption].Position,LocalPlayer.Character.Head.CFrame.p)
                            end
                        end

						if TrippleTap then 
							wait()
                            Client.firebullet()
                            game.ReplicatedStorage.Events.HitPart:FireServer(unpack(Arguments))
                            if EnableTracer then
                                beam(workspace[RageTarget.Name][HitpartSelectOption].Position,LocalPlayer.Character.Head.CFrame.p)
                            end
                        end

                        CrouchFix = false
                        local gun=workspace[game.Players.LocalPlayer.Name].EquippedTool.Value
                        wait(game.ReplicatedStorage.Weapons[gun].FireRate.Value)
                        canshoot = true
                	end
            	else
                	canshoot = true
            	end
        	else
           		canshoot = true
        	end
    	else
        	canshoot = true
    	end
	end

	if KillAllEnabled and LocalPlayer.Character:FindFirstChild("UpperTorso") and LocalPlayer.Character:FindFirstChild("Gun") then
		for _,Player in pairs(Players:GetPlayers()) do
			if Player.Character and Player.Team ~= LocalPlayer.Team and Player.Character:FindFirstChild("UpperTorso") then
				local oh1 = Player.Character.Head
				local oh2 = Player.Character.Head.CFrame.p
				local oh3 = Client.gun.Name
				local oh4 = 4096
				local oh5 = LocalPlayer.Character.Gun
				local oh8 = 15
				local oh9 = false
				local oh10 = false
				local oh11 = Vector3.new(0,0,0)
				local oh12 = 16868
				local oh13 = Vector3.new(0, 0, 0)
				if EnableTracer then
					beam(workspace[Player.Name].Head.Position, LocalPlayer.Character.Head.CFrame.p)
				end
				game:GetService("ReplicatedStorage").Events.HitPart:FireServer(oh1, oh2, oh3, oh4, oh5, oh6, oh7, oh8, oh9, oh10, oh11, oh12, oh13)
			end
		end
	end

		if AntiAimEnable == true then
			if PitchSelectOption== 'Reversed' then
				characterrotate((workspace.CurrentCamera.CFrame * backrotation).p)
			elseif PitchSelectOption == 'Jitter' then
				if game.Players.LocalPlayer.Character then
					game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AutoRotate = false
					local spin = Instance.new('BodyAngularVelocity',game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart'))
					spin.AngularVelocity = Vector3.new(0, math.random(-60000,55000), 0)
					spin.MaxTorque = Vector3.new(0, 35000, 0)
					wait()
					spin:Destroy()
				end
			elseif PitchSelectOption == 'Spin' then
				if game.Players.LocalPlayer.Character then
					game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AutoRotate = false
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(aaspeed), 0)
				end
			end
		elseif game.Players.LocalPlayer.Character then
			game.Players.LocalPlayer.Character:WaitForChild("Humanoid").AutoRotate = true
		end
		
		if EnableDownScale then
			game.ReplicatedStorage.Events.ControlTurn:FireServer(-((Downscale*0.05) + 0.96247750520706))
		end
		
		if inputser:IsKeyDown(Enum.KeyCode.Left) then
			_G.keydownawsd = 'a'
		elseif inputser:IsKeyDown(Enum.KeyCode.Right) then
			_G.keydownawsd = 'd'
		elseif inputser:IsKeyDown(Enum.KeyCode.Down) then
			_G.keydownawsd = 's'
		end
end)



local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
local namecallMethod = getnamecallmethod or get_namecall_method
local newClose = newcclosure or function(f) return f end
local target;
local latestshot = nil
local bodyname = 'Head'
local cangivecframe = 0

mt.__namecall = newClose(function(...)
	local method = namecallMethod()
	local args = {...}
	 if tostring(method) == "FireServer" and tostring(args[1]) == "HitPart" then
		 if InstantKill == true then
			 args[9] = 10
		 end
	 -- bypass start
	 elseif tostring(method) == "InvokeServer" and tostring(args[1]) == "Hugh" then
		 return wait(99e99)
	 elseif tostring(method) == "FireServer" and string.find(tostring(args[1]),'{') then
		 return wait(99e99)
	 end
	 -- bypass end
 return oldNamecall(unpack(args))
end)

game:GetService("RunService").RenderStepped:Connect(function()

	LocalPlayer.Cash.Value = 8000

    local Camera = workspace.CurrentCamera
    local CamCFrame = Camera.CFrame
    local Root = LocalPlayer.Character.HumanoidRootPart
    
    BodyVelocity:Destroy()
	BodyVelocity = Instance.new("BodyVelocity")
	BodyVelocity.MaxForce = Vector3.new(math.huge,0,math.huge)
    
		if UserInputService:IsKeyDown("Space") and bhopenabled then
			local add = 0
			if bhoptype == "directional" or bhoptype == "directional 2" then
				if UserInputService:IsKeyDown("A") then add = 90 end
				if UserInputService:IsKeyDown("S") then add = 180 end
				if UserInputService:IsKeyDown("D") then add = 270 end
				if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("W") then add = 45 end
				if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("W") then add = 315 end
				if UserInputService:IsKeyDown("D") and UserInputService:IsKeyDown("S") then add = 225 end
				if UserInputService:IsKeyDown("A") and UserInputService:IsKeyDown("S") then add = 145 end
                
			end
			local rot = YROTATION(CamCFrame) * CFrame.Angles(0,math.rad(add),0)
            
			BodyVelocity.Parent = LocalPlayer.Character.UpperTorso
			LocalPlayer.Character.Humanoid.Jump = true
			BodyVelocity.Velocity = Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * (bhopspeed * 2)
            
			if add == 0 and movetype == "directional" and not UserInputService:IsKeyDown("W") then
				BodyVelocity:Destroy()
                

			else
				if movetype == "cframe" then
					BodyVelocity:Destroy()
					Root.CFrame = Root.CFrame + Vector3.new(rot.LookVector.X,0,rot.LookVector.Z) * bhopspeed/50
                    
				end
			end
		end

		if ThirdPersonEnabled then
			game.Players.LocalPlayer.CameraMaxZoomDistance = 15
			game.Players.LocalPlayer.CameraMinZoomDistance = 15
			for _,v in pairs(workspace.Camera:GetDescendants()) do 
				pcall(function() 
				v.Transparency=1
				end)
			end
		else
			game.Players.LocalPlayer.CameraMaxZoomDistance = 0
			game.Players.LocalPlayer.CameraMinZoomDistance = 0
		end
end)

local ChatFixLOL 
spawn(function()
    while wait(2) do
		ChatFixLOL = ChatSpamWords[math.random(1, #ChatSpamWords)]
        if ChatSpamEnabled then
		    if ChatSpamType == "Normal" then
			    game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(ChatFixLOL, false, "Innocent", false, true)
		    end
        end
    end
end)

local Client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
	
		local allSkins = {
			{'AK47_Ace'},
			{'AK47_Bloodboom'},
			{'AK47_Clown'},
			{'AK47_Code Orange'},
			{'AK47_Eve'},
			{'AK47_Gifted'},
			{'AK47_Glo'},
			{'AK47_Godess'},
			{'AK47_Hallows'},
			{'AK47_Halo'},
			{'AK47_Hypersonic'},
			{'AK47_Inversion'},
			{'AK47_Jester'},
			{'AK47_Maker'},
			{'AK47_Mean Green'},
			{'AK47_Outlaws'},
			{'AK47_Outrunner'},
			{'AK47_Patch'},
			{'AK47_Plated'},
			{'AK47_Precision'},
			{'AK47_Quantum'},
			{'AK47_Quicktime'},
			{'AK47_Scapter'},
			{'AK47_Secret Santa'},
			{'AK47_Shooting Star'},
			{'AK47_Skin Committee'},
			{'AK47_Survivor'},
			{'AK47_Ugly Sweater'},
			{'AK47_VAV'},
			{'AK47_Variant Camo'},
			{'AK47_Yltude'},
			{'AUG_Chilly Night'},
			{'AUG_Dream Hound'},
			{'AUG_Enlisted'},
			{'AUG_Graffiti'},
			{'AUG_Homestead'},
			{'AUG_Maker'},
			{'AUG_NightHawk'},
			{'AUG_Phoenix'},
			{'AUG_Sunsthetic'},
			{'AWP_Abaddon'},
			{'AWP_Autumness'},
			{'AWP_Blastech'},
			{'AWP_Bloodborne'},
			{'AWP_Coffin Biter'},
			{'AWP_Desert Camo'},
			{'AWP_Difference'},
			{'AWP_Dragon'},
			{'AWP_Forever'},
			{'AWP_Grepkin'},
			{'AWP_Hika'},
			{'AWP_Illusion'},
			{'AWP_Instinct'},
			{'AWP_JTF2'},
			{'AWP_Lunar'},
			{'AWP_Nerf'},
			{'AWP_Northern Lights'},
			{'AWP_Pear Tree'},
			{'AWP_Pink Vision'},
			{'AWP_Pinkie'},
			{'AWP_Quicktime'},
			{'AWP_Racer'},
			{'AWP_Regina'},
			{'AWP_Retroactive'},
			{'AWP_Scapter'},
			{'AWP_Silence'},
			{'AWP_Venomus'},
			{'AWP_Weeb'},
			{'Banana_Stock'},
			{'Bayonet_Aequalis'},
			{'Bayonet_Banner'},
			{'Bayonet_Candy Cane'},
			{'Bayonet_Consumed'},
			{'Bayonet_Cosmos'},
			{'Bayonet_Crimson Tiger'},
			{'Bayonet_Crow'},
			{'Bayonet_Delinquent'},
			{'Bayonet_Digital'},
			{'Bayonet_Easy-Bake'},
			{'Bayonet_Egg Shell'},
			{'Bayonet_Festive'},
			{'Bayonet_Frozen Dream'},
			{'Bayonet_Geo Blade'},
			{'Bayonet_Ghastly'},
			{'Bayonet_Goo'},
			{'Bayonet_Hallows'},
			{'Bayonet_Intertwine'},
			{'Bayonet_Marbleized'},
			{'Bayonet_Mariposa'},
			{'Bayonet_Naval'},
			{'Bayonet_Neonic'},
			{'Bayonet_RSL'},
			{'Bayonet_Racer'},
			{'Bayonet_Sapphire'},
			{'Bayonet_Silent Night'},
			{'Bayonet_Splattered'},
			{'Bayonet_Stock'},
			{'Bayonet_Topaz'},
			{'Bayonet_Tropical'},
			{'Bayonet_Twitch'},
			{'Bayonet_UFO'},
			{'Bayonet_Wetland'},
			{'Bayonet_Worn'},
			{'Bayonet_Wrapped'},
			{'Bearded Axe_Beast'},
			{'Bearded Axe_Splattered'},
			{'Bizon_Autumic'},
			{'Bizon_Festive'},
			{'Bizon_Oblivion'},
			{'Bizon_Saint Nick'},
			{'Bizon_Sergeant'},
			{'Bizon_Shattered'},
			{'Butterfly Knife_Aurora'},
			{'Butterfly Knife_Bloodwidow'},
			{'Butterfly Knife_Consumed'},
			{'Butterfly Knife_Cosmos'},
			{'Butterfly Knife_Crimson Tiger'},
			{'Butterfly Knife_Crippled Fade'},
			{'Butterfly Knife_Digital'},
			{'Butterfly Knife_Egg Shell'},
			{'Butterfly Knife_Freedom'},
			{'Butterfly Knife_Frozen Dream'},
			{'Butterfly Knife_Goo'},
			{'Butterfly Knife_Hallows'},
			{'Butterfly Knife_Icicle'},
			{'Butterfly Knife_Inversion'},
			{'Butterfly Knife_Jade Dream'},
			{'Butterfly Knife_Marbleized'},
			{'Butterfly Knife_Naval'},
			{'Butterfly Knife_Neonic'},
			{'Butterfly Knife_Reaper'},
			{'Butterfly Knife_Ruby'},
			{'Butterfly Knife_Scapter'},
			{'Butterfly Knife_Splattered'},
			{'Butterfly Knife_Stock'},
			{'Butterfly Knife_Topaz'},
			{'Butterfly Knife_Tropical'},
			{'Butterfly Knife_Twitch'},
			{'Butterfly Knife_Wetland'},
			{'Butterfly Knife_White Boss'},
			{'Butterfly Knife_Worn'},
			{'Butterfly Knife_Wrapped'},
			{'CZ_Designed'},
			{'CZ_Festive'},
			{'CZ_Holidays'},
			{'CZ_Lightning'},
			{'CZ_Orange Web'},
			{'CZ_Spectre'},
			{'Cleaver_Spider'},
			{'Cleaver_Splattered'},
			{'DesertEagle_Cold Truth'},
			{'DesertEagle_Cool Blue'},
			{'DesertEagle_DropX'},
			{'DesertEagle_Glittery'},
			{'DesertEagle_Grim'},
			{'DesertEagle_Heat'},
			{'DesertEagle_Honor-bound'},
			{'DesertEagle_Independence'},
			{'DesertEagle_Krystallos'},
			{'DesertEagle_Pumpkin Buster'},
			{'DesertEagle_ROLVe'},
			{'DesertEagle_Cringe'},
			{'DesertEagle_Racer'},
			{'DesertEagle_Scapter'},
			{'DesertEagle_Skin Committee'},
			{'DesertEagle_Survivor'},
			{'DesertEagle_Weeb'},
			{'DesertEagle_Xmas'},
			{'DualBerettas_Carbonized'},
			{'DualBerettas_Dusty Manor'},
			{'DualBerettas_Floral'},
			{'DualBerettas_Hexline'},
			{'DualBerettas_Neon web'},
			{'DualBerettas_Old Fashioned'},
			{'DualBerettas_Xmas'},
			{'Falchion Knife_Bloodwidow'},
			{'Falchion Knife_Chosen'},
			{'Falchion Knife_Coal'},
			{'Falchion Knife_Consumed'},
			{'Falchion Knife_Cosmos'},
			{'Falchion Knife_Crimson Tiger'},
			{'Falchion Knife_Crippled Fade'},
			{'Falchion Knife_Digital'},
			{'Falchion Knife_Egg Shell'},
			{'Falchion Knife_Festive'},
			{'Falchion Knife_Freedom'},
			{'Falchion Knife_Frozen Dream'},
			{'Falchion Knife_Goo'},
			{'Falchion Knife_Hallows'},
			{'Falchion Knife_Inversion'},
			{'Falchion Knife_Late Night'},
			{'Falchion Knife_Marbleized'},
			{'Falchion Knife_Naval'},
			{'Falchion Knife_Neonic'},
			{'Falchion Knife_Racer'},
			{'Falchion Knife_Ruby'},
			{'Falchion Knife_Splattered'},
			{'Falchion Knife_Stock'},
			{'Falchion Knife_Topaz'},
			{'Falchion Knife_Tropical'},
			{'Falchion Knife_Wetland'},
			{'Falchion Knife_Worn'},
			{'Falchion Knife_Wrapped'},
			{'Falchion Knife_Zombie'},
			{'Famas_Abstract'},
			{'Famas_Centipede'},
			{'Famas_Cogged'},
			{'Famas_Goliath'},
			{'Famas_Haunted Forest'},
			{'Famas_KugaX'},
			{'Famas_MK11'},
			{'Famas_Medic'},
			{'Famas_Redux'},
			{'Famas_Shocker'},
			{'Famas_Toxic Rain'},
			{'FiveSeven_Autumn Fade'},
			{'FiveSeven_Danjo'},
			{'FiveSeven_Fluid'},
			{'FiveSeven_Gifted'},
			{'FiveSeven_Midnight Ride'},
			{'FiveSeven_Mr. Anatomy'},
			{'FiveSeven_Stigma'},
			{'FiveSeven_Sub Zero'},
			{'FiveSeven_Summer'},
			{'Flip Knife_Stock'},
			{'G3SG1_Amethyst'},
			{'G3SG1_Autumn'},
			{'G3SG1_Foliage'},
			{'G3SG1_Hex'},
			{'G3SG1_Holly Bound'},
			{'G3SG1_Mahogany'},
			{'Galil_Frosted'},
			{'Galil_Hardware 2'},
			{'Galil_Hardware'},
			{'Galil_Toxicity'},
			{'Galil_Worn'},
			{'Glock_Angler'},
			{'Glock_Anubis'},
			{'Glock_Biotrip'},
			{'Glock_Day Dreamer'},
			{'Glock_Desert Camo'},
			{'Glock_Gravestomper'},
			{'Glock_Midnight Tiger'},
			{'Glock_Money Maker'},
			{'Glock_RSL'},
			{'Glock_Rush'},
			{'Glock_Scapter'},
			{'Glock_Spacedust'},
			{'Glock_Tarnish'},
			{'Glock_Underwater'},
			{'Glock_Wetland'},
			{'Glock_White Sauce'},
			{'Gut Knife_Banner'},
			{'Gut Knife_Bloodwidow'},
			{'Gut Knife_Consumed'},
			{'Gut Knife_Cosmos'},
			{'Gut Knife_Crimson Tiger'},
			{'Gut Knife_Crippled Fade'},
			{'Gut Knife_Digital'},
			{'Gut Knife_Egg Shell'},
			{'Gut Knife_Frozen Dream'},
			{'Gut Knife_Geo Blade'},
			{'Gut Knife_Goo'},
			{'Gut Knife_Hallows'},
			{'Gut Knife_Lurker'},
			{'Gut Knife_Marbleized'},
			{'Gut Knife_Naval'},
			{'Gut Knife_Neonic'},
			{'Gut Knife_Present'},
			{'Gut Knife_Ruby'},
			{'Gut Knife_Rusty'},
			{'Gut Knife_Splattered'},
			{'Gut Knife_Topaz'},
			{'Gut Knife_Tropical'},
			{'Gut Knife_Wetland'},
			{'Gut Knife_Worn'},
			{'Gut Knife_Wrapped'},
			{'Huntsman Knife_Aurora'},
			{'Huntsman Knife_Bloodwidow'},
			{'Huntsman Knife_Consumed'},
			{'Huntsman Knife_Cosmos'},
			{'Huntsman Knife_Cozy'},
			{'Huntsman Knife_Crimson Tiger'},
			{'Huntsman Knife_Crippled Fade'},
			{'Huntsman Knife_Digital'},
			{'Huntsman Knife_Egg Shell'},
			{'Huntsman Knife_Frozen Dream'},
			{'Huntsman Knife_Geo Blade'},
			{'Huntsman Knife_Goo'},
			{'Huntsman Knife_Hallows'},
			{'Huntsman Knife_Honor Fade'},
			{'Huntsman Knife_Marbleized'},
			{'Huntsman Knife_Monster'},
			{'Huntsman Knife_Naval'},
			{'Huntsman Knife_Ruby'},
			{'Huntsman Knife_Splattered'},
			{'Huntsman Knife_Stock'},
			{'Huntsman Knife_Tropical'},
			{'Huntsman Knife_Twitch'},
			{'Huntsman Knife_Wetland'},
			{'Huntsman Knife_Worn'},
			{'Huntsman Knife_Wrapped'},
			{'Karambit_Bloodwidow'},
			{'Karambit_Consumed'},
			{'Karambit_Cosmos'},
			{'Karambit_Crimson Tiger'},
			{'Karambit_Crippled Fade'},
			{'Karambit_Death Wish'},
			{'Karambit_Digital'},
			{'Karambit_Egg Shell'},
			{'Karambit_Festive'},
			{'Karambit_Frozen Dream'},
			{'Karambit_Glossed'},
			{'Karambit_Gold'},
			{'Karambit_Goo'},
			{'Karambit_Hallows'},
			{'Karambit_Jade Dream'},
			{'Karambit_Jester'},
			{'Karambit_Lantern'},
			{'Karambit_Liberty Camo'},
			{'Karambit_Marbleized'},
			{'Karambit_Naval'},
			{'Karambit_Neonic'},
			{'Karambit_Pizza'},
			{'Karambit_Quicktime'},
			{'Karambit_Racer'},
			{'Karambit_Ruby'},
			{'Karambit_Scapter'},
			{'Karambit_Splattered'},
			{'Karambit_Stock'},
			{'Karambit_Topaz'},
			{'Karambit_Tropical'},
			{'Karambit_Twitch'},
			{'Karambit_Wetland'},
			{'Karambit_Worn'},
			{'M249_Aggressor'},
			{'M249_P2020'},
			{'M249_Spooky'},
			{'M249_Wolf'},
			{'M4A1_Animatic'},
			{'M4A1_Burning'},
			{'M4A1_Desert Camo'},
			{'M4A1_Heavens Gate'},
			{'M4A1_Impulse'},
			{'M4A1_Jester'},
			{'M4A1_Lunar'},
			{'M4A1_Necropolis'},
			{'M4A1_Tecnician'},
			{'M4A1_Toucan'},
			{'M4A1_Wastelander'},
			{'M4A4_BOT[S]'},
			{'M4A4_Candyskull'},
			{'M4A4_Delinquent'},
			{'M4A4_Desert Camo'},
			{'M4A4_Devil'},
			{'M4A4_Endline'},
			{'M4A4_Flashy Ride'},
			{'M4A4_Ice Cap'},
			{'M4A4_Jester'},
			{'M4A4_King'},
			{'M4A4_Mistletoe'},
			{'M4A4_Pinkie'},
			{'M4A4_Pinkvision'},
			{'M4A4_Pondside'},
			{'M4A4_Precision'},
			{'M4A4_Quicktime'},
			{'M4A4_Racer'},
			{'M4A4_RayTrack'},
			{'M4A4_Scapter'},
			{'M4A4_Stardust'},
			{'M4A4_Toy Soldier'},
			{'MAC10_Artists Intent'},
			{'MAC10_Blaze'},
			{'MAC10_Golden Rings'},
			{'MAC10_Pimpin'},
			{'MAC10_Skeleboney'},
			{'MAC10_Toxic'},
			{'MAC10_Turbo'},
			{'MAC10_Wetland'},
			{'MAG7_Bombshell'},
			{'MAG7_C4UTION'},
			{'MAG7_Frosty'},
			{'MAG7_Molten'},
			{'MAG7_Outbreak'},
			{'MAG7_Striped'},
			{'MP7_Calaxian'},
			{'MP7_Cogged'},
			{'MP7_Goo'},
			{'MP7_Holiday'},
			{'MP7_Industrial'},
			{'MP7_Reindeer'},
			{'MP7_Silent Ops'},
			{'MP7_Sunshot'},
			{'MP9_Blueroyal'},
			{'MP9_Cob Web'},
			{'MP9_Cookie Man'},
			{'MP9_Decked Halls'},
			{'MP9_SnowTime'},
			{'MP9_Vaporwave'},
			{'MP9_Velvita'},
			{'MP9_Wilderness'},
			{'Negev_Default'},
			{'Negev_Midnightbones'},
			{'Negev_Quazar'},
			{'Negev_Striped'},
			{'Negev_Wetland'},
			{'Negev_Winterfell'},
			{'Nova_Black Ice'},
			{'Nova_Cookie'},
			{'Nova_Paradise'},
			{'Nova_Sharkesh'},
			{'Nova_Starry Night'},
			{'Nova_Terraformer'},
			{'Nova_Tiger'},
			{'P2000_Apathy'},
			{'P2000_Camo Dipped'},
			{'P2000_Candycorn'},
			{'P2000_Comet'},
			{'P2000_Dark Beast'},
			{'P2000_Golden Age'},
			{'P2000_Lunar'},
			{'P2000_Pinkie'},
			{'P2000_Ruby'},
			{'P2000_Silence'},
			{'P250_Amber'},
			{'P250_Bomber'},
			{'P250_Equinox'},
			{'P250_Frosted'},
			{'P250_Goldish'},
			{'P250_Green Web'},
			{'P250_Shark'},
			{'P250_Solstice'},
			{'P250_TC250'},
			{'P90_Demon Within'},
			{'P90_Elegant'},
			{'P90_Krampus'},
			{'P90_Northern Lights'},
			{'P90_P-Chan'},
			{'P90_Pine'},
			{'P90_Redcopy'},
			{'P90_Skulls'},
			{'R8_Exquisite'},
			{'R8_Hunter'},
			{'R8_Spades'},
			{'R8_TG'},
			{'R8_Violet'},
			{'SG_DropX'},
			{'SG_Dummy'},
			{'SG_Kitty Cat'},
			{'SG_Knighthood'},
			{'SG_Magma'},
			{'SG_Variant Camo'},
			{'SG_Yltude'},
			{'SawedOff_Casino'},
			{'SawedOff_Colorboom'},
			{'SawedOff_Executioner'},
			{'SawedOff_Opal'},
			{'SawedOff_Spooky'},
			{'SawedOff_Sullys Blacklight'},
			{'Scout_Coffin Biter'},
			{'Scout_Flowing Mists'},
			{'Scout_Hellborn'},
			{'Scout_Hot Cocoa'},
			{'Scout_Monstruo'},
			{'Scout_Neon Regulation'},
			{'Scout_Posh'},
			{'Scout_Pulse'},
			{'Scout_Railgun'},
			{'Scout_Theory'},
			{'Scout_Xmas'},
			{'Sickle_Mummy'},
			{'Sickle_Splattered'},
			{'Tec9_Charger'},
			{'Tec9_Gift Wrapped'},
			{'Tec9_Ironline'},
			{'Tec9_Performer'},
			{'Tec9_Phol'},
			{'Tec9_Samurai'},
			{'Tec9_Skintech'},
			{'Tec9_Stocking Stuffer'},
			{'UMP_Death Grip'},
			{'UMP_Gum Drop'},
			{'UMP_Magma'},
			{'UMP_Militia Camo'},
			{'UMP_Molten'},
			{'UMP_Redline'},
			{'USP_Crimson'},
			{'USP_Dizzy'},
			{'USP_Frostbite'},
			{'USP_Holiday'},
			{'USP_Jade Dream'},
			{'USP_Kraken'},
			{'USP_Nighttown'},
			{'USP_Paradise'},
			{'USP_Racing'},
			{'USP_Skull'},
			{'USP_Unseen'},
			{'USP_Worlds Away'},
			{'USP_Yellowbelly'},
			{'XM_Artic'},
			{'XM_Atomic'},
			{'XM_Campfire'},
			{'XM_Endless Night'},
			{'XM_MK11'},
			{'XM_Predator'},
			{'XM_Red'},
			{'XM_Spectrum'},
			{'Handwraps_Wraps'},
			{'Sports Glove_Hazard'},
			{'Sports Glove_Hallows'},
			{'Sports Glove_Majesty'},
			{'Strapped Glove_Racer'},
			{'Strapped Glove_Grim'},
			{'Strapped Glove_Wisk'},
			{'Fingerless Glove_Scapter'},
			{'Fingerless Glove_Digital'},
			{'Fingerless Glove_Patch'},
			{'Handwraps_Guts'},
			{'Handwraps_Wetland'},
			{'Strapped Glove_Molten'},
			{'Fingerless Glove_Crystal'},
			{'Sports Glove_Royal'},
			{'Strapped Glove_Kringle'},
			{'Handwraps_MMA'},
			{'Sports Glove_Weeb'},
			{'Sports Glove_CottonTail'},
			{'Sports Glove_RSL'},
			{'Handwraps_Ghoul Hex'},
			{'Handwraps_Phantom Hex'},
			{'Handwraps_Spector Hex'},
			{'Handwraps_Orange Hex'},
			{'Handwraps_Purple Hex'},
			{'Handwraps_Green Hex'},
		}
	
		local mt = getrawmetatable(game)
		local oldNamecall = mt.__namecall
		setreadonly(mt, false)
	
		local isUnlocked
	
		mt.__namecall = newcclosure(function(self, ...)
			local args = {...}
			if getnamecallmethod() == "InvokeServer" and tostring(self) == "Hugh" then
				return
			end
			if getnamecallmethod() == "FireServer" then
				if args[1] == LocalPlayer.UserId then
					return
				end
				if string.len(tostring(self)) == 38 then
					if not isUnlocked then
						isUnlocked = true
						for i,v in pairs(allSkins) do
							local doSkip
							for i2,v2 in pairs(args[1]) do
								if v[1] == v2[1] then
									doSkip = true
								end
							end
							if not doSkip then
								table.insert(args[1], v)
							end
						end
					end
					return
				end
				if tostring(self) == "DataEvent" and args[1][4] then
					local currentSkin = string.split(args[1][4][1], "_")[2]
					if args[1][2] == "Both" then
						LocalPlayer["SkinFolder"]["CTFolder"][args[1][3]].Value = currentSkin
						LocalPlayer["SkinFolder"]["TFolder"][args[1][3]].Value = currentSkin
					else
						LocalPlayer["SkinFolder"][args[1][2] .. "Folder"][args[1][3]].Value = currentSkin
					end
				end
			end
			return oldNamecall(self, ...)
		end)
	
		setreadonly(mt, true)
	
		Client.CurrentInventory = allSkins
	
local TClone, CTClone = LocalPlayer.SkinFolder.TFolder:Clone(), game.Players.LocalPlayer.SkinFolder.CTFolder:Clone()
LocalPlayer.SkinFolder.TFolder:Destroy()
LocalPlayer.SkinFolder.CTFolder:Destroy()
TClone.Parent = LocalPlayer.SkinFolder
CTClone.Parent = LocalPlayer.SkinFolder

--Config Settings

function ConvertColor(rgb)
	return {R = rgb.R, G = rgb.G, B = rgb.B}
end

function RevertColor(tbl)
	return Color3.new(tbl.R, tbl.G, tbl.B)
end

local ConfigHub = ConfigTab:CreateSection("Configs")
local ConfigName = "Null.Finite"
local DefaultSettings = "{}"
local cfglocation = "Finite/"
makefolder("Finite")

local ConfigBox = ConfigHub:CreateTextBox("Config Name", "Config Name", false, function(String)
	ConfigName = cfglocation ..String ..".Fin"
end)

print("settings")

local ConfigCreate = ConfigHub:CreateButton("Create", function()
	if not pcall(function() readfile(ConfigName) end) then writefile(ConfigName, game:service'HttpService':JSONEncode(DefaultSettings)) end
end)

local Settings 
local function Save()
	
	Settings =  {
		BackRoundOptionJson = BackRoundOption,
		BackRoundTransparencyOptionJson = BackRoundTransparencyOption,
		BackRoundScaleOptionJson = BackRoundScaleOption,
		UIColorJson = ConvertColor(UIColor),
		UIBackroundColorJson = ConvertColor(UIBackroundColor),
		ESPEnabledJson = ESP.Enabled,
		ESPBoxesJson = ESP.Boxes,
		ESPTeamJson = ESP.ShowTeam,
		ESPEnemyColorJson = ConvertColor(ESP.EnemyColor),
		ESPTeamColorJson = ConvertColor(ESP.TeamColor),
		ESPShowInfoJson = ESP.ShowInfo,
		ESPInfoNameJson = ESP.Info.Name,
		ESPInfoHealthJson = ESP.Info.Health,
		ESPInfoWeaponsJson = ESP.Info.Weapons,
		ESPInfoDistanceJson = ESP.Info.Distance,
		ColorCorrectionJson = ColorCorrectionEnabled,
		ColorCorrectionColorJson = ConvertColor(ColorCorrection.TintColor),
		AmbientLightingJson = AmbientLighting,
		AmbientColorJson = ConvertColor(AmbientColor),
		ChamsEnabledJson = ChamsEnabled,
		EnemyEnableChamsJson = EnemyEnableChams,
		TeamEnableChamsJson = TeamEnableChams,
		EnemyChamsColorJson = ConvertColor(EnemyChamsColor),
		TeamChamsColorJson = ConvertColor(TeamChamsColor),
		GunChamsToggleJson = GunChamsToggle,
		GunColorJson = ConvertColor(GunColor),
		ChamsMatJson = ChamsMat,
		GunTransJson = GunTrans,
		RainbowColorToggleJson = RainbowColorToggle,
		RgbSpeedJson = RgbSpeed,
        EnableHitSoundJson = EnableHitSound,
        EnableKillSoundJson = EnableKillSound,
		RageBotEnabledJson = RageBotEnabled,
		DTEnableJson = DTEnable,
		bhopenabledJson = bhopenabled,
		bhopspeedJson = bhopspeed,
		HitpartSelectOptionJson = HitpartSelectOption,
		ChatSpamEnabledJsonJson = ChatSpamEnabled,
		ChatSpamTypeJsonJson = ChatSpamType,
		EnableMarkerJson = EnableMarker,
		TracerColorJson = ConvertColor(TracerColor),
		EnableTracerJson = EnableTracer,
		RainbowColorToggleTracerJson = RainbowColorToggleTracer,
	}

	writefile(ConfigName,game:service'HttpService':JSONEncode(Settings))
end

local Json
local function Load()
	Json = game:service'HttpService':JSONDecode(readfile(ConfigName))
	--Ui elements
	BackRoundOption = Json.BackRoundOptionJson
	Dropdown3:SetOption(Json.BackRoundOptionJson)

	BackRoundTransparencyOption = Json.BackRoundTransparencyOptionJson
	Slider3:SetValue(Json.BackRoundTransparencyOptionJson)

	BackRoundScaleOption = Json.BackRoundScaleOptionJson
	Slider4:SetValue(Json.BackRoundScaleOptionJson)

	UIColor = Json.UIColorJson
	Colorpicker3:UpdateColor(RevertColor(Json.UIColorJson))
	Window:ChangeColor(RevertColor(Json.UIColorJson))

	UIBackroundColor = RevertColor(Json.UIBackroundColorJson)
	Window:SetBackgroundColor(RevertColor(Json.UIBackroundColorJson))
	Colorpicker4:UpdateColor(RevertColor(Json.UIBackroundColorJson))

	RgbSpeed = Json.RgbSpeedJson
	RgbSpeedSlider:SetValue(Json.RgbSpeedJson)


	--Ragebot stuff
	RageBotEnabled = Json.RageBotEnabledJson
	RageBotToggleButton:SetState(Json.RageBotEnabledJson)
	DTEnable = Json.DTEnableJson
	DoubleTapButton:SetState(Json.DTEnableJson)
	bhopenabled = Json.bhopenabledJson
	BunnyHopToggle:SetState(Json.bhopenabledJson)
	bhopspeed = Json.bhopspeedJson
	Bhopsliderspeed:SetValue(Json.bhopspeedJson)
	HitpartSelectOption = Json.HitpartSelectOptionJson
	HitPartBox:SetOption(Json.HitpartSelectOptionJson)--]]
	--Misc 
	ChatSpamEnabled = Json.ChatSpamEnabledJsonJson
	ChatSpamToggle:SetState(Json.ChatSpamEnabledJsonJson)
	
	ChatSpamType = Json.ChatSpamTypeJsonJson
	ChatSpamSelector:SetOption(Json.ChatSpamTypeJsonJson)--]]

	--ESP
	ESP.Enabled = Json.ESPEnabledJson
	ESP.Boxes = Json.ESPBoxesJson
	ESP.ShowTeam = Json.ESPTeamJson
	ESP.TeamColor = RevertColor(ESP.TeamColor)
	ESP.EnemyColor = RevertColor(ESP.EnemyColor)

	ESP.ShowInfo = Json.ESPShowInfoJson
	ESP.Info.Name = Json.ESPInfoNameJson
	ESP.Info.Health = Json.ESPInfoHealthJson
	ESP.Info.Weapons = Json.ESPInfoWeaponsJson
	ESP.Info.Distance = Json.ESPInfoDistanceJson--]]

	ChamsEnabled = Json.ChamsEnabledJson
	EnemyEnableChams = Json.EnemyEnableChamsJson
	TeamEnableChams = Json.TeamEnableChamsJson
	EnemyChamsColor = RevertColor(Json.EnemyChamsColorJson)
	TeamChamsColor = RevertColor(Json.TeamChamsColorJson)--]]

	ChamsToggle:SetState(Json.ChamsEnabledJson)
	ChamsEnemyToggle:SetState(Json.EnemyEnableChamsJson)
	ChamsTeamToggle:SetState(Json.TeamEnableChamsJson)
	ChamsColorPicker:UpdateColor(RevertColor(Json.EnemyChamsColorJson))
	ChamsColorPickerTeam:UpdateColor(RevertColor(Json.TeamChamsColorJson))--]]

	EspInfoToggle:SetState(Json.ESPShowInfoJson)
	NameToggle:SetState(Json.ESPInfoNameJson)
	HealthToggle:SetState(Json.ESPInfoHealthJson)
	WeaponsToggle:SetState(Json.ESPInfoWeaponsJson)
	DistanceToggle:SetState(Json.ESPInfoDistanceJson)--]]

	EspTogglestinky:SetState(Json.ESPEnabledJson)
	EspTeamTogglestinky:SetState(Json.ESPTeamJson)
	EspBoxesTogglestinky:SetState(Json.ESPBoxesJson)
	ESPColorPickerTeam:UpdateColor(RevertColor(Json.ESPTeamColorJson))
	ESPColorPicker:UpdateColor(RevertColor(Json.ESPEnemyColorJson))
	ColorCorrectionEnabled =  Json.ColorCorrectionJson 
	ColorCorrectionColor = RevertColor(Json.ColorCorrectionColorJson)
	AmbientLighting = Json.AmbientLightingJson
	AmbientColor = RevertColor(Json.AmbientColorJson)
	ColorCorrection.TintColor = Color3.new(RevertColor(Json.ColorCorrectionColorJson))
	
	ColorCorrectionEffectToggle:SetState(Json.ColorCorrectionJson)
	AmbientColorToggle:SetState(Json.AmbientLightingJson)
	ColorEffectColorPicker:UpdateColor(RevertColor(Json.ColorCorrectionColorJson))
	AimbientColorPicker:UpdateColor(RevertColor(Json.AmbientColorJson))

	GunChamsToggle = Json.GunChamsToggleJson
	GunColor = RevertColor(Json.GunColorJson)
	ChamsMat = Json.ChamsMatJson
	GunTrans = Json.GunTransJson
	RainbowColorToggle = Json.RainbowColorToggleJson--]]

	GunToggleButton:SetState(Json.GunChamsToggleJson)
	GunColorPicker:UpdateColor(RevertColor(Json.GunColorJson))
	ChamsMatDropDown:SetOption(ChamsMat)
	TransparancySlider:SetValue(Json.GunTransJson * 10)
	RainbowGunButton:SetState(Json.RainbowColorToggleJson)

	RainbowColorToggleTracer = Json.RainbowColorToggleTracerJson
	RainbowBeamToggle:SetState(Json.RainbowColorToggleTracerJson)

    EnableHitSoundToggle:SetState(Json.EnableHitSoundJson)
    EnableKillSoundToggle:SetState(Json.EnableKillSoundJson)
    EnableKillSound = Json.EnableKillSoundJson
    EnableHitSound = Json.EnableHitSoundJson--]]

	EnableTracer = Json.EnableTracerJson
	EnableBeamToggle:SetState(Json.EnableTracerJson)
	TracerColor = Json.TracerColorJson
	TracerColorPicker:UpdateColor(RevertColor(Json.TracerColorJson))

	EnableMarker = Json.EnableMarkerJson
	MarkerToggleButton:SetState(Json.EnableMarkerJson)
	wait()
	turn_off()
end

local ConfigSave = ConfigHub:CreateButton("Save", function()
	Save()
end)

local ConfigLoad = ConfigHub:CreateButton("Load", function()
	Json = game:service'HttpService':JSONDecode(readfile(ConfigName))
	Load()
	wait(0.01)
end)

local ResetConfig = ConfigHub:CreateButton("Reset", function()
	writefile(ConfigName, game:service'HttpService':JSONEncode(DefaultSettings))
end)



print("loaded!")
