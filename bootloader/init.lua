-- init.lua
-- Добавляем папку HybridOS в пути поиска модулей
package.path = "/home/HybridOS/?.lua;/home/HybridOS/?/init.lua;" .. package.path
package.path = "/home/HybridOS/bootloader/?.lua;" .. package.path
package.path = "/home/HybridOS/core/?.lua;" .. package.path
package.path = "/home/HybridOS/libs/?.lua;" .. package.path
package.path = "/home/HybridOS/modules/?.lua;" .. package.path
package.path = "/home/HybridOS/drivers/?.lua;" .. package.path
package.path = "/home/HybridOS/automation/?.lua;" .. package.path
package.path = "/home/HybridOS/gui/hybrid/?.lua;" .. package.path
package.path = "/home/HybridOS/gui/native/?.lua;" .. package.path

-- Теперь Lua сможет найти модули
local bootstrap = require("bootloader.bootstrap")
bootstrap.run()


