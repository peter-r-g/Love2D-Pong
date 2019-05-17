Class = require("lib.vendor.middle-class")
Entities = require("lib.entities")

function love.load()
    
end

function love.update(dt)
    SceneManager:Update(dt)
end

function love.draw()
    SceneManager:Draw()
end