-- Starts a fire:  xyz: Location of fire maxChildren: The max amount of times a fire can spread to other objects. Must be 25 or less, or the function will do nothing. isGasFire: Whether or not the fire is powered by gasoline.
-- @module native
-- @submodule fire
-- @see START_SCRIPT_FIRE
-- @usage int START_SCRIPT_FIRE(float X, float Y, float Z, int maxChildren, BOOL isGasFire);
-- @param X float
-- @param Y float
-- @param Z float
-- @param maxChildren int
-- @param isGasFire BOOL
-- @return int
function StartScriptFire(X, Y, Z, maxChildren, isGasFire) end

-- @todo
-- @module native
-- @submodule fire
-- @see REMOVE_SCRIPT_FIRE
-- @usage void REMOVE_SCRIPT_FIRE(int fireHandle);
-- @param fireHandle int
-- @return void
function RemoveScriptFire(fireHandle) end

-- @todo
-- @module native
-- @submodule fire
-- @see START_ENTITY_FIRE
-- @usage Any START_ENTITY_FIRE(Entity entity);
-- @param entity Entity
-- @return Any
function StartEntityFire(entity) end

-- @todo
-- @module native
-- @submodule fire
-- @see STOP_ENTITY_FIRE
-- @usage void STOP_ENTITY_FIRE(Entity entity);
-- @param entity Entity
-- @return void
function StopEntityFire(entity) end

