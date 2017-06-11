-- Starts a fire:  xyz: Location of fire maxChildren: The max amount of times a fire can spread to other objects. Must be 25 or less, or the function will do nothing. isGasFire: Whether or not the fire is powered by gasoline.
-- @module native
-- @submodule fire
-- @see START_SCRIPT_FIRE
-- @usage int START_SCRIPT_FIRE(float X, float Y, float Z, int maxChildren, BOOL isGasFire);
-- @param X float
-- @param float
-- @param int
-- @param BOOL
-- @return int
function StartScriptFire() end

-- @todo
-- @module native
-- @submodule fire
-- @see REMOVE_SCRIPT_FIRE
-- @usage void REMOVE_SCRIPT_FIRE(int fireHandle);
-- @param fireHandle int
-- @return void
function RemoveScriptFire() end

-- @todo
-- @module native
-- @submodule fire
-- @see START_ENTITY_FIRE
-- @usage Any START_ENTITY_FIRE(Entity entity);
-- @param entity Entity
-- @return Any
function StartEntityFire() end

-- @todo
-- @module native
-- @submodule fire
-- @see STOP_ENTITY_FIRE
-- @usage void STOP_ENTITY_FIRE(Entity entity);
-- @param entity Entity
-- @return void
function StopEntityFire() end

