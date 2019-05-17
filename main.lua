Class = require("lib.vendor.middle-class")

function love.load()
    
end

function love.update(dt)
    SceneManager:Update(dt)
end

function love.draw()
    SceneManager:Draw()
end