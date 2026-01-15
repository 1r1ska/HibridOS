local scheduler = {}
local coroutines = {}

function scheduler.spawn(fn, name)
    local co = coroutine.create(fn)
    table.insert(coroutines, {co=co, name=name or "unnamed"})
end

function scheduler.tick()
    for i=#coroutines,1,-1 do
        local c = coroutines[i]
        local ok, msg = coroutine.resume(c.co)
        if not ok then
            print("[HybridOS] Coroutine error in "..c.name..": "..tostring(msg))
            table.remove(coroutines, i)
        elseif coroutine.status(c.co) == "dead" then
            table.remove(coroutines, i)
        end
    end
end

return scheduler
