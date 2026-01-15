local sandbox = {}

function sandbox.run(code)
    local fn, err = load(code, "sandbox", "t", {})
    if not fn then return nil, err end
    local ok, res = pcall(fn)
    if ok then return res else return nil, res end
end

return sandbox
