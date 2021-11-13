local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.Character:Wait()
local humanoid = character:WaitForChild("Humanoid")
game.Players.LocalPlayer.Name:Kick("Game not supported")

if humanoid.RigType ~= Enum.HumanoidRigType.R15 or Enum.HumanoidRigType.R6 then 
    game.Players.LocalPlayer.Name:Kick("Game not supported")
end


Config = {
    WindowName = "Roblox Essentials",
	Color = Color3.fromRGB(255,128,64),
	Keybind = Enum.KeyCode.Insert
}

Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))() -- https://v3rmillion.net/showthread.php?tid=1128459&__cf_chl_jschl_tk__=lu1qVN4HlK2E5wfRha4UvFmABXv4j1l_z17_2j29Dnc-1636436032-0-gaNycGzNB5E
Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

AimBotTab = Window:CreateTab("Aimbot")
VisualTab = Window:CreateTab("Visuals")
SettingsTab = Window:CreateTab("Settings")

AimbotSettingSection = AimBotTab:CreateSection("Aimbot Settings")

local settings = {
    Aimbot = false,
    Aiming = false,
    Aimbot_AimPart = "Head",
    Aimbot_TeamCheck = true,
    Aimbot_Draw_FOV = true,
    Aimbot_FOV_Radius = 100,
    Aimbot_FOV_Color = Color3.fromRGB(255,255,255)
}

_G.Configuration = {
    Tracers = false,
    PlayerInfo = false,
    Outlines = true,
    ShowAllyTeam = true,
    UseTeamColor = false
 }
 
print(humanoid.RigType)

settings.Aimbot = false
AimBotButtonToggle = AimbotSettingSection:CreateToggle("Enable Aimbot", nil, function(State)
	settings.Aimbot = State
end)

HitpartSelectOption = "Head"
HitPartBox = AimbotSettingSection:CreateDropdown("HitPart", {"Head", "Body"}, function(Name)
	if Name == "Head" then
		settings.Aimbot_AimPart = "Head"
	elseif Name == "Body" then
		 if humanoid.RigType == Enum.HumanoidRigType.R15 then 
            settings.Aimbot_AimPart = "UpperTorso"
         elseif humanoid.RigType == Enum.HumanoidRigType.R6 then
            settings.Aimbot_AimPart = "Torso"
         end
	end
end)

HitPartBox:SetOption("Head")

settings.Aimbot_TeamCheck = false
AimTeamCheckToggle = AimbotSettingSection:CreateToggle("TeamCheck Aimbot", nil, function(State)
	settings.Aimbot_TeamCheck = State
end)

settings.Aimbot_Draw_FOV = false
FOVShow = AimbotSettingSection:CreateToggle("Draw FOV", nil, function(State)
    settings.Aimbot_Draw_FOV = State
end)

settings.Aimbot_FOV_Radius = 100
FoVAmountAIm = AimbotSettingSection:CreateSlider("FOV", 100,1000,nil,true, function(Value)
	settings.Aimbot_FOV_Radius = Value
end)

settings.Aimbot_FOV_Color = Color3.fromRGB(255,255,255)
ESPColorPicker = AimbotSettingSection:CreateColorpicker("FOV Color", function(Color)
	settings.Aimbot_FOV_Color = Color
end)

--Chams

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

local EnemyChamsColorVisible = Color3.fromHSV(0, 0, 1)
local ChamsPickerVisible = Chams:CreateColorpicker("Enemy Color Visible", function(Color)
	EnemyChamsColorVisible = Color
end)

local TeamChamsColor = Color3.fromHSV(0, 0, 1)
local ChamsColorPickerTeam = Chams:CreateColorpicker("Team Color", function(Color)
	TeamChamsColor = Color
end)

local TeamChamsColorVisible = Color3.fromHSV(0, 0, 1)
local ChamsPickerVisibleTeam = Chams:CreateColorpicker("Team Color Visible", function(Color)
	TeamChamsColorVisible = Color
end)

--Settings

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

local RGBSettings = SettingsTab:CreateSection("RGBSettings")

local RgbSpeed = 0
local RgbSpeedSlider = RGBSettings:CreateSlider("Speed",1,20,nil,false, function(Value)
	RgbSpeed = Value
end)



















--[[Script]]--
local dwCamera = workspace.CurrentCamera --https://www.youtube.com/watch?v=egpBeSBrD4o&t=77s
local dwRunService = game:GetService("RunService")
local dwUIS = game:GetService("UserInputService")
local dwEntities = game:GetService("Players")
local dwLocalPlayer = dwEntities.LocalPlayer
local dwMouse = dwLocalPlayer:GetMouse()



local fovcircle = Drawing.new("Circle")
fovcircle.Visible = settings.Aimbot_Draw_FOV
fovcircle.Radius = settings.Aimbot_FOV_Radius
fovcircle.Color = settings.Aimbot_FOV_Color
fovcircle.Thickness = 1
fovcircle.Filled = false
fovcircle.Transparency = 1

fovcircle.Position = Vector2.new(dwCamera.ViewportSize.X / 2, dwCamera.ViewportSize.Y / 2)

dwUIS.InputBegan:Connect(function(i)
    if settings.Aimbot then 
        if i.UserInputType == Enum.UserInputType.MouseButton2 then
            settings.Aiming = true
        end
    end
end)

