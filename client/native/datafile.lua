-- @todo
-- @module native
-- @submodule datafile
-- @see DATAFILE_CREATE
-- @usage void DATAFILE_CREATE();
-- @param undefined
-- @return void
function DatafileCreate() end

-- @todo
-- @module native
-- @submodule datafile
-- @see DATAFILE_DELETE
-- @usage void DATAFILE_DELETE();
-- @param undefined
-- @return void
function DatafileDelete() end

-- @todo
-- @module native
-- @submodule datafile
-- @see DATAFILE_GET_FILE_DICT
-- @usage char* DATAFILE_GET_FILE_DICT();
-- @param undefined
-- @return char*
function DatafileGetFileDict() end

-- Example: if (!DATAFILE::_BEDB96A7584AA8CF()) {     if (!g_109E3) 	{         if (((sub_d4f() == 2) == 0) && (!NETWORK::NETWORK_IS_GAME_IN_PROGRESS())) 		{             if (NETWORK::NETWORK_IS_CLOUD_AVAILABLE()) 			{                 g_17A8B = 0;             }             if (!g_D52C) 			{                 sub_730();             }         }     } }
-- @module native
-- @submodule datafile
-- @see DATAFILE_IS_SAVE_PENDING
-- @usage BOOL DATAFILE_IS_SAVE_PENDING();
-- @param undefined
-- @return BOOL
function DatafileIsSavePending() end