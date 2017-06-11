-- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/RFb4GTny  AUDIO::PLAY_PED_RINGTONE("Remote_Ring", PLAYER::PLAYER_PED_ID(), 1); AUDIO::PLAY_PED_RINGTONE("Dial_and_Remote_Ring", PLAYER::PLAYER_PED_ID(), 1);
-- @module native
-- @submodule audio
-- @see PLAY_PED_RINGTONE
-- @usage void PLAY_PED_RINGTONE(char* ringtoneName, Ped ped, BOOL p2);
-- @param ringtoneName char*
-- @param Ped
-- @param BOOL
-- @return void
function PlayPedRingtone() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_PED_RINGTONE_PLAYING
-- @usage BOOL IS_PED_RINGTONE_PLAYING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedRingtonePlaying() end

-- @todo
-- @module native
-- @submodule audio
-- @see STOP_PED_RINGTONE
-- @usage void STOP_PED_RINGTONE(Ped ped);
-- @param ped Ped
-- @return void
function StopPedRingtone() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_MOBILE_PHONE_CALL_ONGOING
-- @usage BOOL IS_MOBILE_PHONE_CALL_ONGOING();
-- @param undefined
-- @return BOOL
function IsMobilePhoneCallOngoing() end

-- @todo
-- @module native
-- @submodule audio
-- @see CREATE_NEW_SCRIPTED_CONVERSATION
-- @usage void CREATE_NEW_SCRIPTED_CONVERSATION();
-- @param undefined
-- @return void
function CreateNewScriptedConversation() end

-- NOTE: ones that are -1, 0 - 35 are determined by a function where it gets a TextLabel from a global then runs, _GET_TEXT_SUBSTRING and depending on what the result is it goes in check order of 0 - 9 then A - Z then z (lowercase). So it will then return 0 - 35 or -1 if it's 'z'. The func to handle that ^^ is func_67 in dialog_handler.c atleast in TU27 Xbox360 scripts.  p0 is -1, 0  p1 is a char or string (whatever you wanna call it) p2 is Global 10597 + i * 6. 'i' is a while(i < 70) loop p3 is again -1, 0 - 35  p4 is again -1, 0 - 35  p5 is either 0 or 1 (bool ?) p6 is either 0 or 1 (The func to determine this is bool) p7 is either 0 or 1 (The func to determine this is bool) p8 is either 0 or 1 (The func to determine this is bool) p9 is 0 - 3 (Determined by func_60 in dialogue_handler.c) p10 is either 0 or 1 (The func to determine this is bool) p11 is either 0 or 1 (The func to determine this is bool) p12 is unknown as in TU27 X360 scripts it only goes to p11.
-- @module native
-- @submodule audio
-- @see ADD_LINE_TO_CONVERSATION
-- @usage void ADD_LINE_TO_CONVERSATION(int p0, char* p1, char* p2, int p3, int p4, BOOL p5, BOOL p6, BOOL p7, BOOL p8, int p9, BOOL p10, BOOL p11, BOOL p12);
-- @param p0 int
-- @param char*
-- @param int
-- @param BOOL
-- @return void
function AddLineToConversation() end

-- 4 calls in the b617d scripts. The only one with p0 and p2 in clear text:  AUDIO::ADD_PED_TO_CONVERSATION(5, l_AF, "DINAPOLI");  ================================================= One of the 2 calls in dialogue_handler.c p0 is in a while-loop, and so is determined to also possibly be 0 - 15. Based on it asking if does_entity_exist for the global I have determined that p1 is, in fact, the ped, but could be wrong.
-- @module native
-- @submodule audio
-- @see ADD_PED_TO_CONVERSATION
-- @usage void ADD_PED_TO_CONVERSATION(Any p0, Any ped, char* p2);
-- @param p0 Any
-- @param Any
-- @param char*
-- @return void
function AddPedToConversation() end

-- If this is the correct name, what microphone? I know your TV isn't going to reach out and adjust your headset so..
-- @module native
-- @submodule audio
-- @see SET_MICROPHONE_POSITION
-- @usage void SET_MICROPHONE_POSITION(BOOL p0, float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3);
-- @param p0 BOOL
-- @param float
-- @return void
function SetMicrophonePosition() end

-- @todo
-- @module native
-- @submodule audio
-- @see START_SCRIPT_PHONE_CONVERSATION
-- @usage void START_SCRIPT_PHONE_CONVERSATION(BOOL p0, BOOL p1);
-- @param p0 BOOL
-- @param BOOL
-- @return void
function StartScriptPhoneConversation() end

-- @todo
-- @module native
-- @submodule audio
-- @see PRELOAD_SCRIPT_PHONE_CONVERSATION
-- @usage void PRELOAD_SCRIPT_PHONE_CONVERSATION(BOOL p0, BOOL p1);
-- @param p0 BOOL
-- @param BOOL
-- @return void
function PreloadScriptPhoneConversation() end

-- @todo
-- @module native
-- @submodule audio
-- @see START_SCRIPT_CONVERSATION
-- @usage void START_SCRIPT_CONVERSATION(BOOL p0, BOOL p1, BOOL p2, BOOL p3);
-- @param p0 BOOL
-- @param BOOL
-- @return void
function StartScriptConversation() end

-- @todo
-- @module native
-- @submodule audio
-- @see PRELOAD_SCRIPT_CONVERSATION
-- @usage void PRELOAD_SCRIPT_CONVERSATION(BOOL p0, BOOL p1, BOOL p2, BOOL p3);
-- @param p0 BOOL
-- @param BOOL
-- @return void
function PreloadScriptConversation() end

-- @todo
-- @module native
-- @submodule audio
-- @see START_PRELOADED_CONVERSATION
-- @usage void START_PRELOADED_CONVERSATION();
-- @param undefined
-- @return void
function StartPreloadedConversation() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_SCRIPTED_CONVERSATION_ONGOING
-- @usage BOOL IS_SCRIPTED_CONVERSATION_ONGOING();
-- @param undefined
-- @return BOOL
function IsScriptedConversationOngoing() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_SCRIPTED_CONVERSATION_LOADED
-- @usage BOOL IS_SCRIPTED_CONVERSATION_LOADED();
-- @param undefined
-- @return BOOL
function IsScriptedConversationLoaded() end

-- @todo
-- @module native
-- @submodule audio
-- @see GET_CURRENT_SCRIPTED_CONVERSATION_LINE
-- @usage Any GET_CURRENT_SCRIPTED_CONVERSATION_LINE();
-- @param undefined
-- @return Any
function GetCurrentScriptedConversationLine() end

-- @todo
-- @module native
-- @submodule audio
-- @see PAUSE_SCRIPTED_CONVERSATION
-- @usage void PAUSE_SCRIPTED_CONVERSATION(BOOL p0);
-- @param p0 BOOL
-- @return void
function PauseScriptedConversation() end

