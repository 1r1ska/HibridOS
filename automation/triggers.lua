local triggers = {}
local registry = {}

function triggers.register(name, fn)
    registry[name] = fn
end

function triggers.fire(name, data)
    local fn = registry[name]
    if fn then
        return fn(data)
    end
end

return triggers
