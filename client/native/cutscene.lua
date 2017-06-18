-- p1: usually 8
-- @module native
-- @submodule cutscene
-- @see REQUEST_CUTSCENE
-- @usage void REQUEST_CUTSCENE(char* cutsceneName, int p1);
-- @param cutsceneName char*
-- @param p1 int
-- @return void
function RequestCutscene(cutsceneName, p1) end

-- @todo
-- @module native
-- @submodule cutscene
-- @see REMOVE_CUTSCENE
-- @usage void REMOVE_CUTSCENE();
-- @return void
function RemoveCutscene() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see HAS_CUTSCENE_LOADED
-- @usage BOOL HAS_CUTSCENE_LOADED();
-- @return BOOL
function HasCutsceneLoaded() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see HAS_THIS_CUTSCENE_LOADED
-- @usage BOOL HAS_THIS_CUTSCENE_LOADED(char* cutsceneName);
-- @param cutsceneName char*
-- @return BOOL
function HasThisCutsceneLoaded(cutsceneName) end

-- some kind of flag. Usually 0.
-- @module native
-- @submodule cutscene
-- @see START_CUTSCENE
-- @usage void START_CUTSCENE(int p0);
-- @param p0 int
-- @return void
function StartCutscene(p0) end

-- p3: some kind of flag. Usually 0.
-- @module native
-- @submodule cutscene
-- @see START_CUTSCENE_AT_COORDS
-- @usage void START_CUTSCENE_AT_COORDS(float x, float y, float z, int p3);
-- @param x float
-- @param y float
-- @param z float
-- @param p3 int
-- @return void
function StartCutsceneAtCoords(x, y, z, p3) end

-- @todo
-- @module native
-- @submodule cutscene
-- @see STOP_CUTSCENE
-- @usage void STOP_CUTSCENE(BOOL p0);
-- @param p0 BOOL
-- @return void
function StopCutscene(p0) end

-- @todo
-- @module native
-- @submodule cutscene
-- @see STOP_CUTSCENE_IMMEDIATELY
-- @usage void STOP_CUTSCENE_IMMEDIATELY();
-- @return void
function StopCutsceneImmediately() end

-- p3 could be heading. Needs more research.
-- @module native
-- @submodule cutscene
-- @see SET_CUTSCENE_ORIGIN
-- @usage void SET_CUTSCENE_ORIGIN(float x, float y, float z, float p3, int p4);
-- @param x float
-- @param y float
-- @param z float
-- @param p3 float
-- @param p4 int
-- @return void
function SetCutsceneOrigin(x, y, z, p3, p4) end

-- @todo
-- @module native
-- @submodule cutscene
-- @see GET_CUTSCENE_TIME
-- @usage int GET_CUTSCENE_TIME();
-- @return int
function GetCutsceneTime() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see GET_CUTSCENE_TOTAL_DURATION
-- @usage int GET_CUTSCENE_TOTAL_DURATION();
-- @return int
function GetCutsceneTotalDuration() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see WAS_CUTSCENE_SKIPPED
-- @usage BOOL WAS_CUTSCENE_SKIPPED();
-- @return BOOL
function WasCutsceneSkipped() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see HAS_CUTSCENE_FINISHED
-- @usage BOOL HAS_CUTSCENE_FINISHED();
-- @return BOOL
function HasCutsceneFinished() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see IS_CUTSCENE_ACTIVE
-- @usage BOOL IS_CUTSCENE_ACTIVE();
-- @return BOOL
function IsCutsceneActive() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see IS_CUTSCENE_PLAYING
-- @usage BOOL IS_CUTSCENE_PLAYING();
-- @return BOOL
function IsCutscenePlaying() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see GET_CUTSCENE_SECTION_PLAYING
-- @usage int GET_CUTSCENE_SECTION_PLAYING();
-- @return int
function GetCutsceneSectionPlaying() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY
-- @usage Entity GET_ENTITY_INDEX_OF_CUTSCENE_ENTITY(char* cutsceneEntName, Hash modelHash);
-- @param cutsceneEntName char*
-- @param modelHash Hash
-- @return Entity
function GetEntityIndexOfCutsceneEntity(cutsceneEntName, modelHash) end

-- @todo
-- @module native
-- @submodule cutscene
-- @see REGISTER_ENTITY_FOR_CUTSCENE
-- @usage void REGISTER_ENTITY_FOR_CUTSCENE(Ped cutscenePed, char* cutsceneEntName, int p2, Hash modelHash, int p4);
-- @param cutscenePed Ped
-- @param cutsceneEntName char*
-- @param p2 int
-- @param modelHash Hash
-- @param p4 int
-- @return void
function RegisterEntityForCutscene(cutscenePed, cutsceneEntName, p2, modelHash, p4) end

