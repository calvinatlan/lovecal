State = {}
State.__index = State

function State:init()
    local state = {}
    state.store = {}
    return setmetatable(state, State)
end

function State:bind(load, update, draw, unload, keypressed)
    self.load = load
    self.update = update
    self.draw = draw
    self.Unload = unload
    self.keypressed = keypressed
end

function State:setParent(stateMachine)
    self.parent = stateMachine
end

function State:unload()
    self.store = {}
    self.Unload(self)
end

function State:transition(state)
    self.parent:setState(state)
end

return State
