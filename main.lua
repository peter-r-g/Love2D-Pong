Class = require("lib.vendor.middle-class")
Entities = require("lib.entities")
SceneManager = require("lib.scene-manager")

function love.load()
    
end

function love.update(dt)
    SceneManager:Update(dt)
end

function love.draw()
    SceneManager:Draw()
end