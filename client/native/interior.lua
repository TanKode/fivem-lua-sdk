-- Returns the group ID of the specified interior. For example, regular interiors have group 0, subway interiors have group 1. There are a few other groups too.
-- @module native
-- @submodule interior
-- @see GET_INTERIOR_GROUP_ID
-- @usage int GET_INTERIOR_GROUP_ID(int interiorID);
-- @param interiorID int
-- @return int
function GetInteriorGroupId() end

-- @todo
-- @module native
-- @submodule interior
-- @see GET_OFFSET_FROM_INTERIOR_IN_WORLD_COORDS
-- @usage Vector3 GET_OFFSET_FROM_INTERIOR_IN_WORLD_COORDS(int interiorID, float x, float y, float z);
-- @param interiorID int
-- @param float
-- @return Vector3
function GetOffsetFromInteriorInWorldCoords() end

-- @todo
-- @module native
-- @submodule interior
-- @see IS_INTERIOR_SCENE
-- @usage BOOL IS_INTERIOR_SCENE();
-- @param undefined
-- @return BOOL
function IsInteriorScene() end

-- Return if interior is valid.
-- @module native
-- @submodule interior
-- @see IS_VALID_INTERIOR
-- @usage BOOL IS_VALID_INTERIOR(int interiorID);
-- @param interiorID int
-- @return BOOL
function IsValidInterior() end

-- @todo
-- @module native
-- @submodule interior
-- @see CLEAR_ROOM_FOR_ENTITY
-- @usage void CLEAR_ROOM_FOR_ENTITY(Entity entity);
-- @param entity Entity
-- @return void
function ClearRoomForEntity() end

-- Does anyone know what this does? I know online modding isn't generally supported especially by the owner of this db, but I first thought this could be used to force ourselves into someones apartment, but I see now that isn't possible.
-- @module native
-- @submodule interior
-- @see FORCE_ROOM_FOR_ENTITY
-- @usage void FORCE_ROOM_FOR_ENTITY(Entity entity, int interiorID, Hash roomHashKey);
-- @param entity Entity
-- @param int
-- @param Hash
-- @return void
function ForceRoomForEntity() end

-- Gets the room hash key from the room that the specified entity is in. Each room in every interior has a unique key. Returns 0 if the entity is outside.
-- @module native
-- @submodule interior
-- @see GET_ROOM_KEY_FROM_ENTITY
-- @usage Hash GET_ROOM_KEY_FROM_ENTITY(Entity entity);
-- @param entity Entity
-- @return Hash
function GetRoomKeyFromEntity() end

-- Seems to do the exact same as INTERIOR::GET_ROOM_KEY_FROM_ENTITY
-- @module native
-- @submodule interior
-- @see GET_KEY_FOR_ENTITY_IN_ROOM
-- @usage Hash GET_KEY_FOR_ENTITY_IN_ROOM(Entity entity);
-- @param entity Entity
-- @return Hash
function GetKeyForEntityInRoom() end

-- Returns the handle of the interior that the entity is in. Returns 0 if outside.
-- @module native
-- @submodule interior
-- @see GET_INTERIOR_FROM_ENTITY
-- @usage int GET_INTERIOR_FROM_ENTITY(Entity entity);
-- @param entity Entity
-- @return int
function GetInteriorFromEntity() end

-- Returns interior ID from specified coordinates. If coordinates are outside, then it returns 0.  Example for VB.NET Dim interiorID As Integer = Native.Function.Call(Of Integer)(Hash.GET_INTERIOR_AT_COORDS, X, Y, Z)
-- @module native
-- @submodule interior
-- @see GET_INTERIOR_AT_COORDS
-- @usage int GET_INTERIOR_AT_COORDS(float x, float y, float z);
-- @param x float
-- @param float
-- @return int
function GetInteriorAtCoords() end

-- @todo
-- @module native
-- @submodule interior
-- @see ADD_PICKUP_TO_INTERIOR_ROOM_BY_NAME
-- @usage void ADD_PICKUP_TO_INTERIOR_ROOM_BY_NAME(Pickup pickup, char* roomName);
-- @param pickup Pickup
-- @param char*
-- @return void
function AddPickupToInteriorRoomByName() end

-- Does something similar to INTERIOR::DISABLE_INTERIOR.  You don't fall through the floor but everything is invisible inside and looks the same as when INTERIOR::DISABLE_INTERIOR is used. Peds behaves normally inside.
-- @module native
-- @submodule interior
-- @see UNPIN_INTERIOR
-- @usage void UNPIN_INTERIOR(int interiorID);
-- @param interiorID int
-- @return void
function UnpinInterior() end

-- @todo
-- @module native
-- @submodule interior
-- @see IS_INTERIOR_READY
-- @usage BOOL IS_INTERIOR_READY(int interiorID);
-- @param interiorID int
-- @return BOOL
function IsInteriorReady() end

-- Returns the interior ID representing the requested interior at that location (if found?). The supplied interior string is not the same as the one used to load the interior.  Use: INTERIOR::UNPIN_INTERIOR(INTERIOR::GET_INTERIOR_AT_COORDS_WITH_TYPE(x, y, z, interior))  Interior types include: "V_Michael", "V_Franklins", "V_Franklinshouse", etc.. you can find them in the scripts.  Not a very useful native as you could just use GET_INTERIOR_AT_COORDS instead and get the same result, without even having to specify the interior type.
-- @module native
-- @submodule interior
-- @see GET_INTERIOR_AT_COORDS_WITH_TYPE
-- @usage int GET_INTERIOR_AT_COORDS_WITH_TYPE(float x, float y, float z, char* interiorType);
-- @param x float
-- @param float
-- @param char*
-- @return int
function GetInteriorAtCoordsWithType() end

-- @todo
-- @module native
-- @submodule interior
-- @see GET_INTERIOR_FROM_COLLISION
-- @usage int GET_INTERIOR_FROM_COLLISION(float x, float y, float z);
-- @param x float
-- @param float
-- @return int
function GetInteriorFromCollision() end

-- @todo
-- @module native
-- @submodule interior
-- @see REFRESH_INTERIOR
-- @usage void REFRESH_INTERIOR(int interiorID);
-- @param interiorID int
-- @return void
function RefreshInterior() end

-- Example:  This removes the interior from the strip club and when trying to walk inside the player just falls:  INTERIOR::DISABLE_INTERIOR(118018, true);
-- @module native
-- @submodule interior
-- @see DISABLE_INTERIOR
-- @usage void DISABLE_INTERIOR(int interiorID, BOOL toggle);
-- @param interiorID int
-- @param BOOL
-- @return void
function DisableInterior() end

-- @todo
-- @module native
-- @submodule interior
-- @see IS_INTERIOR_DISABLED
-- @usage BOOL IS_INTERIOR_DISABLED(int interiorID);
-- @param interiorID int
-- @return BOOL
function IsInteriorDisabled() end

-- Does something similar to INTERIOR::DISABLE_INTERIOR
-- @module native
-- @submodule interior
-- @see CAP_INTERIOR
-- @usage void CAP_INTERIOR(int interiorID, BOOL toggle);
-- @param interiorID int
-- @param BOOL
-- @return void
function CapInterior() end

-- @todo
-- @module native
-- @submodule interior
-- @see IS_INTERIOR_CAPPED
-- @usage BOOL IS_INTERIOR_CAPPED(int interiorID);
-- @param interiorID int
-- @return BOOL
function IsInteriorCapped() end