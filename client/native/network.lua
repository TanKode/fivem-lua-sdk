-- Returns whether the player is signed into Social Club.
-- @module native
-- @submodule network
-- @see NETWORK_IS_SIGNED_IN
-- @usage BOOL NETWORK_IS_SIGNED_IN();
-- @return BOOL
function NetworkIsSignedIn() end

-- Returns whether the game is not in offline mode.  seemed not to work for some ppl
-- @module native
-- @submodule network
-- @see NETWORK_IS_SIGNED_ONLINE
-- @usage BOOL NETWORK_IS_SIGNED_ONLINE();
-- @return BOOL
function NetworkIsSignedOnline() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_CLOUD_AVAILABLE
-- @usage BOOL NETWORK_IS_CLOUD_AVAILABLE();
-- @return BOOL
function NetworkIsCloudAvailable() end

-- If you are host, returns true else returns false.  anyone know how to use this to find correct host? is possible?
-- @module native
-- @submodule network
-- @see NETWORK_IS_HOST
-- @usage BOOL NETWORK_IS_HOST();
-- @return BOOL
function NetworkIsHost() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HAVE_ONLINE_PRIVILEGES
-- @usage BOOL NETWORK_HAVE_ONLINE_PRIVILEGES();
-- @return BOOL
function NetworkHaveOnlinePrivileges() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CAN_BAIL
-- @usage BOOL NETWORK_CAN_BAIL();
-- @return BOOL
function NetworkCanBail() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_BAIL
-- @usage void NETWORK_BAIL();
-- @return void
function NetworkBail() end

-- 11 - Need to download tunables. 12 - Need to download background script.  Returns 1 if the multiplayer is loaded, otherwhise 0.
-- @module native
-- @submodule network
-- @see NETWORK_CAN_ACCESS_MULTIPLAYER
-- @usage BOOL NETWORK_CAN_ACCESS_MULTIPLAYER(int* loadingState);
-- @param loadingState int*
-- @return BOOL
function NetworkCanAccessMultiplayer(loadingState) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_MULTIPLAYER_DISABLED
-- @usage BOOL NETWORK_IS_MULTIPLAYER_DISABLED();
-- @return BOOL
function NetworkIsMultiplayerDisabled() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CAN_ENTER_MULTIPLAYER
-- @usage BOOL NETWORK_CAN_ENTER_MULTIPLAYER();
-- @return BOOL
function NetworkCanEnterMultiplayer() end

-- unknown params  p0 = 0, 2, or 999 (The global is 999 by default.) p1 = 0 (Always in every script it's found in atleast.) p2 = 0, 3, or 4 (Based on a var that is determined by a function.) p3 = maxPlayers (It's obvious in x360 scripts it's always 18) p4 = 0 (Always in every script it's found in atleast.) p5 = 0 or 1. (1 if network_can_enter_multiplayer, but set to 0 if other checks after that are passed.) p5 is reset to 0 if, Global_1315318 = 0 or Global_1315323 = 9 or 12 or (Global_1312629 = 0 && Global_1312631 = true/1) those are passed.
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_ENTER
-- @usage Any NETWORK_SESSION_ENTER(Any p0, Any p1, Any p2, int maxPlayers, Any p4, Any p5);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param maxPlayers int
-- @param p4 Any
-- @param p5 Any
-- @return Any
function NetworkSessionEnter(p0, p1, p2, maxPlayers, p4, p5) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_FRIEND_MATCHMAKING
-- @usage BOOL NETWORK_SESSION_FRIEND_MATCHMAKING(int p0, int p1, int maxPlayers, BOOL p3);
-- @param p0 int
-- @param p1 int
-- @param maxPlayers int
-- @param p3 BOOL
-- @return BOOL
function NetworkSessionFriendMatchmaking(p0, p1, maxPlayers, p3) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_CREW_MATCHMAKING
-- @usage BOOL NETWORK_SESSION_CREW_MATCHMAKING(int p0, int p1, int p2, int maxPlayers, BOOL p4);
-- @param p0 int
-- @param p1 int
-- @param p2 int
-- @param maxPlayers int
-- @param p4 BOOL
-- @return BOOL
function NetworkSessionCrewMatchmaking(p0, p1, p2, maxPlayers, p4) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_ACTIVITY_QUICKMATCH
-- @usage BOOL NETWORK_SESSION_ACTIVITY_QUICKMATCH(Any p0, Any p1, Any p2, Any p3);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @return BOOL
function NetworkSessionActivityQuickmatch(p0, p1, p2, p3) end

-- Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_HOST
-- @usage BOOL NETWORK_SESSION_HOST(int p0, int maxPlayers, BOOL p2);
-- @param p0 int
-- @param maxPlayers int
-- @param p2 BOOL
-- @return BOOL
function NetworkSessionHost(p0, maxPlayers, p2) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_HOST_CLOSED
-- @usage BOOL NETWORK_SESSION_HOST_CLOSED(int p0, int maxPlayers);
-- @param p0 int
-- @param maxPlayers int
-- @return BOOL
function NetworkSessionHostClosed(p0, maxPlayers) end

-- Does nothing in online but in offline it will cause the screen to fade to black. Nothing happens past then, the screen will sit at black until you restart GTA. Other stuff must be needed to actually host a session.
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_HOST_FRIENDS_ONLY
-- @usage BOOL NETWORK_SESSION_HOST_FRIENDS_ONLY(int p0, int maxPlayers);
-- @param p0 int
-- @param maxPlayers int
-- @return BOOL
function NetworkSessionHostFriendsOnly(p0, maxPlayers) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_IS_CLOSED_FRIENDS
-- @usage BOOL NETWORK_SESSION_IS_CLOSED_FRIENDS();
-- @return BOOL
function NetworkSessionIsClosedFriends() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_IS_CLOSED_CREW
-- @usage BOOL NETWORK_SESSION_IS_CLOSED_CREW();
-- @return BOOL
function NetworkSessionIsClosedCrew() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_IS_SOLO
-- @usage BOOL NETWORK_SESSION_IS_SOLO();
-- @return BOOL
function NetworkSessionIsSolo() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_IS_PRIVATE
-- @usage BOOL NETWORK_SESSION_IS_PRIVATE();
-- @return BOOL
function NetworkSessionIsPrivate() end

-- p0 is always false and p1 varies. NETWORK_SESSION_END(0, 1) NETWORK_SESSION_END(0, 0) Results in: "Connection to session lost due to an unknown network error. Please return to Grand Theft Auto V and try again later."
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_END
-- @usage BOOL NETWORK_SESSION_END(BOOL p0, BOOL p1);
-- @param p0 BOOL
-- @param p1 BOOL
-- @return BOOL
function NetworkSessionEnd(p0, p1) end

-- Only works when you are host.
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_KICK_PLAYER
-- @usage void NETWORK_SESSION_KICK_PLAYER(Player player);
-- @param player Player
-- @return void
function NetworkSessionKickPlayer(player) end

