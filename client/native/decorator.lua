-- @todo
-- @module native
-- @submodule decorator
-- @see DECOR_SET_TIME
-- @usage BOOL DECOR_SET_TIME(Entity entity, char* propertyName, int timestamp);
-- @param entity Entity
-- @param char*
-- @param int
-- @return BOOL
function DecorSetTime() end

-- This function sets metadata of type bool to specified entity.
-- @module native
-- @submodule decorator
-- @see DECOR_SET_BOOL
-- @usage BOOL DECOR_SET_BOOL(Entity entity, char* propertyName, BOOL value);
-- @param entity Entity
-- @param char*
-- @param BOOL
-- @return BOOL
function DecorSetBool() end

-- Sets property to int.
-- @module native
-- @submodule decorator
-- @see DECOR_SET_INT
-- @usage BOOL DECOR_SET_INT(Entity entity, char* propertyName, int value);
-- @param entity Entity
-- @param char*
-- @param int
-- @return BOOL
function DecorSetInt() end

-- @todo
-- @module native
-- @submodule decorator
-- @see DECOR_GET_BOOL
-- @usage BOOL DECOR_GET_BOOL(Entity entity, char* propertyName);
-- @param entity Entity
-- @param char*
-- @return BOOL
function DecorGetBool() end

-- @todo
-- @module native
-- @submodule decorator
-- @see DECOR_GET_INT
-- @usage int DECOR_GET_INT(Entity entity, char* propertyName);
-- @param entity Entity
-- @param char*
-- @return int
function DecorGetInt() end

-- Returns whether or not the specified property is set for the entity.
-- @module native
-- @submodule decorator
-- @see DECOR_EXIST_ON
-- @usage BOOL DECOR_EXIST_ON(Entity entity, char* propertyName);
-- @param entity Entity
-- @param char*
-- @return BOOL
function DecorExistOn() end

-- @todo
-- @module native
-- @submodule decorator
-- @see DECOR_REMOVE
-- @usage BOOL DECOR_REMOVE(Entity entity, char* propertyName);
-- @param entity Entity
-- @param char*
-- @return BOOL
function DecorRemove() end

-- Found this in standard_global_init.c4 line 1898  void sub_523a() {     DECORATOR::DECOR_REGISTER("Player_Vehicle", 3);     DECORATOR::DECOR_REGISTER("PV_Slot", 3);     DECORATOR::DECOR_REGISTER("Previous_Owner", 3);     DECORATOR::DECOR_REGISTER("Sprayed_Vehicle_Decorator", 2);     DECORATOR::DECOR_REGISTER("Sprayed_Vehicle_Timer_Dec", 5);     DECORATOR::DECOR_REGISTER("Vehicle_Reward", 3);     DECORATOR::DECOR_REGISTER("Vehicle_Reward_Teams", 3);     DECORATOR::DECOR_REGISTER("Skill_Blocker", 2);     DECORATOR::DECOR_REGISTER("TargetPlayerForTeam", 3);     DECORATOR::DECOR_REGISTER("XP_Blocker", 2);     DECORATOR::DECOR_REGISTER("CrowdControlSetUp", 3);     DECORATOR::DECOR_REGISTER("Bought_Drugs", 2);     DECORATOR::DECOR_REGISTER("HeroinInPossession", 1);     DECORATOR::DECOR_REGISTER("CokeInPossession", 1);     DECORATOR::DECOR_REGISTER("WeedInPossession", 1);     DECORATOR::DECOR_REGISTER("MethInPossession", 1);     DECORATOR::DECOR_REGISTER("bombdec", 3);     DECORATOR::DECOR_REGISTER("bombdec1", 3);     DECORATOR::DECOR_REGISTER("bombowner", 3);     DECORATOR::DECOR_REGISTER("noPlateScan", 2);     DECORATOR::DECOR_REGISTER("prisonBreakBoss", 2);     DECORATOR::DECOR_REGISTER("cashondeadbody", 3);     DECORATOR::DECOR_REGISTER("MissionType", 3);     DECORATOR::DECOR_REGISTER("MatchId", 3);     DECORATOR::DECOR_REGISTER("TeamId", 3);     DECORATOR::DECOR_REGISTER("Not_Allow_As_Saved_Veh", 3);     DECORATOR::DECOR_REGISTER("Veh_Modded_By_Player", 3);     DECORATOR::DECOR_REGISTER("MPBitset", 3);     DECORATOR::DECOR_REGISTER("MC_EntityID", 3);     DECORATOR::DECOR_REGISTER("MC_ChasePedID", 3);     DECORATOR::DECOR_REGISTER("MC_Team0_VehDeliveredRules", 3);     DECORATOR::DECOR_REGISTER("MC_Team1_VehDeliveredRules", 3);     DECORATOR::DECOR_REGISTER("MC_Team2_VehDeliveredRules", 3);     DECORATOR::DECOR_REGISTER("MC_Team3_VehDeliveredRules", 3);     DECORATOR::DECOR_REGISTER("AttributeDamage", 3);     DECORATOR::DECOR_REGISTER("GangBackup", 3);     DECORATOR::DECOR_REGISTER("CreatedByPegasus", 2);     DECORATOR::DECOR_REGISTER("BeforeCorona_0", 2); }  ----------------------------------------------------------------------- Defines type of property for property name.  1 - float, 2 - bool, 3  5
-- @module native
-- @submodule decorator
-- @see DECOR_REGISTER
-- @usage void DECOR_REGISTER(char* propertyName, int type);
-- @param propertyName char*
-- @param int
-- @return void
function DecorRegister() end

-- Is property of that type.  1  2  3  5
-- @module native
-- @submodule decorator
-- @see DECOR_IS_REGISTERED_AS_TYPE
-- @usage BOOL DECOR_IS_REGISTERED_AS_TYPE(char* propertyName, int type);
-- @param propertyName char*
-- @param int
-- @return BOOL
function DecorIsRegisteredAsType() end

-- Called after all decorator type initializations.
-- @module native
-- @submodule decorator
-- @see DECOR_REGISTER_LOCK
-- @usage void DECOR_REGISTER_LOCK();
-- @param undefined
-- @return void
function DecorRegisterLock() end