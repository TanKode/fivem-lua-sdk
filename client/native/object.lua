-- p5 - last parameter does not mean object handle is returned maybe a quick view in disassembly will tell us what is actually does  ----------  prop_tt_screenstatic (0xE2E039BC) is handled different. Not sure how yet but it I know it is. thx fr Xenus.oida
-- @module native
-- @submodule object
-- @see CREATE_OBJECT
-- @usage Object CREATE_OBJECT(Object modelHash, float x, float y, float z, BOOL isNetwork, BOOL p5, BOOL dynamic);
-- @param modelHash Object
-- @param float
-- @param BOOL
-- @return Object
function CreateObject() end

-- p5 - does not mean object handle is returned maybe a quick view in disassembly will tell us what is actually does
-- @module native
-- @submodule object
-- @see CREATE_OBJECT_NO_OFFSET
-- @usage Object CREATE_OBJECT_NO_OFFSET(Hash modelHash, float x, float y, float z, BOOL isNetwork, BOOL p5, BOOL dynamic);
-- @param modelHash Hash
-- @param float
-- @param BOOL
-- @return Object
function CreateObjectNoOffset() end

-- Deletes the specified object, then sets the handle pointed to by the pointer to NULL.
-- @module native
-- @submodule object
-- @see DELETE_OBJECT
-- @usage void DELETE_OBJECT(Object* object);
-- @param object Object*
-- @return void
function DeleteObject() end

-- @todo
-- @module native
-- @submodule object
-- @see PLACE_OBJECT_ON_GROUND_PROPERLY
-- @usage BOOL PLACE_OBJECT_ON_GROUND_PROPERLY(Object object);
-- @param object Object
-- @return BOOL
function PlaceObjectOnGroundProperly() end

-- Returns true if the object has finished moving.  If false, moves the object towards the specified X, Y and Z coordinates with the specified X, Y and Z speed.  See also: gtag.gtagaming.com/opcode-database/opcode/034E/
-- @module native
-- @submodule object
-- @see SLIDE_OBJECT
-- @usage BOOL SLIDE_OBJECT(Object object, float toX, float toY, float toZ, float speedX, float speedY, float speedZ, BOOL collision);
-- @param object Object
-- @param float
-- @param BOOL
-- @return BOOL
function SlideObject() end

-- @todo
-- @module native
-- @submodule object
-- @see SET_OBJECT_TARGETTABLE
-- @usage Any SET_OBJECT_TARGETTABLE(Object object, BOOL targettable);
-- @param object Object
-- @param BOOL
-- @return Any
function SetObjectTargettable() end

-- Has 8 params in the latest patches.  isMission - if true doesn't return mission objects
-- @module native
-- @submodule object
-- @see GET_CLOSEST_OBJECT_OF_TYPE
-- @usage Object GET_CLOSEST_OBJECT_OF_TYPE(float x, float y, float z, float radius, Hash modelHash, BOOL isMission, BOOL p6, BOOL p7);
-- @param x float
-- @param float
-- @param Hash
-- @param BOOL
-- @return Object
function GetClosestObjectOfType() end

-- @todo
-- @module native
-- @submodule object
-- @see HAS_OBJECT_BEEN_BROKEN
-- @usage BOOL HAS_OBJECT_BEEN_BROKEN(Object object);
-- @param object Object
-- @return BOOL
function HasObjectBeenBroken() end

-- @todo
-- @module native
-- @submodule object
-- @see HAS_CLOSEST_OBJECT_OF_TYPE_BEEN_BROKEN
-- @usage BOOL HAS_CLOSEST_OBJECT_OF_TYPE_BEEN_BROKEN(float p0, float p1, float p2, float p3, Hash modelHash, Any p5);
-- @param p0 float
-- @param float
-- @param Hash
-- @param Any
-- @return BOOL
function HasClosestObjectOfTypeBeenBroken() end

-- Hardcoded to not work in multiplayer.   Used to lock/unlock doors to interior areas of the game.  (Possible) Door Types:  pastebin.com/9S2m3qA4  Heading is either 1, 0 or -1 in the scripts. Means default closed(0) or opened either into(1) or out(-1) of the interior. Locked means that the heading is locked.   p6 is always 0.   225 door types, model names and coords found in stripclub.c4: pastebin.com/gywnbzsH  get door info: pastebin.com/i14rbekD
-- @module native
-- @submodule object
-- @see SET_STATE_OF_CLOSEST_DOOR_OF_TYPE
-- @usage void SET_STATE_OF_CLOSEST_DOOR_OF_TYPE(Hash type, float x, float y, float z, BOOL locked, float heading, BOOL p6);
-- @param type Hash
-- @param float
-- @param BOOL
-- @return void
function SetStateOfClosestDoorOfType() end