-- @todo
-- @module native
-- @submodule audio
-- @see RESTART_SCRIPTED_CONVERSATION
-- @usage void RESTART_SCRIPTED_CONVERSATION();
-- @param undefined
-- @return void
function RestartScriptedConversation() end

-- @todo
-- @module native
-- @submodule audio
-- @see STOP_SCRIPTED_CONVERSATION
-- @usage Any STOP_SCRIPTED_CONVERSATION(BOOL p0);
-- @param p0 BOOL
-- @return Any
function StopScriptedConversation() end

-- @todo
-- @module native
-- @submodule audio
-- @see SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE
-- @usage void SKIP_TO_NEXT_SCRIPTED_CONVERSATION_LINE();
-- @param undefined
-- @return void
function SkipToNextScriptedConversationLine() end

-- @todo
-- @module native
-- @submodule audio
-- @see INTERRUPT_CONVERSATION
-- @usage void INTERRUPT_CONVERSATION(Any p0, Any* p1, Any* p2);
-- @param p0 Any
-- @param Any*
-- @return void
function InterruptConversation() end

-- @todo
-- @module native
-- @submodule audio
-- @see REGISTER_SCRIPT_WITH_AUDIO
-- @usage void REGISTER_SCRIPT_WITH_AUDIO(Any p0);
-- @param p0 Any
-- @return void
function RegisterScriptWithAudio() end

-- @todo
-- @module native
-- @submodule audio
-- @see UNREGISTER_SCRIPT_WITH_AUDIO
-- @usage void UNREGISTER_SCRIPT_WITH_AUDIO();
-- @param undefined
-- @return void
function UnregisterScriptWithAudio() end

-- All occurrences and usages found in b617d: pastebin.com/NzZZ2Tmm
-- @module native
-- @submodule audio
-- @see REQUEST_MISSION_AUDIO_BANK
-- @usage BOOL REQUEST_MISSION_AUDIO_BANK(char* p0, BOOL p1);
-- @param p0 char*
-- @param BOOL
-- @return BOOL
function RequestMissionAudioBank() end

-- All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/XZ1tmGEz
-- @module native
-- @submodule audio
-- @see REQUEST_AMBIENT_AUDIO_BANK
-- @usage BOOL REQUEST_AMBIENT_AUDIO_BANK(char* p0, BOOL p1);
-- @param p0 char*
-- @param BOOL
-- @return BOOL
function RequestAmbientAudioBank() end

-- All occurrences and usages found in b617d, sorted alphabetically and identical lines removed: pastebin.com/AkmDAVn6
-- @module native
-- @submodule audio
-- @see REQUEST_SCRIPT_AUDIO_BANK
-- @usage BOOL REQUEST_SCRIPT_AUDIO_BANK(char* p0, BOOL p1);
-- @param p0 char*
-- @param BOOL
-- @return BOOL
function RequestScriptAudioBank() end

-- @todo
-- @module native
-- @submodule audio
-- @see HINT_AMBIENT_AUDIO_BANK
-- @usage Any HINT_AMBIENT_AUDIO_BANK(Any p0, Any p1);
-- @param p0 Any
-- @param Any
-- @return Any
function HintAmbientAudioBank() end

-- @todo
-- @module native
-- @submodule audio
-- @see HINT_SCRIPT_AUDIO_BANK
-- @usage Any HINT_SCRIPT_AUDIO_BANK(Any p0, Any p1);
-- @param p0 Any
-- @param Any
-- @return Any
function HintScriptAudioBank() end

-- @todo
-- @module native
-- @submodule audio
-- @see RELEASE_MISSION_AUDIO_BANK
-- @usage void RELEASE_MISSION_AUDIO_BANK();
-- @param undefined
-- @return void
function ReleaseMissionAudioBank() end

-- @todo
-- @module native
-- @submodule audio
-- @see RELEASE_AMBIENT_AUDIO_BANK
-- @usage void RELEASE_AMBIENT_AUDIO_BANK();
-- @param undefined
-- @return void
function ReleaseAmbientAudioBank() end

-- @todo
-- @module native
-- @submodule audio
-- @see RELEASE_NAMED_SCRIPT_AUDIO_BANK
-- @usage void RELEASE_NAMED_SCRIPT_AUDIO_BANK(char* audioBank);
-- @param audioBank char*
-- @return void
function ReleaseNamedScriptAudioBank() end

-- @todo
-- @module native
-- @submodule audio
-- @see RELEASE_SCRIPT_AUDIO_BANK
-- @usage void RELEASE_SCRIPT_AUDIO_BANK();
-- @param undefined
-- @return void
function ReleaseScriptAudioBank() end

-- @todo
-- @module native
-- @submodule audio
-- @see GET_SOUND_ID
-- @usage int GET_SOUND_ID();
-- @param undefined
-- @return int
function GetSoundId() end

-- @todo
-- @module native
-- @submodule audio
-- @see RELEASE_SOUND_ID
-- @usage void RELEASE_SOUND_ID(int soundId);
-- @param soundId int
-- @return void
function ReleaseSoundId() end

-- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/A8Ny8AHZ
-- @module native
-- @submodule audio
-- @see PLAY_SOUND
-- @usage void PLAY_SOUND(Player soundId, char* audioName, char* audioRef, BOOL p3, Any p4, BOOL p5);
-- @param soundId Player
-- @param char*
-- @param BOOL
-- @param Any
-- @return void
function PlaySound() end

-- list: pastebin.com/DCeRiaLJ  All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/0neZdsZ5
-- @module native
-- @submodule audio
-- @see PLAY_SOUND_FRONTEND
-- @usage void PLAY_SOUND_FRONTEND(int soundId, char* audioName, char* audioRef, BOOL p3);
-- @param soundId int
-- @param char*
-- @param BOOL
-- @return void
function PlaySoundFrontend() end

-- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/f2A7vTj0  No changes made in b678d.  gtaforums.com/topic/795622-audio-for-mods
-- @module native
-- @submodule audio
-- @see PLAY_SOUND_FROM_ENTITY
-- @usage void PLAY_SOUND_FROM_ENTITY(int soundId, char* audioName, Entity entity, char* audioRef, BOOL p4, Any p5);
-- @param soundId int
-- @param char*
-- @param Entity
-- @param BOOL
-- @param Any
-- @return void
function PlaySoundFromEntity() end

-- All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/eeFc5DiW  gtaforums.com/topic/795622-audio-for-mods
-- @module native
-- @submodule audio
-- @see PLAY_SOUND_FROM_COORD
-- @usage void PLAY_SOUND_FROM_COORD(int soundId, char* audioName, float x, float y, float z, char* audioRef, BOOL p6, int range, BOOL p8);
-- @param soundId int
-- @param char*
-- @param float
-- @param BOOL
-- @param int
-- @return void
function PlaySoundFromCoord() end

-- @todo
-- @module native
-- @submodule audio
-- @see STOP_SOUND
-- @usage void STOP_SOUND(int soundId);
-- @param soundId int
-- @return void
function StopSound() end

