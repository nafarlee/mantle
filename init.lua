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

return M