-- locked is 0 if no door is found locked is 0 if door is unlocked locked is 1 if door is found and unlocked.  ------------- the locked bool is either 0(unlocked)(false) or 1(locked)(true)
-- @module native
-- @submodule object
-- @see GET_STATE_OF_CLOSEST_DOOR_OF_TYPE
-- @usage void GET_STATE_OF_CLOSEST_DOOR_OF_TYPE(Hash type, float x, float y, float z, BOOL* locked, float* heading);
-- @param type Hash
-- @param float
-- @param BOOL*
-- @param float*
-- @return void
function GetStateOfClosestDoorOfType() end

-- @todo
-- @module native
-- @submodule object
-- @see ADD_DOOR_TO_SYSTEM
-- @usage void ADD_DOOR_TO_SYSTEM(Hash doorHash, Hash modelHash, float x, float y, float z, BOOL p5, BOOL p6, BOOL p7);
-- @param doorHash Hash
-- @param Hash
-- @param float
-- @param BOOL
-- @return void
function AddDoorToSystem() end

-- @todo
-- @module native
-- @submodule object
-- @see REMOVE_DOOR_FROM_SYSTEM
-- @usage void REMOVE_DOOR_FROM_SYSTEM(Hash doorHash);
-- @param doorHash Hash
-- @return void
function RemoveDoorFromSystem() end

-- @todo
-- @module native
-- @submodule object
-- @see IS_DOOR_CLOSED
-- @usage BOOL IS_DOOR_CLOSED(Hash door);
-- @param door Hash
-- @return BOOL
function IsDoorClosed() end

-- @todo
-- @module native
-- @submodule object
-- @see IS_GARAGE_EMPTY
-- @usage BOOL IS_GARAGE_EMPTY(Any garage, BOOL p1, int p2);
-- @param garage Any
-- @param BOOL
-- @param int
-- @return BOOL
function IsGarageEmpty() end

-- p5 is usually 0.
-- @module native
-- @submodule object
-- @see DOES_OBJECT_OF_TYPE_EXIST_AT_COORDS
-- @usage BOOL DOES_OBJECT_OF_TYPE_EXIST_AT_COORDS(float x, float y, float z, float radius, Hash hash, BOOL p5);
-- @param x float
-- @param float
-- @param Hash
-- @param BOOL
-- @return BOOL
function DoesObjectOfTypeExistAtCoords() end

-- @todo
-- @module native
-- @submodule object
-- @see IS_POINT_IN_ANGLED_AREA
-- @usage BOOL IS_POINT_IN_ANGLED_AREA(float p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, float p9, BOOL p10, BOOL p11);
-- @param p0 float
-- @param float
-- @param BOOL
-- @return BOOL
function IsPointInAngledArea() end

-- Adjust the physics parameters of a prop, or otherwise known as "object". This is useful for simulated gravity.  Other parameters seem to be unknown.  p2: seems to be weight and gravity related. Higher value makes the obj fall faster. Very sensitive? p3: seems similar to p2 p4: makes obj fall slower the higher the value p5: similar to p4
-- @module native
-- @submodule object
-- @see SET_OBJECT_PHYSICS_PARAMS
-- @usage void SET_OBJECT_PHYSICS_PARAMS(Object object, float weight, float p2, float p3, float p4, float p5, float gravity, float p7, float p8, float p9, float p10, float buoyancy);
-- @param object Object
-- @param float
-- @return void
function SetObjectPhysicsParams() end

-- @todo
-- @module native
-- @submodule object
-- @see GET_OBJECT_FRAGMENT_DAMAGE_HEALTH
-- @usage float GET_OBJECT_FRAGMENT_DAMAGE_HEALTH(Any p0, BOOL p1);
-- @param p0 Any
-- @param BOOL
-- @return float
function GetObjectFragmentDamageHealth() end