-- ..
-- @module native
-- @submodule network
-- @see NETWORK_ADD_FOLLOWERS
-- @usage void NETWORK_ADD_FOLLOWERS(int* p0, int p1);
-- @param p0 int*
-- @param p1 int
-- @return void
function NetworkAddFollowers(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLEAR_FOLLOWERS
-- @usage void NETWORK_CLEAR_FOLLOWERS();
-- @return void
function NetworkClearFollowers() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_X_AFFECTS_GAMERS
-- @usage BOOL NETWORK_X_AFFECTS_GAMERS(Any p0);
-- @param p0 Any
-- @return BOOL
function NetworkXAffectsGamers(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_FIND_MATCHED_GAMERS
-- @usage BOOL NETWORK_FIND_MATCHED_GAMERS(Any p0, float p1, float p2, float p3);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @return BOOL
function NetworkFindMatchedGamers(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_FINDING_GAMERS
-- @usage BOOL NETWORK_IS_FINDING_GAMERS();
-- @return BOOL
function NetworkIsFindingGamers() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_NUM_FOUND_GAMERS
-- @usage int NETWORK_GET_NUM_FOUND_GAMERS();
-- @return int
function NetworkGetNumFoundGamers() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_FOUND_GAMER
-- @usage BOOL NETWORK_GET_FOUND_GAMER(Any* p0, Any p1);
-- @param p0 Any*
-- @param p1 Any
-- @return BOOL
function NetworkGetFoundGamer(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLEAR_FOUND_GAMERS
-- @usage void NETWORK_CLEAR_FOUND_GAMERS();
-- @return void
function NetworkClearFoundGamers() end

-- hash collision
-- @module native
-- @submodule network
-- @see NETWORK_IS_PLAYER_ANIMATION_DRAWING_SYNCHRONIZED
-- @usage void NETWORK_IS_PLAYER_ANIMATION_DRAWING_SYNCHRONIZED();
-- @return void
function NetworkIsPlayerAnimationDrawingSynchronized() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_CANCEL_INVITE
-- @usage void NETWORK_SESSION_CANCEL_INVITE();
-- @return void
function NetworkSessionCancelInvite() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_FORCE_CANCEL_INVITE
-- @usage void NETWORK_SESSION_FORCE_CANCEL_INVITE();
-- @return void
function NetworkSessionForceCancelInvite() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HAS_PENDING_INVITE
-- @usage BOOL NETWORK_HAS_PENDING_INVITE();
-- @return BOOL
function NetworkHasPendingInvite() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_WAS_INVITED
-- @usage BOOL NETWORK_SESSION_WAS_INVITED();
-- @return BOOL
function NetworkSessionWasInvited() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_GET_INVITER
-- @usage void NETWORK_SESSION_GET_INVITER(int* networkHandle);
-- @param networkHandle int*
-- @return void
function NetworkSessionGetInviter(networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SUPPRESS_INVITE
-- @usage void NETWORK_SUPPRESS_INVITE(BOOL toggle);
-- @param toggle BOOL
-- @return void
function NetworkSuppressInvite(toggle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_BLOCK_INVITES
-- @usage void NETWORK_BLOCK_INVITES(BOOL toggle);
-- @param toggle BOOL
-- @return void
function NetworkBlockInvites(toggle) end

-- Loads up the map that is loaded when beeing in mission creator Player gets placed in a mix between online/offline mode p0 is always 2 in R* scripts.  Appears to be patched in gtav b757 (game gets terminated) alonside with most other network natives to prevent online modding ~ghost30812
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_HOST_SINGLE_PLAYER
-- @usage void NETWORK_SESSION_HOST_SINGLE_PLAYER(int p0);
-- @param p0 int
-- @return void
function NetworkSessionHostSinglePlayer(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_LEAVE_SINGLE_PLAYER
-- @usage void NETWORK_SESSION_LEAVE_SINGLE_PLAYER();
-- @return void
function NetworkSessionLeaveSinglePlayer() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_GAME_IN_PROGRESS
-- @usage BOOL NETWORK_IS_GAME_IN_PROGRESS();
-- @return BOOL
function NetworkIsGameInProgress() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_SESSION_ACTIVE
-- @usage BOOL NETWORK_IS_SESSION_ACTIVE();
-- @return BOOL
function NetworkIsSessionActive() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_IN_SESSION
-- @usage BOOL NETWORK_IS_IN_SESSION();
-- @return BOOL
function NetworkIsInSession() end

-- This checks if player is playing on gta online or not. Please add an if and block your mod if this is "true".
-- @module native
-- @submodule network
-- @see NETWORK_IS_SESSION_STARTED
-- @usage BOOL NETWORK_IS_SESSION_STARTED();
-- @return BOOL
function NetworkIsSessionStarted() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_SESSION_BUSY
-- @usage BOOL NETWORK_IS_SESSION_BUSY();
-- @return BOOL
function NetworkIsSessionBusy() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CAN_SESSION_END
-- @usage BOOL NETWORK_CAN_SESSION_END();
-- @return BOOL
function NetworkCanSessionEnd() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_MARK_VISIBLE
-- @usage void NETWORK_SESSION_MARK_VISIBLE(BOOL p0);
-- @param p0 BOOL
-- @return void
function NetworkSessionMarkVisible(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_IS_VISIBLE
-- @usage Any NETWORK_SESSION_IS_VISIBLE();
-- @return Any
function NetworkSessionIsVisible() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_BLOCK_JOIN_REQUESTS
-- @usage void NETWORK_SESSION_BLOCK_JOIN_REQUESTS(BOOL p0);
-- @param p0 BOOL
-- @return void
function NetworkSessionBlockJoinRequests(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_CHANGE_SLOTS
-- @usage void NETWORK_SESSION_CHANGE_SLOTS(int p0, BOOL p1);
-- @param p0 int
-- @param p1 BOOL
-- @return void
function NetworkSessionChangeSlots(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_VOICE_HOST
-- @usage void NETWORK_SESSION_VOICE_HOST();
-- @return void
function NetworkSessionVoiceHost() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SESSION_VOICE_LEAVE
-- @usage void NETWORK_SESSION_VOICE_LEAVE();
-- @return void
function NetworkSessionVoiceLeave() end

-- hash collision???
-- @module native
-- @submodule network
-- @see NETWORK_SET_KEEP_FOCUSPOINT
-- @usage void NETWORK_SET_KEEP_FOCUSPOINT(BOOL p0, Any p1);
-- @param p0 BOOL
-- @param p1 Any
-- @return void
function NetworkSetKeepFocuspoint(p0, p1) end

-- how can I increase the character limit on this native? --------------------------------  return - it's possible for it to have an error and return a value. One error is if it cannot find space to create the event it doesn't send the text and returns zero. It also returns 0 is the strlen is 0 or the strlen > 0x100 (I thought it was 64 so idk why it's checking 265. I may just be dumb :P ) There are other ways it could return 0 also but who the hell cares cuz it's very unlikely, but it returns a bool.   to the top guy, idk if it is possible. It is probably read a max of 64 characters on the recieving end so even if we did modify it to send more it probably wouldn't work. One of the other problems is that in part of the function it copies the string to the local stack which means we would have to change that to make it work.
-- @module native
-- @submodule network
-- @see NETWORK_SEND_TEXT_MESSAGE
-- @usage BOOL NETWORK_SEND_TEXT_MESSAGE(char* message, int* networkHandle);
-- @param message char*
-- @param networkHandle int*
-- @return BOOL
function NetworkSendTextMessage(message, networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_ACTIVITY_SPECTATOR
-- @usage void NETWORK_SET_ACTIVITY_SPECTATOR(BOOL toggle);
-- @param toggle BOOL
-- @return void
function NetworkSetActivitySpectator(toggle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_ACTIVITY_SPECTATOR
-- @usage Any NETWORK_IS_ACTIVITY_SPECTATOR();
-- @return Any
function NetworkIsActivitySpectator() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_ACTIVITY_SPECTATOR_MAX
-- @usage void NETWORK_SET_ACTIVITY_SPECTATOR_MAX(int maxSpectators);
-- @param maxSpectators int
-- @return void
function NetworkSetActivitySpectatorMax(maxSpectators) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_ACTIVITY_PLAYER_NUM
-- @usage int NETWORK_GET_ACTIVITY_PLAYER_NUM(BOOL p0);
-- @param p0 BOOL
-- @return int
function NetworkGetActivityPlayerNum(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_ACTIVITY_SPECTATOR_FROM_HANDLE
-- @usage BOOL NETWORK_IS_ACTIVITY_SPECTATOR_FROM_HANDLE(int* networkHandle);
-- @param networkHandle int*
-- @return BOOL
function NetworkIsActivitySpectatorFromHandle(networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HOST_TRANSITION
-- @usage Any NETWORK_HOST_TRANSITION(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @param p5 Any
-- @return Any
function NetworkHostTransition(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_DO_TRANSITION_QUICKMATCH
-- @usage BOOL NETWORK_DO_TRANSITION_QUICKMATCH(Any p0, Any p1, Any p2, Any p3);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @return BOOL
function NetworkDoTransitionQuickmatch(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_DO_TRANSITION_QUICKMATCH_ASYNC
-- @usage BOOL NETWORK_DO_TRANSITION_QUICKMATCH_ASYNC(Any p0, Any p1, Any p2, Any p3);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @return BOOL
function NetworkDoTransitionQuickmatchAsync(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_DO_TRANSITION_QUICKMATCH_WITH_GROUP
-- @usage BOOL NETWORK_DO_TRANSITION_QUICKMATCH_WITH_GROUP(Any p0, Any p1, Any p2, Any p3, Any* p4, Any p5);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any*
-- @param p5 Any
-- @return BOOL
function NetworkDoTransitionQuickmatchWithGroup(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_JOIN_GROUP_ACTIVITY
-- @usage Any NETWORK_JOIN_GROUP_ACTIVITY();
-- @return Any
function NetworkJoinGroupActivity() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_TRANSITION_CREATOR_HANDLE
-- @usage void NETWORK_SET_TRANSITION_CREATOR_HANDLE(Any* p0);
-- @param p0 Any*
-- @return void
function NetworkSetTransitionCreatorHandle(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLEAR_TRANSITION_CREATOR_HANDLE
-- @usage void NETWORK_CLEAR_TRANSITION_CREATOR_HANDLE();
-- @return void
function NetworkClearTransitionCreatorHandle() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_INVITE_GAMERS_TO_TRANSITION
-- @usage BOOL NETWORK_INVITE_GAMERS_TO_TRANSITION(Any* p0, Any p1);
-- @param p0 Any*
-- @param p1 Any
-- @return BOOL
function NetworkInviteGamersToTransition(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_GAMER_INVITED_TO_TRANSITION
-- @usage void NETWORK_SET_GAMER_INVITED_TO_TRANSITION(int* networkHandle);
-- @param networkHandle int*
-- @return void
function NetworkSetGamerInvitedToTransition(networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_LEAVE_TRANSITION
-- @usage Any NETWORK_LEAVE_TRANSITION();
-- @return Any
function NetworkLeaveTransition() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_LAUNCH_TRANSITION
-- @usage Any NETWORK_LAUNCH_TRANSITION();
-- @return Any
function NetworkLaunchTransition() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_BAIL_TRANSITION
-- @usage void NETWORK_BAIL_TRANSITION();
-- @return void
function NetworkBailTransition() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_DO_TRANSITION_TO_GAME
-- @usage BOOL NETWORK_DO_TRANSITION_TO_GAME(BOOL p0, int maxPlayers);
-- @param p0 BOOL
-- @param maxPlayers int
-- @return BOOL
function NetworkDoTransitionToGame(p0, maxPlayers) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_DO_TRANSITION_TO_NEW_GAME
-- @usage BOOL NETWORK_DO_TRANSITION_TO_NEW_GAME(BOOL p0, int maxPlayers, BOOL p2);
-- @param p0 BOOL
-- @param maxPlayers int
-- @param p2 BOOL
-- @return BOOL
function NetworkDoTransitionToNewGame(p0, maxPlayers, p2) end

-- p2 is true 3/4 of the occurrences I found. 'players' is the number of players for a session. On PS3/360 it's always 18. On PC it's 32.
-- @module native
-- @submodule network
-- @see NETWORK_DO_TRANSITION_TO_FREEMODE
-- @usage BOOL NETWORK_DO_TRANSITION_TO_FREEMODE(Any* p0, Any p1, BOOL p2, int players, BOOL p4);
-- @param p0 Any*
-- @param p1 Any
-- @param p2 BOOL
-- @param players int
-- @param p4 BOOL
-- @return BOOL
function NetworkDoTransitionToFreemode(p0, p1, p2, players, p4) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_DO_TRANSITION_TO_NEW_FREEMODE
-- @usage BOOL NETWORK_DO_TRANSITION_TO_NEW_FREEMODE(Any* p0, Any* p1, int players, BOOL p3, BOOL p4, BOOL p5);
-- @param p0 Any*
-- @param p1 Any*
-- @param players int
-- @param p3 BOOL
-- @param p4 BOOL
-- @param p5 BOOL
-- @return BOOL
function NetworkDoTransitionToNewFreemode(p0, p1, players, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_TRANSITION_TO_GAME
-- @usage Any NETWORK_IS_TRANSITION_TO_GAME();
-- @return Any
function NetworkIsTransitionToGame() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_TRANSITION_MEMBERS
-- @usage Any NETWORK_GET_TRANSITION_MEMBERS(Any* p0, Any p1);
-- @param p0 Any*
-- @param p1 Any
-- @return Any
function NetworkGetTransitionMembers(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_APPLY_TRANSITION_PARAMETER
-- @usage void NETWORK_APPLY_TRANSITION_PARAMETER(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return void
function NetworkApplyTransitionParameter(p0, p1) end

-- the first arg seems to be the network player handle (&handle) and the second var is pretty much always "" and the third seems to be a number between 0 and ~10 and the 4th is is something like 0 to 5 and I guess the 5th is a bool cuz it is always 0 or 1  does this send an invite to a player?
-- @module native
-- @submodule network
-- @see NETWORK_SEND_TRANSITION_GAMER_INSTRUCTION
-- @usage BOOL NETWORK_SEND_TRANSITION_GAMER_INSTRUCTION(int* networkHandle, char* p1, int p2, int p3, BOOL p4);
-- @param networkHandle int*
-- @param p1 char*
-- @param p2 int
-- @param p3 int
-- @param p4 BOOL
-- @return BOOL
function NetworkSendTransitionGamerInstruction(networkHandle, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_MARK_TRANSITION_GAMER_AS_FULLY_JOINED
-- @usage BOOL NETWORK_MARK_TRANSITION_GAMER_AS_FULLY_JOINED(Any* p0);
-- @param p0 Any*
-- @return BOOL
function NetworkMarkTransitionGamerAsFullyJoined(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_TRANSITION_HOST
-- @usage Any NETWORK_IS_TRANSITION_HOST();
-- @return Any
function NetworkIsTransitionHost() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_TRANSITION_HOST_FROM_HANDLE
-- @usage BOOL NETWORK_IS_TRANSITION_HOST_FROM_HANDLE(int* networkHandle);
-- @param networkHandle int*
-- @return BOOL
function NetworkIsTransitionHostFromHandle(networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_TRANSITION_HOST
-- @usage BOOL NETWORK_GET_TRANSITION_HOST(int* networkHandle);
-- @param networkHandle int*
-- @return BOOL
function NetworkGetTransitionHost(networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_IN_TRANSITION
-- @usage BOOL NETWORK_IS_IN_TRANSITION();
-- @return BOOL
function NetworkIsInTransition() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_TRANSITION_STARTED
-- @usage BOOL NETWORK_IS_TRANSITION_STARTED();
-- @return BOOL
function NetworkIsTransitionStarted() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_TRANSITION_BUSY
-- @usage Any NETWORK_IS_TRANSITION_BUSY();
-- @return Any
function NetworkIsTransitionBusy() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_TRANSITION_MATCHMAKING
-- @usage Any NETWORK_IS_TRANSITION_MATCHMAKING();
-- @return Any
function NetworkIsTransitionMatchmaking() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_OPEN_TRANSITION_MATCHMAKING
-- @usage void NETWORK_OPEN_TRANSITION_MATCHMAKING();
-- @return void
function NetworkOpenTransitionMatchmaking() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLOSE_TRANSITION_MATCHMAKING
-- @usage void NETWORK_CLOSE_TRANSITION_MATCHMAKING();
-- @return void
function NetworkCloseTransitionMatchmaking() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_TRANSITION_ACTIVITY_ID
-- @usage void NETWORK_SET_TRANSITION_ACTIVITY_ID(Any p0);
-- @param p0 Any
-- @return void
function NetworkSetTransitionActivityId(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CHANGE_TRANSITION_SLOTS
-- @usage void NETWORK_CHANGE_TRANSITION_SLOTS(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return void
function NetworkChangeTransitionSlots(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HAS_PLAYER_STARTED_TRANSITION
-- @usage BOOL NETWORK_HAS_PLAYER_STARTED_TRANSITION(Player player);
-- @param player Player
-- @return BOOL
function NetworkHasPlayerStartedTransition(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_ARE_TRANSITION_DETAILS_VALID
-- @usage BOOL NETWORK_ARE_TRANSITION_DETAILS_VALID(Any p0);
-- @param p0 Any
-- @return BOOL
function NetworkAreTransitionDetailsValid(p0) end

-- int handle[76]; 			NETWORK_HANDLE_FROM_FRIEND(iSelectedPlayer, &handle[0], 13); 			Player uVar2 = NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(&handle[0]); 			NETWORK_JOIN_TRANSITION(uVar2); nothing doin.
-- @module native
-- @submodule network
-- @see NETWORK_JOIN_TRANSITION
-- @usage BOOL NETWORK_JOIN_TRANSITION(Player player);
-- @param player Player
-- @return BOOL
function NetworkJoinTransition(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HAS_INVITED_GAMER_TO_TRANSITION
-- @usage BOOL NETWORK_HAS_INVITED_GAMER_TO_TRANSITION(Any* p0);
-- @param p0 Any*
-- @return BOOL
function NetworkHasInvitedGamerToTransition(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_ACTIVITY_SESSION
-- @usage BOOL NETWORK_IS_ACTIVITY_SESSION();
-- @return BOOL
function NetworkIsActivitySession() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_NUM_PRESENCE_INVITES
-- @usage int NETWORK_GET_NUM_PRESENCE_INVITES();
-- @return int
function NetworkGetNumPresenceInvites() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_ACCEPT_PRESENCE_INVITE
-- @usage BOOL NETWORK_ACCEPT_PRESENCE_INVITE(Any p0);
-- @param p0 Any
-- @return BOOL
function NetworkAcceptPresenceInvite(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_REMOVE_PRESENCE_INVITE
-- @usage BOOL NETWORK_REMOVE_PRESENCE_INVITE(Any p0);
-- @param p0 Any
-- @return BOOL
function NetworkRemovePresenceInvite(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PRESENCE_INVITE_ID
-- @usage Any NETWORK_GET_PRESENCE_INVITE_ID(Any p0);
-- @param p0 Any
-- @return Any
function NetworkGetPresenceInviteId(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PRESENCE_INVITE_INVITER
-- @usage Any NETWORK_GET_PRESENCE_INVITE_INVITER(Any p0);
-- @param p0 Any
-- @return Any
function NetworkGetPresenceInviteInviter(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PRESENCE_INVITE_HANDLE
-- @usage BOOL NETWORK_GET_PRESENCE_INVITE_HANDLE(Any p0, Any* p1);
-- @param p0 Any
-- @param p1 Any*
-- @return BOOL
function NetworkGetPresenceInviteHandle(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PRESENCE_INVITE_SESSION_ID
-- @usage Any NETWORK_GET_PRESENCE_INVITE_SESSION_ID(Any p0);
-- @param p0 Any
-- @return Any
function NetworkGetPresenceInviteSessionId(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HAS_FOLLOW_INVITE
-- @usage BOOL NETWORK_HAS_FOLLOW_INVITE();
-- @return BOOL
function NetworkHasFollowInvite() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_ACTION_FOLLOW_INVITE
-- @usage Any NETWORK_ACTION_FOLLOW_INVITE();
-- @return Any
function NetworkActionFollowInvite() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLEAR_FOLLOW_INVITE
-- @usage Any NETWORK_CLEAR_FOLLOW_INVITE();
-- @return Any
function NetworkClearFollowInvite() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_REMOVE_TRANSITION_INVITE
-- @usage void NETWORK_REMOVE_TRANSITION_INVITE(Any* p0);
-- @param p0 Any*
-- @return void
function NetworkRemoveTransitionInvite(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_REMOVE_ALL_TRANSITION_INVITE
-- @usage void NETWORK_REMOVE_ALL_TRANSITION_INVITE();
-- @return void
function NetworkRemoveAllTransitionInvite() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_INVITE_GAMERS
-- @usage BOOL NETWORK_INVITE_GAMERS(Any* p0, Any p1, Any* p2, Any* p3);
-- @param p0 Any*
-- @param p1 Any
-- @param p2 Any*
-- @param p3 Any*
-- @return BOOL
function NetworkInviteGamers(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HAS_INVITED_GAMER
-- @usage BOOL NETWORK_HAS_INVITED_GAMER(Any* p0);
-- @param p0 Any*
-- @return BOOL
function NetworkHasInvitedGamer(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU
-- @usage BOOL NETWORK_GET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU(Any* p0);
-- @param p0 Any*
-- @return BOOL
function NetworkGetCurrentlySelectedGamerHandleFromInviteMenu(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU
-- @usage BOOL NETWORK_SET_CURRENTLY_SELECTED_GAMER_HANDLE_FROM_INVITE_MENU(Any* p0);
-- @param p0 Any*
-- @return BOOL
function NetworkSetCurrentlySelectedGamerHandleFromInviteMenu(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see FILLOUT_PM_PLAYER_LIST
-- @usage BOOL FILLOUT_PM_PLAYER_LIST(int* networkHandle, Any p1, Any p2);
-- @param networkHandle int*
-- @param p1 Any
-- @param p2 Any
-- @return BOOL
function FilloutPmPlayerList(networkHandle, p1, p2) end

-- @todo
-- @module native
-- @submodule network
-- @see FILLOUT_PM_PLAYER_LIST_WITH_NAMES
-- @usage BOOL FILLOUT_PM_PLAYER_LIST_WITH_NAMES(Any* p0, Any* p1, Any p2, Any p3);
-- @param p0 Any*
-- @param p1 Any*
-- @param p2 Any
-- @param p3 Any
-- @return BOOL
function FilloutPmPlayerListWithNames(p0, p1, p2, p3) end

-- hash collision?
-- @module native
-- @submodule network
-- @see USING_NETWORK_WEAPONTYPE
-- @usage BOOL USING_NETWORK_WEAPONTYPE(Any p0);
-- @param p0 Any
-- @return BOOL
function UsingNetworkWeapontype(p0) end

-- This would be nice to see if someone is in party chat, but 2 sad notes. 1) It only becomes true if said person is speaking in that party at the time. 2) It will never, become true unless you are in that party with said person.
-- @module native
-- @submodule network
-- @see NETWORK_IS_CHATTING_IN_PLATFORM_PARTY
-- @usage BOOL NETWORK_IS_CHATTING_IN_PLATFORM_PARTY(int* networkHandle);
-- @param networkHandle int*
-- @return BOOL
function NetworkIsChattingInPlatformParty(networkHandle) end

-- Note according to IDA TU27 X360(Console), This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location. Side note: This location just stops where it's at once jumped to. Screenshot for side note,  h t t p ://i.imgur.com/m2ci1mF.png h t t p://i.imgur.com/Z0Wx2B6.png
-- @module native
-- @submodule network
-- @see NETWORK_IS_IN_PARTY
-- @usage BOOL NETWORK_IS_IN_PARTY();
-- @return BOOL
function NetworkIsInParty() end

-- Note according to IDA TU27 X360(Console), This native & 'NETWORK_IS_PARTY_MEMBER' both jump to the same location. Side note: This location just stops where it's at once jumped to. Screenshot for side note,  h t t p ://i.imgur.com/m2ci1mF.png h t t p://i.imgur.com/Z0Wx2B6.png
-- @module native
-- @submodule network
-- @see NETWORK_IS_PARTY_MEMBER
-- @usage BOOL NETWORK_IS_PARTY_MEMBER(int* networkHandle);
-- @param networkHandle int*
-- @return BOOL
function NetworkIsPartyMember(networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_RANDOM_INT
-- @usage int NETWORK_GET_RANDOM_INT();
-- @return int
function NetworkGetRandomInt() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_PLAYER_IS_CHEATER
-- @usage BOOL NETWORK_PLAYER_IS_CHEATER();
-- @return BOOL
function NetworkPlayerIsCheater() end

-- Returns whether the player has been reported too often or not. Example : griefing.
-- @module native
-- @submodule network
-- @see NETWORK_PLAYER_IS_BADSPORT
-- @usage BOOL NETWORK_PLAYER_IS_BADSPORT();
-- @return BOOL
function NetworkPlayerIsBadsport() end

-- @todo
-- @module native
-- @submodule network
-- @see BAD_SPORT_PLAYER_LEFT_DETECTED
-- @usage BOOL BAD_SPORT_PLAYER_LEFT_DETECTED(int* networkHandle, int event, int amountReceived);
-- @param networkHandle int*
-- @param event int
-- @param amountReceived int
-- @return BOOL
function BadSportPlayerLeftDetected(networkHandle, event, amountReceived) end

-- p1 is always 0
-- @module native
-- @submodule network
-- @see NETWORK_SET_THIS_SCRIPT_IS_NETWORK_SCRIPT
-- @usage void NETWORK_SET_THIS_SCRIPT_IS_NETWORK_SCRIPT(int lobbySize, BOOL p1, int playerId);
-- @param lobbySize int
-- @param p1 BOOL
-- @param playerId int
-- @return void
function NetworkSetThisScriptIsNetworkScript(lobbySize, p1, playerId) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_THIS_SCRIPT_IS_NETWORK_SCRIPT
-- @usage BOOL NETWORK_GET_THIS_SCRIPT_IS_NETWORK_SCRIPT();
-- @return BOOL
function NetworkGetThisScriptIsNetworkScript() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_NUM_PARTICIPANTS
-- @usage int NETWORK_GET_NUM_PARTICIPANTS();
-- @return int
function NetworkGetNumParticipants() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_SCRIPT_STATUS
-- @usage int NETWORK_GET_SCRIPT_STATUS();
-- @return int
function NetworkGetScriptStatus() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_REGISTER_HOST_BROADCAST_VARIABLES
-- @usage void NETWORK_REGISTER_HOST_BROADCAST_VARIABLES(int* vars, int numVars);
-- @param vars int*
-- @param numVars int
-- @return void
function NetworkRegisterHostBroadcastVariables(vars, numVars) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_REGISTER_PLAYER_BROADCAST_VARIABLES
-- @usage void NETWORK_REGISTER_PLAYER_BROADCAST_VARIABLES(int* vars, int numVars);
-- @param vars int*
-- @param numVars int
-- @return void
function NetworkRegisterPlayerBroadcastVariables(vars, numVars) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PLAYER_INDEX
-- @usage int NETWORK_GET_PLAYER_INDEX(Player player);
-- @param player Player
-- @return int
function NetworkGetPlayerIndex(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PARTICIPANT_INDEX
-- @usage int NETWORK_GET_PARTICIPANT_INDEX(int index);
-- @param index int
-- @return int
function NetworkGetParticipantIndex(index) end

-- Returns the Player associated to a given Ped when in an online session.
-- @module native
-- @submodule network
-- @see NETWORK_GET_PLAYER_INDEX_FROM_PED
-- @usage Player NETWORK_GET_PLAYER_INDEX_FROM_PED(Ped ped);
-- @param ped Ped
-- @return Player
function NetworkGetPlayerIndexFromPed(ped) end

-- Returns the amount of players connected in the current session. Only works when connected to a session/server.
-- @module native
-- @submodule network
-- @see NETWORK_GET_NUM_CONNECTED_PLAYERS
-- @usage int NETWORK_GET_NUM_CONNECTED_PLAYERS();
-- @return int
function NetworkGetNumConnectedPlayers() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_PLAYER_CONNECTED
-- @usage BOOL NETWORK_IS_PLAYER_CONNECTED(Player player);
-- @param player Player
-- @return BOOL
function NetworkIsPlayerConnected(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_PARTICIPANT_ACTIVE
-- @usage BOOL NETWORK_IS_PARTICIPANT_ACTIVE(Any p0);
-- @param p0 Any
-- @return BOOL
function NetworkIsParticipantActive(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_PLAYER_ACTIVE
-- @usage BOOL NETWORK_IS_PLAYER_ACTIVE(Player player);
-- @param player Player
-- @return BOOL
function NetworkIsPlayerActive(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_PLAYER_A_PARTICIPANT
-- @usage BOOL NETWORK_IS_PLAYER_A_PARTICIPANT(Any p0);
-- @param p0 Any
-- @return BOOL
function NetworkIsPlayerAParticipant(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_HOST_OF_THIS_SCRIPT
-- @usage BOOL NETWORK_IS_HOST_OF_THIS_SCRIPT();
-- @return BOOL
function NetworkIsHostOfThisScript() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_HOST_OF_THIS_SCRIPT
-- @usage Any NETWORK_GET_HOST_OF_THIS_SCRIPT();
-- @return Any
function NetworkGetHostOfThisScript() end

-- scriptName examples: "freemode", "AM_CR_SecurityVan", ...  Most of the time, these values are used: p1 = -1 p2 = 0
-- @module native
-- @submodule network
-- @see NETWORK_GET_HOST_OF_SCRIPT
-- @usage int NETWORK_GET_HOST_OF_SCRIPT(char* scriptName, int p1, int p2);
-- @param scriptName char*
-- @param p1 int
-- @param p2 int
-- @return int
function NetworkGetHostOfScript(scriptName, p1, p2) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_MISSION_FINISHED
-- @usage void NETWORK_SET_MISSION_FINISHED();
-- @return void
function NetworkSetMissionFinished() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_SCRIPT_ACTIVE
-- @usage BOOL NETWORK_IS_SCRIPT_ACTIVE(char* scriptName, Any p1, BOOL p2, Any p3);
-- @param scriptName char*
-- @param p1 Any
-- @param p2 BOOL
-- @param p3 Any
-- @return BOOL
function NetworkIsScriptActive(scriptName, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_NUM_SCRIPT_PARTICIPANTS
-- @usage int NETWORK_GET_NUM_SCRIPT_PARTICIPANTS(Any* p0, Any p1, Any p2);
-- @param p0 Any*
-- @param p1 Any
-- @param p2 Any
-- @return int
function NetworkGetNumScriptParticipants(p0, p1, p2) end

-- Return the local Participant ID
-- @module native
-- @submodule network
-- @see PARTICIPANT_ID
-- @usage Player PARTICIPANT_ID();
-- @return Player
function ParticipantId() end

-- Return the local Participant ID.  This native is exactly the same as 'PARTICIPANT_ID' native.
-- @module native
-- @submodule network
-- @see PARTICIPANT_ID_TO_INT
-- @usage int PARTICIPANT_ID_TO_INT();
-- @return int
function ParticipantIdToInt() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_DESTROYER_OF_NETWORK_ID
-- @usage int NETWORK_GET_DESTROYER_OF_NETWORK_ID(int netId, Hash* weaponHash);
-- @param netId int
-- @param weaponHash Hash*
-- @return int
function NetworkGetDestroyerOfNetworkId(netId, weaponHash) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_ENTITY_KILLER_OF_PLAYER
-- @usage Entity NETWORK_GET_ENTITY_KILLER_OF_PLAYER(Player player, Hash* weaponHash);
-- @param player Player
-- @param weaponHash Hash*
-- @return Entity
function NetworkGetEntityKillerOfPlayer(player, weaponHash) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_RESURRECT_LOCAL_PLAYER
-- @usage void NETWORK_RESURRECT_LOCAL_PLAYER(float x, float y, float z, float heading, BOOL unk, BOOL changetime);
-- @param x float
-- @param y float
-- @param z float
-- @param heading float
-- @param unk BOOL
-- @param changetime BOOL
-- @return void
function NetworkResurrectLocalPlayer(x, y, z, heading, unk, changetime) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_LOCAL_PLAYER_INVINCIBLE_TIME
-- @usage void NETWORK_SET_LOCAL_PLAYER_INVINCIBLE_TIME(int time);
-- @param time int
-- @return void
function NetworkSetLocalPlayerInvincibleTime(time) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_LOCAL_PLAYER_INVINCIBLE
-- @usage BOOL NETWORK_IS_LOCAL_PLAYER_INVINCIBLE();
-- @return BOOL
function NetworkIsLocalPlayerInvincible() end

-- hash collision???
-- @module native
-- @submodule network
-- @see NETWORK_DISABLE_INVINCIBLE_FLASHING
-- @usage void NETWORK_DISABLE_INVINCIBLE_FLASHING(int player, BOOL p1);
-- @param player int
-- @param p1 BOOL
-- @return void
function NetworkDisableInvincibleFlashing(player, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_NETWORK_ID_FROM_ENTITY
-- @usage int NETWORK_GET_NETWORK_ID_FROM_ENTITY(Entity entity);
-- @param entity Entity
-- @return int
function NetworkGetNetworkIdFromEntity(entity) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_ENTITY_FROM_NETWORK_ID
-- @usage Entity NETWORK_GET_ENTITY_FROM_NETWORK_ID(int netId);
-- @param netId int
-- @return Entity
function NetworkGetEntityFromNetworkId(netId) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_ENTITY_IS_NETWORKED
-- @usage BOOL NETWORK_GET_ENTITY_IS_NETWORKED(Entity entity);
-- @param entity Entity
-- @return BOOL
function NetworkGetEntityIsNetworked(entity) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_ENTITY_IS_LOCAL
-- @usage BOOL NETWORK_GET_ENTITY_IS_LOCAL(Entity entity);
-- @param entity Entity
-- @return BOOL
function NetworkGetEntityIsLocal(entity) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_REGISTER_ENTITY_AS_NETWORKED
-- @usage void NETWORK_REGISTER_ENTITY_AS_NETWORKED(Entity entity);
-- @param entity Entity
-- @return void
function NetworkRegisterEntityAsNetworked(entity) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_UNREGISTER_NETWORKED_ENTITY
-- @usage void NETWORK_UNREGISTER_NETWORKED_ENTITY(Entity entity);
-- @param entity Entity
-- @return void
function NetworkUnregisterNetworkedEntity(entity) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_DOES_NETWORK_ID_EXIST
-- @usage BOOL NETWORK_DOES_NETWORK_ID_EXIST(int netID);
-- @param netID int
-- @return BOOL
function NetworkDoesNetworkIdExist(netID) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_DOES_ENTITY_EXIST_WITH_NETWORK_ID
-- @usage BOOL NETWORK_DOES_ENTITY_EXIST_WITH_NETWORK_ID(Entity entity);
-- @param entity Entity
-- @return BOOL
function NetworkDoesEntityExistWithNetworkId(entity) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_REQUEST_CONTROL_OF_NETWORK_ID
-- @usage BOOL NETWORK_REQUEST_CONTROL_OF_NETWORK_ID(int netId);
-- @param netId int
-- @return BOOL
function NetworkRequestControlOfNetworkId(netId) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HAS_CONTROL_OF_NETWORK_ID
-- @usage BOOL NETWORK_HAS_CONTROL_OF_NETWORK_ID(int netId);
-- @param netId int
-- @return BOOL
function NetworkHasControlOfNetworkId(netId) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_REQUEST_CONTROL_OF_ENTITY
-- @usage BOOL NETWORK_REQUEST_CONTROL_OF_ENTITY(Entity entity);
-- @param entity Entity
-- @return BOOL
function NetworkRequestControlOfEntity(entity) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_REQUEST_CONTROL_OF_DOOR
-- @usage BOOL NETWORK_REQUEST_CONTROL_OF_DOOR(int doorID);
-- @param doorID int
-- @return BOOL
function NetworkRequestControlOfDoor(doorID) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HAS_CONTROL_OF_ENTITY
-- @usage BOOL NETWORK_HAS_CONTROL_OF_ENTITY(Entity entity);
-- @param entity Entity
-- @return BOOL
function NetworkHasControlOfEntity(entity) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HAS_CONTROL_OF_PICKUP
-- @usage BOOL NETWORK_HAS_CONTROL_OF_PICKUP(Pickup pickup);
-- @param pickup Pickup
-- @return BOOL
function NetworkHasControlOfPickup(pickup) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HAS_CONTROL_OF_DOOR
-- @usage BOOL NETWORK_HAS_CONTROL_OF_DOOR(int doorID);
-- @param doorID int
-- @return BOOL
function NetworkHasControlOfDoor(doorID) end

-- calls from vehicle to net.
-- @module native
-- @submodule network
-- @see VEH_TO_NET
-- @usage int VEH_TO_NET(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return int
function VehToNet(vehicle) end

-- @todo
-- @module native
-- @submodule network
-- @see PED_TO_NET
-- @usage int PED_TO_NET(Ped ped);
-- @param ped Ped
-- @return int
function PedToNet(ped) end

-- Lets objects spawn online simply do it like this:  int createdObject = OBJ_TO_NET(CREATE_OBJECT_NO_OFFSET(oball, pCoords.x, pCoords.y, pCoords.z, 1, 0, 0));
-- @module native
-- @submodule network
-- @see OBJ_TO_NET
-- @usage int OBJ_TO_NET(Object object);
-- @param object Object
-- @return int
function ObjToNet(object) end

-- @todo
-- @module native
-- @submodule network
-- @see NET_TO_VEH
-- @usage Vehicle NET_TO_VEH(int netHandle);
-- @param netHandle int
-- @return Vehicle
function NetToVeh(netHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NET_TO_PED
-- @usage Ped NET_TO_PED(int netHandle);
-- @param netHandle int
-- @return Ped
function NetToPed(netHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NET_TO_OBJ
-- @usage Object NET_TO_OBJ(int netHandle);
-- @param netHandle int
-- @return Object
function NetToObj(netHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NET_TO_ENT
-- @usage Entity NET_TO_ENT(int netHandle);
-- @param netHandle int
-- @return Entity
function NetToEnt(netHandle) end

-- Retrieves the local player's NetworkHandle* and stores it in the given buffer.  * Currently unknown struct
-- @module native
-- @submodule network
-- @see NETWORK_GET_LOCAL_HANDLE
-- @usage void NETWORK_GET_LOCAL_HANDLE(int* networkHandle, int bufferSize);
-- @param networkHandle int*
-- @param bufferSize int
-- @return void
function NetworkGetLocalHandle(networkHandle, bufferSize) end

-- Returns a NetworkHandle* from the specified user ID and stores it in a given buffer.  * Currently unknown struct
-- @module native
-- @submodule network
-- @see NETWORK_HANDLE_FROM_USER_ID
-- @usage void NETWORK_HANDLE_FROM_USER_ID(char* userId, int* networkHandle, int bufferSize);
-- @param userId char*
-- @param networkHandle int*
-- @param bufferSize int
-- @return void
function NetworkHandleFromUserId(userId, networkHandle, bufferSize) end

-- Returns a NetworkHandle* from the specified member ID and stores it in a given buffer.  * Currently unknown struct
-- @module native
-- @submodule network
-- @see NETWORK_HANDLE_FROM_MEMBER_ID
-- @usage void NETWORK_HANDLE_FROM_MEMBER_ID(char* memberId, int* networkHandle, int bufferSize);
-- @param memberId char*
-- @param networkHandle int*
-- @param bufferSize int
-- @return void
function NetworkHandleFromMemberId(memberId, networkHandle, bufferSize) end

-- Returns a handle to networkHandle* from the specified player handle and stores it in a given buffer.  * Currently unknown struct  Example: std::vector<UINT64> GetPlayerNetworkHandle(Player player) {     const int size = 13;     uint64_t *buffer = std::make_unique<uint64_t[]>(size).get();     NETWORK::NETWORK_HANDLE_FROM_PLAYER(player, reinterpret_cast<int *>(buffer), 13);     for (int i = 0; i < size; i++) {         Log::Msg("networkhandle[%i]: %llx", i, buffer[i]);     }     std::vector<UINT64> result(buffer, buffer + sizeof(buffer));     return result; }
-- @module native
-- @submodule network
-- @see NETWORK_HANDLE_FROM_PLAYER
-- @usage void NETWORK_HANDLE_FROM_PLAYER(Player player, int* networkHandle, int bufferSize);
-- @param player Player
-- @param networkHandle int*
-- @param bufferSize int
-- @return void
function NetworkHandleFromPlayer(player, networkHandle, bufferSize) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HANDLE_FROM_FRIEND
-- @usage void NETWORK_HANDLE_FROM_FRIEND(Player friendIndex, int* networkHandle, int bufferSize);
-- @param friendIndex Player
-- @param networkHandle int*
-- @param bufferSize int
-- @return void
function NetworkHandleFromFriend(friendIndex, networkHandle, bufferSize) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GAMERTAG_FROM_HANDLE_START
-- @usage BOOL NETWORK_GAMERTAG_FROM_HANDLE_START(int* networkHandle);
-- @param networkHandle int*
-- @return BOOL
function NetworkGamertagFromHandleStart(networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GAMERTAG_FROM_HANDLE_PENDING
-- @usage BOOL NETWORK_GAMERTAG_FROM_HANDLE_PENDING();
-- @return BOOL
function NetworkGamertagFromHandlePending() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GAMERTAG_FROM_HANDLE_SUCCEEDED
-- @usage BOOL NETWORK_GAMERTAG_FROM_HANDLE_SUCCEEDED();
-- @return BOOL
function NetworkGamertagFromHandleSucceeded() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_GAMERTAG_FROM_HANDLE
-- @usage char* NETWORK_GET_GAMERTAG_FROM_HANDLE(int* networkHandle);
-- @param networkHandle int*
-- @return char*
function NetworkGetGamertagFromHandle(networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_ARE_HANDLES_THE_SAME
-- @usage BOOL NETWORK_ARE_HANDLES_THE_SAME(int* netHandle1, int* netHandle2);
-- @param netHandle1 int*
-- @param netHandle2 int*
-- @return BOOL
function NetworkAreHandlesTheSame(netHandle1, netHandle2) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_HANDLE_VALID
-- @usage BOOL NETWORK_IS_HANDLE_VALID(int* networkHandle, int bufferSize);
-- @param networkHandle int*
-- @param bufferSize int
-- @return BOOL
function NetworkIsHandleValid(networkHandle, bufferSize) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PLAYER_FROM_GAMER_HANDLE
-- @usage Player NETWORK_GET_PLAYER_FROM_GAMER_HANDLE(int* networkHandle);
-- @param networkHandle int*
-- @return Player
function NetworkGetPlayerFromGamerHandle(networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_MEMBER_ID_FROM_GAMER_HANDLE
-- @usage char* NETWORK_MEMBER_ID_FROM_GAMER_HANDLE(int* networkHandle);
-- @param networkHandle int*
-- @return char*
function NetworkMemberIdFromGamerHandle(networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_GAMER_IN_MY_SESSION
-- @usage BOOL NETWORK_IS_GAMER_IN_MY_SESSION(int* networkHandle);
-- @param networkHandle int*
-- @return BOOL
function NetworkIsGamerInMySession(networkHandle) end

-- Example:  int playerHandle;	 NETWORK_HANDLE_FROM_PLAYER(selectedPlayer, &playerHandle, 13); NETWORK_SHOW_PROFILE_UI(&playerHandle);
-- @module native
-- @submodule network
-- @see NETWORK_SHOW_PROFILE_UI
-- @usage void NETWORK_SHOW_PROFILE_UI(int* networkHandle);
-- @param networkHandle int*
-- @return void
function NetworkShowProfileUi(networkHandle) end

-- Returns the name of a given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
-- @module native
-- @submodule network
-- @see NETWORK_PLAYER_GET_NAME
-- @usage char* NETWORK_PLAYER_GET_NAME(Player player);
-- @param player Player
-- @return char*
function NetworkPlayerGetName(player) end

-- Returns the user id of a given player. Returns "**Invalid**" if CPlayerInfo of the given player cannot be retrieved or the player doesn't exist.
-- @module native
-- @submodule network
-- @see NETWORK_PLAYER_GET_USERID
-- @usage char* NETWORK_PLAYER_GET_USERID(Player player, int* userID);
-- @param player Player
-- @param userID int*
-- @return char*
function NetworkPlayerGetUserid(player, userID) end

-- Checks if a specific value (BYTE) in CPlayerInfo is nonzero. Returns always false in Singleplayer.  No longer used for dev checks since first mods were released on PS3 & 360. R* now checks with the is_dlc_present native for the dlc hash 2532323046, if that is present it will unlock dev stuff.
-- @module native
-- @submodule network
-- @see NETWORK_PLAYER_IS_ROCKSTAR_DEV
-- @usage BOOL NETWORK_PLAYER_IS_ROCKSTAR_DEV(Player player);
-- @param player Player
-- @return BOOL
function NetworkPlayerIsRockstarDev(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_INACTIVE_PROFILE
-- @usage BOOL NETWORK_IS_INACTIVE_PROFILE(Any* p0);
-- @param p0 Any*
-- @return BOOL
function NetworkIsInactiveProfile(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_MAX_FRIENDS
-- @usage int NETWORK_GET_MAX_FRIENDS();
-- @return int
function NetworkGetMaxFriends() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_FRIEND_COUNT
-- @usage int NETWORK_GET_FRIEND_COUNT();
-- @return int
function NetworkGetFriendCount() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_FRIEND_NAME
-- @usage char* NETWORK_GET_FRIEND_NAME(Player player);
-- @param player Player
-- @return char*
function NetworkGetFriendName(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_FRIEND_ONLINE
-- @usage BOOL NETWORK_IS_FRIEND_ONLINE(char* name);
-- @param name char*
-- @return BOOL
function NetworkIsFriendOnline(name) end

-- In scripts R* calls 'NETWORK_GET_FRIEND_NAME' in this param.
-- @module native
-- @submodule network
-- @see NETWORK_IS_FRIEND_IN_SAME_TITLE
-- @usage BOOL NETWORK_IS_FRIEND_IN_SAME_TITLE(char* friendName);
-- @param friendName char*
-- @return BOOL
function NetworkIsFriendInSameTitle(friendName) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_FRIEND_IN_MULTIPLAYER
-- @usage BOOL NETWORK_IS_FRIEND_IN_MULTIPLAYER(char* friendName);
-- @param friendName char*
-- @return BOOL
function NetworkIsFriendInMultiplayer(friendName) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_FRIEND
-- @usage BOOL NETWORK_IS_FRIEND(int* networkHandle);
-- @param networkHandle int*
-- @return BOOL
function NetworkIsFriend(networkHandle) end

-- This function is hard-coded to always return 0.
-- @module native
-- @submodule network
-- @see NETWORK_IS_PENDING_FRIEND
-- @usage Any NETWORK_IS_PENDING_FRIEND(Any p0);
-- @param p0 Any
-- @return Any
function NetworkIsPendingFriend(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_ADDING_FRIEND
-- @usage Any NETWORK_IS_ADDING_FRIEND();
-- @return Any
function NetworkIsAddingFriend() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_ADD_FRIEND
-- @usage BOOL NETWORK_ADD_FRIEND(Any* p0, char* p1);
-- @param p0 Any*
-- @param p1 char*
-- @return BOOL
function NetworkAddFriend(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_FRIEND_INDEX_ONLINE
-- @usage BOOL NETWORK_IS_FRIEND_INDEX_ONLINE(int friendIndex);
-- @param friendIndex int
-- @return BOOL
function NetworkIsFriendIndexOnline(friendIndex) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CAN_SET_WAYPOINT
-- @usage BOOL NETWORK_CAN_SET_WAYPOINT();
-- @return BOOL
function NetworkCanSetWaypoint() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_HAS_HEADSET
-- @usage BOOL NETWORK_HAS_HEADSET();
-- @return BOOL
function NetworkHasHeadset() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GAMER_HAS_HEADSET
-- @usage BOOL NETWORK_GAMER_HAS_HEADSET(Any* p0);
-- @param p0 Any*
-- @return BOOL
function NetworkGamerHasHeadset(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_GAMER_TALKING
-- @usage BOOL NETWORK_IS_GAMER_TALKING(int* p0);
-- @param p0 int*
-- @return BOOL
function NetworkIsGamerTalking(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CAN_COMMUNICATE_WITH_GAMER
-- @usage BOOL NETWORK_CAN_COMMUNICATE_WITH_GAMER(int* player);
-- @param player int*
-- @return BOOL
function NetworkCanCommunicateWithGamer(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_GAMER_MUTED_BY_ME
-- @usage BOOL NETWORK_IS_GAMER_MUTED_BY_ME(int* p0);
-- @param p0 int*
-- @return BOOL
function NetworkIsGamerMutedByMe(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_AM_I_MUTED_BY_GAMER
-- @usage BOOL NETWORK_AM_I_MUTED_BY_GAMER(Any* p0);
-- @param p0 Any*
-- @return BOOL
function NetworkAmIMutedByGamer(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_GAMER_BLOCKED_BY_ME
-- @usage BOOL NETWORK_IS_GAMER_BLOCKED_BY_ME(Any* p0);
-- @param p0 Any*
-- @return BOOL
function NetworkIsGamerBlockedByMe(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_AM_I_BLOCKED_BY_GAMER
-- @usage BOOL NETWORK_AM_I_BLOCKED_BY_GAMER(Any* p0);
-- @param p0 Any*
-- @return BOOL
function NetworkAmIBlockedByGamer(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_PLAYER_TALKING
-- @usage BOOL NETWORK_IS_PLAYER_TALKING(Player player);
-- @param player Player
-- @return BOOL
function NetworkIsPlayerTalking(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_PLAYER_HAS_HEADSET
-- @usage BOOL NETWORK_PLAYER_HAS_HEADSET(Player player);
-- @param player Player
-- @return BOOL
function NetworkPlayerHasHeadset(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_PLAYER_MUTED_BY_ME
-- @usage BOOL NETWORK_IS_PLAYER_MUTED_BY_ME(Player player);
-- @param player Player
-- @return BOOL
function NetworkIsPlayerMutedByMe(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_AM_I_MUTED_BY_PLAYER
-- @usage BOOL NETWORK_AM_I_MUTED_BY_PLAYER(Player player);
-- @param player Player
-- @return BOOL
function NetworkAmIMutedByPlayer(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_PLAYER_BLOCKED_BY_ME
-- @usage BOOL NETWORK_IS_PLAYER_BLOCKED_BY_ME(Player player);
-- @param player Player
-- @return BOOL
function NetworkIsPlayerBlockedByMe(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_AM_I_BLOCKED_BY_PLAYER
-- @usage BOOL NETWORK_AM_I_BLOCKED_BY_PLAYER(Player player);
-- @param player Player
-- @return BOOL
function NetworkAmIBlockedByPlayer(player) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PLAYER_LOUDNESS
-- @usage float NETWORK_GET_PLAYER_LOUDNESS(Any p0);
-- @param p0 Any
-- @return float
function NetworkGetPlayerLoudness(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_TALKER_PROXIMITY
-- @usage void NETWORK_SET_TALKER_PROXIMITY(float p0);
-- @param p0 float
-- @return void
function NetworkSetTalkerProximity(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_TALKER_PROXIMITY
-- @usage Any NETWORK_GET_TALKER_PROXIMITY();
-- @return Any
function NetworkGetTalkerProximity() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_VOICE_ACTIVE
-- @usage void NETWORK_SET_VOICE_ACTIVE(BOOL toggle);
-- @param toggle BOOL
-- @return void
function NetworkSetVoiceActive(toggle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_OVERRIDE_TRANSITION_CHAT
-- @usage void NETWORK_OVERRIDE_TRANSITION_CHAT(BOOL p0);
-- @param p0 BOOL
-- @return void
function NetworkOverrideTransitionChat(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_TEAM_ONLY_CHAT
-- @usage void NETWORK_SET_TEAM_ONLY_CHAT(BOOL toggle);
-- @param toggle BOOL
-- @return void
function NetworkSetTeamOnlyChat(toggle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_OVERRIDE_SPECTATOR_MODE
-- @usage void NETWORK_SET_OVERRIDE_SPECTATOR_MODE(BOOL toggle);
-- @param toggle BOOL
-- @return void
function NetworkSetOverrideSpectatorMode(toggle) end

-- Could possibly bypass being muted or automatically muted? Who knows.
-- @module native
-- @submodule network
-- @see NETWORK_OVERRIDE_CHAT_RESTRICTIONS
-- @usage void NETWORK_OVERRIDE_CHAT_RESTRICTIONS(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function NetworkOverrideChatRestrictions(player, toggle) end

-- R* uses this to hear all player when spectating.  It allows you to hear other online players when their chat is on none, crew and or friends
-- @module native
-- @submodule network
-- @see NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS
-- @usage void NETWORK_OVERRIDE_RECEIVE_RESTRICTIONS(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function NetworkOverrideReceiveRestrictions(player, toggle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_VOICE_CHANNEL
-- @usage void NETWORK_SET_VOICE_CHANNEL(Any p0);
-- @param p0 Any
-- @return void
function NetworkSetVoiceChannel(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLEAR_VOICE_CHANNEL
-- @usage void NETWORK_CLEAR_VOICE_CHANNEL();
-- @return void
function NetworkClearVoiceChannel() end

-- hash collision.  Definitely a hash collision, has something do to with your local player, not a vehicle
-- @module native
-- @submodule network
-- @see IS_NETWORK_VEHICLE_BEEN_DAMAGED_BY_ANY_OBJECT
-- @usage BOOL IS_NETWORK_VEHICLE_BEEN_DAMAGED_BY_ANY_OBJECT(float x, float y, float z);
-- @param x float
-- @param y float
-- @param z float
-- @return BOOL
function IsNetworkVehicleBeenDamagedByAnyObject(x, y, z) end

-- Starts a new singleplayer game (at the prologue).
-- @module native
-- @submodule network
-- @see SHUTDOWN_AND_LAUNCH_SINGLE_PLAYER_GAME
-- @usage void SHUTDOWN_AND_LAUNCH_SINGLE_PLAYER_GAME();
-- @return void
function ShutdownAndLaunchSinglePlayerGame() end

-- //friendly fire toggle
-- @module native
-- @submodule network
-- @see NETWORK_SET_FRIENDLY_FIRE_OPTION
-- @usage void NETWORK_SET_FRIENDLY_FIRE_OPTION(BOOL toggle);
-- @param toggle BOOL
-- @return void
function NetworkSetFriendlyFireOption(toggle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_RICH_PRESENCE
-- @usage void NETWORK_SET_RICH_PRESENCE(Any p0, Any p1, Any p2, Any p3);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @return void
function NetworkSetRichPresence(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_TIMEOUT_TIME
-- @usage int NETWORK_GET_TIMEOUT_TIME();
-- @return int
function NetworkGetTimeoutTime() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLAN_PLAYER_IS_ACTIVE
-- @usage BOOL NETWORK_CLAN_PLAYER_IS_ACTIVE(int* networkHandle);
-- @param networkHandle int*
-- @return BOOL
function NetworkClanPlayerIsActive(networkHandle) end

-- bufferSize is 35 in the scripts.  bufferSize is the elementCount of p0(desc), sizeof(p0) == 280 == p1*8 == 35 * 8, p2(netHandle) is obtained from NETWORK::NETWORK_HANDLE_FROM_PLAYER.  And no, I can't explain why 35 * sizeof(int) == 280 and not 140, but I'll get back to you on that.  the answer is: because p0 an int64_t* / int64_t[35].  and FYI p2 is an int64_t[13]  pastebin.com/cSZniHak
-- @module native
-- @submodule network
-- @see NETWORK_CLAN_PLAYER_GET_DESC
-- @usage BOOL NETWORK_CLAN_PLAYER_GET_DESC(int* clanDesc, int bufferSize, int* networkHandle);
-- @param clanDesc int*
-- @param bufferSize int
-- @param networkHandle int*
-- @return BOOL
function NetworkClanPlayerGetDesc(clanDesc, bufferSize, networkHandle) end

-- networkMembershipMgr memShip; 		int maxMemship = _GET_NUM_MEMBERSHIP_DESC(); 		for (int i = 0; i < maxMemship; i++) 		{ 			NETWORK_CLAN_GET_MEMBERSHIP_DESC(&memShip.memHandle, i); 		}
-- @module native
-- @submodule network
-- @see NETWORK_CLAN_GET_MEMBERSHIP_DESC
-- @usage BOOL NETWORK_CLAN_GET_MEMBERSHIP_DESC(int* memberDesc, int p1);
-- @param memberDesc int*
-- @param p1 int
-- @return BOOL
function NetworkClanGetMembershipDesc(memberDesc, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLAN_DOWNLOAD_MEMBERSHIP
-- @usage BOOL NETWORK_CLAN_DOWNLOAD_MEMBERSHIP(int* networkHandle);
-- @param networkHandle int*
-- @return BOOL
function NetworkClanDownloadMembership(networkHandle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLAN_DOWNLOAD_MEMBERSHIP_PENDING
-- @usage BOOL NETWORK_CLAN_DOWNLOAD_MEMBERSHIP_PENDING(Any* p0);
-- @param p0 Any*
-- @return BOOL
function NetworkClanDownloadMembershipPending(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE
-- @usage BOOL NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE(int* p0);
-- @param p0 int*
-- @return BOOL
function NetworkClanRemoteMembershipsAreInCache(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLAN_GET_MEMBERSHIP_COUNT
-- @usage int NETWORK_CLAN_GET_MEMBERSHIP_COUNT(int* p0);
-- @param p0 int*
-- @return int
function NetworkClanGetMembershipCount(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLAN_GET_MEMBERSHIP_VALID
-- @usage BOOL NETWORK_CLAN_GET_MEMBERSHIP_VALID(int* p0, Any p1);
-- @param p0 int*
-- @param p1 Any
-- @return BOOL
function NetworkClanGetMembershipValid(p0, p1) end

-- BOOL DEBUG_MEMBRESHIP(int Param) 	{ 		int membership; 		networkHandleMgr handle; 		NETWORK_HANDLE_FROM_PLAYER(iSelectedPlayer, &handle.netHandle, 13);  		if (!_NETWORK_IS_CLAN_MEMBERSHIP_FINISHED_DOWNLOADING()) 		{ 			if (NETWORK_CLAN_REMOTE_MEMBERSHIPS_ARE_IN_CACHE(&Param)) 			{ 				if (NETWORK_CLAN_GET_MEMBERSHIP_COUNT(&Param) > 0) 				{ 					if (NETWORK_CLAN_GET_MEMBERSHIP_VALID(&Param, 0)) 					{ 						if (NETWORK_CLAN_GET_MEMBERSHIP(&Param, &membership, -1)) 						{ 							_0xF633805A(&membership, 35, &handle.netHandle); 						} 					} 				} 			} 		} 		else 		{ 			NETWORK_CLAN_DOWNLOAD_MEMBERSHIP(&handle.netHandle); 		} 	}
-- @module native
-- @submodule network
-- @see NETWORK_CLAN_GET_MEMBERSHIP
-- @usage BOOL NETWORK_CLAN_GET_MEMBERSHIP(int* p0, int* clanMembership, int p2);
-- @param p0 int*
-- @param clanMembership int*
-- @param p2 int
-- @return BOOL
function NetworkClanGetMembership(p0, clanMembership, p2) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLAN_JOIN
-- @usage BOOL NETWORK_CLAN_JOIN(int clanDesc);
-- @param clanDesc int
-- @return BOOL
function NetworkClanJoin(clanDesc) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PRIMARY_CLAN_DATA_CLEAR
-- @usage Any NETWORK_GET_PRIMARY_CLAN_DATA_CLEAR();
-- @return Any
function NetworkGetPrimaryClanDataClear() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PRIMARY_CLAN_DATA_CANCEL
-- @usage void NETWORK_GET_PRIMARY_CLAN_DATA_CANCEL();
-- @return void
function NetworkGetPrimaryClanDataCancel() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PRIMARY_CLAN_DATA_START
-- @usage BOOL NETWORK_GET_PRIMARY_CLAN_DATA_START(Any* p0, Any p1);
-- @param p0 Any*
-- @param p1 Any
-- @return BOOL
function NetworkGetPrimaryClanDataStart(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PRIMARY_CLAN_DATA_PENDING
-- @usage Any NETWORK_GET_PRIMARY_CLAN_DATA_PENDING();
-- @return Any
function NetworkGetPrimaryClanDataPending() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PRIMARY_CLAN_DATA_SUCCESS
-- @usage Any NETWORK_GET_PRIMARY_CLAN_DATA_SUCCESS();
-- @return Any
function NetworkGetPrimaryClanDataSuccess() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_PRIMARY_CLAN_DATA_NEW
-- @usage BOOL NETWORK_GET_PRIMARY_CLAN_DATA_NEW(Any* p0, Any* p1);
-- @param p0 Any*
-- @param p1 Any*
-- @return BOOL
function NetworkGetPrimaryClanDataNew(p0, p1) end

-- Whether or not another player is allowed to take control of the entity
-- @module native
-- @submodule network
-- @see SET_NETWORK_ID_CAN_MIGRATE
-- @usage void SET_NETWORK_ID_CAN_MIGRATE(int netId, BOOL toggle);
-- @param netId int
-- @param toggle BOOL
-- @return void
function SetNetworkIdCanMigrate(netId, toggle) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES
-- @usage void SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(int netId, BOOL toggle);
-- @param netId int
-- @param toggle BOOL
-- @return void
function SetNetworkIdExistsOnAllMachines(netId, toggle) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_ENTITY_CAN_BLEND
-- @usage void NETWORK_SET_ENTITY_CAN_BLEND(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param toggle BOOL
-- @return void
function NetworkSetEntityCanBlend(entity, toggle) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_NETWORK_ID_VISIBLE_IN_CUTSCENE
-- @usage void SET_NETWORK_ID_VISIBLE_IN_CUTSCENE(int netId, BOOL p1, BOOL p2);
-- @param netId int
-- @param p1 BOOL
-- @param p2 BOOL
-- @return void
function SetNetworkIdVisibleInCutscene(netId, p1, p2) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_LOCAL_PLAYER_VISIBLE_IN_CUTSCENE
-- @usage void SET_LOCAL_PLAYER_VISIBLE_IN_CUTSCENE(BOOL p0, BOOL p1);
-- @param p0 BOOL
-- @param p1 BOOL
-- @return void
function SetLocalPlayerVisibleInCutscene(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_LOCAL_PLAYER_INVISIBLE_LOCALLY
-- @usage void SET_LOCAL_PLAYER_INVISIBLE_LOCALLY(BOOL p0);
-- @param p0 BOOL
-- @return void
function SetLocalPlayerInvisibleLocally(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_LOCAL_PLAYER_VISIBLE_LOCALLY
-- @usage void SET_LOCAL_PLAYER_VISIBLE_LOCALLY(BOOL p0);
-- @param p0 BOOL
-- @return void
function SetLocalPlayerVisibleLocally(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_PLAYER_INVISIBLE_LOCALLY
-- @usage void SET_PLAYER_INVISIBLE_LOCALLY(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerInvisibleLocally(player, toggle) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_PLAYER_VISIBLE_LOCALLY
-- @usage void SET_PLAYER_VISIBLE_LOCALLY(Player player, BOOL toggle);
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPlayerVisibleLocally(player, toggle) end

-- Hardcoded to not work in SP.
-- @module native
-- @submodule network
-- @see FADE_OUT_LOCAL_PLAYER
-- @usage void FADE_OUT_LOCAL_PLAYER(BOOL p0);
-- @param p0 BOOL
-- @return void
function FadeOutLocalPlayer(p0) end

-- normal - transition like when your coming out of LSC slow - transition like when you walk into a mission
-- @module native
-- @submodule network
-- @see NETWORK_FADE_OUT_ENTITY
-- @usage void NETWORK_FADE_OUT_ENTITY(Entity entity, BOOL normal, BOOL slow);
-- @param entity Entity
-- @param normal BOOL
-- @param slow BOOL
-- @return void
function NetworkFadeOutEntity(entity, normal, slow) end

-- state - 0 does 5 fades state - 1 does 6 fades  native is missing third argument, also boolean, setting to 1 made vehicle fade in slower, probably "slow" as per NETWORK_FADE_OUT_ENTITY
-- @module native
-- @submodule network
-- @see NETWORK_FADE_IN_ENTITY
-- @usage void NETWORK_FADE_IN_ENTITY(Entity entity, BOOL state);
-- @param entity Entity
-- @param state BOOL
-- @return void
function NetworkFadeInEntity(entity, state) end

-- @todo
-- @module native
-- @submodule network
-- @see IS_PLAYER_IN_CUTSCENE
-- @usage BOOL IS_PLAYER_IN_CUTSCENE(Player player);
-- @param player Player
-- @return BOOL
function IsPlayerInCutscene(player) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_ENTITY_VISIBLE_IN_CUTSCENE
-- @usage void SET_ENTITY_VISIBLE_IN_CUTSCENE(Any p0, BOOL p1, BOOL p2);
-- @param p0 Any
-- @param p1 BOOL
-- @param p2 BOOL
-- @return void
function SetEntityVisibleInCutscene(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_ENTITY_LOCALLY_INVISIBLE
-- @usage void SET_ENTITY_LOCALLY_INVISIBLE(Entity entity);
-- @param entity Entity
-- @return void
function SetEntityLocallyInvisible(entity) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_ENTITY_LOCALLY_VISIBLE
-- @usage void SET_ENTITY_LOCALLY_VISIBLE(Entity entity);
-- @param entity Entity
-- @return void
function SetEntityLocallyVisible(entity) end

-- @todo
-- @module native
-- @submodule network
-- @see IS_DAMAGE_TRACKER_ACTIVE_ON_NETWORK_ID
-- @usage BOOL IS_DAMAGE_TRACKER_ACTIVE_ON_NETWORK_ID(int netID);
-- @param netID int
-- @return BOOL
function IsDamageTrackerActiveOnNetworkId(netID) end

-- @todo
-- @module native
-- @submodule network
-- @see ACTIVATE_DAMAGE_TRACKER_ON_NETWORK_ID
-- @usage void ACTIVATE_DAMAGE_TRACKER_ON_NETWORK_ID(int netID, BOOL p1);
-- @param netID int
-- @param p1 BOOL
-- @return void
function ActivateDamageTrackerOnNetworkId(netID, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see IS_SPHERE_VISIBLE_TO_ANOTHER_MACHINE
-- @usage BOOL IS_SPHERE_VISIBLE_TO_ANOTHER_MACHINE(float p0, float p1, float p2, float p3);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @return BOOL
function IsSphereVisibleToAnotherMachine(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule network
-- @see IS_SPHERE_VISIBLE_TO_PLAYER
-- @usage BOOL IS_SPHERE_VISIBLE_TO_PLAYER(Any p0, float p1, float p2, float p3, float p4);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @return BOOL
function IsSphereVisibleToPlayer(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule network
-- @see RESERVE_NETWORK_MISSION_OBJECTS
-- @usage void RESERVE_NETWORK_MISSION_OBJECTS(int p0);
-- @param p0 int
-- @return void
function ReserveNetworkMissionObjects(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see RESERVE_NETWORK_MISSION_PEDS
-- @usage void RESERVE_NETWORK_MISSION_PEDS(int p0);
-- @param p0 int
-- @return void
function ReserveNetworkMissionPeds(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see RESERVE_NETWORK_MISSION_VEHICLES
-- @usage void RESERVE_NETWORK_MISSION_VEHICLES(int p0);
-- @param p0 int
-- @return void
function ReserveNetworkMissionVehicles(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see CAN_REGISTER_MISSION_OBJECTS
-- @usage BOOL CAN_REGISTER_MISSION_OBJECTS(int p0);
-- @param p0 int
-- @return BOOL
function CanRegisterMissionObjects(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see CAN_REGISTER_MISSION_PEDS
-- @usage BOOL CAN_REGISTER_MISSION_PEDS(int p0);
-- @param p0 int
-- @return BOOL
function CanRegisterMissionPeds(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see CAN_REGISTER_MISSION_VEHICLES
-- @usage BOOL CAN_REGISTER_MISSION_VEHICLES(int p0);
-- @param p0 int
-- @return BOOL
function CanRegisterMissionVehicles(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see CAN_REGISTER_MISSION_ENTITIES
-- @usage BOOL CAN_REGISTER_MISSION_ENTITIES(int p0, Any p1, Any p2, Any p3);
-- @param p0 int
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @return BOOL
function CanRegisterMissionEntities(p0, p1, p2, p3) end

-- p0 appears to be for MP
-- @module native
-- @submodule network
-- @see GET_NUM_RESERVED_MISSION_OBJECTS
-- @usage int GET_NUM_RESERVED_MISSION_OBJECTS(BOOL p0);
-- @param p0 BOOL
-- @return int
function GetNumReservedMissionObjects(p0) end

-- p0 appears to be for MP
-- @module native
-- @submodule network
-- @see GET_NUM_RESERVED_MISSION_PEDS
-- @usage int GET_NUM_RESERVED_MISSION_PEDS(BOOL p0);
-- @param p0 BOOL
-- @return int
function GetNumReservedMissionPeds(p0) end

-- p0 appears to be for MP
-- @module native
-- @submodule network
-- @see GET_NUM_RESERVED_MISSION_VEHICLES
-- @usage int GET_NUM_RESERVED_MISSION_VEHICLES(BOOL p0);
-- @param p0 BOOL
-- @return int
function GetNumReservedMissionVehicles(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see GET_NETWORK_TIME
-- @usage int GET_NETWORK_TIME();
-- @return int
function GetNetworkTime() end

-- @todo
-- @module native
-- @submodule network
-- @see HAS_NETWORK_TIME_STARTED
-- @usage BOOL HAS_NETWORK_TIME_STARTED();
-- @return BOOL
function HasNetworkTimeStarted() end

-- Adds the first argument to the second.
-- @module native
-- @submodule network
-- @see GET_TIME_OFFSET
-- @usage int GET_TIME_OFFSET(int timeA, int timeB);
-- @param timeA int
-- @param timeB int
-- @return int
function GetTimeOffset(timeA, timeB) end

-- Subtracts the second argument from the first, then returns whether the result is negative.
-- @module native
-- @submodule network
-- @see IS_TIME_LESS_THAN
-- @usage BOOL IS_TIME_LESS_THAN(int timeA, int timeB);
-- @param timeA int
-- @param timeB int
-- @return BOOL
function IsTimeLessThan(timeA, timeB) end

-- Subtracts the first argument from the second, then returns whether the result is negative.
-- @module native
-- @submodule network
-- @see IS_TIME_MORE_THAN
-- @usage BOOL IS_TIME_MORE_THAN(int timeA, int timeB);
-- @param timeA int
-- @param timeB int
-- @return BOOL
function IsTimeMoreThan(timeA, timeB) end

-- Returns true if the two times are equal; otherwise returns false.
-- @module native
-- @submodule network
-- @see IS_TIME_EQUAL_TO
-- @usage BOOL IS_TIME_EQUAL_TO(int timeA, int timeB);
-- @param timeA int
-- @param timeB int
-- @return BOOL
function IsTimeEqualTo(timeA, timeB) end

-- Subtracts the second argument from the first.
-- @module native
-- @submodule network
-- @see GET_TIME_DIFFERENCE
-- @usage int GET_TIME_DIFFERENCE(int timeA, int timeB);
-- @param timeA int
-- @param timeB int
-- @return int
function GetTimeDifference(timeA, timeB) end

-- @todo
-- @module native
-- @submodule network
-- @see GET_TIME_AS_STRING
-- @usage char* GET_TIME_AS_STRING(int time);
-- @param time int
-- @return char*
function GetTimeAsString(time) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_IN_SPECTATOR_MODE
-- @usage void NETWORK_SET_IN_SPECTATOR_MODE(BOOL toggle, Ped playerPed);
-- @param toggle BOOL
-- @param playerPed Ped
-- @return void
function NetworkSetInSpectatorMode(toggle, playerPed) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_IN_SPECTATOR_MODE
-- @usage BOOL NETWORK_IS_IN_SPECTATOR_MODE();
-- @return BOOL
function NetworkIsInSpectatorMode() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_IN_MP_CUTSCENE
-- @usage void NETWORK_SET_IN_MP_CUTSCENE(BOOL p0, BOOL p1);
-- @param p0 BOOL
-- @param p1 BOOL
-- @return void
function NetworkSetInMpCutscene(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_IN_MP_CUTSCENE
-- @usage BOOL NETWORK_IS_IN_MP_CUTSCENE();
-- @return BOOL
function NetworkIsInMpCutscene() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_PLAYER_IN_MP_CUTSCENE
-- @usage BOOL NETWORK_IS_PLAYER_IN_MP_CUTSCENE(Player player);
-- @param player Player
-- @return BOOL
function NetworkIsPlayerInMpCutscene(player) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_NETWORK_VEHICLE_RESPOT_TIMER
-- @usage void SET_NETWORK_VEHICLE_RESPOT_TIMER(int netId, Any p1);
-- @param netId int
-- @param p1 Any
-- @return void
function SetNetworkVehicleRespotTimer(netId, p1) end

-- hash collision?
-- @module native
-- @submodule network
-- @see USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR
-- @usage void USE_PLAYER_COLOUR_INSTEAD_OF_TEAM_COLOUR(BOOL toggle);
-- @param toggle BOOL
-- @return void
function UsePlayerColourInsteadOfTeamColour(toggle) end

-- returns netScene this native is missing 2 params float p10, float p11
-- @module native
-- @submodule network
-- @see NETWORK_CREATE_SYNCHRONISED_SCENE
-- @usage int NETWORK_CREATE_SYNCHRONISED_SCENE(float x, float y, float z, float xRot, float yRot, float zRot, int p6, int p7, int p8, float p9);
-- @param x float
-- @param y float
-- @param z float
-- @param xRot float
-- @param yRot float
-- @param zRot float
-- @param p6 int
-- @param p7 int
-- @param p8 int
-- @param p9 float
-- @return int
function NetworkCreateSynchronisedScene(x, y, z, xRot, yRot, zRot, p6, p7, p8, p9) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE
-- @usage void NETWORK_ADD_PED_TO_SYNCHRONISED_SCENE(Ped ped, int netScene, char* animDict, char* animnName, float speed, float speedMultiplier, int duration, int flag, float playbackRate, Any p9);
-- @param ped Ped
-- @param netScene int
-- @param animDict char*
-- @param animnName char*
-- @param speed float
-- @param speedMultiplier float
-- @param duration int
-- @param flag int
-- @param playbackRate float
-- @param p9 Any
-- @return void
function NetworkAddPedToSynchronisedScene(ped, netScene, animDict, animnName, speed, speedMultiplier, duration, flag, playbackRate, p9) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE
-- @usage void NETWORK_ADD_ENTITY_TO_SYNCHRONISED_SCENE(Entity entity, int netScene, char* animDict, char* animName, float speed, float speedMulitiplier, int flag);
-- @param entity Entity
-- @param netScene int
-- @param animDict char*
-- @param animName char*
-- @param speed float
-- @param speedMulitiplier float
-- @param flag int
-- @return void
function NetworkAddEntityToSynchronisedScene(entity, netScene, animDict, animName, speed, speedMulitiplier, flag) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_ATTACH_SYNCHRONISED_SCENE_TO_ENTITY
-- @usage void NETWORK_ATTACH_SYNCHRONISED_SCENE_TO_ENTITY(int netScene, Entity entity, int bone);
-- @param netScene int
-- @param entity Entity
-- @param bone int
-- @return void
function NetworkAttachSynchronisedSceneToEntity(netScene, entity, bone) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_START_SYNCHRONISED_SCENE
-- @usage void NETWORK_START_SYNCHRONISED_SCENE(int netScene);
-- @param netScene int
-- @return void
function NetworkStartSynchronisedScene(netScene) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_STOP_SYNCHRONISED_SCENE
-- @usage void NETWORK_STOP_SYNCHRONISED_SCENE(int netScene);
-- @param netScene int
-- @return void
function NetworkStopSynchronisedScene(netScene) end

-- Based on scripts such as in freemode.c how they call their vars vVar and fVar the 2nd and 3rd param it a Vector3 and Float, but the first is based on get_random_int_in_range..
-- @module native
-- @submodule network
-- @see NETWORK_GET_RESPAWN_RESULT
-- @usage void NETWORK_GET_RESPAWN_RESULT(int randomInt, Vector3* coordinates, float* heading);
-- @param randomInt int
-- @param coordinates Vector3*
-- @param heading float*
-- @return void
function NetworkGetRespawnResult(randomInt, coordinates, heading) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_END_TUTORIAL_SESSION
-- @usage void NETWORK_END_TUTORIAL_SESSION();
-- @return void
function NetworkEndTutorialSession() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_IN_TUTORIAL_SESSION
-- @usage Any NETWORK_IS_IN_TUTORIAL_SESSION();
-- @return Any
function NetworkIsInTutorialSession() end

-- Works in Singleplayer too.  Actually has a 4th param (BOOL) that sets byte_14273C46C (in b944) to whatever was passed to p3.
-- @module native
-- @submodule network
-- @see NETWORK_OVERRIDE_CLOCK_TIME
-- @usage void NETWORK_OVERRIDE_CLOCK_TIME(int Hours, int Minutes, int Seconds);
-- @param Hours int
-- @param Minutes int
-- @param Seconds int
-- @return void
function NetworkOverrideClockTime(Hours, Minutes, Seconds) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_CLOCK_TIME_OVERRIDDEN
-- @usage BOOL NETWORK_IS_CLOCK_TIME_OVERRIDDEN();
-- @return BOOL
function NetworkIsClockTimeOverridden() end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_ADD_ENTITY_AREA
-- @usage Any NETWORK_ADD_ENTITY_AREA(float p0, float p1, float p2, float p3, float p4, float p5);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @return Any
function NetworkAddEntityArea(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_REMOVE_ENTITY_AREA
-- @usage BOOL NETWORK_REMOVE_ENTITY_AREA(Any p0);
-- @param p0 Any
-- @return BOOL
function NetworkRemoveEntityArea(p0) end

-- This native start the download of tunables from R* cloud
-- @module native
-- @submodule network
-- @see NETWORK_REQUEST_CLOUD_TUNABLES
-- @usage void NETWORK_REQUEST_CLOUD_TUNABLES();
-- @return void
function NetworkRequestCloudTunables() end

-- Some of the tunable contexts used in the PC scripts:  - "CONTENT_MODIFIER_MP_FM_RACES" - "CONTENT_MODIFIER_MP_FM_RACES_CAR" - "CONTENT_MODIFIER_MP_FM_RACES_SEA" - "CONTENT_MODIFIER_MP_FM_RACES_CAR" - "CONTENT_MODIFIER_MP_FM_RACES_AIR" - "CONTENT_MODIFIER_MP_FM_BASEJUMP" - "CONTENT_MODIFIER_MP_FM_RACES_CYCLE" - "CONTENT_MODIFIER_MP_FM_RACES_BIKE" - "CONTENT_MODIFIER_MP_FM_MISSIONS" - "CONTENT_MODIFIER_MP_FM_CONTACT" - "CONTENT_MODIFIER_MP_FM_RANDOM" - "CONTENT_MODIFIER_MP_FM_VERSUS" - "CONTENT_MODIFIER_MP_FM_LTS" - "CONTENT_MODIFIER_MP_FM_CAPTURE" - "CONTENT_MODIFIER_MP_FM_DM" - "CONTENT_MODIFIER_MP_FM_SURVIVAL" - "CONTENT_MODIFIER_MP_FM_GANG_ATTACK" - "CONTENT_MODIFIER_MP_FM_BASEJUMP" - "BASE_GLOBALS" - "MP_GLOBAL"  and some of the tunable names used in the PC scripts:  - "XP_MULTIPLIER" - "CASH_MULTIPLIER" - "ARMOUR_REWARD_GIFT" - "TOGGLE_CREATORS_OFF"
-- @module native
-- @submodule network
-- @see NETWORK_DOES_TUNABLE_EXIST
-- @usage BOOL NETWORK_DOES_TUNABLE_EXIST(char* tunableContext, char* tunableName);
-- @param tunableContext char*
-- @param tunableName char*
-- @return BOOL
function NetworkDoesTunableExist(tunableContext, tunableName) end

-- Some of the tunable contexts used in the PC scripts:  - "CONTENT_MODIFIER_MP_FM_RACES" - "CONTENT_MODIFIER_MP_FM_RACES_CAR" - "CONTENT_MODIFIER_MP_FM_RACES_SEA" - "CONTENT_MODIFIER_MP_FM_RACES_CAR" - "CONTENT_MODIFIER_MP_FM_RACES_AIR" - "CONTENT_MODIFIER_MP_FM_BASEJUMP" - "CONTENT_MODIFIER_MP_FM_RACES_CYCLE" - "CONTENT_MODIFIER_MP_FM_RACES_BIKE" - "CONTENT_MODIFIER_MP_FM_MISSIONS" - "CONTENT_MODIFIER_MP_FM_CONTACT" - "CONTENT_MODIFIER_MP_FM_RANDOM" - "CONTENT_MODIFIER_MP_FM_VERSUS" - "CONTENT_MODIFIER_MP_FM_LTS" - "CONTENT_MODIFIER_MP_FM_CAPTURE" - "CONTENT_MODIFIER_MP_FM_DM" - "CONTENT_MODIFIER_MP_FM_SURVIVAL" - "CONTENT_MODIFIER_MP_FM_GANG_ATTACK" - "CONTENT_MODIFIER_MP_FM_BASEJUMP" - "BASE_GLOBALS" - "MP_GLOBAL"  and some of the tunable names used in the PC scripts:  - "XP_MULTIPLIER" - "CASH_MULTIPLIER" - "ARMOUR_REWARD_GIFT" - "TOGGLE_CREATORS_OFF"
-- @module native
-- @submodule network
-- @see NETWORK_ACCESS_TUNABLE_INT
-- @usage BOOL NETWORK_ACCESS_TUNABLE_INT(char* tunableContext, char* tunableName, int* value);
-- @param tunableContext char*
-- @param tunableName char*
-- @param value int*
-- @return BOOL
function NetworkAccessTunableInt(tunableContext, tunableName, value) end

-- Some of the tunable contexts used in the PC scripts:  - "CONTENT_MODIFIER_MP_FM_RACES" - "CONTENT_MODIFIER_MP_FM_RACES_CAR" - "CONTENT_MODIFIER_MP_FM_RACES_SEA" - "CONTENT_MODIFIER_MP_FM_RACES_CAR" - "CONTENT_MODIFIER_MP_FM_RACES_AIR" - "CONTENT_MODIFIER_MP_FM_BASEJUMP" - "CONTENT_MODIFIER_MP_FM_RACES_CYCLE" - "CONTENT_MODIFIER_MP_FM_RACES_BIKE" - "CONTENT_MODIFIER_MP_FM_MISSIONS" - "CONTENT_MODIFIER_MP_FM_CONTACT" - "CONTENT_MODIFIER_MP_FM_RANDOM" - "CONTENT_MODIFIER_MP_FM_VERSUS" - "CONTENT_MODIFIER_MP_FM_LTS" - "CONTENT_MODIFIER_MP_FM_CAPTURE" - "CONTENT_MODIFIER_MP_FM_DM" - "CONTENT_MODIFIER_MP_FM_SURVIVAL" - "CONTENT_MODIFIER_MP_FM_GANG_ATTACK" - "CONTENT_MODIFIER_MP_FM_BASEJUMP" - "BASE_GLOBALS" - "MP_GLOBAL" - "MP_CNC_TEAM_COP" - "MP_CNC_TEAM_VAGOS" - "MP_CNC_TEAM_LOST" - "MP_FM_DM" - "MP_FM_RACES" - "MP_FM_RACES_CAR" - "MP_FM_RACES_BIKE" - "MP_FM_RACES_CYCLE" - "MP_FM_RACES_AIR" - "MP_FM_RACES_SEA" - "MP_FM_MISSIONS" - "MP_FM_SURVIVAL - "MP_FM_BASEJUMP" - "MP_FM_CAPTURE" - "MP_FM_LTS" -"MP_FM_GANG_ATTACK"   and some of the tunable names used in the PC scripts:  - "XP_MULTIPLIER" - "CASH_MULTIPLIER" - "ARMOUR_REWARD_GIFT" - "TOGGLE_CREATORS_OFF"
-- @module native
-- @submodule network
-- @see NETWORK_ACCESS_TUNABLE_FLOAT
-- @usage BOOL NETWORK_ACCESS_TUNABLE_FLOAT(char* tunableContext, char* tunableName, float* value);
-- @param tunableContext char*
-- @param tunableName char*
-- @param value float*
-- @return BOOL
function NetworkAccessTunableFloat(tunableContext, tunableName, value) end

-- Some of the tunable contexts used in the PC scripts:  - "CONTENT_MODIFIER_MP_FM_RACES" - "CONTENT_MODIFIER_MP_FM_RACES_CAR" - "CONTENT_MODIFIER_MP_FM_RACES_SEA" - "CONTENT_MODIFIER_MP_FM_RACES_CAR" - "CONTENT_MODIFIER_MP_FM_RACES_AIR" - "CONTENT_MODIFIER_MP_FM_BASEJUMP" - "CONTENT_MODIFIER_MP_FM_RACES_CYCLE" - "CONTENT_MODIFIER_MP_FM_RACES_BIKE" - "CONTENT_MODIFIER_MP_FM_MISSIONS" - "CONTENT_MODIFIER_MP_FM_CONTACT" - "CONTENT_MODIFIER_MP_FM_RANDOM" - "CONTENT_MODIFIER_MP_FM_VERSUS" - "CONTENT_MODIFIER_MP_FM_LTS" - "CONTENT_MODIFIER_MP_FM_CAPTURE" - "CONTENT_MODIFIER_MP_FM_DM" - "CONTENT_MODIFIER_MP_FM_SURVIVAL" - "CONTENT_MODIFIER_MP_FM_GANG_ATTACK" - "CONTENT_MODIFIER_MP_FM_BASEJUMP" - "BASE_GLOBALS" - "MP_GLOBAL"  and some of the tunable names used in the PC scripts:  - "XP_MULTIPLIER" - "CASH_MULTIPLIER" - "ARMOUR_REWARD_GIFT" - "TOGGLE_CREATORS_OFF" - "MULTIPLAYER_DISABLED"
-- @module native
-- @submodule network
-- @see NETWORK_ACCESS_TUNABLE_BOOL
-- @usage BOOL NETWORK_ACCESS_TUNABLE_BOOL(char* tunableContext, char* tunableName);
-- @param tunableContext char*
-- @param tunableName char*
-- @return BOOL
function NetworkAccessTunableBool(tunableContext, tunableName) end

-- hash collision?? - Not sure, but fits alphabetically
-- @module native
-- @submodule network
-- @see NETWORK_RESET_BODY_TRACKER
-- @usage void NETWORK_RESET_BODY_TRACKER();
-- @return void
function NetworkResetBodyTracker() end

-- In the console script dumps, this is only referenced once.  NETWORK::NETWORK_EXPLODE_VEHICLE(vehicle, 1, 0, 0);  ^^^^^ That must be PC script dumps? In X360 Script Dumps it is reference a few times with 2 differences in the parameters. Which as you see below is 1, 0, 0 + 1, 1, 0 + 1, 0, and a *param?  am_plane_takedown.c  network_explode_vehicle(net_to_veh(Local_40.imm_2), 1, 1, 0);  armenian2.c  network_explode_vehicle(Local_80[6 <2>], 1, 0, 0);  fm_horde_controler.c network_explode_vehicle(net_to_veh(*uParam0), 1, 0, *uParam0);  fm_mission_controller.c, has 6 hits so not going to list them.  Side note, setting the first parameter to 0 seems to mute sound or so?  Seems it's like ADD_EXPLOSION, etc. the first 2 params. The 3rd atm no need to worry since it always seems to be 0.
-- @module native
-- @submodule network
-- @see NETWORK_EXPLODE_VEHICLE
-- @usage Any NETWORK_EXPLODE_VEHICLE(Vehicle vehicle, BOOL isAudible, BOOL isInvisible, BOOL p3);
-- @param vehicle Vehicle
-- @param isAudible BOOL
-- @param isInvisible BOOL
-- @param p3 BOOL
-- @return Any
function NetworkExplodeVehicle(vehicle, isAudible, isInvisible, p3) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_SET_PROPERTY_ID
-- @usage void NETWORK_SET_PROPERTY_ID(Any p0);
-- @param p0 Any
-- @return void
function NetworkSetPropertyId(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_CLEAR_PROPERTY_ID
-- @usage void NETWORK_CLEAR_PROPERTY_ID();
-- @return void
function NetworkClearPropertyId() end

-- hash collision...
-- @module native
-- @submodule network
-- @see SET_STORE_ENABLED
-- @usage void SET_STORE_ENABLED(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetStoreEnabled(toggle) end

-- Pretty sure this is a hash collision
-- @module native
-- @submodule network
-- @see NETWORK_ENABLE_MOTION_DRUGGED
-- @usage Any NETWORK_ENABLE_MOTION_DRUGGED();
-- @return Any
function NetworkEnableMotionDrugged() end

-- @todo
-- @module native
-- @submodule network
-- @see SET_BALANCE_ADD_MACHINE
-- @usage BOOL SET_BALANCE_ADD_MACHINE(Any* p0, Any* p1);
-- @param p0 Any*
-- @param p1 Any*
-- @return BOOL
function SetBalanceAddMachine(p0, p1) end

-- @todo
-- @module native
-- @submodule network
-- @see SET_BALANCE_ADD_MACHINES
-- @usage BOOL SET_BALANCE_ADD_MACHINES(Any* p0, Any p1, Any* p2);
-- @param p0 Any*
-- @param p1 Any
-- @param p2 Any*
-- @return BOOL
function SetBalanceAddMachines(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_GET_BACKGROUND_LOADING_RECIPIENTS
-- @usage BOOL NETWORK_GET_BACKGROUND_LOADING_RECIPIENTS(Any p0, Any p1, Any* p2, Any* p3);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any*
-- @param p3 Any*
-- @return BOOL
function NetworkGetBackgroundLoadingRecipients(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule network
-- @see TEXTURE_DOWNLOAD_REQUEST
-- @usage int TEXTURE_DOWNLOAD_REQUEST(int* PlayerHandle, char* FilePath, char* Name, BOOL p3);
-- @param PlayerHandle int*
-- @param FilePath char*
-- @param Name char*
-- @param p3 BOOL
-- @return int
function TextureDownloadRequest(PlayerHandle, FilePath, Name, p3) end

-- @todo
-- @module native
-- @submodule network
-- @see TEXTURE_DOWNLOAD_RELEASE
-- @usage void TEXTURE_DOWNLOAD_RELEASE(int p0);
-- @param p0 int
-- @return void
function TextureDownloadRelease(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see TEXTURE_DOWNLOAD_HAS_FAILED
-- @usage BOOL TEXTURE_DOWNLOAD_HAS_FAILED(int p0);
-- @param p0 int
-- @return BOOL
function TextureDownloadHasFailed(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see TEXTURE_DOWNLOAD_GET_NAME
-- @usage char* TEXTURE_DOWNLOAD_GET_NAME(int p0);
-- @param p0 int
-- @return char*
function TextureDownloadGetName(p0) end

-- @todo
-- @module native
-- @submodule network
-- @see NETWORK_IS_CABLE_CONNECTED
-- @usage BOOL NETWORK_IS_CABLE_CONNECTED();
-- @return BOOL
function NetworkIsCableConnected() end