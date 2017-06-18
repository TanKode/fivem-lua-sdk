-- Registers an event name as being allowed to be called by the server. Specific to the Lua runtime.
-- @module fivem
-- @submodule event
-- @link https://wiki.fivem.net/wiki/RegisterNetEvent
-- @usage RegisterNetEvent('myEvent')
-- @param eventName string
-- @return void
function RegisterNetEvent(eventName) end

-- Adds an event handler to the current resource/scripting environment. Do note that, if the event is to be called from a remote source, it needs to be whitelisted with RegisterNetEvent (on the client) or RegisterServerEvent (on the server).
-- @module fivem
-- @submodule event
-- @link https://wiki.fivem.net/wiki/AddEventHandler
-- @usage myEvent = AddEventHandler('myEvent', function(text) print(('%s said %s'):format(GetPlayerName(source), text) end)
-- @param eventName string
-- @param eventHandler function
-- @return eventData
function AddEventHandler(eventName, eventHandler) end

-- This function allow you to remove an eventHandler.
-- @module fivem
-- @submodule event
-- @link https://wiki.fivem.net/wiki/RemoveEventHandler
-- @usage RemoveEventHandler(myEvent)
-- @param eventData eventData
-- @return void
function RemoveEventHandler(eventData) end

-- @todo
-- @module fivem
-- @submodule event
-- @link https://wiki.fivem.net/wiki/TriggerServerEvent
-- @usage TriggerServerEvent('myEvent', 'Hello World!')
-- @param eventName string
-- @param arguments Arguments
-- @return void
function TriggerServerEvent(eventName) end

-- Cancels the current event. Use WasEventCanceled to check if the last event was canceled.
-- @module fivem
-- @submodule event
-- @link https://wiki.fivem.net/wiki/CancelEvent
-- @usage CancelEvent()
-- @return void
function CancelEvent() end

-- Checks if the last local event that executed was canceled (using CancelEvent).
-- @module fivem
-- @submodule event
-- @link https://wiki.fivem.net/wiki/WasEventCanceled
-- @usage eventCanceled = WasEventCanceled()
-- @return bool
function WasEventCanceled() end