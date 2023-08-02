-- Gui to Lua
-- Version: 3.2

-- Instances:

local ExampleMod = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Click = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local ImageButton = Instance.new("ImageButton")
local TextLabel = Instance.new("TextLabel")
local Image = Instance.new("ImageButton")

--Properties:

ExampleMod.Name = "Example Mod"
ExampleMod.BackgroundColor3 = Color3.fromRGB(136, 136, 136)
ExampleMod.BackgroundTransparency = 0.600
ExampleMod.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleMod.BorderSizePixel = 0
ExampleMod.Position = UDim2.new(0.241019696, 0, 0.128526643, 0)
ExampleMod.Size = UDim2.new(0, 100, 0, 100)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = ExampleMod

Click.Name = "Click"
Click.Parent = ExampleMod
Click.BackgroundColor3 = Color3.fromRGB(177, 0, 0)
Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
Click.BorderSizePixel = 0
Click.Position = UDim2.new(0, 0, 0.800000012, 0)
Click.Size = UDim2.new(1, 0, 0.200000003, 0)
Click.ZIndex = 2
Click.Font = Enum.Font.SourceSans
Click.Text = "DISABLED"
Click.TextColor3 = Color3.fromRGB(0, 0, 0)
Click.TextSize = 31.000

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = Click

TextButton.Parent = ExampleMod
TextButton.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
TextButton.BackgroundTransparency = 0.600
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.65200001, 0)
TextButton.Size = UDim2.new(0.751999974, 0, 0.172000006, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "OPTIONS"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 31.000

ImageButton.Parent = ExampleMod
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.779999971, 0, 0.65200001, 0)
ImageButton.Size = UDim2.new(0.143999994, 0, 0.148000002, 0)
ImageButton.Image = "http://www.roblox.com/asset/?id=9753762469"

TextLabel.Parent = ExampleMod
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.123999998, 0, 0.451999992, 0)
TextLabel.Size = UDim2.new(0.800000012, 0, 0.200000003, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Example"
TextLabel.TextColor3 = Color3.fromRGB(39, 39, 39)
TextLabel.TextSize = 33.000

Image.Name = "Image"
Image.Parent = ExampleMod
Image.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Image.BorderColor3 = Color3.fromRGB(0, 0, 0)
Image.BorderSizePixel = 0
Image.Position = UDim2.new(0.300000012, 0, 0.0520000011, 0)
Image.Size = UDim2.new(0.400000006, 0, 0.400000006, 0)
Image.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

function createButton(Settings,clicked,Settingsclicked)
	local function ModLook(enabled,MOD)
		if enabled  == true then
			MOD.Click.Text = "ENABLED"
			MOD.Click.BackgroundColor3 = Color3.fromRGB(38, 255, 0)
		else
			MOD.Click.Text = "DISABLED"
			MOD.Click.BackgroundColor3 = Color3.fromRGB(177, 0, 0)
		end
	end
	local MOD = ExampleMod:Clone()
	MOD.TextLabel.Text = Settings["Name"] or "MissingNam"
	MOD.Image.Image = Settings["Icon"] or 0
	MOD.Parent = game:GetService("CoreGui")["FullMoonClient.Gui"]["Frame"]["ScrollingFrame"]
	enabled = Settings["Default"] or false
	ModLook(enabled,MOD)
	task.spawn(clicked,enabled)
	MOD.Click.MouseButton1Click:Connect(function()
		enabled=not enabled
		ModLook(enabled,MOD)
		task.spawn(clicked,enabled)
	end)
end

createButton({["Default"]=true,	["Name"]="Custom Mouse",["Icon"]=0},function(Value)
	A = Value
end,function(v)
	print("settings")
end)

local runService = game:GetService("RunService")
local input = game:GetService("UserInputService")
local players = game:GetService("Players")
local player = players.LocalPlayer
-- bedwars mouse rbxassetid://8099700275
while task.wait() do
	if A and player:GetMouse().Icon == "rbxassetid://8099700275" or player:GetMouse().Icon == "http://www.roblox.com/asset/?id=569021388" and A==false then
		local m = player:GetMouse()
		if A then
			m.Icon = "http://www.roblox.com/asset/?id=569021388"
		else
			m.Icon = "rbxassetid://8099700275"
		end

	end
end