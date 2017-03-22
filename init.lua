local import = require 'import.init'
local MantleWrapper = import './MantleWrapper.lua'

local _ = {}

setmetatable(_, {
  __call = function(cls, ...)
    return MantleWrapper.new(...)
  end
})

_.map = import './src/map.lua'
_.assign = import './src/assign.lua'

return _
