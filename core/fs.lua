local fs = require("filesystem")
local osfs = {}

function osfs.exists(path)
    return fs.exists(path)
end

function osfs.read(path)
    local file = io.open(path, "r")
    if not file then return nil end
    local data = file:read("*a")
    file:close()
    return data
end

function osfs.write(path, data)
    local file = io.open(path, "w")
    if not file then return false end
    file:write(data)
    file:close()
    return true
end

return osfs
