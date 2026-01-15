local socket = {}
local component = require("component")

function socket.send(addr, data)
    return true
end

function socket.receive(addr)
    return "dummy data"
end

return socket
