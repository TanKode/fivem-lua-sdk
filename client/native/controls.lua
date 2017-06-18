-- Control Groups:  enum InputGroups { 	INPUTGROUP_MOVE = 0, 	INPUTGROUP_LOOK = 1, 	INPUTGROUP_WHEEL = 2, 	INPUTGROUP_CELLPHONE_NAVIGATE = 3, 	INPUTGROUP_CELLPHONE_NAVIGATE_UD = 4, 	INPUTGROUP_CELLPHONE_NAVIGATE_LR = 5, 	INPUTGROUP_FRONTEND_DPAD_ALL = 6, 	INPUTGROUP_FRONTEND_DPAD_UD = 7, 	INPUTGROUP_FRONTEND_DPAD_LR = 8, 	INPUTGROUP_FRONTEND_LSTICK_ALL = 9, 	INPUTGROUP_FRONTEND_RSTICK_ALL = 10, 	INPUTGROUP_FRONTEND_GENERIC_UD = 11, 	INPUTGROUP_FRONTEND_GENERIC_LR = 12, 	INPUTGROUP_FRONTEND_GENERIC_ALL = 13, 	INPUTGROUP_FRONTEND_BUMPERS = 14, 	INPUTGROUP_FRONTEND_TRIGGERS = 15, 	INPUTGROUP_FRONTEND_STICKS = 16, 	INPUTGROUP_SCRIPT_DPAD_ALL = 17, 	INPUTGROUP_SCRIPT_DPAD_UD = 18, 	INPUTGROUP_SCRIPT_DPAD_LR = 19, 	INPUTGROUP_SCRIPT_LSTICK_ALL = 20, 	INPUTGROUP_SCRIPT_RSTICK_ALL = 21, 	INPUTGROUP_SCRIPT_BUMPERS = 22, 	INPUTGROUP_SCRIPT_TRIGGERS = 23, 	INPUTGROUP_WEAPON_WHEEL_CYCLE = 24, 	INPUTGROUP_FLY = 25, 	INPUTGROUP_SUB = 26, 	INPUTGROUP_VEH_MOVE_ALL = 27, 	INPUTGROUP_CURSOR = 28, 	INPUTGROUP_CURSOR_SCROLL = 29, 	INPUTGROUP_SNIPER_ZOOM_SECONDARY = 30, 	INPUTGROUP_VEH_HYDRAULICS_CONTROL = 31, 	MAX_INPUTGROUPS = 32, 	INPUTGROUP_INVALID = 33 }; 0, 1 and 2 used in the scripts.
-- @module native
-- @submodule controls
-- @see IS_CONTROL_ENABLED
-- @usage BOOL IS_CONTROL_ENABLED(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return BOOL
function IsControlEnabled(inputGroup, control) end

-- index always is 2 for xbox 360 controller and razerblade  0, 1 and 2 used in the scripts. 0 is by far the most common of them.
-- @module native
-- @submodule controls
-- @see IS_CONTROL_PRESSED
-- @usage BOOL IS_CONTROL_PRESSED(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return BOOL
function IsControlPressed(inputGroup, control) end

-- 0, 1 and 2 used in the scripts. 0 is by far the most common of them.
-- @module native
-- @submodule controls
-- @see IS_CONTROL_RELEASED
-- @usage BOOL IS_CONTROL_RELEASED(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return BOOL
function IsControlReleased(inputGroup, control) end

-- @todo
-- @module native
-- @submodule controls
-- @see IS_CONTROL_JUST_PRESSED
-- @usage BOOL IS_CONTROL_JUST_PRESSED(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return BOOL
function IsControlJustPressed(inputGroup, control) end

-- @todo
-- @module native
-- @submodule controls
-- @see IS_CONTROL_JUST_RELEASED
-- @usage BOOL IS_CONTROL_JUST_RELEASED(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return BOOL
function IsControlJustReleased(inputGroup, control) end

-- 0, 1 and 2 used in the scripts. 0 is by far the most common of them.
-- @module native
-- @submodule controls
-- @see GET_CONTROL_VALUE
-- @usage int GET_CONTROL_VALUE(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return int
function GetControlValue(inputGroup, control) end

-- Returns the value of CONTROLS::GET_CONTROL_VALUE Normalized (ie a real number value between -1 and 1)  0, 1 and 2 used in the scripts. 0 is by far the most common of them.
-- @module native
-- @submodule controls
-- @see GET_CONTROL_NORMAL
-- @usage float GET_CONTROL_NORMAL(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return float
function GetControlNormal(inputGroup, control) end

-- 0, 1 and 2 used in the scripts. 0 is by far the most common of them.
-- @module native
-- @submodule controls
-- @see IS_DISABLED_CONTROL_PRESSED
-- @usage BOOL IS_DISABLED_CONTROL_PRESSED(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return BOOL
function IsDisabledControlPressed(inputGroup, control) end

-- 0, 1 and 2 used in the scripts. 0 is by far the most common of them.
-- @module native
-- @submodule controls
-- @see IS_DISABLED_CONTROL_JUST_PRESSED
-- @usage BOOL IS_DISABLED_CONTROL_JUST_PRESSED(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return BOOL
function IsDisabledControlJustPressed(inputGroup, control) end

-- 0, 1 and 2 used in the scripts. 0 is by far the most common of them.
-- @module native
-- @submodule controls
-- @see IS_DISABLED_CONTROL_JUST_RELEASED
-- @usage BOOL IS_DISABLED_CONTROL_JUST_RELEASED(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return BOOL
function IsDisabledControlJustReleased(inputGroup, control) end

-- control - c# works with (int)GTA.Control.CursorY / (int)GTA.Control.CursorX and returns the mouse movement (additive).   0, 1 and 2 used in the scripts. 0 is by far the most common of them.
-- @module native
-- @submodule controls
-- @see GET_DISABLED_CONTROL_NORMAL
-- @usage float GET_DISABLED_CONTROL_NORMAL(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return float
function GetDisabledControlNormal(inputGroup, control) end

-- formerly called _GET_CONTROL_ACTION_NAME incorrectly  p2 appears to always be true. p2 is unused variable in function.  EG: GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 201, 1) /*INPUT_FRONTEND_ACCEPT (e.g. Enter button)*/ GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 202, 1) /*INPUT_FRONTEND_CANCEL (e.g. ESC button)*/ GET_CONTROL_INSTRUCTIONAL_BUTTON (2, 51, 1) /*INPUT_CONTEXT (e.g. E button)*/  gtaforums.com/topic/819070-c-draw-instructional-buttons-scaleform-movie/#entry1068197378   0, 1 and 2 used in the scripts. 0 is by far the most common of them.
-- @module native
-- @submodule controls
-- @see GET_CONTROL_INSTRUCTIONAL_BUTTON
-- @usage char* GET_CONTROL_INSTRUCTIONAL_BUTTON(int inputGroup, int control, BOOL p2);
-- @param inputGroup int
-- @param control int
-- @param p2 BOOL
-- @return char*
function GetControlInstructionalButton(inputGroup, control, p2) end

-- p0 always seems to be 0 duration in milliseconds  frequency should range from about 10 (slow vibration) to 255 (very fast) appears to be a hash collision, though it does do what it says  example: SET_PAD_SHAKE(0, 100, 200);
-- @module native
-- @submodule controls
-- @see SET_PAD_SHAKE
-- @usage void SET_PAD_SHAKE(int p0, int duration, int frequency);
-- @param p0 int
-- @param duration int
-- @param frequency int
-- @return void
function SetPadShake(p0, duration, frequency) end

-- @todo
-- @module native
-- @submodule controls
-- @see STOP_PAD_SHAKE
-- @usage void STOP_PAD_SHAKE(Any p0);
-- @param p0 Any
-- @return void
function StopPadShake(p0) end

-- @todo
-- @module native
-- @submodule controls
-- @see IS_LOOK_INVERTED
-- @usage BOOL IS_LOOK_INVERTED();
-- @return BOOL
function IsLookInverted() end

-- @todo
-- @module native
-- @submodule controls
-- @see GET_LOCAL_PLAYER_AIM_STATE
-- @usage int GET_LOCAL_PLAYER_AIM_STATE();
-- @return int
function GetLocalPlayerAimState() end

-- @todo
-- @module native
-- @submodule controls
-- @see SET_PLAYERPAD_SHAKES_WHEN_CONTROLLER_DISABLED
-- @usage void SET_PLAYERPAD_SHAKES_WHEN_CONTROLLER_DISABLED(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetPlayerpadShakesWhenControllerDisabled(toggle) end

-- @todo
-- @module native
-- @submodule controls
-- @see SET_INPUT_EXCLUSIVE
-- @usage void SET_INPUT_EXCLUSIVE(int inputGroup, int control);
-- @param inputGroup int
-- @param control int
-- @return void
function SetInputExclusive(inputGroup, control) end

-- control values and meaning: github.com/crosire/scripthookvdotnet/blob/dev_v3/source/scripting/Controls.cs  0, 1 and 2 used in the scripts. 0 is by far the most common of them.  Control values from the decompiled scripts: 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27, 28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,53,5 4,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78, 79,80,81,82,85,86,87,88,89,90,91,92,93,95,96,97,98,99,100,101,102,103,105, 107,108,109,110,111,112,113,114,115,116,117,118,119,123,126,129,130,131,132, 133,134,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152, 153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,171,172 ,177,187,188,189,190,195,196,199,200,201,202,203,205,207,208,209,211,212,213, 217,219,220,221,225,226,230,234,235,236,237,238,239,240,241,242,243,244,257, 261,262,263,264,265,270,271,272,273,274,278,279,280,281,282,283,284,285,286, 287,288,289,337.  Example: CONTROLS::DISABLE_CONTROL_ACTION(2, 19, true) disables the switching UI from appearing both when using a keyboard and Xbox 360 controller. Needs to be executed each frame.    Control group 1 and 0 gives the same results as 2. Same results for all players.
-- @module native
-- @submodule controls
-- @see DISABLE_CONTROL_ACTION
-- @usage void DISABLE_CONTROL_ACTION(int inputGroup, int control, BOOL disable);
-- @param inputGroup int
-- @param control int
-- @param disable BOOL
-- @return void
function DisableControlAction(inputGroup, control, disable) end

-- control values and meaning: github.com/crosire/scripthookvdotnet/blob/dev/source/scripting/Controls.hpp  0, 1 and 2 used in the scripts.  Control values from the decompiled scripts:  0,1,2,3,4,5,6,8,9,10,11,14,15,16,17,19,21,22,24,25,26,30,31,32,33,34,35,36, 37,44,46,47,59,60,65,68,69,70,71,72,73,74,75,76,79,80,81,82,86,95,98,99,100 ,101,114,140,141,143,172,173,174,175,176,177,178,179,180,181,187,188,189,19 0,195,196,197,198,199,201,202,203,204,205,206,207,208,209,210,217,218,219,2 20,221,225,228,229,230,231,234,235,236,237,238,239,240,241,242,245,246,257, 261,262,263,264,286,287,288,289,337,338,339,340,341,342,343  INPUTGROUP_MOVE INPUTGROUP_LOOK INPUTGROUP_WHEEL INPUTGROUP_CELLPHONE_NAVIGATE INPUTGROUP_CELLPHONE_NAVIGATE_UD INPUTGROUP_CELLPHONE_NAVIGATE_LR INPUTGROUP_FRONTEND_DPAD_ALL INPUTGROUP_FRONTEND_DPAD_UD INPUTGROUP_FRONTEND_DPAD_LR INPUTGROUP_FRONTEND_LSTICK_ALL INPUTGROUP_FRONTEND_RSTICK_ALL INPUTGROUP_FRONTEND_GENERIC_UD INPUTGROUP_FRONTEND_GENERIC_LR INPUTGROUP_FRONTEND_GENERIC_ALL INPUTGROUP_FRONTEND_BUMPERS INPUTGROUP_FRONTEND_TRIGGERS INPUTGROUP_FRONTEND_STICKS INPUTGROUP_SCRIPT_DPAD_ALL INPUTGROUP_SCRIPT_DPAD_UD INPUTGROUP_SCRIPT_DPAD_LR INPUTGROUP_SCRIPT_LSTICK_ALL INPUTGROUP_SCRIPT_RSTICK_ALL INPUTGROUP_SCRIPT_BUMPERS INPUTGROUP_SCRIPT_TRIGGERS INPUTGROUP_WEAPON_WHEEL_CYCLE INPUTGROUP_FLY INPUTGROUP_SUB INPUTGROUP_VEH_MOVE_ALL INPUTGROUP_CURSOR INPUTGROUP_CURSOR_SCROLL INPUTGROUP_SNIPER_ZOOM_SECONDARY INPUTGROUP_VEH_HYDRAULICS_CONTROL   Took those in IDA Pro.Not sure in which order they go
-- @module native
-- @submodule controls
-- @see ENABLE_CONTROL_ACTION
-- @usage void ENABLE_CONTROL_ACTION(int inputGroup, int control, BOOL enable);
-- @param inputGroup int
-- @param control int
-- @param enable BOOL
-- @return void
function EnableControlAction(inputGroup, control, enable) end

-- @todo
-- @module native
-- @submodule controls
-- @see DISABLE_ALL_CONTROL_ACTIONS
-- @usage void DISABLE_ALL_CONTROL_ACTIONS(int inputGroup);
-- @param inputGroup int
-- @return void
function DisableAllControlActions(inputGroup) end

-- @todo
-- @module native
-- @submodule controls
-- @see ENABLE_ALL_CONTROL_ACTIONS
-- @usage void ENABLE_ALL_CONTROL_ACTIONS(int inputGroup);
-- @param inputGroup int
-- @return void
function EnableAllControlActions(inputGroup) end