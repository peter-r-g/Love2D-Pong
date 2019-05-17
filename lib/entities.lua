local entityClasses = {}

local entities = {}

function entities.Register(name, entityClass)
    if entityClasses[name] then return end
    entityClasses[name] = entityClass
end

function entities.Deregister(name)
    entityClasses[name] = nil
end

function entities.Create(name, ...)
    if not entityClasses[name] then return nil end
    return entityClasses[name](...)
end

function entities.Find(name)
    return entityClasses[name]
end

function entities.Wipe()
   entityClasses = {}
end

return entities