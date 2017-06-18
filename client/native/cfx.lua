-- @todo
-- @module native
-- @submodule cfx
-- @see PERFORM_HTTP_REQUEST_INTERNAL
-- @usage int PERFORM_HTTP_REQUEST_INTERNAL(char* requestData, int requestDataLength);
-- @param requestData char*
-- @param requestDataLength int
-- @return int
function PerformHttpRequestInternal(requestData, requestDataLength) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_INSTANCE_ID
-- @usage int GET_INSTANCE_ID();
-- @return int
function GetInstanceId() end

-- @todo
-- @module native
-- @submodule cfx
-- @see SET_GAME_TYPE
-- @usage void SET_GAME_TYPE(char* gametypeName);
-- @param gametypeName char*
-- @return void
function SetGameType(gametypeName) end

-- The backing function for TriggerServerEvent.
-- @module native
-- @submodule cfx
-- @see TRIGGER_SERVER_EVENT_INTERNAL
-- @usage void TRIGGER_SERVER_EVENT_INTERNAL(char* eventName, char* eventPayload, int payloadLength);
-- @param eventName char*
-- @param eventPayload char*
-- @param payloadLength int
-- @return void
function TriggerServerEventInternal(eventName, eventPayload, payloadLength) end

-- Registers a specified font name for use with text draw commands.  Parameters:fontName: The name of the font in the GFx font library.Returns: An index to use with SET_TEXT_FONT and similar natives.
-- @module native
-- @submodule cfx
-- @see REGISTER_FONT_ID
-- @usage int REGISTER_FONT_ID(char* fontName);
-- @param fontName char*
-- @return int
function RegisterFontId(fontName) end

-- @todo
-- @module native
-- @submodule cfx
-- @see SET_RESOURCE_KVP
-- @usage void SET_RESOURCE_KVP(char* key, char* value);
-- @param key char*
-- @param value char*
-- @return void
function SetResourceKvp(key, value) end

-- Reads the contents of a text file in a specified resource. If executed on the client, this file has to be included in files in the resource manifest. Example: local data = LoadResourceFile("devtools", "data.json")  Parameters:resourceName: The resource name.fileName: The file in the resource.Returns: The file contents
-- @module native
-- @submodule cfx
-- @see LOAD_RESOURCE_FILE
-- @usage char* LOAD_RESOURCE_FILE(char* resourceName, char* fileName);
-- @param resourceName char*
-- @param fileName char*
-- @return char*
function LoadResourceFile(resourceName, fileName) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_CONVAR
-- @usage char* GET_CONVAR(char* varName, char* default);
-- @param varName char*
-- @param default char*
-- @return char*
function GetConvar(varName, default) end

-- Gets the amount of metadata values with the specified key existing in the specified resource's manifest. See also: Resource manifest  Parameters:resourceName: The resource name.metadataKey: The key to look up in the resource manifest.
-- @module native
-- @submodule cfx
-- @see GET_NUM_RESOURCE_METADATA
-- @usage int GET_NUM_RESOURCE_METADATA(char* resourceName, char* metadataKey);
-- @param resourceName char*
-- @param metadataKey char*
-- @return int
function GetNumResourceMetadata(resourceName, metadataKey) end

-- @todo
-- @module native
-- @submodule cfx
-- @see DELETE_FUNCTION_REFERENCE
-- @usage void DELETE_FUNCTION_REFERENCE(char* referenceIdentity);
-- @param referenceIdentity char*
-- @return void
function DeleteFunctionReference(referenceIdentity) end

-- @todo
-- @module native
-- @submodule cfx
-- @see SET_TEXT_CHAT_ENABLED
-- @usage BOOL SET_TEXT_CHAT_ENABLED(BOOL enabled);
-- @param enabled BOOL
-- @return BOOL
function SetTextChatEnabled(enabled) end

-- @todo
-- @module native
-- @submodule cfx
-- @see SEND_NUI_MESSAGE
-- @usage BOOL SEND_NUI_MESSAGE(char* jsonString);
-- @param jsonString char*
-- @return BOOL
function SendNuiMessage(jsonString) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_INVOKING_RESOURCE
-- @usage char* GET_INVOKING_RESOURCE();
-- @return char*
function GetInvokingResource() end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_PLAYER_SERVER_ID
-- @usage int GET_PLAYER_SERVER_ID(Player player);
-- @param player Player
-- @return int
function GetPlayerServerId(player) end

-- @todo
-- @module native
-- @submodule cfx
-- @see STOP_RESOURCE
-- @usage BOOL STOP_RESOURCE(char* resourceName);
-- @param resourceName char*
-- @return BOOL
function StopResource(resourceName) end