-- Could this be used alongside either,  SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES or _SET_NETWORK_ID_SYNC_TO_PLAYER to make it so other players can hear the sound while online? It'd be a bit troll-fun to be able to play the Zancudo UFO creepy sounds globally.
-- @module native
-- @submodule audio
-- @see GET_NETWORK_ID_FROM_SOUND_ID
-- @usage int GET_NETWORK_ID_FROM_SOUND_ID(int soundId);
-- @param soundId int
-- @return int
function GetNetworkIdFromSoundId() end

-- @todo
-- @module native
-- @submodule audio
-- @see GET_SOUND_ID_FROM_NETWORK_ID
-- @usage int GET_SOUND_ID_FROM_NETWORK_ID(int netId);
-- @param netId int
-- @return int
function GetSoundIdFromNetworkId() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_VARIABLE_ON_SOUND
-- @usage void SET_VARIABLE_ON_SOUND(int soundId, Any* p1, float p2);
-- @param soundId int
-- @param Any*
-- @param float
-- @return void
function SetVariableOnSound() end

-- From the scripts, p0:  "ArmWrestlingIntensity", "INOUT", "Monkey_Stream", "ZoomLevel"
-- @module native
-- @submodule audio
-- @see SET_VARIABLE_ON_STREAM
-- @usage void SET_VARIABLE_ON_STREAM(char* p0, float p1);
-- @param p0 char*
-- @param float
-- @return void
function SetVariableOnStream() end

-- @todo
-- @module native
-- @submodule audio
-- @see OVERRIDE_UNDERWATER_STREAM
-- @usage void OVERRIDE_UNDERWATER_STREAM(Any* p0, BOOL p1);
-- @param p0 Any*
-- @param BOOL
-- @return void
function OverrideUnderwaterStream() end

-- @todo
-- @module native
-- @submodule audio
-- @see HAS_SOUND_FINISHED
-- @usage BOOL HAS_SOUND_FINISHED(int soundId);
-- @param soundId int
-- @return BOOL
function HasSoundFinished() end

-- @todo
-- @module native
-- @submodule audio
-- @see OVERRIDE_TREVOR_RAGE
-- @usage void OVERRIDE_TREVOR_RAGE(Any* p0);
-- @param p0 Any*
-- @return void
function OverrideTrevorRage() end

-- @todo
-- @module native
-- @submodule audio
-- @see RESET_TREVOR_RAGE
-- @usage void RESET_TREVOR_RAGE();
-- @param undefined
-- @return void
function ResetTrevorRage() end

-- Hash collision! Disables speech.
-- @module native
-- @submodule audio
-- @see SET_PLAYER_ANGRY
-- @usage void SET_PLAYER_ANGRY(Ped playerPed, BOOL disabled);
-- @param playerPed Ped
-- @param BOOL
-- @return void
function SetPlayerAngry() end

-- Needs another parameter [int p2]. The signature is PED::PLAY_PAIN(Ped ped, int painID, int p1, int p2);  Last 2 parameters always seem to be 0.  EX: Function.Call(Hash.PLAY_PAIN, TestPed, 6, 0, 0);  Known Pain IDs ________________________  1 - Doesn't seem to do anything. Does NOT crash the game like previously said. (Latest patch) 6 - Scream (Short) 7 - Scared Scream (Kinda Long) 8 - On Fire
-- @module native
-- @submodule audio
-- @see PLAY_PAIN
-- @usage void PLAY_PAIN(Ped ped, int painID, int p1);
-- @param ped Ped
-- @param int
-- @return void
function PlayPain() end

-- Audio List gtaforums.com/topic/795622-audio-for-mods/  All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/FTeAj4yZ  Yes
-- @module native
-- @submodule audio
-- @see SET_AMBIENT_VOICE_NAME
-- @usage void SET_AMBIENT_VOICE_NAME(Ped ped, char* name);
-- @param ped Ped
-- @param char*
-- @return void
function SetAmbientVoiceName() end

