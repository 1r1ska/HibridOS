local utils = {}

function utils.split(str, sep)
    local t={}
    for s in string.gmatch(str, "([^"..sep.."]+)") do
        table.insert(t,s)
    end
    return t
end

return utils
