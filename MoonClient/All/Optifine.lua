--optifine zoom 
local GuiLib = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/MoonClientLoaderstuff/Template.lua?raw=true"))() 
GuiLib.createButton({["Default"]=true,	["Name"]="Optifine Zoom",["Icon"]=0},function(Value)
	A = Value
    if Value == false then
	game.Camera.FieldOfView=og
    end
		og=game.Camera.FieldOfView
end,function(v)
	print("settings")
end)
og=90

game:GetService('UserInputService').InputBegan:Connect(function(inputObject, gameProcessed)
	if inputObject.KeyCode == Enum.KeyCode.Z and A == true then
og=game.Camera.FieldOfView	
game.Camera.FieldOfView=30
	end
end)
game:GetService('UserInputService').InputEnded:Connect(function(inputObject, gameProcessed)
	if inputObject.KeyCode == Enum.KeyCode.Z and A == true then
		game.Camera.FieldOfView=og
	end
end)
