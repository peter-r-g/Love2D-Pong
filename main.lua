require("lib.loader")

Events.Listen("Load", "Pong.Load", function()
    Print("Game loading")
end)

Events.Listen("Update", "Pong.Update", function(dt)
    --Print("Game updating... (" .. dt .. ")")
end)

Events.Listen("Draw", "Pong.Draw", function()
    --Print("Game drawing...")
    love.graphics.print(love.timer.getFPS() .. "FPS", 5, 5)
end)