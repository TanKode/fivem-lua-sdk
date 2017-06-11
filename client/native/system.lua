-- Pauses execution of the current script, please note this behavior is only seen when called from one of the game script files(ysc). In order to wait an asi script use      static void WAIT(DWORD time); found in main.h   -------------------------------------------------------------------- It does not actually seem to wait the amount of milliseconds stated like the normal WAIT() command does, but it does seem to make task sequences work more smoothly  System native hashes do not change on gameupdate
-- @module native
-- @submodule system
-- @see WAIT
-- @usage void WAIT(int ms);
-- @param ms int
-- @return void
function Wait() end

-- Examples:  g_384A = SYSTEM::START_NEW_SCRIPT("cellphone_flashhand", 1424);  l_10D = SYSTEM::START_NEW_SCRIPT("taxiService", 1828);  SYSTEM::START_NEW_SCRIPT("AM_MP_YACHT", 5000);  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);  SYSTEM::START_NEW_SCRIPT("emergencycall", 512);   SYSTEM::START_NEW_SCRIPT("FM_maintain_cloud_header_data", 1424);  SYSTEM::START_NEW_SCRIPT("FM_Mission_Controller", 31000);  SYSTEM::START_NEW_SCRIPT("tennis_family", 3650);  SYSTEM::START_NEW_SCRIPT("Celebrations", 3650);  Decompiled examples of usage when starting a script:       SCRIPT::REQUEST_SCRIPT(a_0);     if (SCRIPT::HAS_SCRIPT_LOADED(a_0)) {         SYSTEM::START_NEW_SCRIPT(a_0, v_3);         SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(a_0);         return 1;     }   or:      v_2 = "MrsPhilips2";     SCRIPT::REQUEST_SCRIPT(v_2);     while (!SCRIPT::HAS_SCRIPT_LOADED(v_2)) {     SCRIPT::REQUEST_SCRIPT(v_2);     SYSTEM::WAIT(0);     }     sub_8792(36);     SYSTEM::START_NEW_SCRIPT(v_2, 17000);     SCRIPT::SET_SCRIPT_AS_NO_LONGER_NEEDED(v_2);  All native script names: pastebin.com/K9adDsu4 and pastebin.com/yLNWicUi
-- @module native
-- @submodule system
-- @see START_NEW_SCRIPT
-- @usage int START_NEW_SCRIPT(char* scriptName, int stackSize);
-- @param scriptName char*
-- @param int
-- @return int
function StartNewScript() end

-- return : script thread id, 0 if failed Pass pointer to struct of args in p1, size of struct goes into p2
-- @module native
-- @submodule system
-- @see START_NEW_SCRIPT_WITH_ARGS
-- @usage int START_NEW_SCRIPT_WITH_ARGS(char* scriptName, Any* args, int argCount, int stackSize);
-- @param scriptName char*
-- @param Any*
-- @param int
-- @return int
function StartNewScriptWithArgs() end

-- @todo
-- @module native
-- @submodule system
-- @see START_NEW_SCRIPT_WITH_NAME_HASH
-- @usage int START_NEW_SCRIPT_WITH_NAME_HASH(Hash scriptHash, int stackSize);
-- @param scriptHash Hash
-- @param int
-- @return int
function StartNewScriptWithNameHash() end

-- @todo
-- @module native
-- @submodule system
-- @see START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS
-- @usage int START_NEW_SCRIPT_WITH_NAME_HASH_AND_ARGS(Hash scriptHash, Any* args, int argCount, int stackSize);
-- @param scriptHash Hash
-- @param Any*
-- @param int
-- @return int
function StartNewScriptWithNameHashAndArgs() end

-- Counts up. Every 1000 is 1 real-time second. Use SETTIMERA(int value) to set the timer (e.g.: SETTIMERA(0)).
-- @module native
-- @submodule system
-- @see TIMERA
-- @usage int TIMERA();
-- @param undefined
-- @return int
function Timera() end

-- @todo
-- @module native
-- @submodule system
-- @see TIMERB
-- @usage int TIMERB();
-- @param undefined
-- @return int
function Timerb() end

-- @todo
-- @module native
-- @submodule system
-- @see SETTIMERA
-- @usage void SETTIMERA(int value);
-- @param value int
-- @return void
function Settimera() end

-- @todo
-- @module native
-- @submodule system
-- @see SETTIMERB
-- @usage void SETTIMERB(int value);
-- @param value int
-- @return void
function Settimerb() end

-- Gets the current frame time.
-- @module native
-- @submodule system
-- @see TIMESTEP
-- @usage float TIMESTEP();
-- @param undefined
-- @return float
function Timestep() end

-- @todo
-- @module native
-- @submodule system
-- @see SIN
-- @usage float SIN(float value);
-- @param value float
-- @return float
function Sin() end

-- @todo
-- @module native
-- @submodule system
-- @see COS
-- @usage float COS(float value);
-- @param value float
-- @return float
function Cos() end

-- @todo
-- @module native
-- @submodule system
-- @see SQRT
-- @usage float SQRT(float value);
-- @param value float
-- @return float
function Sqrt() end

-- @todo
-- @module native
-- @submodule system
-- @see POW
-- @usage float POW(float base, float exponent);
-- @param base float
-- @param float
-- @return float
function Pow() end

-- Calculates the magnitude of a vector.
-- @module native
-- @submodule system
-- @see VMAG
-- @usage float VMAG(float x, float y, float z);
-- @param x float
-- @param float
-- @return float
function Vmag() end

-- Calculates the magnitude of a vector but does not perform Sqrt operations. (Its way faster)
-- @module native
-- @submodule system
-- @see VMAG2
-- @usage float VMAG2(float x, float y, float z);
-- @param x float
-- @param float
-- @return float
function Vmag2() end

-- Calculates distance between vectors.
-- @module native
-- @submodule system
-- @see VDIST
-- @usage float VDIST(float x1, float y1, float z1, float x2, float y2, float z2);
-- @param x1 float
-- @param float
-- @return float
function Vdist() end

-- Calculates distance between vectors but does not perform Sqrt operations. (Its way faster)
-- @module native
-- @submodule system
-- @see VDIST2
-- @usage float VDIST2(float x1, float y1, float z1, float x2, float y2, float z2);
-- @param x1 float
-- @param float
-- @return float
function Vdist2() end

-- @todo
-- @module native
-- @submodule system
-- @see SHIFT_LEFT
-- @usage int SHIFT_LEFT(int value, int bitShift);
-- @param value int
-- @param int
-- @return int
function ShiftLeft() end

-- @todo
-- @module native
-- @submodule system
-- @see SHIFT_RIGHT
-- @usage int SHIFT_RIGHT(int value, int bitShift);
-- @param value int
-- @param int
-- @return int
function ShiftRight() end

-- @todo
-- @module native
-- @submodule system
-- @see FLOOR
-- @usage int FLOOR(float value);
-- @param value float
-- @return int
function Floor() end

-- I'm guessing this rounds a float value up to the next whole number, and FLOOR rounds it down
-- @module native
-- @submodule system
-- @see CEIL
-- @usage int CEIL(float value);
-- @param value float
-- @return int
function Ceil() end

-- @todo
-- @module native
-- @submodule system
-- @see ROUND
-- @usage int ROUND(float value);
-- @param value float
-- @return int
function Round() end

-- @todo
-- @module native
-- @submodule system
-- @see TO_FLOAT
-- @usage float TO_FLOAT(int value);
-- @param value int
-- @return float
function ToFloat() end