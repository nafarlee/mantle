local import = require 'import.init'
local MantleWrapper = import './MantleWrapper.lua'

local M = {}

setmetatable(M, {
  __call = function(cls, ...)
    return MantleWrapper.new(...)
  end
})

M.map = import './src/map.lua'
M.assign = import './src/assign.lua'
M.isNil = import './src/is-nil.lua'
M.isBoolean = import './src/is-boolean.lua'
M.isNumber = import './src/is-number.lua'
M.isString = import './src/is-string.lua'
M.isFunction = import './src/is-function.lua'

return M
