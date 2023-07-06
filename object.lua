-- Based off of code from SNKRX (MIT license)

local Object = {}
Object.__index = Object
function Object:init()
end

function Object:extend()
  local object = {}
  for k, v in pairs(self) do
    if k:find("__") == 1 then
      object[k] = v
    end
  end
  object.__index = object
  object.super = self
  return setmetatable(object, self)
end

function Object:__call(...)
  local object = setmetatable({}, self)
  object:init(...)
  return object
end

return Object
