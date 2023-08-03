a=game:GetService('CoreGui').RobloxGui.SettingsShield.SettingsShield
local BottomButtonFrame=a.MenuContainer.BottomButtonFrame
local LeaveGameButtonButton = Instance.new("ImageButton")
local LeaveGameButtonTextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local LeaveGameHint = Instance.new("ImageLabel")
local ResetCharacterButtonButton = Instance.new("ImageButton")
local ResetCharacterButtonTextLabel = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local ResetCharacterHint = Instance.new("ImageLabel")
local ResumeButtonButton = Instance.new("ImageButton")
local ResumeButtonTextLabel = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local ResumeHint = Instance.new("ImageLabel")
local UIListLayout = Instance.new("UIListLayout")
local NormalSettings = Instance.new("ImageButton")
local LeaveGameButtonTextLabel_2 = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local LeaveGameHint_2 = Instance.new("ImageLabel")
local Moon = Instance.new("ImageButton")
local LeaveGameButtonTextLabel_3 = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local LeaveGameHint_3 = Instance.new("ImageLabel")



NormalSettings.Name = "NormalSettings"
NormalSettings.Parent = BottomButtonFrame
NormalSettings.BackgroundTransparency = 1.000
NormalSettings.Position = UDim2.new(0.5, -130, 0.5, -25)
NormalSettings.Size = UDim2.new(0, 260, 0, 70)
NormalSettings.ZIndex = 2
NormalSettings.AutoButtonColor = false
NormalSettings.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
NormalSettings.ScaleType = Enum.ScaleType.Slice
NormalSettings.SliceCenter = Rect.new(8, 6, 46, 44)

LeaveGameButtonTextLabel_2.Name = "LeaveGameButtonTextLabel"
LeaveGameButtonTextLabel_2.Parent = NormalSettings
LeaveGameButtonTextLabel_2.BackgroundTransparency = 1.000
LeaveGameButtonTextLabel_2.BorderSizePixel = 0
LeaveGameButtonTextLabel_2.Position = UDim2.new(0.25, 0, 0, 0)
LeaveGameButtonTextLabel_2.Size = UDim2.new(0.75, 0, 0.899999976, 0)
LeaveGameButtonTextLabel_2.ZIndex = 2
LeaveGameButtonTextLabel_2.Font = Enum.Font.SourceSansBold
LeaveGameButtonTextLabel_2.Text = "Normal Settings"
LeaveGameButtonTextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
LeaveGameButtonTextLabel_2.TextScaled = true
LeaveGameButtonTextLabel_2.TextSize = 24.000
LeaveGameButtonTextLabel_2.TextWrapped = true

UITextSizeConstraint_4.Parent = LeaveGameButtonTextLabel_2
UITextSizeConstraint_4.MaxTextSize = 24

LeaveGameHint_2.Name = "LeaveGameHint"
LeaveGameHint_2.Parent = NormalSettings
LeaveGameHint_2.AnchorPoint = Vector2.new(0.5, 0.5)
LeaveGameHint_2.BackgroundTransparency = 1.000
LeaveGameHint_2.Position = UDim2.new(0.150000006, 0, 0.474999994, 0)
LeaveGameHint_2.Size = UDim2.new(0, 50, 0, 50)
LeaveGameHint_2.ZIndex = 4
LeaveGameHint_2.Image = "rbxasset://textures/ui/Settings/MenuBarIcons/GameSettingsTab.png"

Moon.Name = "Moon"
Moon.Parent = BottomButtonFrame
Moon.BackgroundTransparency = 1.000
Moon.LayoutOrder = 1
Moon.Position = UDim2.new(0.5, -130, 0.5, -25)
Moon.Size = UDim2.new(0, 260, 0, 70)
Moon.ZIndex = 2
Moon.AutoButtonColor = false
Moon.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButton.png"
Moon.ScaleType = Enum.ScaleType.Slice
Moon.SliceCenter = Rect.new(8, 6, 46, 44)

LeaveGameButtonTextLabel_3.Name = "LeaveGameButtonTextLabel"
LeaveGameButtonTextLabel_3.Parent = Moon
LeaveGameButtonTextLabel_3.BackgroundTransparency = 1.000
LeaveGameButtonTextLabel_3.BorderSizePixel = 0
LeaveGameButtonTextLabel_3.Position = UDim2.new(0.25, 0, 0, 0)
LeaveGameButtonTextLabel_3.Size = UDim2.new(0.75, 0, 0.899999976, 0)
LeaveGameButtonTextLabel_3.ZIndex = 2
LeaveGameButtonTextLabel_3.Font = Enum.Font.SourceSansBold
LeaveGameButtonTextLabel_3.Text = "Full Moon Client"
LeaveGameButtonTextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
LeaveGameButtonTextLabel_3.TextScaled = true
LeaveGameButtonTextLabel_3.TextSize = 24.000
LeaveGameButtonTextLabel_3.TextWrapped = true

UITextSizeConstraint_5.Parent = LeaveGameButtonTextLabel_3
UITextSizeConstraint_5.MaxTextSize = 24

LeaveGameHint_3.Name = "LeaveGameHint"
LeaveGameHint_3.Parent = Moon
LeaveGameHint_3.AnchorPoint = Vector2.new(0.5, 0.5)
LeaveGameHint_3.BackgroundTransparency = 1.000
LeaveGameHint_3.Position = UDim2.new(0.150000006, 0, 0.474999994, 0)
LeaveGameHint_3.Size = UDim2.new(0, 50, 0, 50)
LeaveGameHint_3.ZIndex = 4
LeaveGameHint_3.Image = "rbxassetid://14279517835"
