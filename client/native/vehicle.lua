-- p6 - last parameter does not mean vehicle handle is returned maybe a quick view in disassembly will tell us what is actually does   p6 seems to check for something with the script in the disassembly
-- @module native
-- @submodule vehicle
-- @see CREATE_VEHICLE
-- @usage Vehicle CREATE_VEHICLE(Hash modelHash, float x, float y, float z, float heading, BOOL isNetwork, BOOL p6);
-- @param modelHash Hash
-- @param x float
-- @param y float
-- @param z float
-- @param heading float
-- @param isNetwork BOOL
-- @param p6 BOOL
-- @return Vehicle
function CreateVehicle(modelHash, x, y, z, heading, isNetwork, p6) end

-- Deletes a vehicle. The vehicle must be a mission entity to delete, so call this before deleting: SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true);  eg how to use: SET_ENTITY_AS_MISSION_ENTITY(vehicle, true, true); DELETE_VEHICLE(&vehicle);  Deletes the specified vehicle, then sets the handle pointed to by the pointer to NULL.
-- @module native
-- @submodule vehicle
-- @see DELETE_VEHICLE
-- @usage void DELETE_VEHICLE(Vehicle* vehicle);
-- @param vehicle Vehicle*
-- @return void
function DeleteVehicle(vehicle) end

