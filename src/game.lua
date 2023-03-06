require("./uuid")
require("./utils")
require("./core/array")

Game = {
    stateKeys = {}
}

function Game:new()
    self.__index = self
    uuid = UUID:new()
    newGame = { 
        id = uuid:generate(),
        stateKeys = Array:new()
    } 
    return setmetatable(newGame, self)
end

function Game:getId()
    return self.id
end

function Game:setState(key, value)
    self.stateKeys[key] = 1
    Global.setVar(key, value)
end

function Game:getState(key)
    var = Global.getVar(key)
    print(var)
    return var
end

function Game:getWholeState()
    state = {}
    print(dump(self.stateVars))
    for i=1, #self.stateVars, 1
    do
        key = self.stateVars[i]
        state[key] = self.getState(key) 
    end
    return state
end

function buildStateKey(key) 
    return key
end