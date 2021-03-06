local scenes = {}

local sceneManager = {}
sceneManager.activeScene = nil

function sceneManager.AddScene(sceneName, sceneClass)
    if scenes[sceneName] then return end
    scenes[sceneName] = sceneClass
end

function sceneManager.RemoveScene(sceneName)
    scenes[sceneName] = nil
end

function sceneManager.Find(sceneName)
    return scenes[sceneName]
end

function sceneManager:SwitchToScene(sceneName)
    if not scenes[sceneName] then return end
    
    if self.activeScene then
        self.activeScene:Exit()
    end
    self.activeScene = scenes[sceneName]
    self.activeScene:Enter()
end

function sceneManager:GetActiveState()
    return self.activeScene
end

function sceneManager:Update(dt)
    if self.activeScene then
        for _, entity in pairs(self.entities) do
            entity:Update(dt)
        end
        for _, uiEntitty in pairs(self.uiEntities) do
            uiEntity:Update(dt)
        end
        self.activeScene:Update(dt)
    end
end

function sceneManager:Draw()
    if self.activeScene then
        for _, entity in pairs(self.entities) do
            entity:Draw()
        end
        for _, uiEntitty in pairs(self.uiEntities) do
            uiEntity:Draw()
        end
        self.activeScene:Draw()
    end
end

return sceneManager