-- Returns player ID(handle) from server id.
-- @module fivem
-- @submodule player
-- @link https://wiki.fivem.net/wiki/GetPlayerFromServerId
-- @usage playerint = GetPlayerFromServerId(playerServerId)
-- @param playerServerId int
-- @return int
function GetPlayerFromServerId(playerServerId) end

-- Get server id from player.
-- @module fivem
-- @submodule player
-- @link https://wiki.fivem.net/wiki/GetPlayerServerId
-- @usage serverId = GetPlayerServerId(PlayerId())
-- @param playerId int
-- @return int
function GetPlayerServerId(playerId) end

-- Get ped from player.
-- @module fivem
-- @submodule player
-- @link https://wiki.fivem.net/wiki/GetPlayerPed
-- @usage ped = GetPlayerPed(PlayerId())
-- @param playerId int
-- @return ped
function GetPlayerPed(playerId) end

-- Return the player local id (different from the server ID).
-- @module fivem
-- @submodule player
-- @link https://wiki.fivem.net/wiki/PlayerId
-- @usage localPlayerId = PlayerId()
-- @return int
function PlayerId() end

-- Sets the model of a player. You must first request it before actually using it.
-- @module fivem
-- @submodule player
-- @link https://wiki.fivem.net/wiki/SetPlayerModel
-- @usage SetPlayerModel(PlayerId(), GetHashKey(a_m_m_bevhills_02))
-- @param playerId int
-- @param model hash
-- @return void
function SetPlayerModel(playerId, model) end