-- @todo
-- @module native
-- @submodule object
-- @see SET_ACTIVATE_OBJECT_PHYSICS_AS_SOON_AS_IT_IS_UNFROZEN
-- @usage void SET_ACTIVATE_OBJECT_PHYSICS_AS_SOON_AS_IT_IS_UNFROZEN(Object object, BOOL toggle);
-- @param object Object
-- @param BOOL
-- @return void
function SetActivateObjectPhysicsAsSoonAsItIsUnfrozen() end

-- @todo
-- @module native
-- @submodule object
-- @see IS_ANY_OBJECT_NEAR_POINT
-- @usage BOOL IS_ANY_OBJECT_NEAR_POINT(float x, float y, float z, float range, BOOL p4);
-- @param x float
-- @param float
-- @param BOOL
-- @return BOOL
function IsAnyObjectNearPoint() end

-- @todo
-- @module native
-- @submodule object
-- @see IS_OBJECT_NEAR_POINT
-- @usage BOOL IS_OBJECT_NEAR_POINT(Hash objectHash, float x, float y, float z, float range);
-- @param objectHash Hash
-- @param float
-- @return BOOL
function IsObjectNearPoint() end

-- @todo
-- @module native
-- @submodule object
-- @see TRACK_OBJECT_VISIBILITY
-- @usage void TRACK_OBJECT_VISIBILITY(Any p0);
-- @param p0 Any
-- @return void
function TrackObjectVisibility() end

-- @todo
-- @module native
-- @submodule object
-- @see IS_OBJECT_VISIBLE
-- @usage BOOL IS_OBJECT_VISIBLE(Object object);
-- @param object Object
-- @return BOOL
function IsObjectVisible() end

-- Pickup hashes: pastebin.com/8EuSv2r1
-- @module native
-- @submodule object
-- @see CREATE_PICKUP
-- @usage Pickup CREATE_PICKUP(Hash pickupHash, float posX, float posY, float posZ, int p4, int value, BOOL p6, Hash modelHash);
-- @param pickupHash Hash
-- @param float
-- @param int
-- @param BOOL
-- @param Hash
-- @return Pickup
function CreatePickup() end

-- Pickup hashes: pastebin.com/8EuSv2r1  flags: 8 (1 << 3): place on ground 512 (1 << 9): spin around
-- @module native
-- @submodule object
-- @see CREATE_PICKUP_ROTATE
-- @usage Pickup CREATE_PICKUP_ROTATE(Hash pickupHash, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, int flag, int amount, Any p9, BOOL p10, Hash modelHash);
-- @param pickupHash Hash
-- @param float
-- @param int
-- @param Any
-- @param BOOL
-- @param Hash
-- @return Pickup
function CreatePickupRotate() end

-- Used for doing money drop Pickup hashes: pastebin.com/8EuSv2r1
-- @module native
-- @submodule object
-- @see CREATE_AMBIENT_PICKUP
-- @usage Pickup CREATE_AMBIENT_PICKUP(Hash pickupHash, float posX, float posY, float posZ, int p4, int value, Hash modelHash, BOOL p7, BOOL p8);
-- @param pickupHash Hash
-- @param float
-- @param int
-- @param Hash
-- @param BOOL
-- @return Pickup
function CreateAmbientPickup() end

-- Pickup hashes: pastebin.com/8EuSv2r1
-- @module native
-- @submodule object
-- @see CREATE_PORTABLE_PICKUP
-- @usage Pickup CREATE_PORTABLE_PICKUP(Hash pickupHash, float x, float y, float z, BOOL placeOnGround, Hash modelHash);
-- @param pickupHash Hash
-- @param float
-- @param BOOL
-- @param Hash
-- @return Pickup
function CreatePortablePickup() end

-- @todo
-- @module native
-- @submodule object
-- @see ATTACH_PORTABLE_PICKUP_TO_PED
-- @usage void ATTACH_PORTABLE_PICKUP_TO_PED(Ped ped, Any p1);
-- @param ped Ped
-- @param Any
-- @return void
function AttachPortablePickupToPed() end

-- @todo
-- @module native
-- @submodule object
-- @see DETACH_PORTABLE_PICKUP_FROM_PED
-- @usage void DETACH_PORTABLE_PICKUP_FROM_PED(Ped ped);
-- @param ped Ped
-- @return void
function DetachPortablePickupFromPed() end

