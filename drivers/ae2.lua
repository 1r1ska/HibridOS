local ae2 = {}
local component = require("component")

function ae2.getStorage()
    return {items=10234, bytes=128000}
end

function ae2.request(item, count)
    return true
end

return ae2
