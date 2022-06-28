-- Gui to Lua
-- Version: 3.2

-- Instances:

local Loader = Instance.new("ScreenGui")
local MainContainer = Instance.new("Frame")
local Header = Instance.new("TextLabel")
local InjectButton = Instance.new("TextButton")
local UserName = Instance.new("TextLabel")
local StatusText = Instance.new("TextLabel")
local StatusColor = Instance.new("TextLabel")
local outline = Instance.new("Frame")
local Version = Instance.new("TextLabel")
local DataFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local CmdLabel = Instance.new("TextLabel")
local BetaInject = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local SecureBoot = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local Warning = Instance.new("TextLabel")

--Properties:

Loader.Name = "Loader"
Loader.Parent = game.CoreGui

MainContainer.Name = "MainContainer"
MainContainer.Parent = Loader
MainContainer.BackgroundColor3 = Color3.fromRGB(95, 95, 95)
MainContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainContainer.BorderSizePixel = 2
MainContainer.Position = UDim2.new(0.339817613, 0, 0.30674848, 0)
MainContainer.Size = UDim2.new(0, 507, 0, 314)

Header.Name = "Header"
Header.Parent = MainContainer
Header.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
Header.BorderSizePixel = 0
Header.Size = UDim2.new(0, 507, 0, 30)
Header.Font = Enum.Font.SourceSans
Header.Text = "UnknownWare Loader"
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.TextSize = 25.000

InjectButton.Name = "InjectButton"
InjectButton.Parent = MainContainer
InjectButton.BackgroundColor3 = Color3.fromRGB(227, 227, 227)
InjectButton.Position = UDim2.new(0.623873711, 0, 0.705150306, 0)
InjectButton.Size = UDim2.new(0, 180, 0, 42)
InjectButton.Font = Enum.Font.SourceSans
InjectButton.Text = "Inject"
InjectButton.TextColor3 = Color3.fromRGB(0, 0, 0)
InjectButton.TextSize = 14.000

UserName.Name = "UserName"
UserName.Parent = InjectButton
UserName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserName.BackgroundTransparency = 1.000
UserName.Position = UDim2.new(-0.0239108596, 0, -3.76190472, 0)
UserName.Size = UDim2.new(0, 187, 0, 32)
UserName.Font = Enum.Font.SourceSans
UserName.Text = "User: "
UserName.TextColor3 = Color3.fromRGB(255, 255, 255)
UserName.TextScaled = true
UserName.TextSize = 20.000
UserName.TextWrapped = true

StatusText.Name = "Status Text"
StatusText.Parent = InjectButton
StatusText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StatusText.BackgroundTransparency = 1.000
StatusText.Position = UDim2.new(0, 0, -3, 0)
StatusText.Size = UDim2.new(0, 131, 0, 32)
StatusText.Font = Enum.Font.SourceSans
StatusText.Text = "Status:"
StatusText.TextColor3 = Color3.fromRGB(255, 255, 255)
StatusText.TextSize = 20.000

StatusColor.Name = "Status Color"
StatusColor.Parent = InjectButton
StatusColor.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
StatusColor.BackgroundTransparency = 1.000
StatusColor.Position = UDim2.new(0.127777785, 0, -3, 0)
StatusColor.Size = UDim2.new(0, 179, 0, 32)
StatusColor.Font = Enum.Font.SourceSans
StatusColor.Text = "Safe!"
StatusColor.TextColor3 = Color3.fromRGB(4, 255, 0)
StatusColor.TextSize = 20.000

outline.Name = "outline"
outline.Parent = MainContainer
outline.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
outline.Position = UDim2.new(0.0335305706, 0, 0.232484072, 0)
outline.Size = UDim2.new(0, 287, 0, 231)

Version.Name = "Version"
Version.Parent = outline
Version.BackgroundColor3 = Color3.fromRGB(227, 227, 227)
Version.Position = UDim2.new(0.149825782, 0, -0.0865800902, 0)
Version.Size = UDim2.new(0, 200, 0, 29)
Version.Font = Enum.Font.SourceSans
Version.Text = "Version: 1.0.0"
Version.TextColor3 = Color3.fromRGB(0, 0, 0)
Version.TextSize = 14.000

DataFrame.Name = "DataFrame"
DataFrame.Parent = outline
DataFrame.Active = true
DataFrame.BackgroundColor3 = Color3.fromRGB(176, 176, 176)
DataFrame.Position = UDim2.new(0.0348432064, 0, 0.038961038, 0)
DataFrame.Size = UDim2.new(0, 263, 0, 212)
DataFrame.CanvasSize = UDim2.new(0, 0, 10, 0)

