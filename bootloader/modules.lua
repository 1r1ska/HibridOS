-- modules.lua
local modules = {}

local registry = {
    "core.runtime",
    "core.scheduler",
    "core.ipc",
    "core.fs",
    "gui.hybrid.compositor",
    "gui.hybrid.window",
    "modules.system.config",
    "modules.system.logging"
}

function modules.loadAll()
    for _, name in ipairs(registry) do
        local ok, mod = pcall(require, name)
        if ok then
            if type(mod.init) == "function" then
                mod.init()
            end
        else
            print("[HybridOS] Failed to load module: "..name)
        end
    end
end

return modules
