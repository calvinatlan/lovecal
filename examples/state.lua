local exampleState = State.init()

local load = function(self)
    --- self.store is a dict to store local state
    self.store.test = "Example local state variable"
end

local update = function(self, dt)

end

local draw = function(self)
    
end

local unload = function(self) 
    
end

local keypressed = function(self, key) 
    
end

exampleState:bind(load, update, draw, unload, keypressed)
return exampleState
