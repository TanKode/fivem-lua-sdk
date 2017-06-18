-- Checks if the Entity exists
-- @module native
-- @submodule entity
-- @see DOES_ENTITY_EXIST
-- @usage BOOL DOES_ENTITY_EXIST(Entity entity);
-- @param entity Entity
-- @return BOOL
function DoesEntityExist(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see DOES_ENTITY_BELONG_TO_THIS_SCRIPT
-- @usage BOOL DOES_ENTITY_BELONG_TO_THIS_SCRIPT(Entity entity, BOOL p1);
-- @param entity Entity
-- @param p1 BOOL
-- @return BOOL
function DoesEntityBelongToThisScript(entity, p1) end

-- @todo
-- @module native
-- @submodule entity
-- @see DOES_ENTITY_HAVE_DRAWABLE
-- @usage BOOL DOES_ENTITY_HAVE_DRAWABLE(Entity entity);
-- @param entity Entity
-- @return BOOL
function DoesEntityHaveDrawable(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see DOES_ENTITY_HAVE_PHYSICS
-- @usage BOOL DOES_ENTITY_HAVE_PHYSICS(Entity entity);
-- @param entity Entity
-- @return BOOL
function DoesEntityHavePhysics(entity) end

-- P3 is always 3 as far as i cant tell  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_ANIM_FINISHED
-- @usage BOOL HAS_ENTITY_ANIM_FINISHED(Entity entity, char* animDict, char* animName, int p3);
-- @param entity Entity
-- @param animDict char*
-- @param animName char*
-- @param p3 int
-- @return BOOL
function HasEntityAnimFinished(entity, animDict, animName, p3) end

-- @todo
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT
-- @usage BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT(Entity entity);
-- @param entity Entity
-- @return BOOL
function HasEntityBeenDamagedByAnyObject(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED
-- @usage BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED(Entity entity);
-- @param entity Entity
-- @return BOOL
function HasEntityBeenDamagedByAnyPed(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE
-- @usage BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE(Entity entity);
-- @param entity Entity
-- @return BOOL
function HasEntityBeenDamagedByAnyVehicle(entity) end

-- Entity 1 = Victim Entity 2 = Attacker  p2 seems to always be 1
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY
-- @usage BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY(Entity entity1, Entity entity2, BOOL p2);
-- @param entity1 Entity
-- @param entity2 Entity
-- @param p2 BOOL
-- @return BOOL
function HasEntityBeenDamagedByEntity(entity1, entity2, p2) end

-- traceType is always 17 in the scripts.  There is other codes used for traceType: 19 - in jewelry_prep1a 126 - in am_hunt_the_beast 256 & 287 - in fm_mission_controller
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_CLEAR_LOS_TO_ENTITY
-- @usage BOOL HAS_ENTITY_CLEAR_LOS_TO_ENTITY(Entity entity1, Entity entity2, int traceType);
-- @param entity1 Entity
-- @param entity2 Entity
-- @param traceType int
-- @return BOOL
function HasEntityClearLosToEntity(entity1, entity2, traceType) end

-- Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing. This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT
-- @usage BOOL HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT(Entity entity1, Entity entity2);
-- @param entity1 Entity
-- @param entity2 Entity
-- @return BOOL
function HasEntityClearLosToEntityInFront(entity1, entity2) end

-- Called on tick. Tested with vehicles, returns true whenever the vehicle is touching any entity.  Note: for vehicles, the wheels can touch the ground and it will still return false, but if the body of the vehicle touches the ground, it will return true.
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_COLLIDED_WITH_ANYTHING
-- @usage BOOL HAS_ENTITY_COLLIDED_WITH_ANYTHING(Entity entity);
-- @param entity Entity
-- @return BOOL
function HasEntityCollidedWithAnything(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_LAST_MATERIAL_HIT_BY_ENTITY
-- @usage Hash GET_LAST_MATERIAL_HIT_BY_ENTITY(Entity entity);
-- @param entity Entity
-- @return Hash
function GetLastMaterialHitByEntity(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY
-- @usage Vector3 GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY(Entity entity);
-- @param entity Entity
-- @return Vector3
function GetCollisionNormalOfLastHitForEntity(entity) end

-- Based on carmod_shop script decompile this takes a vehicle parameter. It is called when repair is done on initial enter.
-- @module native
-- @submodule entity
-- @see FORCE_ENTITY_AI_AND_ANIMATION_UPDATE
-- @usage void FORCE_ENTITY_AI_AND_ANIMATION_UPDATE(Entity entity);
-- @param entity Entity
-- @return void
function ForceEntityAiAndAnimationUpdate(entity) end

-- Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.  Example: 0.000000 - mark the starting of animation. 0.500000 - mark the midpoint of the animation. 1.000000 - mark the end of animation.  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ANIM_CURRENT_TIME
-- @usage float GET_ENTITY_ANIM_CURRENT_TIME(Entity entity, char* animDict, char* animName);
-- @param entity Entity
-- @param animDict char*
-- @param animName char*
-- @return float
function GetEntityAnimCurrentTime(entity, animDict, animName) end

-- Returns a float value representing animation's total playtime in milliseconds.  Example: GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b")  return 20800.000000  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ANIM_TOTAL_TIME
-- @usage float GET_ENTITY_ANIM_TOTAL_TIME(Entity entity, char* animDict, char* animName);
-- @param entity Entity
-- @param animDict char*
-- @param animName char*
-- @return float
function GetEntityAnimTotalTime(entity, animDict, animName) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ATTACHED_TO
-- @usage Entity GET_ENTITY_ATTACHED_TO(Entity entity);
-- @param entity Entity
-- @return Entity
function GetEntityAttachedTo(entity) end

-- p1 = !IS_ENTITY_DEAD
-- @module native
-- @submodule entity
-- @see GET_ENTITY_COORDS
-- @usage Vector3 GET_ENTITY_COORDS(Entity entity, BOOL alive);
-- @param entity Entity
-- @param alive BOOL
-- @return Vector3
function GetEntityCoords(entity, alive) end

-- Gets the entity's forward vector.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_FORWARD_VECTOR
-- @usage Vector3 GET_ENTITY_FORWARD_VECTOR(Entity entity);
-- @param entity Entity
-- @return Vector3
function GetEntityForwardVector(entity) end

-- Gets the X-component of the entity's forward vector.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_FORWARD_X
-- @usage float GET_ENTITY_FORWARD_X(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityForwardX(entity) end

-- Gets the Y-component of the entity's forward vector.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_FORWARD_Y
-- @usage float GET_ENTITY_FORWARD_Y(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityForwardY(entity) end

-- Returns the heading of the entity in degrees. Also know as the "Yaw" of an entity.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_HEADING
-- @usage float GET_ENTITY_HEADING(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityHeading(entity) end

-- Returns an integer value of entity's current health.  Example of range for ped: - Player [0 to 200] - Ped [100 to 200] - Vehicle [0 to 1000] - Object [0 to 1000]  Health is actually a float value but this native casts it to int. In order to get the actual value, do: float health = *(float *)(entityAddress + 0x280);
-- @module native
-- @submodule entity
-- @see GET_ENTITY_HEALTH
-- @usage int GET_ENTITY_HEALTH(Entity entity);
-- @param entity Entity
-- @return int
function GetEntityHealth(entity) end

-- Return an integer value of entity's maximum health.  Example: - Player = 200
-- @module native
-- @submodule entity
-- @see GET_ENTITY_MAX_HEALTH
-- @usage int GET_ENTITY_MAX_HEALTH(Entity entity);
-- @param entity Entity
-- @return int
function GetEntityMaxHealth(entity) end

-- For instance: ENTITY::SET_ENTITY_MAX_HEALTH(PLAYER::PLAYER_PED_ID(), 200); // director_mode.c4: 67849
-- @module native
-- @submodule entity
-- @see SET_ENTITY_MAX_HEALTH
-- @usage void SET_ENTITY_MAX_HEALTH(Entity entity, int value);
-- @param entity Entity
-- @param value int
-- @return void
function SetEntityMaxHealth(entity, value) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_HEIGHT
-- @usage float GET_ENTITY_HEIGHT(Entity entity, float X, float Y, float Z, BOOL atTop, BOOL inWorldCoords);
-- @param entity Entity
-- @param X float
-- @param Y float
-- @param Z float
-- @param atTop BOOL
-- @param inWorldCoords BOOL
-- @return float
function GetEntityHeight(entity, X, Y, Z, atTop, inWorldCoords) end

-- Return height (z-dimension) above ground.  Example: The pilot in a titan plane is 1.844176 above ground.  How can i convert it to meters? Everything seems to be in meters, probably this too.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_HEIGHT_ABOVE_GROUND
-- @usage float GET_ENTITY_HEIGHT_ABOVE_GROUND(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityHeightAboveGround(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_MATRIX
-- @usage void GET_ENTITY_MATRIX(Entity entity, Vector3* rightVector, Vector3* forwardVector, Vector3* upVector, Vector3* position);
-- @param entity Entity
-- @param rightVector Vector3*
-- @param forwardVector Vector3*
-- @param upVector Vector3*
-- @param position Vector3*
-- @return void
function GetEntityMatrix(entity, rightVector, forwardVector, upVector, position) end

-- Returns the model hash from the entity
-- @module native
-- @submodule entity
-- @see GET_ENTITY_MODEL
-- @usage Hash GET_ENTITY_MODEL(Entity entity);
-- @param entity Entity
-- @return Hash
function GetEntityModel(entity) end

-- Converts world coords (posX - Z) to coords relative to the entity  Example: posX is given as 50 entity's x coord is 40 the returned x coord will then be 10 or -10, not sure haven't used this in a while (think it is 10 though).
-- @module native
-- @submodule entity
-- @see GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS
-- @usage Vector3 GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS(Entity entity, float posX, float posY, float posZ);
-- @param entity Entity
-- @param posX float
-- @param posY float
-- @param posZ float
-- @return Vector3
function GetOffsetFromEntityGivenWorldCoords(entity, posX, posY, posZ) end

-- Offset values are relative to the entity.  x = left/right y = forward/backward z = up/down
-- @module native
-- @submodule entity
-- @see GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS
-- @usage Vector3 GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(Entity entity, float offsetX, float offsetY, float offsetZ);
-- @param entity Entity
-- @param offsetX float
-- @param offsetY float
-- @param offsetZ float
-- @return Vector3
function GetOffsetFromEntityInWorldCoords(entity, offsetX, offsetY, offsetZ) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_PITCH
-- @usage float GET_ENTITY_PITCH(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityPitch(entity) end

-- w is the correct parameter name!
-- @module native
-- @submodule entity
-- @see GET_ENTITY_QUATERNION
-- @usage void GET_ENTITY_QUATERNION(Entity entity, float* x, float* y, float* z, float* w);
-- @param entity Entity
-- @param x float*
-- @param y float*
-- @param z float*
-- @param w float*
-- @return void
function GetEntityQuaternion(entity, x, y, z, w) end

-- Displays the current ROLL axis of the entity [-180.0000/180.0000+] (Sideways Roll) such as a vehicle tipped on its side
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ROLL
-- @usage float GET_ENTITY_ROLL(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityRoll(entity) end

-- rotationOrder refers to the order yaw pitch roll is applied value ranges from 0 to 5. What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.  Unsure what value corresponds to what rotation order, more testing will be needed for that. ------ rotationOrder is usually 2 in scripts ------ ENTITY::GET_ENTITY_ROTATION(Any p0, false or true); if false than return from -180 to 180 if true than return from -90 to 90  ---  As said above, the value of p1 affects the outcome. R* uses 1 and 2 instead of 0 and 1, so I marked it as an int.  What it returns is the yaw on the z part of the vector, which makes sense considering R* considers z as vertical. Here's a picture for those of you who don't understand pitch, yaw, and roll:  www.allstar.fiu.edu/aero/images/pic5-1.gif  I don't know why it returns a Vec3, but sometimes the values x and y go negative, yet they're always zero. Just use GET_ENTITY_PITCH and GET_ENTITY_ROLL for pitch and roll.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ROTATION
-- @usage Vector3 GET_ENTITY_ROTATION(Entity entity, int rotationOrder);
-- @param entity Entity
-- @param rotationOrder int
-- @return Vector3
function GetEntityRotation(entity, rotationOrder) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ROTATION_VELOCITY
-- @usage Vector3 GET_ENTITY_ROTATION_VELOCITY(Entity entity);
-- @param entity Entity
-- @return Vector3
function GetEntityRotationVelocity(entity) end

-- All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_SCRIPT
-- @usage char* GET_ENTITY_SCRIPT(Entity entity, ScrHandle* script);
-- @param entity Entity
-- @param script ScrHandle*
-- @return char*
function GetEntityScript(entity, script) end

-- result is in meters per second  ------------------------------------------------------------ So would the conversion to mph and km/h, be along the lines of this.  float speed = GET_ENTITY_SPEED(veh); float kmh = (speed * 3.6); float mph = (speed * 2.236936);
-- @module native
-- @submodule entity
-- @see GET_ENTITY_SPEED
-- @usage float GET_ENTITY_SPEED(Entity entity);
-- @param entity Entity
-- @return float
function GetEntitySpeed(entity) end

-- Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).
-- @module native
-- @submodule entity
-- @see GET_ENTITY_SPEED_VECTOR
-- @usage Vector3 GET_ENTITY_SPEED_VECTOR(Entity entity, BOOL relative);
-- @param entity Entity
-- @param relative BOOL
-- @return Vector3
function GetEntitySpeedVector(entity, relative) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_UPRIGHT_VALUE
-- @usage float GET_ENTITY_UPRIGHT_VALUE(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityUprightValue(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_VELOCITY
-- @usage Vector3 GET_ENTITY_VELOCITY(Entity entity);
-- @param entity Entity
-- @return Vector3
function GetEntityVelocity(entity) end

-- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
-- @module native
-- @submodule entity
-- @see GET_OBJECT_INDEX_FROM_ENTITY_INDEX
-- @usage Object GET_OBJECT_INDEX_FROM_ENTITY_INDEX(Entity entity);
-- @param entity Entity
-- @return Object
function GetObjectIndexFromEntityIndex(entity) end

-- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
-- @module native
-- @submodule entity
-- @see GET_PED_INDEX_FROM_ENTITY_INDEX
-- @usage Ped GET_PED_INDEX_FROM_ENTITY_INDEX(Entity entity);
-- @param entity Entity
-- @return Ped
function GetPedIndexFromEntityIndex(entity) end

-- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
-- @module native
-- @submodule entity
-- @see GET_VEHICLE_INDEX_FROM_ENTITY_INDEX
-- @usage Vehicle GET_VEHICLE_INDEX_FROM_ENTITY_INDEX(Entity entity);
-- @param entity Entity
-- @return Vehicle
function GetVehicleIndexFromEntityIndex(entity) end

-- Returns the coordinates of an entity-bone.
-- @module native
-- @submodule entity
-- @see GET_WORLD_POSITION_OF_ENTITY_BONE
-- @usage Vector3 GET_WORLD_POSITION_OF_ENTITY_BONE(Entity entity, int boneIndex);
-- @param entity Entity
-- @param boneIndex int
-- @return Vector3
function GetWorldPositionOfEntityBone(entity, boneIndex) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_NEAREST_PLAYER_TO_ENTITY
-- @usage Player GET_NEAREST_PLAYER_TO_ENTITY(Entity entity);
-- @param entity Entity
-- @return Player
function GetNearestPlayerToEntity(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM
-- @usage Player GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM(Entity entity, int team);
-- @param entity Entity
-- @param team int
-- @return Player
function GetNearestPlayerToEntityOnTeam(entity, team) end

-- Returns: 0 = no entity 1 = ped 2 = vehicle 3 = object
-- @module native
-- @submodule entity
-- @see GET_ENTITY_TYPE
-- @usage int GET_ENTITY_TYPE(Entity entity);
-- @param entity Entity
-- @return int
function GetEntityType(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_AN_ENTITY
-- @usage BOOL IS_AN_ENTITY(int handle);
-- @param handle int
-- @return BOOL
function IsAnEntity(handle) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_A_PED
-- @usage BOOL IS_ENTITY_A_PED(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAPed(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_A_MISSION_ENTITY
-- @usage BOOL IS_ENTITY_A_MISSION_ENTITY(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAMissionEntity(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_A_VEHICLE
-- @usage BOOL IS_ENTITY_A_VEHICLE(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAVehicle(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_AN_OBJECT
-- @usage BOOL IS_ENTITY_AN_OBJECT(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAnObject(entity) end

-- Checks if entity is within x/y/zSize distance of x/y/z.   Last three are unknown ints, almost always p7 = 0, p8 = 1, p9 = 0
-- @module native
-- @submodule entity
-- @see IS_ENTITY_AT_COORD
-- @usage BOOL IS_ENTITY_AT_COORD(Entity entity, float xPos, float yPos, float zPos, float xSize, float ySize, float zSize, BOOL p7, BOOL p8, int p9);
-- @param entity Entity
-- @param xPos float
-- @param yPos float
-- @param zPos float
-- @param xSize float
-- @param ySize float
-- @param zSize float
-- @param p7 BOOL
-- @param p8 BOOL
-- @param p9 int
-- @return BOOL
function IsEntityAtCoord(entity, xPos, yPos, zPos, xSize, ySize, zSize, p7, p8, p9) end

-- Checks if entity1 is within the box defined by x/y/zSize of entity2.  Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0
-- @module native
-- @submodule entity
-- @see IS_ENTITY_AT_ENTITY
-- @usage BOOL IS_ENTITY_AT_ENTITY(Entity entity1, Entity entity2, float xSize, float ySize, float zSize, BOOL p5, BOOL p6, int p7);
-- @param entity1 Entity
-- @param entity2 Entity
-- @param xSize float
-- @param ySize float
-- @param zSize float
-- @param p5 BOOL
-- @param p6 BOOL
-- @param p7 int
-- @return BOOL
function IsEntityAtEntity(entity1, entity2, xSize, ySize, zSize, p5, p6, p7) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ATTACHED
-- @usage BOOL IS_ENTITY_ATTACHED(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAttached(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ATTACHED_TO_ANY_OBJECT
-- @usage BOOL IS_ENTITY_ATTACHED_TO_ANY_OBJECT(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAttachedToAnyObject(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ATTACHED_TO_ANY_PED
-- @usage BOOL IS_ENTITY_ATTACHED_TO_ANY_PED(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAttachedToAnyPed(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ATTACHED_TO_ANY_VEHICLE
-- @usage BOOL IS_ENTITY_ATTACHED_TO_ANY_VEHICLE(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAttachedToAnyVehicle(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ATTACHED_TO_ENTITY
-- @usage BOOL IS_ENTITY_ATTACHED_TO_ENTITY(Entity from, Entity to);
-- @param from Entity
-- @param to Entity
-- @return BOOL
function IsEntityAttachedToEntity(from, to) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_DEAD
-- @usage BOOL IS_ENTITY_DEAD(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityDead(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_IN_AIR
-- @usage BOOL IS_ENTITY_IN_AIR(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityInAir(entity) end

-- Creates a spherical cone at origin that extends to surface with the angle specified. Then returns true if the entity is inside the spherical cone  Angle is measured in degrees. These values are constant, most likely bogus: p8 = 0, p9 = 1, p10 = 0  This method can also take two float<3> instead of 6 floats.
-- @module native
-- @submodule entity
-- @see IS_ENTITY_IN_ANGLED_AREA
-- @usage BOOL IS_ENTITY_IN_ANGLED_AREA(Entity entity, float originX, float originY, float originZ, float edgeX, float edgeY, float edgeZ, float angle, BOOL p8, BOOL p9, Any p10);
-- @param entity Entity
-- @param originX float
-- @param originY float
-- @param originZ float
-- @param edgeX float
-- @param edgeY float
-- @param edgeZ float
-- @param angle float
-- @param p8 BOOL
-- @param p9 BOOL
-- @param p10 Any
-- @return BOOL
function IsEntityInAngledArea(entity, originX, originY, originZ, edgeX, edgeY, edgeZ, angle, p8, p9, p10) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_IN_AREA
-- @usage BOOL IS_ENTITY_IN_AREA(Entity entity, float x1, float y1, float z1, float x2, float y2, float z2, BOOL p7, BOOL p8, Any p9);
-- @param entity Entity
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param p7 BOOL
-- @param p8 BOOL
-- @param p9 Any
-- @return BOOL
function IsEntityInArea(entity, x1, y1, z1, x2, y2, z2, p7, p8, p9) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_IN_ZONE
-- @usage BOOL IS_ENTITY_IN_ZONE(Entity entity, char* zone);
-- @param entity Entity
-- @param zone char*
-- @return BOOL
function IsEntityInZone(entity, zone) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_IN_WATER
-- @usage BOOL IS_ENTITY_IN_WATER(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityInWater(entity) end

-- Get how much of the entity is submerged.  1.0f is whole entity.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_SUBMERGED_LEVEL
-- @usage float GET_ENTITY_SUBMERGED_LEVEL(Entity entity);
-- @param entity Entity
-- @return float
function GetEntitySubmergedLevel(entity) end

-- Returns true if the entity is in between the minimum and maximum values for the 2d screen coords.  This means that it will return true even if the entity is behind a wall for example, as long as you're looking at their location.  Chipping
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ON_SCREEN
-- @usage BOOL IS_ENTITY_ON_SCREEN(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityOnScreen(entity) end

-- See also PED::IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM 0x6EC47A344923E1ED 0x3C30B447  Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)  p4 is always 3 in the scripts.  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see IS_ENTITY_PLAYING_ANIM
-- @usage BOOL IS_ENTITY_PLAYING_ANIM(Entity entity, char* animDict, char* animName, int p4);
-- @param entity Entity
-- @param animDict char*
-- @param animName char*
-- @param p4 int
-- @return BOOL
function IsEntityPlayingAnim(entity, animDict, animName, p4) end

-- a static ped will not react to natives like "APPLY_FORCE_TO_ENTITY" or "SET_ENTITY_VELOCITY" and oftentimes will not react to task-natives like "AI::TASK_COMBAT_PED". The only way I know of to make one of these peds react is to ragdoll them (or sometimes to use CLEAR_PED_TASKS_IMMEDIATELY(). Static peds include almost all far-away peds, beach-combers, peds in certain scenarios, peds crossing a crosswalk, peds walking to get back into their cars, and others. If anyone knows how to make a ped non-static without ragdolling them, please edit this with the solution.  how can I make an entity static???
-- @module native
-- @submodule entity
-- @see IS_ENTITY_STATIC
-- @usage BOOL IS_ENTITY_STATIC(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityStatic(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_TOUCHING_ENTITY
-- @usage BOOL IS_ENTITY_TOUCHING_ENTITY(Entity entity, Entity targetEntity);
-- @param entity Entity
-- @param targetEntity Entity
-- @return BOOL
function IsEntityTouchingEntity(entity, targetEntity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_TOUCHING_MODEL
-- @usage BOOL IS_ENTITY_TOUCHING_MODEL(Entity entity, Hash modelHash);
-- @param entity Entity
-- @param modelHash Hash
-- @return BOOL
function IsEntityTouchingModel(entity, modelHash) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_UPRIGHT
-- @usage BOOL IS_ENTITY_UPRIGHT(Entity entity, float angle);
-- @param entity Entity
-- @param angle float
-- @return BOOL
function IsEntityUpright(entity, angle) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_UPSIDEDOWN
-- @usage BOOL IS_ENTITY_UPSIDEDOWN(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityUpsidedown(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_VISIBLE
-- @usage BOOL IS_ENTITY_VISIBLE(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityVisible(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_VISIBLE_TO_SCRIPT
-- @usage BOOL IS_ENTITY_VISIBLE_TO_SCRIPT(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityVisibleToScript(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_OCCLUDED
-- @usage BOOL IS_ENTITY_OCCLUDED(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityOccluded(entity) end

-- First parameter was previously an Entity but after further research it is definitely a hash.
-- @module native
-- @submodule entity
-- @see WOULD_ENTITY_BE_OCCLUDED
-- @usage BOOL WOULD_ENTITY_BE_OCCLUDED(Hash entityModelHash, float x, float y, float z, BOOL p4);
-- @param entityModelHash Hash
-- @param x float
-- @param y float
-- @param z float
-- @param p4 BOOL
-- @return BOOL
function WouldEntityBeOccluded(entityModelHash, x, y, z, p4) end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_WAITING_FOR_WORLD_COLLISION
-- @usage BOOL IS_ENTITY_WAITING_FOR_WORLD_COLLISION(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityWaitingForWorldCollision(entity) end

-- p6/relative - makes the xyz force not relative to world coords, but to something else p7/highForce - setting false will make the force really low
-- @module native
-- @submodule entity
-- @see APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS
-- @usage void APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(Entity entity, int forceType, float x, float y, float z, BOOL p5, BOOL isRel, BOOL highForce, BOOL p8);
-- @param entity Entity
-- @param forceType int
-- @param x float
-- @param y float
-- @param z float
-- @param p5 BOOL
-- @param isRel BOOL
-- @param highForce BOOL
-- @param p8 BOOL
-- @return void
function ApplyForceToEntityCenterOfMass(entity, forceType, x, y, z, p5, isRel, highForce, p8) end

-- forceType - 0 to 5 (any number greater then 5 force does nothing) p8 - no effect (a quick disassembly will tell us what it does) isRel - specifies if the force direction is relative to direction entity is facing (true), or static world direction (false). p11/highForce - setting false will make the force really low  enum ForceTypes { 	MIN_FORCE = 0, 	MAX_FORCE_ROT = 1, 	MIN_FORCE_2 = 2, 	MAX_FORCE_ROT_2 = 3, //stable, good for custom handling 	FORCE_NO_ROT = 4, 	FORCE_ROT_PLUS_FORCE = 5 };  gtaforums.com/topic/885669-precisely-define-object-physics/ gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/
-- @module native
-- @submodule entity
-- @see APPLY_FORCE_TO_ENTITY
-- @usage void APPLY_FORCE_TO_ENTITY(Entity entity, int forceType, float x, float y, float z, float xRot, float yRot, float zRot, int p8, BOOL isRel, BOOL p10, BOOL highForce, BOOL p12, BOOL p13);
-- @param entity Entity
-- @param forceType int
-- @param x float
-- @param y float
-- @param z float
-- @param xRot float
-- @param yRot float
-- @param zRot float
-- @param p8 int
-- @param isRel BOOL
-- @param p10 BOOL
-- @param highForce BOOL
-- @param p12 BOOL
-- @param p13 BOOL
-- @return void
function ApplyForceToEntity(entity, forceType, x, y, z, xRot, yRot, zRot, p8, isRel, p10, highForce, p12, p13) end

-- Attaches entity1 to bone (boneIndex) of entity2.  boneIndex - this is different to boneID, use GET_PED_BONE_INDEX to get the index from the ID. use the index for attaching to specific bones. entity1 will be attached to entity2's centre if bone index given doesn't correspond to bone indexes for that entity type.  useSoftPinning - if set to false attached entity will not detach when fixed collision - controls collision between the two entities (FALSE disables collision). isPed - pitch doesnt work when false and roll will only work on negative numbers (only peds) vertexIndex - position of vertex fixedRot - if false it ignores entity vector
-- @module native
-- @submodule entity
-- @see ATTACH_ENTITY_TO_ENTITY
-- @usage void ATTACH_ENTITY_TO_ENTITY(Entity entity1, Entity entity2, int boneIndex, float xPos, float yPos, float zPos, float xRot, float yRot, float zRot, BOOL p9, BOOL useSoftPinning, BOOL collision, BOOL isPed, int vertexIndex, BOOL fixedRot);
-- @param entity1 Entity
-- @param entity2 Entity
-- @param boneIndex int
-- @param xPos float
-- @param yPos float
-- @param zPos float
-- @param xRot float
-- @param yRot float
-- @param zRot float
-- @param p9 BOOL
-- @param useSoftPinning BOOL
-- @param collision BOOL
-- @param isPed BOOL
-- @param vertexIndex int
-- @param fixedRot BOOL
-- @return void
function AttachEntityToEntity(entity1, entity2, boneIndex, xPos, yPos, zPos, xRot, yRot, zRot, p9, useSoftPinning, collision, isPed, vertexIndex, fixedRot) end

-- breakForce is the amount of force required to break the bond. p14 - is always 1 in scripts p15 - is 1 or 0 in scripts - unknoun what it does p16 - controls collision between the two entities (FALSE disables collision). p17 - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone) p18 - is always 2 in scripts.
-- @module native
-- @submodule entity
-- @see ATTACH_ENTITY_TO_ENTITY_PHYSICALLY
-- @usage void ATTACH_ENTITY_TO_ENTITY_PHYSICALLY(Entity entity1, Entity entity2, int boneIndex1, int boneIndex2, float xPos1, float yPos1, float zPos1, float xPos2, float yPos2, float zPos2, float xRot, float yRot, float zRot, float breakForce, BOOL fixedRot, BOOL p15, BOOL collision, BOOL p17, int p18);
-- @param entity1 Entity
-- @param entity2 Entity
-- @param boneIndex1 int
-- @param boneIndex2 int
-- @param xPos1 float
-- @param yPos1 float
-- @param zPos1 float
-- @param xPos2 float
-- @param yPos2 float
-- @param zPos2 float
-- @param xRot float
-- @param yRot float
-- @param zRot float
-- @param breakForce float
-- @param fixedRot BOOL
-- @param p15 BOOL
-- @param collision BOOL
-- @param p17 BOOL
-- @param p18 int
-- @return void
function AttachEntityToEntityPhysically(entity1, entity2, boneIndex1, boneIndex2, xPos1, yPos1, zPos1, xPos2, yPos2, zPos2, xRot, yRot, zRot, breakForce, fixedRot, p15, collision, p17, p18) end

-- Called to update entity attachments.
-- @module native
-- @submodule entity
-- @see PROCESS_ENTITY_ATTACHMENTS
-- @usage void PROCESS_ENTITY_ATTACHMENTS(Entity entity);
-- @param entity Entity
-- @return void
function ProcessEntityAttachments(entity) end

-- Returns the index of the bone. If the bone was not found, -1 will be returned.   list: pastebin.com/D7JMnX1g  BoneNames: 	chassis, 	windscreen, 	seat_pside_r, 	seat_dside_r, 	bodyshell, 	suspension_lm, 	suspension_lr, 	platelight, 	attach_female, 	attach_male, 	bonnet, 	boot, 	chassis_dummy,	//Center of the dummy 	chassis_Control,	//Not found yet 	door_dside_f,	//Door left, front 	door_dside_r,	//Door left, back 	door_pside_f,	//Door right, front 	door_pside_r,	//Door right, back 	Gun_GripR, 	windscreen_f, 	platelight,	//Position where the light above the numberplate is located 	VFX_Emitter, 	window_lf,	//Window left, front 	window_lr,	//Window left, back 	window_rf,	//Window right, front 	window_rr,	//Window right, back 	engine,	//Position of the engine 	gun_ammo, 	ROPE_ATTATCH,	//Not misspelled. In script "finale_heist2b.c4". 	wheel_lf,	//Wheel left, front 	wheel_lr,	//Wheel left, back 	wheel_rf,	//Wheel right, front 	wheel_rr,	//Wheel right, back 	exhaust,	//Exhaust. shows only the position of the stock-exhaust 	overheat,	//A position on the engine(not exactly sure, how to name it) 	misc_e,	//Not a car-bone. 	seat_dside_f,	//Driver-seat 	seat_pside_f,	//Seat next to driver 	Gun_Nuzzle, 	seat_r  I doubt that the function is case-sensitive, since I found a "Chassis" and a "chassis". - Just tested: Definitely not case-sensitive.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_BONE_INDEX_BY_NAME
-- @usage int GET_ENTITY_BONE_INDEX_BY_NAME(Entity entity, char* boneName);
-- @param entity Entity
-- @param boneName char*
-- @return int
function GetEntityBoneIndexByName(entity, boneName) end

-- @todo
-- @module native
-- @submodule entity
-- @see CLEAR_ENTITY_LAST_DAMAGE_ENTITY
-- @usage Any CLEAR_ENTITY_LAST_DAMAGE_ENTITY(Entity entity);
-- @param entity Entity
-- @return Any
function ClearEntityLastDamageEntity(entity) end

-- Deletes the specified entity, then sets the handle pointed to by the pointer to NULL.
-- @module native
-- @submodule entity
-- @see DELETE_ENTITY
-- @usage void DELETE_ENTITY(Entity* entity);
-- @param entity Entity*
-- @return void
function DeleteEntity(entity) end

-- p1 and p2 have no effect  maybe a quick disassembly will tell us what they do  if p2 is set to true, the both entities won't collide with the other until the distance between them is above 4 meters.   p1?
-- @module native
-- @submodule entity
-- @see DETACH_ENTITY
-- @usage void DETACH_ENTITY(Entity entity, BOOL p1, BOOL collision);
-- @param entity Entity
-- @param p1 BOOL
-- @param collision BOOL
-- @return void
function DetachEntity(entity, p1, collision) end

-- @todo
-- @module native
-- @submodule entity
-- @see FREEZE_ENTITY_POSITION
-- @usage void FREEZE_ENTITY_POSITION(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function FreezeEntityPosition(entity, toggle) end

-- delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.  The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see PLAY_ENTITY_ANIM
-- @usage BOOL PLAY_ENTITY_ANIM(Entity entity, char* animName, char* animDict, float p3, BOOL loop, BOOL stayInAnim, BOOL p6, float delta, Any bitset);
-- @param entity Entity
-- @param animName char*
-- @param animDict char*
-- @param p3 float
-- @param loop BOOL
-- @param stayInAnim BOOL
-- @param p6 BOOL
-- @param delta float
-- @param bitset Any
-- @return BOOL
function PlayEntityAnim(entity, animName, animDict, p3, loop, stayInAnim, p6, delta, bitset) end

-- p4 and p7 are usually 1000.0f.  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see PLAY_SYNCHRONIZED_ENTITY_ANIM
-- @usage BOOL PLAY_SYNCHRONIZED_ENTITY_ANIM(Entity entity, int syncedScene, char* animation, char* propName, float p4, float p5, Any p6, float p7);
-- @param entity Entity
-- @param syncedScene int
-- @param animation char*
-- @param propName char*
-- @param p4 float
-- @param p5 float
-- @param p6 Any
-- @param p7 float
-- @return BOOL
function PlaySynchronizedEntityAnim(entity, syncedScene, animation, propName, p4, p5, p6, p7) end

-- Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM
-- @usage BOOL PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM(float p0, float p1, float p2, float p3, Any p4, Any p5, Any* p6, Any* p7, float p8, float p9, Any p10, float p11);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 Any
-- @param p5 Any
-- @param p6 Any*
-- @param p7 Any*
-- @param p8 float
-- @param p9 float
-- @param p10 Any
-- @param p11 float
-- @return BOOL
function PlaySynchronizedMapEntityAnim(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

-- @todo
-- @module native
-- @submodule entity
-- @see STOP_SYNCHRONIZED_MAP_ENTITY_ANIM
-- @usage BOOL STOP_SYNCHRONIZED_MAP_ENTITY_ANIM(float p0, float p1, float p2, float p3, Any p4, float p5);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 Any
-- @param p5 float
-- @return BOOL
function StopSynchronizedMapEntityAnim(p0, p1, p2, p3, p4, p5) end

-- Animations List : www.ls-multiplayer.com/dev/index.php?section=3  RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
-- @module native
-- @submodule entity
-- @see STOP_ENTITY_ANIM
-- @usage Any STOP_ENTITY_ANIM(Entity entity, char* animation, char* animGroup, float p3);
-- @param entity Entity
-- @param animation char*
-- @param animGroup char*
-- @param p3 float
-- @return Any
function StopEntityAnim(entity, animation, animGroup, p3) end

-- p1 sync task id?
-- @module native
-- @submodule entity
-- @see STOP_SYNCHRONIZED_ENTITY_ANIM
-- @usage BOOL STOP_SYNCHRONIZED_ENTITY_ANIM(Entity entity, float p1, BOOL p2);
-- @param entity Entity
-- @param p1 float
-- @param p2 BOOL
-- @return BOOL
function StopSynchronizedEntityAnim(entity, p1, p2) end

-- if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("CreateObject")))
-- @module native
-- @submodule entity
-- @see HAS_ANIM_EVENT_FIRED
-- @usage BOOL HAS_ANIM_EVENT_FIRED(Entity entity, Hash actionHash);
-- @param entity Entity
-- @param actionHash Hash
-- @return BOOL
function HasAnimEventFired(entity, actionHash) end

-- In the script "player_scene_t_bbfight.c4": "if (ENTITY::FIND_ANIM_EVENT_PHASE(&l_16E, &l_19F[v_4/*16*/], v_9, &v_A, &v_B))" -- &l_16E (p0) is requested as an anim dictionary earlier in the script. -- &l_19F[v_4/*16*/] (p1) is used in other natives in the script as the "animation" param. -- v_9 (p2) is instantiated as "victim_fall"; I'm guessing that's another anim --v_A and v_B (p3 & p4) are both set as -1.0, but v_A is used immediately after this native for:  "if (v_A < ENTITY::GET_ENTITY_ANIM_CURRENT_TIME(...))" Both v_A and v_B are seemingly used to contain both Vector3's and floats, so I can't say what either really is other than that they are both output parameters. p4 looks more like a *Vector3 though -alphazolam  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see FIND_ANIM_EVENT_PHASE
-- @usage BOOL FIND_ANIM_EVENT_PHASE(char* animDictionary, char* animName, char* p2, Any* p3, Any* p4);
-- @param animDictionary char*
-- @param animName char*
-- @param p2 char*
-- @param p3 Any*
-- @param p4 Any*
-- @return BOOL
function FindAnimEventPhase(animDictionary, animName, p2, p3, p4) end

-- Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ANIM_CURRENT_TIME
-- @usage void SET_ENTITY_ANIM_CURRENT_TIME(Entity entity, char* animDictionary, char* animName, float time);
-- @param entity Entity
-- @param animDictionary char*
-- @param animName char*
-- @param time float
-- @return void
function SetEntityAnimCurrentTime(entity, animDictionary, animName, time) end

-- Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ANIM_SPEED
-- @usage void SET_ENTITY_ANIM_SPEED(Entity entity, char* animDictionary, char* animName, float speedMultiplier);
-- @param entity Entity
-- @param animDictionary char*
-- @param animName char*
-- @param speedMultiplier float
-- @return void
function SetEntityAnimSpeed(entity, animDictionary, animName, speedMultiplier) end

-- Makes the specified entity (ped, vehicle or object) persistent. Persistent entities will not automatically be removed by the engine.  p1 has no effect when either its on or off  maybe a quick disassembly will tell us what it does  p2 has no effect when either its on or off  maybe a quick disassembly will tell us what it does
-- @module native
-- @submodule entity
-- @see SET_ENTITY_AS_MISSION_ENTITY
-- @usage void SET_ENTITY_AS_MISSION_ENTITY(Entity entity, BOOL p1, BOOL p2);
-- @param entity Entity
-- @param p1 BOOL
-- @param p2 BOOL
-- @return void
function SetEntityAsMissionEntity(entity, p1, p2) end

-- Marks the specified entity (ped, vehicle or object) as no longer needed. Entities marked as no longer needed, will be deleted as the engine sees fit.
-- @module native
-- @submodule entity
-- @see SET_ENTITY_AS_NO_LONGER_NEEDED
-- @usage void SET_ENTITY_AS_NO_LONGER_NEEDED(Entity* entity);
-- @param entity Entity*
-- @return void
function SetEntityAsNoLongerNeeded(entity) end

-- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.
-- @module native
-- @submodule entity
-- @see SET_PED_AS_NO_LONGER_NEEDED
-- @usage void SET_PED_AS_NO_LONGER_NEEDED(Ped* ped);
-- @param ped Ped*
-- @return void
function SetPedAsNoLongerNeeded(ped) end

-- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.
-- @module native
-- @submodule entity
-- @see SET_VEHICLE_AS_NO_LONGER_NEEDED
-- @usage void SET_VEHICLE_AS_NO_LONGER_NEEDED(Vehicle* vehicle);
-- @param vehicle Vehicle*
-- @return void
function SetVehicleAsNoLongerNeeded(vehicle) end

-- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.
-- @module native
-- @submodule entity
-- @see SET_OBJECT_AS_NO_LONGER_NEEDED
-- @usage void SET_OBJECT_AS_NO_LONGER_NEEDED(Object* object);
-- @param object Object*
-- @return void
function SetObjectAsNoLongerNeeded(object) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_CAN_BE_DAMAGED
-- @usage void SET_ENTITY_CAN_BE_DAMAGED(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityCanBeDamaged(entity, toggle) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP
-- @usage void SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP(Entity entity, BOOL bCanBeDamaged, int relGroup);
-- @param entity Entity
-- @param bCanBeDamaged BOOL
-- @param relGroup int
-- @return void
function SetEntityCanBeDamagedByRelationshipGroup(entity, bCanBeDamaged, relGroup) end

-- Sets whether the entity can be targeted without being in line-of-sight.
-- @module native
-- @submodule entity
-- @see SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS
-- @usage void SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityCanBeTargetedWithoutLos(entity, toggle) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_COLLISION
-- @usage void SET_ENTITY_COLLISION(Entity entity, BOOL toggle, BOOL keepPhysics);
-- @param entity Entity
-- @param toggle BOOL
-- @param keepPhysics BOOL
-- @return void
function SetEntityCollision(entity, toggle, keepPhysics) end

-- p7 is always 1 in the scripts. Set to 1, an area around the destination coords for the moved entity is cleared from other entities.    Often ends with 1, 0, 0, 1); in the scripts. It works.   Axis - Invert Axis Flags
-- @module native
-- @submodule entity
-- @see SET_ENTITY_COORDS
-- @usage void SET_ENTITY_COORDS(Entity entity, float xPos, float yPos, float zPos, BOOL xAxis, BOOL yAxis, BOOL zAxis, BOOL clearArea);
-- @param entity Entity
-- @param xPos float
-- @param yPos float
-- @param zPos float
-- @param xAxis BOOL
-- @param yAxis BOOL
-- @param zAxis BOOL
-- @param clearArea BOOL
-- @return void
function SetEntityCoords(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis, clearArea) end

-- Axis - Invert Axis Flags
-- @module native
-- @submodule entity
-- @see SET_ENTITY_COORDS_NO_OFFSET
-- @usage void SET_ENTITY_COORDS_NO_OFFSET(Entity entity, float xPos, float yPos, float zPos, BOOL xAxis, BOOL yAxis, BOOL zAxis);
-- @param entity Entity
-- @param xPos float
-- @param yPos float
-- @param zPos float
-- @param xAxis BOOL
-- @param yAxis BOOL
-- @param zAxis BOOL
-- @return void
function SetEntityCoordsNoOffset(entity, xPos, yPos, zPos, xAxis, yAxis, zAxis) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_DYNAMIC
-- @usage void SET_ENTITY_DYNAMIC(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityDynamic(entity, toggle) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_HEADING
-- @usage void SET_ENTITY_HEADING(Entity entity, float heading);
-- @param entity Entity
-- @param heading float
-- @return void
function SetEntityHeading(entity, heading) end

-- health >= 0
-- @module native
-- @submodule entity
-- @see SET_ENTITY_HEALTH
-- @usage void SET_ENTITY_HEALTH(Entity entity, int health);
-- @param entity Entity
-- @param health int
-- @return void
function SetEntityHealth(entity, health) end

-- Sets a ped or an object totally invincible. It doesn't take any kind of damage. Peds will not ragdoll on explosions and the tazer animation won't apply either.  If you use this for a ped and you want Ragdoll to stay enabled, then do: *(DWORD *)(pedAddress + 0x188) |= (1 << 9);  Use this if you want to get the invincibility status: 	bool IsPedInvincible(Ped ped) 	{ 		auto addr = getScriptHandleBaseAddress(ped);	  		if (addr) 		{ 			DWORD flag = *(DWORD *)(addr + 0x188); 			return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0); 		}  		return false; 	}
-- @module native
-- @submodule entity
-- @see SET_ENTITY_INVINCIBLE
-- @usage void SET_ENTITY_INVINCIBLE(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityInvincible(entity, toggle) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_IS_TARGET_PRIORITY
-- @usage void SET_ENTITY_IS_TARGET_PRIORITY(Entity entity, BOOL p1, float p2);
-- @param entity Entity
-- @param p1 BOOL
-- @param p2 float
-- @return void
function SetEntityIsTargetPriority(entity, p1, p2) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_LIGHTS
-- @usage void SET_ENTITY_LIGHTS(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityLights(entity, toggle) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_LOAD_COLLISION_FLAG
-- @usage void SET_ENTITY_LOAD_COLLISION_FLAG(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityLoadCollisionFlag(entity, toggle) end

-- @todo
-- @module native
-- @submodule entity
-- @see HAS_COLLISION_LOADED_AROUND_ENTITY
-- @usage BOOL HAS_COLLISION_LOADED_AROUND_ENTITY(Entity entity);
-- @param entity Entity
-- @return BOOL
function HasCollisionLoadedAroundEntity(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_MAX_SPEED
-- @usage void SET_ENTITY_MAX_SPEED(Entity entity, float speed);
-- @param entity Entity
-- @param speed float
-- @return void
function SetEntityMaxSpeed(entity, speed) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ONLY_DAMAGED_BY_PLAYER
-- @usage void SET_ENTITY_ONLY_DAMAGED_BY_PLAYER(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityOnlyDamagedByPlayer(entity, toggle) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP
-- @usage void SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP(Entity entity, BOOL p1, Any p2);
-- @param entity Entity
-- @param p1 BOOL
-- @param p2 Any
-- @return void
function SetEntityOnlyDamagedByRelationshipGroup(entity, p1, p2) end

-- Enable / disable each type of damage.  Can't get drownProof to work. -------------- p7 is to to '1' in am_mp_property_ext/int: entity::set_entity_proofs(uParam0->f_19, true, true, true, true, true, true, 1, true);
-- @module native
-- @submodule entity
-- @see SET_ENTITY_PROOFS
-- @usage void SET_ENTITY_PROOFS(Entity entity, BOOL bulletProof, BOOL fireProof, BOOL explosionProof, BOOL collisionProof, BOOL meleeProof, BOOL p6, BOOL p7, BOOL drownProof);
-- @param entity Entity
-- @param bulletProof BOOL
-- @param fireProof BOOL
-- @param explosionProof BOOL
-- @param collisionProof BOOL
-- @param meleeProof BOOL
-- @param p6 BOOL
-- @param p7 BOOL
-- @param drownProof BOOL
-- @return void
function SetEntityProofs(entity, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, p6, p7, drownProof) end

-- w is the correct parameter name!
-- @module native
-- @submodule entity
-- @see SET_ENTITY_QUATERNION
-- @usage void SET_ENTITY_QUATERNION(Entity entity, float x, float y, float z, float w);
-- @param entity Entity
-- @param x float
-- @param y float
-- @param z float
-- @param w float
-- @return void
function SetEntityQuaternion(entity, x, y, z, w) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_RECORDS_COLLISIONS
-- @usage void SET_ENTITY_RECORDS_COLLISIONS(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityRecordsCollisions(entity, toggle) end

-- rotationOrder refers to the order yaw pitch roll is applied value ranges from 0 to 5. What you use for rotationOrder when setting must be the same as rotationOrder when getting the rotation.  Unsure what value corresponds to what rotation order, more testing will be needed for that. For the most part R* uses 1 or 2 as the order. p5 is usually set as true
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ROTATION
-- @usage void SET_ENTITY_ROTATION(Entity entity, float pitch, float roll, float yaw, int rotationOrder, BOOL p5);
-- @param entity Entity
-- @param pitch float
-- @param roll float
-- @param yaw float
-- @param rotationOrder int
-- @param p5 BOOL
-- @return void
function SetEntityRotation(entity, pitch, roll, yaw, rotationOrder, p5) end

-- unk was always 0.
-- @module native
-- @submodule entity
-- @see SET_ENTITY_VISIBLE
-- @usage void SET_ENTITY_VISIBLE(Entity entity, BOOL toggle, BOOL unk);
-- @param entity Entity
-- @param toggle BOOL
-- @param unk BOOL
-- @return void
function SetEntityVisible(entity, toggle, unk) end

-- Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
-- @module native
-- @submodule entity
-- @see SET_ENTITY_VELOCITY
-- @usage void SET_ENTITY_VELOCITY(Entity entity, float x, float y, float z);
-- @param entity Entity
-- @param x float
-- @param y float
-- @param z float
-- @return void
function SetEntityVelocity(entity, x, y, z) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_HAS_GRAVITY
-- @usage void SET_ENTITY_HAS_GRAVITY(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityHasGravity(entity, toggle) end

-- LOD distance can be 0 to 0xFFFF (higher values will result in 0xFFFF) as it is actually stored as a 16-bit value (aka uint16_t).
-- @module native
-- @submodule entity
-- @see SET_ENTITY_LOD_DIST
-- @usage void SET_ENTITY_LOD_DIST(Entity entity, int value);
-- @param entity Entity
-- @param value int
-- @return void
function SetEntityLodDist(entity, value) end

-- Returns the LOD distance of an entity.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_LOD_DIST
-- @usage int GET_ENTITY_LOD_DIST(Entity entity);
-- @param entity Entity
-- @return int
function GetEntityLodDist(entity) end

-- skin - everything alpha except skin Set entity alpha level. Ranging from 0 to 255 but chnages occur after every 20 percent (after every 51).
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ALPHA
-- @usage void SET_ENTITY_ALPHA(Entity entity, int alphaLevel, BOOL skin);
-- @param entity Entity
-- @param alphaLevel int
-- @param skin BOOL
-- @return void
function SetEntityAlpha(entity, alphaLevel, skin) end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ALPHA
-- @usage int GET_ENTITY_ALPHA(Entity entity);
-- @param entity Entity
-- @return int
function GetEntityAlpha(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see RESET_ENTITY_ALPHA
-- @usage Any RESET_ENTITY_ALPHA(Entity entity);
-- @param entity Entity
-- @return Any
function ResetEntityAlpha(entity) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ALWAYS_PRERENDER
-- @usage void SET_ENTITY_ALWAYS_PRERENDER(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityAlwaysPrerender(entity, toggle) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_RENDER_SCORCHED
-- @usage void SET_ENTITY_RENDER_SCORCHED(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityRenderScorched(entity, toggle) end

-- Example here: www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340  0 = green 1 = red 2 = yellow changing lights may not change the behavior of vehicles
-- @module native
-- @submodule entity
-- @see SET_ENTITY_TRAFFICLIGHT_OVERRIDE
-- @usage void SET_ENTITY_TRAFFICLIGHT_OVERRIDE(Entity entity, int state);
-- @param entity Entity
-- @param state int
-- @return void
function SetEntityTrafficlightOverride(entity, state) end

-- Only works with objects! Network players do not see changes done with this.
-- @module native
-- @submodule entity
-- @see CREATE_MODEL_SWAP
-- @usage void CREATE_MODEL_SWAP(float x, float y, float z, float radius, Hash originalModel, Hash newModel, BOOL p6);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param originalModel Hash
-- @param newModel Hash
-- @param p6 BOOL
-- @return void
function CreateModelSwap(x, y, z, radius, originalModel, newModel, p6) end

-- @todo
-- @module native
-- @submodule entity
-- @see REMOVE_MODEL_SWAP
-- @usage void REMOVE_MODEL_SWAP(float x, float y, float z, float radius, Hash originalModel, Hash newModel, BOOL p6);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param originalModel Hash
-- @param newModel Hash
-- @param p6 BOOL
-- @return void
function RemoveModelSwap(x, y, z, radius, originalModel, newModel, p6) end

-- p5 = sets as true in scripts Same as the comment for CREATE_MODEL_SWAP unless for some reason p5 affects it this only works with objects as well.  Network players do not see changes done with this.
-- @module native
-- @submodule entity
-- @see CREATE_MODEL_HIDE
-- @usage void CREATE_MODEL_HIDE(float x, float y, float z, float radius, Hash model, BOOL p5);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param model Hash
-- @param p5 BOOL
-- @return void
function CreateModelHide(x, y, z, radius, model, p5) end

-- @todo
-- @module native
-- @submodule entity
-- @see CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS
-- @usage void CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS(float x, float y, float z, float radius, Hash model, BOOL p5);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param model Hash
-- @param p5 BOOL
-- @return void
function CreateModelHideExcludingScriptObjects(x, y, z, radius, model, p5) end

-- @todo
-- @module native
-- @submodule entity
-- @see REMOVE_MODEL_HIDE
-- @usage void REMOVE_MODEL_HIDE(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @param p5 Any
-- @return void
function RemoveModelHide(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule entity
-- @see CREATE_FORCED_OBJECT
-- @usage void CREATE_FORCED_OBJECT(float x, float y, float z, Any p3, Hash modelHash, BOOL p5);
-- @param x float
-- @param y float
-- @param z float
-- @param p3 Any
-- @param modelHash Hash
-- @param p5 BOOL
-- @return void
function CreateForcedObject(x, y, z, p3, modelHash, p5) end

-- @todo
-- @module native
-- @submodule entity
-- @see REMOVE_FORCED_OBJECT
-- @usage void REMOVE_FORCED_OBJECT(Any p0, Any p1, Any p2, Any p3, Any p4);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @return void
function RemoveForcedObject(p0, p1, p2, p3, p4) end

-- Calling this function, regardless of the "unknown" value, disabled collision between two entities.  Importance of entity1 and 2 order is unclear.
-- @module native
-- @submodule entity
-- @see SET_ENTITY_NO_COLLISION_ENTITY
-- @usage void SET_ENTITY_NO_COLLISION_ENTITY(Entity entity1, Entity entity2, BOOL unknown);
-- @param entity1 Entity
-- @param entity2 Entity
-- @param unknown BOOL
-- @return void
function SetEntityNoCollisionEntity(entity1, entity2, unknown) end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_MOTION_BLUR
-- @usage void SET_ENTITY_MOTION_BLUR(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function SetEntityMotionBlur(entity, toggle) end