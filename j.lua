local whitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaoyi-boop/baiming/refs/heads/main/TANGXIANBAIMING.lua"))()

if game.Players.LocalPlayer.Name ~= game.Players.LocalPlayer.Character.Name then
    return game.Players.LocalPlayer:Kick("禁止修改用户名")
end

for _, name in ipairs(whitelist) do
    if game.Players.LocalPlayer.Name == name then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaoyi-boop/-/refs/heads/main/%E6%B5%8B%E8%AF%95.lu", true))()
        break
    end
end

if not table.find(whitelist, game.Players.LocalPlayer.Name) then
    game.Players.LocalPlayer:Kick("你不在白名单中")
end