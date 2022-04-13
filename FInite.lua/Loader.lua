-- Gui to Lua
-- Version: 3.2

-- Instances:

local FInite = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Header = Instance.new("Frame")
local Logo = Instance.new("ImageLabel")
local CheatName = Instance.new("TextLabel")
local Inject = Instance.new("TextButton")
local GameName = Instance.new("TextLabel")
local TopText = Instance.new("TextLabel")
local JoinDiscord = Instance.new("TextButton")

--Properties:

FInite.Name = "FInite"
FInite.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = FInite
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderColor3 = Color3.fromRGB(255, 255, 255)
Main.Position = UDim2.new(0.267137706, 0, 0.325153381, 0)
Main.Size = UDim2.new(0, 393, 0, 215)

Header.Name = "Header"
Header.Parent = Main
Header.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Header.BorderSizePixel = 0
Header.Position = UDim2.new(0, 0, -0.0319017991, 0)
Header.Size = UDim2.new(0, 394, 0, 6)

Logo.Name = "Logo"
Logo.Parent = Main
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 1.000
Logo.Position = UDim2.new(0.631753027, 0, 0.302325577, 0)
Logo.Size = UDim2.new(0, 135, 0, 87)
Logo.Image = "rbxassetid://7920561889"

CheatName.Name = "CheatName"
CheatName.Parent = Main
CheatName.BackgroundColor3 = Color3.fromRGB(108, 108, 108)
CheatName.BackgroundTransparency = 1.000
CheatName.BorderColor3 = Color3.fromRGB(0, 0, 0)
CheatName.Position = UDim2.new(0.0992366374, 0, 0.116279215, 0)
CheatName.Size = UDim2.new(0, 174, 0, 32)
CheatName.Font = Enum.Font.Michroma
CheatName.Text = "CheatName"
CheatName.TextColor3 = Color3.fromRGB(0, 0, 0)
CheatName.TextSize = 25.000

Inject.Name = "Inject"
Inject.Parent = Main
Inject.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Inject.BorderColor3 = Color3.fromRGB(0, 0, 0)
Inject.Position = UDim2.new(0.0381679088, 0, 0.586046457, 0)
Inject.Size = UDim2.new(0, 221, 0, 39)
Inject.Font = Enum.Font.Michroma
Inject.Text = "Inject"
Inject.TextColor3 = Color3.fromRGB(0, 0, 0)
Inject.TextSize = 30.000
Inject.TextWrapped = true

GameName.Name = "GameName"
GameName.Parent = Main
GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameName.BorderColor3 = Color3.fromRGB(0, 0, 0)
GameName.Position = UDim2.new(0.0381679386, 0, 0.437209278, 0)
GameName.Size = UDim2.new(0, 221, 0, 26)
GameName.Font = Enum.Font.Michroma
GameName.Text = "Counter Blox"
GameName.TextColor3 = Color3.fromRGB(0, 0, 0)
GameName.TextSize = 25.000

TopText.Name = "TopText"
TopText.Parent = Main
TopText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TopText.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopText.LayoutOrder = 2
TopText.Position = UDim2.new(0.0381679088, 0, 0.302325577, 0)
TopText.Size = UDim2.new(0, 221, 0, 26)
TopText.Font = Enum.Font.Michroma
TopText.Text = "Select Cheat Version:"
TopText.TextColor3 = Color3.fromRGB(0, 0, 0)
TopText.TextSize = 14.000

JoinDiscord.Name = "JoinDiscord"
JoinDiscord.Parent = Main
JoinDiscord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JoinDiscord.BackgroundTransparency = 0.950
JoinDiscord.BorderColor3 = Color3.fromRGB(0, 0, 0)
JoinDiscord.BorderSizePixel = 0
JoinDiscord.Position = UDim2.new(0.664122164, 0, 0.827906966, 0)
JoinDiscord.Size = UDim2.new(0, 108, 0, 27)
JoinDiscord.Font = Enum.Font.Michroma
JoinDiscord.Text = "Join Discord"
JoinDiscord.TextColor3 = Color3.fromRGB(0, 0, 0)
JoinDiscord.TextSize = 14.000

-- Scripts:

local function TGXNIUX_fake_script() -- Main.LocalScript 
	local script = Instance.new('LocalScript', Main)

	local Main = script.Parent
	Main.Active = true
	Main.Draggable = true
end
coroutine.wrap(TGXNIUX_fake_script)()
local function DNQAUYQ_fake_script() -- CheatName.LocalScript 
	local script = Instance.new('LocalScript', CheatName)

	local Text = script.Parent
	local waittime = 0.4
	local Main = script.Parent.Parent.Parent.Main
	Main:WaitForChild("TopText")
	Text.Text = "F"
	wait(waittime)
	Text.Text = "Fi"
	wait(waittime)
	Text.Text = "Fin"
	wait(waittime)
	Text.Text = "Fini"
	wait(waittime)
	Text.Text = "Finit"
	wait(waittime)
	Text.Text = "Finite"
	wait(waittime)
	Text.Text = "Finite."
	wait(waittime)
	Text.Text = "Finite.l"
	wait(waittime)
	Text.Text = "Finite.lu"
	wait(waittime)
	Text.Text = "Finite.lua"
	
	
end
coroutine.wrap(DNQAUYQ_fake_script)()
local function QWELJX_fake_script() -- Inject.LocalScript 
	local script = Instance.new('LocalScript', Inject)

	
	local Button = script.Parent
	
	local function has_value (tab, val)
		for index, value in ipairs(tab) do
			if value == val then
				return true
			end
		end
	
		return false
	end
	
	print(_G.whitelistedusers)
	
	Button.MouseButton1Down:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/KnownUnknown420/Finite.inc/main/Main.lua"))()
		local NIGGERNIGGERNIGGERNIGGERNIGGERNIGGER = script.Parent.Parent.Parent.Main
		NIGGERNIGGERNIGGERNIGGERNIGGERNIGGER:Destroy()
	end)
	
end
coroutine.wrap(QWELJX_fake_script)()
local function SQLXF_fake_script() -- TopText.LocalScript 
	local script = Instance.new('LocalScript', TopText)

	script.Parent.Text = game.Players.LocalPlayer.Name
end
coroutine.wrap(SQLXF_fake_script)()
local function MTOXUA_fake_script() -- JoinDiscord.LocalScript 
	local script = Instance.new('LocalScript', JoinDiscord)

	local Button = script.Parent
	
	Button.MouseButton1Down:Connect(function()
		setclipboard("https://discord.gg/ZDT8c4Q3AY")
		Button.Text = "Copied to clipboard"
		wait(2)
		Button.Text = "Join Discord"
	end)
end
coroutine.wrap(MTOXUA_fake_script)()
