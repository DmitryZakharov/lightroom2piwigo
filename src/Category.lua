local LrDialogs = import 'LrDialogs'

Category = {id = "", status = "", nb_images = 0, total_nb_images = 0, date_last = "", max_date_last = "", nb_categories = 0, url = "", name = "" , comment = "" , uppercats = 0, global_rank = 0, id_uppercat = 0, representative_picture_id = 0, tn_url = "" }

function Category:new (o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self
  return o
end

function Category:invokeGetter(method)
  return self[method](self)
end

function Category:invokeSetter(method, param)
  self[method](self, param)
end
function Category:getId()
  return self.id
end

function Category:setId(id)
  self.id = id
end

function Category:getStatus()
  return self.status
end

function Category:setStatus(status)
  self.status = status
end

function Category:getNb_images()
  return self.nb_images
end

function Category:setNb_images(nb_images)
  self.nb_images = nb_images
end


function Category:getTotal_nb_images()
  return self.total_nb_images
end

function Category:setTotal_nb_images(total_nb_images)
  self.total_nb_images = total_nb_images
end

function Category:getDate_last()
  return self.date_last
end

function Category:setDate_last(date_last)
  self.date_last = date_last
end

function Category:getMax_date_last()
  return self.max_date_last
end

function Category:setMax_date_last(max_date_last)
  self.max_date_last = max_date_last
end

function Category:getNb_categories()
  return self.nb_categories
end

function Category:setNb_categories(nb_categories)
  self.nb_categories = nb_categories
end


function Category:getUrl()
  return self.url
end

function Category:setUrl(url)
  self.url = url
end


function Category:getName()
  return self.name
end

function Category:setName(name)
  self.name = name
end

function Category:getComment()
  return self.comment
end

function Category:setComment(comment)
  self.comment = comment
end

function Category:getUppercats()
  return self.uppercats
end

function Category:setUppercats(uppercats)
  self.uppercats = uppercats
end

function Category:getGlobal_rank()
  return self.global_rank
end

function Category:setGlobal_rank(global_rank)
  self.global_rank = global_rank
end

function Category:getId_uppercat()
  return self.id_uppercat
end

function Category:setId_uppercat(id_uppercat)
  self.id_uppercat = id_uppercat
end

function Category:getRepresentative_picture_id()
  return self.representative_picture_id
end

function Category:setRepresentative_picture_id(representative_picture_id)
  self.representative_picture_id = representative_picture_id
end

function Category:getTn_url()
  return self.tn_url
end

function Category:setTn_url(tn_url)
  self.tn_url = tn_url
end
