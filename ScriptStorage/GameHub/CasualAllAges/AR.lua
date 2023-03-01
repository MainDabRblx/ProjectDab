-- // Anomiss H4#0321 / Bonfire#9355
-- // Loader for when it supports more games

if game.PlaceId == 4581966615 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HELLLO1073/Anomiss/main/Games/Anomic/AnomicLoader.lua"))()
elseif game.PlaceId == 8203181639 then
    loadstring(game:HttpGet("https://anomiss.in/Scripts/Syrian.lua"))()
elseif game.PlaceId == 6407649031 then
    loadstring(game:HttpGet("https://anomiss.in/Scripts/NoScope.lua"))()
elseif game.PlaceId == 863266079 then
    loadstring(game:HttpGet("https://anomiss.in/Scripts/Anomiss-AR2.lua"))()
else
    warn("Game not supported!")
end