local Config = {
    WindowName = "CripWalk$$$",
	Color = Color3.fromRGB(255,128,64),
	Keybind = Enum.KeyCode.Insert
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pawel12d/hexagon/main/scripts/ESP.lua"))()




local VisualTab = Window:CreateTab("Visuals")
local SettingsTab = Window:CreateTab("Settings")
local ConfigTab = Window:CreateTab("Configs")

--Esp
local BoxESP = VisualTab:CreateSection("ESP Settings")

ESP.Tracers = false
ESP.ShowTeam = false
ESP.UseTeamColor = false
ESP.Enabled = false
local EspTogglestinky = BoxESP:CreateToggle("Enable", nil, function(State)
	ESP.Enabled = State
end)

ESP.ShowTeam = false
local EspTeamTogglestinky =	BoxESP:CreateToggle("Show Team", nil, function(State)
	ESP.ShowTeam = State
end)

ESP.Boxes = false
local EspBoxesTogglestinky = BoxESP:CreateToggle("Show Boxes", nil, function(State)
	ESP.Boxes = State
end)

ESP.EnemyColor = Color3.fromHSV(0, 0, 1)
local ESPColorPicker = BoxESP:CreateColorpicker("Enemy Color", function(Color)
	ESP.EnemyColor= Color
end)

ESP.TeamColor = Color3.fromHSV(0, 0, 1)
local ESPColorPickerTeam = BoxESP:CreateColorpicker("Team Color", function(Color)
	ESP.TeamColor = Color
end)

local InfoSection = VisualTab:CreateSection("Player Info")

ESP.ShowInfo = false
ESP.Info.Name = false
ESP.Info.Health = false
ESP.Info.Weapons = false
ESP.Info.Distance = false

local EspInfoToggle = InfoSection:CreateToggle("Enable Info", nil, function(State)
	ESP.ShowInfo = State
end)

local NameToggle = InfoSection:CreateToggle("Show Name", nil, function(State)
	ESP.Info.Name = State
end)

local HealthToggle = InfoSection:CreateToggle("Show Health", nil, function(State)
	ESP.Info.Health = State
end)

local WeaponsToggle = InfoSection:CreateToggle("Show Weapons", nil, function(State)
	ESP.Info.Weapons = State
end)

local DistanceToggle = InfoSection:CreateToggle("Show Distance", nil, function(State)
	ESP.Info.Distance = State
end)

local Chams = VisualTab:CreateSection("Chams")

local ChamsEnabled = false
local ChamsToggle = Chams:CreateToggle("Enable", nil, function(State)
	ChamsEnabled = State
end)

local EnemyEnableChams = false
local ChamsEnemyToggle = Chams:CreateToggle("Enemy", nil, function(State)
	EnemyEnableChams = State
end)

local TeamEnableChams = false
local ChamsTeamToggle = Chams:CreateToggle("Teammmates", nil, function(State)
	TeamEnableChams = State
end)

local EnemyChamsColor = Color3.fromHSV(0, 0, 1)
local ChamsColorPicker = Chams:CreateColorpicker("Enemy Color", function(Color)
	EnemyChamsColor = Color
end)

local TeamChamsColor = Color3.fromHSV(0, 0, 1)
local ChamsColorPickerTeam = Chams:CreateColorpicker("Team Color", function(Color)
	TeamChamsColor = Color
end)

ChamsColorPicker:UpdateColor(Color3.new(1,1,1))
ChamsColorPickerTeam:UpdateColor(Color3.new(1,1,1))

local WorldSettings = VisualTab:CreateSection("World Lighting")

local ColorCorrectionEnabled = false
local ColorCorrection = Instance.new("ColorCorrectionEffect", game.Lighting)
local ColorCorrectionColor = Color3.fromRGB(255,255,255)
local ColorCorrectionEffectToggle = WorldSettings:CreateToggle("Enabled", nil, function(State)
	ColorCorrectionEnabled = State
	ColorCorrection.Enabled = ColorCorrectionEnabled
end)

local ColorEffectColorPicker = WorldSettings:CreateColorpicker("Color", function(Color)
	ColorCorrection.TintColor = Color
end)

local AmbientLighting = WorldSettings:CreateLabel("World Ambient")

local AmbientLighting = false
local AmbientColorToggle = WorldSettings:CreateToggle("Enabled", nil, function(State)
	AmbientLighting = State
end)

local AmbientColor = Color3.fromRGB(127, 127, 127)
local AimbientColorPicker = WorldSettings:CreateColorpicker("Color", function(Color)
	AmbientColor = Color
end)

local SelfVisuals = VisualTab:CreateSection("Local Visuals")

local FovEnabled = false
local FovToggle= SelfVisuals:CreateToggle("Enabled", nil, function(State)
	FovEnabled = State
end)

local FovValue = 80
local FovSlider = SelfVisuals:CreateSlider("Amount", 0,120, math.floor(80),nil, function(Value)
	FovValue = Value
end)

local ThirdPerson = false
local ThirdPersonToggle = SelfVisuals:CreateToggle("Enable ThirdPerson", nil, function(State)
	ThirdPerson = State
end)

ThirdPersonToggle:CreateKeybind("V", function(Key) end)

local TPAmount = 0
local TPSlider = SelfVisuals:CreateSlider("Amount", 0,50,nil,nil, function(Value)
	TPAmount = Value
end)

local ScopeDisable = false
local ScopeToggleButton = SelfVisuals:CreateToggle("Disable Scope", nil, function(State)
	ScopeDisable = State
	if ScopeDisable == true then
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame1.BackgroundTransparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame2.BackgroundTransparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame3.BackgroundTransparency = 1
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame4.BackgroundTransparency = 1
	else
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Scope.ImageTransparency = 0
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame1.BackgroundTransparency = 0
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame2.BackgroundTransparency = 0
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame3.BackgroundTransparency = 0
		game:GetService("Players").LocalPlayer.PlayerGui.GUI.Crosshairs.Frame4.BackgroundTransparency = 0
	end
end)

local ArmsEnable = true
local TPArms = SelfVisuals:CreateToggle("Enable Arms",nil,nil, function(State)
	ArmsEnable = not State
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
	print(UIColor)
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

--Config Settings

function ConvertColor(rgb)
	return {R = rgb.R, G = rgb.G, B = rgb.B}
end

function RevertColor(tbl)
	return Color3.new(tbl.R, tbl.G, tbl.B)
end

local ConfigHub = ConfigTab:CreateSection("Configs")
local ConfigName = "Null.Crip"
local DefaultSettings = "{}"
local cfglocation = "Cripwalk$/"
makefolder("Cripwalk$")

local ConfigBox = ConfigHub:CreateTextBox("Config Name", "Config Name", false, function(String)
	ConfigName = cfglocation ..String ..".Crip"
	print(ConfigName)
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
		FOVValueJson = FovValue,
		ThirdPersonEnableJson = ThirdPerson,
		TPAmountJson = TPAmount,
		ScopeDisableJson = ScopeDisable,
		FovEnabledJson = FovEnabled,
		TPArmsJson = ArmsEnable
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
	ESP.Info.Distance = Json.ESPInfoDistanceJson

	ChamsEnabled = Json.ChamsEnabledJson
	EnemyEnableChams = Json.EnemyEnableChamsJson
	TeamEnableChams = Json.TeamEnableChamsJson
	EnemyChamsColor = RevertColor(Json.EnemyChamsColorJson)
	TeamChamsColor = RevertColor(Json.TeamChamsColorJson)

	ChamsToggle:SetState(Json.ChamsEnabledJson)
	ChamsEnemyToggle:SetState(Json.EnemyEnableChamsJson)
	ChamsTeamToggle:SetState(Json.TeamEnableChamsJson)
	ChamsColorPicker:UpdateColor(RevertColor(Json.EnemyChamsColorJson))
	ChamsColorPickerTeam:UpdateColor(RevertColor(Json.TeamChamsColorJson))
	


	EspInfoToggle:SetState(Json.ESPShowInfoJson)
	NameToggle:SetState(Json.ESPInfoNameJson)
	HealthToggle:SetState(Json.ESPInfoHealthJson)
	WeaponsToggle:SetState(Json.ESPInfoWeaponsJson)
	DistanceToggle:SetState(Json.ESPInfoDistanceJson)

	EspTogglestinky:SetState(Json.ESPEnabledJson)
	EspTeamTogglestinky:SetState(Json.ESPTeamJson)
	EspBoxesTogglestinky:SetState(Json.ESPBoxesJson)
	ESPColorPickerTeam:UpdateColor(RevertColor(Json.ESPTeamColorJson))
	ESPColorPicker:UpdateColor(RevertColor(Json.ESPEnemyColorJson))
	--WorldColor
	ColorCorrectionEnabled =  Json.ColorCorrectionJson 
	ColorCorrectionColor = RevertColor(Json.ColorCorrectionColorJson)
	AmbientLighting = Json.AmbientLightingJson
	AmbientColor = RevertColor(Json.AmbientColorJson)
	ColorCorrection.TintColor = Color3.new(RevertColor(Json.ColorCorrectionColorJson))
	
	ColorCorrectionEffectToggle:SetState(Json.ColorCorrectionJson)
	AmbientColorToggle:SetState(Json.AmbientLightingJson)
	ColorEffectColorPicker:UpdateColor(RevertColor(Json.ColorCorrectionColorJson))
	AimbientColorPicker:UpdateColor(RevertColor(Json.AmbientColorJson))

	--WorldVisuals
	ScopeDisable = Json.ScopeDisableJson
	TPAmount = Json.TPAmountJson
	FovValue = Json.FOVValueJson
	FovEnabled = Json.FovEnabled
	ThirdPerson = Json.ThirdPersonEnableJson
	ArmsEnable = Json.TPArmsJson

	TPArms:SetState(Json.TPArmsJson)


	
	print(ConfigName .." successfully loaded.")
end

local ConfigSave = ConfigHub:CreateButton("Save", function()
	Save()
end)

local ConfigLoad = ConfigHub:CreateButton("Load", function()
	Load()
end)

local ResetConfig = ConfigHub:CreateButton("Reset", function()
	writefile(ConfigName, game:service'HttpService':JSONEncode(DefaultSettings))
end)



--Scripts

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
								if part:FindFirstChildOfClass("SpecialMesh") then
									
								else
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
									local adorn2 = Instance.new('BoxHandleAdornment',folder)
									adorn2.Name = v.Name Color3.new(1,1,1)
									if part.Name ~= 'Head' then
										adorn2.Size = part.Size*1.1
									else
										adorn2.Size = (part.Size*1.1)-Vector3.new(part.Size.X/2,0,0)
									end	
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
								if part:FindFirstChildOfClass("SpecialMesh") then
								else
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
									local adorn2 = Instance.new('BoxHandleAdornment',folder)
									adorn2.Name = v.Name Color3.new(1,1,1)
									if part.Name ~= 'Head' then
										adorn2.Size = part.Size*1.1
									else
										adorn2.Size = (part.Size*1.1)-Vector3.new(part.Size.X/2,0,0)
									end	
								end
							end
						end
					end
				end
			end
		end
	end
end

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

local target
local m = LocalPlayer:GetMouse()
local fartfart

local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
local namecallMethod = getnamecallmethod or get_namecall_method
local newClose = newcclosure or function(f) return f end
local latestshot = nil
local bodyname = 'Head'
local cangivecframe = 0

local backtrackfolder = Instance.new('Folder',workspace)
backtrackfolder.Name = 'backtrackfolder'

mt.__namecall = newClose(function(...)
	local method = namecallMethod()
	local args = {...}
	if method == "FindPartOnRayWithIgnoreList" then
		 if target and LocalPlayer.Character and SilentAimEnable == true then
			 args[2] = Ray.new(workspace.CurrentCamera.CFrame.Position, (target.Head.CFrame.p - workspace.CurrentCamera.CFrame.Position).unit * 500)
		 elseif fartfart == true then
			 args[2] = Ray.new(workspace.CurrentCamera.CFrame.Position, (m.Hit.p - workspace.CurrentCamera.CFrame.Position).unit * 500)
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
if setreadonly then setreadonly(mt, true) else make_writeable(mt, false) end


local Minvalue = BhopAmount
local MaxValue = BhopAmount
local Acceleration = BhopAmount
local curVel = 16
local isBhopping = false

local function IsAlive(plr)
	if plr and plr.Character and plr.Character.FindFirstChild(plr.Character, "Humanoid") and plr.Character.Humanoid.Health > 0 then
		return true
	end

	return false
end

local UserInputService = game:GetService("UserInputService")

local function BhopLoop()
	wait(0.5)
 	Minvalue = BhopAmount
 	MaxValue = BhopAmount
 	Acceleration = BhopAmount
	wait(0.5)
	if IsAlive(LocalPlayer) then
		LocalPlayer.Character.Humanoid.StateChanged:Connect(function(state)
			if EnableBhop == true then
				if UserInputService:IsKeyDown(Enum.KeyCode.Space) == false then
					isBhopping = false
					curVel = Minvalue
				elseif state == Enum.HumanoidStateType.Landed and UserInputService:IsKeyDown(Enum.KeyCode.Space) then
					LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
				elseif state == Enum.HumanoidStateType.Jumping then
					isBhopping = true
					curVel = (curVel + Acceleration) >= MaxValue and MaxValue or curVel + Acceleration
				end
			end
		end)
	else
		isBhopping = false
	end
end

local cbClient = getsenv(LocalPlayer.PlayerGui:WaitForChild("Client"))

oldNewIndex = hookfunc(getrawmetatable(game.Players.LocalPlayer.PlayerGui.Client).__newindex, newcclosure(function(self, idx, val)
	if not checkcaller() then
		if self.Name == "Humanoid" and idx == "WalkSpeed" and val ~= 0 and isBhopping == true then 
			val = curVel
		elseif self.Name == "Humanoid" and idx == "JumpPower" and val ~= 0 and JumpBug == true then
			spawn(function() cbClient.UnCrouch() end)
			val = val * 1.25
		end
	end
    return oldNewIndex(self, idx, val)
end))

--MainLoop

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

	if FovEnabled == true then
		game.Workspace.CurrentCamera.FieldOfView = FovValue  
	end

	if ThirdPerson == true then
		game.Players.LocalPlayer.CameraMaxZoomDistance = TPAmount
		game.Players.LocalPlayer.CameraMinZoomDistance = TPAmount
		if ArmsEnable then
			for _,v in pairs(workspace.Camera:GetDescendants()) do 
				pcall(function() 
				v.Transparency=1
				end)
			end
		end
	else
		game.Players.LocalPlayer.CameraMaxZoomDistance = 0
		game.Players.LocalPlayer.CameraMinZoomDistance = 0
	end
end)

spawn(function()
	while true do
		wait(0.3)
		BhopLoop()
	end
end)

print("loaded!")


