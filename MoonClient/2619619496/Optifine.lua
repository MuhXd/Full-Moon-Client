--optifine zoom 
local SettingUiLib = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/MoonClientLoaderstuff/UiTemp.lua?raw=true"))() 
local GuiLib = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/MoonClientLoaderstuff/Template.lua?raw=true"))() 
 Uisettinga = SettingUiLib.CreateUI("Optifine")
local KeycodeOpt = Enum.KeyCode.Z
GuiLib.createButton({["Default"]=true,	["Name"]="Optifine Zoom",["Icon"]=0,["HasOptionUi"]=true,["ui"]=Uisettinga},function(Value)
	AA = Value
    if Value == false then
	bedwars.FovController:setFOV(bedwars.ClientStoreHandler:getState().Settings.fov)
    end
end,function(v)
	print("settings")
end)
SettingUiLib.createButton(Uisettinga,{["Mode"]="Keybind",["Name"]="Keybinds",["Default"]=Enum.KeyCode.Z},function(Value)
		KeycodeOpt = Value
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
	ClientStoreHandler = require(game:GetService("Players").LocalPlayer.PlayerScripts.TS.ui.store).ClientStore,
	FovController = KnitClient.Controllers.FovController
}
game:GetService('UserInputService').InputBegan:Connect(function(inputObject, gameProcessed)
	if inputObject.KeyCode == KeycodeOpt and AA == true then
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
	ClientStoreHandler = require(game:GetService("Players").LocalPlayer.PlayerScripts.TS.ui.store).ClientStore,
	FovController = KnitClient.Controllers.FovController
}
	bedwars.FovController:setFOV(30)
	end
end)
game:GetService('UserInputService').InputEnded:Connect(function(inputObject, gameProcessed)
	if inputObject.KeyCode == KeycodeOpt and AA == true then
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
	ClientStoreHandler = require(game:GetService("Players").LocalPlayer.PlayerScripts.TS.ui.store).ClientStore,
	FovController = KnitClient.Controllers.FovController
}
		bedwars.FovController:setFOV(bedwars.ClientStoreHandler:getState().Settings.fov)
	end
end)
