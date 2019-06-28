Events = require("lib.events")
Class = require("lib.vendor.middle-class")
Entities = require("lib.entities")
SceneManager = require("lib.scene.scene-manager")

require("lib.scene.base-scene")

function love.load()

end

function love.update(dt)
    SceneManager:Update(dt)
end

function love.draw()
    SceneManager:Draw()
end