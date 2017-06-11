-- Creates a rope at the specific position, that extends in the specified direction when not attached to any entities. __  Add_Rope(pos.x,pos.y,pos.z,0.0,0.0,0.0,20.0,4,20.0,1.0,0.0,false,false,false,5.0,false,NULL)  When attached, Position<vector> does not matter When attached, Angle<vector> does not matter  Rope Type: 4 and bellow is a thick rope 5 and up are small metal wires 0 crashes the game  Max_length - Rope is forced to this length, generally best to keep this the same as your rope length.  Rigid - If max length is zero, and this is set to false the rope will become rigid (it will force a specific distance, what ever length is, between the objects).  breakable - Whether or not shooting the rope will break it.  unkPtr - unknown ptr, always 0 in orig scripts __  Lengths can be calculated like so:  float distance = abs(x1 - x2) + abs(y1 - y2) + abs(z1 - z2); // Rope length   NOTES:  Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).  Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.
-- @module native
-- @submodule rope
-- @see ADD_ROPE
-- @usage Object ADD_ROPE(float x, float y, float z, float rotX, float rotY, float rotZ, float length, int ropeType, float maxLength, float minLength, float p10, BOOL p11, BOOL p12, BOOL rigid, float p14, BOOL breakWhenShot, Any* unkPtr);
-- @param x float
-- @param float
-- @param int
-- @param BOOL
-- @param Any*
-- @return Object
function AddRope() end

-- @todo
-- @module native
-- @submodule rope
-- @see DELETE_ROPE
-- @usage void DELETE_ROPE(Object* rope);
-- @param rope Object*
-- @return void
function DeleteRope() end

-- @todo
-- @module native
-- @submodule rope
-- @see DELETE_CHILD_ROPE
-- @usage Any DELETE_CHILD_ROPE(Object rope);
-- @param rope Object
-- @return Any
function DeleteChildRope() end

-- Ptr is correct
-- @module native
-- @submodule rope
-- @see DOES_ROPE_EXIST
-- @usage BOOL DOES_ROPE_EXIST(Object* rope);
-- @param rope Object*
-- @return BOOL
function DoesRopeExist() end

-- @todo
-- @module native
-- @submodule rope
-- @see ROPE_DRAW_SHADOW_ENABLED
-- @usage void ROPE_DRAW_SHADOW_ENABLED(Object* rope, BOOL toggle);
-- @param rope Object*
-- @param BOOL
-- @return void
function RopeDrawShadowEnabled() end

-- Rope presets can be found in the gamefiles. One example is "ropeFamily3", it is NOT a hash but rather a string.
-- @module native
-- @submodule rope
-- @see LOAD_ROPE_DATA
-- @usage Any LOAD_ROPE_DATA(Object rope, char* rope_preset);
-- @param rope Object
-- @param char*
-- @return Any
function LoadRopeData() end

-- @todo
-- @module native
-- @submodule rope
-- @see PIN_ROPE_VERTEX
-- @usage void PIN_ROPE_VERTEX(Object rope, int vertex, float x, float y, float z);
-- @param rope Object
-- @param int
-- @param float
-- @return void
function PinRopeVertex() end

-- @todo
-- @module native
-- @submodule rope
-- @see UNPIN_ROPE_VERTEX
-- @usage Any UNPIN_ROPE_VERTEX(Object rope, int vertex);
-- @param rope Object
-- @param int
-- @return Any
function UnpinRopeVertex() end

-- @todo
-- @module native
-- @submodule rope
-- @see GET_ROPE_VERTEX_COUNT
-- @usage int GET_ROPE_VERTEX_COUNT(Object rope);
-- @param rope Object
-- @return int
function GetRopeVertexCount() end

-- Attaches entity 1 to entity 2.
-- @module native
-- @submodule rope
-- @see ATTACH_ENTITIES_TO_ROPE
-- @usage void ATTACH_ENTITIES_TO_ROPE(Object rope, Entity ent1, Entity ent2, float ent1_x, float ent1_y, float ent1_z, float ent2_x, float ent2_y, float ent2_z, float length, BOOL p10, BOOL p11, Any* p12, Any* p13);
-- @param rope Object
-- @param Entity
-- @param float
-- @param BOOL
-- @param Any*
-- @return void
function AttachEntitiesToRope() end

-- The position supplied can be anywhere, and the entity should anchor relative to that point from it's origin.
-- @module native
-- @submodule rope
-- @see ATTACH_ROPE_TO_ENTITY
-- @usage void ATTACH_ROPE_TO_ENTITY(Object rope, Entity entity, float x, float y, float z, BOOL p5);
-- @param rope Object
-- @param Entity
-- @param float
-- @param BOOL
-- @return void
function AttachRopeToEntity() end

-- @todo
-- @module native
-- @submodule rope
-- @see DETACH_ROPE_FROM_ENTITY
-- @usage void DETACH_ROPE_FROM_ENTITY(Object rope, Entity entity);
-- @param rope Object
-- @param Entity
-- @return void
function DetachRopeFromEntity() end

-- @todo
-- @module native
-- @submodule rope
-- @see ROPE_SET_UPDATE_PINVERTS
-- @usage void ROPE_SET_UPDATE_PINVERTS(Object rope);
-- @param rope Object
-- @return void
function RopeSetUpdatePinverts() end

-- @todo
-- @module native
-- @submodule rope
-- @see GET_ROPE_LAST_VERTEX_COORD
-- @usage Any GET_ROPE_LAST_VERTEX_COORD(Object rope);
-- @param rope Object
-- @return Any
function GetRopeLastVertexCoord() end

