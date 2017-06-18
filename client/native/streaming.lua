-- @todo
-- @module native
-- @submodule streaming
-- @see LOAD_ALL_OBJECTS_NOW
-- @usage void LOAD_ALL_OBJECTS_NOW();
-- @return void
function LoadAllObjectsNow() end

-- @todo
-- @module native
-- @submodule streaming
-- @see LOAD_SCENE
-- @usage void LOAD_SCENE(float x, float y, float z);
-- @param x float
-- @param y float
-- @param z float
-- @return void
function LoadScene(x, y, z) end

-- @todo
-- @module native
-- @submodule streaming
-- @see NETWORK_UPDATE_LOAD_SCENE
-- @usage Any NETWORK_UPDATE_LOAD_SCENE();
-- @return Any
function NetworkUpdateLoadScene() end

-- @todo
-- @module native
-- @submodule streaming
-- @see NETWORK_STOP_LOAD_SCENE
-- @usage void NETWORK_STOP_LOAD_SCENE();
-- @return void
function NetworkStopLoadScene() end

-- @todo
-- @module native
-- @submodule streaming
-- @see IS_NETWORK_LOADING_SCENE
-- @usage BOOL IS_NETWORK_LOADING_SCENE();
-- @return BOOL
function IsNetworkLoadingScene() end

-- @todo
-- @module native
-- @submodule streaming
-- @see SET_INTERIOR_ACTIVE
-- @usage void SET_INTERIOR_ACTIVE(int interiorID, BOOL toggle);
-- @param interiorID int
-- @param toggle BOOL
-- @return void
function SetInteriorActive(interiorID, toggle) end

-- Request a model to be loaded into memory  Looking it the disassembly, it seems like it actually returns the model if it's already loaded.
-- @module native
-- @submodule streaming
-- @see REQUEST_MODEL
-- @usage void REQUEST_MODEL(Hash model);
-- @param model Hash
-- @return void
function RequestModel(model) end

-- @todo
-- @module native
-- @submodule streaming
-- @see REQUEST_MENU_PED_MODEL
-- @usage void REQUEST_MENU_PED_MODEL(Hash model);
-- @param model Hash
-- @return void
function RequestMenuPedModel(model) end

-- Checks if the specified model has loaded into memory.
-- @module native
-- @submodule streaming
-- @see HAS_MODEL_LOADED
-- @usage BOOL HAS_MODEL_LOADED(Hash model);
-- @param model Hash
-- @return BOOL
function HasModelLoaded(model) end

-- Unloads model from memory
-- @module native
-- @submodule streaming
-- @see SET_MODEL_AS_NO_LONGER_NEEDED
-- @usage void SET_MODEL_AS_NO_LONGER_NEEDED(Hash model);
-- @param model Hash
-- @return void
function SetModelAsNoLongerNeeded(model) end

-- Check if model is in cdimage(rpf)
-- @module native
-- @submodule streaming
-- @see IS_MODEL_IN_CDIMAGE
-- @usage BOOL IS_MODEL_IN_CDIMAGE(Hash model);
-- @param model Hash
-- @return BOOL
function IsModelInCdimage(model) end

-- Returns whether the specified model exists in the game.
-- @module native
-- @submodule streaming
-- @see IS_MODEL_VALID
-- @usage BOOL IS_MODEL_VALID(Hash model);
-- @param model Hash
-- @return BOOL
function IsModelValid(model) end

-- Returns whether the specified model represents a vehicle.
-- @module native
-- @submodule streaming
-- @see IS_MODEL_A_VEHICLE
-- @usage BOOL IS_MODEL_A_VEHICLE(Hash model);
-- @param model Hash
-- @return BOOL
function IsModelAVehicle(model) end

-- @todo
-- @module native
-- @submodule streaming
-- @see REQUEST_COLLISION_AT_COORD
-- @usage Any REQUEST_COLLISION_AT_COORD(float x, float y, float z);
-- @param x float
-- @param y float
-- @param z float
-- @return Any
function RequestCollisionAtCoord(x, y, z) end

-- @todo
-- @module native
-- @submodule streaming
-- @see REQUEST_COLLISION_FOR_MODEL
-- @usage void REQUEST_COLLISION_FOR_MODEL(Hash model);
-- @param model Hash
-- @return void
function RequestCollisionForModel(model) end

-- @todo
-- @module native
-- @submodule streaming
-- @see HAS_COLLISION_FOR_MODEL_LOADED
-- @usage BOOL HAS_COLLISION_FOR_MODEL_LOADED(Hash model);
-- @param model Hash
-- @return BOOL
function HasCollisionForModelLoaded(model) end

