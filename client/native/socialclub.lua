-- @todo
-- @module native
-- @submodule socialclub
-- @see SC_INBOX_MESSAGE_GET_DATA_INT
-- @usage BOOL SC_INBOX_MESSAGE_GET_DATA_INT(int p0, char* context, int* out);
-- @param p0 int
-- @param context char*
-- @param out int*
-- @return BOOL
function ScInboxMessageGetDataInt(p0, context, out) end

-- @todo
-- @module native
-- @submodule socialclub
-- @see SC_INBOX_MESSAGE_GET_DATA_STRING
-- @usage BOOL SC_INBOX_MESSAGE_GET_DATA_STRING(int p0, char* context, char* out);
-- @param p0 int
-- @param context char*
-- @param out char*
-- @return BOOL
function ScInboxMessageGetDataString(p0, context, out) end

-- @todo
-- @module native
-- @submodule socialclub
-- @see SC_INBOX_MESSAGE_GET_UGCDATA
-- @usage BOOL SC_INBOX_MESSAGE_GET_UGCDATA(Any p0, Any* p1);
-- @param p0 Any
-- @param p1 Any*
-- @return BOOL
function ScInboxMessageGetUgcdata(p0, p1) end

-- @todo
-- @module native
-- @submodule socialclub
-- @see SC_EMAIL_MESSAGE_PUSH_GAMER_TO_RECIP_LIST
-- @usage void SC_EMAIL_MESSAGE_PUSH_GAMER_TO_RECIP_LIST(Player* player);
-- @param player Player*
-- @return void
function ScEmailMessagePushGamerToRecipList(player) end

-- @todo
-- @module native
-- @submodule socialclub
-- @see SC_EMAIL_MESSAGE_CLEAR_RECIP_LIST
-- @usage void SC_EMAIL_MESSAGE_CLEAR_RECIP_LIST();
-- @return void
function ScEmailMessageClearRecipList() end