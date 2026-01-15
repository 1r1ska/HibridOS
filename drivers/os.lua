local os_driver = {}
local computer = require("computer")

function os_driver.info()
    return {
        uptime = computer.uptime(),
        memoryTotal = computer.totalMemory(),
        memoryUsed = computer.freeMemory()
    }
end

return os_driver