-- @todo
-- @module native
-- @submodule cfx
-- @see END_FIND_KVP
-- @usage void END_FIND_KVP(int handle);
-- @param handle int
-- @return void
function EndFindKvp(handle) end

-- @todo
-- @module native
-- @submodule cfx
-- @see FLAG_SERVER_AS_PRIVATE
-- @usage void FLAG_SERVER_AS_PRIVATE(BOOL private);
-- @param private BOOL
-- @return void
function FlagServerAsPrivate(private) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_PASSWORD_HASH
-- @usage char* GET_PASSWORD_HASH(char* password);
-- @param password char*
-- @return char*
function GetPasswordHash(password) end

-- @todo
-- @module native
-- @submodule cfx
-- @see START_FIND_KVP
-- @usage int START_FIND_KVP(char* prefix);
-- @param prefix char*
-- @return int
function StartFindKvp(prefix) end

-- Gets whether or not this is the CitizenFX server.  Returns: A boolean value.
-- @module native
-- @submodule cfx
-- @see IS_DUPLICITY_VERSION
-- @usage BOOL IS_DUPLICITY_VERSION();
-- @return BOOL
function IsDuplicityVersion() end

-- @todo
-- @module native
-- @submodule cfx
-- @see DUPLICATE_FUNCTION_REFERENCE
-- @usage char* DUPLICATE_FUNCTION_REFERENCE(char* referenceIdentity);
-- @param referenceIdentity char*
-- @return char*
function DuplicateFunctionReference(referenceIdentity) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_PLAYER_LAST_MSG
-- @usage int GET_PLAYER_LAST_MSG(char* playerSrc);
-- @param playerSrc char*
-- @return int
function GetPlayerLastMsg(playerSrc) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_PLAYER_NAME
-- @usage char* GET_PLAYER_NAME(char* playerSrc);
-- @param playerSrc char*
-- @return char*
function GetPlayerName(playerSrc) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_RESOURCE_BY_FIND_INDEX
-- @usage char* GET_RESOURCE_BY_FIND_INDEX(int findIndex);
-- @param findIndex int
-- @return char*
function GetResourceByFindIndex(findIndex) end

-- Gets the current game timer in milliseconds.  Returns: The game time.
-- @module native
-- @submodule cfx
-- @see GET_GAME_TIMER
-- @usage int GET_GAME_TIMER();
-- @return int
function GetGameTimer() end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_RESOURCE_KVP_INT
-- @usage int GET_RESOURCE_KVP_INT(char* key);
-- @param key char*
-- @return int
function GetResourceKvpInt(key) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_CONVAR_INT
-- @usage int GET_CONVAR_INT(char* varName, int default);
-- @param varName char*
-- @param default int
-- @return int
function GetConvarInt(varName, default) end

-- @todo
-- @module native
-- @submodule cfx
-- @see ADD_TEXT_ENTRY
-- @usage void ADD_TEXT_ENTRY(char* entryKey, char* entryText);
-- @param entryKey char*
-- @param entryText char*
-- @return void
function AddTextEntry(entryKey, entryText) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_RESOURCE_KVP_STRING
-- @usage char* GET_RESOURCE_KVP_STRING(char* key);
-- @param key char*
-- @return char*
function GetResourceKvpString(key) end

-- Registers a specified .gfx file as GFx font library. The .gfx file has to be registered with the streamer already.  Parameters:fileName: The name of the .gfx file, without extension.
-- @module native
-- @submodule cfx
-- @see REGISTER_FONT_FILE
-- @usage void REGISTER_FONT_FILE(char* fileName);
-- @param fileName char*
-- @return void
function RegisterFontFile(fileName) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_PLAYER_FROM_INDEX
-- @usage char* GET_PLAYER_FROM_INDEX(int index);
-- @param index int
-- @return char*
function GetPlayerFromIndex(index) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_PLAYER_FROM_SERVER_ID
-- @usage Player GET_PLAYER_FROM_SERVER_ID(int serverId);
-- @param serverId int
-- @return Player
function GetPlayerFromServerId(serverId) end

-- Cancels the currently executing event. See https://wiki.fivem.net/wiki/CancelEvent
-- @module native
-- @submodule cfx
-- @see CANCEL_EVENT
-- @usage void CANCEL_EVENT();
-- @return void
function CancelEvent() end

-- @todo
-- @module native
-- @submodule cfx
-- @see VERIFY_PASSWORD_HASH
-- @usage BOOL VERIFY_PASSWORD_HASH(char* password, char* hash);
-- @param password char*
-- @param hash char*
-- @return BOOL
function VerifyPasswordHash(password, hash) end

