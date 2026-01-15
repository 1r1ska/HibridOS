local event = require("event")
local ipc = {}

function ipc.send(signal, data)
    event.push(signal, data)
end

function ipc.receive(timeout)
    return event.pull(timeout)
end

return ipc
