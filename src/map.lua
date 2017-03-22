local function map(list, fn)
  local newList = {}

  for i, v in ipairs(list) do
    newList[i] = fn(v)
  end

  return newList
end

return map
