local eventbus = {}
local event = require("event")

function eventbus.push(name, data)
    event.push(name, data)
end

function eventbus.pull(timeout)
    return event.pull(timeout)
end

return eventbus
