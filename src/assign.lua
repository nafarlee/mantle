local function assign(object, ...)
  for index = 1, select('#', ...) do
    for k, v in pairs(select(index, ...)) do
      object[k] = v
    end
  end

  return object
end

return assign
