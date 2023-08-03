--optifine zoom 
local GuiLib = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/MoonClientLoaderstuff/Template.lua?raw=true"))() 
GuiLib.createButton({["Default"]=true,	["Name"]="Custom Mouse",["Icon"]=0},function(Value)
	A = Value
    if Value == false then
	bedwars.FovController:setFOV(bedwars.ClientStoreHandler:getState().Settings.fov)
    end
end,function(v)
	print("settings")
end)

local KnitGotten, KnitClient
repeat
	KnitGotten, KnitClient = pcall(function()
		return debug.getupvalue(require(game.Players.LocalPlayer.PlayerScripts.TS.knit).setup, 6)
	end)
	if KnitGotten then break end
	task.wait()
until KnitGotten
repeat task.wait() until debug.getupvalue(KnitClient.Start, 1)

bedwars = {
	ClientStoreHandler = require(game.Players.LocalPlayer.PlayerScripts.TS.ui.store).ClientStore,
	FovController = KnitClient.Controllers.FovController
}
game:GetService('UserInputService').InputBegan:Connect(function(inputObject, gameProcessed)
	if inputObject.KeyCode == Enum.KeyCode.Z and A == true then
	bedwars.FovController:setFOV(30)
	end
end)
game:GetService('UserInputService').InputEnded:Connect(function(inputObject, gameProcessed)
	if inputObject.KeyCode == Enum.KeyCode.Z and A == true then
		bedwars.FovController:setFOV(bedwars.ClientStoreHandler:getState().Settings.fov)
	end
end)

