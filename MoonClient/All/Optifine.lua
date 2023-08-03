--optifine zoom 
local GuiLib = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/MoonClientLoaderstuff/Template.lua?raw=true"))() 
GuiLib.createButton({["Default"]=true,	["Name"]="Optifine Zoom",["Icon"]=0},function(Value)
	A = Value
    if Value == false then
	game.Workspace.Camera.FieldOfView=og
    end
		og=game.Workspace.Camera.FieldOfView
end,function(v)
	print("settings")
end)
og=90

game:GetService('UserInputService').InputBegan:Connect(function(inputObject, gameProcessed)
	if inputObject.KeyCode == Enum.KeyCode.Z and A == true then
og=game.Workspace.Camera.FieldOfView	
game.Workspace.Camera.FieldOfView=30
	end
end)
game:GetService('UserInputService').InputEnded:Connect(function(inputObject, gameProcessed)
	if inputObject.KeyCode == Enum.KeyCode.Z and A == true then
		game.Workspace.Camera.FieldOfView=og
	end
end)