-- Makes the vehicle accept no passengers.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_ALLOW_NO_PASSENGERS_LOCKON
-- @usage void SET_VEHICLE_ALLOW_NO_PASSENGERS_LOCKON(Vehicle veh, BOOL toggle);
-- @param veh Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleAllowNoPassengersLockon(veh, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_MODEL
-- @usage BOOL IS_VEHICLE_MODEL(Vehicle vehicle, Hash model);
-- @param vehicle Vehicle
-- @param model Hash
-- @return BOOL
function IsVehicleModel(vehicle, model) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see DOES_SCRIPT_VEHICLE_GENERATOR_EXIST
-- @usage BOOL DOES_SCRIPT_VEHICLE_GENERATOR_EXIST(int vehicleGenerator);
-- @param vehicleGenerator int
-- @return BOOL
function DoesScriptVehicleGeneratorExist(vehicleGenerator) end

-- Creates a script vehicle generator at the given coordinates. Most parameters after the model hash are unknown.  Parameters: x/y/z - Generator position heading - Generator heading p4 - Unknown (always 5.0) p5 - Unknown (always 3.0) modelHash - Vehicle model hash p7/8/9/10 - Unknown (always -1) p11 - Unknown (usually TRUE, only one instance of FALSE) p12/13 - Unknown (always FALSE) p14 - Unknown (usally FALSE, only two instances of TRUE) p15 - Unknown (always TRUE) p16 - Unknown (always -1)  Vector3 coords = GET_ENTITY_COORDS(PLAYER_PED_ID(), 0);	CREATE_SCRIPT_VEHICLE_GENERATOR(coords.x, coords.y, coords.z, 1.0f, 5.0f, 3.0f, GET_HASH_KEY("adder"), -1. -1, -1, -1, -1, true, false, false, false, true, -1);
-- @module native
-- @submodule vehicle
-- @see CREATE_SCRIPT_VEHICLE_GENERATOR
-- @usage int CREATE_SCRIPT_VEHICLE_GENERATOR(float x, float y, float z, float heading, float p4, float p5, Hash modelHash, int p7, int p8, int p9, int p10, BOOL p11, BOOL p12, BOOL p13, BOOL p14, BOOL p15, int p16);
-- @param x float
-- @param y float
-- @param z float
-- @param heading float
-- @param p4 float
-- @param p5 float
-- @param modelHash Hash
-- @param p7 int
-- @param p8 int
-- @param p9 int
-- @param p10 int
-- @param p11 BOOL
-- @param p12 BOOL
-- @param p13 BOOL
-- @param p14 BOOL
-- @param p15 BOOL
-- @param p16 int
-- @return int
function CreateScriptVehicleGenerator(x, y, z, heading, p4, p5, modelHash, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see DELETE_SCRIPT_VEHICLE_GENERATOR
-- @usage void DELETE_SCRIPT_VEHICLE_GENERATOR(int vehicleGenerator);
-- @param vehicleGenerator int
-- @return void
function DeleteScriptVehicleGenerator(vehicleGenerator) end

-- Only called once in the decompiled scripts. Presumably activates the specified generator.
-- @module native
-- @submodule vehicle
-- @see SET_SCRIPT_VEHICLE_GENERATOR
-- @usage void SET_SCRIPT_VEHICLE_GENERATOR(Any vehicleGenerator, BOOL enabled);
-- @param vehicleGenerator Any
-- @param enabled BOOL
-- @return void
function SetScriptVehicleGenerator(vehicleGenerator, enabled) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_ALL_VEHICLE_GENERATORS_ACTIVE_IN_AREA
-- @usage void SET_ALL_VEHICLE_GENERATORS_ACTIVE_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL p6, BOOL p7);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param p6 BOOL
-- @param p7 BOOL
-- @return void
function SetAllVehicleGeneratorsActiveInArea(x1, y1, z1, x2, y2, z2, p6, p7) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_ALL_VEHICLE_GENERATORS_ACTIVE
-- @usage void SET_ALL_VEHICLE_GENERATORS_ACTIVE();
-- @return void
function SetAllVehicleGeneratorsActive() end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_ALL_LOW_PRIORITY_VEHICLE_GENERATORS_ACTIVE
-- @usage void SET_ALL_LOW_PRIORITY_VEHICLE_GENERATORS_ACTIVE(BOOL active);
-- @param active BOOL
-- @return void
function SetAllLowPriorityVehicleGeneratorsActive(active) end

-- Sets a vehicle on the ground on all wheels.  Returns whether or not the operation was successful.  sfink: This has an additional param(Vehicle vehicle, float p1) which is always set to 5.0f in the b944 scripts.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_ON_GROUND_PROPERLY
-- @usage BOOL SET_VEHICLE_ON_GROUND_PROPERLY(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function SetVehicleOnGroundProperly(vehicle) end

-- Most likely a hash collision
-- @module native
-- @submodule vehicle
-- @see SET_ALL_VEHICLES_SPAWN
-- @usage Any SET_ALL_VEHICLES_SPAWN(Vehicle p0, BOOL p1, BOOL p2, BOOL p3);
-- @param p0 Vehicle
-- @param p1 BOOL
-- @param p2 BOOL
-- @param p3 BOOL
-- @return Any
function SetAllVehiclesSpawn(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_STUCK_ON_ROOF
-- @usage BOOL IS_VEHICLE_STUCK_ON_ROOF(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleStuckOnRoof(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see ADD_VEHICLE_UPSIDEDOWN_CHECK
-- @usage void ADD_VEHICLE_UPSIDEDOWN_CHECK(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function AddVehicleUpsidedownCheck(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see REMOVE_VEHICLE_UPSIDEDOWN_CHECK
-- @usage void REMOVE_VEHICLE_UPSIDEDOWN_CHECK(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function RemoveVehicleUpsidedownCheck(vehicle) end

-- Returns true if the vehicle's current speed is less than, or equal to 0.0025f.  For some vehicles it returns true if the current speed is <= 0.00039999999.
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_STOPPED
-- @usage BOOL IS_VEHICLE_STOPPED(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleStopped(vehicle) end

-- Gets the number of passengers, NOT including the driver. Use IS_VEHICLE_SEAT_FREE(Vehicle, -1) to also check for the driver
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_NUMBER_OF_PASSENGERS
-- @usage int GET_VEHICLE_NUMBER_OF_PASSENGERS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleNumberOfPassengers(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS
-- @usage int GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleMaxNumberOfPassengers(vehicle) end

-- Returns max number of passengers (including the driver) for the specified vehicle model.  For a full list, see here: pastebin.com/MdETCS1j
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MODEL_NUMBER_OF_SEATS
-- @usage int GET_VEHICLE_MODEL_NUMBER_OF_SEATS(Hash modelHash);
-- @param modelHash Hash
-- @return int
function GetVehicleModelNumberOfSeats(modelHash) end

-- • Usage  → Use this native inside a looped function. → Values:    → 0.0 = no vehicles on streets    → 1.0 = normal vehicles on streets
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME
-- @usage void SET_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME(float multiplier);
-- @param multiplier float
-- @return void
function SetVehicleDensityMultiplierThisFrame(multiplier) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME
-- @usage void SET_RANDOM_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME(float multiplier);
-- @param multiplier float
-- @return void
function SetRandomVehicleDensityMultiplierThisFrame(multiplier) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME
-- @usage void SET_PARKED_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME(float multiplier);
-- @param multiplier float
-- @return void
function SetParkedVehicleDensityMultiplierThisFrame(multiplier) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_FAR_DRAW_VEHICLES
-- @usage void SET_FAR_DRAW_VEHICLES(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetFarDrawVehicles(toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_NUMBER_OF_PARKED_VEHICLES
-- @usage Any SET_NUMBER_OF_PARKED_VEHICLES(int value);
-- @param value int
-- @return Any
function SetNumberOfParkedVehicles(value) end

-- 0  1  2 - CARLOCK_LOCKED (locked) 3  4 - CARLOCK_LOCKED_PLAYER_INSIDE (can get in, can't leave)  (maybe, these are leftovers from GTA:VC) 5  6  7   (source: GTA VC miss2 leak, matching constants for 0/2/4, testing)  They use 10 in am_mp_property_int, don't know what it does atm.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DOORS_LOCKED
-- @usage void SET_VEHICLE_DOORS_LOCKED(Vehicle vehicle, int doorLockStatus);
-- @param vehicle Vehicle
-- @param doorLockStatus int
-- @return void
function SetVehicleDoorsLocked(vehicle, doorLockStatus) end

-- destroyType is 1 for opens on damage, 2 for breaks on damage.
-- @module native
-- @submodule vehicle
-- @see SET_PED_TARGETTABLE_VEHICLE_DESTROY
-- @usage void SET_PED_TARGETTABLE_VEHICLE_DESTROY(Vehicle vehicle, int vehicleComponent, int destroyType);
-- @param vehicle Vehicle
-- @param vehicleComponent int
-- @param destroyType int
-- @return void
function SetPedTargettableVehicleDestroy(vehicle, vehicleComponent, destroyType) end

-- if set to true, prevents vehicle sirens from having sound, leaving only the lights.  HASH COLLISION !!! Please change to _SET_VEHICLE_SIREN_SOUND
-- @module native
-- @submodule vehicle
-- @see DISABLE_VEHICLE_IMPACT_EXPLOSION_ACTIVATION
-- @usage void DISABLE_VEHICLE_IMPACT_EXPLOSION_ACTIVATION(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function DisableVehicleImpactExplosionActivation(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DOORS_LOCKED_FOR_PLAYER
-- @usage void SET_VEHICLE_DOORS_LOCKED_FOR_PLAYER(Vehicle vehicle, Player player, BOOL toggle);
-- @param vehicle Vehicle
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetVehicleDoorsLockedForPlayer(vehicle, player, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_DOORS_LOCKED_FOR_PLAYER
-- @usage BOOL GET_VEHICLE_DOORS_LOCKED_FOR_PLAYER(Vehicle vehicle, Player player);
-- @param vehicle Vehicle
-- @param player Player
-- @return BOOL
function GetVehicleDoorsLockedForPlayer(vehicle, player) end

-- After some analysis, I've decided that these are what the parameters are.  We can see this being used in R* scripts such as "am_mp_property_int.ysc.c4": l_11A1 = PED::GET_VEHICLE_PED_IS_IN(PLAYER::PLAYER_PED_ID(), 1); ... VEHICLE::SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(l_11A1, 1);
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS
-- @usage void SET_VEHICLE_DOORS_LOCKED_FOR_ALL_PLAYERS(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleDoorsLockedForAllPlayers(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DOORS_LOCKED_FOR_TEAM
-- @usage void SET_VEHICLE_DOORS_LOCKED_FOR_TEAM(Vehicle vehicle, int team, BOOL toggle);
-- @param vehicle Vehicle
-- @param team int
-- @param toggle BOOL
-- @return void
function SetVehicleDoorsLockedForTeam(vehicle, team, toggle) end

-- Explodes a selected vehicle.  Vehicle vehicle = Vehicle you want to explode. BOOL isAudible = If explosion makes a sound. BOOL isInvisible = If the explosion is invisible or not.  First BOOL does not give any visual explosion, the vehicle just falls apart completely but slowly and starts to burn.
-- @module native
-- @submodule vehicle
-- @see EXPLODE_VEHICLE
-- @usage void EXPLODE_VEHICLE(Vehicle vehicle, BOOL isAudible, BOOL isInvisible);
-- @param vehicle Vehicle
-- @param isAudible BOOL
-- @param isInvisible BOOL
-- @return void
function ExplodeVehicle(vehicle, isAudible, isInvisible) end

-- Tested on the player's current vehicle. Unless you kill the driver, the vehicle doesn't loose control, however, if enabled, explodeOnImpact is still active. The moment you crash, boom.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_OUT_OF_CONTROL
-- @usage void SET_VEHICLE_OUT_OF_CONTROL(Vehicle vehicle, BOOL killDriver, BOOL explodeOnImpact);
-- @param vehicle Vehicle
-- @param killDriver BOOL
-- @param explodeOnImpact BOOL
-- @return void
function SetVehicleOutOfControl(vehicle, killDriver, explodeOnImpact) end

-- VEHICLE::SET_VEHICLE_TIMED_EXPLOSION(v_3, PLAYER::GET_PLAYER_PED(v_5), 1);
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_TIMED_EXPLOSION
-- @usage void SET_VEHICLE_TIMED_EXPLOSION(Vehicle vehicle, Ped ped, BOOL toggle);
-- @param vehicle Vehicle
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetVehicleTimedExplosion(vehicle, ped, toggle) end

-- This is not tested - it's just an assumption.   Doesn't seem to work.  I'll try with an int instead. --JT  Read the scripts, im dumpass.                               if (!VEHICLE::IS_TAXI_LIGHT_ON(l_115)) {                                 VEHICLE::SET_TAXI_LIGHTS(l_115, 1);                             }
-- @module native
-- @submodule vehicle
-- @see SET_TAXI_LIGHTS
-- @usage void SET_TAXI_LIGHTS(Vehicle vehicle, BOOL state);
-- @param vehicle Vehicle
-- @param state BOOL
-- @return void
function SetTaxiLights(vehicle, state) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_TAXI_LIGHT_ON
-- @usage BOOL IS_TAXI_LIGHT_ON(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsTaxiLightOn(vehicle) end

-- garageName example "Michael - Beverly Hills"  For a full list, see here: pastebin.com/73VfwsmS
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_IN_GARAGE_AREA
-- @usage BOOL IS_VEHICLE_IN_GARAGE_AREA(char* garageName, Vehicle vehicle);
-- @param garageName char*
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleInGarageArea(garageName, vehicle) end

-- colorPrimary & colorSecondary are the paint index for the vehicle. For a list of valid paint indexes, view: pastebin.com/pwHci0xK ------------------------------------------------------------------------- Use this to get the number of color indices: pastebin.com/RQEeqTSM Note: minimum color index is 0, maximum color index is (numColorIndices - 1)
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_COLOURS
-- @usage void SET_VEHICLE_COLOURS(Vehicle vehicle, int colorPrimary, int colorSecondary);
-- @param vehicle Vehicle
-- @param colorPrimary int
-- @param colorSecondary int
-- @return void
function SetVehicleColours(vehicle, colorPrimary, colorSecondary) end

-- It switch to highbeam when p1 is set to true.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_FULLBEAM
-- @usage void SET_VEHICLE_FULLBEAM(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleFullbeam(vehicle, toggle) end

-- This seems like a hash collision?  p1 (toggle) was always 1 (true) except in one case in the b678 scripts.
-- @module native
-- @submodule vehicle
-- @see STEER_UNLOCK_BIAS
-- @usage void STEER_UNLOCK_BIAS(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SteerUnlockBias(vehicle, toggle) end

-- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_CUSTOM_PRIMARY_COLOUR
-- @usage void SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(Vehicle vehicle, int r, int g, int b);
-- @param vehicle Vehicle
-- @param r int
-- @param g int
-- @param b int
-- @return void
function SetVehicleCustomPrimaryColour(vehicle, r, g, b) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_CUSTOM_PRIMARY_COLOUR
-- @usage void GET_VEHICLE_CUSTOM_PRIMARY_COLOUR(Vehicle vehicle, int* r, int* g, int* b);
-- @param vehicle Vehicle
-- @param r int*
-- @param g int*
-- @param b int*
-- @return void
function GetVehicleCustomPrimaryColour(vehicle, r, g, b) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see CLEAR_VEHICLE_CUSTOM_PRIMARY_COLOUR
-- @usage Any CLEAR_VEHICLE_CUSTOM_PRIMARY_COLOUR(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return Any
function ClearVehicleCustomPrimaryColour(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_IS_VEHICLE_PRIMARY_COLOUR_CUSTOM
-- @usage BOOL GET_IS_VEHICLE_PRIMARY_COLOUR_CUSTOM(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function GetIsVehiclePrimaryColourCustom(vehicle) end

-- p1, p2, p3 are RGB values for color (255,0,0 for Red, ect)
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_CUSTOM_SECONDARY_COLOUR
-- @usage void SET_VEHICLE_CUSTOM_SECONDARY_COLOUR(Vehicle vehicle, int r, int g, int b);
-- @param vehicle Vehicle
-- @param r int
-- @param g int
-- @param b int
-- @return void
function SetVehicleCustomSecondaryColour(vehicle, r, g, b) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_CUSTOM_SECONDARY_COLOUR
-- @usage void GET_VEHICLE_CUSTOM_SECONDARY_COLOUR(Vehicle vehicle, int* r, int* g, int* b);
-- @param vehicle Vehicle
-- @param r int*
-- @param g int*
-- @param b int*
-- @return void
function GetVehicleCustomSecondaryColour(vehicle, r, g, b) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see CLEAR_VEHICLE_CUSTOM_SECONDARY_COLOUR
-- @usage Any CLEAR_VEHICLE_CUSTOM_SECONDARY_COLOUR(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return Any
function ClearVehicleCustomSecondaryColour(vehicle) end

-- Check if Vehicle Secondary is avaliable for customize
-- @module native
-- @submodule vehicle
-- @see GET_IS_VEHICLE_SECONDARY_COLOUR_CUSTOM
-- @usage BOOL GET_IS_VEHICLE_SECONDARY_COLOUR_CUSTOM(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function GetIsVehicleSecondaryColourCustom(vehicle) end

-- formerly known as _SET_VEHICLE_PAINT_FADE  The parameter fade is a value from 0-1, where 0 is fresh paint. ------------------------------------------------------------------------------------ The actual value isn't stored as a float but as an unsigned char (BYTE). More info here: pastebin.com/r0h6EM5s
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_ENVEFF_SCALE
-- @usage void SET_VEHICLE_ENVEFF_SCALE(Vehicle vehicle, float fade);
-- @param vehicle Vehicle
-- @param fade float
-- @return void
function SetVehicleEnveffScale(vehicle, fade) end

-- formerly known as _GET_VEHICLE_PAINT_FADE  The result is a value from 0-1, where 0 is fresh paint. ----------------------------------------------------------------------- The actual value isn't stored as a float but as an unsigned char (BYTE).
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_ENVEFF_SCALE
-- @usage float GET_VEHICLE_ENVEFF_SCALE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return float
function GetVehicleEnveffScale(vehicle) end

-- Hardcoded to not work in multiplayer.
-- @module native
-- @submodule vehicle
-- @see SET_CAN_RESPRAY_VEHICLE
-- @usage void SET_CAN_RESPRAY_VEHICLE(Vehicle vehicle, BOOL state);
-- @param vehicle Vehicle
-- @param state BOOL
-- @return void
function SetCanResprayVehicle(vehicle, state) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_BOAT_ANCHOR
-- @usage void SET_BOAT_ANCHOR(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetBoatAnchor(vehicle, toggle) end

-- Activate siren on vehicle (Only works if the vehicle has a siren).
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_SIREN
-- @usage void SET_VEHICLE_SIREN(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleSiren(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_SIREN_ON
-- @usage BOOL IS_VEHICLE_SIREN_ON(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleSirenOn(vehicle) end

-- If set to true, vehicle will not take crash damage, but is still susceptible to damage from bullets and explosives
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_STRONG
-- @usage void SET_VEHICLE_STRONG(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleStrong(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see REMOVE_VEHICLE_STUCK_CHECK
-- @usage void REMOVE_VEHICLE_STUCK_CHECK(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function RemoveVehicleStuckCheck(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_COLOURS
-- @usage void GET_VEHICLE_COLOURS(Vehicle vehicle, int* colorPrimary, int* colorSecondary);
-- @param vehicle Vehicle
-- @param colorPrimary int*
-- @param colorSecondary int*
-- @return void
function GetVehicleColours(vehicle, colorPrimary, colorSecondary) end

-- Has an additional BOOL parameter since version [???].  Check if a vehicle seat is free. -1 being the driver seat. Use GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) - 1 for last seat index.
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_SEAT_FREE
-- @usage BOOL IS_VEHICLE_SEAT_FREE(Vehicle vehicle, int seatIndex);
-- @param vehicle Vehicle
-- @param seatIndex int
-- @return BOOL
function IsVehicleSeatFree(vehicle, seatIndex) end

-- -1 (driver) <= index < GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle)
-- @module native
-- @submodule vehicle
-- @see GET_PED_IN_VEHICLE_SEAT
-- @usage Ped GET_PED_IN_VEHICLE_SEAT(Vehicle vehicle, int index);
-- @param vehicle Vehicle
-- @param index int
-- @return Ped
function GetPedInVehicleSeat(vehicle, index) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_LAST_PED_IN_VEHICLE_SEAT
-- @usage Ped GET_LAST_PED_IN_VEHICLE_SEAT(Vehicle vehicle, int seatIndex);
-- @param vehicle Vehicle
-- @param seatIndex int
-- @return Ped
function GetLastPedInVehicleSeat(vehicle, seatIndex) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_LIGHTS_STATE
-- @usage BOOL GET_VEHICLE_LIGHTS_STATE(Vehicle vehicle, BOOL* lightsOn, BOOL* highbeamsOn);
-- @param vehicle Vehicle
-- @param lightsOn BOOL*
-- @param highbeamsOn BOOL*
-- @return BOOL
function GetVehicleLightsState(vehicle, lightsOn, highbeamsOn) end

-- wheelID used for 4 wheelers seem to be (0, 1, 4, 5) completely - is to check if tire completely gone from rim.  '0 = wheel_lf / bike, plane or jet front '1 = wheel_rf '2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left '3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right '4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left '5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right '45 = 6 wheels trailer mid wheel left '47 = 6 wheels trailer mid wheel right
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_TYRE_BURST
-- @usage BOOL IS_VEHICLE_TYRE_BURST(Vehicle vehicle, int wheelID, BOOL completely);
-- @param vehicle Vehicle
-- @param wheelID int
-- @param completely BOOL
-- @return BOOL
function IsVehicleTyreBurst(vehicle, wheelID, completely) end

-- SCALE: Setting the speed to 30 would result in a speed of roughly 60mph, according to speedometer.  Speed is in meters per second You can convert meters/s to mph here: http://www.calculateme.com/Speed/MetersperSecond/ToMilesperHour.htm
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_FORWARD_SPEED
-- @usage void SET_VEHICLE_FORWARD_SPEED(Vehicle vehicle, float speed);
-- @param vehicle Vehicle
-- @param speed float
-- @return void
function SetVehicleForwardSpeed(vehicle, speed) end

-- This is a hash collision...  _IS_VEHICLE_NEAR_ENTITY
-- @module native
-- @submodule vehicle
-- @see SET_PED_ENABLED_BIKE_RINGTONE
-- @usage BOOL SET_PED_ENABLED_BIKE_RINGTONE(Vehicle vehicle, Entity entity);
-- @param vehicle Vehicle
-- @param entity Entity
-- @return BOOL
function SetPedEnabledBikeRingtone(vehicle, entity) end

-- "To burst tyres VEHICLE::SET_VEHICLE_TYRE_BURST(vehicle, 0, true, 1000.0) to burst all tyres type it 8 times where p1 = 0 to 7.  p3 seems to be how much damage it has taken. 0 doesn't deflate them, 1000 completely deflates them.  '0 = wheel_lf / bike, plane or jet front '1 = wheel_rf '2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left '3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right '4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left '5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right '45 = 6 wheels trailer mid wheel left '47 = 6 wheels trailer mid wheel right
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_TYRE_BURST
-- @usage void SET_VEHICLE_TYRE_BURST(Vehicle vehicle, int index, BOOL onRim, float p3);
-- @param vehicle Vehicle
-- @param index int
-- @param onRim BOOL
-- @param p3 float
-- @return void
function SetVehicleTyreBurst(vehicle, index, onRim, p3) end

-- Closes all doors of a vehicle:
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DOORS_SHUT
-- @usage void SET_VEHICLE_DOORS_SHUT(Vehicle vehicle, BOOL closeInstantly);
-- @param vehicle Vehicle
-- @param closeInstantly BOOL
-- @return void
function SetVehicleDoorsShut(vehicle, closeInstantly) end

-- Allows you to toggle bulletproof tires.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_TYRES_CAN_BURST
-- @usage void SET_VEHICLE_TYRES_CAN_BURST(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleTyresCanBurst(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_TYRES_CAN_BURST
-- @usage BOOL GET_VEHICLE_TYRES_CAN_BURST(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function GetVehicleTyresCanBurst(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_WHEELS_CAN_BREAK
-- @usage Any SET_VEHICLE_WHEELS_CAN_BREAK(Vehicle vehicle, BOOL enabled);
-- @param vehicle Vehicle
-- @param enabled BOOL
-- @return Any
function SetVehicleWheelsCanBreak(vehicle, enabled) end

-- doorIndex: 0 = Front Left Door 1 = Front Right Door 2 = Back Left Door 3 = Back Right Door 4 = Hood 5 = Trunk 6 = Back 7 = Back2
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DOOR_OPEN
-- @usage void SET_VEHICLE_DOOR_OPEN(Vehicle vehicle, int doorIndex, BOOL loose, BOOL openInstantly);
-- @param vehicle Vehicle
-- @param doorIndex int
-- @param loose BOOL
-- @param openInstantly BOOL
-- @return void
function SetVehicleDoorOpen(vehicle, doorIndex, loose, openInstantly) end

-- windowIndex: 0 = Front Right Window 1 = Front Left Window 2 = Back Right Window 3 = Back Left Window
-- @module native
-- @submodule vehicle
-- @see REMOVE_VEHICLE_WINDOW
-- @usage void REMOVE_VEHICLE_WINDOW(Vehicle vehicle, int windowIndex);
-- @param vehicle Vehicle
-- @param windowIndex int
-- @return void
function RemoveVehicleWindow(vehicle, windowIndex) end

-- Roll down all the windows of the vehicle passed through the first parameter.
-- @module native
-- @submodule vehicle
-- @see ROLL_DOWN_WINDOWS
-- @usage void ROLL_DOWN_WINDOWS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function RollDownWindows(vehicle) end

-- windowIndex: 0 = Front Right Window 1 = Front Left Window 2 = Back Right Window 3 = Back Left Window
-- @module native
-- @submodule vehicle
-- @see ROLL_DOWN_WINDOW
-- @usage Any ROLL_DOWN_WINDOW(Vehicle vehicle, int windowIndex);
-- @param vehicle Vehicle
-- @param windowIndex int
-- @return Any
function RollDownWindow(vehicle, windowIndex) end

-- 0 = Front Right Window 1 = Front Left Window 2 = Back Right Window 3 = Back Left Window
-- @module native
-- @submodule vehicle
-- @see ROLL_UP_WINDOW
-- @usage Any ROLL_UP_WINDOW(Vehicle vehicle, int windowIndex);
-- @param vehicle Vehicle
-- @param windowIndex int
-- @return Any
function RollUpWindow(vehicle, windowIndex) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SMASH_VEHICLE_WINDOW
-- @usage Any SMASH_VEHICLE_WINDOW(Vehicle vehicle, int index);
-- @param vehicle Vehicle
-- @param index int
-- @return Any
function SmashVehicleWindow(vehicle, index) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see FIX_VEHICLE_WINDOW
-- @usage Any FIX_VEHICLE_WINDOW(Vehicle vehicle, int index);
-- @param vehicle Vehicle
-- @param index int
-- @return Any
function FixVehicleWindow(vehicle, index) end

-- set's if the vehicle has lights or not. not an on off toggle. p1 = 0 ;vehicle normal lights, off then lowbeams, then highbeams p1 = 1 ;vehicle doesn't have lights, always off p1 = 2 ;vehicle has always on lights p1 = 3 ;or even larger like 4,5,... normal lights like =1 note1: when using =2 on day it's lowbeam,highbeam but at night it's lowbeam,lowbeam,highbeam note2: when using =0 it's affected by day or night for highbeams don't exist in daytime.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_LIGHTS
-- @usage void SET_VEHICLE_LIGHTS(Vehicle vehicle, int state);
-- @param vehicle Vehicle
-- @param state int
-- @return void
function SetVehicleLights(vehicle, state) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_ALARM
-- @usage void SET_VEHICLE_ALARM(Vehicle vehicle, BOOL state);
-- @param vehicle Vehicle
-- @param state BOOL
-- @return void
function SetVehicleAlarm(vehicle, state) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see START_VEHICLE_ALARM
-- @usage Any START_VEHICLE_ALARM(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return Any
function StartVehicleAlarm(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_ALARM_ACTIVATED
-- @usage BOOL IS_VEHICLE_ALARM_ACTIVATED(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleAlarmActivated(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_INTERIORLIGHT
-- @usage void SET_VEHICLE_INTERIORLIGHT(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleInteriorlight(vehicle, toggle) end

-- multiplier = brightness of head lights. this value isn't capped afaik.  multiplier = 0.0 no lights multiplier = 1.0 default game value
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_LIGHT_MULTIPLIER
-- @usage void SET_VEHICLE_LIGHT_MULTIPLIER(Vehicle vehicle, float multiplier);
-- @param vehicle Vehicle
-- @param multiplier float
-- @return void
function SetVehicleLightMultiplier(vehicle, multiplier) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see ATTACH_VEHICLE_TO_TRAILER
-- @usage void ATTACH_VEHICLE_TO_TRAILER(Vehicle vehicle, Vehicle trailer, float radius);
-- @param vehicle Vehicle
-- @param trailer Vehicle
-- @param radius float
-- @return void
function AttachVehicleToTrailer(vehicle, trailer, radius) end

-- Public Sub detatchTrailer(vh1 As Vehicle)         Native.Function.Call(Hash.DETACH_VEHICLE_FROM_TRAILER, vh1)     End Sub
-- @module native
-- @submodule vehicle
-- @see DETACH_VEHICLE_FROM_TRAILER
-- @usage void DETACH_VEHICLE_FROM_TRAILER(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function DetachVehicleFromTrailer(vehicle) end

-- Public Function isVehicleAttachedToTrailer(vh As Vehicle) As Boolean         Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_ATTACHED_TO_TRAILER, vh)     End Function
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_ATTACHED_TO_TRAILER
-- @usage BOOL IS_VEHICLE_ATTACHED_TO_TRAILER(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleAttachedToTrailer(vehicle) end

-- tyreIndex = 0 to 4 on normal vehicles  '0 = wheel_lf / bike, plane or jet front '1 = wheel_rf '2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left '3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right '4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left '5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right '45 = 6 wheels trailer mid wheel left '47 = 6 wheels trailer mid wheel right
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_TYRE_FIXED
-- @usage void SET_VEHICLE_TYRE_FIXED(Vehicle vehicle, int tyreIndex);
-- @param vehicle Vehicle
-- @param tyreIndex int
-- @return void
function SetVehicleTyreFixed(vehicle, tyreIndex) end

-- Sets a vehicle's license plate text.  8 chars maximum.  Example: Ped playerPed = PLAYER::PLAYER_PED_ID(); Vehicle veh = PED::GET_VEHICLE_PED_IS_USING(playerPed); char *plateText = "KING"; VEHICLE::SET_VEHICLE_NUMBER_PLATE_TEXT(veh, plateText);
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_NUMBER_PLATE_TEXT
-- @usage void SET_VEHICLE_NUMBER_PLATE_TEXT(Vehicle vehicle, char* plateText);
-- @param vehicle Vehicle
-- @param plateText char*
-- @return void
function SetVehicleNumberPlateText(vehicle, plateText) end

-- Returns the license plate text from a vehicle.  8 chars maximum.
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_NUMBER_PLATE_TEXT
-- @usage char* GET_VEHICLE_NUMBER_PLATE_TEXT(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return char*
function GetVehicleNumberPlateText(vehicle) end

-- Returns the number of *types* of licence plates, enumerated below in SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX.
-- @module native
-- @submodule vehicle
-- @see GET_NUMBER_OF_VEHICLE_NUMBER_PLATES
-- @usage int GET_NUMBER_OF_VEHICLE_NUMBER_PLATES();
-- @return int
function GetNumberOfVehicleNumberPlates() end

-- Plates: Blue/White  Yellow/black  Yellow/Blue  Blue/White2  Blue/White3  Yankton
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX
-- @usage void SET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(Vehicle vehicle, int plateIndex);
-- @param vehicle Vehicle
-- @param plateIndex int
-- @return void
function SetVehicleNumberPlateTextIndex(vehicle, plateIndex) end

-- Returns the PlateType of a vehicle 		Blue_on_White_1 = 3, 		Blue_on_White_2 = 0, 		Blue_on_White_3 = 4, 		Yellow_on_Blue = 2, 		Yellow_on_Black = 1, 		North_Yankton = 5,
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_NUMBER_PLATE_TEXT_INDEX
-- @usage int GET_VEHICLE_NUMBER_PLATE_TEXT_INDEX(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleNumberPlateTextIndex(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_RANDOM_TRAINS
-- @usage void SET_RANDOM_TRAINS(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetRandomTrains(toggle) end

-- Train models HAVE TO be loaded (requested) before you use this. For variation 15 - request:  freight freightcar freightgrain freightcont1 freightcont2 freighttrailer
-- @module native
-- @submodule vehicle
-- @see CREATE_MISSION_TRAIN
-- @usage Vehicle CREATE_MISSION_TRAIN(int variation, float x, float y, float z, BOOL direction);
-- @param variation int
-- @param x float
-- @param y float
-- @param z float
-- @param direction BOOL
-- @return Vehicle
function CreateMissionTrain(variation, x, y, z, direction) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SWITCH_TRAIN_TRACK
-- @usage Any SWITCH_TRAIN_TRACK(int intersectionId, BOOL state);
-- @param intersectionId int
-- @param state BOOL
-- @return Any
function SwitchTrainTrack(intersectionId, state) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see DELETE_ALL_TRAINS
-- @usage void DELETE_ALL_TRAINS();
-- @return void
function DeleteAllTrains() end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_TRAIN_SPEED
-- @usage Any SET_TRAIN_SPEED(Vehicle train, float speed);
-- @param train Vehicle
-- @param speed float
-- @return Any
function SetTrainSpeed(train, speed) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_TRAIN_CRUISE_SPEED
-- @usage Any SET_TRAIN_CRUISE_SPEED(Vehicle train, float speed);
-- @param train Vehicle
-- @param speed float
-- @return Any
function SetTrainCruiseSpeed(train, speed) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_RANDOM_BOATS
-- @usage Any SET_RANDOM_BOATS(BOOL toggle);
-- @param toggle BOOL
-- @return Any
function SetRandomBoats(toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_GARBAGE_TRUCKS
-- @usage Any SET_GARBAGE_TRUCKS(BOOL toggle);
-- @param toggle BOOL
-- @return Any
function SetGarbageTrucks(toggle) end

-- Maximum amount of vehicles with vehicle stuck check appears to be 16.
-- @module native
-- @submodule vehicle
-- @see DOES_VEHICLE_HAVE_STUCK_VEHICLE_CHECK
-- @usage BOOL DOES_VEHICLE_HAVE_STUCK_VEHICLE_CHECK(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function DoesVehicleHaveStuckVehicleCheck(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_RECORDING_ID
-- @usage Any GET_VEHICLE_RECORDING_ID(int p0, char* p1);
-- @param p0 int
-- @param p1 char*
-- @return Any
function GetVehicleRecordingId(p0, p1) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see REQUEST_VEHICLE_RECORDING
-- @usage void REQUEST_VEHICLE_RECORDING(Any p0, Any* p1);
-- @param p0 Any
-- @param p1 Any*
-- @return void
function RequestVehicleRecording(p0, p1) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see HAS_VEHICLE_RECORDING_BEEN_LOADED
-- @usage BOOL HAS_VEHICLE_RECORDING_BEEN_LOADED(Any p0, Any* p1);
-- @param p0 Any
-- @param p1 Any*
-- @return BOOL
function HasVehicleRecordingBeenLoaded(p0, p1) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see REMOVE_VEHICLE_RECORDING
-- @usage void REMOVE_VEHICLE_RECORDING(Any p0, Any* p1);
-- @param p0 Any
-- @param p1 Any*
-- @return void
function RemoveVehicleRecording(p0, p1) end

-- p1 is some kind of tolerance
-- @module native
-- @submodule vehicle
-- @see GET_POSITION_OF_VEHICLE_RECORDING_AT_TIME
-- @usage Vector3 GET_POSITION_OF_VEHICLE_RECORDING_AT_TIME(int p0, float p1, char* p2);
-- @param p0 int
-- @param p1 float
-- @param p2 char*
-- @return Vector3
function GetPositionOfVehicleRecordingAtTime(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_ROTATION_OF_VEHICLE_RECORDING_AT_TIME
-- @usage int GET_ROTATION_OF_VEHICLE_RECORDING_AT_TIME(Any p0, float p1, Any* p2);
-- @param p0 Any
-- @param p1 float
-- @param p2 Any*
-- @return int
function GetRotationOfVehicleRecordingAtTime(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_TOTAL_DURATION_OF_VEHICLE_RECORDING_ID
-- @usage float GET_TOTAL_DURATION_OF_VEHICLE_RECORDING_ID(Any p0);
-- @param p0 Any
-- @return float
function GetTotalDurationOfVehicleRecordingId(p0) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_TOTAL_DURATION_OF_VEHICLE_RECORDING
-- @usage Any GET_TOTAL_DURATION_OF_VEHICLE_RECORDING(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return Any
function GetTotalDurationOfVehicleRecording(p0, p1) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_POSITION_IN_RECORDING
-- @usage float GET_POSITION_IN_RECORDING(Any p0);
-- @param p0 Any
-- @return float
function GetPositionInRecording(p0) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_TIME_POSITION_IN_RECORDING
-- @usage float GET_TIME_POSITION_IN_RECORDING(Any p0);
-- @param p0 Any
-- @return float
function GetTimePositionInRecording(p0) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see START_PLAYBACK_RECORDED_VEHICLE
-- @usage void START_PLAYBACK_RECORDED_VEHICLE(Vehicle vehicle, int p1, char* playback, BOOL p3);
-- @param vehicle Vehicle
-- @param p1 int
-- @param playback char*
-- @param p3 BOOL
-- @return void
function StartPlaybackRecordedVehicle(vehicle, p1, playback, p3) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see START_PLAYBACK_RECORDED_VEHICLE_WITH_FLAGS
-- @usage void START_PLAYBACK_RECORDED_VEHICLE_WITH_FLAGS(Vehicle vehicle, Any p1, char* playback, Any p3, Any p4, Any p5);
-- @param vehicle Vehicle
-- @param p1 Any
-- @param playback char*
-- @param p3 Any
-- @param p4 Any
-- @param p5 Any
-- @return void
function StartPlaybackRecordedVehicleWithFlags(vehicle, p1, playback, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see STOP_PLAYBACK_RECORDED_VEHICLE
-- @usage void STOP_PLAYBACK_RECORDED_VEHICLE(Any p0);
-- @param p0 Any
-- @return void
function StopPlaybackRecordedVehicle(p0) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see PAUSE_PLAYBACK_RECORDED_VEHICLE
-- @usage void PAUSE_PLAYBACK_RECORDED_VEHICLE(Any p0);
-- @param p0 Any
-- @return void
function PausePlaybackRecordedVehicle(p0) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see UNPAUSE_PLAYBACK_RECORDED_VEHICLE
-- @usage void UNPAUSE_PLAYBACK_RECORDED_VEHICLE(Any p0);
-- @param p0 Any
-- @return void
function UnpausePlaybackRecordedVehicle(p0) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_PLAYBACK_GOING_ON_FOR_VEHICLE
-- @usage BOOL IS_PLAYBACK_GOING_ON_FOR_VEHICLE(Any p0);
-- @param p0 Any
-- @return BOOL
function IsPlaybackGoingOnForVehicle(p0) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_PLAYBACK_USING_AI_GOING_ON_FOR_VEHICLE
-- @usage BOOL IS_PLAYBACK_USING_AI_GOING_ON_FOR_VEHICLE(Any p0);
-- @param p0 Any
-- @return BOOL
function IsPlaybackUsingAiGoingOnForVehicle(p0) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_CURRENT_PLAYBACK_FOR_VEHICLE
-- @usage Any GET_CURRENT_PLAYBACK_FOR_VEHICLE(Any p0);
-- @param p0 Any
-- @return Any
function GetCurrentPlaybackForVehicle(p0) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SKIP_TO_END_AND_STOP_PLAYBACK_RECORDED_VEHICLE
-- @usage void SKIP_TO_END_AND_STOP_PLAYBACK_RECORDED_VEHICLE(Any p0);
-- @param p0 Any
-- @return void
function SkipToEndAndStopPlaybackRecordedVehicle(p0) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_PLAYBACK_SPEED
-- @usage void SET_PLAYBACK_SPEED(Vehicle vehicle, float speed);
-- @param vehicle Vehicle
-- @param speed float
-- @return void
function SetPlaybackSpeed(vehicle, speed) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see START_PLAYBACK_RECORDED_VEHICLE_USING_AI
-- @usage void START_PLAYBACK_RECORDED_VEHICLE_USING_AI(Any p0, Any p1, Any* p2, float p3, Any p4);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any*
-- @param p3 float
-- @param p4 Any
-- @return void
function StartPlaybackRecordedVehicleUsingAi(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SKIP_TIME_IN_PLAYBACK_RECORDED_VEHICLE
-- @usage void SKIP_TIME_IN_PLAYBACK_RECORDED_VEHICLE(Any p0, float p1);
-- @param p0 Any
-- @param p1 float
-- @return void
function SkipTimeInPlaybackRecordedVehicle(p0, p1) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_PLAYBACK_TO_USE_AI
-- @usage void SET_PLAYBACK_TO_USE_AI(Vehicle vehicle, int flag);
-- @param vehicle Vehicle
-- @param flag int
-- @return void
function SetPlaybackToUseAi(vehicle, flag) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER
-- @usage void SET_PLAYBACK_TO_USE_AI_TRY_TO_REVERT_BACK_LATER(Any p0, Any p1, Any p2, BOOL p3);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 BOOL
-- @return void
function SetPlaybackToUseAiTryToRevertBackLater(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see EXPLODE_VEHICLE_IN_CUTSCENE
-- @usage void EXPLODE_VEHICLE_IN_CUTSCENE(Vehicle vehicle, BOOL p1);
-- @param vehicle Vehicle
-- @param p1 BOOL
-- @return void
function ExplodeVehicleInCutscene(vehicle, p1) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see ADD_VEHICLE_STUCK_CHECK_WITH_WARP
-- @usage void ADD_VEHICLE_STUCK_CHECK_WITH_WARP(Any p0, float p1, Any p2, BOOL p3, BOOL p4, BOOL p5, Any p6);
-- @param p0 Any
-- @param p1 float
-- @param p2 Any
-- @param p3 BOOL
-- @param p4 BOOL
-- @param p5 BOOL
-- @param p6 Any
-- @return void
function AddVehicleStuckCheckWithWarp(p0, p1, p2, p3, p4, p5, p6) end

-- seems to make the vehicle stop spawning naturally in traffic. Here's an essential example:  VEHICLE::SET_VEHICLE_MODEL_IS_SUPPRESSED(GAMEPLAY::GET_HASH_KEY("taco"), true);  god I hate taco vans  Confirmed to work? Needs to be looped? Can not get it to work.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_MODEL_IS_SUPPRESSED
-- @usage void SET_VEHICLE_MODEL_IS_SUPPRESSED(Hash model, BOOL suppressed);
-- @param model Hash
-- @param suppressed BOOL
-- @return void
function SetVehicleModelIsSuppressed(model, suppressed) end

-- Gets a random vehicle in a sphere at the specified position, of the specified radius.  x: The X-component of the position of the sphere. y: The Y-component of the position of the sphere. z: The Z-component of the position of the sphere. radius: The radius of the sphere. Max is 9999.9004. modelHash: The vehicle model to limit the selection to. Pass 0 for any model. flags: The bitwise flags that modifies the behaviour of this function.
-- @module native
-- @submodule vehicle
-- @see GET_RANDOM_VEHICLE_IN_SPHERE
-- @usage Vehicle GET_RANDOM_VEHICLE_IN_SPHERE(float x, float y, float z, float radius, Hash modelHash, int flags);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param modelHash Hash
-- @param flags int
-- @return Vehicle
function GetRandomVehicleInSphere(x, y, z, radius, modelHash, flags) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_RANDOM_VEHICLE_FRONT_BUMPER_IN_SPHERE
-- @usage Vehicle GET_RANDOM_VEHICLE_FRONT_BUMPER_IN_SPHERE(float p0, float p1, float p2, float p3, int p4, int p5, int p6);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 int
-- @param p5 int
-- @param p6 int
-- @return Vehicle
function GetRandomVehicleFrontBumperInSphere(p0, p1, p2, p3, p4, p5, p6) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_RANDOM_VEHICLE_BACK_BUMPER_IN_SPHERE
-- @usage Vehicle GET_RANDOM_VEHICLE_BACK_BUMPER_IN_SPHERE(float p0, float p1, float p2, float p3, int p4, int p5, int p6);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 int
-- @param p5 int
-- @param p6 int
-- @return Vehicle
function GetRandomVehicleBackBumperInSphere(p0, p1, p2, p3, p4, p5, p6) end

-- Example usage VEHICLE::GET_CLOSEST_VEHICLE(x, y, z, radius, hash, unknown leave at 70)   x, y, z: Position to get closest vehicle to. radius: Max radius to get a vehicle. modelHash: Limit to vehicles with this model. 0 for any. flags: The bitwise flags altering the function's behaviour.  Does not return police cars or helicopters.  It seems to return police cars for me, does not seem to return helicopters, planes or boats for some reason  Only returns non police cars and motorbikes with the flag set to 70 and modelHash to 0. ModelHash seems to always be 0 when not a modelHash in the scripts, as stated above.   These flags were found in the b617d scripts: 0,2,4,6,7,23,127,260,2146,2175,12294,16384,16386,20503,32768,67590,67711,98309,100359. Converted to binary, each bit probably represents a flag as explained regarding another native here: gtaforums.com/topic/822314-guide-driving-styles  Conversion of found flags to binary: pastebin.com/kghNFkRi  At exactly 16384 which is 0100000000000000 in binary and 4000 in hexadecimal only planes are returned.   It's probably more convenient to use worldGetAllVehicles(int *arr, int arrSize) and check the shortest distance yourself and sort if you want by checking the vehicle type with for example VEHICLE::IS_THIS_MODEL_A_BOAT  -------------------------------------------------------------------------  Conclusion: This native is not worth trying to use. Use something like this instead: pastebin.com/xiFdXa7h
-- @module native
-- @submodule vehicle
-- @see GET_CLOSEST_VEHICLE
-- @usage Vehicle GET_CLOSEST_VEHICLE(float x, float y, float z, float radius, Hash modelHash, int flags);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param modelHash Hash
-- @param flags int
-- @return Vehicle
function GetClosestVehicle(x, y, z, radius, modelHash, flags) end

-- Corrected p1. it's basically the 'carriage/trailer number'. So if the train has 3 trailers you'd call the native once with a var or 3 times with 1, 2, 3.
-- @module native
-- @submodule vehicle
-- @see GET_TRAIN_CARRIAGE
-- @usage Entity GET_TRAIN_CARRIAGE(Vehicle train, int trailerNumber);
-- @param train Vehicle
-- @param trailerNumber int
-- @return Entity
function GetTrainCarriage(train, trailerNumber) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see DELETE_MISSION_TRAIN
-- @usage void DELETE_MISSION_TRAIN(Vehicle* train);
-- @param train Vehicle*
-- @return void
function DeleteMissionTrain(train) end

-- p1 is always 0
-- @module native
-- @submodule vehicle
-- @see SET_MISSION_TRAIN_AS_NO_LONGER_NEEDED
-- @usage void SET_MISSION_TRAIN_AS_NO_LONGER_NEEDED(Vehicle* train, BOOL p1);
-- @param train Vehicle*
-- @param p1 BOOL
-- @return void
function SetMissionTrainAsNoLongerNeeded(train, p1) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_MISSION_TRAIN_COORDS
-- @usage void SET_MISSION_TRAIN_COORDS(Vehicle train, float x, float y, float z);
-- @param train Vehicle
-- @param x float
-- @param y float
-- @param z float
-- @return void
function SetMissionTrainCoords(train, x, y, z) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_THIS_MODEL_A_BOAT
-- @usage BOOL IS_THIS_MODEL_A_BOAT(Hash model);
-- @param model Hash
-- @return BOOL
function IsThisModelABoat(model) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_THIS_MODEL_A_PLANE
-- @usage BOOL IS_THIS_MODEL_A_PLANE(Hash model);
-- @param model Hash
-- @return BOOL
function IsThisModelAPlane(model) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_THIS_MODEL_A_HELI
-- @usage BOOL IS_THIS_MODEL_A_HELI(Hash model);
-- @param model Hash
-- @return BOOL
function IsThisModelAHeli(model) end

-- To check if the model is an amphibious car, see gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-33#entry1069317363 (for build 944 and above only!)
-- @module native
-- @submodule vehicle
-- @see IS_THIS_MODEL_A_CAR
-- @usage BOOL IS_THIS_MODEL_A_CAR(Hash model);
-- @param model Hash
-- @return BOOL
function IsThisModelACar(model) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_THIS_MODEL_A_TRAIN
-- @usage BOOL IS_THIS_MODEL_A_TRAIN(Hash model);
-- @param model Hash
-- @return BOOL
function IsThisModelATrain(model) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_THIS_MODEL_A_BIKE
-- @usage BOOL IS_THIS_MODEL_A_BIKE(Hash model);
-- @param model Hash
-- @return BOOL
function IsThisModelABike(model) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_THIS_MODEL_A_BICYCLE
-- @usage BOOL IS_THIS_MODEL_A_BICYCLE(Hash model);
-- @param model Hash
-- @return BOOL
function IsThisModelABicycle(model) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_THIS_MODEL_A_QUADBIKE
-- @usage BOOL IS_THIS_MODEL_A_QUADBIKE(Hash model);
-- @param model Hash
-- @return BOOL
function IsThisModelAQuadbike(model) end

-- Equivalent of SET_HELI_BLADES_SPEED(vehicleHandle, 1.0f);
-- @module native
-- @submodule vehicle
-- @see SET_HELI_BLADES_FULL_SPEED
-- @usage void SET_HELI_BLADES_FULL_SPEED(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function SetHeliBladesFullSpeed(vehicle) end

-- Sets the speed of the helicopter blades in percentage of the full speed.  vehicleHandle: The helicopter. speed: The speed in percentage, 0.0f being 0% and 1.0f being 100%.
-- @module native
-- @submodule vehicle
-- @see SET_HELI_BLADES_SPEED
-- @usage void SET_HELI_BLADES_SPEED(Vehicle vehicle, float speed);
-- @param vehicle Vehicle
-- @param speed float
-- @return void
function SetHeliBladesSpeed(vehicle, speed) end

-- This has not yet been tested - it's just an assumption of what the types could be.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_CAN_BE_TARGETTED
-- @usage void SET_VEHICLE_CAN_BE_TARGETTED(Vehicle vehicle, BOOL state);
-- @param vehicle Vehicle
-- @param state BOOL
-- @return void
function SetVehicleCanBeTargetted(vehicle, state) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_CAN_BE_VISIBLY_DAMAGED
-- @usage void SET_VEHICLE_CAN_BE_VISIBLY_DAMAGED(Vehicle vehicle, BOOL state);
-- @param vehicle Vehicle
-- @param state BOOL
-- @return void
function SetVehicleCanBeVisiblyDamaged(vehicle, state) end

-- Dirt level 0..15
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_DIRT_LEVEL
-- @usage float GET_VEHICLE_DIRT_LEVEL(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return float
function GetVehicleDirtLevel(vehicle) end

-- You can't use values greater than 15.0 You can see why here: pastebin.com/Wbn34fGD  Also, R* does (float)(rand() % 15) to get a random dirt level when generating a vehicle.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DIRT_LEVEL
-- @usage void SET_VEHICLE_DIRT_LEVEL(Vehicle vehicle, float dirtLevel);
-- @param vehicle Vehicle
-- @param dirtLevel float
-- @return void
function SetVehicleDirtLevel(vehicle, dirtLevel) end

-- doorIndex: 0 = Front Left Door 1 = Front Right Door 2 = Back Left Door 3 = Back Right Door 4 = Hood 5 = Trunk 6 = Trunk2
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_DOOR_FULLY_OPEN
-- @usage BOOL IS_VEHICLE_DOOR_FULLY_OPEN(Vehicle vehicle, int doorIndex);
-- @param vehicle Vehicle
-- @param doorIndex int
-- @return BOOL
function IsVehicleDoorFullyOpen(vehicle, doorIndex) end

-- Starts or stops the engine on the specified vehicle.  vehicle: The vehicle to start or stop the engine on. value: true to turn the vehicle on; false to turn it off. instantly: if true, the vehicle will be set to the state immediately; otherwise, the current driver will physically turn on or off the engine.  -------------------------------------- And what's with BOOL otherwise, what does it do??? -------------------------------------- I have no clue what 'otherwise' is either. Xbox360 of course ends at TU27 so that's our latest scripts and every script still only has the first 3 parameters.  Side Note: It would of been nice though if it was to handle jet engines instead of having that separate native for it.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_ENGINE_ON
-- @usage void SET_VEHICLE_ENGINE_ON(Vehicle vehicle, BOOL value, BOOL instantly, BOOL otherwise);
-- @param vehicle Vehicle
-- @param value BOOL
-- @param instantly BOOL
-- @param otherwise BOOL
-- @return void
function SetVehicleEngineOn(vehicle, value, instantly, otherwise) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_UNDRIVEABLE
-- @usage void SET_VEHICLE_UNDRIVEABLE(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleUndriveable(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_PROVIDES_COVER
-- @usage void SET_VEHICLE_PROVIDES_COVER(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleProvidesCover(vehicle, toggle) end

-- doorIndex: 0 = Front Left Door (driver door) 1 = Front Right Door 2 = Back Left Door 3 = Back Right Door 4 = Hood 5 = Trunk 6 = Trunk2  p2: mostly use 0 and 1, very rare using 3 and 5  p3: It seems it is an angle  Example in VB:      Public Shared Sub Set_Vehicle_Door_Angle(Vehicle As Vehicle, Door As VehicleDoor, Angle As Single)         Native.Function.Call(Hash.SET_VEHICLE_DOOR_CONTROL, Vehicle.Handle, Door, 1, Angle)     End Sub  I'm Not MentaL  sfink: p2 is speed, 5 is fast, 1 is slow 3 is medium
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DOOR_CONTROL
-- @usage void SET_VEHICLE_DOOR_CONTROL(Vehicle vehicle, int doorIndex, int speed, float angle);
-- @param vehicle Vehicle
-- @param doorIndex int
-- @param speed int
-- @param angle float
-- @return void
function SetVehicleDoorControl(vehicle, doorIndex, speed, angle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DOOR_LATCHED
-- @usage void SET_VEHICLE_DOOR_LATCHED(Vehicle vehicle, int doorIndex, BOOL p2, BOOL p3, BOOL p4);
-- @param vehicle Vehicle
-- @param doorIndex int
-- @param p2 BOOL
-- @param p3 BOOL
-- @param p4 BOOL
-- @return void
function SetVehicleDoorLatched(vehicle, doorIndex, p2, p3, p4) end

-- example in vb:     Public Shared Function Get_Vehicle_Door_Angle(Vehicle As Vehicle, Door As VehicleDoor) As Single         Return Native.Function.Call(Of Single)(Hash.GET_VEHICLE_DOOR_ANGLE_RATIO, Vehicle.Handle, Door)     End Function  I'm Not MentaL
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_DOOR_ANGLE_RATIO
-- @usage float GET_VEHICLE_DOOR_ANGLE_RATIO(Vehicle vehicle, int door);
-- @param vehicle Vehicle
-- @param door int
-- @return float
function GetVehicleDoorAngleRatio(vehicle, door) end

-- doorIndex: 0 = Front Left Door 1 = Front Right Door 2 = Back Left Door 3 = Back Right Door 4 = Hood 5 = Trunk 6 = Trunk2
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DOOR_SHUT
-- @usage void SET_VEHICLE_DOOR_SHUT(Vehicle vehicle, int doorIndex, BOOL closeInstantly);
-- @param vehicle Vehicle
-- @param doorIndex int
-- @param closeInstantly BOOL
-- @return void
function SetVehicleDoorShut(vehicle, doorIndex, closeInstantly) end

-- doorIndex: 0 = Front Right Door 1 = Front Left Door 2 = Back Right Door 3 = Back Left Door 4 = Hood 5 = Trunk  Changed last paramater from CreateDoorObject To NoDoorOnTheFloor because when on false, the door object is created,and not created when on true...the former parameter name was counter intuitive...(by Calderon)
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DOOR_BROKEN
-- @usage void SET_VEHICLE_DOOR_BROKEN(Vehicle vehicle, int doorIndex, BOOL deleteDoor);
-- @param vehicle Vehicle
-- @param doorIndex int
-- @param deleteDoor BOOL
-- @return void
function SetVehicleDoorBroken(vehicle, doorIndex, deleteDoor) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_CAN_BREAK
-- @usage void SET_VEHICLE_CAN_BREAK(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleCanBreak(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see DOES_VEHICLE_HAVE_ROOF
-- @usage BOOL DOES_VEHICLE_HAVE_ROOF(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function DoesVehicleHaveRoof(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_BIG_VEHICLE
-- @usage BOOL IS_BIG_VEHICLE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsBigVehicle(vehicle) end

-- Actually number of color combinations
-- @module native
-- @submodule vehicle
-- @see GET_NUMBER_OF_VEHICLE_COLOURS
-- @usage int GET_NUMBER_OF_VEHICLE_COLOURS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetNumberOfVehicleColours(vehicle) end

-- dont be a dick
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_COLOUR_COMBINATION
-- @usage void SET_VEHICLE_COLOUR_COMBINATION(Vehicle vehicle, int colorCombination);
-- @param vehicle Vehicle
-- @param colorCombination int
-- @return void
function SetVehicleColourCombination(vehicle, colorCombination) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_COLOUR_COMBINATION
-- @usage int GET_VEHICLE_COLOUR_COMBINATION(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleColourCombination(vehicle) end

-- Setting this to false, makes the specified vehicle to where if you press Y your character doesn't even attempt the animation to enter the vehicle. Hence it's not considered aka ignored.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_IS_CONSIDERED_BY_PLAYER
-- @usage void SET_VEHICLE_IS_CONSIDERED_BY_PLAYER(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleIsConsideredByPlayer(vehicle, toggle) end

-- Not present in the retail version! It's just a nullsub.  p0 always true (except in one case) p1 returns a random vehicle hash loaded in memory p2 unsure, maybe returns a different model
-- @module native
-- @submodule vehicle
-- @see GET_RANDOM_VEHICLE_MODEL_IN_MEMORY
-- @usage void GET_RANDOM_VEHICLE_MODEL_IN_MEMORY(BOOL p0, Hash* modelHash, int* p2);
-- @param p0 BOOL
-- @param modelHash Hash*
-- @param p2 int*
-- @return void
function GetRandomVehicleModelInMemory(p0, modelHash, p2) end

-- 2 seems to disable getting vehicle in modshop
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_DOOR_LOCK_STATUS
-- @usage int GET_VEHICLE_DOOR_LOCK_STATUS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleDoorLockStatus(vehicle) end

-- doorID starts at 0, not seeming to skip any numbers. Four door vehicles intuitively range from 0 to 3.
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_DOOR_DAMAGED
-- @usage BOOL IS_VEHICLE_DOOR_DAMAGED(Vehicle veh, int doorID);
-- @param veh Vehicle
-- @param doorID int
-- @return BOOL
function IsVehicleDoorDamaged(veh, doorID) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_BUMPER_BROKEN_OFF
-- @usage BOOL IS_VEHICLE_BUMPER_BROKEN_OFF(Vehicle vehicle, BOOL front);
-- @param vehicle Vehicle
-- @param front BOOL
-- @return BOOL
function IsVehicleBumperBrokenOff(vehicle, front) end

-- Usage:  public bool isCopInRange(Vector3 Location, float Range)         {             return Function.Call<bool>(Hash.IS_COP_PED_IN_AREA_3D, Location.X - Range, Location.Y - Range, Location.Z - Range, Location.X + Range, Location.Y + Range, Location.Z + Range);         }
-- @module native
-- @submodule vehicle
-- @see IS_COP_VEHICLE_IN_AREA_3D
-- @usage BOOL IS_COP_VEHICLE_IN_AREA_3D(float x1, float x2, float y1, float y2, float z1, float z2);
-- @param x1 float
-- @param x2 float
-- @param y1 float
-- @param y2 float
-- @param z1 float
-- @param z2 float
-- @return BOOL
function IsCopVehicleInArea_3d(x1, x2, y1, y2, z1, z2) end

-- Public Function isVehicleOnAllWheels(vh As Vehicle) As Boolean         Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_ON_ALL_WHEELS, vh)     End Function
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_ON_ALL_WHEELS
-- @usage BOOL IS_VEHICLE_ON_ALL_WHEELS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleOnAllWheels(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_LAYOUT_HASH
-- @usage Hash GET_VEHICLE_LAYOUT_HASH(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return Hash
function GetVehicleLayoutHash(vehicle) end

-- makes the train all jumbled up and derailed as it moves on the tracks (though that wont stop it from its normal operations)
-- @module native
-- @submodule vehicle
-- @see SET_RENDER_TRAIN_AS_DERAILED
-- @usage void SET_RENDER_TRAIN_AS_DERAILED(Vehicle train, BOOL toggle);
-- @param train Vehicle
-- @param toggle BOOL
-- @return void
function SetRenderTrainAsDerailed(train, toggle) end

-- They use the same color indexs as SET_VEHICLE_COLOURS.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_EXTRA_COLOURS
-- @usage void SET_VEHICLE_EXTRA_COLOURS(Vehicle vehicle, int pearlescentColor, int wheelColor);
-- @param vehicle Vehicle
-- @param pearlescentColor int
-- @param wheelColor int
-- @return void
function SetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_EXTRA_COLOURS
-- @usage void GET_VEHICLE_EXTRA_COLOURS(Vehicle vehicle, int* pearlescentColor, int* wheelColor);
-- @param vehicle Vehicle
-- @param pearlescentColor int*
-- @param wheelColor int*
-- @return void
function GetVehicleExtraColours(vehicle, pearlescentColor, wheelColor) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see STOP_ALL_GARAGE_ACTIVITY
-- @usage void STOP_ALL_GARAGE_ACTIVITY();
-- @return void
function StopAllGarageActivity() end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_FIXED
-- @usage void SET_VEHICLE_FIXED(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function SetVehicleFixed(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DEFORMATION_FIXED
-- @usage void SET_VEHICLE_DEFORMATION_FIXED(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function SetVehicleDeformationFixed(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_DISABLE_VEHICLE_PETROL_TANK_FIRES
-- @usage void SET_DISABLE_VEHICLE_PETROL_TANK_FIRES(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetDisableVehiclePetrolTankFires(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_DISABLE_VEHICLE_PETROL_TANK_DAMAGE
-- @usage void SET_DISABLE_VEHICLE_PETROL_TANK_DAMAGE(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetDisableVehiclePetrolTankDamage(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see REMOVE_VEHICLES_FROM_GENERATORS_IN_AREA
-- @usage void REMOVE_VEHICLES_FROM_GENERATORS_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, Any unk);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param unk Any
-- @return void
function RemoveVehiclesFromGeneratorsInArea(x1, y1, z1, x2, y2, z2, unk) end

-- Locks the vehicle's steering to the desired angle, explained below.  Requires to be called onTick. Steering is unlocked the moment the function stops being called on the vehicle.  Steer bias: -1.0 = full right 0.0 = centered steering 1.0 = full left
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_STEER_BIAS
-- @usage void SET_VEHICLE_STEER_BIAS(Vehicle vehicle, float value);
-- @param vehicle Vehicle
-- @param value float
-- @return void
function SetVehicleSteerBias(vehicle, value) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_EXTRA_TURNED_ON
-- @usage BOOL IS_VEHICLE_EXTRA_TURNED_ON(Vehicle vehicle, int extraId);
-- @param vehicle Vehicle
-- @param extraId int
-- @return BOOL
function IsVehicleExtraTurnedOn(vehicle, extraId) end

-- Note: only some vehicle have extras extra ids are from 1 - 9 depending on the vehicle  -------------------------------------------------  ^ not sure if outdated or simply wrong. Max extra ID for b944 is 14  ------------------------------------------------- p2 is not a on/off toggle. mostly 0 means on and 1 means off. not sure if it really should be a BOOL.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_EXTRA
-- @usage void SET_VEHICLE_EXTRA(Vehicle vehicle, int extraId, BOOL toggle);
-- @param vehicle Vehicle
-- @param extraId int
-- @param toggle BOOL
-- @return void
function SetVehicleExtra(vehicle, extraId, toggle) end

-- Checks via CVehicleModelInfo
-- @module native
-- @submodule vehicle
-- @see DOES_EXTRA_EXIST
-- @usage BOOL DOES_EXTRA_EXIST(Vehicle vehicle, int extraId);
-- @param vehicle Vehicle
-- @param extraId int
-- @return BOOL
function DoesExtraExist(vehicle, extraId) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_CONVERTIBLE_ROOF
-- @usage void SET_CONVERTIBLE_ROOF(Vehicle vehicle, BOOL p1);
-- @param vehicle Vehicle
-- @param p1 BOOL
-- @return void
function SetConvertibleRoof(vehicle, p1) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see LOWER_CONVERTIBLE_ROOF
-- @usage void LOWER_CONVERTIBLE_ROOF(Vehicle vehicle, BOOL instantlyLower);
-- @param vehicle Vehicle
-- @param instantlyLower BOOL
-- @return void
function LowerConvertibleRoof(vehicle, instantlyLower) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see RAISE_CONVERTIBLE_ROOF
-- @usage void RAISE_CONVERTIBLE_ROOF(Vehicle vehicle, BOOL instantlyRaise);
-- @param vehicle Vehicle
-- @param instantlyRaise BOOL
-- @return void
function RaiseConvertibleRoof(vehicle, instantlyRaise) end

-- 0 -> up 1 -> lowering down 2 -> down 3 -> raising up
-- @module native
-- @submodule vehicle
-- @see GET_CONVERTIBLE_ROOF_STATE
-- @usage int GET_CONVERTIBLE_ROOF_STATE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetConvertibleRoofState(vehicle) end

-- p1 is false almost always.  However, in launcher_carwash/carwash1/carwash2 scripts, p1 is true and is accompanied by DOES_VEHICLE_HAVE_ROOF
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_A_CONVERTIBLE
-- @usage BOOL IS_VEHICLE_A_CONVERTIBLE(Vehicle vehicle, BOOL p1);
-- @param vehicle Vehicle
-- @param p1 BOOL
-- @return BOOL
function IsVehicleAConvertible(vehicle, p1) end

-- is this for red lights only?  more testing required.
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_STOPPED_AT_TRAFFIC_LIGHTS
-- @usage BOOL IS_VEHICLE_STOPPED_AT_TRAFFIC_LIGHTS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleStoppedAtTrafficLights(vehicle) end

-- Apply damage to vehicle at a location. Location is relative to vehicle model (not world).  Radius of effect damage applied in a sphere at impact location
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_DAMAGE
-- @usage void SET_VEHICLE_DAMAGE(Vehicle vehicle, float xOffset, float yOffset, float zOffset, float damage, float radius, BOOL p6);
-- @param vehicle Vehicle
-- @param xOffset float
-- @param yOffset float
-- @param zOffset float
-- @param damage float
-- @param radius float
-- @param p6 BOOL
-- @return void
function SetVehicleDamage(vehicle, xOffset, yOffset, zOffset, damage, radius, p6) end

-- Returns 1000.0 if the function is unable to get the address of the specified vehicle or if it's not a vehicle.  Minimum: -4000 Maximum: 1000  -4000: Engine is destroyed 0 and below: Engine catches fire and health rapidly declines 300: Engine is smoking and losing functionality 1000: Engine is perfect
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_ENGINE_HEALTH
-- @usage float GET_VEHICLE_ENGINE_HEALTH(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return float
function GetVehicleEngineHealth(vehicle) end

-- 1000 is max health Begins leaking gas at around 650 health
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_ENGINE_HEALTH
-- @usage void SET_VEHICLE_ENGINE_HEALTH(Vehicle vehicle, float health);
-- @param vehicle Vehicle
-- @param health float
-- @return void
function SetVehicleEngineHealth(vehicle, health) end

-- 1000 is max health Begins leaking gas at around 650 health
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_PETROL_TANK_HEALTH
-- @usage float GET_VEHICLE_PETROL_TANK_HEALTH(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return float
function GetVehiclePetrolTankHealth(vehicle) end

-- 1000 is max health Begins leaking gas at around 650 health
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_PETROL_TANK_HEALTH
-- @usage void SET_VEHICLE_PETROL_TANK_HEALTH(Vehicle vehicle, float health);
-- @param vehicle Vehicle
-- @param health float
-- @return void
function SetVehiclePetrolTankHealth(vehicle, health) end

-- p1 can be anywhere from 0 to 3 in the scripts. p2 is generally somewhere in the 1000 to 10000 range.
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_STUCK_TIMER_UP
-- @usage BOOL IS_VEHICLE_STUCK_TIMER_UP(Vehicle vehicle, int p1, int p2);
-- @param vehicle Vehicle
-- @param p1 int
-- @param p2 int
-- @return BOOL
function IsVehicleStuckTimerUp(vehicle, p1, p2) end

-- The inner function has a switch on the second parameter. It's the stuck timer index.  Here's some pseudo code I wrote for the inner function: void __fastcall NATIVE_RESET_VEHICLE_STUCK_TIMER_INNER(CUnknown* unknownClassInVehicle, int timerIndex) { 	switch (timerIndex) 	{ 	case 0: 		unknownClassInVehicle->FirstStuckTimer = (WORD)0u; 	case 1: 		unknownClassInVehicle->SecondStuckTimer = (WORD)0u; 	case 2: 		unknownClassInVehicle->ThirdStuckTimer = (WORD)0u; 	case 3: 		unknownClassInVehicle->FourthStuckTimer = (WORD)0u; 	case 4: 		unknownClassInVehicle->FirstStuckTimer = (WORD)0u; 		unknownClassInVehicle->SecondStuckTimer = (WORD)0u; 		unknownClassInVehicle->ThirdStuckTimer = (WORD)0u; 		unknownClassInVehicle->FourthStuckTimer = (WORD)0u; 		break; 	}; }
-- @module native
-- @submodule vehicle
-- @see RESET_VEHICLE_STUCK_TIMER
-- @usage void RESET_VEHICLE_STUCK_TIMER(Vehicle vehicle, int nullAttributes);
-- @param vehicle Vehicle
-- @param nullAttributes int
-- @return void
function ResetVehicleStuckTimer(vehicle, nullAttributes) end

-- p1 is always 0 in the scripts.  p1 = check if vehicle is on fire
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_DRIVEABLE
-- @usage BOOL IS_VEHICLE_DRIVEABLE(Vehicle vehicle, BOOL isOnFireCheck);
-- @param vehicle Vehicle
-- @param isOnFireCheck BOOL
-- @return BOOL
function IsVehicleDriveable(vehicle, isOnFireCheck) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_HAS_BEEN_OWNED_BY_PLAYER
-- @usage void SET_VEHICLE_HAS_BEEN_OWNED_BY_PLAYER(Vehicle vehicle, BOOL owned);
-- @param vehicle Vehicle
-- @param owned BOOL
-- @return void
function SetVehicleHasBeenOwnedByPlayer(vehicle, owned) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_NEEDS_TO_BE_HOTWIRED
-- @usage void SET_VEHICLE_NEEDS_TO_BE_HOTWIRED(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleNeedsToBeHotwired(vehicle, toggle) end

-- Sounds the horn for the specified vehicle.  vehicle: The vehicle to activate the horn for. mode: The hash of "NORMAL" or "HELDDOWN". Can be 0. duration: The duration to sound the horn, in milliseconds.  Note: If a player is in the vehicle, it will only sound briefly.
-- @module native
-- @submodule vehicle
-- @see START_VEHICLE_HORN
-- @usage void START_VEHICLE_HORN(Vehicle vehicle, int duration, Hash mode, BOOL forever);
-- @param vehicle Vehicle
-- @param duration int
-- @param mode Hash
-- @param forever BOOL
-- @return void
function StartVehicleHorn(vehicle, duration, mode, forever) end

-- if true, axles won't bend.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_HAS_STRONG_AXLES
-- @usage void SET_VEHICLE_HAS_STRONG_AXLES(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleHasStrongAxles(vehicle, toggle) end

-- Returns model name of vehicle in all caps. Needs to be displayed through localizing text natives to get proper display name. ----------------------------------------------------------------------------------------------------------------------------------------- While often the case, this does not simply return the model name of the vehicle (which could be hashed to return the model hash). Variations of the same vehicle may also use the same display name. -----------------------------------------------------------------------------------------------------------------------------------------  Returns "CARNOTFOUND" if the hash doesn't match a vehicle hash.  Using UI::_GET_LABEL_TEXT, you can get the localized name.  For a full list, see here: pastebin.com/wvpyS4kS (pastebin.com/dA3TbkZw)
-- @module native
-- @submodule vehicle
-- @see GET_DISPLAY_NAME_FROM_VEHICLE_MODEL
-- @usage char* GET_DISPLAY_NAME_FROM_VEHICLE_MODEL(Hash modelHash);
-- @param modelHash Hash
-- @return char*
function GetDisplayNameFromVehicleModel(modelHash) end

-- The only example I can find of this function in the scripts, is this:  struct _s = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(rPtr((A_0) + 4), 1.21f, 6.15f, 0.3f);  ----------------------------------------------------------------------------------------------------------------------------------------- PC scripts:  v_5/*{3}*/ = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(a_0._f1, 1.21, 6.15, 0.3);
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_DEFORMATION_AT_POS
-- @usage Vector3 GET_VEHICLE_DEFORMATION_AT_POS(Vehicle vehicle, float offsetX, float offsetY, float offsetZ);
-- @param vehicle Vehicle
-- @param offsetX float
-- @param offsetY float
-- @param offsetZ float
-- @return Vector3
function GetVehicleDeformationAtPos(vehicle, offsetX, offsetY, offsetZ) end

-- Note: Only seems to work on Emergency Vehicles
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_LIVERY
-- @usage void SET_VEHICLE_LIVERY(Vehicle vehicle, int livery);
-- @param vehicle Vehicle
-- @param livery int
-- @return void
function SetVehicleLivery(vehicle, livery) end

-- -1 = no livery
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_LIVERY
-- @usage int GET_VEHICLE_LIVERY(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleLivery(vehicle) end

-- Returns -1 if the vehicle has no livery
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_LIVERY_COUNT
-- @usage int GET_VEHICLE_LIVERY_COUNT(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleLiveryCount(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_WINDOW_INTACT
-- @usage BOOL IS_VEHICLE_WINDOW_INTACT(Vehicle vehicle, int windowIndex);
-- @param vehicle Vehicle
-- @param windowIndex int
-- @return BOOL
function IsVehicleWindowIntact(vehicle, windowIndex) end

-- Appears to return false if any window is broken.
-- @module native
-- @submodule vehicle
-- @see ARE_ALL_VEHICLE_WINDOWS_INTACT
-- @usage BOOL ARE_ALL_VEHICLE_WINDOWS_INTACT(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function AreAllVehicleWindowsIntact(vehicle) end

-- Returns false if every seat is occupied.
-- @module native
-- @submodule vehicle
-- @see ARE_ANY_VEHICLE_SEATS_FREE
-- @usage BOOL ARE_ANY_VEHICLE_SEATS_FREE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function AreAnyVehicleSeatsFree(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see RESET_VEHICLE_WHEELS
-- @usage void RESET_VEHICLE_WHEELS(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function ResetVehicleWheels(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_HELI_PART_BROKEN
-- @usage BOOL IS_HELI_PART_BROKEN(Vehicle vehicle, BOOL p1, BOOL p2, BOOL p3);
-- @param vehicle Vehicle
-- @param p1 BOOL
-- @param p2 BOOL
-- @param p3 BOOL
-- @return BOOL
function IsHeliPartBroken(vehicle, p1, p2, p3) end

-- Hash collision
-- @module native
-- @submodule vehicle
-- @see WAS_COUNTER_ACTIVATED
-- @usage BOOL WAS_COUNTER_ACTIVATED(Vehicle vehicle, Any p1);
-- @param vehicle Vehicle
-- @param p1 Any
-- @return BOOL
function WasCounterActivated(vehicle, p1) end

-- NOTE: Debugging functions are not present in the retail version of the game.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_NAME_DEBUG
-- @usage void SET_VEHICLE_NAME_DEBUG(Vehicle vehicle, char* name);
-- @param vehicle Vehicle
-- @param name char*
-- @return void
function SetVehicleNameDebug(vehicle, name) end

-- Sets a vehicle to be strongly resistant to explosions. p0 is the vehicle; set p1 to false to toggle the effect on/off.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE
-- @usage void SET_VEHICLE_EXPLODES_ON_HIGH_EXPLOSION_DAMAGE(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleExplodesOnHighExplosionDamage(vehicle, toggle) end

-- Works for vehicles with a retractable landing gear  landing gear states:  0: Deployed 1: Closing 2: Opening 3: Retracted
-- @module native
-- @submodule vehicle
-- @see CONTROL_LANDING_GEAR
-- @usage void CONTROL_LANDING_GEAR(Vehicle vehicle, int state);
-- @param vehicle Vehicle
-- @param state int
-- @return void
function ControlLandingGear(vehicle, state) end

-- landing gear states:  0: Deployed 1: Closing 2: Opening 3: Retracted
-- @module native
-- @submodule vehicle
-- @see GET_LANDING_GEAR_STATE
-- @usage int GET_LANDING_GEAR_STATE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetLandingGearState(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_ANY_VEHICLE_NEAR_POINT
-- @usage BOOL IS_ANY_VEHICLE_NEAR_POINT(float x, float y, float z, float radius);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @return BOOL
function IsAnyVehicleNearPoint(x, y, z, radius) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see REQUEST_VEHICLE_HIGH_DETAIL_MODEL
-- @usage void REQUEST_VEHICLE_HIGH_DETAIL_MODEL(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function RequestVehicleHighDetailModel(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see REMOVE_VEHICLE_HIGH_DETAIL_MODEL
-- @usage void REMOVE_VEHICLE_HIGH_DETAIL_MODEL(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function RemoveVehicleHighDetailModel(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_HIGH_DETAIL
-- @usage BOOL IS_VEHICLE_HIGH_DETAIL(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleHighDetail(vehicle) end

-- REQUEST_VEHICLE_ASSET(GET_HASH_KEY(cargobob3), 3);  vehicle found that have asset's: cargobob3 submersible blazer
-- @module native
-- @submodule vehicle
-- @see REQUEST_VEHICLE_ASSET
-- @usage void REQUEST_VEHICLE_ASSET(Hash vehicleHash, int vehicleAsset);
-- @param vehicleHash Hash
-- @param vehicleAsset int
-- @return void
function RequestVehicleAsset(vehicleHash, vehicleAsset) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see HAS_VEHICLE_ASSET_LOADED
-- @usage BOOL HAS_VEHICLE_ASSET_LOADED(int vehicleAsset);
-- @param vehicleAsset int
-- @return BOOL
function HasVehicleAssetLoaded(vehicleAsset) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see REMOVE_VEHICLE_ASSET
-- @usage void REMOVE_VEHICLE_ASSET(int vehicleAsset);
-- @param vehicleAsset int
-- @return void
function RemoveVehicleAsset(vehicleAsset) end

-- HookOffset defines where the hook is attached. leave at 0 for default attachment.
-- @module native
-- @submodule vehicle
-- @see ATTACH_VEHICLE_TO_TOW_TRUCK
-- @usage void ATTACH_VEHICLE_TO_TOW_TRUCK(Vehicle towTruck, Vehicle vehicle, BOOL rear, float hookOffsetX, float hookOffsetY, float hookOffsetZ);
-- @param towTruck Vehicle
-- @param vehicle Vehicle
-- @param rear BOOL
-- @param hookOffsetX float
-- @param hookOffsetY float
-- @param hookOffsetZ float
-- @return void
function AttachVehicleToTowTruck(towTruck, vehicle, rear, hookOffsetX, hookOffsetY, hookOffsetZ) end

-- First two parameters swapped. Scripts verify that towTruck is the first parameter, not the second.
-- @module native
-- @submodule vehicle
-- @see DETACH_VEHICLE_FROM_TOW_TRUCK
-- @usage void DETACH_VEHICLE_FROM_TOW_TRUCK(Vehicle towTruck, Vehicle vehicle);
-- @param towTruck Vehicle
-- @param vehicle Vehicle
-- @return void
function DetachVehicleFromTowTruck(towTruck, vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see DETACH_VEHICLE_FROM_ANY_TOW_TRUCK
-- @usage BOOL DETACH_VEHICLE_FROM_ANY_TOW_TRUCK(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function DetachVehicleFromAnyTowTruck(vehicle) end

-- Scripts verify that towTruck is the first parameter, not the second.
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_ATTACHED_TO_TOW_TRUCK
-- @usage BOOL IS_VEHICLE_ATTACHED_TO_TOW_TRUCK(Vehicle towTruck, Vehicle vehicle);
-- @param towTruck Vehicle
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleAttachedToTowTruck(towTruck, vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_ENTITY_ATTACHED_TO_TOW_TRUCK
-- @usage Entity GET_ENTITY_ATTACHED_TO_TOW_TRUCK(Vehicle towTruck);
-- @param towTruck Vehicle
-- @return Entity
function GetEntityAttachedToTowTruck(towTruck) end

-- Please change to void.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_AUTOMATICALLY_ATTACHES
-- @usage Any SET_VEHICLE_AUTOMATICALLY_ATTACHES(Vehicle vehicle, Any p1, Any p2);
-- @param vehicle Vehicle
-- @param p1 Any
-- @param p2 Any
-- @return Any
function SetVehicleAutomaticallyAttaches(vehicle, p1, p2) end

-- On accelerating, spins the driven wheels with the others braked, so you don't go anywhere.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_BURNOUT
-- @usage void SET_VEHICLE_BURNOUT(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleBurnout(vehicle, toggle) end

-- Returns whether the specified vehicle is currently in a burnout.   vb.net Public Function isVehicleInBurnout(vh As Vehicle) As Boolean         Return Native.Function.Call(Of Boolean)(Hash.IS_VEHICLE_IN_BURNOUT, vh)     End Function
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_IN_BURNOUT
-- @usage BOOL IS_VEHICLE_IN_BURNOUT(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleInBurnout(vehicle) end

-- Reduces grip significantly so it's hard to go anywhere.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_REDUCE_GRIP
-- @usage void SET_VEHICLE_REDUCE_GRIP(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleReduceGrip(vehicle, toggle) end

-- Sets the turn signal enabled for a vehicle. Set turnSignal to 1 for left light, 0 for right light.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_INDICATOR_LIGHTS
-- @usage void SET_VEHICLE_INDICATOR_LIGHTS(Vehicle vehicle, int turnSignal, BOOL toggle);
-- @param vehicle Vehicle
-- @param turnSignal int
-- @param toggle BOOL
-- @return void
function SetVehicleIndicatorLights(vehicle, turnSignal, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_BRAKE_LIGHTS
-- @usage void SET_VEHICLE_BRAKE_LIGHTS(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleBrakeLights(vehicle, toggle) end

-- does this work while in air?
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_HANDBRAKE
-- @usage void SET_VEHICLE_HANDBRAKE(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleHandbrake(vehicle, toggle) end

-- Gets the trailer of a vehicle and puts it into the trailer parameter.
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_TRAILER_VEHICLE
-- @usage BOOL GET_VEHICLE_TRAILER_VEHICLE(Vehicle vehicle, Vehicle* trailer);
-- @param vehicle Vehicle
-- @param trailer Vehicle*
-- @return BOOL
function GetVehicleTrailerVehicle(vehicle, trailer) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_RUDDER_BROKEN
-- @usage void SET_VEHICLE_RUDDER_BROKEN(Vehicle vehicle, BOOL p1);
-- @param vehicle Vehicle
-- @param p1 BOOL
-- @return void
function SetVehicleRudderBroken(vehicle, p1) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MAX_BRAKING
-- @usage float GET_VEHICLE_MAX_BRAKING(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return float
function GetVehicleMaxBraking(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MAX_TRACTION
-- @usage float GET_VEHICLE_MAX_TRACTION(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return float
function GetVehicleMaxTraction(vehicle) end

-- static - max acceleration
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_ACCELERATION
-- @usage float GET_VEHICLE_ACCELERATION(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return float
function GetVehicleAcceleration(vehicle) end

-- Returns max braking of the specified vehicle model.  For a full list, see here: pastebin.com/3N8DVbpG
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MODEL_MAX_BRAKING
-- @usage float GET_VEHICLE_MODEL_MAX_BRAKING(Hash modelHash);
-- @param modelHash Hash
-- @return float
function GetVehicleModelMaxBraking(modelHash) end

-- Returns max traction of the specified vehicle model.  For a full list, see here: pastebin.com/ERnntVjK
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MODEL_MAX_TRACTION
-- @usage float GET_VEHICLE_MODEL_MAX_TRACTION(Hash modelHash);
-- @param modelHash Hash
-- @return float
function GetVehicleModelMaxTraction(modelHash) end

-- Returns the acceleration of the specified model.  For a full list, see here: pastebin.com/GaN6vT4R
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MODEL_ACCELERATION
-- @usage float GET_VEHICLE_MODEL_ACCELERATION(Hash modelHash);
-- @param modelHash Hash
-- @return float
function GetVehicleModelAcceleration(modelHash) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_CLASS_MAX_TRACTION
-- @usage float GET_VEHICLE_CLASS_MAX_TRACTION(int vehicleClass);
-- @param vehicleClass int
-- @return float
function GetVehicleClassMaxTraction(vehicleClass) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_CLASS_MAX_AGILITY
-- @usage float GET_VEHICLE_CLASS_MAX_AGILITY(int vehicleClass);
-- @param vehicleClass int
-- @return float
function GetVehicleClassMaxAgility(vehicleClass) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_CLASS_MAX_ACCELERATION
-- @usage float GET_VEHICLE_CLASS_MAX_ACCELERATION(int vehicleClass);
-- @param vehicleClass int
-- @return float
function GetVehicleClassMaxAcceleration(vehicleClass) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_CLASS_MAX_BRAKING
-- @usage float GET_VEHICLE_CLASS_MAX_BRAKING(int vehicleClass);
-- @param vehicleClass int
-- @return float
function GetVehicleClassMaxBraking(vehicleClass) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see OPEN_BOMB_BAY_DOORS
-- @usage void OPEN_BOMB_BAY_DOORS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function OpenBombBayDoors(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see CLOSE_BOMB_BAY_DOORS
-- @usage void CLOSE_BOMB_BAY_DOORS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function CloseBombBayDoors(vehicle) end

-- Possibly: Returns whether the searchlight (found on police vehicles) is toggled on.
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_SEARCHLIGHT_ON
-- @usage BOOL IS_VEHICLE_SEARCHLIGHT_ON(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleSearchlightOn(vehicle) end

-- Only works during nighttime.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_SEARCHLIGHT
-- @usage void SET_VEHICLE_SEARCHLIGHT(Vehicle heli, BOOL toggle, BOOL canBeUsedByAI);
-- @param heli Vehicle
-- @param toggle BOOL
-- @param canBeUsedByAI BOOL
-- @return void
function SetVehicleSearchlight(heli, toggle, canBeUsedByAI) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see CAN_SHUFFLE_SEAT
-- @usage BOOL CAN_SHUFFLE_SEAT(Vehicle vehicle, Any p1);
-- @param vehicle Vehicle
-- @param p1 Any
-- @return BOOL
function CanShuffleSeat(vehicle, p1) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_NUM_MOD_KITS
-- @usage int GET_NUM_MOD_KITS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetNumModKits(vehicle) end

-- Set modKit to 0 if you plan to call SET_VEHICLE_MOD. That's what the game does. Most body modifications through SET_VEHICLE_MOD will not take effect until this is set to 0.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_MOD_KIT
-- @usage void SET_VEHICLE_MOD_KIT(Vehicle vehicle, int modKit);
-- @param vehicle Vehicle
-- @param modKit int
-- @return void
function SetVehicleModKit(vehicle, modKit) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MOD_KIT
-- @usage int GET_VEHICLE_MOD_KIT(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleModKit(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MOD_KIT_TYPE
-- @usage int GET_VEHICLE_MOD_KIT_TYPE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleModKitType(vehicle) end

-- Returns an int  Wheel Types: 0: Sport 1: Muscle 2: Lowrider 3: SUV 4: Offroad 5: Tuner 6: Bike Wheels 7: High End  Tested in Los Santos Customs
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_WHEEL_TYPE
-- @usage int GET_VEHICLE_WHEEL_TYPE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleWheelType(vehicle) end

-- 0: Sport 1: Muscle 2: Lowrider 3: SUV 4: Offroad 5: Tuner 6: Bike Wheels 7: High End
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_WHEEL_TYPE
-- @usage void SET_VEHICLE_WHEEL_TYPE(Vehicle vehicle, int WheelType);
-- @param vehicle Vehicle
-- @param WheelType int
-- @return void
function SetVehicleWheelType(vehicle, WheelType) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_NUM_MOD_COLORS
-- @usage int GET_NUM_MOD_COLORS(int p0, BOOL p1);
-- @param p0 int
-- @param p1 BOOL
-- @return int
function GetNumModColors(p0, p1) end

-- paintType: 0: Normal 1: Metallic 2: Pearl 3: Matte 4: Metal 5: Chrome  color: number of the color.  p3 seems to always be 0.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_MOD_COLOR_1
-- @usage void SET_VEHICLE_MOD_COLOR_1(Vehicle vehicle, int paintType, int color, int p3);
-- @param vehicle Vehicle
-- @param paintType int
-- @param color int
-- @param p3 int
-- @return void
function SetVehicleModColor_1(vehicle, paintType, color, p3) end

-- Changes the secondary paint type and color paintType: 0: Normal 1: Metallic 2: Pearl 3: Matte 4: Metal 5: Chrome  color: number of the color
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_MOD_COLOR_2
-- @usage void SET_VEHICLE_MOD_COLOR_2(Vehicle vehicle, int paintType, int color);
-- @param vehicle Vehicle
-- @param paintType int
-- @param color int
-- @return void
function SetVehicleModColor_2(vehicle, paintType, color) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MOD_COLOR_1
-- @usage void GET_VEHICLE_MOD_COLOR_1(Vehicle vehicle, int* paintType, int* color, int* p3);
-- @param vehicle Vehicle
-- @param paintType int*
-- @param color int*
-- @param p3 int*
-- @return void
function GetVehicleModColor_1(vehicle, paintType, color, p3) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MOD_COLOR_2
-- @usage void GET_VEHICLE_MOD_COLOR_2(Vehicle vehicle, int* paintType, int* color);
-- @param vehicle Vehicle
-- @param paintType int*
-- @param color int*
-- @return void
function GetVehicleModColor_2(vehicle, paintType, color) end

-- returns a string which is the codename of the vehicle's currently selected primary color  p1 is always 0
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MOD_COLOR_1_NAME
-- @usage char* GET_VEHICLE_MOD_COLOR_1_NAME(Vehicle vehicle, BOOL p1);
-- @param vehicle Vehicle
-- @param p1 BOOL
-- @return char*
function GetVehicleModColor_1Name(vehicle, p1) end

-- returns a string which is the codename of the vehicle's currently selected secondary color
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MOD_COLOR_2_NAME
-- @usage char* GET_VEHICLE_MOD_COLOR_2_NAME(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return char*
function GetVehicleModColor_2Name(vehicle) end

-- In b944, there are 50 (0 - 49) mod types.  Sets the vehicle mod. The vehicle must have a mod kit first.  Any out of range ModIndex is stock.  #Mod Type Spoilers  Front Bumper  Rear Bumper  Side Skirt  Exhaust  Frame  Grille  Hood  Fender  Right Fender  Roof  Engine  Brakes  Transmission  Horns - 14 (modIndex from 0 to 51) Suspension  Armor  Front Wheels  Back Wheels - 24 //only for motocycles Plate holders  Trim Design  Ornaments  Dial Design  Steering Wheel  Shifter Leavers  Plaques  Hydraulics  Livery   ENUMS: pastebin.com/QzEAn02v
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_MOD
-- @usage void SET_VEHICLE_MOD(Vehicle vehicle, int modType, int modIndex, BOOL customTires);
-- @param vehicle Vehicle
-- @param modType int
-- @param modIndex int
-- @param customTires BOOL
-- @return void
function SetVehicleMod(vehicle, modType, modIndex, customTires) end

-- In b944, there are 50 (0 - 49) mod types.  Returns -1 if the vehicle mod is stock
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MOD
-- @usage int GET_VEHICLE_MOD(Vehicle vehicle, int modType);
-- @param vehicle Vehicle
-- @param modType int
-- @return int
function GetVehicleMod(vehicle, modType) end

-- Only used for wheels(ModType = 23/24) Returns true if the wheels are custom wheels
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MOD_VARIATION
-- @usage BOOL GET_VEHICLE_MOD_VARIATION(Vehicle vehicle, int modType);
-- @param vehicle Vehicle
-- @param modType int
-- @return BOOL
function GetVehicleModVariation(vehicle, modType) end

-- Returns how many possible mods a vehicle has for a given mod type
-- @module native
-- @submodule vehicle
-- @see GET_NUM_VEHICLE_MODS
-- @usage int GET_NUM_VEHICLE_MODS(Vehicle vehicle, int modType);
-- @param vehicle Vehicle
-- @param modType int
-- @return int
function GetNumVehicleMods(vehicle, modType) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see REMOVE_VEHICLE_MOD
-- @usage void REMOVE_VEHICLE_MOD(Vehicle vehicle, int modType);
-- @param vehicle Vehicle
-- @param modType int
-- @return void
function RemoveVehicleMod(vehicle, modType) end

-- Toggles: UNK17  Turbo  UNK19  Tire Smoke  UNK21  Xenon Headlights
-- @module native
-- @submodule vehicle
-- @see TOGGLE_VEHICLE_MOD
-- @usage void TOGGLE_VEHICLE_MOD(Vehicle vehicle, int modType, BOOL toggle);
-- @param vehicle Vehicle
-- @param modType int
-- @param toggle BOOL
-- @return void
function ToggleVehicleMod(vehicle, modType, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_TOGGLE_MOD_ON
-- @usage BOOL IS_TOGGLE_MOD_ON(Vehicle vehicle, int modType);
-- @param vehicle Vehicle
-- @param modType int
-- @return BOOL
function IsToggleModOn(vehicle, modType) end

-- Returns the text label of a mod type for a given vehicle  Use _GET_LABEL_TEXT to get the part name in the game's language
-- @module native
-- @submodule vehicle
-- @see GET_MOD_TEXT_LABEL
-- @usage char* GET_MOD_TEXT_LABEL(Vehicle vehicle, int modType, int modValue);
-- @param vehicle Vehicle
-- @param modType int
-- @param modValue int
-- @return char*
function GetModTextLabel(vehicle, modType, modValue) end

-- Returns the name for the type of vehicle mod(Armour, engine etc)
-- @module native
-- @submodule vehicle
-- @see GET_MOD_SLOT_NAME
-- @usage char* GET_MOD_SLOT_NAME(Vehicle vehicle, int modType);
-- @param vehicle Vehicle
-- @param modType int
-- @return char*
function GetModSlotName(vehicle, modType) end

-- Second Param = LiveryIndex  example   int count = VEHICLE::GET_VEHICLE_LIVERY_COUNT(veh); for (int i = 0; i < count; i++)   	{ 		char* LiveryName = VEHICLE::GET_LIVERY_NAME(veh, i); 	}   this example will work fine to fetch all names  for example for Sanchez we get   SANC_LV1 SANC_LV2 SANC_LV3 SANC_LV4 SANC_LV5   Use _GET_LABEL_TEXT, to get the localized livery name.
-- @module native
-- @submodule vehicle
-- @see GET_LIVERY_NAME
-- @usage char* GET_LIVERY_NAME(Vehicle vehicle, int liveryIndex);
-- @param vehicle Vehicle
-- @param liveryIndex int
-- @return char*
function GetLiveryName(vehicle, liveryIndex) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_MOD_MODIFIER_VALUE
-- @usage Any GET_VEHICLE_MOD_MODIFIER_VALUE(Vehicle vehicle, int modType, int modIndex);
-- @param vehicle Vehicle
-- @param modType int
-- @param modIndex int
-- @return Any
function GetVehicleModModifierValue(vehicle, modType, modIndex) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see PRELOAD_VEHICLE_MOD
-- @usage void PRELOAD_VEHICLE_MOD(Any p0, Any p1, Any p2);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @return void
function PreloadVehicleMod(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see HAS_PRELOAD_MODS_FINISHED
-- @usage BOOL HAS_PRELOAD_MODS_FINISHED(Any p0);
-- @param p0 Any
-- @return BOOL
function HasPreloadModsFinished(p0) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see RELEASE_PRELOAD_MODS
-- @usage void RELEASE_PRELOAD_MODS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function ReleasePreloadMods(vehicle) end

-- Sets the tire smoke's color of this vehicle.  vehicle: The vehicle that is the target of this method. r: The red level in the RGB color code. g: The green level in the RGB color code. b: The blue level in the RGB color code.  Note: setting r,g,b to 0 will give the car independance day tyre smoke
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_TYRE_SMOKE_COLOR
-- @usage void SET_VEHICLE_TYRE_SMOKE_COLOR(Vehicle vehicle, int r, int g, int b);
-- @param vehicle Vehicle
-- @param r int
-- @param g int
-- @param b int
-- @return void
function SetVehicleTyreSmokeColor(vehicle, r, g, b) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_TYRE_SMOKE_COLOR
-- @usage void GET_VEHICLE_TYRE_SMOKE_COLOR(Vehicle vehicle, int* r, int* g, int* b);
-- @param vehicle Vehicle
-- @param r int*
-- @param g int*
-- @param b int*
-- @return void
function GetVehicleTyreSmokeColor(vehicle, r, g, b) end

-- enum WindowTints { 	WINDOWTINT_NONE, 	WINDOWTINT_PURE_BLACK, 	WINDOWTINT_DARKSMOKE, 	WINDOWTINT_LIGHTSMOKE, 	WINDOWTINT_STOCK, 	WINDOWTINT_LIMO, 	WINDOWTINT_GREEN };
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_WINDOW_TINT
-- @usage void SET_VEHICLE_WINDOW_TINT(Vehicle vehicle, int tint);
-- @param vehicle Vehicle
-- @param tint int
-- @return void
function SetVehicleWindowTint(vehicle, tint) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_WINDOW_TINT
-- @usage int GET_VEHICLE_WINDOW_TINT(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleWindowTint(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_NUM_VEHICLE_WINDOW_TINTS
-- @usage int GET_NUM_VEHICLE_WINDOW_TINTS();
-- @return int
function GetNumVehicleWindowTints() end

-- What's this for? Primary and Secondary RGB have their own natives and this one doesn't seem specific.
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_COLOR
-- @usage void GET_VEHICLE_COLOR(Vehicle vehicle, int* r, int* g, int* b);
-- @param vehicle Vehicle
-- @param r int*
-- @param g int*
-- @param b int*
-- @return void
function GetVehicleColor(vehicle, r, g, b) end

-- iVar3 = get_vehicle_cause_of_destruction(uLocal_248[iVar2]); if (iVar3 == joaat("weapon_stickybomb")) {      func_171(726);      iLocal_260 = 1; }
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_CAUSE_OF_DESTRUCTION
-- @usage Hash GET_VEHICLE_CAUSE_OF_DESTRUCTION(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return Hash
function GetVehicleCauseOfDestruction(vehicle) end

-- From the driver's perspective, is the left headlight broken.
-- @module native
-- @submodule vehicle
-- @see GET_IS_LEFT_VEHICLE_HEADLIGHT_DAMAGED
-- @usage BOOL GET_IS_LEFT_VEHICLE_HEADLIGHT_DAMAGED(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function GetIsLeftVehicleHeadlightDamaged(vehicle) end

-- From the driver's perspective, is the right headlight broken.
-- @module native
-- @submodule vehicle
-- @see GET_IS_RIGHT_VEHICLE_HEADLIGHT_DAMAGED
-- @usage BOOL GET_IS_RIGHT_VEHICLE_HEADLIGHT_DAMAGED(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function GetIsRightVehicleHeadlightDamaged(vehicle) end

-- Sets the wanted state of this vehicle.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_IS_WANTED
-- @usage void SET_VEHICLE_IS_WANTED(Vehicle vehicle, BOOL state);
-- @param vehicle Vehicle
-- @param state BOOL
-- @return void
function SetVehicleIsWanted(vehicle, state) end

-- hash collision??? - Don't think so. I fits alphabetically and it used with a plane in the scripts
-- @module native
-- @submodule vehicle
-- @see DISABLE_PLANE_AILERON
-- @usage void DISABLE_PLANE_AILERON(Vehicle vehicle, BOOL p1, BOOL p2);
-- @param vehicle Vehicle
-- @param p1 BOOL
-- @param p2 BOOL
-- @return void
function DisablePlaneAileron(vehicle, p1, p2) end

-- Returns true when in a vehicle, false whilst entering/exiting.
-- @module native
-- @submodule vehicle
-- @see GET_IS_VEHICLE_ENGINE_RUNNING
-- @usage BOOL GET_IS_VEHICLE_ENGINE_RUNNING(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function GetIsVehicleEngineRunning(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_LAST_DRIVEN_VEHICLE
-- @usage void SET_LAST_DRIVEN_VEHICLE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function SetLastDrivenVehicle(vehicle) end

-- Not exactly sure on this one, but here's a snippet of code:  if (PED::IS_PED_IN_ANY_VEHICLE(PLAYER::PLAYER_PED_ID(), 0)) {     v_2 = PED::GET_VEHICLE_PED_IS_IN(PLAYER::PLAYER_PED_ID(), 0); } else {      v_2 = VEHICLE::_B2D06FAEDE65B577(); }
-- @module native
-- @submodule vehicle
-- @see GET_LAST_DRIVEN_VEHICLE
-- @usage Vehicle GET_LAST_DRIVEN_VEHICLE();
-- @return Vehicle
function GetLastDrivenVehicle() end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_LOD_MULTIPLIER
-- @usage void SET_VEHICLE_LOD_MULTIPLIER(Vehicle vehicle, float multiplier);
-- @param vehicle Vehicle
-- @param multiplier float
-- @return void
function SetVehicleLodMultiplier(vehicle, multiplier) end

-- Commands the driver of an armed vehicle (p0) to shoot its weapon at a target (p1). p3, p4 and p5 are the coordinates of the target. Example:  WEAPON::SET_CURRENT_PED_VEHICLE_WEAPON(pilot,GAMEPLAY::GET_HASH_KEY("VEHICLE_WEAPON_PLANE_ROCKET"));						VEHICLE::SET_VEHICLE_SHOOT_AT_TARGET(pilot, target, targPos.x, targPos.y, targPos.z);
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_SHOOT_AT_TARGET
-- @usage void SET_VEHICLE_SHOOT_AT_TARGET(Ped driver, Entity entity, float xTarget, float yTarget, float zTarget);
-- @param driver Ped
-- @param entity Entity
-- @param xTarget float
-- @param yTarget float
-- @param zTarget float
-- @return void
function SetVehicleShootAtTarget(driver, entity, xTarget, yTarget, zTarget) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_FORCE_HD_VEHICLE
-- @usage void SET_FORCE_HD_VEHICLE(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetForceHdVehicle(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_PLATE_TYPE
-- @usage int GET_VEHICLE_PLATE_TYPE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehiclePlateType(vehicle) end

-- in script hook .net   Vehicle v = ...; Function.Call(Hash.TRACK_VEHICLE_VISIBILITY, v.Handle);
-- @module native
-- @submodule vehicle
-- @see TRACK_VEHICLE_VISIBILITY
-- @usage void TRACK_VEHICLE_VISIBILITY(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function TrackVehicleVisibility(vehicle) end

-- must be called after TRACK_VEHICLE_VISIBILITY   it's not instant so probabilly must pass an 'update' to see correct result.
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_VISIBLE
-- @usage BOOL IS_VEHICLE_VISIBLE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleVisible(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_GRAVITY
-- @usage void SET_VEHICLE_GRAVITY(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleGravity(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_ENGINE_CAN_DEGRADE
-- @usage void SET_VEHICLE_ENGINE_CAN_DEGRADE(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleEngineCanDegrade(vehicle, toggle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_STOLEN
-- @usage BOOL IS_VEHICLE_STOLEN(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsVehicleStolen(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_IS_STOLEN
-- @usage Any SET_VEHICLE_IS_STOLEN(Vehicle vehicle, BOOL isStolen);
-- @param vehicle Vehicle
-- @param isStolen BOOL
-- @return Any
function SetVehicleIsStolen(vehicle, isStolen) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see DETACH_VEHICLE_FROM_CARGOBOB
-- @usage void DETACH_VEHICLE_FROM_CARGOBOB(Vehicle vehicle, Vehicle cargobob);
-- @param vehicle Vehicle
-- @param cargobob Vehicle
-- @return void
function DetachVehicleFromCargobob(vehicle, cargobob) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see DETACH_VEHICLE_FROM_ANY_CARGOBOB
-- @usage BOOL DETACH_VEHICLE_FROM_ANY_CARGOBOB(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function DetachVehicleFromAnyCargobob(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see IS_VEHICLE_ATTACHED_TO_CARGOBOB
-- @usage BOOL IS_VEHICLE_ATTACHED_TO_CARGOBOB(Vehicle cargobob, Vehicle vehicleAttached);
-- @param cargobob Vehicle
-- @param vehicleAttached Vehicle
-- @return BOOL
function IsVehicleAttachedToCargobob(cargobob, vehicleAttached) end

-- Returns attached vehicle (Vehicle in parameter must be cargobob)
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_ATTACHED_TO_CARGOBOB
-- @usage Vehicle GET_VEHICLE_ATTACHED_TO_CARGOBOB(Vehicle cargobob);
-- @param cargobob Vehicle
-- @return Vehicle
function GetVehicleAttachedToCargobob(cargobob) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see ATTACH_VEHICLE_TO_CARGOBOB
-- @usage void ATTACH_VEHICLE_TO_CARGOBOB(Vehicle vehicle, Vehicle cargobob, int p2, float x, float y, float z);
-- @param vehicle Vehicle
-- @param cargobob Vehicle
-- @param p2 int
-- @param x float
-- @param y float
-- @param z float
-- @return void
function AttachVehicleToCargobob(vehicle, cargobob, p2, x, y, z) end

-- Returns true only when the hook is active, will return false if the magnet is active
-- @module native
-- @submodule vehicle
-- @see DOES_CARGOBOB_HAVE_PICK_UP_ROPE
-- @usage BOOL DOES_CARGOBOB_HAVE_PICK_UP_ROPE(Vehicle cargobob);
-- @param cargobob Vehicle
-- @return BOOL
function DoesCargobobHavePickUpRope(cargobob) end

-- Drops the Hook/Magnet on a cargobob  state enum eCargobobHook { 	CARGOBOB_HOOK = 0, 	CARGOBOB_MAGNET = 1, };
-- @module native
-- @submodule vehicle
-- @see CREATE_PICK_UP_ROPE_FOR_CARGOBOB
-- @usage void CREATE_PICK_UP_ROPE_FOR_CARGOBOB(Vehicle cargobob, int state);
-- @param cargobob Vehicle
-- @param state int
-- @return void
function CreatePickUpRopeForCargobob(cargobob, state) end

-- Retracts the hook on the cargobob.  Note: after you retract it the natives for dropping the hook no longer work
-- @module native
-- @submodule vehicle
-- @see REMOVE_PICK_UP_ROPE_FOR_CARGOBOB
-- @usage void REMOVE_PICK_UP_ROPE_FOR_CARGOBOB(Vehicle cargobob);
-- @param cargobob Vehicle
-- @return void
function RemovePickUpRopeForCargobob(cargobob) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see DOES_VEHICLE_HAVE_WEAPONS
-- @usage BOOL DOES_VEHICLE_HAVE_WEAPONS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function DoesVehicleHaveWeapons(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see DISABLE_VEHICLE_WEAPON
-- @usage void DISABLE_VEHICLE_WEAPON(BOOL disabled, Hash weaponHash, Vehicle vehicle, Ped owner);
-- @param disabled BOOL
-- @param weaponHash Hash
-- @param vehicle Vehicle
-- @param owner Ped
-- @return void
function DisableVehicleWeapon(disabled, weaponHash, vehicle, owner) end

-- Returns an int  Vehicle Classes: 0: Compacts 1: Sedans 2: SUVs 3: Coupes 4: Muscle 5: Sports Classics 6: Sports 7: Super 8: Motorcycles 9: Off-road 10: Industrial 11: Utility 12: Vans 13: Cycles 14: Boats 15: Helicopters 16: Planes 17: Service 18: Emergency 19: Military 20: Commercial 21: Trains  char buffer[128]; std::sprintf(buffer, "VEH_CLASS_%i", VEHICLE::GET_VEHICLE_CLASS(vehicle));  char* className = UI::_GET_LABEL_TEXT(buffer);
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_CLASS
-- @usage int GET_VEHICLE_CLASS(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function GetVehicleClass(vehicle) end

-- For a full enum, see here : pastebin.com/i2GGAjY0  char buffer[128]; std::sprintf(buffer, "VEH_CLASS_%i", VEHICLE::GET_VEHICLE_CLASS_FROM_NAME (hash));  char* className = UI::_GET_LABEL_TEXT(buffer);
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_CLASS_FROM_NAME
-- @usage int GET_VEHICLE_CLASS_FROM_NAME(Hash modelHash);
-- @param modelHash Hash
-- @return int
function GetVehicleClassFromName(modelHash) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_PLAYERS_LAST_VEHICLE
-- @usage Any SET_PLAYERS_LAST_VEHICLE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return Any
function SetPlayersLastVehicle(vehicle) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_CAN_BE_USED_BY_FLEEING_PEDS
-- @usage void SET_VEHICLE_CAN_BE_USED_BY_FLEEING_PEDS(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleCanBeUsedByFleeingPeds(vehicle, toggle) end

-- Seems to be related to the metal parts, not tyres (like i was expecting lol)
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_FRICTION_OVERRIDE
-- @usage void SET_VEHICLE_FRICTION_OVERRIDE(Vehicle vehicle, float friction);
-- @param vehicle Vehicle
-- @param friction float
-- @return void
function SetVehicleFrictionOverride(vehicle, friction) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_WHEELS_CAN_BREAK_OFF_WHEN_BLOW_UP
-- @usage void SET_VEHICLE_WHEELS_CAN_BREAK_OFF_WHEN_BLOW_UP(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param toggle BOOL
-- @return void
function SetVehicleWheelsCanBreakOffWhenBlowUp(vehicle, toggle) end

-- Previously named GET_VEHICLE_DEFORMATION_GET_TREE (hash collision)  from Decrypted Scripts I found VEHICLE::SET_VEHICLE_CEILING_HEIGHT(l_BD9[2/*2*/], 420.0);
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_CEILING_HEIGHT
-- @usage void SET_VEHICLE_CEILING_HEIGHT(Vehicle vehicle, float p1);
-- @param vehicle Vehicle
-- @param p1 float
-- @return void
function SetVehicleCeilingHeight(vehicle, p1) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see DOES_VEHICLE_EXIST_WITH_DECORATOR
-- @usage BOOL DOES_VEHICLE_EXIST_WITH_DECORATOR(char* decorator);
-- @param decorator char*
-- @return BOOL
function DoesVehicleExistWithDecorator(decorator) end

-- @todo
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_EXCLUSIVE_DRIVER
-- @usage void SET_VEHICLE_EXCLUSIVE_DRIVER(Vehicle vehicle, BOOL p1);
-- @param vehicle Vehicle
-- @param p1 BOOL
-- @return void
function SetVehicleExclusiveDriver(vehicle, p1) end

-- Seems related to vehicle health, like the one in IV. Max 1000, min 0. Vehicle does not necessarily explode or become undrivable at 0.
-- @module native
-- @submodule vehicle
-- @see GET_VEHICLE_BODY_HEALTH
-- @usage float GET_VEHICLE_BODY_HEALTH(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return float
function GetVehicleBodyHealth(vehicle) end

-- p2 often set to 1000.0 in the decompiled scripts.
-- @module native
-- @submodule vehicle
-- @see SET_VEHICLE_BODY_HEALTH
-- @usage void SET_VEHICLE_BODY_HEALTH(Vehicle vehicle, float value);
-- @param vehicle Vehicle
-- @param value float
-- @return void
function SetVehicleBodyHealth(vehicle, value) end