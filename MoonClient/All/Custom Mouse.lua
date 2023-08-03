local GuiLib = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/MoonClientLoaderstuff/Template.lua?raw=true"))() 
GuiLib.createButton({["Default"]=true,	["Name"]="Custom Mouse",["Icon"]=0},function(Value)
	A = Value
		if Value==false then
			local m = player:GetMouse()
m.Icon = "rbxasset://textures/Cursors/KeyboardMouse/ArrowFarCursor.png"
		end
end,function(v)
	print("settings")
end)

local runService = game:GetService("RunService")
local input = game:GetService("UserInputService")
local players = game:GetService("Players")
local player = players.LocalPlayer

while task.wait() do
		local m = player:GetMouse()
	if m.Icon == "http://www.roblox.com/asset/?id=569021388" then
m.Icon = "rbxasset://textures/Cursors/KeyboardMouse/ArrowFarCursor.png"
	end
		if A then
			m.Icon = "http://www.roblox.com/asset/?id=569021388"
		
		end

	
end
