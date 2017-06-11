-- @todo
-- @module native
-- @submodule app
-- @see APP_DATA_VALID
-- @usage BOOL APP_DATA_VALID();
-- @param undefined
-- @return BOOL
function AppDataValid() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_GET_INT
-- @usage int APP_GET_INT(char* property);
-- @param property char*
-- @return int
function AppGetInt() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_GET_FLOAT
-- @usage float APP_GET_FLOAT(char* property);
-- @param property char*
-- @return float
function AppGetFloat() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_GET_STRING
-- @usage char* APP_GET_STRING(char* property);
-- @param property char*
-- @return char*
function AppGetString() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_SET_INT
-- @usage void APP_SET_INT(char* property, int value);
-- @param property char*
-- @param int
-- @return void
function AppSetInt() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_SET_FLOAT
-- @usage void APP_SET_FLOAT(char* property, float value);
-- @param property char*
-- @param float
-- @return void
function AppSetFloat() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_SET_STRING
-- @usage void APP_SET_STRING(char* property, char* value);
-- @param property char*
-- @param char*
-- @return void
function AppSetString() end

-- Called in the gamescripts like: APP::APP_SET_APP("car"); APP::APP_SET_APP("dog");
-- @module native
-- @submodule app
-- @see APP_SET_APP
-- @usage void APP_SET_APP(char* appName);
-- @param appName char*
-- @return void
function AppSetApp() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_SET_BLOCK
-- @usage void APP_SET_BLOCK(char* blockName);
-- @param blockName char*
-- @return void
function AppSetBlock() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_CLEAR_BLOCK
-- @usage void APP_CLEAR_BLOCK();
-- @param undefined
-- @return void
function AppClearBlock() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_CLOSE_APP
-- @usage void APP_CLOSE_APP();
-- @param undefined
-- @return void
function AppCloseApp() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_CLOSE_BLOCK
-- @usage void APP_CLOSE_BLOCK();
-- @param undefined
-- @return void
function AppCloseBlock() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_HAS_LINKED_SOCIAL_CLUB_ACCOUNT
-- @usage BOOL APP_HAS_LINKED_SOCIAL_CLUB_ACCOUNT();
-- @param undefined
-- @return BOOL
function AppHasLinkedSocialClubAccount() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_HAS_SYNCED_DATA
-- @usage BOOL APP_HAS_SYNCED_DATA(char* appName);
-- @param appName char*
-- @return BOOL
function AppHasSyncedData() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_SAVE_DATA
-- @usage void APP_SAVE_DATA();
-- @param undefined
-- @return void
function AppSaveData() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_GET_DELETED_FILE_STATUS
-- @usage Any APP_GET_DELETED_FILE_STATUS();
-- @param undefined
-- @return Any
function AppGetDeletedFileStatus() end

-- @todo
-- @module native
-- @submodule app
-- @see APP_DELETE_APP_DATA
-- @usage BOOL APP_DELETE_APP_DATA(char* appName);
-- @param appName char*
-- @return BOOL
function AppDeleteAppData() end