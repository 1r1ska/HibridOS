-- init.lua
-- Обход ошибок require и запуск HybridOS

-- Добавляем папку HybridOS в package.path
package.path = "/home/HybridOS/?.lua;/home/HybridOS/?/init.lua;" .. package.path
package.path = "/home/HybridOS/bootloader/?.lua;" .. package.path
package.path = "/home/HybridOS/core/?.lua;" .. package.path
package.path = "/home/HybridOS/libs/?.lua;" .. package.path
package.path = "/home/HybridOS/modules/?.lua;" .. package.path
package.path = "/home/HybridOS/drivers/?.lua;" .. package.path
package.path = "/home/HybridOS/automation/?.lua;" .. package.path
package.path = "/home/HybridOS/gui/hybrid/?.lua;" .. package.path
package.path = "/home/HybridOS/gui/native/?.lua;" .. package.path

-- Безопасный require с обходом ошибок
local function safeRequire(name)
    local ok, mod = pcall(require, name)
    if ok then
        return mod
    else
        print("[HybridOS] Warning: failed to require "..name..": "..tostring(mod))
        return {} -- возвращаем пустую таблицу, чтобы можно было продолжить
    end
end

-- Загружаем bootstrap
local bootstrap = safeRequire("bootloader.bootstrap")

-- Запуск bootstrap
if bootstrap and bootstrap.run then
    local ok, err = pcall(bootstrap.run)
    if not ok then
        print("[HybridOS] Warning: bootstrap.run failed: "..tostring(err))
    end
else
    print("[HybridOS] Warning: bootstrap.run not found, skipping")
end

print("[HybridOS] HybridOS loaded (with potential missing modules)")
