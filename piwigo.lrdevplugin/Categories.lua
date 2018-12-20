local LrDialogs = import 'LrDialogs'

require 'Category'
require 'Base'

Categories = Base:new({
    categories = {}
  })


function Categories.convertCategories(node)
  categories = Categories:new()
  local count = node:childCount()
  for i = 1, count do
    Category.convertCategory( node:childAtIndex( i ), categories )
  end
  return categories
end

function Categories:getCategories()
  return self.categories
end


function Categories:setCategories(categories)
  self.categories = categories
end

function Categories:addCategory(cat)
  local cats = self.categories
  table.insert(cats, #cats, cat )
--  LrDialogs.message( "Categories", tostring(#cats), "info" );
end