local config = {}

config.settings = {
    gui = true,
    automation = true,
    logging = true
}

function config.get(name)
    return config.settings[name]
end

function config.set(name, value)
    config.settings[name] = value
end

return config
