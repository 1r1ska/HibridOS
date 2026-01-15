local http = {}
local component = require("component")

function http.get(url)
    return "HTTP GET "..url
end

function http.post(url, data)
    return "HTTP POST "..url.." body: "..data
end

return http
