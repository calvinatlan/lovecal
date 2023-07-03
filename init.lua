--- General Love Library
-- @module lovecal
-- @author Calvin Atlan
-- @copyright 2023
-- @license MIT/X11

local path = ... .. "."
local lovecal = {}
lovecal.Window = require(path .. 'window')
lovecal.State = require(path .. 'state')
lovecal.StateMachine = require(path .. 'statemachine')
return lovecal
