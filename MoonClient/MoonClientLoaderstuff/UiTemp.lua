-- Gui to Lua
-- Version: 3.2

-- Instances:
local Temp = {}
local ExampleMod = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Click = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")

--Properties:

ExampleMod.Name = "Example Mod"
ExampleMod.Parent = game.StarterGui["FullMoonClient.Gui"].Frame.Settings
ExampleMod.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
ExampleMod.BackgroundTransparency = 0.600
ExampleMod.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleMod.BorderSizePixel = 0
ExampleMod.Size = UDim2.new(0, 222, 0, 186)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = ExampleMod

Click.Name = "Click"
Click.Parent = ExampleMod
Click.BackgroundColor3 = Color3.fromRGB(177, 0, 0)
Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
Click.BorderSizePixel = 0
Click.Position = UDim2.new(0.054929886, 0, 0.617333472, 0)
Click.Size = UDim2.new(0.895070016, 0, 0.300000012, 0)
Click.ZIndex = 2
Click.Font = Enum.Font.SourceSans
Click.Text = "E"
Click.TextColor3 = Color3.fromRGB(0, 0, 0)
Click.TextSize = 31.000

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = Click

TextLabel.Parent = ExampleMod
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.100000001, 0, 0.134000018, 0)
TextLabel.Size = UDim2.new(0.819999993, 0, 0.333333284, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Keybind"
TextLabel.TextColor3 = Color3.fromRGB(39, 39, 39)
TextLabel.TextSize = 33.000
Temp.CreateUI = function(Name)
	local Settings = Instance.new("ScrollingFrame")
	local UIGridLayout = Instance.new("UIGridLayout")
	Name = tostring(Name) or tostring(math.random(0,1200))
	Settings.Name = "Settings_"..os.time().."_"..Name
	Settings.Visible = false
	game:GetService("CoreGui")["FullMoonClient.Gui"].Frame.ScrollingFrame:GetPropertyChangedSignal("Visible"):Connect(function(v)
		if v then
			Settings.Visible = false
		end
	end)
	Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Settings.BackgroundTransparency = 1.000
	Settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Settings.BorderSizePixel = 0
	Settings.Position = UDim2.new(0.151796058, 0, 0.181899399, 0)
	Settings.Size = UDim2.new(0, 723, 0, 500)
	Settings.ScrollBarThickness = 6

	UIGridLayout.Parent = Settings
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(0, 200, 0, 120)
	UIGridLayout.FillDirectionMaxCells = 2
	Settings.Parent = game:GetService("CoreGui")["FullMoonClient.Gui"]["Frame"]["Settings"]
	return Settings
end
Temp.createButton = function(Parent,Settings,clicked,Settingsclicked)
	if not Settings["Mode"] then
		Settings["Mode"] = "BoolValue"
	end
	enabled = Settings["Default"] or false and Settings["Mode"] == "BoolValue" or Settings["Mode"] == "Keybind" and Enum.KeyCode.Z
	local function ModLook(enabled,MOD)
		if enabled  == true then
			MOD.Click.Text = "ENABLED"
			MOD.Click.BackgroundColor3 = Color3.fromRGB(38, 255, 0)
		elseif enabled == false then
			MOD.Click.Text = "DISABLED"
			MOD.Click.BackgroundColor3 = Color3.fromRGB(177, 0, 0)
		else
			MOD.Click.Text = string.gsub(enabled,"Enum.KeyCode.","")
			MOD.Click.BackgroundColor3 = Color3.fromRGB(111, 0, 166)
	end
	end
	local MOD = ExampleMod:Clone()
	MOD.TextLabel.Text = Settings["Name"] or "MissingNam"
	MOD.Image.Image = Settings["Icon"] or 0
	MOD.Parent = Parent

	ModLook(enabled,MOD)
	task.spawn(clicked,enabled)
	if Settings["Mode"] == "BoolValue" then
	MOD.Click.MouseButton1Click:Connect(function()
		enabled=not enabled
		ModLook(enabled,MOD)
		task.spawn(clicked,enabled)
		end)
	elseif Settings["Mode"] == "Keybind" then
		MOD.Click.MouseButton1Click:Connect(function()
			if EnumKey then
				EnumKey:Disconect()
			end
			EnumKey = game:GetService("UserInputService").InputBegan:Connect(function(inputObject, gameProcessed)
				EnumKey:Disconect()
				ModLook(inputObject.KeyCode,MOD)
				task.spawn(clicked,enabled)
			end)
		
		end)
		end
	
end
return Temp
