Base = {}

function Base:new (o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

function Base:getGlobalTable(tableType)
  return  _G[tableType]:new()
end

function Base:invokeGetter(method)
  return self[method](self)
end

function Base:invokeSetter(method, param)
  self[method](self, param)
end

function Base:getValue(field)
  return self[field]._value
end

function Base:setValue(field, value)
  self[field]._value = value
end
