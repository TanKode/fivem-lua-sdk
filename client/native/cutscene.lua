-- p1: usually 8
-- @module native
-- @submodule cutscene
-- @see REQUEST_CUTSCENE
-- @usage void REQUEST_CUTSCENE(char* cutsceneName, int p1);
-- @param cutsceneName char*
-- @param int
-- @return void
function RequestCutscene() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see REMOVE_CUTSCENE
-- @usage void REMOVE_CUTSCENE();
-- @param undefined
-- @return void
function RemoveCutscene() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see HAS_CUTSCENE_LOADED
-- @usage BOOL HAS_CUTSCENE_LOADED();
-- @param undefined
-- @return BOOL
function HasCutsceneLoaded() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see HAS_THIS_CUTSCENE_LOADED
-- @usage BOOL HAS_THIS_CUTSCENE_LOADED(char* cutsceneName);
-- @param cutsceneName char*
-- @return BOOL
function HasThisCutsceneLoaded() end

-- some kind of flag. Usually 0.
-- @module native
-- @submodule cutscene
-- @see START_CUTSCENE
-- @usage void START_CUTSCENE(int p0);
-- @param p0 int
-- @return void
function StartCutscene() end

-- p3: some kind of flag. Usually 0.
-- @module native
-- @submodule cutscene
-- @see START_CUTSCENE_AT_COORDS
-- @usage void START_CUTSCENE_AT_COORDS(float x, float y, float z, int p3);
-- @param x float
-- @param float
-- @param int
-- @return void
function StartCutsceneAtCoords() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see STOP_CUTSCENE
-- @usage void STOP_CUTSCENE(BOOL p0);
-- @param p0 BOOL
-- @return void
function StopCutscene() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see STOP_CUTSCENE_IMMEDIATELY
-- @usage void STOP_CUTSCENE_IMMEDIATELY();
-- @param undefined
-- @return void
function StopCutsceneImmediately() end

-- p3 could be heading. Needs more research.
-- @module native
-- @submodule cutscene
-- @see SET_CUTSCENE_ORIGIN
-- @usage void SET_CUTSCENE_ORIGIN(float x, float y, float z, float p3, int p4);
-- @param x float
-- @param float
-- @param int
-- @return void
function SetCutsceneOrigin() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see GET_CUTSCENE_TIME
-- @usage int GET_CUTSCENE_TIME();
-- @param undefined
-- @return int
function GetCutsceneTime() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see GET_CUTSCENE_TOTAL_DURATION
-- @usage int GET_CUTSCENE_TOTAL_DURATION();
-- @param undefined
-- @return int
function GetCutsceneTotalDuration() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see WAS_CUTSCENE_SKIPPED
-- @usage BOOL WAS_CUTSCENE_SKIPPED();
-- @param undefined
-- @return BOOL
function WasCutsceneSkipped() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see HAS_CUTSCENE_FINISHED
-- @usage BOOL HAS_CUTSCENE_FINISHED();
-- @param undefined
-- @return BOOL
function HasCutsceneFinished() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see IS_CUTSCENE_ACTIVE
-- @usage BOOL IS_CUTSCENE_ACTIVE();
-- @param undefined
-- @return BOOL
function IsCutsceneActive() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see IS_CUTSCENE_PLAYING
-- @usage BOOL IS_CUTSCENE_PLAYING();
-- @param undefined
-- @return BOOL
function IsCutscenePlaying() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see GET_CUTSCENE_SECTION_PLAYING
-- @usage int GET_CUTSCENE_SECTION_PLAYING();
-- @param undefined
-- @return int
function GetCutsceneSectionPlaying() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY
-- @usage Entity GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY(char* cutsceneEntName, Hash modelHash);
-- @param cutsceneEntName char*
-- @param Hash
-- @return Entity
function GetEntityIndexOfCutsceneEntity() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see REGISTER_ENTITY_FOR_CUTSCENE
-- @usage void REGISTER_ENTITY_FOR_CUTSCENE(Ped cutscenePed, char* cutsceneEntName, int p2, Hash modelHash, int p4);
-- @param cutscenePed Ped
-- @param char*
-- @param int
-- @param Hash
-- @return void
function RegisterEntityForCutscene() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see GET_ENTITY_INDEX_OF_REGISTERED_ENTITY
-- @usage Entity GET_ENTITY_INDEX_OF_REGISTERED_ENTITY(char* cutsceneEntName, Hash modelHash);
-- @param cutsceneEntName char*
-- @param Hash
-- @return Entity
function GetEntityIndexOfRegisteredEntity() end

