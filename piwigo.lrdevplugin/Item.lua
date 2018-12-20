Item =  Base:new({ item = SimpleString:new() })

function Item:getItem()
  return self.item._value
end

function Item:setItem(item)
  self.item._value = item
end
