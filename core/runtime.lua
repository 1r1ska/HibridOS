local runtime = {}
local computer = require("computer")
local event = require("event")

function runtime.init()
    print("[HybridOS] Runtime initialized. CPU:", computer.cpu(), "RAM:", computer.totalMemory())
end

return runtime
