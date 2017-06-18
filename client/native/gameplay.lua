-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_ALLOCATED_STACK_SIZE
-- @usage int GET_ALLOCATED_STACK_SIZE();
-- @return int
function GetAllocatedStackSize() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_RANDOM_SEED
-- @usage void SET_RANDOM_SEED(int time);
-- @param time int
-- @return void
function SetRandomSeed(time) end

-- Maximum value is 1. At a value of 0 the game will still run at a minimum time scale.  Slow Motion 1: 0.6 Slow Motion 2: 0.4 Slow Motion 3: 0.2
-- @module native
-- @submodule gameplay
-- @see SET_TIME_SCALE
-- @usage void SET_TIME_SCALE(float time);
-- @param time float
-- @return void
function SetTimeScale(time) end

-- If true, the player can't save the game.    If the parameter is true, sets the mission flag to true, if the parameter is false, the function does nothing at all.  ^ also, if the mission flag is already set, the function does nothing at all
-- @module native
-- @submodule gameplay
-- @see SET_MISSION_FLAG
-- @usage void SET_MISSION_FLAG(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetMissionFlag(toggle) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_MISSION_FLAG
-- @usage BOOL GET_MISSION_FLAG();
-- @return BOOL
function GetMissionFlag() end

-- If the parameter is true, sets the random event flag to true, if the parameter is false, the function does nothing at all. Does nothing if the mission flag is set.
-- @module native
-- @submodule gameplay
-- @see SET_RANDOM_EVENT_FLAG
-- @usage void SET_RANDOM_EVENT_FLAG(BOOL p0);
-- @param p0 BOOL
-- @return void
function SetRandomEventFlag(p0) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_RANDOM_EVENT_FLAG
-- @usage Any GET_RANDOM_EVENT_FLAG();
-- @return Any
function GetRandomEventFlag() end

-- Returns current weather name hash
-- @module native
-- @submodule gameplay
-- @see GET_PREV_WEATHER_TYPE_HASH_NAME
-- @usage Hash GET_PREV_WEATHER_TYPE_HASH_NAME();
-- @return Hash
function GetPrevWeatherTypeHashName() end

-- Returns weather name hash
-- @module native
-- @submodule gameplay
-- @see GET_NEXT_WEATHER_TYPE_HASH_NAME
-- @usage Hash GET_NEXT_WEATHER_TYPE_HASH_NAME();
-- @return Hash
function GetNextWeatherTypeHashName() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_PREV_WEATHER_TYPE
-- @usage BOOL IS_PREV_WEATHER_TYPE(char* weatherType);
-- @param weatherType char*
-- @return BOOL
function IsPrevWeatherType(weatherType) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_NEXT_WEATHER_TYPE
-- @usage BOOL IS_NEXT_WEATHER_TYPE(char* weatherType);
-- @param weatherType char*
-- @return BOOL
function IsNextWeatherType(weatherType) end

-- The following weatherTypes are used in the scripts: "CLEAR" "EXTRASUNNY" "CLOUDS" "OVERCAST" "RAIN" "CLEARING" "THUNDER" "SMOG" "FOGGY" "XMAS" "SNOWLIGHT" "BLIZZARD"
-- @module native
-- @submodule gameplay
-- @see SET_WEATHER_TYPE_PERSIST
-- @usage void SET_WEATHER_TYPE_PERSIST(char* weatherType);
-- @param weatherType char*
-- @return void
function SetWeatherTypePersist(weatherType) end

-- The following weatherTypes are used in the scripts: "CLEAR" "EXTRASUNNY" "CLOUDS" "OVERCAST" "RAIN" "CLEARING" "THUNDER" "SMOG" "FOGGY" "XMAS" "SNOWLIGHT" "BLIZZARD"
-- @module native
-- @submodule gameplay
-- @see SET_WEATHER_TYPE_NOW_PERSIST
-- @usage void SET_WEATHER_TYPE_NOW_PERSIST(char* weatherType);
-- @param weatherType char*
-- @return void
function SetWeatherTypeNowPersist(weatherType) end

-- The following weatherTypes are used in the scripts: "CLEAR" "EXTRASUNNY" "CLOUDS" "OVERCAST" "RAIN" "CLEARING" "THUNDER" "SMOG" "FOGGY" "XMAS" "SNOWLIGHT" "BLIZZARD"
-- @module native
-- @submodule gameplay
-- @see SET_WEATHER_TYPE_NOW
-- @usage void SET_WEATHER_TYPE_NOW(char* weatherType);
-- @param weatherType char*
-- @return void
function SetWeatherTypeNow(weatherType) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_RANDOM_WEATHER_TYPE
-- @usage void SET_RANDOM_WEATHER_TYPE();
-- @return void
function SetRandomWeatherType() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see CLEAR_WEATHER_TYPE_PERSIST
-- @usage void CLEAR_WEATHER_TYPE_PERSIST();
-- @return void
function ClearWeatherTypePersist() end

-- Appears to have an optional bool parameter that is unused in the scripts.  If you pass true, something will be set to zero.
-- @module native
-- @submodule gameplay
-- @see SET_OVERRIDE_WEATHER
-- @usage void SET_OVERRIDE_WEATHER(char* weatherType);
-- @param weatherType char*
-- @return void
function SetOverrideWeather(weatherType) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see CLEAR_OVERRIDE_WEATHER
-- @usage void CLEAR_OVERRIDE_WEATHER();
-- @return void
function ClearOverrideWeather() end

-- Sets the the raw wind speed value.
-- @module native
-- @submodule gameplay
-- @see SET_WIND
-- @usage void SET_WIND(float speed);
-- @param speed float
-- @return void
function SetWind(speed) end

-- Using this native will clamp the wind speed value to a range of 0.0- 12.0. Using SET_WIND sets the same value but without the restriction.
-- @module native
-- @submodule gameplay
-- @see SET_WIND_SPEED
-- @usage void SET_WIND_SPEED(float speed);
-- @param speed float
-- @return void
function SetWindSpeed(speed) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_WIND_SPEED
-- @usage float GET_WIND_SPEED();
-- @return float
function GetWindSpeed() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_WIND_DIRECTION
-- @usage void SET_WIND_DIRECTION(float direction);
-- @param direction float
-- @return void
function SetWindDirection(direction) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_WIND_DIRECTION
-- @usage Vector3 GET_WIND_DIRECTION();
-- @return Vector3
function GetWindDirection() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_RAIN_LEVEL
-- @usage Any GET_RAIN_LEVEL();
-- @return Any
function GetRainLevel() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_SNOW_LEVEL
-- @usage Any GET_SNOW_LEVEL();
-- @return Any
function GetSnowLevel() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_GAME_TIMER
-- @usage int GET_GAME_TIMER();
-- @return int
function GetGameTimer() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_FRAME_TIME
-- @usage float GET_FRAME_TIME();
-- @return float
function GetFrameTime() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_FRAME_COUNT
-- @usage int GET_FRAME_COUNT();
-- @return int
function GetFrameCount() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_RANDOM_FLOAT_IN_RANGE
-- @usage float GET_RANDOM_FLOAT_IN_RANGE(float startRange, float endRange);
-- @param startRange float
-- @param endRange float
-- @return float
function GetRandomFloatInRange(startRange, endRange) end

-- Another extremely useful native.  You can use it simply like: if (GAMEPLAY::GET_RANDOM_INT_IN_RANGE(0, 2))  and the if-statement will count it as false only if the random int is 0. That means there is a one in three chance of it being false. Put a "!" in front and it means there is a one in three chance of it being true.
-- @module native
-- @submodule gameplay
-- @see GET_RANDOM_INT_IN_RANGE
-- @usage int GET_RANDOM_INT_IN_RANGE(int startRange, int endRange);
-- @param startRange int
-- @param endRange int
-- @return int
function GetRandomIntInRange(startRange, endRange) end

-- Gets the ground elevation at the specified position. Note that if the specified position is below ground level, the function will output zero!  x: Position on the X-axis to get ground elevation at. y: Position on the Y-axis to get ground elevation at. z: Position on the Z-axis to get ground elevation at. groundZ: The ground elevation at the specified position. unk: Nearly always 0, very rarely 1 in the scripts.
-- @module native
-- @submodule gameplay
-- @see GET_GROUND_Z_FOR_3D_COORD
-- @usage BOOL GET_GROUND_Z_FOR_3D_COORD(float x, float y, float z, float* groundZ, BOOL unk);
-- @param x float
-- @param y float
-- @param z float
-- @param groundZ float*
-- @param unk BOOL
-- @return BOOL
function GetGroundZFor_3dCoord(x, y, z, groundZ, unk) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see ASIN
-- @usage float ASIN(float p0);
-- @param p0 float
-- @return float
function Asin(p0) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see ACOS
-- @usage float ACOS(float p0);
-- @param p0 float
-- @return float
function Acos(p0) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see TAN
-- @usage float TAN(float p0);
-- @param p0 float
-- @return float
function Tan(p0) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see ATAN
-- @usage float ATAN(float p0);
-- @param p0 float
-- @return float
function Atan(p0) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see ATAN2
-- @usage float ATAN2(float p0, float p1);
-- @param p0 float
-- @param p1 float
-- @return float
function Atan2(p0, p1) end

-- If useZ is false, only the 2D plane (X-Y) will be considered for calculating the distance.  Consider using this faster native instead: SYSTEM::VDIST - DVIST always takes in consideration the 3D coordinates.
-- @module native
-- @submodule gameplay
-- @see GET_DISTANCE_BETWEEN_COORDS
-- @usage float GET_DISTANCE_BETWEEN_COORDS(float x1, float y1, float z1, float x2, float y2, float z2, BOOL useZ);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param useZ BOOL
-- @return float
function GetDistanceBetweenCoords(x1, y1, z1, x2, y2, z2, useZ) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_ANGLE_BETWEEN_2D_VECTORS
-- @usage float GET_ANGLE_BETWEEN_2D_VECTORS(float x1, float y1, float x2, float y2);
-- @param x1 float
-- @param y1 float
-- @param x2 float
-- @param y2 float
-- @return float
function GetAngleBetween_2dVectors(x1, y1, x2, y2) end

-- dx = x1  dy = y1
-- @module native
-- @submodule gameplay
-- @see GET_HEADING_FROM_VECTOR_2D
-- @usage float GET_HEADING_FROM_VECTOR_2D(float dx, float dy);
-- @param dx float
-- @param dy float
-- @return float
function GetHeadingFromVector_2d(dx, dy) end

-- This sets bit [offset] of [address] to on.  The offsets used are different bits to be toggled on and off, typically there is only one address used in a script.  Example: GAMEPLAY::SET_BIT(&bitAddress, 1);  To check if this bit has been enabled: GAMEPLAY::IS_BIT_SET(bitAddress, 1); // will return 1 afterwards  Please note, this method may assign a value to [address] when used.
-- @module native
-- @submodule gameplay
-- @see SET_BIT
-- @usage void SET_BIT(int* address, int offset);
-- @param address int*
-- @param offset int
-- @return void
function SetBit(address, offset) end

-- This sets bit [offset] of [address] to off.  Example: GAMEPLAY::CLEAR_BIT(&bitAddress, 1);  To check if this bit has been enabled: GAMEPLAY::IS_BIT_SET(bitAddress, 1); // will return 0 afterwards
-- @module native
-- @submodule gameplay
-- @see CLEAR_BIT
-- @usage void CLEAR_BIT(int* address, int offset);
-- @param address int*
-- @param offset int
-- @return void
function ClearBit(address, offset) end

-- This native converts its past string to hash. It is hashed using jenkins one at a time method.
-- @module native
-- @submodule gameplay
-- @see GET_HASH_KEY
-- @usage Hash GET_HASH_KEY(char* model);
-- @param model char*
-- @return Hash
function GetHashKey(model) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_AREA_OCCUPIED
-- @usage BOOL IS_AREA_OCCUPIED(float p0, float p1, float p2, float p3, float p4, float p5, BOOL p6, BOOL p7, BOOL p8, BOOL p9, BOOL p10, Any p11, BOOL p12);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 BOOL
-- @param p7 BOOL
-- @param p8 BOOL
-- @param p9 BOOL
-- @param p10 BOOL
-- @param p11 Any
-- @param p12 BOOL
-- @return BOOL
function IsAreaOccupied(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_POSITION_OCCUPIED
-- @usage BOOL IS_POSITION_OCCUPIED(float x, float y, float z, float range, BOOL p4, BOOL p5, BOOL p6, BOOL p7, BOOL p8, Any p9, BOOL p10);
-- @param x float
-- @param y float
-- @param z float
-- @param range float
-- @param p4 BOOL
-- @param p5 BOOL
-- @param p6 BOOL
-- @param p7 BOOL
-- @param p8 BOOL
-- @param p9 Any
-- @param p10 BOOL
-- @return BOOL
function IsPositionOccupied(x, y, z, range, p4, p5, p6, p7, p8, p9, p10) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_POINT_OBSCURED_BY_A_MISSION_ENTITY
-- @usage BOOL IS_POINT_OBSCURED_BY_A_MISSION_ENTITY(float p0, float p1, float p2, float p3, float p4, float p5, Any p6);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 Any
-- @return BOOL
function IsPointObscuredByAMissionEntity(p0, p1, p2, p3, p4, p5, p6) end

-- Example: CLEAR_AREA(0, 0, 0, 30, true, false, false, false);
-- @module native
-- @submodule gameplay
-- @see CLEAR_AREA
-- @usage void CLEAR_AREA(float X, float Y, float Z, float radius, BOOL p4, BOOL ignoreCopCars, BOOL ignoreObjects, BOOL p7);
-- @param X float
-- @param Y float
-- @param Z float
-- @param radius float
-- @param p4 BOOL
-- @param ignoreCopCars BOOL
-- @param ignoreObjects BOOL
-- @param p7 BOOL
-- @return void
function ClearArea(X, Y, Z, radius, p4, ignoreCopCars, ignoreObjects, p7) end

-- Example: 		CLEAR_AREA_OF_VEHICLES(0, 0, 0, 10000, false, false, false, false, false);
-- @module native
-- @submodule gameplay
-- @see CLEAR_AREA_OF_VEHICLES
-- @usage void CLEAR_AREA_OF_VEHICLES(float x, float y, float z, float radius, BOOL p4, BOOL p5, BOOL p6, BOOL p7, BOOL p8);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param p4 BOOL
-- @param p5 BOOL
-- @param p6 BOOL
-- @param p7 BOOL
-- @param p8 BOOL
-- @return void
function ClearAreaOfVehicles(x, y, z, radius, p4, p5, p6, p7, p8) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see CLEAR_ANGLED_AREA_OF_VEHICLES
-- @usage void CLEAR_ANGLED_AREA_OF_VEHICLES(float p0, float p1, float p2, float p3, float p4, float p5, float p6, BOOL p7, BOOL p8, BOOL p9, BOOL p10, BOOL p11);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 BOOL
-- @param p8 BOOL
-- @param p9 BOOL
-- @param p10 BOOL
-- @param p11 BOOL
-- @return void
function ClearAngledAreaOfVehicles(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

-- I looked through the PC scripts that this site provides you with a link to find. It shows the last param mainly uses, (0, 2, 6, 16, and 17) so I am going to assume it is a type of flag.
-- @module native
-- @submodule gameplay
-- @see CLEAR_AREA_OF_OBJECTS
-- @usage void CLEAR_AREA_OF_OBJECTS(float x, float y, float z, float radius, int flags);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param flags int
-- @return void
function ClearAreaOfObjects(x, y, z, radius, flags) end

-- Example: 		CLEAR_AREA_OF_PEDS(0, 0, 0, 10000, 1);
-- @module native
-- @submodule gameplay
-- @see CLEAR_AREA_OF_PEDS
-- @usage void CLEAR_AREA_OF_PEDS(float x, float y, float z, float radius, int flags);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param flags int
-- @return void
function ClearAreaOfPeds(x, y, z, radius, flags) end

-- flags appears to always be 0
-- @module native
-- @submodule gameplay
-- @see CLEAR_AREA_OF_COPS
-- @usage void CLEAR_AREA_OF_COPS(float x, float y, float z, float radius, int flags);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param flags int
-- @return void
function ClearAreaOfCops(x, y, z, radius, flags) end

-- flags is usually 0 in the scripts.
-- @module native
-- @submodule gameplay
-- @see CLEAR_AREA_OF_PROJECTILES
-- @usage void CLEAR_AREA_OF_PROJECTILES(float x, float y, float z, float radius, int flags);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param flags int
-- @return void
function ClearAreaOfProjectiles(x, y, z, radius, flags) end

-- The bool is not a toggle!!!
-- @module native
-- @submodule gameplay
-- @see SET_SAVE_MENU_ACTIVE
-- @usage void SET_SAVE_MENU_ACTIVE(BOOL unk);
-- @param unk BOOL
-- @return void
function SetSaveMenuActive(unk) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_CREDITS_ACTIVE
-- @usage void SET_CREDITS_ACTIVE(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetCreditsActive(toggle) end

-- For a full list, see here: pastebin.com/yLNWicUi
-- @module native
-- @submodule gameplay
-- @see TERMINATE_ALL_SCRIPTS_WITH_THIS_NAME
-- @usage void TERMINATE_ALL_SCRIPTS_WITH_THIS_NAME(char* scriptName);
-- @param scriptName char*
-- @return void
function TerminateAllScriptsWithThisName(scriptName) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see NETWORK_SET_SCRIPT_IS_SAFE_FOR_NETWORK_GAME
-- @usage void NETWORK_SET_SCRIPT_IS_SAFE_FOR_NETWORK_GAME();
-- @return void
function NetworkSetScriptIsSafeForNetworkGame() end

-- Returns the index of the newly created hospital spawn point.  p3 might be radius?
-- @module native
-- @submodule gameplay
-- @see ADD_HOSPITAL_RESTART
-- @usage int ADD_HOSPITAL_RESTART(float x, float y, float z, float p3, Any p4);
-- @param x float
-- @param y float
-- @param z float
-- @param p3 float
-- @param p4 Any
-- @return int
function AddHospitalRestart(x, y, z, p3, p4) end

-- The game by default has 5 hospital respawn points. Disabling them all will cause the player to respawn at the last position they were.   Doesn't work....
-- @module native
-- @submodule gameplay
-- @see DISABLE_HOSPITAL_RESTART
-- @usage void DISABLE_HOSPITAL_RESTART(int hospitalIndex, BOOL toggle);
-- @param hospitalIndex int
-- @param toggle BOOL
-- @return void
function DisableHospitalRestart(hospitalIndex, toggle) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see ADD_POLICE_RESTART
-- @usage Any ADD_POLICE_RESTART(float p0, float p1, float p2, float p3, Any p4);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 Any
-- @return Any
function AddPoliceRestart(p0, p1, p2, p3, p4) end

-- Disables the spawn point at the police house on the specified index.  policeIndex: The police house index. toggle: true to enable the spawn point, false to disable.
-- @module native
-- @submodule gameplay
-- @see DISABLE_POLICE_RESTART
-- @usage void DISABLE_POLICE_RESTART(int policeIndex, BOOL toggle);
-- @param policeIndex int
-- @param toggle BOOL
-- @return void
function DisablePoliceRestart(policeIndex, toggle) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IGNORE_NEXT_RESTART
-- @usage void IGNORE_NEXT_RESTART(BOOL toggle);
-- @param toggle BOOL
-- @return void
function IgnoreNextRestart(toggle) end

-- Sets whether the game should fade out after the player dies.
-- @module native
-- @submodule gameplay
-- @see SET_FADE_OUT_AFTER_DEATH
-- @usage void SET_FADE_OUT_AFTER_DEATH(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetFadeOutAfterDeath(toggle) end

-- Sets whether the game should fade out after the player is arrested.
-- @module native
-- @submodule gameplay
-- @see SET_FADE_OUT_AFTER_ARREST
-- @usage void SET_FADE_OUT_AFTER_ARREST(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetFadeOutAfterArrest(toggle) end

-- Sets whether the game should fade in after the player dies or is arrested.
-- @module native
-- @submodule gameplay
-- @see SET_FADE_IN_AFTER_DEATH_ARREST
-- @usage void SET_FADE_IN_AFTER_DEATH_ARREST(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetFadeInAfterDeathArrest(toggle) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_FADE_IN_AFTER_LOAD
-- @usage void SET_FADE_IN_AFTER_LOAD(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetFadeInAfterLoad(toggle) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see REGISTER_SAVE_HOUSE
-- @usage Any REGISTER_SAVE_HOUSE(float p0, float p1, float p2, float p3, Any* p4, Any p5, Any p6);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 Any*
-- @param p5 Any
-- @param p6 Any
-- @return Any
function RegisterSaveHouse(p0, p1, p2, p3, p4, p5, p6) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_SAVE_HOUSE
-- @usage void SET_SAVE_HOUSE(Any p0, BOOL p1, BOOL p2);
-- @param p0 Any
-- @param p1 BOOL
-- @param p2 BOOL
-- @return void
function SetSaveHouse(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see OVERRIDE_SAVE_HOUSE
-- @usage BOOL OVERRIDE_SAVE_HOUSE(BOOL p0, float p1, float p2, float p3, float p4, BOOL p5, float p6, float p7);
-- @param p0 BOOL
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 BOOL
-- @param p6 float
-- @param p7 float
-- @return BOOL
function OverrideSaveHouse(p0, p1, p2, p3, p4, p5, p6, p7) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see DO_AUTO_SAVE
-- @usage void DO_AUTO_SAVE();
-- @return void
function DoAutoSave() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_AUTO_SAVE_IN_PROGRESS
-- @usage BOOL IS_AUTO_SAVE_IN_PROGRESS();
-- @return BOOL
function IsAutoSaveInProgress() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see BEGIN_REPLAY_STATS
-- @usage void BEGIN_REPLAY_STATS(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return void
function BeginReplayStats(p0, p1) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see END_REPLAY_STATS
-- @usage void END_REPLAY_STATS();
-- @return void
function EndReplayStats() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see CLEAR_REPLAY_STATS
-- @usage void CLEAR_REPLAY_STATS();
-- @return void
function ClearReplayStats() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_MEMORY_CARD_IN_USE
-- @usage BOOL IS_MEMORY_CARD_IN_USE();
-- @return BOOL
function IsMemoryCardInUse() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SHOOT_SINGLE_BULLET_BETWEEN_COORDS
-- @usage void SHOOT_SINGLE_BULLET_BETWEEN_COORDS(float x1, float y1, float z1, float x2, float y2, float z2, int damage, BOOL p7, Hash weaponHash, Ped ownerPed, BOOL isAudible, BOOL isInvisible, float speed);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param damage int
-- @param p7 BOOL
-- @param weaponHash Hash
-- @param ownerPed Ped
-- @param isAudible BOOL
-- @param isInvisible BOOL
-- @param speed float
-- @return void
function ShootSingleBulletBetweenCoords(x1, y1, z1, x2, y2, z2, damage, p7, weaponHash, ownerPed, isAudible, isInvisible, speed) end

-- Gets the dimensions of a model.  Calculate (maximum - minimum) to get the size, in which case, Y will be how long the model is.  Example from the scripts: GAMEPLAY::GET_MODEL_DIMENSIONS(ENTITY::GET_ENTITY_MODEL(PLAYER::PLAYER_PED_ID()), &v_1A, &v_17);
-- @module native
-- @submodule gameplay
-- @see GET_MODEL_DIMENSIONS
-- @usage void GET_MODEL_DIMENSIONS(Hash modelHash, Vector3* minimum, Vector3* maximum);
-- @param modelHash Hash
-- @param minimum Vector3*
-- @param maximum Vector3*
-- @return void
function GetModelDimensions(modelHash, minimum, maximum) end

-- Sets a visually fake wanted level on the user interface. Used by Rockstar's scripts to "override" regular wanted levels and make custom ones while the real wanted level and multipliers are ignored.  Max is 5, anything above this makes it just 5. Also the mini-map gets the red & blue flashing effect. I wish I could use this to fake I had 6 stars like a few of the old GTAs'
-- @module native
-- @submodule gameplay
-- @see SET_FAKE_WANTED_LEVEL
-- @usage void SET_FAKE_WANTED_LEVEL(int fakeWantedLevel);
-- @param fakeWantedLevel int
-- @return void
function SetFakeWantedLevel(fakeWantedLevel) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_FAKE_WANTED_LEVEL
-- @usage int GET_FAKE_WANTED_LEVEL();
-- @return int
function GetFakeWantedLevel() end

-- Returns bit's boolean state from [offset] of [address].  Example: GAMEPLAY::IS_BIT_SET(bitAddress, 1);  To enable and disable bits, see: GAMEPLAY::SET_BIT(&bitAddress, 1);   // enable GAMEPLAY::CLEAR_BIT(&bitAddress, 1); // disable
-- @module native
-- @submodule gameplay
-- @see IS_BIT_SET
-- @usage BOOL IS_BIT_SET(int address, int offset);
-- @param address int
-- @param offset int
-- @return BOOL
function IsBitSet(address, offset) end

-- Hash collision
-- @module native
-- @submodule gameplay
-- @see USING_MISSION_CREATOR
-- @usage void USING_MISSION_CREATOR(BOOL toggle);
-- @param toggle BOOL
-- @return void
function UsingMissionCreator(toggle) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_MINIGAME_IN_PROGRESS
-- @usage void SET_MINIGAME_IN_PROGRESS(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetMinigameInProgress(toggle) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_MINIGAME_IN_PROGRESS
-- @usage BOOL IS_MINIGAME_IN_PROGRESS();
-- @return BOOL
function IsMinigameInProgress() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_THIS_A_MINIGAME_SCRIPT
-- @usage BOOL IS_THIS_A_MINIGAME_SCRIPT();
-- @return BOOL
function IsThisAMinigameScript() end

-- This function is hard-coded to always return 0.
-- @module native
-- @submodule gameplay
-- @see IS_SNIPER_INVERTED
-- @usage BOOL IS_SNIPER_INVERTED();
-- @return BOOL
function IsSniperInverted() end

-- anyone have a settingid dump?
-- @module native
-- @submodule gameplay
-- @see GET_PROFILE_SETTING
-- @usage int GET_PROFILE_SETTING(int profileSetting);
-- @param profileSetting int
-- @return int
function GetProfileSetting(profileSetting) end

-- is this like strcmp??
-- @module native
-- @submodule gameplay
-- @see ARE_STRINGS_EQUAL
-- @usage BOOL ARE_STRINGS_EQUAL(char* string1, char* string2);
-- @param string1 char*
-- @param string2 char*
-- @return BOOL
function AreStringsEqual(string1, string2) end

-- Compares two strings up to a specified number of characters.  Parameters: str1 - String to be compared. str2 - String to be compared. matchCase - Comparison will be case-sensitive. maxLength - Maximum number of characters to compare. A value of -1 indicates an infinite length.  Returns: A value indicating the relationship between the strings: <0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'A' < 'B', so result = -1) 0 - The contents of both strings are equal. >0 - The first non-matching character in 'str1' is less than the one in 'str2'. (e.g. 'B' > 'A', so result = 1)  Examples: GAMEPLAY::COMPARE_STRINGS("STRING", "string", false, -1); // 0; equal GAMEPLAY::COMPARE_STRINGS("TESTING", "test", false, 4); // 0; equal GAMEPLAY::COMPARE_STRINGS("R2D2", "R2xx", false, 2); // 0; equal GAMEPLAY::COMPARE_STRINGS("foo", "bar", false, -1); // 4; 'f' > 'b' GAMEPLAY::COMPARE_STRINGS("A", "A", true, 1); // 0; equal  When comparing case-sensitive strings, lower-case characters are greater than upper-case characters: GAMEPLAY::COMPARE_STRINGS("A", "a", true, 1); // -1; 'A' < 'a' GAMEPLAY::COMPARE_STRINGS("a", "A", true, 1); // 1; 'a' > 'A'
-- @module native
-- @submodule gameplay
-- @see COMPARE_STRINGS
-- @usage int COMPARE_STRINGS(char* str1, char* str2, BOOL matchCase, int maxLength);
-- @param str1 char*
-- @param str2 char*
-- @param matchCase BOOL
-- @param maxLength int
-- @return int
function CompareStrings(str1, str2, matchCase, maxLength) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see ABSI
-- @usage int ABSI(int value);
-- @param value int
-- @return int
function Absi(value) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see ABSF
-- @usage float ABSF(float value);
-- @param value float
-- @return float
function Absf(value) end

-- Determines whether there is a sniper bullet within the specified coordinates. The coordinates form a rectangle.
-- @module native
-- @submodule gameplay
-- @see IS_SNIPER_BULLET_IN_AREA
-- @usage BOOL IS_SNIPER_BULLET_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @return BOOL
function IsSniperBulletInArea(x1, y1, z1, x2, y2, z2) end

-- Determines whether there is a projectile within the specified coordinates. The coordinates form a rectangle.     ownedByPlayer = only projectiles fired by the player will be detected.
-- @module native
-- @submodule gameplay
-- @see IS_PROJECTILE_IN_AREA
-- @usage BOOL IS_PROJECTILE_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL ownedByPlayer);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param ownedByPlayer BOOL
-- @return BOOL
function IsProjectileInArea(x1, y1, z1, x2, y2, z2, ownedByPlayer) end

-- Determines whether there is a projectile of a specific type within the specified coordinates. The coordinates form a rectangle.  Note: This native hasn't been tested yet.
-- @module native
-- @submodule gameplay
-- @see IS_PROJECTILE_TYPE_IN_AREA
-- @usage BOOL IS_PROJECTILE_TYPE_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, int type, BOOL p7);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param type int
-- @param p7 BOOL
-- @return BOOL
function IsProjectileTypeInArea(x1, y1, z1, x2, y2, z2, type, p7) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_PROJECTILE_TYPE_IN_ANGLED_AREA
-- @usage BOOL IS_PROJECTILE_TYPE_IN_ANGLED_AREA(float p0, float p1, float p2, float p3, float p4, float p5, float p6, Any p7, BOOL p8);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 Any
-- @param p8 BOOL
-- @return BOOL
function IsProjectileTypeInAngledArea(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_BULLET_IN_ANGLED_AREA
-- @usage BOOL IS_BULLET_IN_ANGLED_AREA(float p0, float p1, float p2, float p3, float p4, float p5, float p6, BOOL p7);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 BOOL
-- @return BOOL
function IsBulletInAngledArea(p0, p1, p2, p3, p4, p5, p6, p7) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_BULLET_IN_AREA
-- @usage BOOL IS_BULLET_IN_AREA(float p0, float p1, float p2, float p3, BOOL p4);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 BOOL
-- @return BOOL
function IsBulletInArea(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_BULLET_IN_BOX
-- @usage BOOL IS_BULLET_IN_BOX(float p0, float p1, float p2, float p3, float p4, float p5, BOOL p6);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 BOOL
-- @return BOOL
function IsBulletInBox(p0, p1, p2, p3, p4, p5, p6) end

-- p3 - possibly radius?
-- @module native
-- @submodule gameplay
-- @see HAS_BULLET_IMPACTED_IN_AREA
-- @usage BOOL HAS_BULLET_IMPACTED_IN_AREA(float x, float y, float z, float p3, BOOL p4, BOOL p5);
-- @param x float
-- @param y float
-- @param z float
-- @param p3 float
-- @param p4 BOOL
-- @param p5 BOOL
-- @return BOOL
function HasBulletImpactedInArea(x, y, z, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see HAS_BULLET_IMPACTED_IN_BOX
-- @usage BOOL HAS_BULLET_IMPACTED_IN_BOX(float p0, float p1, float p2, float p3, float p4, float p5, BOOL p6, BOOL p7);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 BOOL
-- @param p7 BOOL
-- @return BOOL
function HasBulletImpactedInBox(p0, p1, p2, p3, p4, p5, p6, p7) end

-- PS4  MulleDK19: This function is hard-coded to always return 0.  Force67: I patched return result and got this : i.imgur.com/hUn7zSj.jpg  translate please?
-- @module native
-- @submodule gameplay
-- @see IS_ORBIS_VERSION
-- @usage BOOL IS_ORBIS_VERSION();
-- @return BOOL
function IsOrbisVersion() end

-- XBOX ONE  MulleDK19: This function is hard-coded to always return 0.
-- @module native
-- @submodule gameplay
-- @see IS_DURANGO_VERSION
-- @usage BOOL IS_DURANGO_VERSION();
-- @return BOOL
function IsDurangoVersion() end

-- XBOX 360  MulleDK19: This function is hard-coded to always return 0.
-- @module native
-- @submodule gameplay
-- @see IS_XBOX360_VERSION
-- @usage BOOL IS_XBOX360_VERSION();
-- @return BOOL
function IsXbox360Version() end

-- PS3  MulleDK19: This function is hard-coded to always return 0.
-- @module native
-- @submodule gameplay
-- @see IS_PS3_VERSION
-- @usage BOOL IS_PS3_VERSION();
-- @return BOOL
function IsPs3Version() end

-- PC  MulleDK19: This function is hard-coded to always return 1.
-- @module native
-- @submodule gameplay
-- @see IS_PC_VERSION
-- @usage BOOL IS_PC_VERSION();
-- @return BOOL
function IsPcVersion() end

-- if (GAMEPLAY::IS_AUSSIE_VERSION()) {     sub_127a9(&l_31, 1024); // l_31 |= 1024     l_129 = 3;     sub_129d2("AUSSIE VERSION IS TRUE!?!?!"); // DEBUG }  Used to block some of the prostitute stuff due to laws in Australia.
-- @module native
-- @submodule gameplay
-- @see IS_AUSSIE_VERSION
-- @usage BOOL IS_AUSSIE_VERSION();
-- @return BOOL
function IsAussieVersion() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_STRING_NULL
-- @usage BOOL IS_STRING_NULL(char* string);
-- @param string char*
-- @return BOOL
function IsStringNull(string) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_STRING_NULL_OR_EMPTY
-- @usage BOOL IS_STRING_NULL_OR_EMPTY(char* string);
-- @param string char*
-- @return BOOL
function IsStringNullOrEmpty(string) end

-- Returns false if it's a null or empty string or if the string is too long. outInteger will be set to -999 in that case.  If all checks have passed successfully, the return value will be set to whatever strtol(string, 0i64, 10); returns.
-- @module native
-- @submodule gameplay
-- @see STRING_TO_INT
-- @usage BOOL STRING_TO_INT(char* string, int* outInteger);
-- @param string char*
-- @param outInteger int*
-- @return BOOL
function StringToInt(string, outInteger) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_BITS_IN_RANGE
-- @usage void SET_BITS_IN_RANGE(int* var, int rangeStart, int rangeEnd, int p3);
-- @param var int*
-- @param rangeStart int
-- @param rangeEnd int
-- @param p3 int
-- @return void
function SetBitsInRange(var, rangeStart, rangeEnd, p3) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_BITS_IN_RANGE
-- @usage int GET_BITS_IN_RANGE(int var, int rangeStart, int rangeEnd);
-- @param var int
-- @param rangeStart int
-- @param rangeEnd int
-- @return int
function GetBitsInRange(var, rangeStart, rangeEnd) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see ADD_STUNT_JUMP
-- @usage int ADD_STUNT_JUMP(float p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9, float p10, float p11, float p12, float p13, float p14, Any p15, Any p16);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 float
-- @param p8 float
-- @param p9 float
-- @param p10 float
-- @param p11 float
-- @param p12 float
-- @param p13 float
-- @param p14 float
-- @param p15 Any
-- @param p16 Any
-- @return int
function AddStuntJump(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see ADD_STUNT_JUMP_ANGLED
-- @usage int ADD_STUNT_JUMP_ANGLED(float p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9, float p10, float p11, float p12, float p13, float p14, float p15, float p16, Any p17, Any p18);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 float
-- @param p8 float
-- @param p9 float
-- @param p10 float
-- @param p11 float
-- @param p12 float
-- @param p13 float
-- @param p14 float
-- @param p15 float
-- @param p16 float
-- @param p17 Any
-- @param p18 Any
-- @return int
function AddStuntJumpAngled(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see DELETE_STUNT_JUMP
-- @usage void DELETE_STUNT_JUMP(int p0);
-- @param p0 int
-- @return void
function DeleteStuntJump(p0) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see ENABLE_STUNT_JUMP_SET
-- @usage void ENABLE_STUNT_JUMP_SET(int p0);
-- @param p0 int
-- @return void
function EnableStuntJumpSet(p0) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see DISABLE_STUNT_JUMP_SET
-- @usage void DISABLE_STUNT_JUMP_SET(int p0);
-- @param p0 int
-- @return void
function DisableStuntJumpSet(p0) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_STUNT_JUMP_IN_PROGRESS
-- @usage BOOL IS_STUNT_JUMP_IN_PROGRESS();
-- @return BOOL
function IsStuntJumpInProgress() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see IS_STUNT_JUMP_MESSAGE_SHOWING
-- @usage BOOL IS_STUNT_JUMP_MESSAGE_SHOWING();
-- @return BOOL
function IsStuntJumpMessageShowing() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see CANCEL_STUNT_JUMP
-- @usage void CANCEL_STUNT_JUMP();
-- @return void
function CancelStuntJump() end

-- Make sure to call this from the correct thread if you're using multiple threads because all other threads except the one which is calling SET_GAME_PAUSED will be paused which means you will lose control and the game remains in paused mode until you exit GTA5.exe
-- @module native
-- @submodule gameplay
-- @see SET_GAME_PAUSED
-- @usage void SET_GAME_PAUSED(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetGamePaused(toggle) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_THIS_SCRIPT_CAN_BE_PAUSED
-- @usage void SET_THIS_SCRIPT_CAN_BE_PAUSED(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetThisScriptCanBePaused(toggle) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT
-- @usage void SET_THIS_SCRIPT_CAN_REMOVE_BLIPS_CREATED_BY_ANY_SCRIPT(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetThisScriptCanRemoveBlipsCreatedByAnyScript(toggle) end

-- This function is hard-coded to always return 0.
-- @module native
-- @submodule gameplay
-- @see IS_FRONTEND_FADING
-- @usage BOOL IS_FRONTEND_FADING();
-- @return BOOL
function IsFrontendFading() end

-- spawns a few distant/out-of-sight peds, vehicles, animals etc each time it is called
-- @module native
-- @submodule gameplay
-- @see POPULATE_NOW
-- @usage void POPULATE_NOW();
-- @return void
function PopulateNow() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see GET_INDEX_OF_CURRENT_LEVEL
-- @usage int GET_INDEX_OF_CURRENT_LEVEL();
-- @return int
function GetIndexOfCurrentLevel() end

-- level can be from 0 to 3 0: 9.8  1: 2.4  2: 0.1 - very low 3: 0.0   //SuckMyCoke
-- @module native
-- @submodule gameplay
-- @see SET_GRAVITY_LEVEL
-- @usage void SET_GRAVITY_LEVEL(int level);
-- @param level int
-- @return void
function SetGravityLevel(level) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see START_SAVE_DATA
-- @usage void START_SAVE_DATA(Any* p0, Any p1, BOOL p2);
-- @param p0 Any*
-- @param p1 Any
-- @param p2 BOOL
-- @return void
function StartSaveData(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see STOP_SAVE_DATA
-- @usage void STOP_SAVE_DATA();
-- @return void
function StopSaveData() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see REGISTER_INT_TO_SAVE
-- @usage void REGISTER_INT_TO_SAVE(Any* p0, char* name);
-- @param p0 Any*
-- @param name char*
-- @return void
function RegisterIntToSave(p0, name) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see REGISTER_ENUM_TO_SAVE
-- @usage void REGISTER_ENUM_TO_SAVE(Any* p0, char* name);
-- @param p0 Any*
-- @param name char*
-- @return void
function RegisterEnumToSave(p0, name) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see REGISTER_FLOAT_TO_SAVE
-- @usage void REGISTER_FLOAT_TO_SAVE(Any* p0, char* name);
-- @param p0 Any*
-- @param name char*
-- @return void
function RegisterFloatToSave(p0, name) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see REGISTER_BOOL_TO_SAVE
-- @usage void REGISTER_BOOL_TO_SAVE(Any* p0, char* name);
-- @param p0 Any*
-- @param name char*
-- @return void
function RegisterBoolToSave(p0, name) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see REGISTER_TEXT_LABEL_TO_SAVE
-- @usage void REGISTER_TEXT_LABEL_TO_SAVE(Any* p0, char* name);
-- @param p0 Any*
-- @param name char*
-- @return void
function RegisterTextLabelToSave(p0, name) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see STOP_SAVE_STRUCT
-- @usage void STOP_SAVE_STRUCT();
-- @return void
function StopSaveStruct() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see STOP_SAVE_ARRAY
-- @usage void STOP_SAVE_ARRAY();
-- @return void
function StopSaveArray() end

-- Found dispatch service types in the exe: enum eDispatchServiceType { 	PoliceAutomobileDispatch = 1, 	PoliceHelicopterDispatch = 2, 	FireDepartmentDispatch = 3, 	SwatAutomobileDispatch = 4, 	AmbulanceDepartmentDispatch = 5, 	PoliceRidersDispatch = 6, 	PoliceVehicleRequest = 7, 	PoliceRoadBlockDispatch = 8, 	GangDispatch = 11, 	SwatHelicopterDispatch = 12, 	PoliceBoatDispatch = 13, 	ArmyVehicleDispatch = 14, 	BikerBackupDispatch = 15 };  By making toggle false it disables the dispatch.  curious if this is what they used when you toggled on and off cops in a GTA IV freemode you hosted. Sad they got rid of the option to make a private session without cops. Also on x360 seems with or without neverWanted on, setting these to all false in SP of course doesn't seem to work. I would understand getting stars, but cops are still dispatched and combat you.
-- @module native
-- @submodule gameplay
-- @see ENABLE_DISPATCH_SERVICE
-- @usage void ENABLE_DISPATCH_SERVICE(int dispatchService, BOOL toggle);
-- @param dispatchService int
-- @param toggle BOOL
-- @return void
function EnableDispatchService(dispatchService, toggle) end

-- p0 could be type  ===================================================== enum IncidentTypes{     FireDepartment = 3,     Paramedics = 5,     Police = 7,     PedsInCavalcades = 11,      Merryweather = 14 };  As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  Side Note 2: I say it breaks as if you call this proper, if(CREATE_INCIDENT) etc it will return false if you do as I said above. =====================================================
-- @module native
-- @submodule gameplay
-- @see CREATE_INCIDENT
-- @usage BOOL CREATE_INCIDENT(int incidentType, float x, float y, float z, int p5, float radius, int* outIncidentID);
-- @param incidentType int
-- @param x float
-- @param y float
-- @param z float
-- @param p5 int
-- @param radius float
-- @param outIncidentID int*
-- @return BOOL
function CreateIncident(incidentType, x, y, z, p5, radius, outIncidentID) end

-- p0 could be type (valueused in scripts: 14, 7, 5, 3, 11) p1 is a return from get_player_ped() in am_gang_call.c, but player_ped_id() in other (non am) scripts. p3 is usually 0f or 3f  ===================================================== enum IncidentTypes{     FireDepartment = 3,     Paramedics = 5,     Police = 7,     PedsInCavalcades = 11,      Merryweather = 14 };  As for the 'police' incident, it will call police cars to you, but unlike PedsInCavalcades & Merryweather they won't start shooting at you unless you shoot first or shoot at them. The top 2 however seem to cancel theirselves if there is noone dead around you or a fire. I only figured them out as I found out the 3rd param is definately the amountOfPeople and they called incident 3 in scripts with 4 people (which the firetruck has) and incident 5 with 2 people (which the ambulence has). The 4 param I cant say is radius, but for the pedsInCavalcades and Merryweather R* uses 0.0f and for the top 3 (Emergency Services) they use 3.0f.   Side Note: It seems calling the pedsInCavalcades or Merryweather then removing it seems to break you from calling the EmergencyEvents and I also believe pedsInCavalcades. (The V cavalcades of course not IV).  Side Note 2: I say it breaks as if you call this proper, if(CREATE_INCIDENT) etc it will return false if you do as I said above. =====================================================
-- @module native
-- @submodule gameplay
-- @see CREATE_INCIDENT_WITH_ENTITY
-- @usage BOOL CREATE_INCIDENT_WITH_ENTITY(int incidentType, Ped ped, int amountOfPeople, float radius, int* outIncidentID);
-- @param incidentType int
-- @param ped Ped
-- @param amountOfPeople int
-- @param radius float
-- @param outIncidentID int*
-- @return BOOL
function CreateIncidentWithEntity(incidentType, ped, amountOfPeople, radius, outIncidentID) end

-- Delete an incident with a given id.  ======================================================= Correction, I have change this to int, instead of int* as it doesn't use a pointer to the createdIncident. If you try it you will crash (or) freeze. =======================================================
-- @module native
-- @submodule gameplay
-- @see DELETE_INCIDENT
-- @usage void DELETE_INCIDENT(int incidentId);
-- @param incidentId int
-- @return void
function DeleteIncident(incidentId) end

-- ======================================================= Correction, I have change this to int, instead of int* as it doesn't use a pointer to the createdIncident. If you try it you will crash (or) freeze. =======================================================
-- @module native
-- @submodule gameplay
-- @see IS_INCIDENT_VALID
-- @usage BOOL IS_INCIDENT_VALID(int incidentId);
-- @param incidentId int
-- @return BOOL
function IsIncidentValid(incidentId) end

-- Finds a position ahead of the player by predicting the players next actions. The positions match path finding node positions. When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.  ======================================================= I may sort this with alter research, but if someone already knows please tell what the difference in  X2, Y2, Z2 is. I doubt it's rotation. Is it like  checkpoints where X1, Y1, Z1 is your/a position and X2, Y2, Z2 is a given position ahead of that position? =======================================================
-- @module native
-- @submodule gameplay
-- @see FIND_SPAWN_POINT_IN_DIRECTION
-- @usage BOOL FIND_SPAWN_POINT_IN_DIRECTION(float x1, float y1, float z1, float x2, float y2, float z2, float distance, Vector3* spawnPoint);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param distance float
-- @param spawnPoint Vector3*
-- @return BOOL
function FindSpawnPointInDirection(x1, y1, z1, x2, y2, z2, distance, spawnPoint) end

-- Makes the ped jump around like they're in a tennis match
-- @module native
-- @submodule gameplay
-- @see ENABLE_TENNIS_MODE
-- @usage void ENABLE_TENNIS_MODE(Ped ped, BOOL toggle, BOOL p2);
-- @param ped Ped
-- @param toggle BOOL
-- @param p2 BOOL
-- @return void
function EnableTennisMode(ped, toggle, p2) end

-- Return whether tennis mode is active or not.
-- @module native
-- @submodule gameplay
-- @see IS_TENNIS_MODE
-- @usage BOOL IS_TENNIS_MODE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsTennisMode(ped) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see RESET_DISPATCH_IDEAL_SPAWN_DISTANCE
-- @usage void RESET_DISPATCH_IDEAL_SPAWN_DISTANCE();
-- @return void
function ResetDispatchIdealSpawnDistance() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_DISPATCH_IDEAL_SPAWN_DISTANCE
-- @usage void SET_DISPATCH_IDEAL_SPAWN_DISTANCE(float p0);
-- @param p0 float
-- @return void
function SetDispatchIdealSpawnDistance(p0) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS
-- @usage void SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS(Any p0, float p1);
-- @param p0 Any
-- @param p1 float
-- @return void
function SetDispatchTimeBetweenSpawnAttempts(p0, p1) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS_MULTIPLIER
-- @usage void SET_DISPATCH_TIME_BETWEEN_SPAWN_ATTEMPTS_MULTIPLIER(Any p0, float p1);
-- @param p0 Any
-- @param p1 float
-- @return void
function SetDispatchTimeBetweenSpawnAttemptsMultiplier(p0, p1) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see REMOVE_DISPATCH_SPAWN_BLOCKING_AREA
-- @usage void REMOVE_DISPATCH_SPAWN_BLOCKING_AREA(Any p0);
-- @param p0 Any
-- @return void
function RemoveDispatchSpawnBlockingArea(p0) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see RESET_DISPATCH_SPAWN_BLOCKING_AREAS
-- @usage void RESET_DISPATCH_SPAWN_BLOCKING_AREAS();
-- @return void
function ResetDispatchSpawnBlockingAreas() end

-- sfink: note, p0 is set to 6 for PC platform in at least 1 script, or to `unk::_get_ui_language_id() == 0` otherwise.  NOTE: windowTitle uses text labels, and an invalid value will display nothing.  www.gtaforums.com/topic/788343-vrel-script-hook-v/?p=1067380474  windowTitle's ----------------- CELL_EMAIL_BOD	=	"Enter your Eyefind message" CELL_EMAIL_BODE	=	"Message too long. Try again" CELL_EMAIL_BODF	=	"Forbidden message. Try again" CELL_EMAIL_SOD	=	"Enter your Eyefind subject" CELL_EMAIL_SODE	=	"Subject too long. Try again" CELL_EMAIL_SODF	=	"Forbidden text. Try again" CELL_EMASH_BOD	=	"Enter your Eyefind message" CELL_EMASH_BODE	=	"Message too long. Try again" CELL_EMASH_BODF	=	"Forbidden message. Try again" CELL_EMASH_SOD	=	"Enter your Eyefind subject" CELL_EMASH_SODE	=	"Subject too long. Try again" CELL_EMASH_SODF	=	"Forbidden Text. Try again" FMMC_KEY_TIP10	=	"Enter Synopsis" FMMC_KEY_TIP12	=	"Enter Custom Team Name" FMMC_KEY_TIP12F	=	"Forbidden Text. Try again" FMMC_KEY_TIP12N	=	"Custom Team Name" FMMC_KEY_TIP8	=	"Enter Message" FMMC_KEY_TIP8F	=	"Forbidden Text. Try again" FMMC_KEY_TIP8FS	=	"Invalid Message. Try again" FMMC_KEY_TIP8S	=	"Enter Message" FMMC_KEY_TIP9	=	"Enter Outfit Name" FMMC_KEY_TIP9F	=	"Invalid Outfit Name. Try again" FMMC_KEY_TIP9N	=	"Outfit Name" PM_NAME_CHALL	=	"Enter Challenge Name"
-- @module native
-- @submodule gameplay
-- @see DISPLAY_ONSCREEN_KEYBOARD
-- @usage void DISPLAY_ONSCREEN_KEYBOARD(int p0, char* windowTitle, char* p2, char* defaultText, char* defaultConcat1, char* defaultConcat2, char* defaultConcat3, int maxInputLength);
-- @param p0 int
-- @param windowTitle char*
-- @param p2 char*
-- @param defaultText char*
-- @param defaultConcat1 char*
-- @param defaultConcat2 char*
-- @param defaultConcat3 char*
-- @param maxInputLength int
-- @return void
function DisplayOnscreenKeyboard(p0, windowTitle, p2, defaultText, defaultConcat1, defaultConcat2, defaultConcat3, maxInputLength) end

-- Returns the current status of the onscreen keyboard, and updates the output.  Status Codes:  0 - User still editing 1 - User has finished editing 2 - User has canceled editing 3 - Keyboard isn't active
-- @module native
-- @submodule gameplay
-- @see UPDATE_ONSCREEN_KEYBOARD
-- @usage int UPDATE_ONSCREEN_KEYBOARD();
-- @return int
function UpdateOnscreenKeyboard() end

-- Returns NULL unless UPDATE_ONSCREEN_KEYBOARD() returns 1 in the same tick.
-- @module native
-- @submodule gameplay
-- @see GET_ONSCREEN_KEYBOARD_RESULT
-- @usage char* GET_ONSCREEN_KEYBOARD_RESULT();
-- @return char*
function GetOnscreenKeyboardResult() end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_EXPLOSIVE_AMMO_THIS_FRAME
-- @usage Any SET_EXPLOSIVE_AMMO_THIS_FRAME(Player player);
-- @param player Player
-- @return Any
function SetExplosiveAmmoThisFrame(player) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_FIRE_AMMO_THIS_FRAME
-- @usage Any SET_FIRE_AMMO_THIS_FRAME(Player player);
-- @param player Player
-- @return Any
function SetFireAmmoThisFrame(player) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_EXPLOSIVE_MELEE_THIS_FRAME
-- @usage Any SET_EXPLOSIVE_MELEE_THIS_FRAME(Player player);
-- @param player Player
-- @return Any
function SetExplosiveMeleeThisFrame(player) end

-- @todo
-- @module native
-- @submodule gameplay
-- @see SET_SUPER_JUMP_THIS_FRAME
-- @usage Any SET_SUPER_JUMP_THIS_FRAME(Player player);
-- @param player Player
-- @return Any
function SetSuperJumpThisFrame(player) end