-- Create a new asynchronous thread
-- @module fivem
-- @submodule core
-- @link https://wiki.fivem.net/wiki/Citizen.CreateThread
-- @param callback function
-- @return void
function Citizen.CreateThread(callback) end

-- Prints string in console
-- @module fivem
-- @submodule core
-- @link https://wiki.fivem.net/wiki/Citizen.Trace
-- @usage Citizen.Trace("Hello World!")
-- @param string string
-- @return void
function Citizen.Trace(string) end

-- Stop execution of a thread or script for the given milliseconds. This function can block an entire script, so use with caution! It is recommended to only block the relevant Thread.
-- @module fivem
-- @submodule core
-- @link https://wiki.fivem.net/wiki/Citizen.Wait
-- @usage Citizen.Wait(1000)
-- @param duration int
-- @return void
function Citizen.Wait(duration) end