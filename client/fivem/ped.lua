-- Sets the ped drunk sounds. This only sets the drunk sound to ped/player. To give the Ped a drunk effect with drunk walking animation try using SetPedMovementClipset
-- @module fivem
-- @submodule ped
-- @link https://wiki.fivem.net/wiki/SetPedIsDrunk
-- @param ped Ped
-- @param toggle bool
-- @return void
function SetPedIsDrunk(ped, toggle) end

-- Get information about if a ped is shooting or not
-- @module fivem
-- @submodule ped
-- @link https://wiki.fivem.net/wiki/IsPedShooting
-- @usage pedShooting = IsPedShooting(GetPlayerPed(-1))
-- @param ped Ped
-- @return bool
function IsPedShooting(ped) end

-- Give a weapon with ammo to ped
-- @module fivem
-- @submodule ped
-- @link https://wiki.fivem.net/wiki/GiveWeaponToPed
-- @usage GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("weapon_pistol"), 100, false)
-- @param ped Ped
-- @param weaponHash hash
-- @param ammo int
-- @param unknown bool
-- @return void
function GiveWeaponToPed(ped, weaponHash, ammo, unknown) end