-- @todo
-- @module native
-- @submodule object
-- @see GET_SAFE_PICKUP_COORDS
-- @usage Vector3 GET_SAFE_PICKUP_COORDS(float x, float y, float z, Any p3, Any p4);
-- @param x float
-- @param float
-- @param Any
-- @return Vector3
function GetSafePickupCoords() end

-- @todo
-- @module native
-- @submodule object
-- @see GET_PICKUP_COORDS
-- @usage Vector3 GET_PICKUP_COORDS(Pickup pickup);
-- @param pickup Pickup
-- @return Vector3
function GetPickupCoords() end

-- Pickup hashes: pastebin.com/8EuSv2r1
-- @module native
-- @submodule object
-- @see REMOVE_ALL_PICKUPS_OF_TYPE
-- @usage void REMOVE_ALL_PICKUPS_OF_TYPE(Hash pickupHash);
-- @param pickupHash Hash
-- @return void
function RemoveAllPickupsOfType() end

-- @todo
-- @module native
-- @submodule object
-- @see HAS_PICKUP_BEEN_COLLECTED
-- @usage BOOL HAS_PICKUP_BEEN_COLLECTED(Pickup pickup);
-- @param pickup Pickup
-- @return BOOL
function HasPickupBeenCollected() end

-- @todo
-- @module native
-- @submodule object
-- @see REMOVE_PICKUP
-- @usage void REMOVE_PICKUP(Pickup pickup);
-- @param pickup Pickup
-- @return void
function RemovePickup() end

-- Spawns one or more money pickups.  x: The X-component of the world position to spawn the money pickups at. y: The Y-component of the world position to spawn the money pickups at. z: The Z-component of the world position to spawn the money pickups at. value: The combined value of the pickups (in dollars). amount: The number of pickups to spawn. model: The model to use, or 0 for default money model.  Example: CREATE_MONEY_PICKUPS(x, y, z, 1000, 3, 0x684a97ae);  Spawns 3 spray cans that'll collectively give $1000 when picked up. (Three spray cans, each giving $334, $334, $332 = $1000).  ==============================================  Max is 2000 in MP. So if you put the amount to 20, but the value to $400,000 eg. They will only be able to pickup 20 - $2,000 bags. So, $40,000
-- @module native
-- @submodule object
-- @see CREATE_MONEY_PICKUPS
-- @usage void CREATE_MONEY_PICKUPS(float x, float y, float z, int value, int amount, Hash model);
-- @param x float
-- @param float
-- @param int
-- @param Hash
-- @return void
function CreateMoneyPickups() end

-- @todo
-- @module native
-- @submodule object
-- @see DOES_PICKUP_EXIST
-- @usage BOOL DOES_PICKUP_EXIST(Pickup pickup);
-- @param pickup Pickup
-- @return BOOL
function DoesPickupExist() end

-- @todo
-- @module native
-- @submodule object
-- @see DOES_PICKUP_OBJECT_EXIST
-- @usage BOOL DOES_PICKUP_OBJECT_EXIST(Object pickupObject);
-- @param pickupObject Object
-- @return BOOL
function DoesPickupObjectExist() end

-- @todo
-- @module native
-- @submodule object
-- @see GET_PICKUP_OBJECT
-- @usage Object GET_PICKUP_OBJECT(Pickup pickup);
-- @param pickup Pickup
-- @return Object
function GetPickupObject() end

-- @todo
-- @module native
-- @submodule object
-- @see SET_PICKUP_REGENERATION_TIME
-- @usage void SET_PICKUP_REGENERATION_TIME(Any p0, Any p1);
-- @param p0 Any
-- @param Any
-- @return void
function SetPickupRegenerationTime() end

-- @todo
-- @module native
-- @submodule object
-- @see SET_TEAM_PICKUP_OBJECT
-- @usage void SET_TEAM_PICKUP_OBJECT(Object object, Any p1, BOOL p2);
-- @param object Object
-- @param Any
-- @param BOOL
-- @return void
function SetTeamPickupObject() end

-- @todo
-- @module native
-- @submodule object
-- @see SET_FORCE_OBJECT_THIS_FRAME
-- @usage void SET_FORCE_OBJECT_THIS_FRAME(Any p0, Any p1, Any p2, Any p3);
-- @param p0 Any
-- @param Any
-- @return void
function SetForceObjectThisFrame() end