UIListLayout.Parent = DataFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

CmdLabel.Name = "CmdLabel"
CmdLabel.Parent = outline
CmdLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CmdLabel.BackgroundTransparency = 1.000
CmdLabel.Position = UDim2.new(0.032319393, 0, 0, 0)
CmdLabel.Size = UDim2.new(0, 246, 0, 20)
CmdLabel.Visible = false
CmdLabel.Font = Enum.Font.SourceSans
CmdLabel.Text = "Loading..."
CmdLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
CmdLabel.TextSize = 20.000
CmdLabel.TextXAlignment = Enum.TextXAlignment.Left

BetaInject.Name = "BetaInject"
BetaInject.Parent = MainContainer
BetaInject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BetaInject.Position = UDim2.new(0.625246525, 0, 0.592356682, 0)
BetaInject.Size = UDim2.new(0, 23, 0, 23)
BetaInject.Font = Enum.Font.SourceSans
BetaInject.Text = ""
BetaInject.TextColor3 = Color3.fromRGB(0, 0, 0)
BetaInject.TextSize = 14.000

TextLabel.Parent = BetaInject
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(1.30434775, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 143, 0, 23)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Inject With Beta"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 20.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

SecureBoot.Name = "SecureBoot"
SecureBoot.Parent = MainContainer
SecureBoot.BackgroundColor3 = Color3.fromRGB(92, 116, 255)
SecureBoot.Position = UDim2.new(0.625246525, 0, 0.461783439, 0)
SecureBoot.Size = UDim2.new(0, 23, 0, 23)
SecureBoot.Font = Enum.Font.SourceSans
SecureBoot.Text = ""
SecureBoot.TextColor3 = Color3.fromRGB(0, 0, 0)
SecureBoot.TextSize = 14.000

TextLabel_2.Parent = SecureBoot
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(1.30434775, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 143, 0, 23)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Secure Boot"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 20.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

Warning.Name = "Warning"
Warning.Parent = SecureBoot
Warning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Warning.BackgroundTransparency = 1.000
Warning.Position = UDim2.new(0.0434782617, 0, 5.47826099, 0)
Warning.Size = UDim2.new(0, 178, 0, 33)
Warning.Font = Enum.Font.SourceSans
Warning.Text = "Secure Boot Disabled! This could cause preformace and security issues!"
Warning.TextColor3 = Color3.fromRGB(195, 0, 0)
Warning.TextScaled = true
Warning.TextSize = 14.000
Warning.TextWrapped = true

-- Scripts:

local function ONCTHLG_fake_script() -- UserName.LocalScript 
	local script = Instance.new('LocalScript', UserName)

	local Text = script.Parent
	Text.Text = Text.Text ..game.Players.LocalPlayer.Name
