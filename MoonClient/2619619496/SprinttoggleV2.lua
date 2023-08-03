local GuiLib = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/MoonClientLoaderstuff/Template.lua?raw=true"))() 
local Enabledsprint =false
GuiLib.createButton({["Default"]=false,	["Name"]="Toggle Sprint",["Icon"]=0},function(Value)
	Enabledsprint = Value
end,function(v)
	print("settings")
end)
-
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
	FovController = KnitClient.Controllers.FovController,
	SprintController = KnitClient.Controllers.SprintController
}
Sprint=false
game:GetService('UserInputService').InputBegan:Connect(function(inputObject, gameProcessed)
	if inputObject.KeyCode == Enum.KeyCode.LeftShift or inputObject.KeyCode == Enum.KeyCode.RightShift then
		if Enabledsprint then
			Sprint=not Sprint
			if Sprint then
				repeat
					bedwars.SprintController:startSprinting()
					task.wait()
				until  Sprint == false or Enabledsprint == false
				if Enabledsprint == false then
					bedwars.SprintController:stopSprinting()
					Sprint=false
				end
			else
				bedwars.SprintController:stopSprinting()
				repeat
					bedwars.SprintController:stopSprinting()
					task.wait()
				until  Sprint == true or Enabledsprint == false
			end

		end
	end
end)