dwUIS.InputEnded:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton2 then
        settings.Aiming = false
    end
end)

dwRunService.RenderStepped:Connect(function()



    fovcircle.Visible = settings.Aimbot_Draw_FOV
    fovcircle.Radius = settings.Aimbot_FOV_Radius
    fovcircle.Color = settings.Aimbot_FOV_Color
    fovcircle.Thickness = 1
    fovcircle.Filled = false
    fovcircle.Transparency = 1
    
    
    local dist = math.huge
    local closest_char = nil

    if settings.Aiming then

        for i,v in next, dwEntities:GetChildren() do 

            if v ~= dwLocalPlayer and
            v.Character and
            v.Character:FindFirstChild("HumanoidRootPart") and
            v.Character:FindFirstChild("Humanoid") and
            v.Character:FindFirstChild("Humanoid").Health > 0 then

                if settings.Aimbot_TeamCheck == true and
                v.Team ~= dwLocalPlayer.Team or
                settings.Aimbot_TeamCheck == false then

                    local char = v.Character
                    local char_part_pos, is_onscreen = dwCamera:WorldToViewportPoint(char[settings.Aimbot_AimPart].Position)

                    if is_onscreen then

                        local mag = (Vector2.new(dwMouse.X, dwMouse.Y) - Vector2.new(char_part_pos.X, char_part_pos.Y)).Magnitude

                        if mag < dist and mag < settings.Aimbot_FOV_Radius then

                            dist = mag
                            closest_char = char

                        end
                    end
                end
            end
        end

        if closest_char ~= nil and
        closest_char:FindFirstChild("HumanoidRootPart") and
        closest_char:FindFirstChild("Humanoid") and
        closest_char:FindFirstChild("Humanoid").Health > 0 then

            dwCamera.CFrame = CFrame.new(dwCamera.CFrame.Position, closest_char[settings.Aimbot_AimPart].Position)
        end
    end
end)

EnemyEnableChams = true
TeamEnableChams = false
EnemyChamsColor = Color3.fromRGB(0, 60, 255)
EnemyChamsColorVisible = Color3.fromRGB(204, 1, 255)
TeamChamsColor = Color3.fromRGB(255, 255, 255)
TeamChamsColorVisible = Color3.fromRGB(255, 255, 255)



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
    "HeadHB", "Torso", "Left Arm", 
    "Right Arm", "Left Leg", 
    "Right Leg"
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
								if not part:FindFirstChildOfClass("SpecialMesh") then
									if has_value (Hitboxes, part.Name) then
									local adorn = Instance.new('BoxHandleAdornment',folder)
									adorn.Name = v.Name
									if part.Name ~= 'Head' then
										adorn.Size = Vector3.new(part.Size.X + 0.1, part.Size.Y + 0.1, part.Size.Z + 0.1)
									else
										adorn.Size = part.Size
									end
									adorn.Adornee = part
									adorn.AlwaysOnTop =  true
									adorn.ZIndex = 5
									adorn.Transparency = 0.5
									adorn.Color = BrickColor.new(EnemyChamsColor) -- the most RETARDED thing 	


									local adorn2 = Instance.new('BoxHandleAdornment',folder)
									adorn2.Name = v.Name
									if part.Name ~= 'Head' then
										adorn2.Size = Vector3.new(part.Size.X + 0.2, part.Size.Y + 0.2, part.Size.Z + 0.2)
									else
										adorn2.Size = part.Size
									end
									adorn2.Adornee = part
									adorn2.AlwaysOnTop = false
									adorn2.ZIndex = 4
									adorn2.Transparency = 0.5
									adorn2.Color = BrickColor.new(EnemyChamsColorVisible) -- ;(	
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
								if not part:FindFirstChildOfClass("SpecialMesh") then
									if has_value (Hitboxes, part.Name) then
									local adorn = Instance.new('BoxHandleAdornment',folder)
									adorn.Name = v.Name
									if part.Name ~= 'Head' then
										adorn.Size = Vector3.new(part.Size.X + 0.1, part.Size.Y + 0.1, part.Size.Z + 0.1)
									else
										adorn.Size = part.Size
									end
									adorn.Adornee = part
									adorn.AlwaysOnTop = true
									adorn.ZIndex = 5
									adorn.Transparency = 0.5
									adorn.Color = BrickColor.new(TeamChamsColor) -- the most RETARDED thing 	
									
									
									local adorn2 = Instance.new('BoxHandleAdornment',folder)
									adorn2.Name = v.Name
									if part.Name ~= 'Head' then
										adorn2.Size = Vector3.new(part.Size.X + 0.2, part.Size.Y + 0.2, part.Size.Z + 0.2)
									else
										adorn2.Size = part.Size
									end
									adorn2.Adornee = part
									adorn2.AlwaysOnTop = false
									adorn2.ZIndex = 4
									adorn2.Transparency = 0.5
									adorn2.Color = BrickColor.new(TeamChamsColorVisible) -- ;(	
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


game:GetService("RunService").RenderStepped:Connect(function()
    if ChamsEnabled == true then 
        turn_on()
    else
        turn_off()
    end
end)