-- Needs to be called every frame.
-- @module native
-- @submodule audio
-- @see STOP_CURRENT_PLAYING_AMBIENT_SPEECH
-- @usage void STOP_CURRENT_PLAYING_AMBIENT_SPEECH(Ped ped);
-- @param ped Ped
-- @return void
function StopCurrentPlayingAmbientSpeech() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_AMBIENT_SPEECH_PLAYING
-- @usage BOOL IS_AMBIENT_SPEECH_PLAYING(Ped p0);
-- @param p0 Ped
-- @return BOOL
function IsAmbientSpeechPlaying() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_SCRIPTED_SPEECH_PLAYING
-- @usage BOOL IS_SCRIPTED_SPEECH_PLAYING(Any p0);
-- @param p0 Any
-- @return BOOL
function IsScriptedSpeechPlaying() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_ANY_SPEECH_PLAYING
-- @usage BOOL IS_ANY_SPEECH_PLAYING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsAnySpeechPlaying() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_PED_IN_CURRENT_CONVERSATION
-- @usage BOOL IS_PED_IN_CURRENT_CONVERSATION(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInCurrentConversation() end

-- Sets the ped drunk sounds.  Only works with PLAYER_PED_ID  ====================================================  As mentioned above, this only sets the drunk sound to ped/player.  To give the Ped a drunk effect with drunk walking animation try using SET_PED_MOVEMENT_CLIPSET  Below is an example  if (!Function.Call<bool>(Hash.HAS_ANIM_SET_LOADED, "move_m@drunk@verydrunk"))                 {                     Function.Call(Hash.REQUEST_ANIM_SET, "move_m@drunk@verydrunk");                 }                 Function.Call(Hash.SET_PED_MOVEMENT_CLIPSET, Ped.Handle, "move_m@drunk@verydrunk", 0x3E800000);    And to stop the effect use RESET_PED_MOVEMENT_CLIPSET
-- @module native
-- @submodule audio
-- @see SET_PED_IS_DRUNK
-- @usage void SET_PED_IS_DRUNK(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param BOOL
-- @return void
function SetPedIsDrunk() end

-- mood can be 0 or 1 (it's not a boolean value!). Effects audio of the animal.
-- @module native
-- @submodule audio
-- @see SET_ANIMAL_MOOD
-- @usage void SET_ANIMAL_MOOD(Ped animal, int mood);
-- @param animal Ped
-- @param int
-- @return void
function SetAnimalMood() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_MOBILE_PHONE_RADIO_ACTIVE
-- @usage BOOL IS_MOBILE_PHONE_RADIO_ACTIVE();
-- @param undefined
-- @return BOOL
function IsMobilePhoneRadioActive() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_MOBILE_PHONE_RADIO_STATE
-- @usage void SET_MOBILE_PHONE_RADIO_STATE(BOOL state);
-- @param state BOOL
-- @return void
function SetMobilePhoneRadioState() end

-- Returns 255 (radio off index) if the function fails.
-- @module native
-- @submodule audio
-- @see GET_PLAYER_RADIO_STATION_INDEX
-- @usage int GET_PLAYER_RADIO_STATION_INDEX();
-- @param undefined
-- @return int
function GetPlayerRadioStationIndex() end

-- Returns active radio station name
-- @module native
-- @submodule audio
-- @see GET_PLAYER_RADIO_STATION_NAME
-- @usage char* GET_PLAYER_RADIO_STATION_NAME();
-- @param undefined
-- @return char*
function GetPlayerRadioStationName() end

-- Returns String with radio station name.
-- @module native
-- @submodule audio
-- @see GET_RADIO_STATION_NAME
-- @usage char* GET_RADIO_STATION_NAME(int radioStation);
-- @param radioStation int
-- @return char*
function GetRadioStationName() end

-- @todo
-- @module native
-- @submodule audio
-- @see GET_PLAYER_RADIO_STATION_GENRE
-- @usage Any GET_PLAYER_RADIO_STATION_GENRE();
-- @param undefined
-- @return Any
function GetPlayerRadioStationGenre() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_RADIO_RETUNING
-- @usage BOOL IS_RADIO_RETUNING();
-- @param undefined
-- @return BOOL
function IsRadioRetuning() end

-- For a full list, see here: pastebin.com/Kj9t38KF
-- @module native
-- @submodule audio
-- @see SET_RADIO_TO_STATION_NAME
-- @usage void SET_RADIO_TO_STATION_NAME(char* stationName);
-- @param stationName char*
-- @return void
function SetRadioToStationName() end

-- For a full list, see here: pastebin.com/Kj9t38KF
-- @module native
-- @submodule audio
-- @see SET_VEH_RADIO_STATION
-- @usage void SET_VEH_RADIO_STATION(Vehicle vehicle, char* radioStation);
-- @param vehicle Vehicle
-- @param char*
-- @return void
function SetVehRadioStation() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_EMITTER_RADIO_STATION
-- @usage void SET_EMITTER_RADIO_STATION(char* emitterName, char* radioStation);
-- @param emitterName char*
-- @param char*
-- @return void
function SetEmitterRadioStation() end

-- Example: AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false);	AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false);	AUDIO::SET_STATIC_EMITTER_ENABLED((Any*)"LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false);  This turns off surrounding sounds not connected directly to peds.
-- @module native
-- @submodule audio
-- @see SET_STATIC_EMITTER_ENABLED
-- @usage void SET_STATIC_EMITTER_ENABLED(char* emitterName, BOOL toggle);
-- @param emitterName char*
-- @param BOOL
-- @return void
function SetStaticEmitterEnabled() end

-- Sets radio station by index.
-- @module native
-- @submodule audio
-- @see SET_RADIO_TO_STATION_INDEX
-- @usage void SET_RADIO_TO_STATION_INDEX(int radioStation);
-- @param radioStation int
-- @return void
function SetRadioToStationIndex() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_FRONTEND_RADIO_ACTIVE
-- @usage void SET_FRONTEND_RADIO_ACTIVE(BOOL active);
-- @param active BOOL
-- @return void
function SetFrontendRadioActive() end

-- I see this as a native that would of been used back in GTA III when you finally unlocked the bridge to the next island and such.
-- @module native
-- @submodule audio
-- @see UNLOCK_MISSION_NEWS_STORY
-- @usage void UNLOCK_MISSION_NEWS_STORY(int newsStory);
-- @param newsStory int
-- @return void
function UnlockMissionNewsStory() end

-- @todo
-- @module native
-- @submodule audio
-- @see GET_NUMBER_OF_PASSENGER_VOICE_VARIATIONS
-- @usage int GET_NUMBER_OF_PASSENGER_VOICE_VARIATIONS(Any p0);
-- @param p0 Any
-- @return int
function GetNumberOfPassengerVoiceVariations() end

-- @todo
-- @module native
-- @submodule audio
-- @see GET_AUDIBLE_MUSIC_TRACK_TEXT_ID
-- @usage int GET_AUDIBLE_MUSIC_TRACK_TEXT_ID();
-- @param undefined
-- @return int
function GetAudibleMusicTrackTextId() end

-- @todo
-- @module native
-- @submodule audio
-- @see PLAY_END_CREDITS_MUSIC
-- @usage void PLAY_END_CREDITS_MUSIC(BOOL play);
-- @param play BOOL
-- @return void
function PlayEndCreditsMusic() end

-- @todo
-- @module native
-- @submodule audio
-- @see SKIP_RADIO_FORWARD
-- @usage void SKIP_RADIO_FORWARD();
-- @param undefined
-- @return void
function SkipRadioForward() end

-- @todo
-- @module native
-- @submodule audio
-- @see FREEZE_RADIO_STATION
-- @usage void FREEZE_RADIO_STATION(char* radioStation);
-- @param radioStation char*
-- @return void
function FreezeRadioStation() end

-- @todo
-- @module native
-- @submodule audio
-- @see UNFREEZE_RADIO_STATION
-- @usage void UNFREEZE_RADIO_STATION(char* radioStation);
-- @param radioStation char*
-- @return void
function UnfreezeRadioStation() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_RADIO_AUTO_UNFREEZE
-- @usage void SET_RADIO_AUTO_UNFREEZE(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetRadioAutoUnfreeze() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_INITIAL_PLAYER_STATION
-- @usage void SET_INITIAL_PLAYER_STATION(char* radioStation);
-- @param radioStation char*
-- @return void
function SetInitialPlayerStation() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_USER_RADIO_CONTROL_ENABLED
-- @usage void SET_USER_RADIO_CONTROL_ENABLED(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetUserRadioControlEnabled() end

-- Only found this one in the decompiled scripts:  AUDIO::SET_RADIO_TRACK("RADIO_03_HIPHOP_NEW", "ARM1_RADIO_STARTS");
-- @module native
-- @submodule audio
-- @see SET_RADIO_TRACK
-- @usage void SET_RADIO_TRACK(char* radioStation, char* radioTrack);
-- @param radioStation char*
-- @param char*
-- @return void
function SetRadioTrack() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_VEHICLE_RADIO_LOUD
-- @usage void SET_VEHICLE_RADIO_LOUD(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param BOOL
-- @return void
function SetVehicleRadioLoud() end

-- Enables Radio on phone.
-- @module native
-- @submodule audio
-- @see SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY
-- @usage void SET_MOBILE_RADIO_ENABLED_DURING_GAMEPLAY(BOOL Toggle);
-- @param Toggle BOOL
-- @return void
function SetMobileRadioEnabledDuringGameplay() end

-- can't seem to enable radio on cop cars etc
-- @module native
-- @submodule audio
-- @see SET_VEHICLE_RADIO_ENABLED
-- @usage void SET_VEHICLE_RADIO_ENABLED(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param BOOL
-- @return void
function SetVehicleRadioEnabled() end

-- @todo
-- @module native
-- @submodule audio
-- @see FIND_RADIO_STATION_INDEX
-- @usage int FIND_RADIO_STATION_INDEX(int station);
-- @param station int
-- @return int
function FindRadioStationIndex() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_AMBIENT_ZONE_STATE
-- @usage void SET_AMBIENT_ZONE_STATE(Any* p0, BOOL p1, BOOL p2);
-- @param p0 Any*
-- @param BOOL
-- @return void
function SetAmbientZoneState() end

-- This function also has a p2, unknown. Signature AUDIO::CLEAR_AMBIENT_ZONE_STATE(char* zoneName, bool p1, Any p2);  Still needs more research.   Here are the names I've found: pastebin.com/AfA0Qjyv
-- @module native
-- @submodule audio
-- @see CLEAR_AMBIENT_ZONE_STATE
-- @usage void CLEAR_AMBIENT_ZONE_STATE(char* zoneName, BOOL p1);
-- @param zoneName char*
-- @param BOOL
-- @return void
function ClearAmbientZoneState() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_AMBIENT_ZONE_LIST_STATE
-- @usage void SET_AMBIENT_ZONE_LIST_STATE(Any* p0, BOOL p1, BOOL p2);
-- @param p0 Any*
-- @param BOOL
-- @return void
function SetAmbientZoneListState() end

-- @todo
-- @module native
-- @submodule audio
-- @see CLEAR_AMBIENT_ZONE_LIST_STATE
-- @usage void CLEAR_AMBIENT_ZONE_LIST_STATE(Any* p0, BOOL p1);
-- @param p0 Any*
-- @param BOOL
-- @return void
function ClearAmbientZoneListState() end

-- All occurrences found in b617d, sorted alphabetically and identical lines removed: pastebin.com/jYvw7N1S
-- @module native
-- @submodule audio
-- @see SET_AMBIENT_ZONE_STATE_PERSISTENT
-- @usage void SET_AMBIENT_ZONE_STATE_PERSISTENT(char* ambientZone, BOOL p1, BOOL p2);
-- @param ambientZone char*
-- @param BOOL
-- @return void
function SetAmbientZoneStatePersistent() end

-- All occurrences found in b617d, sorted alphabetically and identical lines removed: pastebin.com/WkXDGgQL
-- @module native
-- @submodule audio
-- @see SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT
-- @usage void SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT(char* ambientZone, BOOL p1, BOOL p2);
-- @param ambientZone char*
-- @param BOOL
-- @return void
function SetAmbientZoneListStatePersistent() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_AMBIENT_ZONE_ENABLED
-- @usage BOOL IS_AMBIENT_ZONE_ENABLED(char* ambientZone);
-- @param ambientZone char*
-- @return BOOL
function IsAmbientZoneEnabled() end

-- All occurrences found in b617d, sorted alphabetically and identical lines removed:   AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_AK"); AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_CUSTOM"); AUDIO::SET_CUTSCENE_AUDIO_OVERRIDE("_TOOTHLESS");
-- @module native
-- @submodule audio
-- @see SET_CUTSCENE_AUDIO_OVERRIDE
-- @usage void SET_CUTSCENE_AUDIO_OVERRIDE(char* p0);
-- @param p0 char*
-- @return void
function SetCutsceneAudioOverride() end

-- Called 5 times in the scripts. All occurrences found in b617d, sorted alphabetically and identical lines removed:   AUDIO::GET_PLAYER_HEADSET_SOUND_ALTERNATE("INOUT", 0.0); AUDIO::GET_PLAYER_HEADSET_SOUND_ALTERNATE("INOUT", 1.0);
-- @module native
-- @submodule audio
-- @see GET_PLAYER_HEADSET_SOUND_ALTERNATE
-- @usage void GET_PLAYER_HEADSET_SOUND_ALTERNATE(char* p0, float p1);
-- @param p0 char*
-- @param float
-- @return void
function GetPlayerHeadsetSoundAlternate() end

-- Please change to void. (Does not return anything!)  Plays the given police radio message.  All found occurrences in b617d, sorted alphabetically and identical lines removed: pastebin.com/GBnsQ5hr
-- @module native
-- @submodule audio
-- @see PLAY_POLICE_REPORT
-- @usage Any PLAY_POLICE_REPORT(char* name, float p1);
-- @param name char*
-- @param float
-- @return Any
function PlayPoliceReport() end

-- Plays the siren sound of a vehicle which is otherwise activated when fastly double-pressing the horn key. Only works on vehicles with a police siren.
-- @module native
-- @submodule audio
-- @see BLIP_SIREN
-- @usage void BLIP_SIREN(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function BlipSiren() end

-- vehicle - the vehicle whose horn should be overwritten mute - p1 seems to be an option for muting the horn p2 - maybe a horn id, since the function AUDIO::GET_VEHICLE_DEFAULT_HORN(veh) exists?
-- @module native
-- @submodule audio
-- @see OVERRIDE_VEH_HORN
-- @usage void OVERRIDE_VEH_HORN(Vehicle vehicle, BOOL mute, int p2);
-- @param vehicle Vehicle
-- @param BOOL
-- @param int
-- @return void
function OverrideVehHorn() end

-- Checks whether the horn of a vehicle is currently played.
-- @module native
-- @submodule audio
-- @see IS_HORN_ACTIVE
-- @usage BOOL IS_HORN_ACTIVE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return BOOL
function IsHornActive() end

-- Makes pedestrians sound their horn longer, faster and more agressive when they use their horn.
-- @module native
-- @submodule audio
-- @see SET_AGGRESSIVE_HORNS
-- @usage void SET_AGGRESSIVE_HORNS(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetAggressiveHorns() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_STREAM_PLAYING
-- @usage BOOL IS_STREAM_PLAYING();
-- @param undefined
-- @return BOOL
function IsStreamPlaying() end

-- @todo
-- @module native
-- @submodule audio
-- @see GET_STREAM_PLAY_TIME
-- @usage int GET_STREAM_PLAY_TIME();
-- @param undefined
-- @return int
function GetStreamPlayTime() end

-- Example: AUDIO::LOAD_STREAM("CAR_STEAL_1_PASSBY", "CAR_STEAL_1_SOUNDSET");  All found occurrences in the b678d decompiled scripts: pastebin.com/3rma6w5w  Stream names often ends with "_MASTER", "_SMALL" or "_STREAM". Also "_IN", "_OUT" and numbers.     soundSet is often set to 0 in the scripts. These are common to end the soundSets: "_SOUNDS", "_SOUNDSET" and numbers.
-- @module native
-- @submodule audio
-- @see LOAD_STREAM
-- @usage BOOL LOAD_STREAM(char* streamName, char* soundSet);
-- @param streamName char*
-- @param char*
-- @return BOOL
function LoadStream() end

-- Example: AUDIO::LOAD_STREAM_WITH_START_OFFSET("STASH_TOXIN_STREAM", 2400, "FBI_05_SOUNDS");  Only called a few times in the scripts.
-- @module native
-- @submodule audio
-- @see LOAD_STREAM_WITH_START_OFFSET
-- @usage BOOL LOAD_STREAM_WITH_START_OFFSET(char* streamName, int startOffset, char* soundSet);
-- @param streamName char*
-- @param int
-- @param char*
-- @return BOOL
function LoadStreamWithStartOffset() end

-- @todo
-- @module native
-- @submodule audio
-- @see PLAY_STREAM_FROM_PED
-- @usage void PLAY_STREAM_FROM_PED(Ped ped);
-- @param ped Ped
-- @return void
function PlayStreamFromPed() end

-- @todo
-- @module native
-- @submodule audio
-- @see PLAY_STREAM_FROM_VEHICLE
-- @usage void PLAY_STREAM_FROM_VEHICLE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function PlayStreamFromVehicle() end

-- Used with AUDIO::LOAD_STREAM  Example from finale_heist2b.c4: AI::TASK_SYNCHRONIZED_SCENE(l_4C8[2/*14*/], l_4C8[2/*14*/]._f7, l_30A, "push_out_vault_l", 4.0, -1.5, 5, 713, 4.0, 0);                     PED::SET_SYNCHRONIZED_SCENE_PHASE(l_4C8[2/*14*/]._f7, 0.0);                     PED::_2208438012482A1A(l_4C8[2/*14*/], 0, 0);                     PED::SET_PED_COMBAT_ATTRIBUTES(l_4C8[2/*14*/], 38, 1);                     PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(l_4C8[2/*14*/], 1);                     if (AUDIO::LOAD_STREAM("Gold_Cart_Push_Anim_01", "BIG_SCORE_3B_SOUNDS")) {                         AUDIO::PLAY_STREAM_FROM_OBJECT(l_36F[0/*1*/]);                     }
-- @module native
-- @submodule audio
-- @see PLAY_STREAM_FROM_OBJECT
-- @usage void PLAY_STREAM_FROM_OBJECT(Object object);
-- @param object Object
-- @return void
function PlayStreamFromObject() end

-- @todo
-- @module native
-- @submodule audio
-- @see PLAY_STREAM_FRONTEND
-- @usage void PLAY_STREAM_FRONTEND();
-- @param undefined
-- @return void
function PlayStreamFrontend() end

-- Hash collision!!! PLAY_STREAM_FROM_POSITION is the correct name!
-- @module native
-- @submodule audio
-- @see SPECIAL_FRONTEND_EQUAL
-- @usage void SPECIAL_FRONTEND_EQUAL(float x, float y, float z);
-- @param x float
-- @param float
-- @return void
function SpecialFrontendEqual() end

-- @todo
-- @module native
-- @submodule audio
-- @see STOP_STREAM
-- @usage void STOP_STREAM();
-- @param undefined
-- @return void
function StopStream() end

-- @todo
-- @module native
-- @submodule audio
-- @see STOP_PED_SPEAKING
-- @usage void STOP_PED_SPEAKING(Ped ped, BOOL shaking);
-- @param ped Ped
-- @param BOOL
-- @return void
function StopPedSpeaking() end

-- @todo
-- @module native
-- @submodule audio
-- @see DISABLE_PED_PAIN_AUDIO
-- @usage void DISABLE_PED_PAIN_AUDIO(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param BOOL
-- @return void
function DisablePedPainAudio() end

-- Common in the scripts: AUDIO::IS_AMBIENT_SPEECH_DISABLED(PLAYER::PLAYER_PED_ID());
-- @module native
-- @submodule audio
-- @see IS_AMBIENT_SPEECH_DISABLED
-- @usage BOOL IS_AMBIENT_SPEECH_DISABLED(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsAmbientSpeechDisabled() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_SIREN_WITH_NO_DRIVER
-- @usage void SET_SIREN_WITH_NO_DRIVER(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param BOOL
-- @return void
function SetSirenWithNoDriver() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_HORN_ENABLED
-- @usage void SET_HORN_ENABLED(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param BOOL
-- @return void
function SetHornEnabled() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_AUDIO_VEHICLE_PRIORITY
-- @usage void SET_AUDIO_VEHICLE_PRIORITY(Vehicle vehicle, Any p1);
-- @param vehicle Vehicle
-- @param Any
-- @return void
function SetAudioVehiclePriority() end

-- @todo
-- @module native
-- @submodule audio
-- @see USE_SIREN_AS_HORN
-- @usage void USE_SIREN_AS_HORN(Vehicle vehicle, BOOL toggle);
-- @param vehicle Vehicle
-- @param BOOL
-- @return void
function UseSirenAsHorn() end

-- SET_VEHICLE_BOOST_ACTIVE(vehicle, 1, 0); SET_VEHICLE_BOOST_ACTIVE(vehicle, 0, 0);   Will give a boost-soundeffect.
-- @module native
-- @submodule audio
-- @see SET_VEHICLE_BOOST_ACTIVE
-- @usage void SET_VEHICLE_BOOST_ACTIVE(Vehicle vehicle, BOOL Toggle);
-- @param vehicle Vehicle
-- @param BOOL
-- @return void
function SetVehicleBoostActive() end

-- p1 appears to only be "0" or "3". I personally use "0" as p1.
-- @module native
-- @submodule audio
-- @see PLAY_VEHICLE_DOOR_OPEN_SOUND
-- @usage void PLAY_VEHICLE_DOOR_OPEN_SOUND(Vehicle vehicle, int p1);
-- @param vehicle Vehicle
-- @param int
-- @return void
function PlayVehicleDoorOpenSound() end

-- This native only comes up once. And in that one instance, p1 is "1".
-- @module native
-- @submodule audio
-- @see PLAY_VEHICLE_DOOR_CLOSE_SOUND
-- @usage void PLAY_VEHICLE_DOOR_CLOSE_SOUND(Vehicle vehicle, int p1);
-- @param vehicle Vehicle
-- @param int
-- @return void
function PlayVehicleDoorCloseSound() end

-- Hardcoded to return 1
-- @module native
-- @submodule audio
-- @see IS_GAME_IN_CONTROL_OF_MUSIC
-- @usage BOOL IS_GAME_IN_CONTROL_OF_MUSIC();
-- @param undefined
-- @return BOOL
function IsGameInControlOfMusic() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_GPS_ACTIVE
-- @usage void SET_GPS_ACTIVE(BOOL active);
-- @param active BOOL
-- @return void
function SetGpsActive() end

-- Called 38 times in the scripts. There are 5 different audioNames used.   One unknown removed below.    AUDIO::PLAY_MISSION_COMPLETE_AUDIO("DEAD");  AUDIO::PLAY_MISSION_COMPLETE_AUDIO("FRANKLIN_BIG_01");  AUDIO::PLAY_MISSION_COMPLETE_AUDIO("GENERIC_FAILED");  AUDIO::PLAY_MISSION_COMPLETE_AUDIO("TREVOR_SMALL_01");
-- @module native
-- @submodule audio
-- @see PLAY_MISSION_COMPLETE_AUDIO
-- @usage void PLAY_MISSION_COMPLETE_AUDIO(char* audioName);
-- @param audioName char*
-- @return void
function PlayMissionCompleteAudio() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_MISSION_COMPLETE_PLAYING
-- @usage BOOL IS_MISSION_COMPLETE_PLAYING();
-- @param undefined
-- @return BOOL
function IsMissionCompletePlaying() end

-- Used to prepare a scene where the surrounding sound is muted or a bit changed. This does not play any sound.  List of all usable scene names found in b617d. Sorted alphabetically and identical names removed: pastebin.com/MtM9N9CC
-- @module native
-- @submodule audio
-- @see START_AUDIO_SCENE
-- @usage BOOL START_AUDIO_SCENE(char* scene);
-- @param scene char*
-- @return BOOL
function StartAudioScene() end

-- @todo
-- @module native
-- @submodule audio
-- @see STOP_AUDIO_SCENE
-- @usage void STOP_AUDIO_SCENE(char* scene);
-- @param scene char*
-- @return void
function StopAudioScene() end

-- ??
-- @module native
-- @submodule audio
-- @see STOP_AUDIO_SCENES
-- @usage void STOP_AUDIO_SCENES();
-- @param undefined
-- @return void
function StopAudioScenes() end

-- @todo
-- @module native
-- @submodule audio
-- @see IS_AUDIO_SCENE_ACTIVE
-- @usage BOOL IS_AUDIO_SCENE_ACTIVE(char* scene);
-- @param scene char*
-- @return BOOL
function IsAudioSceneActive() end

-- @todo
-- @module native
-- @submodule audio
-- @see SET_AUDIO_SCENE_VARIABLE
-- @usage void SET_AUDIO_SCENE_VARIABLE(char* scene, char* variable, float value);
-- @param scene char*
-- @param char*
-- @param float
-- @return void
function SetAudioSceneVariable() end

-- @todo
-- @module native
-- @submodule audio
-- @see AUDIO_IS_SCRIPTED_MUSIC_PLAYING
-- @usage Any AUDIO_IS_SCRIPTED_MUSIC_PLAYING();
-- @param undefined
-- @return Any
function AudioIsScriptedMusicPlaying() end

-- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P
-- @module native
-- @submodule audio
-- @see PREPARE_MUSIC_EVENT
-- @usage BOOL PREPARE_MUSIC_EVENT(char* eventName);
-- @param eventName char*
-- @return BOOL
function PrepareMusicEvent() end

-- All music event names found in the b617d scripts: pastebin.com/GnYt0R3P
-- @module native
-- @submodule audio
-- @see CANCEL_MUSIC_EVENT
-- @usage BOOL CANCEL_MUSIC_EVENT(char* eventName);
-- @param eventName char*
-- @return BOOL
function CancelMusicEvent() end

-- List of all usable event names found in b617d used with this native. Sorted alphabetically and identical names removed: pastebin.com/RzDFmB1W  All music event names found in the b617d scripts: pastebin.com/GnYt0R3P
-- @module native
-- @submodule audio
-- @see TRIGGER_MUSIC_EVENT
-- @usage BOOL TRIGGER_MUSIC_EVENT(char* eventName);
-- @param eventName char*
-- @return BOOL
function TriggerMusicEvent() end

-- @todo
-- @module native
-- @submodule audio
-- @see GET_MUSIC_PLAYTIME
-- @usage Any GET_MUSIC_PLAYTIME();
-- @param undefined
-- @return Any
function GetMusicPlaytime() end

-- @todo
-- @module native
-- @submodule audio
-- @see CLEAR_ALL_BROKEN_GLASS
-- @usage Any CLEAR_ALL_BROKEN_GLASS();
-- @param undefined
-- @return Any
function ClearAllBrokenGlass() end

-- Example:  bool prepareAlarm = AUDIO::PREPARE_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");
-- @module native
-- @submodule audio
-- @see PREPARE_ALARM
-- @usage BOOL PREPARE_ALARM(char* alarmName);
-- @param alarmName char*
-- @return BOOL
function PrepareAlarm() end

-- Example:  This will start the alarm at Fort Zancudo.  AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  First parameter (char) is the name of the alarm. Second parameter (bool) is unknown, it does not seem to make a difference if this one is 0 or 1.  ----------  It DOES make a difference but it has to do with the duration or something I dunno yet  ----------   Found in the b617d scripts:   AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS", 0);  AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER", 1);  AUDIO::START_ALARM("AGENCY_HEIST_FIB_TOWER_ALARMS_UPPER_B", 0);  AUDIO::START_ALARM("BIG_SCORE_HEIST_VAULT_ALARMS", a_0);  AUDIO::START_ALARM("FBI_01_MORGUE_ALARMS", 1);  AUDIO::START_ALARM("FIB_05_BIOTECH_LAB_ALARMS", 0);  AUDIO::START_ALARM("JEWEL_STORE_HEIST_ALARMS", 0);  AUDIO::START_ALARM("PALETO_BAY_SCORE_ALARM", 1);  AUDIO::START_ALARM("PALETO_BAY_SCORE_CHICKEN_FACTORY_ALARM", 0);  AUDIO::START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  AUDIO::START_ALARM("PORT_OF_LS_HEIST_SHIP_ALARMS", 0);  AUDIO::START_ALARM("PRISON_ALARMS", 0);  AUDIO::START_ALARM("PROLOGUE_VAULT_ALARMS", 0);
-- @module native
-- @submodule audio
-- @see START_ALARM
-- @usage void START_ALARM(char* alarmName, BOOL p2);
-- @param alarmName char*
-- @param BOOL
-- @return void
function StartAlarm() end

-- Example:  This will stop the alarm at Fort Zancudo.  AUDIO::STOP_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1);  First parameter (char) is the name of the alarm. Second parameter (bool) has to be true (1) to have any effect.
-- @module native
-- @submodule audio
-- @see STOP_ALARM
-- @usage void STOP_ALARM(char* alarmName, BOOL toggle);
-- @param alarmName char*
-- @param BOOL
-- @return void
function StopAlarm() end

-- @todo
-- @module native
-- @submodule audio
-- @see STOP_ALL_ALARMS
-- @usage void STOP_ALL_ALARMS(BOOL stop);
-- @param stop BOOL
-- @return void
function StopAllAlarms() end

-- Example:  bool playing = AUDIO::IS_ALARM_PLAYING("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS");
-- @module native
-- @submodule audio
-- @see IS_ALARM_PLAYING
-- @usage BOOL IS_ALARM_PLAYING(char* alarmName);
-- @param alarmName char*
-- @return BOOL
function IsAlarmPlaying() end

-- Returns hash of default vehicle horn  Hash is stored in audVehicleAudioEntity
-- @module native
-- @submodule audio
-- @see GET_VEHICLE_DEFAULT_HORN
-- @usage Hash GET_VEHICLE_DEFAULT_HORN(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return Hash
function GetVehicleDefaultHorn() end

-- @todo
-- @module native
-- @submodule audio
-- @see RESET_PED_AUDIO_FLAGS
-- @usage void RESET_PED_AUDIO_FLAGS(Any p0);
-- @param p0 Any
-- @return void
function ResetPedAudioFlags() end

-- Possible flag names: "ActivateSwitchWheelAudio" "AllowAmbientSpeechInSlowMo" "AllowCutsceneOverScreenFade" "AllowForceRadioAfterRetune" "AllowPainAndAmbientSpeechToPlayDuringCutscene" "AllowPlayerAIOnMission" "AllowPoliceScannerWhenPlayerHasNoControl" "AllowRadioDuringSwitch" "AllowRadioOverScreenFade" "AllowScoreAndRadio" "AllowScriptedSpeechInSlowMo" "AvoidMissionCompleteDelay" "DisableAbortConversationForDeathAndInjury" "DisableAbortConversationForRagdoll" "DisableBarks" "DisableFlightMusic" "DisableReplayScriptStreamRecording" "EnableHeadsetBeep" "ForceConversationInterrupt" "ForceSeamlessRadioSwitch" "ForceSniperAudio" "FrontendRadioDisabled" "HoldMissionCompleteWhenPrepared" "IsDirectorModeActive" "IsPlayerOnMissionForSpeech" "ListenerReverbDisabled" "LoadMPData" "MobileRadioInGame" "OnlyAllowScriptTriggerPoliceScanner" "PlayMenuMusic" "PoliceScannerDisabled" "ScriptedConvListenerMaySpeak" "SpeechDucksScore" "SuppressPlayerScubaBreathing" "WantedMusicDisabled" "WantedMusicOnMission"  ------------------------------- No added flag names between b393d and b573d, including b573d.  #######################################################################  "IsDirectorModeActive" is an audio flag which will allow you to play speech infinitely without any pauses like in Director Mode.  -----------------------------------------------------------------------  All flag IDs and hashes:  ID: 01 | Hash: 0x20A7858F ID: 02 | Hash: 0xA11C2259 ID: 03 | Hash: 0x08DE4700 ID: 04 | Hash: 0x989F652F ID: 05 | Hash: 0x3C9E76BA ID: 06 | Hash: 0xA805FEB0 ID: 07 | Hash: 0x4B94EA26 ID: 08 | Hash: 0x803ACD34 ID: 09 | Hash: 0x7C741226 ID: 10 | Hash: 0x31DB9EBD ID: 11 | Hash: 0xDF386F18 ID: 12 | Hash: 0x669CED42 ID: 13 | Hash: 0x51F22743 ID: 14 | Hash: 0x2052B35C ID: 15 | Hash: 0x071472DC ID: 16 | Hash: 0xF9928BCC ID: 17 | Hash: 0x7ADBDD48 ID: 18 | Hash: 0xA959BA1A ID: 19 | Hash: 0xBBE89B60 ID: 20 | Hash: 0x87A08871 ID: 21 | Hash: 0xED1057CE ID: 22 | Hash: 0x1584AD7A ID: 23 | Hash: 0x8582CFCB ID: 24 | Hash: 0x7E5E2FB0 ID: 25 | Hash: 0xAE4F72DB ID: 26 | Hash: 0x5D16D1FA ID: 27 | Hash: 0x06B2F4B8 ID: 28 | Hash: 0x5D4CDC96 ID: 29 | Hash: 0x8B5A48BA ID: 30 | Hash: 0x98FBD539 ID: 31 | Hash: 0xD8CB0473 ID: 32 | Hash: 0x5CBB4874 ID: 33 | Hash: 0x2E9F93A9 ID: 34 | Hash: 0xD93BEA86 ID: 35 | Hash: 0x92109B7D ID: 36 | Hash: 0xB7EC9E4D ID: 37 | Hash: 0xCABDBB1D ID: 38 | Hash: 0xB3FD4A52 ID: 39 | Hash: 0x370D94E5 ID: 40 | Hash: 0xA0F7938F ID: 41 | Hash: 0xCBE1CE81 ID: 42 | Hash: 0xC27F1271 ID: 43 | Hash: 0x9E3258EB ID: 44 | Hash: 0x551CDA5B ID: 45 | Hash: 0xCB6D663C ID: 46 | Hash: 0x7DACE87F ID: 47 | Hash: 0xF9DE416F ID: 48 | Hash: 0x882E6E9E ID: 49 | Hash: 0x16B447E7 ID: 50 | Hash: 0xBD867739 ID: 51 | Hash: 0xA3A58604 ID: 52 | Hash: 0x7E046BBC ID: 53 | Hash: 0xD95FDB98 ID: 54 | Hash: 0x5842C0ED ID: 55 | Hash: 0x285FECC6 ID: 56 | Hash: 0x9351AC43 ID: 57 | Hash: 0x50032E75 ID: 58 | Hash: 0xAE6D0D59 ID: 59 | Hash: 0xD6351785 ID: 60 | Hash: 0xD25D71BC ID: 61 | Hash: 0x1F7F6423 ID: 62 | Hash: 0xE24C3AA6 ID: 63 | Hash: 0xBFFDD2B7
-- @module native
-- @submodule audio
-- @see SET_AUDIO_FLAG
-- @usage void SET_AUDIO_FLAG(char* flagName, BOOL toggle);
-- @param flagName char*
-- @param BOOL
-- @return void
function SetAudioFlag() end

-- @todo
-- @module native
-- @submodule audio
-- @see PREPARE_SYNCHRONIZED_AUDIO_EVENT
-- @usage Any PREPARE_SYNCHRONIZED_AUDIO_EVENT(char* p0, Any p1);
-- @param p0 char*
-- @param Any
-- @return Any
function PrepareSynchronizedAudioEvent() end

-- @todo
-- @module native
-- @submodule audio
-- @see PREPARE_SYNCHRONIZED_AUDIO_EVENT_FOR_SCENE
-- @usage BOOL PREPARE_SYNCHRONIZED_AUDIO_EVENT_FOR_SCENE(Any p0, Any* p1);
-- @param p0 Any
-- @param Any*
-- @return BOOL
function PrepareSynchronizedAudioEventForScene() end

-- @todo
-- @module native
-- @submodule audio
-- @see PLAY_SYNCHRONIZED_AUDIO_EVENT
-- @usage BOOL PLAY_SYNCHRONIZED_AUDIO_EVENT(Any p0);
-- @param p0 Any
-- @return BOOL
function PlaySynchronizedAudioEvent() end

-- @todo
-- @module native
-- @submodule audio
-- @see STOP_SYNCHRONIZED_AUDIO_EVENT
-- @usage BOOL STOP_SYNCHRONIZED_AUDIO_EVENT(Any p0);
-- @param p0 Any
-- @return BOOL
function StopSynchronizedAudioEvent() end