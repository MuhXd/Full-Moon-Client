	local playerGui = game.Players.LocalPlayer.PlayerGui
b=game:GetService('CoreGui').RobloxGui:FindFirstChild("SettingsShield")
if not b then
b=game:GetService('CoreGui').RobloxGui:FindFirstChild("SettingsClippingShield")
end
local DarkenBackground = false
if (b:FindFirstChild("DarkenBackground")) then
DarkenBackground = true
end
a=b.SettingsShield
	--[[
	game:GetService("UserInputService").InputEnded:Connect(function(inputObject, gameProcessed)
		if inputObject.KeyCode == Enum.KeyCode.X then
			screenGui.Enabled = not screenGui.Enabled
		end
	end)
	OLD CODE BOO!!!!
	--]]
if (DarkenBackground) then
	b.DarkenBackground.Visible = false
end
	local State = false
	UiBlur = Instance.new("BlurEffect")
	UiBlur.Parent = b
	UiBlur.Size = 10
	UiBlur.Enabled =true
function UiBlurFunc(HBHBH)
if UiBlur == nil then
	UiBlur = Instance.new("BlurEffect")
	UiBlur.Parent = b
	UiBlur.Size = 10
end
	UiBlur.Enabled =HBHBH
end

a.MenuContainer.BottomButtonFrame.NormalSettings.HoverImage = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"
	
	UI = Instance.new("UIListLayout")
	UI.Parent = a.MenuContainer.BottomButtonFrame
	UI.Padding = UDim.new(0.01,0)
	UI.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UI.FillDirection = Enum.FillDirection.Horizontal
	UI.SortOrder = Enum.SortOrder.LayoutOrder
	UI.VerticalAlignment = Enum.VerticalAlignment.Top
	UI.Name = "UILISTING"
	a.MenuContainer.BottomButtonFrame.LeaveGameButtonButton.LayoutOrder=1
	a.MenuContainer.BottomButtonFrame.ResetCharacterButtonButton.LayoutOrder=0
	a.MenuContainer.BottomButtonFrame.ResumeButtonButton.LayoutOrder=2
	a.MenuContainer.BottomButtonFrame.Moon.HoverImage = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"
	New = a.MenuContainer.BottomButtonFrame.ResumeButtonButton:Clone()
	New.Name = "ResumeButtonButton2"
	New.HoverImage = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuButtonSelected.png"
	New.Parent = a.MenuContainer.BottomButtonFrame
	New.Visible=false
a.BackgroundTransparency = 1
a:GetPropertyChangedSignal('BackgroundTransparency'):Connect(function()
	a.BackgroundTransparency = 1
end)
a:GetPropertyChangedSignal('Visible'):Connect(function()
	a.BackgroundTransparency = 1
		if a.Visible == true then
			UiBlurFunc(true)
			a.MenuContainer.Visible = true
			State=false
			a.MenuContainer.HubBar.Visible = false
			a.MenuContainer.PageViewClipper.Visible = false
			coroutine.wrap(function()
				for i,v in pairs(a.MenuContainer.BottomButtonFrame:GetChildren()) do
						pcall(function()
					if v.Name == "UILISTING" then
						return
					end
					coroutine.wrap(function()
				
						if v.Name == "NormalSettings" or v.Name == "Moon" or v.Name == "ResumeButtonButton" then
							pcall(function()
								v.Enabled.Value = true
								end)
							v.Visible = true
					else
							pcall(function()
								v.Enabled.Value = false
								end)
							v.Visible = false
					
				end
					end)()
					New.Visible=false
							end)
				end
					
			end)()
			
			
		else
			UiBlurFunc(false)
		game:GetService("CoreGui")["FullMoonClient.Gui"].Enabled = false
			State=false
		end
	end)
	a.MenuContainer.HubBar.Changed:connect(function()
		a.MenuContainer.HubBar.Visible = State
	end)
	a.MenuContainer.PageViewClipper.Changed:connect(function()
		a.MenuContainer.PageViewClipper.Visible = State
	end)

	a.MenuContainer.BottomButtonFrame.NormalSettings.MouseButton1Click:Connect(function()
		State=true
		coroutine.wrap(function()
			for i,v in pairs(a.MenuContainer.BottomButtonFrame:GetChildren()) do
					pcall(function()
				if v.Name == "UILISTING" then
					return
				end
				coroutine.wrap(function()

					if v.Name == "NormalSettings" or v.Name == "Moon" or v.Name == "ResumeButtonButton" then
						pcall(function()
							v.Enabled.Value = false
							end)
						v.Visible = false
					else

						v.Enabled.Value = true
						v.Visible = true
									end
					
				end)()
				end)
			end
		end)()
		New.Visible=true
		a.MenuContainer.HubBar.Visible = true
		a.MenuContainer.PageViewClipper.Visible = true
		State = true
	end)
	a.MenuContainer.BottomButtonFrame.Moon.MouseButton1Click:Connect(function()
		a.MenuContainer.BottomButtonFrame.NormalSettings.Visible= false
		a.MenuContainer.BottomButtonFrame.Moon.Visible= false
		a.MenuContainer.BottomButtonFrame.ResumeButtonButton.Visible= false
		New.Visible=false
	game:GetService("CoreGui")["FullMoonClient.Gui"].Enabled = true
	game:GetService("CoreGui")["FullMoonClient.Gui"]["Frame"].MainMenu.Close.MouseButton1Click:Once(function()
		game:GetService("CoreGui")["FullMoonClient.Gui"].Enabled = false
		coroutine.wrap(function()
			for i,v in pairs(a.MenuContainer.BottomButtonFrame:GetChildren()) do
				pcall(function()			
				if v.Name == "UILISTING" then
					return
				end
				coroutine.wrap(function()

					if v.Name == "NormalSettings" or v.Name == "Moon"  or v.Name == "ResumeButtonButton" then
						pcall(function()
							v.Enabled.Value = true
						end)
						v.Visible = true
					else
						pcall(function()
							v.Enabled.Value = false
						end)
						v.Visible = false

					end
				end)()
								end)
			end
		end)()	
			State = false
			a.MenuContainer.HubBar.Visible = false
			a.MenuContainer.PageViewClipper.Visible = false
		end)
	end)
	New.MouseButton1Click:Connect(function()
		State = false
		a.MenuContainer.HubBar.Visible = false
		a.MenuContainer.PageViewClipper.Visible = false
		coroutine.wrap(function()
			for i,v in pairs(a.MenuContainer.BottomButtonFrame:GetChildren()) do
			pcall(function()
				if v.Name == "UILISTING" then
					return
				end
				coroutine.wrap(function()

					if v.Name == "NormalSettings" or v.Name == "Moon"  or v.Name == "ResumeButtonButton" then
						pcall(function()
							v.Enabled.Value = true
							end)
						v.Visible = true
					else
						pcall(function()
							v.Enabled.Value = false
							end)
						v.Visible = false

					end
				end)()
				end)
			end
		end)()	
		New.Visible=false
end)



a.Visible=not a.Visible
task.wait()
a.Visible=not a.Visible
