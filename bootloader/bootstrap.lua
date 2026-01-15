-- bootstrap.lua
local modules = require("bootloader.modules")
local term = require("term")
local computer = require("computer")

local bootstrap = {}

function bootstrap.run()
    term.clear()
    term.setCursor(1,1)
    print("[HybridOS] Bootloader starting...")
    computer.beep(1000,0.2)
    -- load modules
    modules.loadAll()
    print("[HybridOS] Boot complete. Starting shell...")
end

return bootstrap
