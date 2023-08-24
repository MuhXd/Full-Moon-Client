--optifine zoom 
local SettingUiLib = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/MoonClientLoaderstuff/UiTemp.lua?raw=true"))() 
local GuiLib = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/MoonClientLoaderstuff/Template.lua?raw=true"))() 
 Uisettinga = SettingUiLib.CreateUI("Optifine")
local KeycodeOpt = Enum.KeyCode.Z
GuiLib.createButton({["Default"]=true,	["Name"]="Optifine Zoom",["Icon"]=0,["HasOptionUi"]=true,["ui"]=Uisettinga},function(Value)
	AA = Value
    game.ReplicatedStorage:WaitForChild("MoonClientCustomizion"):WaitForChild("Optifne").Value = Value
    if Value == false then
	game.Workspace.Camera.FieldOfView=og
    end
		og=game.Workspace.Camera.FieldOfView
end,function(v)
	print("settings")
end)
og=90
SettingUiLib.createButton(Uisettinga,{["Mode"]="Keybind",["Name"]="Keybinds",["Default"]=Enum.KeyCode.Z},function(Value)
		KeycodeOpt = Value
	end,function(v)
	print("settings")
end)

game:GetService('UserInputService').InputBegan:Connect(function(inputObject, gameProcessed)
	if inputObject.KeyCode == KeycodeOpt and AA == true then
og=game.Workspace.Camera.FieldOfView
			AAW=false
			repeat 
game.Workspace.Camera.FieldOfView=30
				task.wait()
			until AA == false or AAW == true
	end
end)
game:GetService('UserInputService').InputEnded:Connect(function(inputObject, gameProcessed)	
if inputObject.KeyCode == KeycodeOpt and AA == true then
		game.Workspace.Camera.FieldOfView=og
			AAW=true
	end
end)
