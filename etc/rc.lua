-- /etc/rc.lua
-- Автозапуск HybridOS

local shell = require("shell")
local fs = require("filesystem")

-- Путь к HybridOS
local HYBRIDOS_PATH = "/home/HybridOS/bootloader/init.lua"

if fs.exists(HYBRIDOS_PATH) then
    print("[HybridOS] Auto-starting...")
    shell.execute(HYBRIDOS_PATH)
else
    print("[HybridOS] HybridOS not found at "..HYBRIDOS_PATH)
end
