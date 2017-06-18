-- Please change to "void"! ---------------------------------  Example:  for (v_2 = 0; v_2 <= 4; v_2 += 1) {     STATS::STAT_CLEAR_SLOT_FOR_RELOAD(v_2); }
-- @module native
-- @submodule stats
-- @see STAT_CLEAR_SLOT_FOR_RELOAD
-- @usage Any STAT_CLEAR_SLOT_FOR_RELOAD(int statSlot);
-- @param statSlot int
-- @return Any
function StatClearSlotForReload(statSlot) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_LOAD
-- @usage BOOL STAT_LOAD(int p0);
-- @param p0 int
-- @return BOOL
function StatLoad(p0) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SAVE
-- @usage BOOL STAT_SAVE(int p0, BOOL p1, int p2);
-- @param p0 int
-- @param p1 BOOL
-- @param p2 int
-- @return BOOL
function StatSave(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_LOAD_PENDING
-- @usage BOOL STAT_LOAD_PENDING(Any p0);
-- @param p0 Any
-- @return BOOL
function StatLoadPending(p0) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SAVE_PENDING
-- @usage Any STAT_SAVE_PENDING();
-- @return Any
function StatSavePending() end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SAVE_PENDING_OR_REQUESTED
-- @usage Any STAT_SAVE_PENDING_OR_REQUESTED();
-- @return Any
function StatSavePendingOrRequested() end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_DELETE_SLOT
-- @usage Any STAT_DELETE_SLOT(Any p0);
-- @param p0 Any
-- @return Any
function StatDeleteSlot(p0) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SLOT_IS_LOADED
-- @usage BOOL STAT_SLOT_IS_LOADED(Any p0);
-- @param p0 Any
-- @return BOOL
function StatSlotIsLoaded(p0) end

-- Add Cash example: for (int i = 0; i < 3; i++) { char statNameFull[32]; sprintf_s(statNameFull, "SP%d_TOTAL_CASH", i); Hash hash = GAMEPLAY::GET_HASH_KEY(statNameFull); int val; STATS::STAT_GET_INT(hash, &val, -1); val += 1000000; STATS::STAT_SET_INT(hash, val, 1); }
-- @module native
-- @submodule stats
-- @see STAT_SET_INT
-- @usage BOOL STAT_SET_INT(Hash statName, int value, BOOL save);
-- @param statName Hash
-- @param value int
-- @param save BOOL
-- @return BOOL
function StatSetInt(statName, value, save) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SET_FLOAT
-- @usage BOOL STAT_SET_FLOAT(Hash statName, float value, BOOL save);
-- @param statName Hash
-- @param value float
-- @param save BOOL
-- @return BOOL
function StatSetFloat(statName, value, save) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SET_BOOL
-- @usage BOOL STAT_SET_BOOL(Hash statName, BOOL value, BOOL save);
-- @param statName Hash
-- @param value BOOL
-- @param save BOOL
-- @return BOOL
function StatSetBool(statName, value, save) end

-- The following values have been found in the decompiled scripts: "RC_ABI1" "RC_ABI2" "RC_BA1" "RC_BA2" "RC_BA3" "RC_BA3A" "RC_BA3C" "RC_BA4" "RC_DRE1" "RC_EPS1" "RC_EPS2" "RC_EPS3" "RC_EPS4" "RC_EPS5" "RC_EPS6" "RC_EPS7" "RC_EPS8" "RC_EXT1" "RC_EXT2" "RC_EXT3" "RC_EXT4" "RC_FAN1" "RC_FAN2" "RC_FAN3" "RC_HAO1" "RC_HUN1" "RC_HUN2" "RC_JOS1" "RC_JOS2" "RC_JOS3" "RC_JOS4" "RC_MAU1" "RC_MIN1" "RC_MIN2" "RC_MIN3" "RC_MRS1" "RC_MRS2" "RC_NI1" "RC_NI1A" "RC_NI1B" "RC_NI1C" "RC_NI1D" "RC_NI2" "RC_NI3" "RC_OME1" "RC_OME2" "RC_PA1" "RC_PA2" "RC_PA3" "RC_PA3A" "RC_PA3B" "RC_PA4" "RC_RAM1" "RC_RAM2" "RC_RAM3" "RC_RAM4" "RC_RAM5" "RC_SAS1" "RC_TON1" "RC_TON2" "RC_TON3" "RC_TON4" "RC_TON5"
-- @module native
-- @submodule stats
-- @see STAT_SET_GXT_LABEL
-- @usage BOOL STAT_SET_GXT_LABEL(Hash statName, char* value, BOOL save);
-- @param statName Hash
-- @param value char*
-- @param save BOOL
-- @return BOOL
function StatSetGxtLabel(statName, value, save) end

-- 'value' is a structure to a structure, 'numFields' is how many fields there are in said structure (usually 7).  The structure looks like this:  int year int month int day int hour int minute int second int millisecond  The decompiled scripts use TIME::GET_POSIX_TIME to fill this structure.
-- @module native
-- @submodule stats
-- @see STAT_SET_DATE
-- @usage BOOL STAT_SET_DATE(Hash statName, Any* value, int numFields, BOOL save);
-- @param statName Hash
-- @param value Any*
-- @param numFields int
-- @param save BOOL
-- @return BOOL
function StatSetDate(statName, value, numFields, save) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SET_STRING
-- @usage BOOL STAT_SET_STRING(Hash statName, char* value, BOOL save);
-- @param statName Hash
-- @param value char*
-- @param save BOOL
-- @return BOOL
function StatSetString(statName, value, save) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SET_POS
-- @usage BOOL STAT_SET_POS(Hash statName, float x, float y, float z, BOOL save);
-- @param statName Hash
-- @param x float
-- @param y float
-- @param z float
-- @param save BOOL
-- @return BOOL
function StatSetPos(statName, x, y, z, save) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SET_MASKED_INT
-- @usage BOOL STAT_SET_MASKED_INT(Hash statName, Any p1, Any p2, int p3, BOOL save);
-- @param statName Hash
-- @param p1 Any
-- @param p2 Any
-- @param p3 int
-- @param save BOOL
-- @return BOOL
function StatSetMaskedInt(statName, p1, p2, p3, save) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SET_USER_ID
-- @usage BOOL STAT_SET_USER_ID(Hash statName, char* value, BOOL save);
-- @param statName Hash
-- @param value char*
-- @param save BOOL
-- @return BOOL
function StatSetUserId(statName, value, save) end

-- p1 always true.
-- @module native
-- @submodule stats
-- @see STAT_SET_CURRENT_POSIX_TIME
-- @usage BOOL STAT_SET_CURRENT_POSIX_TIME(Hash statName, BOOL p1);
-- @param statName Hash
-- @param p1 BOOL
-- @return BOOL
function StatSetCurrentPosixTime(statName, p1) end

-- p2 appears to always be -1
-- @module native
-- @submodule stats
-- @see STAT_GET_INT
-- @usage BOOL STAT_GET_INT(Hash statHash, int* outValue, int p2);
-- @param statHash Hash
-- @param outValue int*
-- @param p2 int
-- @return BOOL
function StatGetInt(statHash, outValue, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_GET_FLOAT
-- @usage BOOL STAT_GET_FLOAT(Hash statHash, float* outValue, Any p2);
-- @param statHash Hash
-- @param outValue float*
-- @param p2 Any
-- @return BOOL
function StatGetFloat(statHash, outValue, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_GET_BOOL
-- @usage BOOL STAT_GET_BOOL(Hash statHash, BOOL* outValue, Any p2);
-- @param statHash Hash
-- @param outValue BOOL*
-- @param p2 Any
-- @return BOOL
function StatGetBool(statHash, outValue, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_GET_DATE
-- @usage BOOL STAT_GET_DATE(Hash statHash, Any* p1, Any p2, Any p3);
-- @param statHash Hash
-- @param p1 Any*
-- @param p2 Any
-- @param p3 Any
-- @return BOOL
function StatGetDate(statHash, p1, p2, p3) end

-- p1 is always -1 in the script files
-- @module native
-- @submodule stats
-- @see STAT_GET_STRING
-- @usage char* STAT_GET_STRING(Hash statHash, int p1);
-- @param statHash Hash
-- @param p1 int
-- @return char*
function StatGetString(statHash, p1) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_GET_POS
-- @usage BOOL STAT_GET_POS(Any p0, Any* p1, Any* p2, Any* p3, Any p4);
-- @param p0 Any
-- @param p1 Any*
-- @param p2 Any*
-- @param p3 Any*
-- @param p4 Any
-- @return BOOL
function StatGetPos(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_GET_MASKED_INT
-- @usage BOOL STAT_GET_MASKED_INT(Any p0, Any* p1, Any p2, Any p3, Any p4);
-- @param p0 Any
-- @param p1 Any*
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @return BOOL
function StatGetMaskedInt(p0, p1, p2, p3, p4) end

-- Needs more research. Seems to return "STAT_UNKNOWN" if no such user id exists.
-- @module native
-- @submodule stats
-- @see STAT_GET_USER_ID
-- @usage char* STAT_GET_USER_ID(Any p0);
-- @param p0 Any
-- @return char*
function StatGetUserId(p0) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_GET_LICENSE_PLATE
-- @usage char* STAT_GET_LICENSE_PLATE(Hash statName);
-- @param statName Hash
-- @return char*
function StatGetLicensePlate(statName) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SET_LICENSE_PLATE
-- @usage BOOL STAT_SET_LICENSE_PLATE(Hash statName, char* str);
-- @param statName Hash
-- @param str char*
-- @return BOOL
function StatSetLicensePlate(statName, str) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_INCREMENT
-- @usage void STAT_INCREMENT(Hash statName, float value);
-- @param statName Hash
-- @param value float
-- @return void
function StatIncrement(statName, value) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_GET_NUMBER_OF_DAYS
-- @usage int STAT_GET_NUMBER_OF_DAYS(Hash statName);
-- @param statName Hash
-- @return int
function StatGetNumberOfDays(statName) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_GET_NUMBER_OF_HOURS
-- @usage int STAT_GET_NUMBER_OF_HOURS(Hash statName);
-- @param statName Hash
-- @return int
function StatGetNumberOfHours(statName) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_GET_NUMBER_OF_MINUTES
-- @usage int STAT_GET_NUMBER_OF_MINUTES(Hash statName);
-- @param statName Hash
-- @return int
function StatGetNumberOfMinutes(statName) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_GET_NUMBER_OF_SECONDS
-- @usage int STAT_GET_NUMBER_OF_SECONDS(Hash statName);
-- @param statName Hash
-- @return int
function StatGetNumberOfSeconds(statName) end

-- p2 - Default value? Seems to be -1 most of the time.
-- @module native
-- @submodule stats
-- @see STAT_GET_BOOL_MASKED
-- @usage BOOL STAT_GET_BOOL_MASKED(Hash statName, int mask, int p2);
-- @param statName Hash
-- @param mask int
-- @param p2 int
-- @return BOOL
function StatGetBoolMasked(statName, mask, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see STAT_SET_BOOL_MASKED
-- @usage BOOL STAT_SET_BOOL_MASKED(Hash statName, BOOL value, int mask, BOOL save);
-- @param statName Hash
-- @param value BOOL
-- @param mask int
-- @param save BOOL
-- @return BOOL
function StatSetBoolMasked(statName, value, mask, save) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_NPC_INVITE
-- @usage void PLAYSTATS_NPC_INVITE(Any* p0);
-- @param p0 Any*
-- @return void
function PlaystatsNpcInvite(p0) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_AWARD_XP
-- @usage void PLAYSTATS_AWARD_XP(Any p0, Any p1, Any p2);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @return void
function PlaystatsAwardXp(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_RANK_UP
-- @usage void PLAYSTATS_RANK_UP(Any p0);
-- @param p0 Any
-- @return void
function PlaystatsRankUp(p0) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_MISSION_STARTED
-- @usage void PLAYSTATS_MISSION_STARTED(Any* p0, Any p1, Any p2, BOOL p3);
-- @param p0 Any*
-- @param p1 Any
-- @param p2 Any
-- @param p3 BOOL
-- @return void
function PlaystatsMissionStarted(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_MISSION_OVER
-- @usage void PLAYSTATS_MISSION_OVER(Any* p0, Any p1, Any p2, BOOL p3, BOOL p4, BOOL p5);
-- @param p0 Any*
-- @param p1 Any
-- @param p2 Any
-- @param p3 BOOL
-- @param p4 BOOL
-- @param p5 BOOL
-- @return void
function PlaystatsMissionOver(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_MISSION_CHECKPOINT
-- @usage void PLAYSTATS_MISSION_CHECKPOINT(Any* p0, Any p1, Any p2, Any p3);
-- @param p0 Any*
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @return void
function PlaystatsMissionCheckpoint(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_RACE_CHECKPOINT
-- @usage void PLAYSTATS_RACE_CHECKPOINT(Any p0, Any p1, Any p2, Any p3, Any p4);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @return void
function PlaystatsRaceCheckpoint(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_MATCH_STARTED
-- @usage void PLAYSTATS_MATCH_STARTED(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @param p5 Any
-- @param p6 Any
-- @return void
function PlaystatsMatchStarted(p0, p1, p2, p3, p4, p5, p6) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_SHOP_ITEM
-- @usage void PLAYSTATS_SHOP_ITEM(Any p0, Any p1, Any p2, Any p3, Any p4);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @return void
function PlaystatsShopItem(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_WEBSITE_VISITED
-- @usage void PLAYSTATS_WEBSITE_VISITED(Hash scaleformHash, int p1);
-- @param scaleformHash Hash
-- @param p1 int
-- @return void
function PlaystatsWebsiteVisited(scaleformHash, p1) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_FRIEND_ACTIVITY
-- @usage void PLAYSTATS_FRIEND_ACTIVITY(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return void
function PlaystatsFriendActivity(p0, p1) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_ODDJOB_DONE
-- @usage void PLAYSTATS_ODDJOB_DONE(Any p0, Any p1, Any p2);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @return void
function PlaystatsOddjobDone(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_PROP_CHANGE
-- @usage void PLAYSTATS_PROP_CHANGE(Any p0, Any p1, Any p2, Any p3);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @return void
function PlaystatsPropChange(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_CLOTH_CHANGE
-- @usage void PLAYSTATS_CLOTH_CHANGE(Any p0, Any p1, Any p2, Any p3, Any p4);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @return void
function PlaystatsClothChange(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule stats
-- @see PLAYSTATS_CHEAT_APPLIED
-- @usage void PLAYSTATS_CHEAT_APPLIED(char* cheat);
-- @param cheat char*
-- @return void
function PlaystatsCheatApplied(cheat) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_GET_NUMBER_OF_COLUMNS
-- @usage Any LEADERBOARDS_GET_NUMBER_OF_COLUMNS(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return Any
function LeaderboardsGetNumberOfColumns(p0, p1) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_GET_COLUMN_ID
-- @usage Any LEADERBOARDS_GET_COLUMN_ID(Any p0, Any p1, Any p2);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @return Any
function LeaderboardsGetColumnId(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_GET_COLUMN_TYPE
-- @usage Any LEADERBOARDS_GET_COLUMN_TYPE(Any p0, Any p1, Any p2);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @return Any
function LeaderboardsGetColumnType(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_READ_CLEAR_ALL
-- @usage Any LEADERBOARDS_READ_CLEAR_ALL();
-- @return Any
function LeaderboardsReadClearAll() end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_READ_CLEAR
-- @usage Any LEADERBOARDS_READ_CLEAR(Any p0, Any p1, Any p2);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @return Any
function LeaderboardsReadClear(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_READ_PENDING
-- @usage BOOL LEADERBOARDS_READ_PENDING(Any p0, Any p1, Any p2);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @return BOOL
function LeaderboardsReadPending(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_READ_SUCCESSFUL
-- @usage BOOL LEADERBOARDS_READ_SUCCESSFUL(Any p0, Any p1, Any p2);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @return BOOL
function LeaderboardsReadSuccessful(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS2_READ_FRIENDS_BY_ROW
-- @usage BOOL LEADERBOARDS2_READ_FRIENDS_BY_ROW(Any* p0, Any* p1, Any p2, BOOL p3, Any p4, Any p5);
-- @param p0 Any*
-- @param p1 Any*
-- @param p2 Any
-- @param p3 BOOL
-- @param p4 Any
-- @param p5 Any
-- @return BOOL
function Leaderboards2ReadFriendsByRow(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS2_READ_BY_HANDLE
-- @usage BOOL LEADERBOARDS2_READ_BY_HANDLE(Any* p0, Any* p1);
-- @param p0 Any*
-- @param p1 Any*
-- @return BOOL
function Leaderboards2ReadByHandle(p0, p1) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS2_READ_BY_ROW
-- @usage BOOL LEADERBOARDS2_READ_BY_ROW(Any* p0, Any* p1, Any p2, Any* p3, Any p4, Any* p5, Any p6);
-- @param p0 Any*
-- @param p1 Any*
-- @param p2 Any
-- @param p3 Any*
-- @param p4 Any
-- @param p5 Any*
-- @param p6 Any
-- @return BOOL
function Leaderboards2ReadByRow(p0, p1, p2, p3, p4, p5, p6) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS2_READ_BY_RANK
-- @usage BOOL LEADERBOARDS2_READ_BY_RANK(Any* p0, Any p1, Any p2);
-- @param p0 Any*
-- @param p1 Any
-- @param p2 Any
-- @return BOOL
function Leaderboards2ReadByRank(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS2_READ_BY_RADIUS
-- @usage BOOL LEADERBOARDS2_READ_BY_RADIUS(Any* p0, Any p1, Any* p2);
-- @param p0 Any*
-- @param p1 Any
-- @param p2 Any*
-- @return BOOL
function Leaderboards2ReadByRadius(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS2_READ_BY_SCORE_INT
-- @usage BOOL LEADERBOARDS2_READ_BY_SCORE_INT(Any* p0, Any p1, Any p2);
-- @param p0 Any*
-- @param p1 Any
-- @param p2 Any
-- @return BOOL
function Leaderboards2ReadByScoreInt(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS2_READ_BY_SCORE_FLOAT
-- @usage BOOL LEADERBOARDS2_READ_BY_SCORE_FLOAT(Any* p0, float p1, Any p2);
-- @param p0 Any*
-- @param p1 float
-- @param p2 Any
-- @return BOOL
function Leaderboards2ReadByScoreFloat(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS2_WRITE_DATA
-- @usage BOOL LEADERBOARDS2_WRITE_DATA(Any* p0);
-- @param p0 Any*
-- @return BOOL
function Leaderboards2WriteData(p0) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_CACHE_DATA_ROW
-- @usage BOOL LEADERBOARDS_CACHE_DATA_ROW(Any* p0);
-- @param p0 Any*
-- @return BOOL
function LeaderboardsCacheDataRow(p0) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_CLEAR_CACHE_DATA
-- @usage void LEADERBOARDS_CLEAR_CACHE_DATA();
-- @return void
function LeaderboardsClearCacheData() end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_GET_CACHE_EXISTS
-- @usage BOOL LEADERBOARDS_GET_CACHE_EXISTS(Any p0);
-- @param p0 Any
-- @return BOOL
function LeaderboardsGetCacheExists(p0) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_GET_CACHE_TIME
-- @usage Any LEADERBOARDS_GET_CACHE_TIME(Any p0);
-- @param p0 Any
-- @return Any
function LeaderboardsGetCacheTime(p0) end

-- @todo
-- @module native
-- @submodule stats
-- @see LEADERBOARDS_GET_CACHE_DATA_ROW
-- @usage BOOL LEADERBOARDS_GET_CACHE_DATA_ROW(Any p0, Any p1, Any* p2);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any*
-- @return BOOL
function LeaderboardsGetCacheDataRow(p0, p1, p2) end