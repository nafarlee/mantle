local import = require('import.init')

local MantleWrapper = {}
MantleWrapper.__index = MantleWrapper
MantleWrapper.__name = "MantleWrapper"

function MantleWrapper.new(value)
  local self = setmetatable({}, MantleWrapper)
  self._value = value
  return self
end

function MantleWrapper:value()
  return self._value
end

local function wrap (fn)
  return function(self, ...)
    local value = self:value()
    local newValue = fn(value, ...)
    if newValue.__name == "MantleWrapper" then
      return newValue
    else
      return MantleWrapper.new(newValue)
    end
  end
end

MantleWrapper.map = wrap(import './src/map.lua' )
MantleWrapper.assign = wrap(import './src/assign.lua')
MantleWrapper.isNil = wrap(import './src/is-nil.lua')
MantleWrapper.isBoolean = wrap(import './src/is-boolean.lua')

return MantleWrapper
