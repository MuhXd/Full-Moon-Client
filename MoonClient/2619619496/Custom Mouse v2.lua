local GuiLib = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/MoonClientLoaderstuff/Template.lua?raw=true"))() 
GuiLib.createButton({["Default"]=true,	["Name"]="Custom Mouse",["Icon"]=0},function(Value)
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
