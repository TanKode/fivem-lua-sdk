-- Gets the local player ped
-- @module native
-- @submodule player
-- @see GET_PLAYER_PED
-- @usage Ped GET_PLAYER_PED(Player player);
-- @param player Player
-- @return Ped
function GetPlayerPed(player) end

-- Same as GET_PLAYER_PED.
-- @module native
-- @submodule player
-- @see GET_PLAYER_PED_SCRIPT_INDEX
-- @usage Entity GET_PLAYER_PED_SCRIPT_INDEX(Player player);
-- @param player Player
-- @return Entity
function GetPlayerPedScriptIndex(player) end

-- Make sure to request the model first and wait until it has loaded.
-- @module native
-- @submodule player
-- @see SET_PLAYER_MODEL
-- @usage void SET_PLAYER_MODEL(Player player, Hash model);
-- @param player Player
-- @param model Hash
-- @return void
function SetPlayerModel(player, model) end

-- b2 and/or b3 maybe got something to do with keeping values from the last ped. Both of them set to 1 works great. Examples from the decompiled scripts:PLAYER::CHANGE_PLAYER_PED(PLAYER::PLAYER_ID(), l_5C0[4/*14*/], 0, 1);PLAYER::CHANGE_PLAYER_PED(PLAYER::PLAYER_ID(), a_0[a_0._f7/*1*/], a_2, 0);===========================================================The only way I ever got this to work in GTA Online once is by setting both to 0, 0. However, when you switch from your online character to whomever, your character will start walking away 'as if you left the game.' If from there you attempt to call this native once more to switch back to you online ped. You will freeze or if you try changing to another ped. I've tried all posibilities so far.1, 1 (Freeze), 0, 0(Works Once), 1, 0 & 0, 1 (Freeze). Note of course trying to call this on another online player will crash. Anyone have any idea if implementing a blr within the xex itself on a possible check if it would prevent this freezing?===========================================================
-- @module native
-- @submodule player
-- @see CHANGE_PLAYER_PED
-- @usage void CHANGE_PLAYER_PED(Player player, Ped ped, BOOL b2, BOOL b3);
-- @param player Player
-- @param ped Ped
-- @param b2 BOOL
-- @param b3 BOOL
-- @return void
function ChangePlayerPed(player, ped, b2, b3) end

-- Returns RGB color of the player (duh)
-- @module native
-- @submodule player
-- @see GET_PLAYER_RGB_COLOUR
-- @usage void GET_PLAYER_RGB_COLOUR(Player player, int* r, int* g, int* b);
-- @param player Player
-- @param r int*
-- @param g int*
-- @param b int*
-- @return void
function GetPlayerRgbColour(player, r, g, b) end

-- Gets the number of players in the current session.If not multiplayer, always returns 1.
-- @module native
-- @submodule player
-- @see GET_NUMBER_OF_PLAYERS
-- @usage int GET_NUMBER_OF_PLAYERS();
-- @return int
function GetNumberOfPlayers() end

-- Gets the player's team.Does nothing in singleplayer.
-- @module native
-- @submodule player
-- @see GET_PLAYER_TEAM
-- @usage int GET_PLAYER_TEAM(Player player);
-- @param player Player
-- @return int
function GetPlayerTeam(player) end

-- Set player team on deathmatch and last team standing..
-- @module native
-- @submodule player
-- @see SET_PLAYER_TEAM
-- @usage void SET_PLAYER_TEAM(Player player, int team);
-- @param player Player
-- @param team int
-- @return void
function SetPlayerTeam(player, team) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_PLAYER_NAME
-- @usage char* GET_PLAYER_NAME(Player player);
-- @param player Player
-- @return char*
function GetPlayerName(player) end

-- Remnant from GTA IV. Does nothing in GTA V.
-- @module native
-- @submodule player
-- @see GET_WANTED_LEVEL_RADIUS
-- @usage float GET_WANTED_LEVEL_RADIUS(Player player);
-- @param player Player
-- @return float
function GetWantedLevelRadius(player) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_PLAYER_WANTED_CENTRE_POSITION
-- @usage Vector3 GET_PLAYER_WANTED_CENTRE_POSITION(Player player);
-- @param player Player
-- @return Vector3
function GetPlayerWantedCentrePosition(player) end

-- # Predominant call signatures PLAYER::SET_PLAYER_WANTED_CENTRE_POSITION(PLAYER::PLAYER_ID(), ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1));  # Parameter value ranges P0: PLAYER::PLAYER_ID() P1: ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1) P2: Not set by any call
-- @module native
-- @submodule player
-- @see SET_PLAYER_WANTED_CENTRE_POSITION
-- @usage void SET_PLAYER_WANTED_CENTRE_POSITION(Player player, Vector3* position, BOOL p2, BOOL p3);
-- @param player Player
-- @param position Vector3*
-- @param p2 BOOL
-- @param p3 BOOL
-- @return void
function SetPlayerWantedCentrePosition(player, position, p2, p3) end

-- Drft
-- @module native
-- @submodule player
-- @see GET_WANTED_LEVEL_THRESHOLD
-- @usage int GET_WANTED_LEVEL_THRESHOLD(int wantedLevel);
-- @param wantedLevel int
-- @return int
function GetWantedLevelThreshold(wantedLevel) end

-- Call SET_PLAYER_WANTED_LEVEL_NOW for immediate effect  wantedLevel is an integer value representing 0 to 5 stars even though the game supports the 6th wanted level but no police will appear since no definitions are present for it in the game files  disableNoMission-  Disables When Off Mission- appears to always be false
-- @module native
-- @submodule player
-- @see SET_PLAYER_WANTED_LEVEL
-- @usage void SET_PLAYER_WANTED_LEVEL(Player player, int wantedLevel, BOOL disableNoMission);
-- @param player Player
-- @param wantedLevel int
-- @param disableNoMission BOOL
-- @return void
function SetPlayerWantedLevel(player, wantedLevel, disableNoMission) end

-- p2 is always false in R* scripts
-- @module native
-- @submodule player
-- @see SET_PLAYER_WANTED_LEVEL_NO_DROP
-- @usage void SET_PLAYER_WANTED_LEVEL_NO_DROP(Player player, int wantedLevel, BOOL p2);
-- @param player Player
-- @param wantedLevel int
-- @param p2 BOOL
-- @return void
function SetPlayerWantedLevelNoDrop(player, wantedLevel, p2) end

-- Forces any pending wanted level to be applied to the specified player immediately.  Call SET_PLAYER_WANTED_LEVEL with the desired wanted level, followed by SET_PLAYER_WANTED_LEVEL_NOW.  Second parameter is unknown (always false).
-- @module native
-- @submodule player
-- @see SET_PLAYER_WANTED_LEVEL_NOW
-- @usage void SET_PLAYER_WANTED_LEVEL_NOW(Player player, BOOL p1);
-- @param player Player
-- @param p1 BOOL
-- @return void
function SetPlayerWantedLevelNow(player, p1) end

-- @todo
-- @module native
-- @submodule player
-- @see ARE_PLAYER_FLASHING_STARS_ABOUT_TO_DROP
-- @usage BOOL ARE_PLAYER_FLASHING_STARS_ABOUT_TO_DROP(Player player);
-- @param player Player
-- @return BOOL
function ArePlayerFlashingStarsAboutToDrop(player) end