-- Returns whether or not the currently executing event was canceled. See https://wiki.fivem.net/wiki/WasEventCanceled  Returns: A boolean.
-- @module native
-- @submodule cfx
-- @see WAS_EVENT_CANCELED
-- @usage BOOL WAS_EVENT_CANCELED();
-- @return BOOL
function WasEventCanceled() end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_HOST_ID
-- @usage char* GET_HOST_ID();
-- @return char*
function GetHostId() end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_PLAYER_GUID
-- @usage char* GET_PLAYER_GUID(char* playerSrc);
-- @param playerSrc char*
-- @return char*
function GetPlayerGuid(playerSrc) end

-- @todo
-- @module native
-- @submodule cfx
-- @see SET_MAP_NAME
-- @usage void SET_MAP_NAME(char* mapName);
-- @param mapName char*
-- @return void
function SetMapName(mapName) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_PLAYER_PING
-- @usage int GET_PLAYER_PING(char* playerSrc);
-- @param playerSrc char*
-- @return int
function GetPlayerPing(playerSrc) end

-- The backing function for TriggerClientEvent.
-- @module native
-- @submodule cfx
-- @see TRIGGER_CLIENT_EVENT_INTERNAL
-- @usage void TRIGGER_CLIENT_EVENT_INTERNAL(char* eventName, char* eventTarget, char* eventPayload, int payloadLength);
-- @param eventName char*
-- @param eventTarget char*
-- @param eventPayload char*
-- @param payloadLength int
-- @return void
function TriggerClientEventInternal(eventName, eventTarget, eventPayload, payloadLength) end

-- @todo
-- @module native
-- @submodule cfx
-- @see DROP_PLAYER
-- @usage void DROP_PLAYER(char* playerSrc, char* reason);
-- @param playerSrc char*
-- @param reason char*
-- @return void
function DropPlayer(playerSrc, reason) end

-- @todo
-- @module native
-- @submodule cfx
-- @see TEMP_BAN_PLAYER
-- @usage void TEMP_BAN_PLAYER(char* playerSrc, char* reason);
-- @param playerSrc char*
-- @param reason char*
-- @return void
function TempBanPlayer(playerSrc, reason) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_PLAYER_ENDPOINT
-- @usage char* GET_PLAYER_ENDPOINT(char* playerSrc);
-- @param playerSrc char*
-- @return char*
function GetPlayerEndpoint(playerSrc) end

-- Returns the name of the currently executing resource.  Returns: The name of the resource.
-- @module native
-- @submodule cfx
-- @see GET_CURRENT_RESOURCE_NAME
-- @usage char* GET_CURRENT_RESOURCE_NAME();
-- @return char*
function GetCurrentResourceName() end

-- @todo
-- @module native
-- @submodule cfx
-- @see START_RESOURCE
-- @usage BOOL START_RESOURCE(char* resourceName);
-- @param resourceName char*
-- @return BOOL
function StartResource(resourceName) end

-- @todo
-- @module native
-- @submodule cfx
-- @see ENABLE_ENHANCED_HOST_SUPPORT
-- @usage void ENABLE_ENHANCED_HOST_SUPPORT(BOOL enabled);
-- @param enabled BOOL
-- @return void
function EnableEnhancedHostSupport(enabled) end

-- @todo
-- @module native
-- @submodule cfx
-- @see ADD_TEXT_ENTRY_BY_HASH
-- @usage void ADD_TEXT_ENTRY_BY_HASH(Hash entryKey, char* entryText);
-- @param entryKey Hash
-- @param entryText char*
-- @return void
function AddTextEntryByHash(entryKey, entryText) end

-- @todo
-- @module native
-- @submodule cfx
-- @see SET_SNAKEOIL_FOR_ENTRY
-- @usage void SET_SNAKEOIL_FOR_ENTRY(char* name, char* path, char* data);
-- @param name char*
-- @param path char*
-- @param data char*
-- @return void
function SetSnakeoilForEntry(name, path, data) end

-- @todo
-- @module native
-- @submodule cfx
-- @see SET_RESOURCE_KVP_FLOAT
-- @usage void SET_RESOURCE_KVP_FLOAT(char* key, float value);
-- @param key char*
-- @param value float
-- @return void
function SetResourceKvpFloat(key, value) end

-- @todo
-- @module native
-- @submodule cfx
-- @see FIND_KVP
-- @usage char* FIND_KVP(int handle);
-- @param handle int
-- @return char*
function FindKvp(handle) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_NUM_PLAYER_IDENTIFIERS
-- @usage int GET_NUM_PLAYER_IDENTIFIERS(char* playerSrc);
-- @param playerSrc char*
-- @return int
function GetNumPlayerIdentifiers(playerSrc) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_PLAYER_IDENTIFIER
-- @usage char* GET_PLAYER_IDENTIFIER(char* playerSrc, int identifier);
-- @param playerSrc char*
-- @param identifier int
-- @return char*
function GetPlayerIdentifier(playerSrc, identifier) end

