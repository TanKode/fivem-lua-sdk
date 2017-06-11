-- @todo
-- @module native
-- @submodule decisionevent
-- @see SET_DECISION_MAKER
-- @usage void SET_DECISION_MAKER(Ped ped, Hash name);
-- @param ped Ped
-- @param Hash
-- @return void
function SetDecisionMaker() end

-- @todo
-- @module native
-- @submodule decisionevent
-- @see CLEAR_DECISION_MAKER_EVENT_RESPONSE
-- @usage void CLEAR_DECISION_MAKER_EVENT_RESPONSE(Hash name, int type);
-- @param name Hash
-- @param int
-- @return void
function ClearDecisionMakerEventResponse() end

-- @todo
-- @module native
-- @submodule decisionevent
-- @see BLOCK_DECISION_MAKER_EVENT
-- @usage void BLOCK_DECISION_MAKER_EVENT(Hash name, int type);
-- @param name Hash
-- @param int
-- @return void
function BlockDecisionMakerEvent() end

-- @todo
-- @module native
-- @submodule decisionevent
-- @see UNBLOCK_DECISION_MAKER_EVENT
-- @usage void UNBLOCK_DECISION_MAKER_EVENT(Hash name, int type);
-- @param name Hash
-- @param int
-- @return void
function UnblockDecisionMakerEvent() end

-- duration is float here  Event types- camx.me/gtav/tasks/shockingevents.txt
-- @module native
-- @submodule decisionevent
-- @see ADD_SHOCKING_EVENT_AT_POSITION
-- @usage ScrHandle ADD_SHOCKING_EVENT_AT_POSITION(int type, float x, float y, float z, float duration);
-- @param type int
-- @param float
-- @return ScrHandle
function AddShockingEventAtPosition() end

-- duration is float here  Event types - camx.me/gtav/tasks/shockingevents.txt
-- @module native
-- @submodule decisionevent
-- @see ADD_SHOCKING_EVENT_FOR_ENTITY
-- @usage ScrHandle ADD_SHOCKING_EVENT_FOR_ENTITY(int type, Entity entity, float duration);
-- @param type int
-- @param Entity
-- @param float
-- @return ScrHandle
function AddShockingEventForEntity() end

-- Some events that i found, not sure about them, but seems to have logic based on my tests:          '82 - dead body         '86          '87          '88 - shooting, fire extinguisher in use         '89          '93 - ped using horn         '95 - ped receiving melee attack         '102 - living ped receiving shot         '104 - player thrown grenade, tear gas, smoke grenade, jerry can dropping gasoline         '105 - melee attack against veh         '106 - player running         '108 - vehicle theft         '112 - melee attack         '113 - veh rollover ped         '114 - dead ped receiving shot         '116 - aiming at ped         '121    Here is full dump of shocking event types from the exe camx.me/gtav/tasks/shockingevents.txt
-- @module native
-- @submodule decisionevent
-- @see IS_SHOCKING_EVENT_IN_SPHERE
-- @usage BOOL IS_SHOCKING_EVENT_IN_SPHERE(int type, float x, float y, float z, float radius);
-- @param type int
-- @param float
-- @return BOOL
function IsShockingEventInSphere() end

-- @todo
-- @module native
-- @submodule decisionevent
-- @see REMOVE_SHOCKING_EVENT
-- @usage BOOL REMOVE_SHOCKING_EVENT(ScrHandle event);
-- @param event ScrHandle
-- @return BOOL
function RemoveShockingEvent() end

-- @todo
-- @module native
-- @submodule decisionevent
-- @see REMOVE_ALL_SHOCKING_EVENTS
-- @usage void REMOVE_ALL_SHOCKING_EVENTS(BOOL p0);
-- @param p0 BOOL
-- @return void
function RemoveAllShockingEvents() end

-- @todo
-- @module native
-- @submodule decisionevent
-- @see REMOVE_SHOCKING_EVENT_SPAWN_BLOCKING_AREAS
-- @usage void REMOVE_SHOCKING_EVENT_SPAWN_BLOCKING_AREAS();
-- @param undefined
-- @return void
function RemoveShockingEventSpawnBlockingAreas() end

-- @todo
-- @module native
-- @submodule decisionevent
-- @see SUPPRESS_SHOCKING_EVENTS_NEXT_FRAME
-- @usage void SUPPRESS_SHOCKING_EVENTS_NEXT_FRAME();
-- @param undefined
-- @return void
function SuppressShockingEventsNextFrame() end

-- @todo
-- @module native
-- @submodule decisionevent
-- @see SUPPRESS_SHOCKING_EVENT_TYPE_NEXT_FRAME
-- @usage void SUPPRESS_SHOCKING_EVENT_TYPE_NEXT_FRAME(int type);
-- @param type int
-- @return void
function SuppressShockingEventTypeNextFrame() end

-- @todo
-- @module native
-- @submodule decisionevent
-- @see SUPPRESS_AGITATION_EVENTS_NEXT_FRAME
-- @usage void SUPPRESS_AGITATION_EVENTS_NEXT_FRAME();
-- @param undefined
-- @return void
function SuppressAgitationEventsNextFrame() end