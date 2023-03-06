Array = {
    index = 1
}

function Array:new() 
    newArray = {
        index = 1,
    }
    self.__index = self
    setmetatable(newArray, self)
    return newArray
end

function Array:push(element)
    print(dump(self))
    i = self.index or 1
    print(i, element)
    self[i + 1] = element
    self.index = i + i
end

function Array:size()
    return self.index - 1
end