-- Only used twice in R* scripts
-- @module native
-- @submodule cutscene
-- @see SET_CUTSCENE_TRIGGER_AREA
-- @usage void SET_CUTSCENE_TRIGGER_AREA(float p0, float p1, float p2, float p3, float p4, float p5);
-- @param p0 float
-- @param float
-- @return void
function SetCutsceneTriggerArea() end

-- modelHash (p1) was always 0 in R* scripts
-- @module native
-- @submodule cutscene
-- @see CAN_SET_ENTER_STATE_FOR_REGISTERED_ENTITY
-- @usage BOOL CAN_SET_ENTER_STATE_FOR_REGISTERED_ENTITY(char* cutsceneEntName, Hash modelHash);
-- @param cutsceneEntName char*
-- @param Hash
-- @return BOOL
function CanSetEnterStateForRegisteredEntity() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY
-- @usage BOOL CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY(char* cutsceneEntName, Hash modelHash);
-- @param cutsceneEntName char*
-- @param Hash
-- @return BOOL
function CanSetExitStateForRegisteredEntity() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see CAN_SET_EXIT_STATE_FOR_CAMERA
-- @usage BOOL CAN_SET_EXIT_STATE_FOR_CAMERA(BOOL p0);
-- @param p0 BOOL
-- @return BOOL
function CanSetExitStateForCamera() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see SET_CUTSCENE_FADE_VALUES
-- @usage void SET_CUTSCENE_FADE_VALUES(BOOL p0, BOOL p1, BOOL p2, BOOL p3);
-- @param p0 BOOL
-- @param BOOL
-- @return void
function SetCutsceneFadeValues() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see REGISTER_SYNCHRONISED_SCRIPT_SPEECH
-- @usage void REGISTER_SYNCHRONISED_SCRIPT_SPEECH();
-- @param undefined
-- @return void
function RegisterSynchronisedScriptSpeech() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see SET_CUTSCENE_PED_COMPONENT_VARIATION
-- @usage void SET_CUTSCENE_PED_COMPONENT_VARIATION(char* cutsceneEntName, int p1, int p2, int p3, Hash modelHash);
-- @param cutsceneEntName char*
-- @param int
-- @param Hash
-- @return void
function SetCutscenePedComponentVariation() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see DOES_CUTSCENE_ENTITY_EXIST
-- @usage BOOL DOES_CUTSCENE_ENTITY_EXIST(char* cutsceneEntName, Hash modelHash);
-- @param cutsceneEntName char*
-- @param Hash
-- @return BOOL
function DoesCutsceneEntityExist() end

-- Thanks R*! ;)  if ((l_161 == 0) || (l_161 == 2)) {     sub_2ea27("Trying to set Jimmy prop variation");     CUTSCENE::_0546524ADE2E9723("Jimmy_Boston", 1, 0, 0, 0); }
-- @module native
-- @submodule cutscene
-- @see SET_CUTSCENE_PED_PROP_VARIATION
-- @usage void SET_CUTSCENE_PED_PROP_VARIATION(char* cutsceneEntName, int p1, int p2, int p3, Hash modelHash);
-- @param cutsceneEntName char*
-- @param int
-- @param Hash
-- @return void
function SetCutscenePedPropVariation() end