-- @todo
-- @module native
-- @submodule rope
-- @see GET_ROPE_VERTEX_COORD
-- @usage Any GET_ROPE_VERTEX_COORD(Object rope, int vertex);
-- @param rope Object
-- @param int
-- @return Any
function GetRopeVertexCoord() end

-- @todo
-- @module native
-- @submodule rope
-- @see START_ROPE_WINDING
-- @usage void START_ROPE_WINDING(Object rope);
-- @param rope Object
-- @return void
function StartRopeWinding() end

-- @todo
-- @module native
-- @submodule rope
-- @see STOP_ROPE_WINDING
-- @usage void STOP_ROPE_WINDING(Object rope);
-- @param rope Object
-- @return void
function StopRopeWinding() end

-- @todo
-- @module native
-- @submodule rope
-- @see START_ROPE_UNWINDING_FRONT
-- @usage void START_ROPE_UNWINDING_FRONT(Object rope);
-- @param rope Object
-- @return void
function StartRopeUnwindingFront() end

-- @todo
-- @module native
-- @submodule rope
-- @see STOP_ROPE_UNWINDING_FRONT
-- @usage void STOP_ROPE_UNWINDING_FRONT(Object rope);
-- @param rope Object
-- @return void
function StopRopeUnwindingFront() end

-- @todo
-- @module native
-- @submodule rope
-- @see ROPE_CONVERT_TO_SIMPLE
-- @usage void ROPE_CONVERT_TO_SIMPLE(Object rope);
-- @param rope Object
-- @return void
function RopeConvertToSimple() end

-- Loads rope textures for all ropes in the current scene.
-- @module native
-- @submodule rope
-- @see ROPE_LOAD_TEXTURES
-- @usage Any ROPE_LOAD_TEXTURES();
-- @param undefined
-- @return Any
function RopeLoadTextures() end

-- @todo
-- @module native
-- @submodule rope
-- @see ROPE_ARE_TEXTURES_LOADED
-- @usage BOOL ROPE_ARE_TEXTURES_LOADED();
-- @param undefined
-- @return BOOL
function RopeAreTexturesLoaded() end

-- Unloads rope textures for all ropes in the current scene.
-- @module native
-- @submodule rope
-- @see ROPE_UNLOAD_TEXTURES
-- @usage Any ROPE_UNLOAD_TEXTURES();
-- @param undefined
-- @return Any
function RopeUnloadTextures() end

-- Forces a rope to a certain length.
-- @module native
-- @submodule rope
-- @see ROPE_FORCE_LENGTH
-- @usage Any ROPE_FORCE_LENGTH(Object rope, float length);
-- @param rope Object
-- @param float
-- @return Any
function RopeForceLength() end

-- Reset a rope to a certain length.
-- @module native
-- @submodule rope
-- @see ROPE_RESET_LENGTH
-- @usage Any ROPE_RESET_LENGTH(Object rope, BOOL length);
-- @param rope Object
-- @param BOOL
-- @return Any
function RopeResetLength() end

-- @todo
-- @module native
-- @submodule rope
-- @see APPLY_IMPULSE_TO_CLOTH
-- @usage void APPLY_IMPULSE_TO_CLOTH(float posX, float posY, float posZ, float vecX, float vecY, float vecZ, float impulse);
-- @param posX float
-- @param float
-- @return void
function ApplyImpulseToCloth() end

-- @todo
-- @module native
-- @submodule rope
-- @see SET_DAMPING
-- @usage void SET_DAMPING(Object rope, int vertex, float value);
-- @param rope Object
-- @param int
-- @param float
-- @return void
function SetDamping() end

-- seems to be frequently used with the NETWORK::NET_TO_x natives, particularly with vehicles. It is often the only ROPE:: native in a script.
-- @module native
-- @submodule rope
-- @see ACTIVATE_PHYSICS
-- @usage void ACTIVATE_PHYSICS(Entity entity);
-- @param entity Entity
-- @return void
function ActivatePhysics() end

-- @todo
-- @module native
-- @submodule rope
-- @see SET_CGOFFSET
-- @usage void SET_CGOFFSET(Object rope, float x, float y, float z);
-- @param rope Object
-- @param float
-- @return void
function SetCgoffset() end

-- @todo
-- @module native
-- @submodule rope
-- @see GET_CGOFFSET
-- @usage Vector3 GET_CGOFFSET(Object rope);
-- @param rope Object
-- @return Vector3
function GetCgoffset() end

-- @todo
-- @module native
-- @submodule rope
-- @see SET_CG_AT_BOUNDCENTER
-- @usage void SET_CG_AT_BOUNDCENTER(Object rope);
-- @param rope Object
-- @return void
function SetCgAtBoundcenter() end

-- @todo
-- @module native
-- @submodule rope
-- @see BREAK_ENTITY_GLASS
-- @usage void BREAK_ENTITY_GLASS(Any p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, Any p9, BOOL p10);
-- @param p0 Any
-- @param float
-- @param Any
-- @param BOOL
-- @return void
function BreakEntityGlass() end

-- @todo
-- @module native
-- @submodule rope
-- @see SET_DISABLE_BREAKING
-- @usage Any SET_DISABLE_BREAKING(Object rope, BOOL enabled);
-- @param rope Object
-- @param BOOL
-- @return Any
function SetDisableBreaking() end

-- sometimes used used with NET_TO_OBJ hash collision last 2 words
-- @module native
-- @submodule rope
-- @see SET_DISABLE_FRAG_DAMAGE
-- @usage void SET_DISABLE_FRAG_DAMAGE(Object object, BOOL toggle);
-- @param object Object
-- @param BOOL
-- @return void
function SetDisableFragDamage() end