-- @todo
-- @module native
-- @submodule fire
-- @see IS_ENTITY_ON_FIRE
-- @usage BOOL IS_ENTITY_ON_FIRE(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityOnFire(entity) end

-- @todo
-- @module native
-- @submodule fire
-- @see GET_NUMBER_OF_FIRES_IN_RANGE
-- @usage int GET_NUMBER_OF_FIRES_IN_RANGE(float x, float y, float z, float radius);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @return int
function GetNumberOfFiresInRange(x, y, z, radius) end

-- @todo
-- @module native
-- @submodule fire
-- @see STOP_FIRE_IN_RANGE
-- @usage void STOP_FIRE_IN_RANGE(float x, float y, float z, float radius);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @return void
function StopFireInRange(x, y, z, radius) end

-- Returns TRUE if it found something. FALSE if not.
-- @module native
-- @submodule fire
-- @see GET_CLOSEST_FIRE_POS
-- @usage BOOL GET_CLOSEST_FIRE_POS(Vector3* outPosition, float x, float y, float z);
-- @param outPosition Vector3*
-- @param x float
-- @param y float
-- @param z float
-- @return BOOL
function GetClosestFirePos(outPosition, x, y, z) end

-- BOOL isAudible = If explosion makes a sound. BOOL isInvisible = If the explosion is invisible or not.  this native is missing a new argument: noDamage nodamage = false: damage || nodamage = true: no damage  enum ExplosionTypes { 	EXPLOSION_GRENADE, 	EXPLOSION_GRENADELAUNCHER, 	EXPLOSION_STICKYBOMB, 	EXPLOSION_MOLOTOV, 	EXPLOSION_ROCKET, 	EXPLOSION_TANKSHELL, 	EXPLOSION_HI_OCTANE, 	EXPLOSION_CAR, 	EXPLOSION_PLANE, 	EXPLOSION_PETROL_PUMP, 	EXPLOSION_BIKE, 	EXPLOSION_DIR_STEAM, 	EXPLOSION_DIR_FLAME, 	EXPLOSION_DIR_WATER_HYDRANT, 	EXPLOSION_DIR_GAS_CANISTER, 	EXPLOSION_BOAT, 	EXPLOSION_SHIP_DESTROY, 	EXPLOSION_TRUCK, 	EXPLOSION_BULLET, 	EXPLOSION_SMOKEGRENADELAUNCHER, 	EXPLOSION_SMOKEGRENADE, 	EXPLOSION_BZGAS, 	EXPLOSION_FLARE, 	EXPLOSION_GAS_CANISTER, 	EXPLOSION_EXTINGUISHER, 	EXPLOSION_PROGRAMMABLEAR, 	EXPLOSION_TRAIN, 	EXPLOSION_BARREL, 	EXPLOSION_PROPANE, 	EXPLOSION_BLIMP, 	EXPLOSION_DIR_FLAME_EXPLODE, 	EXPLOSION_TANKER, 	EXPLOSION_PLANE_ROCKET, 	EXPLOSION_VEHICLE_BULLET, 	EXPLOSION_GAS_TANK, 	EXPLOSION_BIRD_CRAP };
-- @module native
-- @submodule fire
-- @see ADD_EXPLOSION
-- @usage void ADD_EXPLOSION(float x, float y, float z, int explosionType, float damageScale, BOOL isAudible, BOOL isInvisible, float cameraShake);
-- @param x float
-- @param y float
-- @param z float
-- @param explosionType int
-- @param damageScale float
-- @param isAudible BOOL
-- @param isInvisible BOOL
-- @param cameraShake float
-- @return void
function AddExplosion(x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) end

-- enum ExplosionTypes { 	EXPLOSION_GRENADE, 	EXPLOSION_GRENADELAUNCHER, 	EXPLOSION_STICKYBOMB, 	EXPLOSION_MOLOTOV, 	EXPLOSION_ROCKET, 	EXPLOSION_TANKSHELL, 	EXPLOSION_HI_OCTANE, 	EXPLOSION_CAR, 	EXPLOSION_PLANE, 	EXPLOSION_PETROL_PUMP, 	EXPLOSION_BIKE, 	EXPLOSION_DIR_STEAM, 	EXPLOSION_DIR_FLAME, 	EXPLOSION_DIR_WATER_HYDRANT, 	EXPLOSION_DIR_GAS_CANISTER, 	EXPLOSION_BOAT, 	EXPLOSION_SHIP_DESTROY, 	EXPLOSION_TRUCK, 	EXPLOSION_BULLET, 	EXPLOSION_SMOKEGRENADELAUNCHER, 	EXPLOSION_SMOKEGRENADE, 	EXPLOSION_BZGAS, 	EXPLOSION_FLARE, 	EXPLOSION_GAS_CANISTER, 	EXPLOSION_EXTINGUISHER, 	EXPLOSION_PROGRAMMABLEAR, 	EXPLOSION_TRAIN, 	EXPLOSION_BARREL, 	EXPLOSION_PROPANE, 	EXPLOSION_BLIMP, 	EXPLOSION_DIR_FLAME_EXPLODE, 	EXPLOSION_TANKER, 	EXPLOSION_PLANE_ROCKET, 	EXPLOSION_VEHICLE_BULLET, 	EXPLOSION_GAS_TANK, 	EXPLOSION_BIRD_CRAP };   BOOL isAudible = If explosion makes a sound. BOOL isInvisible = If the explosion is invisible or not.
-- @module native
-- @submodule fire
-- @see ADD_OWNED_EXPLOSION
-- @usage void ADD_OWNED_EXPLOSION(Ped ped, float x, float y, float z, int explosionType, float damageScale, BOOL isAudible, BOOL isInvisible, float cameraShake);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param explosionType int
-- @param damageScale float
-- @param isAudible BOOL
-- @param isInvisible BOOL
-- @param cameraShake float
-- @return void
function AddOwnedExplosion(ped, x, y, z, explosionType, damageScale, isAudible, isInvisible, cameraShake) end

-- @todo
-- @module native
-- @submodule fire
-- @see ADD_EXPLOSION_WITH_USER_VFX
-- @usage void ADD_EXPLOSION_WITH_USER_VFX(float x, float y, float z, int explosionType, Hash explosionFx, float damageScale, BOOL isAudible, BOOL isInvisible, float cameraShake);
-- @param x float
-- @param y float
-- @param z float
-- @param explosionType int
-- @param explosionFx Hash
-- @param damageScale float
-- @param isAudible BOOL
-- @param isInvisible BOOL
-- @param cameraShake float
-- @return void
function AddExplosionWithUserVfx(x, y, z, explosionType, explosionFx, damageScale, isAudible, isInvisible, cameraShake) end

-- @todo
-- @module native
-- @submodule fire
-- @see IS_EXPLOSION_IN_AREA
-- @usage BOOL IS_EXPLOSION_IN_AREA(int explosionType, float x1, float y1, float z1, float x2, float y2, float z2);
-- @param explosionType int
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @return BOOL
function IsExplosionInArea(explosionType, x1, y1, z1, x2, y2, z2) end

-- @todo
-- @module native
-- @submodule fire
-- @see IS_EXPLOSION_IN_SPHERE
-- @usage BOOL IS_EXPLOSION_IN_SPHERE(int explosionType, float x, float y, float z, float radius);
-- @param explosionType int
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @return BOOL
function IsExplosionInSphere(explosionType, x, y, z, radius) end

-- @todo
-- @module native
-- @submodule fire
-- @see IS_EXPLOSION_IN_ANGLED_AREA
-- @usage BOOL IS_EXPLOSION_IN_ANGLED_AREA(int explosionType, float x1, float y1, float z1, float x2, float y2, float z2, float angle);
-- @param explosionType int
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param angle float
-- @return BOOL
function IsExplosionInAngledArea(explosionType, x1, y1, z1, x2, y2, z2, angle) end