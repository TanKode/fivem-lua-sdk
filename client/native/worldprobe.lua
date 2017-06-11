-- Returns a ray (?) going from x1, y1, z1 to x2, y2, z2. entity = 0 most of the time. p8 = 7 most of the time.  Result of this function is passed to WORLDPROBE::_GET_RAYCAST_RESULT as a first argument.
-- @module native
-- @submodule worldprobe
-- @see START_SHAPE_TEST_LOS_PROBE
-- @usage int START_SHAPE_TEST_LOS_PROBE(float x1, float y1, float z1, float x2, float y2, float z2, int flags, Entity entity, int p8);
-- @param x1 float
-- @param float
-- @param int
-- @param Entity
-- @return int
function StartShapeTestLosProbe() end

-- @todo
-- @module native
-- @submodule worldprobe
-- @see START_SHAPE_TEST_BOUNDING_BOX
-- @usage int START_SHAPE_TEST_BOUNDING_BOX(Entity entity, int flags1, int flags2);
-- @param entity Entity
-- @param int
-- @return int
function StartShapeTestBoundingBox() end

-- @todo
-- @module native
-- @submodule worldprobe
-- @see START_SHAPE_TEST_BOX
-- @usage int START_SHAPE_TEST_BOX(float x, float y, float z, float x1, float y2, float z2, float rotX, float rotY, float rotZ, Any p9, Any p10, Any entity, Any p12);
-- @param x float
-- @param float
-- @param Any
-- @return int
function StartShapeTestBox() end

-- @todo
-- @module native
-- @submodule worldprobe
-- @see START_SHAPE_TEST_BOUND
-- @usage int START_SHAPE_TEST_BOUND(Entity entity, int flags1, int flags2);
-- @param entity Entity
-- @param int
-- @return int
function StartShapeTestBound() end

-- Raycast from point to point, where the ray has a radius.   flags: vehicles=10 peds =12  Iterating through flags yields many ped / vehicle/ object combinations  p9 = 7, but no idea what it does  Entity is an entity to ignore
-- @module native
-- @submodule worldprobe
-- @see START_SHAPE_TEST_CAPSULE
-- @usage int START_SHAPE_TEST_CAPSULE(float x1, float y1, float z1, float x2, float y2, float z2, float radius, int flags, Entity entity, int p9);
-- @param x1 float
-- @param float
-- @param int
-- @param Entity
-- @return int
function StartShapeTestCapsule() end

-- Parameters: rayHandle - Ray Handle from a casted ray, as returned by CAST_RAY_POINT_TO_POINT hit - Where to store whether or not it hit anything. False is when the ray reached its destination. endCoords - Where to store the world-coords of where the ray was stopped (by hitting its desired max range or by colliding with an entity/the map) surfaceNormal - Where to store the surface-normal coords (NOT relative to the game world) of where the entity was hit by the ray entityHit - Where to store the handle of the entity hit by the ray  Returns: Result? Some type of enum.  NOTE: To get the offset-coords of where the ray hit relative to the entity that it hit (which is NOT the same as surfaceNormal), you can use these two natives: Vector3 offset = ENTITY::GET_OFFSET_FROM_ENTITY_GIVEN_WORLD_COORDS(entityHit, endCoords.x, endCoords.y, endCoords.z); Vector3 entitySpotCoords = ENTITY::GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(entityHit, offset.x, offset.y, offset.z);  Use ENTITY::GET_ENTITY_TYPE(entityHit) to quickly distinguish what type of entity you hit (ped/vehicle/object - 1/2/3)
-- @module native
-- @submodule worldprobe
-- @see GET_SHAPE_TEST_RESULT
-- @usage int GET_SHAPE_TEST_RESULT(int rayHandle, BOOL* hit, Vector3* endCoords, Vector3* surfaceNormal, Entity* entityHit);
-- @param rayHandle int
-- @param BOOL*
-- @param Vector3*
-- @param Entity*
-- @return int
function GetShapeTestResult() end