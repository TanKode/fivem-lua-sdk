-- Creates a rope at the specific position, that extends in the specified direction when not attached to any entities. __  Add_Rope(pos.x,pos.y,pos.z,0.0,0.0,0.0,20.0,4,20.0,1.0,0.0,false,false,false,5.0,false,NULL)  When attached, Position<vector> does not matter When attached, Angle<vector> does not matter  Rope Type: 4 and bellow is a thick rope 5 and up are small metal wires 0 crashes the game  Max_length - Rope is forced to this length, generally best to keep this the same as your rope length.  Rigid - If max length is zero, and this is set to false the rope will become rigid (it will force a specific distance, what ever length is, between the objects).  breakable - Whether or not shooting the rope will break it.  unkPtr - unknown ptr, always 0 in orig scripts __  Lengths can be calculated like so:  float distance = abs(x1 - x2) + abs(y1 - y2) + abs(z1 - z2); // Rope length   NOTES:  Rope does NOT interact with anything you attach it to, in some cases it make interact with the world AFTER it breaks (seems to occur if you set the type to -1).  Rope will sometimes contract and fall to the ground like you'd expect it to, but since it doesn't interact with the world the effect is just jaring.
-- @module native
-- @submodule rope
-- @see ADD_ROPE
-- @usage Object ADD_ROPE(float x, float y, float z, float rotX, float rotY, float rotZ, float length, int ropeType, float maxLength, float minLength, float p10, BOOL p11, BOOL p12, BOOL rigid, float p14, BOOL breakWhenShot, Any* unkPtr);
-- @param x float
-- @param y float
-- @param z float
-- @param rotX float
-- @param rotY float
-- @param rotZ float
-- @param length float
-- @param ropeType int
-- @param maxLength float
-- @param minLength float
-- @param p10 float
-- @param p11 BOOL
-- @param p12 BOOL
-- @param rigid BOOL
-- @param p14 float
-- @param breakWhenShot BOOL
-- @param unkPtr Any*
-- @return Object
function AddRope(x, y, z, rotX, rotY, rotZ, length, ropeType, maxLength, minLength, p10, p11, p12, rigid, p14, breakWhenShot, unkPtr) end

-- @todo
-- @module native
-- @submodule rope
-- @see DELETE_ROPE
-- @usage void DELETE_ROPE(Object* rope);
-- @param rope Object*
-- @return void
function DeleteRope(rope) end

-- @todo
-- @module native
-- @submodule rope
-- @see DELETE_CHILD_ROPE
-- @usage Any DELETE_CHILD_ROPE(Object rope);
-- @param rope Object
-- @return Any
function DeleteChildRope(rope) end

-- Ptr is correct
-- @module native
-- @submodule rope
-- @see DOES_ROPE_EXIST
-- @usage BOOL DOES_ROPE_EXIST(Object* rope);
-- @param rope Object*
-- @return BOOL
function DoesRopeExist(rope) end

-- @todo
-- @module native
-- @submodule rope
-- @see ROPE_DRAW_SHADOW_ENABLED
-- @usage void ROPE_DRAW_SHADOW_ENABLED(Object* rope, BOOL toggle);
-- @param rope Object*
-- @param toggle BOOL
-- @return void
function RopeDrawShadowEnabled(rope, toggle) end

-- Rope presets can be found in the gamefiles. One example is "ropeFamily3", it is NOT a hash but rather a string.
-- @module native
-- @submodule rope
-- @see LOAD_ROPE_DATA
-- @usage Any LOAD_ROPE_DATA(Object rope, char* rope_preset);
-- @param rope Object
-- @param rope_preset char*
-- @return Any
function LoadRopeData(rope, rope_preset) end

-- @todo
-- @module native
-- @submodule rope
-- @see PIN_ROPE_VERTEX
-- @usage void PIN_ROPE_VERTEX(Object rope, int vertex, float x, float y, float z);
-- @param rope Object
-- @param vertex int
-- @param x float
-- @param y float
-- @param z float
-- @return void
function PinRopeVertex(rope, vertex, x, y, z) end

-- @todo
-- @module native
-- @submodule rope
-- @see UNPIN_ROPE_VERTEX
-- @usage Any UNPIN_ROPE_VERTEX(Object rope, int vertex);
-- @param rope Object
-- @param vertex int
-- @return Any
function UnpinRopeVertex(rope, vertex) end

