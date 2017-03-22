local import = require 'import.init'

local isNil = import './is-nil.lua'
local isTable = import './is-table.lua'

local function isList(list)
  return isTable(list) and not isNil(list[1])
end

return isList
