require("lib.loader")

Events.Listen("Load", "Pong.Load", function()
    Print("Game loading")
end)

Events.Listen("Update", "Pong.Update", function(dt)
    --print("Game updating... (" .. dt .. ")")
end)

Events.Listen("Draw", "Pong.Draw", function()
    --print("Game drawing...")
    love.graphics.print(love.timer.getFPS() .. "FPS", 5, 5)
end)