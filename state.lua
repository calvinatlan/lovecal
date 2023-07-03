State = {}
State.__index = State

function State:init()
    local state = {}
    state.store = {}
    return setmetatable(state, State)
end

function State:bind(load, update, draw, unload, keypressed)
    self.Load = load
    self.Update = update
    self.Draw = draw
    self.Unload = unload
    self.Keypressed = keypressed
end

function State:setParent(stateMachine)
    self.parent = stateMachine
end

function State:load()
    self.Load(self)
end

function State:update(dt)
    self.Update(self, dt)
end

function State:draw()
    self.Draw(self)
end

function State:keypressed(key)
    self.Keypressed(self, key)
end

function State:unload()
    self.store = {}
    self.Unload(self)
end

function State:transition(state)
    self.parent:setState(state)
end

return State
