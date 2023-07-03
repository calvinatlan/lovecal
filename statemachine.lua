StateMachine = {}
StateMachine.__index = StateMachine

function StateMachine:init()
    local stateMachine = {}
    return setmetatable(stateMachine, StateMachine)
end

function StateMachine:setState(state)
    self.currState = state
    self:attach()
    self.currState:load()
end

function StateMachine:attach()
    if self.currState ~= null then
        self.currState:setParent(self)
    end
end

function StateMachine:load()
    if self.currState ~= null then
        self.currState:load()
    end
end

function StateMachine:update(dt)
    if self.currState ~= null then
        self.currState:update(dt)
    end
end

function StateMachine:draw()
    if self.currState ~= null then
        self.currState:draw()
    end
end

function StateMachine:keypressed(key)
    if self.currState ~= null then
        self.currState:keypressed(key)
    end
end

function StateMachine:unload()
    if self.currState ~= null then
        self.currState:unload()
    end
end

return StateMachine
