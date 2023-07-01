Window = {}
Window.__index = Window

function Window:init()
    local window = {}
    window.width = love.graphics.getWidth()
    window.height = love.graphics.getHeight()
    return setmetatable(window, Window)
end

return Window