-- @todo
-- @module native
-- @submodule cutscene
-- @see GET_ENTITY_INDEX_OF_REGISTERED_ENTITY
-- @usage Entity GET_ENTITY_INDEX_OF_REGISTERED_ENTITY(char* cutsceneEntName, Hash modelHash);
-- @param cutsceneEntName char*
-- @param modelHash Hash
-- @return Entity
function GetEntityIndexOfRegisteredEntity(cutsceneEntName, modelHash) end

-- Only used twice in R* scripts
-- @module native
-- @submodule cutscene
-- @see SET_CUTSCENE_TRIGGER_AREA
-- @usage void SET_CUTSCENE_TRIGGER_AREA(float p0, float p1, float p2, float p3, float p4, float p5);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @return void
function SetCutsceneTriggerArea(p0, p1, p2, p3, p4, p5) end

-- modelHash (p1) was always 0 in R* scripts
-- @module native
-- @submodule cutscene
-- @see CAN_SET_ENTER_STATE_FOR_REGISTERED_ENTITY
-- @usage BOOL CAN_SET_ENTER_STATE_FOR_REGISTERED_ENTITY(char* cutsceneEntName, Hash modelHash);
-- @param cutsceneEntName char*
-- @param modelHash Hash
-- @return BOOL
function CanSetEnterStateForRegisteredEntity(cutsceneEntName, modelHash) end

-- @todo
-- @module native
-- @submodule cutscene
-- @see CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY
-- @usage BOOL CAN_SET_EXIT_STATE_FOR_REGISTERED_ENTITY(char* cutsceneEntName, Hash modelHash);
-- @param cutsceneEntName char*
-- @param modelHash Hash
-- @return BOOL
function CanSetExitStateForRegisteredEntity(cutsceneEntName, modelHash) end

-- @todo
-- @module native
-- @submodule cutscene
-- @see CAN_SET_EXIT_STATE_FOR_CAMERA
-- @usage BOOL CAN_SET_EXIT_STATE_FOR_CAMERA(BOOL p0);
-- @param p0 BOOL
-- @return BOOL
function CanSetExitStateForCamera(p0) end

-- @todo
-- @module native
-- @submodule cutscene
-- @see SET_CUTSCENE_FADE_VALUES
-- @usage void SET_CUTSCENE_FADE_VALUES(BOOL p0, BOOL p1, BOOL p2, BOOL p3);
-- @param p0 BOOL
-- @param p1 BOOL
-- @param p2 BOOL
-- @param p3 BOOL
-- @return void
function SetCutsceneFadeValues(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule cutscene
-- @see REGISTER_SYNCHRONISED_SCRIPT_SPEECH
-- @usage void REGISTER_SYNCHRONISED_SCRIPT_SPEECH();
-- @return void
function RegisterSynchronisedScriptSpeech() end

-- @todo
-- @module native
-- @submodule cutscene
-- @see SET_CUTSCENE_PED_COMPONENT_VARIATION
-- @usage void SET_CUTSCENE_PED_COMPONENT_VARIATION(char* cutsceneEntName, int p1, int p2, int p3, Hash modelHash);
-- @param cutsceneEntName char*
-- @param p1 int
-- @param p2 int
-- @param p3 int
-- @param modelHash Hash
-- @return void
function SetCutscenePedComponentVariation(cutsceneEntName, p1, p2, p3, modelHash) end

-- @todo
-- @module native
-- @submodule cutscene
-- @see DOES_CUTSCENE_ENTITY_EXIST
-- @usage BOOL DOES_CUTSCENE_ENTITY_EXIST(char* cutsceneEntName, Hash modelHash);
-- @param cutsceneEntName char*
-- @param modelHash Hash
-- @return BOOL
function DoesCutsceneEntityExist(cutsceneEntName, modelHash) end

-- Thanks R*! ;)  if ((l_161 == 0) || (l_161 == 2)) {     sub_2ea27("Trying to set Jimmy prop variation");     CUTSCENE::_0546524ADE2E9723("Jimmy_Boston", 1, 0, 0, 0); }
-- @module native
-- @submodule cutscene
-- @see SET_CUTSCENE_PED_PROP_VARIATION
-- @usage void SET_CUTSCENE_PED_PROP_VARIATION(char* cutsceneEntName, int p1, int p2, int p3, Hash modelHash);
-- @param cutsceneEntName char*
-- @param p1 int
-- @param p2 int
-- @param p3 int
-- @param modelHash Hash
-- @return void
function SetCutscenePedPropVariation(cutsceneEntName, p1, p2, p3, modelHash) end