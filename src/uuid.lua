
local random = math.random

UUID = {}

function UUID:new()
    self.__index = self
    newUuid = {}
    return setmetatable(newUuid, self)
end

function UUID:generate()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end