-- MulleDK19: Alias of REQUEST_COLLISION_AT_COORD.
-- @module native
-- @submodule streaming
-- @see REQUEST_ADDITIONAL_COLLISION_AT_COORD
-- @usage void REQUEST_ADDITIONAL_COLLISION_AT_COORD(float p0, float p1, float p2);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @return void
function RequestAdditionalCollisionAtCoord(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule streaming
-- @see DOES_ANIM_DICT_EXIST
-- @usage BOOL DOES_ANIM_DICT_EXIST(char* animDict);
-- @param animDict char*
-- @return BOOL
function DoesAnimDictExist(animDict) end

-- @todo
-- @module native
-- @submodule streaming
-- @see REQUEST_ANIM_DICT
-- @usage void REQUEST_ANIM_DICT(char* animDict);
-- @param animDict char*
-- @return void
function RequestAnimDict(animDict) end

-- @todo
-- @module native
-- @submodule streaming
-- @see HAS_ANIM_DICT_LOADED
-- @usage BOOL HAS_ANIM_DICT_LOADED(char* animDict);
-- @param animDict char*
-- @return BOOL
function HasAnimDictLoaded(animDict) end

-- @todo
-- @module native
-- @submodule streaming
-- @see REMOVE_ANIM_DICT
-- @usage void REMOVE_ANIM_DICT(char* animDict);
-- @param animDict char*
-- @return void
function RemoveAnimDict(animDict) end

-- Starts loading the specified animation set. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.
-- @module native
-- @submodule streaming
-- @see REQUEST_ANIM_SET
-- @usage void REQUEST_ANIM_SET(char* animSet);
-- @param animSet char*
-- @return void
function RequestAnimSet(animSet) end

-- Gets whether the specified animation set has finished loading. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.  Animation set and clip set are synonymous.
-- @module native
-- @submodule streaming
-- @see HAS_ANIM_SET_LOADED
-- @usage BOOL HAS_ANIM_SET_LOADED(char* animSet);
-- @param animSet char*
-- @return BOOL
function HasAnimSetLoaded(animSet) end

-- Unloads the specified animation set. An animation set provides movement animations for a ped. See SET_PED_MOVEMENT_CLIPSET.  Animation set and clip set are synonymous.
-- @module native
-- @submodule streaming
-- @see REMOVE_ANIM_SET
-- @usage void REMOVE_ANIM_SET(char* animSet);
-- @param animSet char*
-- @return void
function RemoveAnimSet(animSet) end

-- @todo
-- @module native
-- @submodule streaming
-- @see REQUEST_CLIP_SET
-- @usage void REQUEST_CLIP_SET(char* clipSet);
-- @param clipSet char*
-- @return void
function RequestClipSet(clipSet) end

-- Alias for HAS_ANIM_SET_LOADED.
-- @module native
-- @submodule streaming
-- @see HAS_CLIP_SET_LOADED
-- @usage BOOL HAS_CLIP_SET_LOADED(char* clipSet);
-- @param clipSet char*
-- @return BOOL
function HasClipSetLoaded(clipSet) end

-- Alias for REMOVE_ANIM_SET.
-- @module native
-- @submodule streaming
-- @see REMOVE_CLIP_SET
-- @usage void REMOVE_CLIP_SET(char* clipSet);
-- @param clipSet char*
-- @return void
function RemoveClipSet(clipSet) end

-- Exemple: REQUEST_IPL("TrevorsTrailerTrash");  IPL + Coords: http://pastebin.com/FyV5mMma
-- @module native
-- @submodule streaming
-- @see REQUEST_IPL
-- @usage void REQUEST_IPL(char* iplName);
-- @param iplName char*
-- @return void
function RequestIpl(iplName) end

-- Removes an IPL from the map. IPL List: pastebin.com/pwkh0uRP   Example: C#: Function.Call(Hash.REMOVE_IPL, "trevorstrailertidy");  C++: STREAMING::REMOVE_IPL("trevorstrailertidy");  iplName = Name of IPL you want to remove.
-- @module native
-- @submodule streaming
-- @see REMOVE_IPL
-- @usage void REMOVE_IPL(char* iplName);
-- @param iplName char*
-- @return void
function RemoveIpl(iplName) end

-- @todo
-- @module native
-- @submodule streaming
-- @see IS_IPL_ACTIVE
-- @usage BOOL IS_IPL_ACTIVE(char* iplName);
-- @param iplName char*
-- @return BOOL
function IsIplActive(iplName) end

-- @todo
-- @module native
-- @submodule streaming
-- @see SET_STREAMING
-- @usage void SET_STREAMING(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetStreaming(toggle) end

-- @todo
-- @module native
-- @submodule streaming
-- @see SET_GAME_PAUSES_FOR_STREAMING
-- @usage void SET_GAME_PAUSES_FOR_STREAMING(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetGamePausesForStreaming(toggle) end

-- @todo
-- @module native
-- @submodule streaming
-- @see SET_REDUCE_PED_MODEL_BUDGET
-- @usage void SET_REDUCE_PED_MODEL_BUDGET(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetReducePedModelBudget(toggle) end

-- @todo
-- @module native
-- @submodule streaming
-- @see SET_REDUCE_VEHICLE_MODEL_BUDGET
-- @usage void SET_REDUCE_VEHICLE_MODEL_BUDGET(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetReduceVehicleModelBudget(toggle) end

-- This is a NOP function. It does nothing at all.
-- @module native
-- @submodule streaming
-- @see SET_DITCH_POLICE_MODELS
-- @usage void SET_DITCH_POLICE_MODELS(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetDitchPoliceModels(toggle) end

-- @todo
-- @module native
-- @submodule streaming
-- @see GET_NUMBER_OF_STREAMING_REQUESTS
-- @usage int GET_NUMBER_OF_STREAMING_REQUESTS();
-- @return int
function GetNumberOfStreamingRequests() end

-- maps script name (thread + 0xD0) by lookup via scriptfx.dat - does nothing when script name is empty
-- @module native
-- @submodule streaming
-- @see REQUEST_PTFX_ASSET
-- @usage Any REQUEST_PTFX_ASSET();
-- @return Any
function RequestPtfxAsset() end

-- @todo
-- @module native
-- @submodule streaming
-- @see HAS_PTFX_ASSET_LOADED
-- @usage BOOL HAS_PTFX_ASSET_LOADED();
-- @return BOOL
function HasPtfxAssetLoaded() end

-- @todo
-- @module native
-- @submodule streaming
-- @see REMOVE_PTFX_ASSET
-- @usage void REMOVE_PTFX_ASSET();
-- @return void
function RemovePtfxAsset() end

-- From the b678d decompiled scripts:   STREAMING::REQUEST_NAMED_PTFX_ASSET("core_snow");  STREAMING::REQUEST_NAMED_PTFX_ASSET("fm_mission_controler");  STREAMING::REQUEST_NAMED_PTFX_ASSET("proj_xmas_firework");  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_apartment_mp");  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_biolab_heist");  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_fireworks");  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_parachute");  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_indep_wheelsmoke");  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_cig_plane");  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_creator");  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_mp_tankbattle");  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_ornate_heist");  STREAMING::REQUEST_NAMED_PTFX_ASSET("scr_prison_break_heist_station");
-- @module native
-- @submodule streaming
-- @see REQUEST_NAMED_PTFX_ASSET
-- @usage void REQUEST_NAMED_PTFX_ASSET(char* fxName);
-- @param fxName char*
-- @return void
function RequestNamedPtfxAsset(fxName) end

-- @todo
-- @module native
-- @submodule streaming
-- @see HAS_NAMED_PTFX_ASSET_LOADED
-- @usage BOOL HAS_NAMED_PTFX_ASSET_LOADED(char* fxName);
-- @param fxName char*
-- @return BOOL
function HasNamedPtfxAssetLoaded(fxName) end

-- @todo
-- @module native
-- @submodule streaming
-- @see SET_VEHICLE_POPULATION_BUDGET
-- @usage void SET_VEHICLE_POPULATION_BUDGET(int p0);
-- @param p0 int
-- @return void
function SetVehiclePopulationBudget(p0) end

-- @todo
-- @module native
-- @submodule streaming
-- @see SET_PED_POPULATION_BUDGET
-- @usage void SET_PED_POPULATION_BUDGET(int p0);
-- @param p0 int
-- @return void
function SetPedPopulationBudget(p0) end

-- @todo
-- @module native
-- @submodule streaming
-- @see CLEAR_FOCUS
-- @usage void CLEAR_FOCUS();
-- @return void
function ClearFocus() end

-- It seems to make the entity's coords mark the point from which LOD-distances are measured. In my testing, setting a vehicle as the focus entity and moving that vehicle more than 300 distance units away from the player will make the level of detail around the player go down drastically (shadows disappear, textures go extremely low res, etc). The player seems to be the default focus entity.
-- @module native
-- @submodule streaming
-- @see SET_FOCUS_ENTITY
-- @usage void SET_FOCUS_ENTITY(Entity entity);
-- @param entity Entity
-- @return void
function SetFocusEntity(entity) end

-- @todo
-- @module native
-- @submodule streaming
-- @see IS_ENTITY_FOCUS
-- @usage BOOL IS_ENTITY_FOCUS(Entity entity);
-- @param entity Entity
-- @return BOOL
function IsEntityFocus(entity) end

-- @todo
-- @module native
-- @submodule streaming
-- @see FORMAT_FOCUS_HEADING
-- @usage Any FORMAT_FOCUS_HEADING(float x, float y, float z, float rad, Any p4, Any p5);
-- @param x float
-- @param y float
-- @param z float
-- @param rad float
-- @param p4 Any
-- @param p5 Any
-- @return Any
function FormatFocusHeading(x, y, z, rad, p4, p5) end

-- @todo
-- @module native
-- @submodule streaming
-- @see NEW_LOAD_SCENE_START
-- @usage BOOL NEW_LOAD_SCENE_START(float p0, float p1, float p2, float p3, float p4, float p5, float p6, Any p7);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 Any
-- @return BOOL
function NewLoadSceneStart(p0, p1, p2, p3, p4, p5, p6, p7) end

-- if (!sub_8f12("START LOAD SCENE SAFE")) {     if (CUTSCENE::GET_CUTSCENE_TIME() > 4178) {         STREAMING::_ACCFB4ACF53551B0(1973.845458984375, 3818.447265625, 32.43629837036133, 15.0, 2);         sub_8e9e("START LOAD SCENE SAFE", 1);     } }  (Previously known as STREAMING::_NEW_LOAD_SCENE_START_SAFE)
-- @module native
-- @submodule streaming
-- @see NEW_LOAD_SCENE_START_SPHERE
-- @usage BOOL NEW_LOAD_SCENE_START_SPHERE(float x, float y, float z, float radius, Any p4);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param p4 Any
-- @return BOOL
function NewLoadSceneStartSphere(x, y, z, radius, p4) end

-- @todo
-- @module native
-- @submodule streaming
-- @see NEW_LOAD_SCENE_STOP
-- @usage void NEW_LOAD_SCENE_STOP();
-- @return void
function NewLoadSceneStop() end

-- @todo
-- @module native
-- @submodule streaming
-- @see IS_NEW_LOAD_SCENE_ACTIVE
-- @usage BOOL IS_NEW_LOAD_SCENE_ACTIVE();
-- @return BOOL
function IsNewLoadSceneActive() end

-- @todo
-- @module native
-- @submodule streaming
-- @see IS_NEW_LOAD_SCENE_LOADED
-- @usage BOOL IS_NEW_LOAD_SCENE_LOADED();
-- @return BOOL
function IsNewLoadSceneLoaded() end

-- // this enum comes directly from R* so don't edit this enum ePlayerSwitchTypes { 	SWITCH_TYPE_AUTO, 	SWITCH_TYPE_LONG, 	SWITCH_TYPE_MEDIUM, 	SWITCH_TYPE_SHORT };  Use GET_IDEAL_PLAYER_SWITCH_TYPE for the best switch type.  ----------------------------------------------------  Examples from the decompiled scripts:  STREAMING::START_PLAYER_SWITCH(l_832._f3, PLAYER::PLAYER_PED_ID(), 0, 3); STREAMING::START_PLAYER_SWITCH(l_832._f3, PLAYER::PLAYER_PED_ID(), 2050, 3); STREAMING::START_PLAYER_SWITCH(PLAYER::PLAYER_PED_ID(), l_832._f3, 1024, 3); STREAMING::START_PLAYER_SWITCH(g_141F27, PLAYER::PLAYER_PED_ID(), 513, v_14);  Note: DO NOT, use SWITCH_TYPE_LONG with flag 513. It leaves you stuck in the clouds. You'll have to call STOP_PLAYER_SWITCH() to return to your ped.  Flag 8 w/ SWITCH_TYPE_LONG will zoom out 3 steps, then zoom in 2/3 steps and stop on the 3rd and just hang there. Flag 8 w/ SWITCH_TYPE_MEDIUM will zoom out 1 step, and just hang there.
-- @module native
-- @submodule streaming
-- @see START_PLAYER_SWITCH
-- @usage void START_PLAYER_SWITCH(Ped from, Ped to, int flags, int switchType);
-- @param from Ped
-- @param to Ped
-- @param flags int
-- @param switchType int
-- @return void
function StartPlayerSwitch(from, to, flags, switchType) end

-- @todo
-- @module native
-- @submodule streaming
-- @see STOP_PLAYER_SWITCH
-- @usage void STOP_PLAYER_SWITCH();
-- @return void
function StopPlayerSwitch() end

-- Returns true if the player is currently switching, false otherwise. (When the camera is in the sky moving from Trevor to Franklin for example)
-- @module native
-- @submodule streaming
-- @see IS_PLAYER_SWITCH_IN_PROGRESS
-- @usage BOOL IS_PLAYER_SWITCH_IN_PROGRESS();
-- @return BOOL
function IsPlayerSwitchInProgress() end

-- @todo
-- @module native
-- @submodule streaming
-- @see GET_PLAYER_SWITCH_TYPE
-- @usage int GET_PLAYER_SWITCH_TYPE();
-- @return int
function GetPlayerSwitchType() end

-- x1, y1, z1 -- Coords of your ped model x2, y2, z2 -- Coords of the ped you want to switch to
-- @module native
-- @submodule streaming
-- @see GET_IDEAL_PLAYER_SWITCH_TYPE
-- @usage int GET_IDEAL_PLAYER_SWITCH_TYPE(float x1, float y1, float z1, float x2, float y2, float z2);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @return int
function GetIdealPlayerSwitchType(x1, y1, z1, x2, y2, z2) end

-- @todo
-- @module native
-- @submodule streaming
-- @see GET_PLAYER_SWITCH_STATE
-- @usage int GET_PLAYER_SWITCH_STATE();
-- @return int
function GetPlayerSwitchState() end

-- @todo
-- @module native
-- @submodule streaming
-- @see GET_PLAYER_SHORT_SWITCH_STATE
-- @usage int GET_PLAYER_SHORT_SWITCH_STATE();
-- @return int
function GetPlayerShortSwitchState() end

-- @todo
-- @module native
-- @submodule streaming
-- @see SET_PLAYER_SWITCH_OUTRO
-- @usage void SET_PLAYER_SWITCH_OUTRO(float p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, Any p8);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 float
-- @param p8 Any
-- @return void
function SetPlayerSwitchOutro(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

-- Hash collision
-- @module native
-- @submodule streaming
-- @see SET_PLAYER_INVERTED_UP
-- @usage int SET_PLAYER_INVERTED_UP();
-- @return int
function SetPlayerInvertedUp() end

-- Hash collision
-- @module native
-- @submodule streaming
-- @see DESTROY_PLAYER_IN_PAUSE_MENU
-- @usage Any DESTROY_PLAYER_IN_PAUSE_MENU();
-- @return Any
function DestroyPlayerInPauseMenu() end

-- @todo
-- @module native
-- @submodule streaming
-- @see PREFETCH_SRL
-- @usage void PREFETCH_SRL(char* srl);
-- @param srl char*
-- @return void
function PrefetchSrl(srl) end

-- @todo
-- @module native
-- @submodule streaming
-- @see IS_SRL_LOADED
-- @usage BOOL IS_SRL_LOADED();
-- @return BOOL
function IsSrlLoaded() end

-- @todo
-- @module native
-- @submodule streaming
-- @see BEGIN_SRL
-- @usage void BEGIN_SRL();
-- @return void
function BeginSrl() end

-- @todo
-- @module native
-- @submodule streaming
-- @see END_SRL
-- @usage void END_SRL();
-- @return void
function EndSrl() end

-- @todo
-- @module native
-- @submodule streaming
-- @see SET_SRL_TIME
-- @usage void SET_SRL_TIME(float p0);
-- @param p0 float
-- @return void
function SetSrlTime(p0) end

-- @todo
-- @module native
-- @submodule streaming
-- @see SET_HD_AREA
-- @usage void SET_HD_AREA(float x, float y, float z, float ground);
-- @param x float
-- @param y float
-- @param z float
-- @param ground float
-- @return void
function SetHdArea(x, y, z, ground) end

-- @todo
-- @module native
-- @submodule streaming
-- @see CLEAR_HD_AREA
-- @usage void CLEAR_HD_AREA();
-- @return void
function ClearHdArea() end

-- @todo
-- @module native
-- @submodule streaming
-- @see SHUTDOWN_CREATOR_BUDGET
-- @usage void SHUTDOWN_CREATOR_BUDGET();
-- @return void
function ShutdownCreatorBudget() end