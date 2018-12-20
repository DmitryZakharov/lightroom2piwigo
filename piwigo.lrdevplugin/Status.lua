local LrMobdebug = import 'LrMobdebug'

require 'SimpleString'
require 'SimpleInt'
require 'Base'

Status = Base:new({
    stat = SimpleString:new(),
    username = SimpleString:new(),
    status = SimpleString:new(),
    theme = SimpleString:new(),
    language = SimpleString:new(),
    pwg_token = SimpleString:new(),
    charset = SimpleString:new(),
    current_datetime = SimpleString:new(),
    version = SimpleString:new(),
    available_sizes = {} ,
    upload_file_types = SimpleString:new(),
    upload_form_chunk_size = SimpleInt:new() })



function Status.convertStatus(node)
  LrMobdebug.start()
  --nothing to do, we already have an empty table there
  status = Status:new()
  local count = node:childCount()
  for i = 1, count do
    Status.setValue (node:childAtIndex( i ), status)
  end
  return status 
end

function Status.setValue(node, status)
  nodeName = node:name():gsub("^%l", string.upper)
  methodSet = "set".. nodeName
  methodGet = "get".. nodeName
  status:invokeSetter(methodSet,  node:text())
end



function Status:getStat()
  return self.id
end

function Status:setStat(stat)
  self.stat = stat
end

function Status:getUsername()
  return self.username
end

function Status:setUsername(username)
  self.username = username
end

function Status:getStatus()
  return self.status
end

function Status:setStatus(status)
  self.status = status
end


function Status:getTheme()
  return self.theme
end

function Status:setTheme(theme)
  self.theme = theme
end

function Status:getLanguage()
  return self.language
end

function Status:setLanguage(language)
  self.language = language
end

function Status:getPwg_token()
  return self.pwg_token
end

function Status:setPwg_token(pwg_token)
  self.pwg_token = pwg_token
end

function Status:getCharset()
  return self.charset
end

function Status:setCharset(charset)
  self.charset = charset
end


function Status:getCurrent_datetime()
  return self.current_datetime
end

function Status:setCurrent_datetime(current_datetime)
  self.current_datetime = current_datetime
end


function Status:getVersion()
  return self.version
end

function Status:setVersion(version)
  self.version = version
end

function Status:getAvailable_sizes()
  return self.available_sizes
end

function Status:setAvailable_sizes(available_sizes)
  self.available_sizes = available_sizes
end

function Status:getUpload_file_types()
  return self.upload_file_types
end

function Status:setUpload_file_types(upload_file_types)
  self.upload_file_types = upload_file_types
end

function Status:getUpload_form_chunk_size()
  return self.upload_form_chunk_size
end

function Status:setUpload_form_chunk_size(upload_form_chunk_size)
  self.upload_form_chunk_size = upload_form_chunk_size
end
