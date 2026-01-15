local flux = {}
local component = require("component")

function flux.status()
    return {
        stored = 9800000,
        input = 42000,
        output = 39000,
        nodes = 23
    }
end

return flux
