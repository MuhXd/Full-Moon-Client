
--[[
"https://github.com/MuhXd/Full-Moon-Client/tree/main/MoonClient/All" -- Always used

s,r = pcall(function()
"https://github.com/MuhXd/Full-Moon-Client/tree/main/MoonClient/".. tostring(game.GameId)
end)
--]]

FileManager = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/All/Files.Load?raw=true"))() 
coroutine.wrap(function()
for i,v in pairs(FileManager) do
    if v[2] then
for ii,vv in pairs(v[2]) do
if vv == game.GameId then
return "Game = Disable"
end
    end

    end
    a=tostring(v[1])
    print(a)
loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/All/"..v[1].."?raw=true"))() 
    end

end)()
s,r = pcall(function()
    FileManager2 = loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/".. tostring(game.GameId).."/Files.Load?raw=true"))() 
end)
print(s)
if not s then
return
end
for i,v in pairs(FileManager2) do
loadstring(game:HttpGet("https://github.com/MuhXd/Full-Moon-Client/blob/main/MoonClient/".. tostring(game.GameId).."/"..v[1].."?raw=true"))() 
    end
