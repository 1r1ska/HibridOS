local actions = {}
local registry = {}

function actions.register(name, fn)
    registry[name] = fn
end

function actions.run(name, data)
    local fn = registry[name]
    if fn then
        return fn(data)
    end
end

return actions