-- @todo
-- @module native
-- @submodule player
-- @see ARE_PLAYER_STARS_GREYED_OUT
-- @usage BOOL ARE_PLAYER_STARS_GREYED_OUT(Player player);
-- @param player Player
-- @return BOOL
function ArePlayerStarsGreyedOut(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_DISPATCH_COPS_FOR_PLAYER
-- @usage void SET_DISPATCH_COPS_FOR_PLAYER(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetDispatchCopsForPlayer(player, toggle) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_PLAYER_WANTED_LEVEL_GREATER
-- @usage BOOL IS_PLAYER_WANTED_LEVEL_GREATER(Player player, int wantedLevel);
-- @param player Player
-- @param wantedLevel int
-- @return BOOL
function IsPlayerWantedLevelGreater(player, wantedLevel) end

-- This executes at the same as speed as PLAYER::SET_PLAYER_WANTED_LEVEL(player, 0, false);  PLAYER::GET_PLAYER_WANTED_LEVEL(player); executes in less than half the time. Which means that it's worth first checking if the wanted level needs to be cleared before clearing. However, this is mostly about good code practice and can important in other situations. The difference in time in this example is negligible.
-- @module native
-- @submodule player
-- @see CLEAR_PLAYER_WANTED_LEVEL
-- @usage void CLEAR_PLAYER_WANTED_LEVEL(Player player);
-- @param player Player
-- @return void
function ClearPlayerWantedLevel(player) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_PLAYER_DEAD
-- @usage BOOL IS_PLAYER_DEAD(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerDead(player) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_PLAYER_PRESSING_HORN
-- @usage BOOL IS_PLAYER_PRESSING_HORN(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerPressingHorn(player) end

-- Flags used in the scripts: 0,4,16,24,32,56,60,64,128,134,256,260,384,512,640,768,896,900,952,1024,1280,2048,2560  Note to people who needs this with camera mods, etc.:  Flags(0, 4, 16, 24, 32, 56, 60, 64, 128, 134, 512, 640, 1024, 2048, 2560) - Disables camera rotation as well. Flags(256, 260, 384, 768, 896, 900, 952, 1280)
-- @module native
-- @submodule player
-- @see SET_PLAYER_CONTROL
-- @usage void SET_PLAYER_CONTROL(Player player, BOOL toggle, int possiblyFlags);
-- @param player Player
-- @param toggle BOOL
-- @param possiblyFlags int
-- @return void
function SetPlayerControl(player, toggle, possiblyFlags) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_PLAYER_WANTED_LEVEL
-- @usage int GET_PLAYER_WANTED_LEVEL(Player player);
-- @param player Player
-- @return int
function GetPlayerWantedLevel(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_MAX_WANTED_LEVEL
-- @usage void SET_MAX_WANTED_LEVEL(int maxWantedLevel);
-- @param maxWantedLevel int
-- @return void
function SetMaxWantedLevel(maxWantedLevel) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_POLICE_RADAR_BLIPS
-- @usage void SET_POLICE_RADAR_BLIPS(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetPoliceRadarBlips(toggle) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_POLICE_IGNORE_PLAYER
-- @usage void SET_POLICE_IGNORE_PLAYER(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPoliceIgnorePlayer(player, toggle) end

-- Checks whether the specified player has a Ped, the Ped is not dead, is not injured and is not arrested.
-- @module native
-- @submodule player
-- @see IS_PLAYER_PLAYING
-- @usage BOOL IS_PLAYER_PLAYING(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerPlaying(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_EVERYONE_IGNORE_PLAYER
-- @usage void SET_EVERYONE_IGNORE_PLAYER(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetEveryoneIgnorePlayer(player, toggle) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_ALL_RANDOM_PEDS_FLEE
-- @usage void SET_ALL_RANDOM_PEDS_FLEE(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetAllRandomPedsFlee(player, toggle) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_ALL_RANDOM_PEDS_FLEE_THIS_FRAME
-- @usage void SET_ALL_RANDOM_PEDS_FLEE_THIS_FRAME(Player player);
-- @param player Player
-- @return void
function SetAllRandomPedsFleeThisFrame(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_IGNORE_LOW_PRIORITY_SHOCKING_EVENTS
-- @usage void SET_IGNORE_LOW_PRIORITY_SHOCKING_EVENTS(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetIgnoreLowPriorityShockingEvents(player, toggle) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_WANTED_LEVEL_MULTIPLIER
-- @usage void SET_WANTED_LEVEL_MULTIPLIER(float multiplier);
-- @param multiplier float
-- @return void
function SetWantedLevelMultiplier(multiplier) end

-- Max value is 1.0
-- @module native
-- @submodule player
-- @see SET_WANTED_LEVEL_DIFFICULTY
-- @usage void SET_WANTED_LEVEL_DIFFICULTY(Player player, float difficulty);
-- @param player Player
-- @param difficulty float
-- @return void
function SetWantedLevelDifficulty(player, difficulty) end

-- @todo
-- @module native
-- @submodule player
-- @see RESET_WANTED_LEVEL_DIFFICULTY
-- @usage void RESET_WANTED_LEVEL_DIFFICULTY(Player player);
-- @param player Player
-- @return void
function ResetWantedLevelDifficulty(player) end

-- @todo
-- @module native
-- @submodule player
-- @see START_FIRING_AMNESTY
-- @usage void START_FIRING_AMNESTY(int duration);
-- @param duration int
-- @return void
function StartFiringAmnesty(duration) end

-- PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(), 37, PLAYER::GET_WANTED_LEVEL_THRESHOLD(1));  From am_armybase.ysc.c4:  PLAYER::REPORT_CRIME(PLAYER::PLAYER_ID(4), 36, PLAYER::GET_WANTED_LEVEL_THRESHOLD(4));  -----  This was taken from the GTAV.exe v1.334. The function is called sub_140592CE8. For a full decompilation of the function, see here: pastebin.com/09qSMsN7   ----- crimeType: 1: Firearms possession 2: Person running a red light ("5-0-5") 3: Reckless driver 4: Speeding vehicle (a "5-10") 5: Traffic violation (a "5-0-5") 6: Motorcycle rider without a helmet 7: Vehicle theft (a "5-0-3") 8: Grand Theft Auto 9: ??? 10: ??? 11: Assault on a civilian (a "2-40") 12: Assault on an officer 13: Assault with a deadly weapon (a "2-45") 14: Officer shot (a "2-45") 15: Pedestrian struck by a vehicle 16: Officer struck by a vehicle 17: Helicopter down (an "AC"?) 18: Civilian on fire (a "2-40") 19: Officer set on fire (a "10-99") 20: Car on fire 21: Air unit down (an "AC"?) 22: An explosion (a "9-96") 23: A stabbing (a "2-45") (also something else I couldn't understand) 24: Officer stabbed (also something else I couldn't understand) 25: Attack on a vehicle ("MDV"?) 26: Damage to property 27: Suspect threatening officer with a firearm 28: Shots fired 29: ??? 30: ??? 31: ??? 32: ??? 33: ??? 34: A "2-45" 35: ??? 36: A "9-25" 37: ??? 38: ??? 39: ??? 40: ??? 41: ??? 42: ??? 43: Possible disturbance 44: Civilian in need of assistance 45: ??? 46: ???
-- @module native
-- @submodule player
-- @see REPORT_CRIME
-- @usage void REPORT_CRIME(Player player, int crimeType, int wantedLvlThresh);
-- @param player Player
-- @param crimeType int
-- @param wantedLvlThresh int
-- @return void
function ReportCrime(player, crimeType, wantedLvlThresh) end

-- @todo
-- @module native
-- @submodule player
-- @see CAN_PLAYER_START_MISSION
-- @usage BOOL CAN_PLAYER_START_MISSION(Player player);
-- @param player Player
-- @return BOOL
function CanPlayerStartMission(player) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_PLAYER_READY_FOR_CUTSCENE
-- @usage BOOL IS_PLAYER_READY_FOR_CUTSCENE(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerReadyForCutscene(player) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_PLAYER_TARGETTING_ENTITY
-- @usage BOOL IS_PLAYER_TARGETTING_ENTITY(Player player, Entity entity);
-- @param player Player
-- @param entity Entity
-- @return BOOL
function IsPlayerTargettingEntity(player, entity) end

-- Assigns the handle of locked-on melee target to *entity that you pass it. Returns false if no entity found.
-- @module native
-- @submodule player
-- @see GET_PLAYER_TARGET_ENTITY
-- @usage BOOL GET_PLAYER_TARGET_ENTITY(Player player, Entity* entity);
-- @param player Player
-- @param entity Entity*
-- @return BOOL
function GetPlayerTargetEntity(player, entity) end

-- Gets a value indicating whether the specified player is currently aiming freely.
-- @module native
-- @submodule player
-- @see IS_PLAYER_FREE_AIMING
-- @usage BOOL IS_PLAYER_FREE_AIMING(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerFreeAiming(player) end

-- Gets a value indicating whether the specified player is currently aiming freely at the specified entity.
-- @module native
-- @submodule player
-- @see IS_PLAYER_FREE_AIMING_AT_ENTITY
-- @usage BOOL IS_PLAYER_FREE_AIMING_AT_ENTITY(Player player, Entity entity);
-- @param player Player
-- @param entity Entity
-- @return BOOL
function IsPlayerFreeAimingAtEntity(player, entity) end

-- Returns TRUE if it found an entity in your crosshair within range of your weapon. Assigns the handle of the target to the *entity that you pass it. Returns false if no entity found.
-- @module native
-- @submodule player
-- @see GET_ENTITY_PLAYER_IS_FREE_AIMING_AT
-- @usage BOOL GET_ENTITY_PLAYER_IS_FREE_AIMING_AT(Player player, Entity* entity);
-- @param player Player
-- @param entity Entity*
-- @return BOOL
function GetEntityPlayerIsFreeAimingAt(player, entity) end

-- Affects the range of auto aim target.
-- @module native
-- @submodule player
-- @see SET_PLAYER_LOCKON_RANGE_OVERRIDE
-- @usage void SET_PLAYER_LOCKON_RANGE_OVERRIDE(Player player, float range);
-- @param player Player
-- @param range float
-- @return void
function SetPlayerLockonRangeOverride(player, range) end

-- Set whether this player should be able to do drive-bys.  "A drive-by is when a ped is aiming/shooting from vehicle. This includes middle finger taunts. By setting this value to false I confirm the player is unable to do all that. Tested on tick."
-- @module native
-- @submodule player
-- @see SET_PLAYER_CAN_DO_DRIVE_BY
-- @usage void SET_PLAYER_CAN_DO_DRIVE_BY(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerCanDoDriveBy(player, toggle) end

-- Sets whether this player can be hassled by gangs.
-- @module native
-- @submodule player
-- @see SET_PLAYER_CAN_BE_HASSLED_BY_GANGS
-- @usage void SET_PLAYER_CAN_BE_HASSLED_BY_GANGS(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerCanBeHassledByGangs(player, toggle) end

-- Sets whether this player can take cover.
-- @module native
-- @submodule player
-- @see SET_PLAYER_CAN_USE_COVER
-- @usage Any SET_PLAYER_CAN_USE_COVER(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return Any
function SetPlayerCanUseCover(player, toggle) end

-- Gets the maximum wanted level the player can get. Ranges from 0 to 5.
-- @module native
-- @submodule player
-- @see GET_MAX_WANTED_LEVEL
-- @usage int GET_MAX_WANTED_LEVEL();
-- @return int
function GetMaxWantedLevel() end

-- @todo
-- @module native
-- @submodule player
-- @see IS_PLAYER_TARGETTING_ANYTHING
-- @usage BOOL IS_PLAYER_TARGETTING_ANYTHING(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerTargettingAnything(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_SPRINT
-- @usage void SET_PLAYER_SPRINT(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerSprint(player, toggle) end

-- @todo
-- @module native
-- @submodule player
-- @see RESET_PLAYER_STAMINA
-- @usage void RESET_PLAYER_STAMINA(Player player);
-- @param player Player
-- @return void
function ResetPlayerStamina(player) end

-- @todo
-- @module native
-- @submodule player
-- @see RESTORE_PLAYER_STAMINA
-- @usage void RESTORE_PLAYER_STAMINA(Player player, float p1);
-- @param player Player
-- @param p1 float
-- @return void
function RestorePlayerStamina(player, p1) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_PLAYER_SPRINT_STAMINA_REMAINING
-- @usage float GET_PLAYER_SPRINT_STAMINA_REMAINING(Player player);
-- @param player Player
-- @return float
function GetPlayerSprintStaminaRemaining(player) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_PLAYER_SPRINT_TIME_REMAINING
-- @usage float GET_PLAYER_SPRINT_TIME_REMAINING(Player player);
-- @param player Player
-- @return float
function GetPlayerSprintTimeRemaining(player) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_PLAYER_UNDERWATER_TIME_REMAINING
-- @usage float GET_PLAYER_UNDERWATER_TIME_REMAINING(Player player);
-- @param player Player
-- @return float
function GetPlayerUnderwaterTimeRemaining(player) end

-- Returns the group ID the player is member of.
-- @module native
-- @submodule player
-- @see GET_PLAYER_GROUP
-- @usage int GET_PLAYER_GROUP(Player player);
-- @param player Player
-- @return int
function GetPlayerGroup(player) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_PLAYER_MAX_ARMOUR
-- @usage int GET_PLAYER_MAX_ARMOUR(Player player);
-- @param player Player
-- @return int
function GetPlayerMaxArmour(player) end

-- Can the player control himself, used to disable controls for player for things like a cutscene.  ---  You can't disable controls with this, use SET_PLAYER_CONTROL(...) for this.
-- @module native
-- @submodule player
-- @see IS_PLAYER_CONTROL_ON
-- @usage BOOL IS_PLAYER_CONTROL_ON(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerControlOn(player) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_PLAYER_SCRIPT_CONTROL_ON
-- @usage BOOL IS_PLAYER_SCRIPT_CONTROL_ON(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerScriptControlOn(player) end

-- Returns TRUE if the player ('s ped) is climbing at the moment.
-- @module native
-- @submodule player
-- @see IS_PLAYER_CLIMBING
-- @usage BOOL IS_PLAYER_CLIMBING(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerClimbing(player) end

-- Return true while player is being arrested / busted.  If atArresting is set to 1, this function will return 1 when player is being arrested (while player is putting his hand up, but still have control)  If atArresting is set to 0, this function will return 1 only when the busted screen is shown.
-- @module native
-- @submodule player
-- @see IS_PLAYER_BEING_ARRESTED
-- @usage BOOL IS_PLAYER_BEING_ARRESTED(Player player, BOOL atArresting);
-- @param player Player
-- @param atArresting BOOL
-- @return BOOL
function IsPlayerBeingArrested(player, atArresting) end

-- @todo
-- @module native
-- @submodule player
-- @see RESET_PLAYER_ARREST_STATE
-- @usage void RESET_PLAYER_ARREST_STATE(Player player);
-- @param player Player
-- @return void
function ResetPlayerArrestState(player) end

-- Alternative: GET_VEHICLE_PED_IS_IN(PLAYER_PED_ID(), 1);
-- @module native
-- @submodule player
-- @see GET_PLAYERS_LAST_VEHICLE
-- @usage Vehicle GET_PLAYERS_LAST_VEHICLE();
-- @return Vehicle
function GetPlayersLastVehicle() end

-- Returns the same as PLAYER_ID and NETWORK_PLAYER_ID_TO_INT
-- @module native
-- @submodule player
-- @see GET_PLAYER_INDEX
-- @usage Player GET_PLAYER_INDEX();
-- @return Player
function GetPlayerIndex() end

-- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not).
-- @module native
-- @submodule player
-- @see INT_TO_PLAYERINDEX
-- @usage Player INT_TO_PLAYERINDEX(int value);
-- @param value int
-- @return Player
function IntToPlayerindex(value) end

-- Simply returns whatever is passed to it (Regardless of whether the handle is valid or not). -------------------------------------------------------- if (NETWORK::NETWORK_IS_PARTICIPANT_ACTIVE(PLAYER::INT_TO_PARTICIPANTINDEX(i)))
-- @module native
-- @submodule player
-- @see INT_TO_PARTICIPANTINDEX
-- @usage int INT_TO_PARTICIPANTINDEX(int value);
-- @param value int
-- @return int
function IntToParticipantindex(value) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_TIME_SINCE_PLAYER_HIT_VEHICLE
-- @usage int GET_TIME_SINCE_PLAYER_HIT_VEHICLE(Player player);
-- @param player Player
-- @return int
function GetTimeSincePlayerHitVehicle(player) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_TIME_SINCE_PLAYER_HIT_PED
-- @usage int GET_TIME_SINCE_PLAYER_HIT_PED(Player player);
-- @param player Player
-- @return int
function GetTimeSincePlayerHitPed(player) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_TIME_SINCE_PLAYER_DROVE_ON_PAVEMENT
-- @usage int GET_TIME_SINCE_PLAYER_DROVE_ON_PAVEMENT(Player player);
-- @param player Player
-- @return int
function GetTimeSincePlayerDroveOnPavement(player) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_TIME_SINCE_PLAYER_DROVE_AGAINST_TRAFFIC
-- @usage int GET_TIME_SINCE_PLAYER_DROVE_AGAINST_TRAFFIC(Player player);
-- @param player Player
-- @return int
function GetTimeSincePlayerDroveAgainstTraffic(player) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_PLAYER_FREE_FOR_AMBIENT_TASK
-- @usage BOOL IS_PLAYER_FREE_FOR_AMBIENT_TASK(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerFreeForAmbientTask(player) end

-- This returns YOUR 'identity' as a Player type.  Always returns 0 in story mode.
-- @module native
-- @submodule player
-- @see PLAYER_ID
-- @usage Player PLAYER_ID();
-- @return Player
function PlayerId() end

-- Returns current player ped
-- @module native
-- @submodule player
-- @see PLAYER_PED_ID
-- @usage Ped PLAYER_PED_ID();
-- @return Ped
function PlayerPedId() end

-- Does exactly the same thing as PLAYER_ID()
-- @module native
-- @submodule player
-- @see NETWORK_PLAYER_ID_TO_INT
-- @usage int NETWORK_PLAYER_ID_TO_INT();
-- @return int
function NetworkPlayerIdToInt() end

-- @todo
-- @module native
-- @submodule player
-- @see HAS_FORCE_CLEANUP_OCCURRED
-- @usage BOOL HAS_FORCE_CLEANUP_OCCURRED(int cleanupFlags);
-- @param cleanupFlags int
-- @return BOOL
function HasForceCleanupOccurred(cleanupFlags) end

-- used with 1,2,8,64,128 in the scripts
-- @module native
-- @submodule player
-- @see FORCE_CLEANUP
-- @usage void FORCE_CLEANUP(int cleanupFlags);
-- @param cleanupFlags int
-- @return void
function ForceCleanup(cleanupFlags) end

-- PLAYER::FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME("pb_prostitute", 1); // Found in decompilation
-- @module native
-- @submodule player
-- @see FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME
-- @usage void FORCE_CLEANUP_FOR_ALL_THREADS_WITH_THIS_NAME(char* name, int cleanupFlags);
-- @param name char*
-- @param cleanupFlags int
-- @return void
function ForceCleanupForAllThreadsWithThisName(name, cleanupFlags) end

-- @todo
-- @module native
-- @submodule player
-- @see FORCE_CLEANUP_FOR_THREAD_WITH_THIS_ID
-- @usage void FORCE_CLEANUP_FOR_THREAD_WITH_THIS_ID(int id, int cleanupFlags);
-- @param id int
-- @param cleanupFlags int
-- @return void
function ForceCleanupForThreadWithThisId(id, cleanupFlags) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_CAUSE_OF_MOST_RECENT_FORCE_CLEANUP
-- @usage int GET_CAUSE_OF_MOST_RECENT_FORCE_CLEANUP();
-- @return int
function GetCauseOfMostRecentForceCleanup() end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_MAY_ONLY_ENTER_THIS_VEHICLE
-- @usage void SET_PLAYER_MAY_ONLY_ENTER_THIS_VEHICLE(Player player, Vehicle vehicle);
-- @param player Player
-- @param vehicle Vehicle
-- @return void
function SetPlayerMayOnlyEnterThisVehicle(player, vehicle) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_MAY_NOT_ENTER_ANY_VEHICLE
-- @usage void SET_PLAYER_MAY_NOT_ENTER_ANY_VEHICLE(Player player);
-- @param player Player
-- @return void
function SetPlayerMayNotEnterAnyVehicle(player) end

-- Achievements from 0-57   more achievements came with update 1.29 (freemode events update), I'd say that they now go to 60, but I'll need to check.
-- @module native
-- @submodule player
-- @see GIVE_ACHIEVEMENT_TO_PLAYER
-- @usage BOOL GIVE_ACHIEVEMENT_TO_PLAYER(int achievement);
-- @param achievement int
-- @return BOOL
function GiveAchievementToPlayer(achievement) end

-- @todo
-- @module native
-- @submodule player
-- @see HAS_ACHIEVEMENT_BEEN_PASSED
-- @usage BOOL HAS_ACHIEVEMENT_BEEN_PASSED(int achievement);
-- @param achievement int
-- @return BOOL
function HasAchievementBeenPassed(achievement) end

-- Returns TRUE if the game is in online mode and FALSE if in offline mode.  This is an alias for NETWORK_IS_SIGNED_ONLINE.
-- @module native
-- @submodule player
-- @see IS_PLAYER_ONLINE
-- @usage BOOL IS_PLAYER_ONLINE();
-- @return BOOL
function IsPlayerOnline() end

-- this function is hard-coded to always return 0.
-- @module native
-- @submodule player
-- @see IS_PLAYER_LOGGING_IN_NP
-- @usage BOOL IS_PLAYER_LOGGING_IN_NP();
-- @return BOOL
function IsPlayerLoggingInNp() end

-- Purpose of the BOOL currently unknown. Both, true and false, work
-- @module native
-- @submodule player
-- @see DISPLAY_SYSTEM_SIGNIN_UI
-- @usage void DISPLAY_SYSTEM_SIGNIN_UI(BOOL unk);
-- @param unk BOOL
-- @return void
function DisplaySystemSigninUi(unk) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_SYSTEM_UI_BEING_DISPLAYED
-- @usage BOOL IS_SYSTEM_UI_BEING_DISPLAYED();
-- @return BOOL
function IsSystemUiBeingDisplayed() end

-- Simply sets you as invincible (Health will not deplete).  Use 0x733A643B5B0C53C1 instead if you want Ragdoll enabled, which is equal to: *(DWORD *)(playerPedAddress + 0x188) |= (1 << 9);
-- @module native
-- @submodule player
-- @see SET_PLAYER_INVINCIBLE
-- @usage void SET_PLAYER_INVINCIBLE(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerInvincible(player, toggle) end

-- Returns the Player's Invincible status.  This function will always return false if 0x733A643B5B0C53C1 is used to set the invincibility status. To always get the correct result, use this:  	bool IsPlayerInvincible(Player player) 	{ 		auto addr = getScriptHandleBaseAddress(GET_PLAYER_PED(player));	  		if (addr) 		{ 			DWORD flag = *(DWORD *)(addr + 0x188); 			return ((flag & (1 << 8)) != 0) || ((flag & (1 << 9)) != 0); 		}  		return false; 	}
-- @module native
-- @submodule player
-- @see GET_PLAYER_INVINCIBLE
-- @usage BOOL GET_PLAYER_INVINCIBLE(Player player);
-- @param player Player
-- @return BOOL
function GetPlayerInvincible(player) end

-- @todo
-- @module native
-- @submodule player
-- @see REMOVE_PLAYER_HELMET
-- @usage Any REMOVE_PLAYER_HELMET(Player player, BOOL p2);
-- @param player Player
-- @param p2 BOOL
-- @return Any
function RemovePlayerHelmet(player, p2) end

-- @todo
-- @module native
-- @submodule player
-- @see GIVE_PLAYER_RAGDOLL_CONTROL
-- @usage void GIVE_PLAYER_RAGDOLL_CONTROL(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function GivePlayerRagdollControl(player, toggle) end

-- Example from fm_mission_controler.ysc.c4:  PLAYER::SET_PLAYER_LOCKON(PLAYER::PLAYER_ID(), 1);  All other decompiled scripts using this seem to be using the player id as the first parameter, so I feel the need to confirm it as so.  No need to confirm it says PLAYER_ID() so it uses PLAYER_ID() lol.
-- @module native
-- @submodule player
-- @see SET_PLAYER_LOCKON
-- @usage void SET_PLAYER_LOCKON(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerLockon(player, toggle) end

-- Sets your targeting mode. 0 = Traditional GTA 1 = Assisted Aiming 2 = Free Aim  Even tho gtaforums nor Alexander B supports this, if you're online in freemode already it's nice to have this since retail or otherwise you have to go to SP to change it.
-- @module native
-- @submodule player
-- @see SET_PLAYER_TARGETING_MODE
-- @usage void SET_PLAYER_TARGETING_MODE(int targetMode);
-- @param targetMode int
-- @return void
function SetPlayerTargetingMode(targetMode) end

-- @todo
-- @module native
-- @submodule player
-- @see CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_PED
-- @usage void CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_PED(Player player);
-- @param player Player
-- @return void
function ClearPlayerHasDamagedAtLeastOnePed(player) end

-- @todo
-- @module native
-- @submodule player
-- @see HAS_PLAYER_DAMAGED_AT_LEAST_ONE_PED
-- @usage BOOL HAS_PLAYER_DAMAGED_AT_LEAST_ONE_PED(Player player);
-- @param player Player
-- @return BOOL
function HasPlayerDamagedAtLeastOnePed(player) end

-- @todo
-- @module native
-- @submodule player
-- @see CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED
-- @usage void CLEAR_PLAYER_HAS_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED(Player player);
-- @param player Player
-- @return void
function ClearPlayerHasDamagedAtLeastOneNonAnimalPed(player) end

-- @todo
-- @module native
-- @submodule player
-- @see HAS_PLAYER_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED
-- @usage BOOL HAS_PLAYER_DAMAGED_AT_LEAST_ONE_NON_ANIMAL_PED(Player player);
-- @param player Player
-- @return BOOL
function HasPlayerDamagedAtLeastOneNonAnimalPed(player) end

-- This can be between 1.0f - 14.9f   You can change the max in IDA from 15.0. I say 15.0 as the function blrs if what you input is greater than or equal to 15.0 hence why it's 14.9 max default.
-- @module native
-- @submodule player
-- @see SET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE
-- @usage void SET_AIR_DRAG_MULTIPLIER_FOR_PLAYERS_VEHICLE(Player player, float multiplier);
-- @param player Player
-- @param multiplier float
-- @return void
function SetAirDragMultiplierForPlayersVehicle(player, multiplier) end

-- Swim speed multiplier. Multiplier goes up to 1.49  Just call it one time, it is not required to be called once every tick. - Note copied from below native.  Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and RUN_SPRINT below. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.
-- @module native
-- @submodule player
-- @see SET_SWIM_MULTIPLIER_FOR_PLAYER
-- @usage void SET_SWIM_MULTIPLIER_FOR_PLAYER(Player player, float multiplier);
-- @param player Player
-- @param multiplier float
-- @return void
function SetSwimMultiplierForPlayer(player, multiplier) end

-- Multiplier goes up to 1.49 any value above will be completely overruled by the game and the multiplier will not take effect, this can be edited in memory however.  Just call it one time, it is not required to be called once every tick.  Note: At least the IDA method if you change the max float multiplier from 1.5 it will change it for both this and SWIM above. I say 1.5 as the function blrs if what you input is greater than or equal to 1.5 hence why it's 1.49 max default.
-- @module native
-- @submodule player
-- @see SET_RUN_SPRINT_MULTIPLIER_FOR_PLAYER
-- @usage void SET_RUN_SPRINT_MULTIPLIER_FOR_PLAYER(Player player, float multiplier);
-- @param player Player
-- @param multiplier float
-- @return void
function SetRunSprintMultiplierForPlayer(player, multiplier) end

-- Returns the time since the character was arrested in (ms) milliseconds.  example  var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_ARREST();  UI.DrawSubtitle(time.ToString());  if player has not been arrested, the int returned will be -1.
-- @module native
-- @submodule player
-- @see GET_TIME_SINCE_LAST_ARREST
-- @usage int GET_TIME_SINCE_LAST_ARREST();
-- @return int
function GetTimeSinceLastArrest() end

-- Returns the time since the character died in (ms) milliseconds.  example  var time = Function.call<int>(Hash.GET_TIME_SINCE_LAST_DEATH();  UI.DrawSubtitle(time.ToString());  if player has not died, the int returned will be -1.
-- @module native
-- @submodule player
-- @see GET_TIME_SINCE_LAST_DEATH
-- @usage int GET_TIME_SINCE_LAST_DEATH();
-- @return int
function GetTimeSinceLastDeath() end

-- @todo
-- @module native
-- @submodule player
-- @see ASSISTED_MOVEMENT_CLOSE_ROUTE
-- @usage void ASSISTED_MOVEMENT_CLOSE_ROUTE();
-- @return void
function AssistedMovementCloseRoute() end

-- @todo
-- @module native
-- @submodule player
-- @see ASSISTED_MOVEMENT_FLUSH_ROUTE
-- @usage void ASSISTED_MOVEMENT_FLUSH_ROUTE();
-- @return void
function AssistedMovementFlushRoute() end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_FORCED_AIM
-- @usage void SET_PLAYER_FORCED_AIM(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerForcedAim(player, toggle) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_FORCED_ZOOM
-- @usage void SET_PLAYER_FORCED_ZOOM(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerForcedZoom(player, toggle) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_FORCE_SKIP_AIM_INTRO
-- @usage void SET_PLAYER_FORCE_SKIP_AIM_INTRO(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerForceSkipAimIntro(player, toggle) end

-- Inhibits the player from using any method of combat including melee and firearms.  NOTE: Only disables the firing for one frame
-- @module native
-- @submodule player
-- @see DISABLE_PLAYER_FIRING
-- @usage void DISABLE_PLAYER_FIRING(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function DisablePlayerFiring(player, toggle) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_DISABLE_AMBIENT_MELEE_MOVE
-- @usage void SET_DISABLE_AMBIENT_MELEE_MOVE(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetDisableAmbientMeleeMove(player, toggle) end

-- Default is 100. Use player id and not ped id. For instance: PLAYER::SET_PLAYER_MAX_ARMOUR(PLAYER::PLAYER_ID(), 100); // main_persistent.ct4
-- @module native
-- @submodule player
-- @see SET_PLAYER_MAX_ARMOUR
-- @usage void SET_PLAYER_MAX_ARMOUR(Player player, int value);
-- @param player Player
-- @param value int
-- @return void
function SetPlayerMaxArmour(player, value) end

-- @todo
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_DEACTIVATE
-- @usage void SPECIAL_ABILITY_DEACTIVATE(Player player);
-- @param player Player
-- @return void
function SpecialAbilityDeactivate(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_DEACTIVATE_FAST
-- @usage void SPECIAL_ABILITY_DEACTIVATE_FAST(Player player);
-- @param player Player
-- @return void
function SpecialAbilityDeactivateFast(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_RESET
-- @usage void SPECIAL_ABILITY_RESET(Player player);
-- @param player Player
-- @return void
function SpecialAbilityReset(player) end

-- Every occurrence of p1 & p2 were both true.
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_CHARGE_SMALL
-- @usage void SPECIAL_ABILITY_CHARGE_SMALL(Player player, BOOL p1, BOOL p2);
-- @param player Player
-- @param p1 BOOL
-- @param p2 BOOL
-- @return void
function SpecialAbilityChargeSmall(player, p1, p2) end

-- Only 1 match. Both p1 & p2 were true.
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_CHARGE_MEDIUM
-- @usage void SPECIAL_ABILITY_CHARGE_MEDIUM(Player player, BOOL p1, BOOL p2);
-- @param player Player
-- @param p1 BOOL
-- @param p2 BOOL
-- @return void
function SpecialAbilityChargeMedium(player, p1, p2) end

-- 2 matches. p1 was always true.
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_CHARGE_LARGE
-- @usage void SPECIAL_ABILITY_CHARGE_LARGE(Player player, BOOL p1, BOOL p2);
-- @param player Player
-- @param p1 BOOL
-- @param p2 BOOL
-- @return void
function SpecialAbilityChargeLarge(player, p1, p2) end

-- p1 appears to always be 1 (only comes up twice)
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_CHARGE_CONTINUOUS
-- @usage void SPECIAL_ABILITY_CHARGE_CONTINUOUS(Player player, Ped p2);
-- @param player Player
-- @param p2 Ped
-- @return void
function SpecialAbilityChargeContinuous(player, p2) end

-- p1 appears as 5, 10, 15, 25, or 30. p2 is always true.
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_CHARGE_ABSOLUTE
-- @usage void SPECIAL_ABILITY_CHARGE_ABSOLUTE(Player player, int p1, BOOL p2);
-- @param player Player
-- @param p1 int
-- @param p2 BOOL
-- @return void
function SpecialAbilityChargeAbsolute(player, p1, p2) end

-- normalizedValue is from 0.0 - 1.0 p2 is always 1
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_CHARGE_NORMALIZED
-- @usage void SPECIAL_ABILITY_CHARGE_NORMALIZED(Player player, float normalizedValue, BOOL p2);
-- @param player Player
-- @param normalizedValue float
-- @param p2 BOOL
-- @return void
function SpecialAbilityChargeNormalized(player, normalizedValue, p2) end

-- Also known as _RECHARGE_SPECIAL_ABILITY
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_FILL_METER
-- @usage void SPECIAL_ABILITY_FILL_METER(Player player, BOOL p1);
-- @param player Player
-- @param p1 BOOL
-- @return void
function SpecialAbilityFillMeter(player, p1) end

-- p1 was always true.
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_DEPLETE_METER
-- @usage void SPECIAL_ABILITY_DEPLETE_METER(Player player, BOOL p1);
-- @param player Player
-- @param p1 BOOL
-- @return void
function SpecialAbilityDepleteMeter(player, p1) end

-- @todo
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_LOCK
-- @usage void SPECIAL_ABILITY_LOCK(Hash playerModel);
-- @param playerModel Hash
-- @return void
function SpecialAbilityLock(playerModel) end

-- @todo
-- @module native
-- @submodule player
-- @see SPECIAL_ABILITY_UNLOCK
-- @usage void SPECIAL_ABILITY_UNLOCK(Hash playerModel);
-- @param playerModel Hash
-- @return void
function SpecialAbilityUnlock(playerModel) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_SPECIAL_ABILITY_UNLOCKED
-- @usage BOOL IS_SPECIAL_ABILITY_UNLOCKED(Hash playerModel);
-- @param playerModel Hash
-- @return BOOL
function IsSpecialAbilityUnlocked(playerModel) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_SPECIAL_ABILITY_ACTIVE
-- @usage BOOL IS_SPECIAL_ABILITY_ACTIVE(Player player);
-- @param player Player
-- @return BOOL
function IsSpecialAbilityActive(player) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_SPECIAL_ABILITY_METER_FULL
-- @usage BOOL IS_SPECIAL_ABILITY_METER_FULL(Player player);
-- @param player Player
-- @return BOOL
function IsSpecialAbilityMeterFull(player) end

-- @todo
-- @module native
-- @submodule player
-- @see ENABLE_SPECIAL_ABILITY
-- @usage void ENABLE_SPECIAL_ABILITY(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function EnableSpecialAbility(player, toggle) end

-- @todo
-- @module native
-- @submodule player
-- @see IS_SPECIAL_ABILITY_ENABLED
-- @usage BOOL IS_SPECIAL_ABILITY_ENABLED(Player player);
-- @param player Player
-- @return BOOL
function IsSpecialAbilityEnabled(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_SPECIAL_ABILITY_MULTIPLIER
-- @usage void SET_SPECIAL_ABILITY_MULTIPLIER(float multiplier);
-- @param multiplier float
-- @return void
function SetSpecialAbilityMultiplier(multiplier) end

-- @todo
-- @module native
-- @submodule player
-- @see START_PLAYER_TELEPORT
-- @usage void START_PLAYER_TELEPORT(Player player, float x, float y, float z, float heading, BOOL p5, BOOL p6, BOOL p7);
-- @param player Player
-- @param x float
-- @param y float
-- @param z float
-- @param heading float
-- @param p5 BOOL
-- @param p6 BOOL
-- @param p7 BOOL
-- @return void
function StartPlayerTeleport(player, x, y, z, heading, p5, p6, p7) end

-- Disables the player's teleportation
-- @module native
-- @submodule player
-- @see STOP_PLAYER_TELEPORT
-- @usage void STOP_PLAYER_TELEPORT();
-- @return void
function StopPlayerTeleport() end

-- @todo
-- @module native
-- @submodule player
-- @see IS_PLAYER_TELEPORT_ACTIVE
-- @usage BOOL IS_PLAYER_TELEPORT_ACTIVE();
-- @return BOOL
function IsPlayerTeleportActive() end

-- @todo
-- @module native
-- @submodule player
-- @see GET_PLAYER_CURRENT_STEALTH_NOISE
-- @usage float GET_PLAYER_CURRENT_STEALTH_NOISE(Player player);
-- @param player Player
-- @return float
function GetPlayerCurrentStealthNoise(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER
-- @usage void SET_PLAYER_HEALTH_RECHARGE_MULTIPLIER(Player player, float regenRate);
-- @param player Player
-- @param regenRate float
-- @return void
function SetPlayerHealthRechargeMultiplier(player, regenRate) end

-- This modifies the damage value of your weapon. Whether it is a multiplier or base damage is unknown.   Based on tests, it is unlikely to be a multiplier.
-- @module native
-- @submodule player
-- @see SET_PLAYER_WEAPON_DAMAGE_MODIFIER
-- @usage void SET_PLAYER_WEAPON_DAMAGE_MODIFIER(Player player, float damageAmount);
-- @param player Player
-- @param damageAmount float
-- @return void
function SetPlayerWeaponDamageModifier(player, damageAmount) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_WEAPON_DEFENSE_MODIFIER
-- @usage void SET_PLAYER_WEAPON_DEFENSE_MODIFIER(Player player, float modifier);
-- @param player Player
-- @param modifier float
-- @return void
function SetPlayerWeaponDefenseModifier(player, modifier) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER
-- @usage void SET_PLAYER_MELEE_WEAPON_DAMAGE_MODIFIER(Player player, float modifier);
-- @param player Player
-- @param modifier float
-- @return void
function SetPlayerMeleeWeaponDamageModifier(player, modifier) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER
-- @usage void SET_PLAYER_MELEE_WEAPON_DEFENSE_MODIFIER(Player player, float modifier);
-- @param player Player
-- @param modifier float
-- @return void
function SetPlayerMeleeWeaponDefenseModifier(player, modifier) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_VEHICLE_DAMAGE_MODIFIER
-- @usage void SET_PLAYER_VEHICLE_DAMAGE_MODIFIER(Player player, float damageAmount);
-- @param player Player
-- @param damageAmount float
-- @return void
function SetPlayerVehicleDamageModifier(player, damageAmount) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_VEHICLE_DEFENSE_MODIFIER
-- @usage void SET_PLAYER_VEHICLE_DEFENSE_MODIFIER(Player player, float modifier);
-- @param player Player
-- @param modifier float
-- @return void
function SetPlayerVehicleDefenseModifier(player, modifier) end

-- Tints: 	None = -1, 	Rainbow = 0, 	Red = 1, 	SeasideStripes = 2, 	WidowMaker = 3, 	Patriot = 4, 	Blue = 5, 	Black = 6, 	Hornet = 7, 	AirFocce = 8, 	Desert = 9, 	Shadow = 10, 	HighAltitude = 11, 	Airbone = 12, 	Sunrise = 13,
-- @module native
-- @submodule player
-- @see SET_PLAYER_PARACHUTE_TINT_INDEX
-- @usage void SET_PLAYER_PARACHUTE_TINT_INDEX(Player player, int tintIndex);
-- @param player Player
-- @param tintIndex int
-- @return void
function SetPlayerParachuteTintIndex(player, tintIndex) end

-- Tints: 	None = -1, 	Rainbow = 0, 	Red = 1, 	SeasideStripes = 2, 	WidowMaker = 3, 	Patriot = 4, 	Blue = 5, 	Black = 6, 	Hornet = 7, 	AirFocce = 8, 	Desert = 9, 	Shadow = 10, 	HighAltitude = 11, 	Airbone = 12, 	Sunrise = 13,
-- @module native
-- @submodule player
-- @see GET_PLAYER_PARACHUTE_TINT_INDEX
-- @usage void GET_PLAYER_PARACHUTE_TINT_INDEX(Player player, int* tintIndex);
-- @param player Player
-- @param tintIndex int*
-- @return void
function GetPlayerParachuteTintIndex(player, tintIndex) end

-- Tints: 	None = -1, 	Rainbow = 0, 	Red = 1, 	SeasideStripes = 2, 	WidowMaker = 3, 	Patriot = 4, 	Blue = 5, 	Black = 6, 	Hornet = 7, 	AirFocce = 8, 	Desert = 9, 	Shadow = 10, 	HighAltitude = 11, 	Airbone = 12, 	Sunrise = 13,
-- @module native
-- @submodule player
-- @see SET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX
-- @usage void SET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX(Player player, int index);
-- @param player Player
-- @param index int
-- @return void
function SetPlayerReserveParachuteTintIndex(player, index) end

-- Tints: 	None = -1, 	Rainbow = 0, 	Red = 1, 	SeasideStripes = 2, 	WidowMaker = 3, 	Patriot = 4, 	Blue = 5, 	Black = 6, 	Hornet = 7, 	AirFocce = 8, 	Desert = 9, 	Shadow = 10, 	HighAltitude = 11, 	Airbone = 12, 	Sunrise = 13,
-- @module native
-- @submodule player
-- @see GET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX
-- @usage void GET_PLAYER_RESERVE_PARACHUTE_TINT_INDEX(Player player, int* index);
-- @param player Player
-- @param index int*
-- @return void
function GetPlayerReserveParachuteTintIndex(player, index) end

-- tints 0 0  1  2  3  4
-- @module native
-- @submodule player
-- @see SET_PLAYER_PARACHUTE_PACK_TINT_INDEX
-- @usage void SET_PLAYER_PARACHUTE_PACK_TINT_INDEX(Player player, int tintIndex);
-- @param player Player
-- @param tintIndex int
-- @return void
function SetPlayerParachutePackTintIndex(player, tintIndex) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_PLAYER_PARACHUTE_PACK_TINT_INDEX
-- @usage void GET_PLAYER_PARACHUTE_PACK_TINT_INDEX(Player player, int* tintIndex);
-- @param player Player
-- @param tintIndex int*
-- @return void
function GetPlayerParachutePackTintIndex(player, tintIndex) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_HAS_RESERVE_PARACHUTE
-- @usage void SET_PLAYER_HAS_RESERVE_PARACHUTE(Player player);
-- @param player Player
-- @return void
function SetPlayerHasReserveParachute(player) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_PLAYER_HAS_RESERVE_PARACHUTE
-- @usage BOOL GET_PLAYER_HAS_RESERVE_PARACHUTE(Player player);
-- @param player Player
-- @return BOOL
function GetPlayerHasReserveParachute(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_CAN_LEAVE_PARACHUTE_SMOKE_TRAIL
-- @usage void SET_PLAYER_CAN_LEAVE_PARACHUTE_SMOKE_TRAIL(Player player, BOOL enabled);
-- @param player Player
-- @param enabled BOOL
-- @return void
function SetPlayerCanLeaveParachuteSmokeTrail(player, enabled) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR
-- @usage void SET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR(Player player, int r, int g, int b);
-- @param player Player
-- @param r int
-- @param g int
-- @param b int
-- @return void
function SetPlayerParachuteSmokeTrailColor(player, r, g, b) end

-- @todo
-- @module native
-- @submodule player
-- @see GET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR
-- @usage void GET_PLAYER_PARACHUTE_SMOKE_TRAIL_COLOR(Player player, int* r, int* g, int* b);
-- @param player Player
-- @param r int*
-- @param g int*
-- @param b int*
-- @return void
function GetPlayerParachuteSmokeTrailColor(player, r, g, b) end

-- example:  flags: 0-6  PLAYER::SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS(PLAYER::PLAYER_ID(), 6);  wouldnt the flag be the seatIndex?
-- @module native
-- @submodule player
-- @see SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS
-- @usage void SET_PLAYER_RESET_FLAG_PREFER_REAR_SEATS(Player player, int flags);
-- @param player Player
-- @param flags int
-- @return void
function SetPlayerResetFlagPreferRearSeats(player, flags) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_NOISE_MULTIPLIER
-- @usage void SET_PLAYER_NOISE_MULTIPLIER(Player player, float multiplier);
-- @param player Player
-- @param multiplier float
-- @return void
function SetPlayerNoiseMultiplier(player, multiplier) end

-- Values around 1.0f to 2.0f used in game scripts.
-- @module native
-- @submodule player
-- @see SET_PLAYER_SNEAKING_NOISE_MULTIPLIER
-- @usage void SET_PLAYER_SNEAKING_NOISE_MULTIPLIER(Player player, float multiplier);
-- @param player Player
-- @param multiplier float
-- @return void
function SetPlayerSneakingNoiseMultiplier(player, multiplier) end

-- @todo
-- @module native
-- @submodule player
-- @see CAN_PED_HEAR_PLAYER
-- @usage BOOL CAN_PED_HEAR_PLAYER(Player player, Ped ped);
-- @param player Player
-- @param ped Ped
-- @return BOOL
function CanPedHearPlayer(player, ped) end

-- This is to make the player walk without accepting input from INPUT.  gaitType is in increments of 100s. 2000, 500, 300, 200, etc.  p4 is always 1 and p5 is always 0.  C# Example :  Function.Call(Hash.SIMULATE_PLAYER_INPUT_GAIT, Game.Player, 1.0f, 100, 1.0f, 1, 0); //Player will go forward for 100ms
-- @module native
-- @submodule player
-- @see SIMULATE_PLAYER_INPUT_GAIT
-- @usage void SIMULATE_PLAYER_INPUT_GAIT(Player player, float amount, int gaitType, float speed, BOOL p4, BOOL p5);
-- @param player Player
-- @param amount float
-- @param gaitType int
-- @param speed float
-- @param p4 BOOL
-- @param p5 BOOL
-- @return void
function SimulatePlayerInputGait(player, amount, gaitType, speed, p4, p5) end

-- @todo
-- @module native
-- @submodule player
-- @see RESET_PLAYER_INPUT_GAIT
-- @usage void RESET_PLAYER_INPUT_GAIT(Player player);
-- @param player Player
-- @return void
function ResetPlayerInputGait(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_AUTO_GIVE_PARACHUTE_WHEN_ENTER_PLANE
-- @usage void SET_AUTO_GIVE_PARACHUTE_WHEN_ENTER_PLANE(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetAutoGiveParachuteWhenEnterPlane(player, toggle) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_STEALTH_PERCEPTION_MODIFIER
-- @usage void SET_PLAYER_STEALTH_PERCEPTION_MODIFIER(Player player, float value);
-- @param player Player
-- @param value float
-- @return void
function SetPlayerStealthPerceptionModifier(player, value) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_SIMULATE_AIMING
-- @usage void SET_PLAYER_SIMULATE_AIMING(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerSimulateAiming(player, toggle) end

-- Every occurrence of p1 I found was true.1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;
-- @module native
-- @submodule player
-- @see SET_PLAYER_CLOTH_PIN_FRAMES
-- @usage void SET_PLAYER_CLOTH_PIN_FRAMES(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerClothPinFrames(player, toggle) end

-- Every occurrence was either 0 or 2.
-- @module native
-- @submodule player
-- @see SET_PLAYER_CLOTH_PACKAGE_INDEX
-- @usage void SET_PLAYER_CLOTH_PACKAGE_INDEX(int index);
-- @param index int
-- @return void
function SetPlayerClothPackageIndex(index) end

-- 6 matches across 4 scripts. 5 occurrences were 240. The other was 255.
-- @module native
-- @submodule player
-- @see SET_PLAYER_CLOTH_LOCK_COUNTER
-- @usage void SET_PLAYER_CLOTH_LOCK_COUNTER(int value);
-- @param value int
-- @return void
function SetPlayerClothLockCounter(value) end

-- Only 1 match. ob_sofa_michael.  PLAYER::PLAYER_ATTACH_VIRTUAL_BOUND(-804.5928f, 173.1801f, 71.68436f, 0f, 0f, 0.590625f, 1f, 0.7f);1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;
-- @module native
-- @submodule player
-- @see PLAYER_ATTACH_VIRTUAL_BOUND
-- @usage void PLAYER_ATTACH_VIRTUAL_BOUND(float p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 float
-- @return void
function PlayerAttachVirtualBound(p0, p1, p2, p3, p4, p5, p6, p7) end

-- 1.0.335.2, 1.0.350.1/2, 1.0.372.2, 1.0.393.2, 1.0.393.4, 1.0.463.1;
-- @module native
-- @submodule player
-- @see PLAYER_DETACH_VIRTUAL_BOUND
-- @usage void PLAYER_DETACH_VIRTUAL_BOUND();
-- @return void
function PlayerDetachVirtualBound() end

-- @todo
-- @module native
-- @submodule player
-- @see HAS_PLAYER_BEEN_SPOTTED_IN_STOLEN_VEHICLE
-- @usage BOOL HAS_PLAYER_BEEN_SPOTTED_IN_STOLEN_VEHICLE(Player player);
-- @param player Player
-- @return BOOL
function HasPlayerBeenSpottedInStolenVehicle(player) end

-- Returns true if the player is riding a train.
-- @module native
-- @submodule player
-- @see IS_PLAYER_RIDING_TRAIN
-- @usage BOOL IS_PLAYER_RIDING_TRAIN(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerRidingTrain(player) end

-- Gets the player's info and calls a function that checks the player's ped position.  Here's the decompiled function that checks the position: pastebin.com/ZdHG2E7n
-- @module native
-- @submodule player
-- @see HAS_PLAYER_LEFT_THE_WORLD
-- @usage BOOL HAS_PLAYER_LEFT_THE_WORLD(Player player);
-- @param player Player
-- @return BOOL
function HasPlayerLeftTheWorld(player) end

-- p1 was always 5. p4 was always false.
-- @module native
-- @submodule player
-- @see SET_PLAYER_PARACHUTE_VARIATION_OVERRIDE
-- @usage void SET_PLAYER_PARACHUTE_VARIATION_OVERRIDE(Player player, int p1, Any p2, Any p3, BOOL p4);
-- @param player Player
-- @param p1 int
-- @param p2 Any
-- @param p3 Any
-- @param p4 BOOL
-- @return void
function SetPlayerParachuteVariationOverride(player, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule player
-- @see CLEAR_PLAYER_PARACHUTE_VARIATION_OVERRIDE
-- @usage void CLEAR_PLAYER_PARACHUTE_VARIATION_OVERRIDE(Player player);
-- @param player Player
-- @return void
function ClearPlayerParachuteVariationOverride(player) end

-- example:  PLAYER::SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(PLAYER::PLAYER_ID(), 0x73268708);
-- @module native
-- @submodule player
-- @see SET_PLAYER_PARACHUTE_MODEL_OVERRIDE
-- @usage void SET_PLAYER_PARACHUTE_MODEL_OVERRIDE(Player player, Hash model);
-- @param player Player
-- @param model Hash
-- @return void
function SetPlayerParachuteModelOverride(player, model) end

-- @todo
-- @module native
-- @submodule player
-- @see CLEAR_PLAYER_PARACHUTE_MODEL_OVERRIDE
-- @usage void CLEAR_PLAYER_PARACHUTE_MODEL_OVERRIDE(Player player);
-- @param player Player
-- @return void
function ClearPlayerParachuteModelOverride(player) end

-- @todo
-- @module native
-- @submodule player
-- @see SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE
-- @usage void SET_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(Player player, Hash model);
-- @param player Player
-- @param model Hash
-- @return void
function SetPlayerParachutePackModelOverride(player, model) end

-- @todo
-- @module native
-- @submodule player
-- @see CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE
-- @usage void CLEAR_PLAYER_PARACHUTE_PACK_MODEL_OVERRIDE(Player player);
-- @param player Player
-- @return void
function ClearPlayerParachutePackModelOverride(player) end

-- @todo
-- @module native
-- @submodule player
-- @see DISABLE_PLAYER_VEHICLE_REWARDS
-- @usage void DISABLE_PLAYER_VEHICLE_REWARDS(Player player);
-- @param player Player
-- @return void
function DisablePlayerVehicleRewards(player) end