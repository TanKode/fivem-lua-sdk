-- BRAIN::ADD_SCRIPT_TO_RANDOM_PED("pb_prostitute", ${s_f_y_hooker_01}, 100, 0);    -----  Hardcoded to not work in Multiplayer.
-- @module native
-- @submodule brain
-- @see ADD_SCRIPT_TO_RANDOM_PED
-- @usage void ADD_SCRIPT_TO_RANDOM_PED(char* name, Hash model, float p2, float p3);
-- @param name char*
-- @param Hash
-- @param float
-- @return void
function AddScriptToRandomPed() end

-- Registers a script for any object with a specific model hash.  BRAIN::REGISTER_OBJECT_SCRIPT_BRAIN("ob_telescope", ${prop_telescope_01}, 100, 4.0, -1, 9);
-- @module native
-- @submodule brain
-- @see REGISTER_OBJECT_SCRIPT_BRAIN
-- @usage void REGISTER_OBJECT_SCRIPT_BRAIN(char* scriptName, Hash objectName, int p2, float p3, int p4, int p5);
-- @param scriptName char*
-- @param Hash
-- @param int
-- @param float
-- @return void
function RegisterObjectScriptBrain() end

-- @todo
-- @module native
-- @submodule brain
-- @see IS_OBJECT_WITHIN_BRAIN_ACTIVATION_RANGE
-- @usage BOOL IS_OBJECT_WITHIN_BRAIN_ACTIVATION_RANGE(Object object);
-- @param object Object
-- @return BOOL
function IsObjectWithinBrainActivationRange() end

-- @todo
-- @module native
-- @submodule brain
-- @see REGISTER_WORLD_POINT_SCRIPT_BRAIN
-- @usage void REGISTER_WORLD_POINT_SCRIPT_BRAIN(Any* p0, float p1, Any p2);
-- @param p0 Any*
-- @param float
-- @param Any
-- @return void
function RegisterWorldPointScriptBrain() end

-- Gets whether the world point the calling script is registered to is within desired range of the player.
-- @module native
-- @submodule brain
-- @see IS_WORLD_POINT_WITHIN_BRAIN_ACTIVATION_RANGE
-- @usage BOOL IS_WORLD_POINT_WITHIN_BRAIN_ACTIVATION_RANGE();
-- @param undefined
-- @return BOOL
function IsWorldPointWithinBrainActivationRange() end

-- @todo
-- @module native
-- @submodule brain
-- @see ENABLE_SCRIPT_BRAIN_SET
-- @usage void ENABLE_SCRIPT_BRAIN_SET(int brainSet);
-- @param brainSet int
-- @return void
function EnableScriptBrainSet() end

-- @todo
-- @module native
-- @submodule brain
-- @see DISABLE_SCRIPT_BRAIN_SET
-- @usage void DISABLE_SCRIPT_BRAIN_SET(int brainSet);
-- @param brainSet int
-- @return void
function DisableScriptBrainSet() end