-- @todo
-- @module native
-- @submodule cfx
-- @see SET_RESOURCE_KVP_INT
-- @usage void SET_RESOURCE_KVP_INT(char* key, int value);
-- @param key char*
-- @param value int
-- @return void
function SetResourceKvpInt(key, value) end

-- @todo
-- @module native
-- @submodule cfx
-- @see SET_NUI_FOCUS
-- @usage void SET_NUI_FOCUS(BOOL hasFocus);
-- @param hasFocus BOOL
-- @return void
function SetNuiFocus(hasFocus) end

-- @todo
-- @module native
-- @submodule cfx
-- @see SET_MODEL_HEADLIGHT_CONFIGURATION
-- @usage void SET_MODEL_HEADLIGHT_CONFIGURATION(Hash modelHash, float ratePerSecond, float headlightRotation, BOOL invertRotation);
-- @param modelHash Hash
-- @param ratePerSecond float
-- @param headlightRotation float
-- @param invertRotation BOOL
-- @return void
function SetModelHeadlightConfiguration(modelHash, ratePerSecond, headlightRotation, invertRotation) end

-- @todo
-- @module native
-- @submodule cfx
-- @see SET_CONVAR
-- @usage void SET_CONVAR(char* varName, char* value);
-- @param varName char*
-- @param value char*
-- @return void
function SetConvar(varName, value) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_NUM_PLAYER_INDICES
-- @usage int GET_NUM_PLAYER_INDICES();
-- @return int
function GetNumPlayerIndices() end

-- The backing function for TriggerEvent.
-- @module native
-- @submodule cfx
-- @see TRIGGER_EVENT_INTERNAL
-- @usage void TRIGGER_EVENT_INTERNAL(char* eventName, char* eventPayload, int payloadLength);
-- @param eventName char*
-- @param eventPayload char*
-- @param payloadLength int
-- @return void
function TriggerEventInternal(eventName, eventPayload, payloadLength) end

-- Writes the specified data to a file in the specified resource. Using a length of -1 will automatically detect the length assuming the data is a C string.  Parameters:dataLength: The length of the written data.data: The data to write to the file.fileName: The name of the file.resourceName: The name of the resource.Returns: A value indicating if the write succeeded.
-- @module native
-- @submodule cfx
-- @see SAVE_RESOURCE_FILE
-- @usage BOOL SAVE_RESOURCE_FILE(char* resourceName, char* fileName, char* data, int dataLength);
-- @param resourceName char*
-- @param fileName char*
-- @param data char*
-- @param dataLength int
-- @return BOOL
function SaveResourceFile(resourceName, fileName, data, dataLength) end

-- @todo
-- @module native
-- @submodule cfx
-- @see REGISTER_NUI_CALLBACK_TYPE
-- @usage void REGISTER_NUI_CALLBACK_TYPE(char* callbackType);
-- @param callbackType char*
-- @return void
function RegisterNuiCallbackType(callbackType) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_RESOURCE_KVP_FLOAT
-- @usage float GET_RESOURCE_KVP_FLOAT(char* key);
-- @param key char*
-- @return float
function GetResourceKvpFloat(key) end

-- Gets the metadata value at a specified key/index from a resource's manifest. See also: Resource manifest  Parameters:index: The value index, in a range from [0..GETNUMRESOURCE_METDATA-1].resourceName: The resource name.metadataKey: The key in the resource manifest.
-- @module native
-- @submodule cfx
-- @see GET_RESOURCE_METADATA
-- @usage char* GET_RESOURCE_METADATA(char* resourceName, char* metadataKey, int index);
-- @param resourceName char*
-- @param metadataKey char*
-- @param index int
-- @return char*
function GetResourceMetadata(resourceName, metadataKey, index) end

-- @todo
-- @module native
-- @submodule cfx
-- @see GET_NUM_RESOURCES
-- @usage int GET_NUM_RESOURCES();
-- @return int
function GetNumResources() end

-- @todo
-- @module native
-- @submodule cfx
-- @see INVOKE_FUNCTION_REFERENCE
-- @usage char* INVOKE_FUNCTION_REFERENCE(char* referenceIdentity, char* argsSerialized, int argsLength, int* retvalLength);
-- @param referenceIdentity char*
-- @param argsSerialized char*
-- @param argsLength int
-- @param retvalLength int*
-- @return char*
function InvokeFunctionReference(referenceIdentity, argsSerialized, argsLength, retvalLength) end

-- @todo
-- @module native
-- @submodule cfx
-- @see DELETE_RESOURCE_KVP
-- @usage void DELETE_RESOURCE_KVP(char* key);
-- @param key char*
-- @return void
function DeleteResourceKvp(key) end