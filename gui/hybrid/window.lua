local window = {}

function window.create(title)
    print("[GUI] Window created: "..title)
    return {title=title}
end

return window
