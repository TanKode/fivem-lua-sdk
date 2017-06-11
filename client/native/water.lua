-- This function set height to the value of z-axis of the water surface.  This function works with sea and lake. However it does not work with shallow rivers (e.g. raton canyon will return -100000.0f)  note: seems to return true when you are in water
-- @module native
-- @submodule water
-- @see GET_WATER_HEIGHT
-- @usage BOOL GET_WATER_HEIGHT(float x, float y, float z, float* height);
-- @param x float
-- @param float
-- @param float*
-- @return BOOL
function GetWaterHeight() end

-- @todo
-- @module native
-- @submodule water
-- @see GET_WATER_HEIGHT_NO_WAVES
-- @usage BOOL GET_WATER_HEIGHT_NO_WAVES(float x, float y, float z, float* height);
-- @param x float
-- @param float
-- @param float*
-- @return BOOL
function GetWaterHeightNoWaves() end

-- @todo
-- @module native
-- @submodule water
-- @see TEST_PROBE_AGAINST_WATER
-- @usage BOOL TEST_PROBE_AGAINST_WATER(float x1, float y1, float z1, float x2, float y2, float z2, Vector3* result);
-- @param x1 float
-- @param float
-- @param Vector3*
-- @return BOOL
function TestProbeAgainstWater() end

-- @todo
-- @module native
-- @submodule water
-- @see TEST_PROBE_AGAINST_ALL_WATER
-- @usage BOOL TEST_PROBE_AGAINST_ALL_WATER(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6, Any p7);
-- @param p0 Any
-- @param Any
-- @return BOOL
function TestProbeAgainstAllWater() end

-- @todo
-- @module native
-- @submodule water
-- @see TEST_VERTICAL_PROBE_AGAINST_ALL_WATER
-- @usage BOOL TEST_VERTICAL_PROBE_AGAINST_ALL_WATER(float x, float y, float z, Any p3, Any* p4);
-- @param x float
-- @param float
-- @param Any
-- @param Any*
-- @return BOOL
function TestVerticalProbeAgainstAllWater() end

-- Sets the water height for a given position and radius.
-- @module native
-- @submodule water
-- @see MODIFY_WATER
-- @usage void MODIFY_WATER(float x, float y, float radius, float height);
-- @param x float
-- @param float
-- @return void
function ModifyWater() end