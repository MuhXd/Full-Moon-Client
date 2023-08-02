local keystrokes = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local W = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local A = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local S = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local D = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local Space = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")

keystrokes.Name = "keystrokes"
keystrokes.Parent =  game:GetService('CoreGui')
keystrokes.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = keystrokes
Frame.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0118960058, 0, 0.780848384, 0)
Frame.Size = UDim2.new(0, 354, 0, 181)

W.Name = "W"
W.Parent = Frame
W.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
W.BackgroundTransparency = 0.500
W.Position = UDim2.new(0.383206189, 0, -0.0066114692, 0)
W.Size = UDim2.new(0.107255518, 0, 0.222222224, 0)

TextLabel.Parent = W
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.199999645, 0, 0.277777791, 0)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "W"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 15.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = W

A.Name = "A"
A.Parent = Frame
A.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
A.BackgroundTransparency = 0.500
A.Position = UDim2.new(0.24162586, 0, 0.24000001, 0)
A.Size = UDim2.new(0.107255518, 0, 0.222222224, 0)

TextLabel_2.Parent = A
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.200000003, 0, 0.277999997, 0)
TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
TextLabel_2.Font = Enum.Font.Gotham
TextLabel_2.Text = "A"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 15.000
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_2.TextYAlignment = Enum.TextYAlignment.Top

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = A

S.Name = "S"
S.Parent = Frame
S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
S.BackgroundTransparency = 0.500
S.Position = UDim2.new(0.380511463, 0, 0.23634319, 0)
S.Size = UDim2.new(0.107255518, 0, 0.222222224, 0)

TextLabel_3.Parent = S
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.200000003, 0, 0.277999997, 0)
TextLabel_3.Size = UDim2.new(1, 0, 1, 0)
TextLabel_3.Font = Enum.Font.Gotham
TextLabel_3.Text = "S"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 15.000
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_3.TextYAlignment = Enum.TextYAlignment.Top

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = S

D.Name = "D"
D.Parent = Frame
D.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
D.BackgroundTransparency = 0.500
D.Position = UDim2.new(0.509463727, 0, 0.239999995, 0)
D.Size = UDim2.new(0.107255518, 0, 0.222222224, 0)

TextLabel_4.Parent = D
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.200000003, 0, 0.277999997, 0)
TextLabel_4.Size = UDim2.new(1, 0, 1, 0)
TextLabel_4.Font = Enum.Font.Gotham
TextLabel_4.Text = "D"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 15.000
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_4.TextYAlignment = Enum.TextYAlignment.Top

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = D

Space.Name = "Space"
Space.Parent = Frame
Space.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Space.BackgroundTransparency = 0.500
Space.Position = UDim2.new(0.24162586, 0, 0.517283857, 0)
Space.Size = UDim2.new(0.375093371, 0, 0.148148149, 0)

TextLabel_5.Parent = Space
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.200000003, 0, 0.277999997, 0)
TextLabel_5.Size = UDim2.new(1, 0, 1, 0)
TextLabel_5.Font = Enum.Font.Gotham
TextLabel_5.Text = "______"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextSize = 18.000
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_5.TextYAlignment = Enum.TextYAlignment.Top

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = Space

tweenService = game:GetService('TweenService')
Gui=Frame
keys={}
for i,v in pairs(Gui:GetChildren()) do
	if v:IsA("Frame") then
		keys[v.Name] = {Key = v}
	end
end

game:GetService('UserInputService').InputBegan:Connect(function(inputObject, gameProcessed)
	local keypressed=tostring(inputObject.KeyCode):gsub("Enum.KeyCode.", "")
	local key = keys[keypressed]
	if key then
		if key.Tween then key.Tween:Cancel() end
		if key.Tween2 then key.Tween2:Cancel() end
		key.Tween = tweenService:Create(key.Key, TweenInfo.new(0.1), {BackgroundColor3 = Color3.new(1, 1, 1), BackgroundTransparency = 0})
		key.Tween:Play()
		key.Tween2 = tweenService:Create(key.Key.TextLabel, TweenInfo.new(0.1), {TextColor3 = Color3.new()})
		key.Tween2:Play()
	end
end)

game:GetService('UserInputService').InputEnded:Connect(function(inputObject, gameProcessed)
	local keypressed=tostring(inputObject.KeyCode):gsub("Enum.KeyCode.", "")
	local key = keys[keypressed]
	if key then
		if key.Tween then key.Tween:Cancel() end
		if key.Tween2 then key.Tween2:Cancel() end
		key.Tween = tweenService:Create(key.Key, TweenInfo.new(0.1), {BackgroundColor3 = Color3.new(), BackgroundTransparency = 0.5})
		key.Tween:Play()
		key.Tween2 = tweenService:Create(key.Key.TextLabel, TweenInfo.new(0.1), {TextColor3 = Color3.new(1, 1, 1)})
		key.Tween2:Play()
	end
end)


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

createButton({["Default"]=true,	["Name"]="KeyStrokes",["Icon"]=0},function(Value)
	keystrokes.Enabled = Value
end,function(v)
	print("settings")
 end)