-- @todo
-- @module native
-- @submodule rope
-- @see GET_ROPE_VERTEX_COUNT
-- @usage int GET_ROPE_VERTEX_COUNT(Object rope);
-- @param rope Object
-- @return int
function GetRopeVertexCount(rope) end

-- Attaches entity 1 to entity 2.
-- @module native
-- @submodule rope
-- @see ATTACH_ENTITIES_TO_ROPE
-- @usage void ATTACH_ENTITIES_TO_ROPE(Object rope, Entity ent1, Entity ent2, float ent1_x, float ent1_y, float ent1_z, float ent2_x, float ent2_y, float ent2_z, float length, BOOL p10, BOOL p11, Any* p12, Any* p13);
-- @param rope Object
-- @param ent1 Entity
-- @param ent2 Entity
-- @param ent1_x float
-- @param ent1_y float
-- @param ent1_z float
-- @param ent2_x float
-- @param ent2_y float
-- @param ent2_z float
-- @param length float
-- @param p10 BOOL
-- @param p11 BOOL
-- @param p12 Any*
-- @param p13 Any*
-- @return void
function AttachEntitiesToRope(rope, ent1, ent2, ent1_x, ent1_y, ent1_z, ent2_x, ent2_y, ent2_z, length, p10, p11, p12, p13) end

-- The position supplied can be anywhere, and the entity should anchor relative to that point from it's origin.
-- @module native
-- @submodule rope
-- @see ATTACH_ROPE_TO_ENTITY
-- @usage void ATTACH_ROPE_TO_ENTITY(Object rope, Entity entity, float x, float y, float z, BOOL p5);
-- @param rope Object
-- @param entity Entity
-- @param x float
-- @param y float
-- @param z float
-- @param p5 BOOL
-- @return void
function AttachRopeToEntity(rope, entity, x, y, z, p5) end

-- @todo
-- @module native
-- @submodule rope
-- @see DETACH_ROPE_FROM_ENTITY
-- @usage void DETACH_ROPE_FROM_ENTITY(Object rope, Entity entity);
-- @param rope Object
-- @param entity Entity
-- @return void
function DetachRopeFromEntity(rope, entity) end

-- @todo
-- @module native
-- @submodule rope
-- @see ROPE_SET_UPDATE_PINVERTS
-- @usage void ROPE_SET_UPDATE_PINVERTS(Object rope);
-- @param rope Object
-- @return void
function RopeSetUpdatePinverts(rope) end

-- @todo
-- @module native
-- @submodule rope
-- @see GET_ROPE_LAST_VERTEX_COORD
-- @usage Any GET_ROPE_LAST_VERTEX_COORD(Object rope);
-- @param rope Object
-- @return Any
function GetRopeLastVertexCoord(rope) end

-- @todo
-- @module native
-- @submodule rope
-- @see GET_ROPE_VERTEX_COORD
-- @usage Any GET_ROPE_VERTEX_COORD(Object rope, int vertex);
-- @param rope Object
-- @param vertex int
-- @return Any
function GetRopeVertexCoord(rope, vertex) end

-- @todo
-- @module native
-- @submodule rope
-- @see START_ROPE_WINDING
-- @usage void START_ROPE_WINDING(Object rope);
-- @param rope Object
-- @return void
function StartRopeWinding(rope) end

-- @todo
-- @module native
-- @submodule rope
-- @see STOP_ROPE_WINDING
-- @usage void STOP_ROPE_WINDING(Object rope);
-- @param rope Object
-- @return void
function StopRopeWinding(rope) end

-- @todo
-- @module native
-- @submodule rope
-- @see START_ROPE_UNWINDING_FRONT
-- @usage void START_ROPE_UNWINDING_FRONT(Object rope);
-- @param rope Object
-- @return void
function StartRopeUnwindingFront(rope) end

-- @todo
-- @module native
-- @submodule rope
-- @see STOP_ROPE_UNWINDING_FRONT
-- @usage void STOP_ROPE_UNWINDING_FRONT(Object rope);
-- @param rope Object
-- @return void
function StopRopeUnwindingFront(rope) end

-- @todo
-- @module native
-- @submodule rope
-- @see ROPE_CONVERT_TO_SIMPLE
-- @usage void ROPE_CONVERT_TO_SIMPLE(Object rope);
-- @param rope Object
-- @return void
function RopeConvertToSimple(rope) end