end
coroutine.wrap(ONCTHLG_fake_script)()
local function DBHXZJ_fake_script() -- InjectButton.LocalScript 
	local script = Instance.new('LocalScript', InjectButton)

	getgenv().Loading = false
	local Main = script.Parent.Parent
	Main.Parent.Name = math.random(1,1000000) --P1000 VAC BYPASS!!!!!!
	local UiName = Main.Parent.Name
	local InjectButton = script.Parent
	local DataFrame = InjectButton.Parent.outline.DataFrame
	local CmdLabel = DataFrame.Parent.CmdLabel
	local SecureBootButton = Main.SecureBoot
	local BetaButton = Main.BetaInject
	local SecureBootEnabled = true
	local BetaEnabled = false
	local localplayer = game.Players.LocalPlayer
	
	local BoxCount = 0
	local UpdatedAmount = 0
	local function CreateText(NeededText, Color)
		BoxCount = BoxCount + 1
		local NewText = CmdLabel:Clone()
		NewText.Parent = DataFrame
		NewText.Text = NeededText
		if Color ~= false then 
			NewText.TextColor3 = Color
		end
		NewText.Visible = true
		if BoxCount == 11 then
			BoxCount = 0 
			UpdatedAmount = UpdatedAmount + 1
			DataFrame.CanvasPosition = Vector2.new(0, UpdatedAmount * 196.132)
		end
	end
	
	--Buttons
	SecureBootButton.MouseButton1Down:Connect(function()
		if SecureBootButton.BackgroundColor3 == Color3.fromRGB(255,255,255) then 
			SecureBootEnabled = false
			CreateText("Secure Boot Disabled", Color3.fromRGB(255,0,0))
		else
			SecureBootEnabled = true
			CreateText("Secure Boot Enabled", Color3.fromRGB(0,255,0))
		end
	end)
	
	BetaButton.MouseButton1Down:Connect(function()
		if BetaButton.BackgroundColor3 == Color3.fromRGB(255,255,255) then 
			BetaEnabled = false
			CreateText("Beta Disabled", Color3.fromRGB(173, 8, 255))
		else
			BetaEnabled = true
			CreateText("Beta Enabled", Color3.fromRGB(173, 8, 255))
		end
	end)
	
	
	--On loader inject
	CreateText("Loading Loader...", Color3.fromRGB(255, 234, 0))
	local StartTime = tick()
	repeat wait() until game:IsLoaded()
	local ElapsedTimeLoading = math.floor(tick() - StartTime)
	CreateText("Loader Loaded!", Color3.fromRGB(0,255,0))
	CreateText("This process took: " ..ElapsedTimeLoading .."ms", Color3.fromRGB(255, 234, 0))
	if BetaButton.BackgroundColor3 == Color3.fromRGB(177, 177, 177) then
		CreateText("This account dosent have Beta acess.", Color3.fromRGB(173, 8, 255))
	end
	
	
	
	--Inject Script
	local GetScript
	InjectButton.MouseButton1Down:Connect(function()
		CreateText("Injecting with following Settings: ", false)
		CreateText("Beta: " ..tostring(BetaEnabled), Color3.fromRGB(255, 234, 0))
		CreateText("Secure Boot: " ..tostring(SecureBootEnabled), Color3.fromRGB(255, 234, 0))
		CreateText("Searching for servers...", Color3.fromRGB(255, 217, 0))
		GetScript = pcall(function()
			if SecureBootEnabled then 
				getgenv().Loading = true
			end
			if BetaEnabled then 
				CreateText("Connecting to Beta Pannel... ", Color3.fromRGB(173, 8, 255))
				wait(0.5)
				spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/KnownUnknown420/Roblox-Cheats/main/UnknownWare.xyz/Beta.lua"))()
				end)
				CreateText("Connected to Script! Injecting..." , Color3.fromRGB(38, 255, 0))
				CreateText("All Set!, Closing in 5 Seconds.", Color3.fromRGB(38, 255, 0))		
				wait(5)
				Main.Parent.Enabled = false
				Main.Parent:Destroy()
			else
				CreateText("Connecting to Script... ", Color3.fromRGB(255, 234, 0))
				wait(0.5)
				spawn(function()
					loadstring(game:HttpGet("https://raw.githubusercontent.com/KnownUnknown420/Roblox-Cheats/main/UnknownWare.xyz/Main.lua"))()
				end)
				CreateText("Connected to Script! Injecting..." , Color3.fromRGB(38, 255, 0))
				CreateText("All Set!, Closing in 5 Seconds.", Color3.fromRGB(38, 255, 0))
				wait(5)
				Main.Parent.Enabled = false
				Main.Parent:Destroy()
				
			end
		end)
		if not GetScript then 
			CreateText("Error.", Color3.fromRGB(255, 0, 4))
		end
	end)
	
	
	
	
end
coroutine.wrap(DBHXZJ_fake_script)()
local function CCVMPY_fake_script() -- BetaInject.ButtonScript 
	local script = Instance.new('LocalScript', BetaInject)

	local Button = script.Parent
	local BetaEnabled = true
	if not BetaEnabled then
		Button.AutoButtonColor = false
		Button.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
		Button.ButtonText.TextColor3 = Color3.fromRGB(177, 177, 177)
	end
	
	Button.MouseButton1Down:Connect(function()
		if BetaEnabled then 
			if Button.BackgroundColor3 == Color3.fromRGB(255, 255, 255) then 
				Button.BackgroundColor3 = Color3.fromRGB(92, 116, 255)
			else
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			end
		end
	end)
end
coroutine.wrap(CCVMPY_fake_script)()
local function SKELI_fake_script() -- SecureBoot.ButtonScript 
	local script = Instance.new('LocalScript', SecureBoot)

	local Button = script.Parent
	local Warning = Button.Warning
	Warning.Visible = false
	
	Button.MouseButton1Down:Connect(function()
		if Button.BackgroundColor3 == Color3.fromRGB(255, 255, 255) then 
			Button.BackgroundColor3 = Color3.fromRGB(92, 116, 255)
			Warning.Visible = false
		else
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Warning.Visible = true
		end
	end)
end
coroutine.wrap(SKELI_fake_script)()
local function WWLD_fake_script() -- MainContainer.MainHandler 
	local script = Instance.new('LocalScript', MainContainer)

	local Main = script.Parent
	Main.Active = true
	Main.Draggable = true
end
coroutine.wrap(WWLD_fake_script)()