-- @todo
-- @module native
-- @submodule fire
-- @see IS_ENTITY_ON_FIRE
-- @usage BOOL IS_ENTITY_ON_FIRE(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityOnFire() end

-- @todo
-- @module native
-- @submodule fire
-- @see GET_NUMBER_OF_FIRES_IN_RANGE
-- @usage int GET_NUMBER_OF_FIRES_IN_RANGE(float x, float y, float z, float radius);
-- @param x float
-- @param float
-- @return int
function GetNumberOfFiresInRange() end

-- @todo
-- @module native
-- @submodule fire
-- @see STOP_FIRE_IN_RANGE
-- @usage void STOP_FIRE_IN_RANGE(float x, float y, float z, float radius);
-- @param x float
-- @param float
-- @return void
function StopFireInRange() end

-- Returns TRUE if it found something. FALSE if not.
-- @module native
-- @submodule fire
-- @see GET_CLOSEST_FIRE_POS
-- @usage BOOL GET_CLOSEST_FIRE_POS(Vector3* outPosition, float x, float y, float z);
-- @param outPosition Vector3*
-- @param float
-- @return BOOL
function GetClosestFirePos() end

-- BOOL isAudible = If explosion makes a sound. BOOL isInvisible = If the explosion is invisible or not.  this native is missing a new argument: noDamage nodamage = false: damage || nodamage = true: no damage  enum ExplosionTypes { 	EXPLOSION_GRENADE, 	EXPLOSION_GRENADELAUNCHER, 	EXPLOSION_STICKYBOMB, 	EXPLOSION_MOLOTOV, 	EXPLOSION_ROCKET, 	EXPLOSION_TANKSHELL, 	EXPLOSION_HI_OCTANE, 	EXPLOSION_CAR, 	EXPLOSION_PLANE, 	EXPLOSION_PETROL_PUMP, 	EXPLOSION_BIKE, 	EXPLOSION_DIR_STEAM, 	EXPLOSION_DIR_FLAME, 	EXPLOSION_DIR_WATER_HYDRANT, 	EXPLOSION_DIR_GAS_CANISTER, 	EXPLOSION_BOAT, 	EXPLOSION_SHIP_DESTROY, 	EXPLOSION_TRUCK, 	EXPLOSION_BULLET, 	EXPLOSION_SMOKEGRENADELAUNCHER, 	EXPLOSION_SMOKEGRENADE, 	EXPLOSION_BZGAS, 	EXPLOSION_FLARE, 	EXPLOSION_GAS_CANISTER, 	EXPLOSION_EXTINGUISHER, 	EXPLOSION_PROGRAMMABLEAR, 	EXPLOSION_TRAIN, 	EXPLOSION_BARREL, 	EXPLOSION_PROPANE, 	EXPLOSION_BLIMP, 	EXPLOSION_DIR_FLAME_EXPLODE, 	EXPLOSION_TANKER, 	EXPLOSION_PLANE_ROCKET, 	EXPLOSION_VEHICLE_BULLET, 	EXPLOSION_GAS_TANK, 	EXPLOSION_BIRD_CRAP };
-- @module native
-- @submodule fire
-- @see ADD_EXPLOSION
-- @usage void ADD_EXPLOSION(float x, float y, float z, int explosionType, float damageScale, BOOL isAudible, BOOL isInvisible, float cameraShake);
-- @param x float
-- @param float
-- @param int
-- @param BOOL
-- @return void
function AddExplosion() end

-- enum ExplosionTypes { 	EXPLOSION_GRENADE, 	EXPLOSION_GRENADELAUNCHER, 	EXPLOSION_STICKYBOMB, 	EXPLOSION_MOLOTOV, 	EXPLOSION_ROCKET, 	EXPLOSION_TANKSHELL, 	EXPLOSION_HI_OCTANE, 	EXPLOSION_CAR, 	EXPLOSION_PLANE, 	EXPLOSION_PETROL_PUMP, 	EXPLOSION_BIKE, 	EXPLOSION_DIR_STEAM, 	EXPLOSION_DIR_FLAME, 	EXPLOSION_DIR_WATER_HYDRANT, 	EXPLOSION_DIR_GAS_CANISTER, 	EXPLOSION_BOAT, 	EXPLOSION_SHIP_DESTROY, 	EXPLOSION_TRUCK, 	EXPLOSION_BULLET, 	EXPLOSION_SMOKEGRENADELAUNCHER, 	EXPLOSION_SMOKEGRENADE, 	EXPLOSION_BZGAS, 	EXPLOSION_FLARE, 	EXPLOSION_GAS_CANISTER, 	EXPLOSION_EXTINGUISHER, 	EXPLOSION_PROGRAMMABLEAR, 	EXPLOSION_TRAIN, 	EXPLOSION_BARREL, 	EXPLOSION_PROPANE, 	EXPLOSION_BLIMP, 	EXPLOSION_DIR_FLAME_EXPLODE, 	EXPLOSION_TANKER, 	EXPLOSION_PLANE_ROCKET, 	EXPLOSION_VEHICLE_BULLET, 	EXPLOSION_GAS_TANK, 	EXPLOSION_BIRD_CRAP };   BOOL isAudible = If explosion makes a sound. BOOL isInvisible = If the explosion is invisible or not.
-- @module native
-- @submodule fire
-- @see ADD_OWNED_EXPLOSION
-- @usage void ADD_OWNED_EXPLOSION(Ped ped, float x, float y, float z, int explosionType, float damageScale, BOOL isAudible, BOOL isInvisible, float cameraShake);
-- @param ped Ped
-- @param float
-- @param int
-- @param BOOL
-- @return void
function AddOwnedExplosion() end

-- @todo
-- @module native
-- @submodule fire
-- @see ADD_EXPLOSION_WITH_USER_VFX
-- @usage void ADD_EXPLOSION_WITH_USER_VFX(float x, float y, float z, int explosionType, Hash explosionFx, float damageScale, BOOL isAudible, BOOL isInvisible, float cameraShake);
-- @param x float
-- @param float
-- @param int
-- @param Hash
-- @param BOOL
-- @return void
function AddExplosionWithUserVfx() end

-- @todo
-- @module native
-- @submodule fire
-- @see IS_EXPLOSION_IN_AREA
-- @usage BOOL IS_EXPLOSION_IN_AREA(int explosionType, float x1, float y1, float z1, float x2, float y2, float z2);
-- @param explosionType int
-- @param float
-- @return BOOL
function IsExplosionInArea() end

-- @todo
-- @module native
-- @submodule fire
-- @see IS_EXPLOSION_IN_SPHERE
-- @usage BOOL IS_EXPLOSION_IN_SPHERE(int explosionType, float x, float y, float z, float radius);
-- @param explosionType int
-- @param float
-- @return BOOL
function IsExplosionInSphere() end

-- @todo
-- @module native
-- @submodule fire
-- @see IS_EXPLOSION_IN_ANGLED_AREA
-- @usage BOOL IS_EXPLOSION_IN_ANGLED_AREA(int explosionType, float x1, float y1, float z1, float x2, float y2, float z2, float angle);
-- @param explosionType int
-- @param float
-- @return BOOL
function IsExplosionInAngledArea() end