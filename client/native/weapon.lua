-- Enables laser sight on any weapon.  It doesn't work. Neither on tick nor OnKeyDown
-- @module native
-- @submodule weapon
-- @see ENABLE_LASER_SIGHT_RENDERING
-- @usage void ENABLE_LASER_SIGHT_RENDERING(BOOL toggle);
-- @param toggle BOOL
-- @return void
function EnableLaserSightRendering(toggle) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_WEAPON_COMPONENT_TYPE_MODEL
-- @usage Hash GET_WEAPON_COMPONENT_TYPE_MODEL(Hash componentHash);
-- @param componentHash Hash
-- @return Hash
function GetWeaponComponentTypeModel(componentHash) end

-- Returns the model of any weapon.  Can also take an ammo hash? sub_6663a(&l_115B, WEAPON::GET_WEAPONTYPE_MODEL(${ammo_rpg}));
-- @module native
-- @submodule weapon
-- @see GET_WEAPONTYPE_MODEL
-- @usage Hash GET_WEAPONTYPE_MODEL(Hash weaponHash);
-- @param weaponHash Hash
-- @return Hash
function GetWeapontypeModel(weaponHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_WEAPONTYPE_SLOT
-- @usage Hash GET_WEAPONTYPE_SLOT(Hash weaponHash);
-- @param weaponHash Hash
-- @return Hash
function GetWeapontypeSlot(weaponHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_WEAPONTYPE_GROUP
-- @usage Hash GET_WEAPONTYPE_GROUP(Hash weaponHash);
-- @param weaponHash Hash
-- @return Hash
function GetWeapontypeGroup(weaponHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_CURRENT_PED_WEAPON
-- @usage void SET_CURRENT_PED_WEAPON(Ped ped, Hash weaponHash, BOOL equipNow);
-- @param ped Ped
-- @param weaponHash Hash
-- @param equipNow BOOL
-- @return void
function SetCurrentPedWeapon(ped, weaponHash, equipNow) end

-- The return value seems to indicate returns true if the hash of the weapon object weapon equals the weapon hash. p2 seems to be 1 most of the time.      p2 is not implemented  disassembly said that?
-- @module native
-- @submodule weapon
-- @see GET_CURRENT_PED_WEAPON
-- @usage BOOL GET_CURRENT_PED_WEAPON(Ped ped, Hash* weaponHash, BOOL p2);
-- @param ped Ped
-- @param weaponHash Hash*
-- @param p2 BOOL
-- @return BOOL
function GetCurrentPedWeapon(ped, weaponHash, p2) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_CURRENT_PED_WEAPON_ENTITY_INDEX
-- @usage Entity GET_CURRENT_PED_WEAPON_ENTITY_INDEX(Ped ped);
-- @param ped Ped
-- @return Entity
function GetCurrentPedWeaponEntityIndex(ped) end

-- p1 is always 0 in the scripts.
-- @module native
-- @submodule weapon
-- @see GET_BEST_PED_WEAPON
-- @usage Hash GET_BEST_PED_WEAPON(Ped ped, BOOL p1);
-- @param ped Ped
-- @param p1 BOOL
-- @return Hash
function GetBestPedWeapon(ped, p1) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_CURRENT_PED_VEHICLE_WEAPON
-- @usage BOOL SET_CURRENT_PED_VEHICLE_WEAPON(Ped ped, Hash weaponHash);
-- @param ped Ped
-- @param weaponHash Hash
-- @return BOOL
function SetCurrentPedVehicleWeapon(ped, weaponHash) end

-- Example in VB      Public Shared Function GetVehicleCurrentWeapon(Ped As Ped) As Integer         Dim arg As New OutputArgument()         Native.Function.Call(Hash.GET_CURRENT_PED_VEHICLE_WEAPON, Ped, arg)         Return arg.GetResult(Of Integer)()     End Function  Usage: If GetVehicleCurrentWeapon(Game.Player.Character) = -821520672 Then ...Do something Note: -821520672 = VEHICLE_WEAPON_PLANE_ROCKET
-- @module native
-- @submodule weapon
-- @see GET_CURRENT_PED_VEHICLE_WEAPON
-- @usage BOOL GET_CURRENT_PED_VEHICLE_WEAPON(Ped ped, Hash* weaponHash);
-- @param ped Ped
-- @param weaponHash Hash*
-- @return BOOL
function GetCurrentPedVehicleWeapon(ped, weaponHash) end

-- p1 is anywhere from 4 to 7 in the scripts. Might be a weapon wheel group?  ^It's kinda like that.  7 returns true if you are equipped with any weapon except your fists. 6 returns true if you are equipped with any weapon except melee weapons. 5 returns true if you are equipped with any weapon except the Explosives weapon group. 4 returns true if you are equipped with any weapon except Explosives weapon group AND melee weapons. 3 returns true if you are equipped with either Explosives or Melee weapons (the exact opposite of 4). 2 returns true only if you are equipped with any weapon from the Explosives weapon group. 1 returns true only if you are equipped with any Melee weapon. 0 never returns true.  Note: When I say "Explosives weapon group", it does not include the Jerry can and Fire Extinguisher.
-- @module native
-- @submodule weapon
-- @see IS_PED_ARMED
-- @usage BOOL IS_PED_ARMED(Ped ped, int p1);
-- @param ped Ped
-- @param p1 int
-- @return BOOL
function IsPedArmed(ped, p1) end

-- @todo
-- @module native
-- @submodule weapon
-- @see IS_WEAPON_VALID
-- @usage BOOL IS_WEAPON_VALID(Hash weaponHash);
-- @param weaponHash Hash
-- @return BOOL
function IsWeaponValid(weaponHash) end

-- p2 should be FALSE, otherwise it seems to always return FALSE  Bool does not check if the weapon is current equipped, unfortunately.
-- @module native
-- @submodule weapon
-- @see HAS_PED_GOT_WEAPON
-- @usage BOOL HAS_PED_GOT_WEAPON(Ped ped, Hash weaponHash, BOOL p2);
-- @param ped Ped
-- @param weaponHash Hash
-- @param p2 BOOL
-- @return BOOL
function HasPedGotWeapon(ped, weaponHash, p2) end

-- @todo
-- @module native
-- @submodule weapon
-- @see IS_PED_WEAPON_READY_TO_SHOOT
-- @usage BOOL IS_PED_WEAPON_READY_TO_SHOOT(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedWeaponReadyToShoot(ped) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_PED_WEAPONTYPE_IN_SLOT
-- @usage Hash GET_PED_WEAPONTYPE_IN_SLOT(Ped ped, Hash weaponSlot);
-- @param ped Ped
-- @param weaponSlot Hash
-- @return Hash
function GetPedWeapontypeInSlot(ped, weaponSlot) end

-- WEAPON::GET_AMMO_IN_PED_WEAPON(PLAYER::PLAYER_PED_ID(), a_0)  From decompiled scripts Returns total ammo in weapon  GTALua Example : natives.WEAPON.GET_AMMO_IN_PED_WEAPON(plyPed, WeaponHash)
-- @module native
-- @submodule weapon
-- @see GET_AMMO_IN_PED_WEAPON
-- @usage int GET_AMMO_IN_PED_WEAPON(Ped ped, Hash weaponhash);
-- @param ped Ped
-- @param weaponhash Hash
-- @return int
function GetAmmoInPedWeapon(ped, weaponhash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see ADD_AMMO_TO_PED
-- @usage void ADD_AMMO_TO_PED(Ped ped, Hash weaponHash, int ammo);
-- @param ped Ped
-- @param weaponHash Hash
-- @param ammo int
-- @return void
function AddAmmoToPed(ped, weaponHash, ammo) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_PED_AMMO
-- @usage void SET_PED_AMMO(Ped ped, Hash weaponHash, int ammo);
-- @param ped Ped
-- @param weaponHash Hash
-- @param ammo int
-- @return void
function SetPedAmmo(ped, weaponHash, ammo) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_PED_INFINITE_AMMO
-- @usage void SET_PED_INFINITE_AMMO(Ped ped, BOOL toggle, Hash weaponHash);
-- @param ped Ped
-- @param toggle BOOL
-- @param weaponHash Hash
-- @return void
function SetPedInfiniteAmmo(ped, toggle, weaponHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_PED_INFINITE_AMMO_CLIP
-- @usage void SET_PED_INFINITE_AMMO_CLIP(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedInfiniteAmmoClip(ped, toggle) end

-- isHidden - ????  All weapon names (add to the list if something is missing), use GAMEPLAY::GET_HASH_KEY((char *)weaponNames[i]) to get get the hash:  static LPCSTR weaponNames[] = { 	"WEAPON_KNIFE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB", 	"WEAPON_CROWBAR", "WEAPON_PISTOL", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50", 	"WEAPON_MICROSMG", "WEAPON_SMG", "WEAPON_ASSAULTSMG", "WEAPON_ASSAULTRIFLE", 	"WEAPON_CARBINERIFLE", "WEAPON_ADVANCEDRIFLE", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_PUMPSHOTGUN", 	"WEAPON_SAWNOFFSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_STUNGUN", "WEAPON_SNIPERRIFLE", 	"WEAPON_HEAVYSNIPER", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_MINIGUN", 	"WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_SMOKEGRENADE", "WEAPON_BZGAS", "WEAPON_MOLOTOV", 	"WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_FLARE", "WEAPON_SNSPISTOL", "WEAPON_SPECIALCARBINE", 	"WEAPON_HEAVYPISTOL", "WEAPON_BULLPUPRIFLE", "WEAPON_HOMINGLAUNCHER", "WEAPON_PROXMINE", "WEAPON_SNOWBALL", 	"WEAPON_VINTAGEPISTOL", "WEAPON_DAGGER", "WEAPON_FIREWORK", "WEAPON_MUSKET", "WEAPON_MARKSMANRIFLE", 	"WEAPON_HEAVYSHOTGUN", "WEAPON_GUSENBERG", "WEAPON_HATCHET", "WEAPON_RAILGUN", "WEAPON_COMBATPDW", 	"WEAPON_KNUCKLE", "WEAPON_MARKSMANPISTOL", "WEAPON_FLASHLIGHT", "WEAPON_MACHETE", "WEAPON_MACHINEPISTOL", 	"WEAPON_SWITCHBLADE", "WEAPON_REVOLVER", "WEAPON_COMPACTRIFLE", "WEAPON_DBSHOTGUN", "WEAPON_FLAREGUN", 	"WEAPON_AUTOSHOTGUN", "WEAPON_BATTLEAXE", "WEAPON_COMPACTLAUNCHER", "WEAPON_MINISMG", "WEAPON_PIPEBOMB", 	"WEAPON_POOLCUE", "WEAPON_SWEEPER", "WEAPON_WRENCH" }; ---------------------------------------------------------------------------------------------------------------------------------------- Translation table: pastebin.com/a39K8Nz8
-- @module native
-- @submodule weapon
-- @see GIVE_WEAPON_TO_PED
-- @usage void GIVE_WEAPON_TO_PED(Ped ped, Hash weaponHash, int ammoCount, BOOL isHidden, BOOL equipNow);
-- @param ped Ped
-- @param weaponHash Hash
-- @param ammoCount int
-- @param isHidden BOOL
-- @param equipNow BOOL
-- @return void
function GiveWeaponToPed(ped, weaponHash, ammoCount, isHidden, equipNow) end

-- Gives a weapon to PED with a delay, example:  WEAPON::GIVE_DELAYED_WEAPON_TO_PED(PED::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("WEAPON_PISTOL"), 1000, false) ---------------------------------------------------------------------------------------------------------------------------------------- Translation table: pastebin.com/a39K8Nz8
-- @module native
-- @submodule weapon
-- @see GIVE_DELAYED_WEAPON_TO_PED
-- @usage void GIVE_DELAYED_WEAPON_TO_PED(Ped ped, Hash weaponHash, int time, BOOL equipNow);
-- @param ped Ped
-- @param weaponHash Hash
-- @param time int
-- @param equipNow BOOL
-- @return void
function GiveDelayedWeaponToPed(ped, weaponHash, time, equipNow) end

-- setting the last params to false it does that same so I would suggest its not a toggle
-- @module native
-- @submodule weapon
-- @see REMOVE_ALL_PED_WEAPONS
-- @usage void REMOVE_ALL_PED_WEAPONS(Ped ped, BOOL p1);
-- @param ped Ped
-- @param p1 BOOL
-- @return void
function RemoveAllPedWeapons(ped, p1) end

-- This native removes a specified weapon from your selected ped. Weapon Hashes: pastebin.com/0wwDZgkF  Example: C#: Function.Call(Hash.REMOVE_WEAPON_FROM_PED, Game.Player.Character, 0x99B507EA);  C++: WEAPON::REMOVE_WEAPON_FROM_PED(PLAYER::PLAYER_PED_ID(), 0x99B507EA);  The code above removes the knife from the player.
-- @module native
-- @submodule weapon
-- @see REMOVE_WEAPON_FROM_PED
-- @usage void REMOVE_WEAPON_FROM_PED(Ped ped, Hash weaponHash);
-- @param ped Ped
-- @param weaponHash Hash
-- @return void
function RemoveWeaponFromPed(ped, weaponHash) end

-- Hides the players weapon during a cutscene.
-- @module native
-- @submodule weapon
-- @see HIDE_PED_WEAPON_FOR_SCRIPTED_CUTSCENE
-- @usage void HIDE_PED_WEAPON_FOR_SCRIPTED_CUTSCENE(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function HidePedWeaponForScriptedCutscene(ped, toggle) end

-- Has 5 parameters since latest patches.
-- @module native
-- @submodule weapon
-- @see SET_PED_CURRENT_WEAPON_VISIBLE
-- @usage void SET_PED_CURRENT_WEAPON_VISIBLE(Ped ped, BOOL visible, BOOL deselectWeapon, BOOL p3, BOOL p4);
-- @param ped Ped
-- @param visible BOOL
-- @param deselectWeapon BOOL
-- @param p3 BOOL
-- @param p4 BOOL
-- @return void
function SetPedCurrentWeaponVisible(ped, visible, deselectWeapon, p3, p4) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_PED_DROPS_WEAPONS_WHEN_DEAD
-- @usage void SET_PED_DROPS_WEAPONS_WHEN_DEAD(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedDropsWeaponsWhenDead(ped, toggle) end

-- It determines what weapons caused damage:  If you want to define only a specific weapon, second parameter=weapon hash code, third parameter=0 If you want to define any melee weapon, second parameter=0, third parameter=1. If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.
-- @module native
-- @submodule weapon
-- @see HAS_PED_BEEN_DAMAGED_BY_WEAPON
-- @usage BOOL HAS_PED_BEEN_DAMAGED_BY_WEAPON(Ped ped, Hash weaponHash, int weaponType);
-- @param ped Ped
-- @param weaponHash Hash
-- @param weaponType int
-- @return BOOL
function HasPedBeenDamagedByWeapon(ped, weaponHash, weaponType) end

-- @todo
-- @module native
-- @submodule weapon
-- @see CLEAR_PED_LAST_WEAPON_DAMAGE
-- @usage void CLEAR_PED_LAST_WEAPON_DAMAGE(Ped ped);
-- @param ped Ped
-- @return void
function ClearPedLastWeaponDamage(ped) end

-- It determines what weapons caused damage:  If youu want to define only a specific weapon, second parameter=weapon hash code, third parameter=0 If you want to define any melee weapon, second parameter=0, third parameter=1. If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.
-- @module native
-- @submodule weapon
-- @see HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON
-- @usage BOOL HAS_ENTITY_BEEN_DAMAGED_BY_WEAPON(Entity entity, Hash weaponHash, int weaponType);
-- @param entity Entity
-- @param weaponHash Hash
-- @param weaponType int
-- @return BOOL
function HasEntityBeenDamagedByWeapon(entity, weaponHash, weaponType) end

-- @todo
-- @module native
-- @submodule weapon
-- @see CLEAR_ENTITY_LAST_WEAPON_DAMAGE
-- @usage void CLEAR_ENTITY_LAST_WEAPON_DAMAGE(Entity entity);
-- @param entity Entity
-- @return void
function ClearEntityLastWeaponDamage(entity) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_PED_DROPS_WEAPON
-- @usage void SET_PED_DROPS_WEAPON(Ped ped);
-- @param ped Ped
-- @return void
function SetPedDropsWeapon(ped) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_PED_DROPS_INVENTORY_WEAPON
-- @usage void SET_PED_DROPS_INVENTORY_WEAPON(Ped ped, Hash weaponHash, float xOffset, float yOffset, float zOffset, Any p5);
-- @param ped Ped
-- @param weaponHash Hash
-- @param xOffset float
-- @param yOffset float
-- @param zOffset float
-- @param p5 Any
-- @return void
function SetPedDropsInventoryWeapon(ped, weaponHash, xOffset, yOffset, zOffset, p5) end

-- p2 is mostly 1 in the scripts.
-- @module native
-- @submodule weapon
-- @see GET_MAX_AMMO_IN_CLIP
-- @usage int GET_MAX_AMMO_IN_CLIP(Ped ped, Hash weaponHash, BOOL p2);
-- @param ped Ped
-- @param weaponHash Hash
-- @param p2 BOOL
-- @return int
function GetMaxAmmoInClip(ped, weaponHash, p2) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_AMMO_IN_CLIP
-- @usage BOOL GET_AMMO_IN_CLIP(Ped ped, Hash weaponHash, int* ammo);
-- @param ped Ped
-- @param weaponHash Hash
-- @param ammo int*
-- @return BOOL
function GetAmmoInClip(ped, weaponHash, ammo) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_AMMO_IN_CLIP
-- @usage BOOL SET_AMMO_IN_CLIP(Ped ped, Hash weaponHash, int ammo);
-- @param ped Ped
-- @param weaponHash Hash
-- @param ammo int
-- @return BOOL
function SetAmmoInClip(ped, weaponHash, ammo) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_MAX_AMMO
-- @usage BOOL GET_MAX_AMMO(Ped ped, Hash weaponHash, int* ammo);
-- @param ped Ped
-- @param weaponHash Hash
-- @param ammo int*
-- @return BOOL
function GetMaxAmmo(ped, weaponHash, ammo) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_PED_AMMO_BY_TYPE
-- @usage void SET_PED_AMMO_BY_TYPE(Ped ped, Any ammoType, int ammo);
-- @param ped Ped
-- @param ammoType Any
-- @param ammo int
-- @return void
function SetPedAmmoByType(ped, ammoType, ammo) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_PED_AMMO_BY_TYPE
-- @usage int GET_PED_AMMO_BY_TYPE(Ped ped, Any ammoType);
-- @param ped Ped
-- @param ammoType Any
-- @return int
function GetPedAmmoByType(ped, ammoType) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_PED_AMMO_TO_DROP
-- @usage void SET_PED_AMMO_TO_DROP(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return void
function SetPedAmmoToDrop(p0, p1) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_PED_AMMO_TYPE_FROM_WEAPON
-- @usage Hash GET_PED_AMMO_TYPE_FROM_WEAPON(Ped ped, Hash weaponHash);
-- @param ped Ped
-- @param weaponHash Hash
-- @return Hash
function GetPedAmmoTypeFromWeapon(ped, weaponHash) end

-- Pass ped. Pass address of Vector3. The coord will be put into the Vector3. The return will determine whether there was a coord found or not.
-- @module native
-- @submodule weapon
-- @see GET_PED_LAST_WEAPON_IMPACT_COORD
-- @usage BOOL GET_PED_LAST_WEAPON_IMPACT_COORD(Ped ped, Vector3* coords);
-- @param ped Ped
-- @param coords Vector3*
-- @return BOOL
function GetPedLastWeaponImpactCoord(ped, coords) end

-- p1/gadgetHash was always 0xFBAB5776 ("GADGET_PARACHUTE"). p2 is always true.
-- @module native
-- @submodule weapon
-- @see SET_PED_GADGET
-- @usage void SET_PED_GADGET(Ped ped, Hash gadgetHash, BOOL p2);
-- @param ped Ped
-- @param gadgetHash Hash
-- @param p2 BOOL
-- @return void
function SetPedGadget(ped, gadgetHash, p2) end

-- gadgetHash - was always 0xFBAB5776 ("GADGET_PARACHUTE").
-- @module native
-- @submodule weapon
-- @see GET_IS_PED_GADGET_EQUIPPED
-- @usage BOOL GET_IS_PED_GADGET_EQUIPPED(Ped ped, Hash gadgetHash);
-- @param ped Ped
-- @param gadgetHash Hash
-- @return BOOL
function GetIsPedGadgetEquipped(ped, gadgetHash) end

-- Returns the hash of the weapon.               var num7 = WEAPON::GET_SELECTED_PED_WEAPON(num4);             sub_27D3(num7);             switch (num7)             {                 case 0x24B17070:  Also see WEAPON::GET_CURRENT_PED_WEAPON. Difference?  -------------------------------------------------------------------------  The difference is that GET_SELECTED_PED_WEAPON simply returns the ped's current weapon hash but GET_CURRENT_PED_WEAPON also checks the weapon object and returns true if the hash of the weapon object equals the weapon hash
-- @module native
-- @submodule weapon
-- @see GET_SELECTED_PED_WEAPON
-- @usage Hash GET_SELECTED_PED_WEAPON(Ped ped);
-- @param ped Ped
-- @return Hash
function GetSelectedPedWeapon(ped) end

-- @todo
-- @module native
-- @submodule weapon
-- @see EXPLODE_PROJECTILES
-- @usage void EXPLODE_PROJECTILES(Ped ped, Hash weaponHash, BOOL p2);
-- @param ped Ped
-- @param weaponHash Hash
-- @param p2 BOOL
-- @return void
function ExplodeProjectiles(ped, weaponHash, p2) end

-- p1 seems always to be 0
-- @module native
-- @submodule weapon
-- @see REMOVE_ALL_PROJECTILES_OF_TYPE
-- @usage void REMOVE_ALL_PROJECTILES_OF_TYPE(Hash weaponHash, BOOL p1);
-- @param weaponHash Hash
-- @param p1 BOOL
-- @return void
function RemoveAllProjectilesOfType(weaponHash, p1) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_MAX_RANGE_OF_CURRENT_PED_WEAPON
-- @usage float GET_MAX_RANGE_OF_CURRENT_PED_WEAPON(Ped ped);
-- @param ped Ped
-- @return float
function GetMaxRangeOfCurrentPedWeapon(ped) end

-- Third Parameter = unsure, but pretty sure it is weapon hash --> get_hash_key("weapon_stickybomb")  Fourth Parameter = unsure, almost always -1
-- @module native
-- @submodule weapon
-- @see HAS_VEHICLE_GOT_PROJECTILE_ATTACHED
-- @usage BOOL HAS_VEHICLE_GOT_PROJECTILE_ATTACHED(Ped driver, Vehicle vehicle, Hash weaponHash, Any p3);
-- @param driver Ped
-- @param vehicle Vehicle
-- @param weaponHash Hash
-- @param p3 Any
-- @return BOOL
function HasVehicleGotProjectileAttached(driver, vehicle, weaponHash, p3) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GIVE_WEAPON_COMPONENT_TO_PED
-- @usage void GIVE_WEAPON_COMPONENT_TO_PED(Ped ped, Hash weaponHash, Hash componentHash);
-- @param ped Ped
-- @param weaponHash Hash
-- @param componentHash Hash
-- @return void
function GiveWeaponComponentToPed(ped, weaponHash, componentHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see REMOVE_WEAPON_COMPONENT_FROM_PED
-- @usage void REMOVE_WEAPON_COMPONENT_FROM_PED(Ped ped, Hash weaponHash, Hash componentHash);
-- @param ped Ped
-- @param weaponHash Hash
-- @param componentHash Hash
-- @return void
function RemoveWeaponComponentFromPed(ped, weaponHash, componentHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see HAS_PED_GOT_WEAPON_COMPONENT
-- @usage BOOL HAS_PED_GOT_WEAPON_COMPONENT(Ped ped, Hash weaponHash, Hash componentHash);
-- @param ped Ped
-- @param weaponHash Hash
-- @param componentHash Hash
-- @return BOOL
function HasPedGotWeaponComponent(ped, weaponHash, componentHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see IS_PED_WEAPON_COMPONENT_ACTIVE
-- @usage BOOL IS_PED_WEAPON_COMPONENT_ACTIVE(Ped ped, Hash weaponHash, Hash componentHash);
-- @param ped Ped
-- @param weaponHash Hash
-- @param componentHash Hash
-- @return BOOL
function IsPedWeaponComponentActive(ped, weaponHash, componentHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see MAKE_PED_RELOAD
-- @usage BOOL MAKE_PED_RELOAD(Ped ped);
-- @param ped Ped
-- @return BOOL
function MakePedReload(ped) end

-- Nearly every instance of p1 I found was 31. Nearly every instance of p2 I found was 0.  REQUEST_WEAPON_ASSET(iLocal_1888, 31, 26);
-- @module native
-- @submodule weapon
-- @see REQUEST_WEAPON_ASSET
-- @usage void REQUEST_WEAPON_ASSET(Hash weaponHash, int p1, int p2);
-- @param weaponHash Hash
-- @param p1 int
-- @param p2 int
-- @return void
function RequestWeaponAsset(weaponHash, p1, p2) end

-- @todo
-- @module native
-- @submodule weapon
-- @see HAS_WEAPON_ASSET_LOADED
-- @usage BOOL HAS_WEAPON_ASSET_LOADED(Hash weaponHash);
-- @param weaponHash Hash
-- @return BOOL
function HasWeaponAssetLoaded(weaponHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see REMOVE_WEAPON_ASSET
-- @usage void REMOVE_WEAPON_ASSET(Hash weaponHash);
-- @param weaponHash Hash
-- @return void
function RemoveWeaponAsset(weaponHash) end

-- Now has 8 params.
-- @module native
-- @submodule weapon
-- @see CREATE_WEAPON_OBJECT
-- @usage Object CREATE_WEAPON_OBJECT(Hash weaponHash, int ammoCount, float x, float y, float z, BOOL showWorldModel, float heading, Any p7);
-- @param weaponHash Hash
-- @param ammoCount int
-- @param x float
-- @param y float
-- @param z float
-- @param showWorldModel BOOL
-- @param heading float
-- @param p7 Any
-- @return Object
function CreateWeaponObject(weaponHash, ammoCount, x, y, z, showWorldModel, heading, p7) end

-- addonHash: (use WEAPON::GET_WEAPON_COMPONENT_TYPE_MODEL() to get hash value) ${component_at_ar_flsh}, ${component_at_ar_supp}, ${component_at_pi_flsh}, ${component_at_scope_large}, ${component_at_ar_supp_02}
-- @module native
-- @submodule weapon
-- @see GIVE_WEAPON_COMPONENT_TO_WEAPON_OBJECT
-- @usage void GIVE_WEAPON_COMPONENT_TO_WEAPON_OBJECT(Object weaponObject, Hash addonHash);
-- @param weaponObject Object
-- @param addonHash Hash
-- @return void
function GiveWeaponComponentToWeaponObject(weaponObject, addonHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see REMOVE_WEAPON_COMPONENT_FROM_WEAPON_OBJECT
-- @usage void REMOVE_WEAPON_COMPONENT_FROM_WEAPON_OBJECT(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return void
function RemoveWeaponComponentFromWeaponObject(p0, p1) end

-- @todo
-- @module native
-- @submodule weapon
-- @see HAS_WEAPON_GOT_WEAPON_COMPONENT
-- @usage BOOL HAS_WEAPON_GOT_WEAPON_COMPONENT(Object weapon, Hash addonHash);
-- @param weapon Object
-- @param addonHash Hash
-- @return BOOL
function HasWeaponGotWeaponComponent(weapon, addonHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GIVE_WEAPON_OBJECT_TO_PED
-- @usage void GIVE_WEAPON_OBJECT_TO_PED(Object weaponObject, Ped ped);
-- @param weaponObject Object
-- @param ped Ped
-- @return void
function GiveWeaponObjectToPed(weaponObject, ped) end

-- @todo
-- @module native
-- @submodule weapon
-- @see DOES_WEAPON_TAKE_WEAPON_COMPONENT
-- @usage BOOL DOES_WEAPON_TAKE_WEAPON_COMPONENT(Hash weaponHash, Hash componentHash);
-- @param weaponHash Hash
-- @param componentHash Hash
-- @return BOOL
function DoesWeaponTakeWeaponComponent(weaponHash, componentHash) end

-- Drops the current weapon and returns the object  Unknown behavior when unarmed.
-- @module native
-- @submodule weapon
-- @see GET_WEAPON_OBJECT_FROM_PED
-- @usage Object GET_WEAPON_OBJECT_FROM_PED(Ped ped, BOOL p1);
-- @param ped Ped
-- @param p1 BOOL
-- @return Object
function GetWeaponObjectFromPed(ped, p1) end

-- tintIndex can be the following:  0  1  2  3  4  5  6  7
-- @module native
-- @submodule weapon
-- @see SET_PED_WEAPON_TINT_INDEX
-- @usage void SET_PED_WEAPON_TINT_INDEX(Ped ped, Hash weaponHash, int tintIndex);
-- @param ped Ped
-- @param weaponHash Hash
-- @param tintIndex int
-- @return void
function SetPedWeaponTintIndex(ped, weaponHash, tintIndex) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_PED_WEAPON_TINT_INDEX
-- @usage int GET_PED_WEAPON_TINT_INDEX(Ped ped, Hash weaponHash);
-- @param ped Ped
-- @param weaponHash Hash
-- @return int
function GetPedWeaponTintIndex(ped, weaponHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_WEAPON_OBJECT_TINT_INDEX
-- @usage void SET_WEAPON_OBJECT_TINT_INDEX(Object weapon, int tintIndex);
-- @param weapon Object
-- @param tintIndex int
-- @return void
function SetWeaponObjectTintIndex(weapon, tintIndex) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_WEAPON_OBJECT_TINT_INDEX
-- @usage int GET_WEAPON_OBJECT_TINT_INDEX(Object weapon);
-- @param weapon Object
-- @return int
function GetWeaponObjectTintIndex(weapon) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_WEAPON_TINT_COUNT
-- @usage int GET_WEAPON_TINT_COUNT(Hash weaponHash);
-- @param weaponHash Hash
-- @return int
function GetWeaponTintCount(weaponHash) end

-- struct WeaponHudStatsData {     BYTE hudDamage; // 0x0000     char _0x0001[0x7]; // 0x0001     BYTE hudSpeed; // 0x0008     char _0x0009[0x7]; // 0x0009     BYTE hudCapacity; // 0x0010     char _0x0011[0x7]; // 0x0011     BYTE hudAccuracy; // 0x0018     char _0x0019[0x7]; // 0x0019     BYTE hudRange; // 0x0020 };  Usage:  WeaponHudStatsData data; if (GET_WEAPON_HUD_STATS(weaponHash, (int *)&data)) {     // BYTE damagePercentage = data.hudDamage and so on }
-- @module native
-- @submodule weapon
-- @see GET_WEAPON_HUD_STATS
-- @usage BOOL GET_WEAPON_HUD_STATS(Hash weaponHash, int* outData);
-- @param weaponHash Hash
-- @param outData int*
-- @return BOOL
function GetWeaponHudStats(weaponHash, outData) end

-- @todo
-- @module native
-- @submodule weapon
-- @see GET_WEAPON_COMPONENT_HUD_STATS
-- @usage BOOL GET_WEAPON_COMPONENT_HUD_STATS(Hash componentHash, int* outData);
-- @param componentHash Hash
-- @param outData int*
-- @return BOOL
function GetWeaponComponentHudStats(componentHash, outData) end

-- // Returns the size of the default weapon component clip.  Use it like this:  char cClipSize[32]; Hash cur; if (WEAPON::GET_CURRENT_PED_WEAPON(playerPed, &cur, 1)) {     if (WEAPON::IS_WEAPON_VALID(cur))     {         int iClipSize = WEAPON::GET_WEAPON_CLIP_SIZE(cur);         sprintf_s(cClipSize, "ClipSize: %.d", iClipSize);         vDrawString(cClipSize, 0.5f, 0.5f);     } }
-- @module native
-- @submodule weapon
-- @see GET_WEAPON_CLIP_SIZE
-- @usage int GET_WEAPON_CLIP_SIZE(Hash weaponHash);
-- @param weaponHash Hash
-- @return int
function GetWeaponClipSize(weaponHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_PED_CHANCE_OF_FIRING_BLANKS
-- @usage void SET_PED_CHANCE_OF_FIRING_BLANKS(Ped ped, float xBias, float yBias);
-- @param ped Ped
-- @param xBias float
-- @param yBias float
-- @return void
function SetPedChanceOfFiringBlanks(ped, xBias, yBias) end

-- @todo
-- @module native
-- @submodule weapon
-- @see REQUEST_WEAPON_HIGH_DETAIL_MODEL
-- @usage void REQUEST_WEAPON_HIGH_DETAIL_MODEL(Entity weaponObject);
-- @param weaponObject Entity
-- @return void
function RequestWeaponHighDetailModel(weaponObject) end

-- This native returns a true or false value.  Ped ped = The ped whose weapon you want to check.
-- @module native
-- @submodule weapon
-- @see IS_PED_CURRENT_WEAPON_SILENCED
-- @usage BOOL IS_PED_CURRENT_WEAPON_SILENCED(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedCurrentWeaponSilenced(ped) end

-- Hash collision real name is: IS_FLASH_LIGHT_ON
-- @module native
-- @submodule weapon
-- @see SET_WEAPON_SMOKEGRENADE_ASSIGNED
-- @usage BOOL SET_WEAPON_SMOKEGRENADE_ASSIGNED(Ped ped);
-- @param ped Ped
-- @return BOOL
function SetWeaponSmokegrenadeAssigned(ped) end

-- @todo
-- @module native
-- @submodule weapon
-- @see SET_FLASH_LIGHT_FADE_DISTANCE
-- @usage Any SET_FLASH_LIGHT_FADE_DISTANCE(float distance);
-- @param distance float
-- @return Any
function SetFlashLightFadeDistance(distance) end

-- Changes the selected ped aiming animation style.  Note : You must use GET_HASH_KEY!  Strings to use with GET_HASH_KEY :  	"Ballistic", 	"Default", 	"Fat", 	"Female", 	"FirstPerson", 	"FirstPersonAiming", 	"FirstPersonFranklin", 	"FirstPersonFranklinAiming", 	"FirstPersonFranklinRNG", 	"FirstPersonFranklinScope", 	"FirstPersonMPFemale", 	"FirstPersonMichael", 	"FirstPersonMichaelAiming", 	"FirstPersonMichaelRNG", 	"FirstPersonMichaelScope", 	"FirstPersonRNG", 	"FirstPersonScope", 	"FirstPersonTrevor", 	"FirstPersonTrevorAiming", 	"FirstPersonTrevorRNG", 	"FirstPersonTrevorScope", 	"Franklin", 	"Gang", 	"Gang1H", 	"GangFemale", 	"Hillbilly", 	"MP_F_Freemode", 	"Michael", 	"SuperFat", 	"Trevor"
-- @module native
-- @submodule weapon
-- @see SET_WEAPON_ANIMATION_OVERRIDE
-- @usage void SET_WEAPON_ANIMATION_OVERRIDE(Ped ped, Hash animStyle);
-- @param ped Ped
-- @param animStyle Hash
-- @return void
function SetWeaponAnimationOverride(ped, animStyle) end

-- 0=unknown (or incorrect weaponHash) 1= no damage (flare,snowball, petrolcan) 2=melee 3=bullet 4=force ragdoll fall 5=explosive (RPG, Railgun, grenade) 6=fire(molotov) 8=fall(WEAPON_HELI_CRASH) 10=electric 11=barbed wire 12=extinguisher 13=gas 14=water cannon(WEAPON_HIT_BY_WATER_CANNON)
-- @module native
-- @submodule weapon
-- @see GET_WEAPON_DAMAGE_TYPE
-- @usage int GET_WEAPON_DAMAGE_TYPE(Hash weaponHash);
-- @param weaponHash Hash
-- @return int
function GetWeaponDamageType(weaponHash) end

-- @todo
-- @module native
-- @submodule weapon
-- @see CAN_USE_WEAPON_ON_PARACHUTE
-- @usage BOOL CAN_USE_WEAPON_ON_PARACHUTE(Hash weaponHash);
-- @param weaponHash Hash
-- @return BOOL
function CanUseWeaponOnParachute(weaponHash) end