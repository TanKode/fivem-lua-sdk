-- Checks if the Entity exists
-- @module native
-- @submodule entity
-- @see DOES_ENTITY_EXIST
-- @usage BOOL DOES_ENTITY_EXIST(Entity entity);
-- @param entity Entity
-- @return BOOL
function DoesEntityExist() end

-- @todo
-- @module native
-- @submodule entity
-- @see DOES_ENTITY_BELONG_TO_THIS_SCRIPT
-- @usage BOOL DOES_ENTITY_BELONG_TO_THIS_SCRIPT(Entity entity, BOOL p1);
-- @param entity Entity
-- @param BOOL
-- @return BOOL
function DoesEntityBelongToThisScript() end

-- @todo
-- @module native
-- @submodule entity
-- @see DOES_ENTITY_HAVE_DRAWABLE
-- @usage BOOL DOES_ENTITY_HAVE_DRAWABLE(Entity entity);
-- @param entity Entity
-- @return BOOL
function DoesEntityHaveDrawable() end

-- @todo
-- @module native
-- @submodule entity
-- @see DOES_ENTITY_HAVE_PHYSICS
-- @usage BOOL DOES_ENTITY_HAVE_PHYSICS(Entity entity);
-- @param entity Entity
-- @return BOOL
function DoesEntityHavePhysics() end

-- P3 is always 3 as far as i cant tell  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_ANIM_FINISHED
-- @usage BOOL HAS_ENTITY_ANIM_FINISHED(Entity entity, char* animDict, char* animName, int p3);
-- @param entity Entity
-- @param char*
-- @param int
-- @return BOOL
function HasEntityAnimFinished() end

-- @todo
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT
-- @usage BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ANY_OBJECT(Entity entity);
-- @param entity Entity
-- @return BOOL
function HasEntityBeenDamagedByAnyObject() end

-- @todo
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED
-- @usage BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ANY_PED(Entity entity);
-- @param entity Entity
-- @return BOOL
function HasEntityBeenDamagedByAnyPed() end

-- @todo
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE
-- @usage BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ANY_VEHICLE(Entity entity);
-- @param entity Entity
-- @return BOOL
function HasEntityBeenDamagedByAnyVehicle() end

-- Entity 1 = Victim Entity 2 = Attacker  p2 seems to always be 1
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY
-- @usage BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY(Entity entity1, Entity entity2, BOOL p2);
-- @param entity1 Entity
-- @param Entity
-- @param BOOL
-- @return BOOL
function HasEntityBeenDamagedByEntity() end

-- traceType is always 17 in the scripts.  There is other codes used for traceType: 19 - in jewelry_prep1a 126 - in am_hunt_the_beast 256 & 287 - in fm_mission_controller
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_CLEAR_LOS_TO_ENTITY
-- @usage BOOL HAS_ENTITY_CLEAR_LOS_TO_ENTITY(Entity entity1, Entity entity2, int traceType);
-- @param entity1 Entity
-- @param Entity
-- @param int
-- @return BOOL
function HasEntityClearLosToEntity() end

-- Has the entity1 got a clear line of sight to the other entity2 from the direction entity1 is facing. This is one of the most CPU demanding BOOL natives in the game; avoid calling this in things like nested for-loops
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT
-- @usage BOOL HAS_ENTITY_CLEAR_LOS_TO_ENTITY_IN_FRONT(Entity entity1, Entity entity2);
-- @param entity1 Entity
-- @param Entity
-- @return BOOL
function HasEntityClearLosToEntityInFront() end

-- Called on tick. Tested with vehicles, returns true whenever the vehicle is touching any entity.  Note: for vehicles, the wheels can touch the ground and it will still return false, but if the body of the vehicle touches the ground, it will return true.
-- @module native
-- @submodule entity
-- @see HAS_ENTITY_COLLIDED_WITH_ANYTHING
-- @usage BOOL HAS_ENTITY_COLLIDED_WITH_ANYTHING(Entity entity);
-- @param entity Entity
-- @return BOOL
function HasEntityCollidedWithAnything() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_LAST_MATERIAL_HIT_BY_ENTITY
-- @usage Hash GET_LAST_MATERIAL_HIT_BY_ENTITY(Entity entity);
-- @param entity Entity
-- @return Hash
function GetLastMaterialHitByEntity() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY
-- @usage Vector3 GET_COLLISION_NORMAL_OF_LAST_HIT_FOR_ENTITY(Entity entity);
-- @param entity Entity
-- @return Vector3
function GetCollisionNormalOfLastHitForEntity() end

-- Based on carmod_shop script decompile this takes a vehicle parameter. It is called when repair is done on initial enter.
-- @module native
-- @submodule entity
-- @see FORCE_ENTITY_AI_AND_ANIMATION_UPDATE
-- @usage void FORCE_ENTITY_AI_AND_ANIMATION_UPDATE(Entity entity);
-- @param entity Entity
-- @return void
function ForceEntityAiAndAnimationUpdate() end

-- Returns a float value representing animation's current playtime with respect to its total playtime. This value increasing in a range from [0 to 1] and wrap back to 0 when it reach 1.  Example: 0.000000 - mark the starting of animation. 0.500000 - mark the midpoint of the animation. 1.000000 - mark the end of animation.  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ANIM_CURRENT_TIME
-- @usage float GET_ENTITY_ANIM_CURRENT_TIME(Entity entity, char* animDict, char* animName);
-- @param entity Entity
-- @param char*
-- @return float
function GetEntityAnimCurrentTime() end

-- Returns a float value representing animation's total playtime in milliseconds.  Example: GET_ENTITY_ANIM_TOTAL_TIME(PLAYER_ID(),"amb@world_human_yoga@female@base","base_b")  return 20800.000000  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ANIM_TOTAL_TIME
-- @usage float GET_ENTITY_ANIM_TOTAL_TIME(Entity entity, char* animDict, char* animName);
-- @param entity Entity
-- @param char*
-- @return float
function GetEntityAnimTotalTime() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ATTACHED_TO
-- @usage Entity GET_ENTITY_ATTACHED_TO(Entity entity);
-- @param entity Entity
-- @return Entity
function GetEntityAttachedTo() end

-- p1 = !IS_ENTITY_DEAD
-- @module native
-- @submodule entity
-- @see GET_ENTITY_COORDS
-- @usage Vector3 GET_ENTITY_COORDS(Entity entity, BOOL alive);
-- @param entity Entity
-- @param BOOL
-- @return Vector3
function GetEntityCoords() end

