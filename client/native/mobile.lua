-- Creates a mobile phone of the specified type.  Possible phone types:  0 - Default phone / Michael's phone 1 - Trevor's phone 2 - Franklin's phone 4 - Prologue phone  These values represent bit flags, so a value of '3' would toggle Trevor and Franklin's phones together, causing unexpected behavior and most likely crash the game.
-- @module native
-- @submodule mobile
-- @see CREATE_MOBILE_PHONE
-- @usage void CREATE_MOBILE_PHONE(int phoneType);
-- @param phoneType int
-- @return void
function CreateMobilePhone() end

-- Destroys the currently active mobile phone.
-- @module native
-- @submodule mobile
-- @see DESTROY_MOBILE_PHONE
-- @usage void DESTROY_MOBILE_PHONE();
-- @param undefined
-- @return void
function DestroyMobilePhone() end

-- The minimum/default is 500.0f. If you plan to make it bigger set it's position as well. Also this seems to need to be called in a loop as when you close the phone the scale is reset. If not in a loop you'd need to call it everytime before you re-open the phone.
-- @module native
-- @submodule mobile
-- @see SET_MOBILE_PHONE_SCALE
-- @usage void SET_MOBILE_PHONE_SCALE(float scale);
-- @param scale float
-- @return void
function SetMobilePhoneScale() end

-- Last parameter is unknown and always zero.
-- @module native
-- @submodule mobile
-- @see SET_MOBILE_PHONE_ROTATION
-- @usage void SET_MOBILE_PHONE_ROTATION(float rotX, float rotY, float rotZ, Any p3);
-- @param rotX float
-- @param float
-- @param Any
-- @return void
function SetMobilePhoneRotation() end

-- @todo
-- @module native
-- @submodule mobile
-- @see GET_MOBILE_PHONE_ROTATION
-- @usage void GET_MOBILE_PHONE_ROTATION(Vector3* rotation, Any p1);
-- @param rotation Vector3*
-- @param Any
-- @return void
function GetMobilePhoneRotation() end

-- @todo
-- @module native
-- @submodule mobile
-- @see SET_MOBILE_PHONE_POSITION
-- @usage void SET_MOBILE_PHONE_POSITION(float posX, float posY, float posZ);
-- @param posX float
-- @param float
-- @return void
function SetMobilePhonePosition() end

-- @todo
-- @module native
-- @submodule mobile
-- @see GET_MOBILE_PHONE_POSITION
-- @usage void GET_MOBILE_PHONE_POSITION(Vector3* position);
-- @param position Vector3*
-- @return void
function GetMobilePhonePosition() end

-- If bool Toggle = true so the mobile is hide to screen. If bool Toggle = false so the mobile is show to screen.
-- @module native
-- @submodule mobile
-- @see SCRIPT_IS_MOVING_MOBILE_PHONE_OFFSCREEN
-- @usage void SCRIPT_IS_MOVING_MOBILE_PHONE_OFFSCREEN(BOOL toggle);
-- @param toggle BOOL
-- @return void
function ScriptIsMovingMobilePhoneOffscreen() end

-- This one is weird and seems to return a TRUE state regardless of whether the phone is visible on screen or tucked away.   I can confirm the above. This function is hard-coded to always return 1.
-- @module native
-- @submodule mobile
-- @see CAN_PHONE_BE_SEEN_ON_SCREEN
-- @usage BOOL CAN_PHONE_BE_SEEN_ON_SCREEN();
-- @param undefined
-- @return BOOL
function CanPhoneBeSeenOnScreen() end

-- @todo
-- @module native
-- @submodule mobile
-- @see CELL_CAM_ACTIVATE
-- @usage void CELL_CAM_ACTIVATE(BOOL p0, BOOL p1);
-- @param p0 BOOL
-- @param BOOL
-- @return void
function CellCamActivate() end

-- @todo
-- @module native
-- @submodule mobile
-- @see CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK
-- @usage BOOL CELL_CAM_IS_CHAR_VISIBLE_NO_FACE_CHECK(Entity entity);
-- @param entity Entity
-- @return BOOL
function CellCamIsCharVisibleNoFaceCheck() end

-- @todo
-- @module native
-- @submodule mobile
-- @see GET_MOBILE_PHONE_RENDER_ID
-- @usage void GET_MOBILE_PHONE_RENDER_ID(int* renderId);
-- @param renderId int*
-- @return void
function GetMobilePhoneRenderId() end