local triggers = require("automation.triggers")
local actions = require("automation.actions")

local pipeline = {}

function pipeline.create(trigger, action)
    return {trigger = trigger, action = action}
end

function pipeline.run(p)
    local data = triggers.fire(p.trigger)
    if data then
        return actions.run(p.action, data)
    end
end

return pipeline
