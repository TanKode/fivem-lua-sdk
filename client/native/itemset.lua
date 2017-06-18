-- @todo
-- @module native
-- @submodule itemset
-- @see CREATE_ITEMSET
-- @usage Any CREATE_ITEMSET(Vector3* distri);
-- @param distri Vector3*
-- @return Any
function CreateItemset(distri) end

-- @todo
-- @module native
-- @submodule itemset
-- @see DESTROY_ITEMSET
-- @usage void DESTROY_ITEMSET(Any p0);
-- @param p0 Any
-- @return void
function DestroyItemset(p0) end

-- @todo
-- @module native
-- @submodule itemset
-- @see IS_ITEMSET_VALID
-- @usage BOOL IS_ITEMSET_VALID(Any p0);
-- @param p0 Any
-- @return BOOL
function IsItemsetValid(p0) end

-- @todo
-- @module native
-- @submodule itemset
-- @see ADD_TO_ITEMSET
-- @usage BOOL ADD_TO_ITEMSET(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return BOOL
function AddToItemset(p0, p1) end

-- @todo
-- @module native
-- @submodule itemset
-- @see REMOVE_FROM_ITEMSET
-- @usage void REMOVE_FROM_ITEMSET(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return void
function RemoveFromItemset(p0, p1) end

-- @todo
-- @module native
-- @submodule itemset
-- @see GET_ITEMSET_SIZE
-- @usage Any GET_ITEMSET_SIZE(Any p0);
-- @param p0 Any
-- @return Any
function GetItemsetSize(p0) end

-- @todo
-- @module native
-- @submodule itemset
-- @see GET_INDEXED_ITEM_IN_ITEMSET
-- @usage Any GET_INDEXED_ITEM_IN_ITEMSET(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return Any
function GetIndexedItemInItemset(p0, p1) end

-- @todo
-- @module native
-- @submodule itemset
-- @see IS_IN_ITEMSET
-- @usage BOOL IS_IN_ITEMSET(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return BOOL
function IsInItemset(p0, p1) end

-- @todo
-- @module native
-- @submodule itemset
-- @see CLEAN_ITEMSET
-- @usage void CLEAN_ITEMSET(Any p0);
-- @param p0 Any
-- @return void
function CleanItemset(p0) end