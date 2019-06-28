local scene = Class("Scene_Base")

function scene:initialize()
    self.entities = {}
    self._entityCounter = 0
    
    self.uiEntities = {}
end

function scene:AddEntity(entity)
    if not type(entity) == "table" then return end
    
    local entityId = self_NewID()
    
    entity.id = entityId
    self.entities[entityId] = entity
end

function scene:AddEntities(...)
    for _, entity in pairs(...) do
        self:AddEntity(entity)
    end
end

function scene:RemoveEntity(id)
    if not type(id) == "number" then return end
    
    self.entities[id] = nil
end

function scene:RemoveEntities(...)
    for _, id in pairs(...) do
        self:RemoveEntity(id)
    end
end

function scene:GetEntity(id)
    return self.entities[id]
end

function scene:_NewID()
    self._entityCounter = self._entityCounter + 1
    return self._entityCounter
end

function scene:Enter() end
function scene:Exit() end
function scene:Update(dt) end
function scene:Draw() end

SceneManager.AddScene("Base", scene)