-- Loads rope textures for all ropes in the current scene.
-- @module native
-- @submodule rope
-- @see ROPE_LOAD_TEXTURES
-- @usage Any ROPE_LOAD_TEXTURES();
-- @return Any
function RopeLoadTextures() end

-- @todo
-- @module native
-- @submodule rope
-- @see ROPE_ARE_TEXTURES_LOADED
-- @usage BOOL ROPE_ARE_TEXTURES_LOADED();
-- @return BOOL
function RopeAreTexturesLoaded() end

-- Unloads rope textures for all ropes in the current scene.
-- @module native
-- @submodule rope
-- @see ROPE_UNLOAD_TEXTURES
-- @usage Any ROPE_UNLOAD_TEXTURES();
-- @return Any
function RopeUnloadTextures() end

-- Forces a rope to a certain length.
-- @module native
-- @submodule rope
-- @see ROPE_FORCE_LENGTH
-- @usage Any ROPE_FORCE_LENGTH(Object rope, float length);
-- @param rope Object
-- @param length float
-- @return Any
function RopeForceLength(rope, length) end

-- Reset a rope to a certain length.
-- @module native
-- @submodule rope
-- @see ROPE_RESET_LENGTH
-- @usage Any ROPE_RESET_LENGTH(Object rope, BOOL length);
-- @param rope Object
-- @param length BOOL
-- @return Any
function RopeResetLength(rope, length) end

-- @todo
-- @module native
-- @submodule rope
-- @see APPLY_IMPULSE_TO_CLOTH
-- @usage void APPLY_IMPULSE_TO_CLOTH(float posX, float posY, float posZ, float vecX, float vecY, float vecZ, float impulse);
-- @param posX float
-- @param posY float
-- @param posZ float
-- @param vecX float
-- @param vecY float
-- @param vecZ float
-- @param impulse float
-- @return void
function ApplyImpulseToCloth(posX, posY, posZ, vecX, vecY, vecZ, impulse) end

-- @todo
-- @module native
-- @submodule rope
-- @see SET_DAMPING
-- @usage void SET_DAMPING(Object rope, int vertex, float value);
-- @param rope Object
-- @param vertex int
-- @param value float
-- @return void
function SetDamping(rope, vertex, value) end

-- seems to be frequently used with the NETWORK::NET_TO_x natives, particularly with vehicles. It is often the only ROPE:: native in a script.
-- @module native
-- @submodule rope
-- @see ACTIVATE_PHYSICS
-- @usage void ACTIVATE_PHYSICS(Entity entity);
-- @param entity Entity
-- @return void
function ActivatePhysics(entity) end

-- @todo
-- @module native
-- @submodule rope
-- @see SET_CGOFFSET
-- @usage void SET_CGOFFSET(Object rope, float x, float y, float z);
-- @param rope Object
-- @param x float
-- @param y float
-- @param z float
-- @return void
function SetCgoffset(rope, x, y, z) end

-- @todo
-- @module native
-- @submodule rope
-- @see GET_CGOFFSET
-- @usage Vector3 GET_CGOFFSET(Object rope);
-- @param rope Object
-- @return Vector3
function GetCgoffset(rope) end

-- @todo
-- @module native
-- @submodule rope
-- @see SET_CG_AT_BOUNDCENTER
-- @usage void SET_CG_AT_BOUNDCENTER(Object rope);
-- @param rope Object
-- @return void
function SetCgAtBoundcenter(rope) end

-- @todo
-- @module native
-- @submodule rope
-- @see BREAK_ENTITY_GLASS
-- @usage void BREAK_ENTITY_GLASS(Any p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, float p8, Any p9, BOOL p10);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 float
-- @param p8 float
-- @param p9 Any
-- @param p10 BOOL
-- @return void
function BreakEntityGlass(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

-- @todo
-- @module native
-- @submodule rope
-- @see SET_DISABLE_BREAKING
-- @usage Any SET_DISABLE_BREAKING(Object rope, BOOL enabled);
-- @param rope Object
-- @param enabled BOOL
-- @return Any
function SetDisableBreaking(rope, enabled) end

-- sometimes used used with NET_TO_OBJ hash collision last 2 words
-- @module native
-- @submodule rope
-- @see SET_DISABLE_FRAG_DAMAGE
-- @usage void SET_DISABLE_FRAG_DAMAGE(Object object, BOOL toggle);
-- @param object Object
-- @param toggle BOOL
-- @return void
function SetDisableFragDamage(object, toggle) end