-- Gets the entity's forward vector.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_FORWARD_VECTOR
-- @usage Vector3 GET_ENTITY_FORWARD_VECTOR(Entity entity);
-- @param entity Entity
-- @return Vector3
function GetEntityForwardVector() end

-- Gets the X-component of the entity's forward vector.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_FORWARD_X
-- @usage float GET_ENTITY_FORWARD_X(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityForwardX() end

-- Gets the Y-component of the entity's forward vector.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_FORWARD_Y
-- @usage float GET_ENTITY_FORWARD_Y(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityForwardY() end

-- Returns the heading of the entity in degrees. Also know as the "Yaw" of an entity.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_HEADING
-- @usage float GET_ENTITY_HEADING(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityHeading() end

-- Returns an integer value of entity's current health.  Example of range for ped: - Player [0 to 200] - Ped [100 to 200] - Vehicle [0 to 1000] - Object [0 to 1000]  Health is actually a float value but this native casts it to int. In order to get the actual value, do: float health = *(float *)(entityAddress + 0x280);
-- @module native
-- @submodule entity
-- @see GET_ENTITY_HEALTH
-- @usage int GET_ENTITY_HEALTH(Entity entity);
-- @param entity Entity
-- @return int
function GetEntityHealth() end

-- Return an integer value of entity's maximum health.  Example: - Player = 200
-- @module native
-- @submodule entity
-- @see GET_ENTITY_MAX_HEALTH
-- @usage int GET_ENTITY_MAX_HEALTH(Entity entity);
-- @param entity Entity
-- @return int
function GetEntityMaxHealth() end

-- For instance: ENTITY::SET_ENTITY_MAX_HEALTH(PLAYER::PLAYER_PED_ID(), 200); // director_mode.c4: 67849
-- @module native
-- @submodule entity
-- @see SET_ENTITY_MAX_HEALTH
-- @usage void SET_ENTITY_MAX_HEALTH(Entity entity, int value);
-- @param entity Entity
-- @param int
-- @return void
function SetEntityMaxHealth() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_HEIGHT
-- @usage float GET_ENTITY_HEIGHT(Entity entity, float X, float Y, float Z, BOOL atTop, BOOL inWorldCoords);
-- @param entity Entity
-- @param float
-- @param BOOL
-- @return float
function GetEntityHeight() end

-- Return height (z-dimension) above ground.  Example: The pilot in a titan plane is 1.844176 above ground.  How can i convert it to meters? Everything seems to be in meters, probably this too.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_HEIGHT_ABOVE_GROUND
-- @usage float GET_ENTITY_HEIGHT_ABOVE_GROUND(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityHeightAboveGround() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_MATRIX
-- @usage void GET_ENTITY_MATRIX(Entity entity, Vector3* rightVector, Vector3* forwardVector, Vector3* upVector, Vector3* position);
-- @param entity Entity
-- @param Vector3*
-- @return void
function GetEntityMatrix() end

-- Returns the model hash from the entity
-- @module native
-- @submodule entity
-- @see GET_ENTITY_MODEL
-- @usage Hash GET_ENTITY_MODEL(Entity entity);
-- @param entity Entity
-- @return Hash
function GetEntityModel() end

-- Converts world coords (posX - Z) to coords relative to the entity  Example: posX is given as 50 entity's x coord is 40 the returned x coord will then be 10 or -10, not sure haven't used this in a while (think it is 10 though).
-- @module native
-- @submodule entity
-- @see GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS
-- @usage Vector3 GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS(Entity entity, float posX, float posY, float posZ);
-- @param entity Entity
-- @param float
-- @return Vector3
function GetOffsetFromEntityGivenWorldCoords() end

-- Offset values are relative to the entity.  x = left/right y = forward/backward z = up/down
-- @module native
-- @submodule entity
-- @see GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS
-- @usage Vector3 GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(Entity entity, float offsetX, float offsetY, float offsetZ);
-- @param entity Entity
-- @param float
-- @return Vector3
function GetOffsetFromEntityInWorldCoords() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_PITCH
-- @usage float GET_ENTITY_PITCH(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityPitch() end

-- w is the correct parameter name!
-- @module native
-- @submodule entity
-- @see GET_ENTITY_QUATERNION
-- @usage void GET_ENTITY_QUATERNION(Entity entity, float* x, float* y, float* z, float* w);
-- @param entity Entity
-- @param float*
-- @return void
function GetEntityQuaternion() end

-- Displays the current ROLL axis of the entity [-180.0000/180.0000+] (Sideways Roll) such as a vehicle tipped on its side
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ROLL
-- @usage float GET_ENTITY_ROLL(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityRoll() end

-- rotationOrder refers to the order yaw pitch roll is applied value ranges from 0 to 5. What you use for rotationOrder when getting must be the same as rotationOrder when setting the rotation.  Unsure what value corresponds to what rotation order, more testing will be needed for that. ------ rotationOrder is usually 2 in scripts ------ ENTITY::GET_ENTITY_ROTATION(Any p0, false or true); if false than return from -180 to 180 if true than return from -90 to 90  ---  As said above, the value of p1 affects the outcome. R* uses 1 and 2 instead of 0 and 1, so I marked it as an int.  What it returns is the yaw on the z part of the vector, which makes sense considering R* considers z as vertical. Here's a picture for those of you who don't understand pitch, yaw, and roll:  www.allstar.fiu.edu/aero/images/pic5-1.gif  I don't know why it returns a Vec3, but sometimes the values x and y go negative, yet they're always zero. Just use GET_ENTITY_PITCH and GET_ENTITY_ROLL for pitch and roll.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ROTATION
-- @usage Vector3 GET_ENTITY_ROTATION(Entity entity, int rotationOrder);
-- @param entity Entity
-- @param int
-- @return Vector3
function GetEntityRotation() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ROTATION_VELOCITY
-- @usage Vector3 GET_ENTITY_ROTATION_VELOCITY(Entity entity);
-- @param entity Entity
-- @return Vector3
function GetEntityRotationVelocity() end

-- All ambient entities in-world seem to have the same value for the second argument (Any *script), depending on when the scripthook was activated/re-activated. I've seen numbers from ~5 to almost 70 when the value was translated with to_string. The function return value seems to always be 0.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_SCRIPT
-- @usage char* GET_ENTITY_SCRIPT(Entity entity, ScrHandle* script);
-- @param entity Entity
-- @param ScrHandle*
-- @return char*
function GetEntityScript() end

-- result is in meters per second  ------------------------------------------------------------ So would the conversion to mph and km/h, be along the lines of this.  float speed = GET_ENTITY_SPEED(veh); float kmh = (speed * 3.6); float mph = (speed * 2.236936);
-- @module native
-- @submodule entity
-- @see GET_ENTITY_SPEED
-- @usage float GET_ENTITY_SPEED(Entity entity);
-- @param entity Entity
-- @return float
function GetEntitySpeed() end

-- Relative can be used for getting speed relative to the frame of the vehicle, to determine for example, if you are going in reverse (-y speed) or not (+y speed).
-- @module native
-- @submodule entity
-- @see GET_ENTITY_SPEED_VECTOR
-- @usage Vector3 GET_ENTITY_SPEED_VECTOR(Entity entity, BOOL relative);
-- @param entity Entity
-- @param BOOL
-- @return Vector3
function GetEntitySpeedVector() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_UPRIGHT_VALUE
-- @usage float GET_ENTITY_UPRIGHT_VALUE(Entity entity);
-- @param entity Entity
-- @return float
function GetEntityUprightValue() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_VELOCITY
-- @usage Vector3 GET_ENTITY_VELOCITY(Entity entity);
-- @param entity Entity
-- @return Vector3
function GetEntityVelocity() end

-- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
-- @module native
-- @submodule entity
-- @see GET_OBJECT_INDEX_FROM_ENTITY_INDEX
-- @usage Object GET_OBJECT_INDEX_FROM_ENTITY_INDEX(Entity entity);
-- @param entity Entity
-- @return Object
function GetObjectIndexFromEntityIndex() end

-- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
-- @module native
-- @submodule entity
-- @see GET_PED_INDEX_FROM_ENTITY_INDEX
-- @usage Ped GET_PED_INDEX_FROM_ENTITY_INDEX(Entity entity);
-- @param entity Entity
-- @return Ped
function GetPedIndexFromEntityIndex() end

-- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
-- @module native
-- @submodule entity
-- @see GET_VEHICLE_INDEX_FROM_ENTITY_INDEX
-- @usage Vehicle GET_VEHICLE_INDEX_FROM_ENTITY_INDEX(Entity entity);
-- @param entity Entity
-- @return Vehicle
function GetVehicleIndexFromEntityIndex() end

-- Returns the coordinates of an entity-bone.
-- @module native
-- @submodule entity
-- @see GET_WORLD_POSITION_OF_ENTITY_BONE
-- @usage Vector3 GET_WORLD_POSITION_OF_ENTITY_BONE(Entity entity, int boneIndex);
-- @param entity Entity
-- @param int
-- @return Vector3
function GetWorldPositionOfEntityBone() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_NEAREST_PLAYER_TO_ENTITY
-- @usage Player GET_NEAREST_PLAYER_TO_ENTITY(Entity entity);
-- @param entity Entity
-- @return Player
function GetNearestPlayerToEntity() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM
-- @usage Player GET_NEAREST_PLAYER_TO_ENTITY_ON_TEAM(Entity entity, int team);
-- @param entity Entity
-- @param int
-- @return Player
function GetNearestPlayerToEntityOnTeam() end

-- Returns: 0 = no entity 1 = ped 2 = vehicle 3 = object
-- @module native
-- @submodule entity
-- @see GET_ENTITY_TYPE
-- @usage int GET_ENTITY_TYPE(Entity entity);
-- @param entity Entity
-- @return int
function GetEntityType() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_AN_ENTITY
-- @usage BOOL IS_AN_ENTITY(int handle);
-- @param handle int
-- @return BOOL
function IsAnEntity() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_A_PED
-- @usage BOOL IS_ENTITY_A_PED(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAPed() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_A_MISSION_ENTITY
-- @usage BOOL IS_ENTITY_A_MISSION_ENTITY(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAMissionEntity() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_A_VEHICLE
-- @usage BOOL IS_ENTITY_A_VEHICLE(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAVehicle() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_AN_OBJECT
-- @usage BOOL IS_ENTITY_AN_OBJECT(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAnObject() end

-- Checks if entity is within x/y/zSize distance of x/y/z.   Last three are unknown ints, almost always p7 = 0, p8 = 1, p9 = 0
-- @module native
-- @submodule entity
-- @see IS_ENTITY_AT_COORD
-- @usage BOOL IS_ENTITY_AT_COORD(Entity entity, float xPos, float yPos, float zPos, float xSize, float ySize, float zSize, BOOL p7, BOOL p8, int p9);
-- @param entity Entity
-- @param float
-- @param BOOL
-- @param int
-- @return BOOL
function IsEntityAtCoord() end

-- Checks if entity1 is within the box defined by x/y/zSize of entity2.  Last three parameters are almost alwasy p5 = 0, p6 = 1, p7 = 0
-- @module native
-- @submodule entity
-- @see IS_ENTITY_AT_ENTITY
-- @usage BOOL IS_ENTITY_AT_ENTITY(Entity entity1, Entity entity2, float xSize, float ySize, float zSize, BOOL p5, BOOL p6, int p7);
-- @param entity1 Entity
-- @param Entity
-- @param float
-- @param BOOL
-- @param int
-- @return BOOL
function IsEntityAtEntity() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ATTACHED
-- @usage BOOL IS_ENTITY_ATTACHED(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAttached() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ATTACHED_TO_ANY_OBJECT
-- @usage BOOL IS_ENTITY_ATTACHED_TO_ANY_OBJECT(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAttachedToAnyObject() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ATTACHED_TO_ANY_PED
-- @usage BOOL IS_ENTITY_ATTACHED_TO_ANY_PED(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAttachedToAnyPed() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ATTACHED_TO_ANY_VEHICLE
-- @usage BOOL IS_ENTITY_ATTACHED_TO_ANY_VEHICLE(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityAttachedToAnyVehicle() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ATTACHED_TO_ENTITY
-- @usage BOOL IS_ENTITY_ATTACHED_TO_ENTITY(Entity from, Entity to);
-- @param from Entity
-- @param Entity
-- @return BOOL
function IsEntityAttachedToEntity() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_DEAD
-- @usage BOOL IS_ENTITY_DEAD(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityDead() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_IN_AIR
-- @usage BOOL IS_ENTITY_IN_AIR(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityInAir() end

-- Creates a spherical cone at origin that extends to surface with the angle specified. Then returns true if the entity is inside the spherical cone  Angle is measured in degrees. These values are constant, most likely bogus: p8 = 0, p9 = 1, p10 = 0  This method can also take two float<3> instead of 6 floats.
-- @module native
-- @submodule entity
-- @see IS_ENTITY_IN_ANGLED_AREA
-- @usage BOOL IS_ENTITY_IN_ANGLED_AREA(Entity entity, float originX, float originY, float originZ, float edgeX, float edgeY, float edgeZ, float angle, BOOL p8, BOOL p9, Any p10);
-- @param entity Entity
-- @param float
-- @param BOOL
-- @param Any
-- @return BOOL
function IsEntityInAngledArea() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_IN_AREA
-- @usage BOOL IS_ENTITY_IN_AREA(Entity entity, float x1, float y1, float z1, float x2, float y2, float z2, BOOL p7, BOOL p8, Any p9);
-- @param entity Entity
-- @param float
-- @param BOOL
-- @param Any
-- @return BOOL
function IsEntityInArea() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_IN_ZONE
-- @usage BOOL IS_ENTITY_IN_ZONE(Entity entity, char* zone);
-- @param entity Entity
-- @param char*
-- @return BOOL
function IsEntityInZone() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_IN_WATER
-- @usage BOOL IS_ENTITY_IN_WATER(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityInWater() end

-- Get how much of the entity is submerged.  1.0f is whole entity.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_SUBMERGED_LEVEL
-- @usage float GET_ENTITY_SUBMERGED_LEVEL(Entity entity);
-- @param entity Entity
-- @return float
function GetEntitySubmergedLevel() end

-- Returns true if the entity is in between the minimum and maximum values for the 2d screen coords.  This means that it will return true even if the entity is behind a wall for example, as long as you're looking at their location.  Chipping
-- @module native
-- @submodule entity
-- @see IS_ENTITY_ON_SCREEN
-- @usage BOOL IS_ENTITY_ON_SCREEN(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityOnScreen() end

-- See also PED::IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM 0x6EC47A344923E1ED 0x3C30B447  Taken from ENTITY::IS_ENTITY_PLAYING_ANIM(PLAYER::PLAYER_PED_ID(), "creatures@shark@move", "attack_player", 3)  p4 is always 3 in the scripts.  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see IS_ENTITY_PLAYING_ANIM
-- @usage BOOL IS_ENTITY_PLAYING_ANIM(Entity entity, char* animDict, char* animName, int p4);
-- @param entity Entity
-- @param char*
-- @param int
-- @return BOOL
function IsEntityPlayingAnim() end

-- a static ped will not react to natives like "APPLY_FORCE_TO_ENTITY" or "SET_ENTITY_VELOCITY" and oftentimes will not react to task-natives like "AI::TASK_COMBAT_PED". The only way I know of to make one of these peds react is to ragdoll them (or sometimes to use CLEAR_PED_TASKS_IMMEDIATELY(). Static peds include almost all far-away peds, beach-combers, peds in certain scenarios, peds crossing a crosswalk, peds walking to get back into their cars, and others. If anyone knows how to make a ped non-static without ragdolling them, please edit this with the solution.  how can I make an entity static???
-- @module native
-- @submodule entity
-- @see IS_ENTITY_STATIC
-- @usage BOOL IS_ENTITY_STATIC(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityStatic() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_TOUCHING_ENTITY
-- @usage BOOL IS_ENTITY_TOUCHING_ENTITY(Entity entity, Entity targetEntity);
-- @param entity Entity
-- @param Entity
-- @return BOOL
function IsEntityTouchingEntity() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_TOUCHING_MODEL
-- @usage BOOL IS_ENTITY_TOUCHING_MODEL(Entity entity, Hash modelHash);
-- @param entity Entity
-- @param Hash
-- @return BOOL
function IsEntityTouchingModel() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_UPRIGHT
-- @usage BOOL IS_ENTITY_UPRIGHT(Entity entity, float angle);
-- @param entity Entity
-- @param float
-- @return BOOL
function IsEntityUpright() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_UPSIDEDOWN
-- @usage BOOL IS_ENTITY_UPSIDEDOWN(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityUpsidedown() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_VISIBLE
-- @usage BOOL IS_ENTITY_VISIBLE(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityVisible() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_VISIBLE_TO_SCRIPT
-- @usage BOOL IS_ENTITY_VISIBLE_TO_SCRIPT(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityVisibleToScript() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_OCCLUDED
-- @usage BOOL IS_ENTITY_OCCLUDED(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityOccluded() end

-- First parameter was previously an Entity but after further research it is definitely a hash.
-- @module native
-- @submodule entity
-- @see WOULD_ENTITY_BE_OCCLUDED
-- @usage BOOL WOULD_ENTITY_BE_OCCLUDED(Hash entityModelHash, float x, float y, float z, BOOL p4);
-- @param entityModelHash Hash
-- @param float
-- @param BOOL
-- @return BOOL
function WouldEntityBeOccluded() end

-- @todo
-- @module native
-- @submodule entity
-- @see IS_ENTITY_WAITING_FOR_WORLD_COLLISION
-- @usage BOOL IS_ENTITY_WAITING_FOR_WORLD_COLLISION(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityWaitingForWorldCollision() end

-- p6/relative - makes the xyz force not relative to world coords, but to something else p7/highForce - setting false will make the force really low
-- @module native
-- @submodule entity
-- @see APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS
-- @usage void APPLY_FORCE_TO_ENTITY_CENTER_OF_MASS(Entity entity, int forceType, float x, float y, float z, BOOL p5, BOOL isRel, BOOL highForce, BOOL p8);
-- @param entity Entity
-- @param int
-- @param float
-- @param BOOL
-- @return void
function ApplyForceToEntityCenterOfMass() end

-- forceType - 0 to 5 (any number greater then 5 force does nothing) p8 - no effect (a quick disassembly will tell us what it does) isRel - specifies if the force direction is relative to direction entity is facing (true), or static world direction (false). p11/highForce - setting false will make the force really low  enum ForceTypes { 	MIN_FORCE = 0, 	MAX_FORCE_ROT = 1, 	MIN_FORCE_2 = 2, 	MAX_FORCE_ROT_2 = 3, //stable, good for custom handling 	FORCE_NO_ROT = 4, 	FORCE_ROT_PLUS_FORCE = 5 };  gtaforums.com/topic/885669-precisely-define-object-physics/ gtaforums.com/topic/887362-apply-forces-and-momentums-to-entityobject/
-- @module native
-- @submodule entity
-- @see APPLY_FORCE_TO_ENTITY
-- @usage void APPLY_FORCE_TO_ENTITY(Entity entity, int forceType, float x, float y, float z, float xRot, float yRot, float zRot, int p8, BOOL isRel, BOOL p10, BOOL highForce, BOOL p12, BOOL p13);
-- @param entity Entity
-- @param int
-- @param float
-- @param BOOL
-- @return void
function ApplyForceToEntity() end

-- Attaches entity1 to bone (boneIndex) of entity2.  boneIndex - this is different to boneID, use GET_PED_BONE_INDEX to get the index from the ID. use the index for attaching to specific bones. entity1 will be attached to entity2's centre if bone index given doesn't correspond to bone indexes for that entity type.  useSoftPinning - if set to false attached entity will not detach when fixed collision - controls collision between the two entities (FALSE disables collision). isPed - pitch doesnt work when false and roll will only work on negative numbers (only peds) vertexIndex - position of vertex fixedRot - if false it ignores entity vector
-- @module native
-- @submodule entity
-- @see ATTACH_ENTITY_TO_ENTITY
-- @usage void ATTACH_ENTITY_TO_ENTITY(Entity entity1, Entity entity2, int boneIndex, float xPos, float yPos, float zPos, float xRot, float yRot, float zRot, BOOL p9, BOOL useSoftPinning, BOOL collision, BOOL isPed, int vertexIndex, BOOL fixedRot);
-- @param entity1 Entity
-- @param Entity
-- @param int
-- @param float
-- @param BOOL
-- @return void
function AttachEntityToEntity() end

-- breakForce is the amount of force required to break the bond. p14 - is always 1 in scripts p15 - is 1 or 0 in scripts - unknoun what it does p16 - controls collision between the two entities (FALSE disables collision). p17 - do not teleport entity to be attached to the position of the bone Index of the target entity (if 1, entity will not be teleported to target bone) p18 - is always 2 in scripts.
-- @module native
-- @submodule entity
-- @see ATTACH_ENTITY_TO_ENTITY_PHYSICALLY
-- @usage void ATTACH_ENTITY_TO_ENTITY_PHYSICALLY(Entity entity1, Entity entity2, int boneIndex1, int boneIndex2, float xPos1, float yPos1, float zPos1, float xPos2, float yPos2, float zPos2, float xRot, float yRot, float zRot, float breakForce, BOOL fixedRot, BOOL p15, BOOL collision, BOOL p17, int p18);
-- @param entity1 Entity
-- @param Entity
-- @param int
-- @param float
-- @param BOOL
-- @return void
function AttachEntityToEntityPhysically() end

-- Called to update entity attachments.
-- @module native
-- @submodule entity
-- @see PROCESS_ENTITY_ATTACHMENTS
-- @usage void PROCESS_ENTITY_ATTACHMENTS(Entity entity);
-- @param entity Entity
-- @return void
function ProcessEntityAttachments() end

-- Returns the index of the bone. If the bone was not found, -1 will be returned.   list: pastebin.com/D7JMnX1g  BoneNames: 	chassis, 	windscreen, 	seat_pside_r, 	seat_dside_r, 	bodyshell, 	suspension_lm, 	suspension_lr, 	platelight, 	attach_female, 	attach_male, 	bonnet, 	boot, 	chassis_dummy,	//Center of the dummy 	chassis_Control,	//Not found yet 	door_dside_f,	//Door left, front 	door_dside_r,	//Door left, back 	door_pside_f,	//Door right, front 	door_pside_r,	//Door right, back 	Gun_GripR, 	windscreen_f, 	platelight,	//Position where the light above the numberplate is located 	VFX_Emitter, 	window_lf,	//Window left, front 	window_lr,	//Window left, back 	window_rf,	//Window right, front 	window_rr,	//Window right, back 	engine,	//Position of the engine 	gun_ammo, 	ROPE_ATTATCH,	//Not misspelled. In script "finale_heist2b.c4". 	wheel_lf,	//Wheel left, front 	wheel_lr,	//Wheel left, back 	wheel_rf,	//Wheel right, front 	wheel_rr,	//Wheel right, back 	exhaust,	//Exhaust. shows only the position of the stock-exhaust 	overheat,	//A position on the engine(not exactly sure, how to name it) 	misc_e,	//Not a car-bone. 	seat_dside_f,	//Driver-seat 	seat_pside_f,	//Seat next to driver 	Gun_Nuzzle, 	seat_r  I doubt that the function is case-sensitive, since I found a "Chassis" and a "chassis". - Just tested: Definitely not case-sensitive.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_BONE_INDEX_BY_NAME
-- @usage int GET_ENTITY_BONE_INDEX_BY_NAME(Entity entity, char* boneName);
-- @param entity Entity
-- @param char*
-- @return int
function GetEntityBoneIndexByName() end

-- @todo
-- @module native
-- @submodule entity
-- @see CLEAR_ENTITY_LAST_DAMAGE_ENTITY
-- @usage Any CLEAR_ENTITY_LAST_DAMAGE_ENTITY(Entity entity);
-- @param entity Entity
-- @return Any
function ClearEntityLastDamageEntity() end

-- Deletes the specified entity, then sets the handle pointed to by the pointer to NULL.
-- @module native
-- @submodule entity
-- @see DELETE_ENTITY
-- @usage void DELETE_ENTITY(Entity* entity);
-- @param entity Entity*
-- @return void
function DeleteEntity() end

-- p1 and p2 have no effect  maybe a quick disassembly will tell us what they do  if p2 is set to true, the both entities won't collide with the other until the distance between them is above 4 meters.   p1?
-- @module native
-- @submodule entity
-- @see DETACH_ENTITY
-- @usage void DETACH_ENTITY(Entity entity, BOOL p1, BOOL collision);
-- @param entity Entity
-- @param BOOL
-- @return void
function DetachEntity() end

-- @todo
-- @module native
-- @submodule entity
-- @see FREEZE_ENTITY_POSITION
-- @usage void FREEZE_ENTITY_POSITION(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function FreezeEntityPosition() end

-- delta and bitset are guessed fields. They are based on the fact that most of the calls have 0 or nil field types passed in.  The only time bitset has a value is 0x4000 and the only time delta has a value is during stealth with usually <1.0f values.  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see PLAY_ENTITY_ANIM
-- @usage BOOL PLAY_ENTITY_ANIM(Entity entity, char* animName, char* animDict, float p3, BOOL loop, BOOL stayInAnim, BOOL p6, float delta, Any bitset);
-- @param entity Entity
-- @param char*
-- @param float
-- @param BOOL
-- @param Any
-- @return BOOL
function PlayEntityAnim() end

-- p4 and p7 are usually 1000.0f.  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see PLAY_SYNCHRONIZED_ENTITY_ANIM
-- @usage BOOL PLAY_SYNCHRONIZED_ENTITY_ANIM(Entity entity, int syncedScene, char* animation, char* propName, float p4, float p5, Any p6, float p7);
-- @param entity Entity
-- @param int
-- @param char*
-- @param float
-- @param Any
-- @return BOOL
function PlaySynchronizedEntityAnim() end

-- Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM
-- @usage BOOL PLAY_SYNCHRONIZED_MAP_ENTITY_ANIM(float p0, float p1, float p2, float p3, Any p4, Any p5, Any* p6, Any* p7, float p8, float p9, Any p10, float p11);
-- @param p0 float
-- @param float
-- @param Any
-- @param Any*
-- @return BOOL
function PlaySynchronizedMapEntityAnim() end

-- @todo
-- @module native
-- @submodule entity
-- @see STOP_SYNCHRONIZED_MAP_ENTITY_ANIM
-- @usage BOOL STOP_SYNCHRONIZED_MAP_ENTITY_ANIM(float p0, float p1, float p2, float p3, Any p4, float p5);
-- @param p0 float
-- @param float
-- @param Any
-- @return BOOL
function StopSynchronizedMapEntityAnim() end

-- Animations List : www.ls-multiplayer.com/dev/index.php?section=3  RAGEPluginHook list: docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
-- @module native
-- @submodule entity
-- @see STOP_ENTITY_ANIM
-- @usage Any STOP_ENTITY_ANIM(Entity entity, char* animation, char* animGroup, float p3);
-- @param entity Entity
-- @param char*
-- @param float
-- @return Any
function StopEntityAnim() end

-- p1 sync task id?
-- @module native
-- @submodule entity
-- @see STOP_SYNCHRONIZED_ENTITY_ANIM
-- @usage BOOL STOP_SYNCHRONIZED_ENTITY_ANIM(Entity entity, float p1, BOOL p2);
-- @param entity Entity
-- @param float
-- @param BOOL
-- @return BOOL
function StopSynchronizedEntityAnim() end

-- if (ENTITY::HAS_ANIM_EVENT_FIRED(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("CreateObject")))
-- @module native
-- @submodule entity
-- @see HAS_ANIM_EVENT_FIRED
-- @usage BOOL HAS_ANIM_EVENT_FIRED(Entity entity, Hash actionHash);
-- @param entity Entity
-- @param Hash
-- @return BOOL
function HasAnimEventFired() end

-- In the script "player_scene_t_bbfight.c4": "if (ENTITY::FIND_ANIM_EVENT_PHASE(&l_16E, &l_19F[v_4/*16*/], v_9, &v_A, &v_B))" -- &l_16E (p0) is requested as an anim dictionary earlier in the script. -- &l_19F[v_4/*16*/] (p1) is used in other natives in the script as the "animation" param. -- v_9 (p2) is instantiated as "victim_fall"; I'm guessing that's another anim --v_A and v_B (p3 & p4) are both set as -1.0, but v_A is used immediately after this native for:  "if (v_A < ENTITY::GET_ENTITY_ANIM_CURRENT_TIME(...))" Both v_A and v_B are seemingly used to contain both Vector3's and floats, so I can't say what either really is other than that they are both output parameters. p4 looks more like a *Vector3 though -alphazolam  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see FIND_ANIM_EVENT_PHASE
-- @usage BOOL FIND_ANIM_EVENT_PHASE(char* animDictionary, char* animName, char* p2, Any* p3, Any* p4);
-- @param animDictionary char*
-- @param char*
-- @param Any*
-- @return BOOL
function FindAnimEventPhase() end

-- Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ANIM_CURRENT_TIME
-- @usage void SET_ENTITY_ANIM_CURRENT_TIME(Entity entity, char* animDictionary, char* animName, float time);
-- @param entity Entity
-- @param char*
-- @param float
-- @return void
function SetEntityAnimCurrentTime() end

-- Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ANIM_SPEED
-- @usage void SET_ENTITY_ANIM_SPEED(Entity entity, char* animDictionary, char* animName, float speedMultiplier);
-- @param entity Entity
-- @param char*
-- @param float
-- @return void
function SetEntityAnimSpeed() end

-- Makes the specified entity (ped, vehicle or object) persistent. Persistent entities will not automatically be removed by the engine.  p1 has no effect when either its on or off  maybe a quick disassembly will tell us what it does  p2 has no effect when either its on or off  maybe a quick disassembly will tell us what it does
-- @module native
-- @submodule entity
-- @see SET_ENTITY_AS_MISSION_ENTITY
-- @usage void SET_ENTITY_AS_MISSION_ENTITY(Entity entity, BOOL p1, BOOL p2);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityAsMissionEntity() end

-- Marks the specified entity (ped, vehicle or object) as no longer needed. Entities marked as no longer needed, will be deleted as the engine sees fit.
-- @module native
-- @submodule entity
-- @see SET_ENTITY_AS_NO_LONGER_NEEDED
-- @usage void SET_ENTITY_AS_NO_LONGER_NEEDED(Entity* entity);
-- @param entity Entity*
-- @return void
function SetEntityAsNoLongerNeeded() end

-- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.
-- @module native
-- @submodule entity
-- @see SET_PED_AS_NO_LONGER_NEEDED
-- @usage void SET_PED_AS_NO_LONGER_NEEDED(Ped* ped);
-- @param ped Ped*
-- @return void
function SetPedAsNoLongerNeeded() end

-- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.
-- @module native
-- @submodule entity
-- @see SET_VEHICLE_AS_NO_LONGER_NEEDED
-- @usage void SET_VEHICLE_AS_NO_LONGER_NEEDED(Vehicle* vehicle);
-- @param vehicle Vehicle*
-- @return void
function SetVehicleAsNoLongerNeeded() end

-- This is an alias of SET_ENTITY_AS_NO_LONGER_NEEDED.
-- @module native
-- @submodule entity
-- @see SET_OBJECT_AS_NO_LONGER_NEEDED
-- @usage void SET_OBJECT_AS_NO_LONGER_NEEDED(Object* object);
-- @param object Object*
-- @return void
function SetObjectAsNoLongerNeeded() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_CAN_BE_DAMAGED
-- @usage void SET_ENTITY_CAN_BE_DAMAGED(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityCanBeDamaged() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP
-- @usage void SET_ENTITY_CAN_BE_DAMAGED_BY_RELATIONSHIP_GROUP(Entity entity, BOOL bCanBeDamaged, int relGroup);
-- @param entity Entity
-- @param BOOL
-- @param int
-- @return void
function SetEntityCanBeDamagedByRelationshipGroup() end

-- Sets whether the entity can be targeted without being in line-of-sight.
-- @module native
-- @submodule entity
-- @see SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS
-- @usage void SET_ENTITY_CAN_BE_TARGETED_WITHOUT_LOS(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityCanBeTargetedWithoutLos() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_COLLISION
-- @usage void SET_ENTITY_COLLISION(Entity entity, BOOL toggle, BOOL keepPhysics);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityCollision() end

-- p7 is always 1 in the scripts. Set to 1, an area around the destination coords for the moved entity is cleared from other entities.    Often ends with 1, 0, 0, 1); in the scripts. It works.   Axis - Invert Axis Flags
-- @module native
-- @submodule entity
-- @see SET_ENTITY_COORDS
-- @usage void SET_ENTITY_COORDS(Entity entity, float xPos, float yPos, float zPos, BOOL xAxis, BOOL yAxis, BOOL zAxis, BOOL clearArea);
-- @param entity Entity
-- @param float
-- @param BOOL
-- @return void
function SetEntityCoords() end

-- Axis - Invert Axis Flags
-- @module native
-- @submodule entity
-- @see SET_ENTITY_COORDS_NO_OFFSET
-- @usage void SET_ENTITY_COORDS_NO_OFFSET(Entity entity, float xPos, float yPos, float zPos, BOOL xAxis, BOOL yAxis, BOOL zAxis);
-- @param entity Entity
-- @param float
-- @param BOOL
-- @return void
function SetEntityCoordsNoOffset() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_DYNAMIC
-- @usage void SET_ENTITY_DYNAMIC(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityDynamic() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_HEADING
-- @usage void SET_ENTITY_HEADING(Entity entity, float heading);
-- @param entity Entity
-- @param float
-- @return void
function SetEntityHeading() end

-- health >= 0
-- @module native
-- @submodule entity
-- @see SET_ENTITY_HEALTH
-- @usage void SET_ENTITY_HEALTH(Entity entity, int health);
-- @param entity Entity
-- @param int
-- @return void
function SetEntityHealth() end

-- Sets a ped or an object totally invincible. It doesn't take any kind of damage. Peds will not ragdoll on explosions and the tazer animation won't apply either.  If you use this for a ped and you want Ragdoll to stay enabled, then do: *(DWORD *)(pedAddress + 0x188) |= (1 << 9);  Use this if you want to get the invincibility status: 	bool IsPedInvincible(Ped ped) 	{ 		auto addr = getScriptHandleBaseAddress(ped);	  		if (addr) 		{ 			DWORD flag = *(DWORD *)(addr + 0x188); 			return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0); 		}  		return false; 	}
-- @module native
-- @submodule entity
-- @see SET_ENTITY_INVINCIBLE
-- @usage void SET_ENTITY_INVINCIBLE(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityInvincible() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_IS_TARGET_PRIORITY
-- @usage void SET_ENTITY_IS_TARGET_PRIORITY(Entity entity, BOOL p1, float p2);
-- @param entity Entity
-- @param BOOL
-- @param float
-- @return void
function SetEntityIsTargetPriority() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_LIGHTS
-- @usage void SET_ENTITY_LIGHTS(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityLights() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_LOAD_COLLISION_FLAG
-- @usage void SET_ENTITY_LOAD_COLLISION_FLAG(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityLoadCollisionFlag() end

-- @todo
-- @module native
-- @submodule entity
-- @see HAS_COLLISION_LOADED_AROUND_ENTITY
-- @usage BOOL HAS_COLLISION_LOADED_AROUND_ENTITY(Entity entity);
-- @param entity Entity
-- @return BOOL
function HasCollisionLoadedAroundEntity() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_MAX_SPEED
-- @usage void SET_ENTITY_MAX_SPEED(Entity entity, float speed);
-- @param entity Entity
-- @param float
-- @return void
function SetEntityMaxSpeed() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ONLY_DAMAGED_BY_PLAYER
-- @usage void SET_ENTITY_ONLY_DAMAGED_BY_PLAYER(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityOnlyDamagedByPlayer() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP
-- @usage void SET_ENTITY_ONLY_DAMAGED_BY_RELATIONSHIP_GROUP(Entity entity, BOOL p1, Any p2);
-- @param entity Entity
-- @param BOOL
-- @param Any
-- @return void
function SetEntityOnlyDamagedByRelationshipGroup() end

-- Enable / disable each type of damage.  Can't get drownProof to work. -------------- p7 is to to '1' in am_mp_property_ext/int: entity::set_entity_proofs(uParam0->f_19, true, true, true, true, true, true, 1, true);
-- @module native
-- @submodule entity
-- @see SET_ENTITY_PROOFS
-- @usage void SET_ENTITY_PROOFS(Entity entity, BOOL bulletProof, BOOL fireProof, BOOL explosionProof, BOOL collisionProof, BOOL meleeProof, BOOL p6, BOOL p7, BOOL drownProof);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityProofs() end

-- w is the correct parameter name!
-- @module native
-- @submodule entity
-- @see SET_ENTITY_QUATERNION
-- @usage void SET_ENTITY_QUATERNION(Entity entity, float x, float y, float z, float w);
-- @param entity Entity
-- @param float
-- @return void
function SetEntityQuaternion() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_RECORDS_COLLISIONS
-- @usage void SET_ENTITY_RECORDS_COLLISIONS(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityRecordsCollisions() end

-- rotationOrder refers to the order yaw pitch roll is applied value ranges from 0 to 5. What you use for rotationOrder when setting must be the same as rotationOrder when getting the rotation.  Unsure what value corresponds to what rotation order, more testing will be needed for that. For the most part R* uses 1 or 2 as the order. p5 is usually set as true
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ROTATION
-- @usage void SET_ENTITY_ROTATION(Entity entity, float pitch, float roll, float yaw, int rotationOrder, BOOL p5);
-- @param entity Entity
-- @param float
-- @param int
-- @param BOOL
-- @return void
function SetEntityRotation() end

-- unk was always 0.
-- @module native
-- @submodule entity
-- @see SET_ENTITY_VISIBLE
-- @usage void SET_ENTITY_VISIBLE(Entity entity, BOOL toggle, BOOL unk);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityVisible() end

-- Note that the third parameter(denoted as z) is "up and down" with positive numbers encouraging upwards movement.
-- @module native
-- @submodule entity
-- @see SET_ENTITY_VELOCITY
-- @usage void SET_ENTITY_VELOCITY(Entity entity, float x, float y, float z);
-- @param entity Entity
-- @param float
-- @return void
function SetEntityVelocity() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_HAS_GRAVITY
-- @usage void SET_ENTITY_HAS_GRAVITY(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityHasGravity() end

-- LOD distance can be 0 to 0xFFFF (higher values will result in 0xFFFF) as it is actually stored as a 16-bit value (aka uint16_t).
-- @module native
-- @submodule entity
-- @see SET_ENTITY_LOD_DIST
-- @usage void SET_ENTITY_LOD_DIST(Entity entity, int value);
-- @param entity Entity
-- @param int
-- @return void
function SetEntityLodDist() end

-- Returns the LOD distance of an entity.
-- @module native
-- @submodule entity
-- @see GET_ENTITY_LOD_DIST
-- @usage int GET_ENTITY_LOD_DIST(Entity entity);
-- @param entity Entity
-- @return int
function GetEntityLodDist() end

-- skin - everything alpha except skin Set entity alpha level. Ranging from 0 to 255 but chnages occur after every 20 percent (after every 51).
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ALPHA
-- @usage void SET_ENTITY_ALPHA(Entity entity, int alphaLevel, BOOL skin);
-- @param entity Entity
-- @param int
-- @param BOOL
-- @return void
function SetEntityAlpha() end

-- @todo
-- @module native
-- @submodule entity
-- @see GET_ENTITY_ALPHA
-- @usage int GET_ENTITY_ALPHA(Entity entity);
-- @param entity Entity
-- @return int
function GetEntityAlpha() end

-- @todo
-- @module native
-- @submodule entity
-- @see RESET_ENTITY_ALPHA
-- @usage Any RESET_ENTITY_ALPHA(Entity entity);
-- @param entity Entity
-- @return Any
function ResetEntityAlpha() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_ALWAYS_PRERENDER
-- @usage void SET_ENTITY_ALWAYS_PRERENDER(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityAlwaysPrerender() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_RENDER_SCORCHED
-- @usage void SET_ENTITY_RENDER_SCORCHED(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityRenderScorched() end

-- Example here: www.gtaforums.com/topic/830463-help-with-turning-lights-green-and-causing-peds-to-crash-into-each-other/#entry1068211340  0 = green 1 = red 2 = yellow changing lights may not change the behavior of vehicles
-- @module native
-- @submodule entity
-- @see SET_ENTITY_TRAFFICLIGHT_OVERRIDE
-- @usage void SET_ENTITY_TRAFFICLIGHT_OVERRIDE(Entity entity, int state);
-- @param entity Entity
-- @param int
-- @return void
function SetEntityTrafficlightOverride() end

-- Only works with objects! Network players do not see changes done with this.
-- @module native
-- @submodule entity
-- @see CREATE_MODEL_SWAP
-- @usage void CREATE_MODEL_SWAP(float x, float y, float z, float radius, Hash originalModel, Hash newModel, BOOL p6);
-- @param x float
-- @param float
-- @param Hash
-- @param BOOL
-- @return void
function CreateModelSwap() end

-- @todo
-- @module native
-- @submodule entity
-- @see REMOVE_MODEL_SWAP
-- @usage void REMOVE_MODEL_SWAP(float x, float y, float z, float radius, Hash originalModel, Hash newModel, BOOL p6);
-- @param x float
-- @param float
-- @param Hash
-- @param BOOL
-- @return void
function RemoveModelSwap() end

-- p5 = sets as true in scripts Same as the comment for CREATE_MODEL_SWAP unless for some reason p5 affects it this only works with objects as well.  Network players do not see changes done with this.
-- @module native
-- @submodule entity
-- @see CREATE_MODEL_HIDE
-- @usage void CREATE_MODEL_HIDE(float x, float y, float z, float radius, Hash model, BOOL p5);
-- @param x float
-- @param float
-- @param Hash
-- @param BOOL
-- @return void
function CreateModelHide() end

-- @todo
-- @module native
-- @submodule entity
-- @see CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS
-- @usage void CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS(float x, float y, float z, float radius, Hash model, BOOL p5);
-- @param x float
-- @param float
-- @param Hash
-- @param BOOL
-- @return void
function CreateModelHideExcludingScriptObjects() end

-- @todo
-- @module native
-- @submodule entity
-- @see REMOVE_MODEL_HIDE
-- @usage void REMOVE_MODEL_HIDE(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5);
-- @param p0 Any
-- @param Any
-- @return void
function RemoveModelHide() end

-- @todo
-- @module native
-- @submodule entity
-- @see CREATE_FORCED_OBJECT
-- @usage void CREATE_FORCED_OBJECT(float x, float y, float z, Any p3, Hash modelHash, BOOL p5);
-- @param x float
-- @param float
-- @param Any
-- @param Hash
-- @param BOOL
-- @return void
function CreateForcedObject() end

-- @todo
-- @module native
-- @submodule entity
-- @see REMOVE_FORCED_OBJECT
-- @usage void REMOVE_FORCED_OBJECT(Any p0, Any p1, Any p2, Any p3, Any p4);
-- @param p0 Any
-- @param Any
-- @return void
function RemoveForcedObject() end

-- Calling this function, regardless of the "unknown" value, disabled collision between two entities.  Importance of entity1 and 2 order is unclear.
-- @module native
-- @submodule entity
-- @see SET_ENTITY_NO_COLLISION_ENTITY
-- @usage void SET_ENTITY_NO_COLLISION_ENTITY(Entity entity1, Entity entity2, BOOL unknown);
-- @param entity1 Entity
-- @param Entity
-- @param BOOL
-- @return void
function SetEntityNoCollisionEntity() end

-- @todo
-- @module native
-- @submodule entity
-- @see SET_ENTITY_MOTION_BLUR
-- @usage void SET_ENTITY_MOTION_BLUR(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityMotionBlur() end