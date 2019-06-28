local eventList = {}

local events = {}

function events.Listen(eventName, uniqueName, callback)
    if not eventList[eventName] then eventList[eventName] = {} end
    eventList[eventName][uniqueName] = callback
end

function events.Unlisten(eventName, uniqueName)
    eventList[eventName][uniqueName] = nil
end

function events.Call(eventName, ...)
    if not eventList[eventName] then return end
    
    for uniqueName, callback in pairs(eventList[eventName]) do
        local a, b, c, d, e, f = callback(...)
        
        if a then return a, b, c, d, e, f end
    end
end

function events.GetEventCallbacks(eventName)
    return eventList[eventName]
end

return events