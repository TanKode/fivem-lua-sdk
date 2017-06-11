-- Used to be known as _SET_TEXT_ENTRY_2  void ShowSubtitle(char *text) { 	BEGIN_TEXT_COMMAND_PRINT("STRING"); 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text); 	END_TEXT_COMMAND_PRINT(2000, 1); }
-- @module native
-- @submodule ui
-- @see BEGIN_TEXT_COMMAND_PRINT
-- @usage void BEGIN_TEXT_COMMAND_PRINT(char* GxtEntry);
-- @param GxtEntry char*
-- @return void
function BeginTextCommandPrint() end

-- Draws the subtitle at middle center of the screen.  int duration = time in milliseconds to show text on screen before disappearing  drawImmediately = If true, the text will be drawn immediately, if false, the text will be drawn after the previous subtitle has finished  Used to be known as _DRAW_SUBTITLE_TIMED
-- @module native
-- @submodule ui
-- @see END_TEXT_COMMAND_PRINT
-- @usage void END_TEXT_COMMAND_PRINT(int duration, BOOL drawImmediately);
-- @param duration int
-- @param BOOL
-- @return void
function EndTextCommandPrint() end

-- nothin doin.   BOOL Message(char* text) 	{ 		BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED("STRING"); 		ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text); 		return END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED(); 	}
-- @module native
-- @submodule ui
-- @see BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED
-- @usage void BEGIN_TEXT_COMMAND_IS_MESSAGE_DISPLAYED(char* text);
-- @param text char*
-- @return void
function BeginTextCommandIsMessageDisplayed() end

-- @todo
-- @module native
-- @submodule ui
-- @see END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED
-- @usage BOOL END_TEXT_COMMAND_IS_MESSAGE_DISPLAYED();
-- @param undefined
-- @return BOOL
function EndTextCommandIsMessageDisplayed() end

-- The following were found in the decompiled script files: STRING, TWOSTRINGS, NUMBER, PERCENTAGE, FO_TWO_NUM, ESMINDOLLA, ESDOLLA, MTPHPER_XPNO, AHD_DIST, CMOD_STAT_0, CMOD_STAT_1, CMOD_STAT_2, CMOD_STAT_3, DFLT_MNU_OPT, F3A_TRAFDEST, ES_HELP_SOC3  ESDOLLA  ESMINDOLLA - cash (negative)  Used to be known as _SET_TEXT_ENTRY
-- @module native
-- @submodule ui
-- @see BEGIN_TEXT_COMMAND_DISPLAY_TEXT
-- @usage void BEGIN_TEXT_COMMAND_DISPLAY_TEXT(char* text);
-- @param text char*
-- @return void
function BeginTextCommandDisplayText() end

-- After applying the properties to the text (See UI::SET_TEXT_), this will draw the text in the applied position. Also 0.0f < x, y < 1.0f, percentage of the axis.  Used to be known as _DRAW_TEXT
-- @module native
-- @submodule ui
-- @see END_TEXT_COMMAND_DISPLAY_TEXT
-- @usage void END_TEXT_COMMAND_DISPLAY_TEXT(float x, float y);
-- @param x float
-- @param float
-- @return void
function EndTextCommandDisplayText() end

-- Used to be known as _SET_TEXT_COMPONENT_FORMAT
-- @module native
-- @submodule ui
-- @see BEGIN_TEXT_COMMAND_DISPLAY_HELP
-- @usage void BEGIN_TEXT_COMMAND_DISPLAY_HELP(char* inputType);
-- @param inputType char*
-- @return void
function BeginTextCommandDisplayHelp() end

-- shape goes from -1 to 50 (may be more). p0 is always 0.  Example: void FloatingHelpText(char* text) { 	BEGIN_TEXT_COMMAND_DISPLAY_HELP("STRING"); 	ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text); 	END_TEXT_COMMAND_DISPLAY_HELP (0, 0, 1, -1); }  Image: - imgbin.org/images/26209.jpg  more inputs/icons: - pastebin.com/nqNYWMSB  Used to be known as _DISPLAY_HELP_TEXT_FROM_STRING_LABEL
-- @module native
-- @submodule ui
-- @see END_TEXT_COMMAND_DISPLAY_HELP
-- @usage void END_TEXT_COMMAND_DISPLAY_HELP(Any p0, BOOL loop, BOOL beep, int shape);
-- @param p0 Any
-- @param BOOL
-- @param int
-- @return void
function EndTextCommandDisplayHelp() end

-- BOOL IsContextActive(char *ctx) 	{ 		BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(ctx); 		return END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(0); 	}
-- @module native
-- @submodule ui
-- @see BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED
-- @usage void BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(char* labelName);
-- @param labelName char*
-- @return void
function BeginTextCommandIsThisHelpMessageBeingDisplayed() end

-- @todo
-- @module native
-- @submodule ui
-- @see END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED
-- @usage BOOL END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(int p0);
-- @param p0 int
-- @return BOOL
function EndTextCommandIsThisHelpMessageBeingDisplayed() end

-- example:  UI::BEGIN_TEXT_COMMAND_SET_BLIP_NAME("STRING"); UI::_ADD_TEXT_COMPONENT_STRING("Name"); UI::END_TEXT_COMMAND_SET_BLIP_NAME(blip);
-- @module native
-- @submodule ui
-- @see BEGIN_TEXT_COMMAND_SET_BLIP_NAME
-- @usage void BEGIN_TEXT_COMMAND_SET_BLIP_NAME(char* gxtentry);
-- @param gxtentry char*
-- @return void
function BeginTextCommandSetBlipName() end

-- @todo
-- @module native
-- @submodule ui
-- @see END_TEXT_COMMAND_SET_BLIP_NAME
-- @usage void END_TEXT_COMMAND_SET_BLIP_NAME(Blip blip);
-- @param blip Blip
-- @return void
function EndTextCommandSetBlipName() end

-- clears a print text command with this text
-- @module native
-- @submodule ui
-- @see BEGIN_TEXT_COMMAND_CLEAR_PRINT
-- @usage void BEGIN_TEXT_COMMAND_CLEAR_PRINT(char* text);
-- @param text char*
-- @return void
function BeginTextCommandClearPrint() end

-- @todo
-- @module native
-- @submodule ui
-- @see END_TEXT_COMMAND_CLEAR_PRINT
-- @usage void END_TEXT_COMMAND_CLEAR_PRINT();
-- @param undefined
-- @return void
function EndTextCommandClearPrint() end

-- @todo
-- @module native
-- @submodule ui
-- @see ADD_TEXT_COMPONENT_INTEGER
-- @usage void ADD_TEXT_COMPONENT_INTEGER(int value);
-- @param value int
-- @return void
function AddTextComponentInteger() end

-- @todo
-- @module native
-- @submodule ui
-- @see ADD_TEXT_COMPONENT_FLOAT
-- @usage void ADD_TEXT_COMPONENT_FLOAT(float value, int decimalPlaces);
-- @param value float
-- @param int
-- @return void
function AddTextComponentFloat() end

-- @todo
-- @module native
-- @submodule ui
-- @see ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL
-- @usage void ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL(char* labelName);
-- @param labelName char*
-- @return void
function AddTextComponentSubstringTextLabel() end

-- It adds the localized text of the specified GXT entry name. Eg. if the argument is GET_HASH_KEY("ES_HELP"), adds "Continue". Just uses a text labels hash key
-- @module native
-- @submodule ui
-- @see ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL_HASH_KEY
-- @usage void ADD_TEXT_COMPONENT_SUBSTRING_TEXT_LABEL_HASH_KEY(Hash gxtEntryHash);
-- @param gxtEntryHash Hash
-- @return void
function AddTextComponentSubstringTextLabelHashKey() end

-- @todo
-- @module native
-- @submodule ui
-- @see ADD_TEXT_COMPONENT_SUBSTRING_BLIP_NAME
-- @usage void ADD_TEXT_COMPONENT_SUBSTRING_BLIP_NAME(Blip blip);
-- @param blip Blip
-- @return void
function AddTextComponentSubstringBlipName() end

-- • Description :   Processes a string and removes the player name(max len 99)  You can use this function to create notifications/subtitles -------------------------------------------------------------------- • Usage(Colors) :   ~r~ = red  ~y~ = yellow  ~g~ = green  ~b~ = light blue  ~w~ = white  ~p~ = purple  ~n~ = new line  -------------------------------------------------------------------- • Usage(Input) : ~INPUT_CONTEXT~ will show button symbol (regarding last input device -> keyboard/gamepad) example: string info = "Context action is assigned to ~INPUT_CONTEXT~!";  -------------------------------------------------------------------- • Example (C++):  void ShowNotification(char *text)   {          UI::_SET_NOTIFICATION_TEXT_ENTRY("STRING");          UI::ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(text);          UI::_DRAW_NOTIFICATION(FALSE, FALSE); // if first param = 1, the message flashes 1 or 2 times }  • Colors example :   string red = "~r~Red test"; string white_and_yellow = "~w~White and ~y~yellow"; string text_with_double_line = "First line.~n~Second line";  This native (along with 0x5F68520888E69014 and 0x94CF4AC034C9C986) do not actually filter anything. They simply add the provided text (as of 944)  Used to be known as _ADD_TEXT_COMPONENT_STRING
-- @module native
-- @submodule ui
-- @see ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME
-- @usage void ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(char* text);
-- @param text char*
-- @return void
function AddTextComponentSubstringPlayerName() end

-- Adds a timer (e.g. "00:00:00:000"). The appearance of the timer depends on the flags, which needs more research.
-- @module native
-- @submodule ui
-- @see ADD_TEXT_COMPONENT_SUBSTRING_TIME
-- @usage void ADD_TEXT_COMPONENT_SUBSTRING_TIME(int timestamp, int flags);
-- @param timestamp int
-- @param int
-- @return void
function AddTextComponentSubstringTime() end

-- @todo
-- @module native
-- @submodule ui
-- @see ADD_TEXT_COMPONENT_FORMATTED_INTEGER
-- @usage void ADD_TEXT_COMPONENT_FORMATTED_INTEGER(int value, BOOL commaSeparated);
-- @param value int
-- @param BOOL
-- @return void
function AddTextComponentFormattedInteger() end

-- This native (along with 0x5F68520888E69014 and 0x6C188BE134E074AA) do not actually filter anything. They simply add the provided text (as of 944)
-- @module native
-- @submodule ui
-- @see ADD_TEXT_COMPONENT_SUBSTRING_WEBSITE
-- @usage void ADD_TEXT_COMPONENT_SUBSTRING_WEBSITE(char* website);
-- @param website char*
-- @return void
function AddTextComponentSubstringWebsite() end

-- @todo
-- @module native
-- @submodule ui
-- @see CLEAR_PRINTS
-- @usage void CLEAR_PRINTS();
-- @param undefined
-- @return void
function ClearPrints() end

-- @todo
-- @module native
-- @submodule ui
-- @see CLEAR_BRIEF
-- @usage void CLEAR_BRIEF();
-- @param undefined
-- @return void
function ClearBrief() end

-- @todo
-- @module native
-- @submodule ui
-- @see CLEAR_ALL_HELP_MESSAGES
-- @usage void CLEAR_ALL_HELP_MESSAGES();
-- @param undefined
-- @return void
function ClearAllHelpMessages() end

-- p0: found arguments in the b617d scripts: pastebin.com/X5akCN7z
-- @module native
-- @submodule ui
-- @see CLEAR_THIS_PRINT
-- @usage void CLEAR_THIS_PRINT(char* p0);
-- @param p0 char*
-- @return void
function ClearThisPrint() end

-- @todo
-- @module native
-- @submodule ui
-- @see CLEAR_SMALL_PRINTS
-- @usage void CLEAR_SMALL_PRINTS();
-- @param undefined
-- @return void
function ClearSmallPrints() end

-- @todo
-- @module native
-- @submodule ui
-- @see DOES_TEXT_BLOCK_EXIST
-- @usage BOOL DOES_TEXT_BLOCK_EXIST(char* gxt);
-- @param gxt char*
-- @return BOOL
function DoesTextBlockExist() end

-- Request a gxt into the passed slot.
-- @module native
-- @submodule ui
-- @see REQUEST_ADDITIONAL_TEXT
-- @usage void REQUEST_ADDITIONAL_TEXT(char* gxt, int slot);
-- @param gxt char*
-- @param int
-- @return void
function RequestAdditionalText() end

-- @todo
-- @module native
-- @submodule ui
-- @see HAS_ADDITIONAL_TEXT_LOADED
-- @usage BOOL HAS_ADDITIONAL_TEXT_LOADED(int slot);
-- @param slot int
-- @return BOOL
function HasAdditionalTextLoaded() end

-- @todo
-- @module native
-- @submodule ui
-- @see CLEAR_ADDITIONAL_TEXT
-- @usage void CLEAR_ADDITIONAL_TEXT(int p0, BOOL p1);
-- @param p0 int
-- @param BOOL
-- @return void
function ClearAdditionalText() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_STREAMING_ADDITIONAL_TEXT
-- @usage BOOL IS_STREAMING_ADDITIONAL_TEXT(int p0);
-- @param p0 int
-- @return BOOL
function IsStreamingAdditionalText() end

-- Checks if the specified gxt has loaded into the passed slot.
-- @module native
-- @submodule ui
-- @see HAS_THIS_ADDITIONAL_TEXT_LOADED
-- @usage BOOL HAS_THIS_ADDITIONAL_TEXT_LOADED(char* gxt, int slot);
-- @param gxt char*
-- @param int
-- @return BOOL
function HasThisAdditionalTextLoaded() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_MESSAGE_BEING_DISPLAYED
-- @usage BOOL IS_MESSAGE_BEING_DISPLAYED();
-- @param undefined
-- @return BOOL
function IsMessageBeingDisplayed() end

-- Checks if the passed gxt name exists in the game files.
-- @module native
-- @submodule ui
-- @see DOES_TEXT_LABEL_EXIST
-- @usage BOOL DOES_TEXT_LABEL_EXIST(char* gxt);
-- @param gxt char*
-- @return BOOL
function DoesTextLabelExist() end

-- Returns the string length of the string from the gxt string .
-- @module native
-- @submodule ui
-- @see GET_LENGTH_OF_STRING_WITH_THIS_TEXT_LABEL
-- @usage int GET_LENGTH_OF_STRING_WITH_THIS_TEXT_LABEL(char* gxt);
-- @param gxt char*
-- @return int
function GetLengthOfStringWithThisTextLabel() end

-- Returns the length of the string passed (much like strlen).
-- @module native
-- @submodule ui
-- @see GET_LENGTH_OF_LITERAL_STRING
-- @usage int GET_LENGTH_OF_LITERAL_STRING(char* string);
-- @param string char*
-- @return int
function GetLengthOfLiteralString() end

-- This functions converts the hash of a street name into a readable string.  For how to get the hashes, see PATHFIND::GET_STREET_NAME_AT_COORD.
-- @module native
-- @submodule ui
-- @see GET_STREET_NAME_FROM_HASH_KEY
-- @usage char* GET_STREET_NAME_FROM_HASH_KEY(Hash hash);
-- @param hash Hash
-- @return char*
function GetStreetNameFromHashKey() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_HUD_PREFERENCE_SWITCHED_ON
-- @usage BOOL IS_HUD_PREFERENCE_SWITCHED_ON();
-- @param undefined
-- @return BOOL
function IsHudPreferenceSwitchedOn() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_RADAR_PREFERENCE_SWITCHED_ON
-- @usage BOOL IS_RADAR_PREFERENCE_SWITCHED_ON();
-- @param undefined
-- @return BOOL
function IsRadarPreferenceSwitchedOn() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_SUBTITLE_PREFERENCE_SWITCHED_ON
-- @usage BOOL IS_SUBTITLE_PREFERENCE_SWITCHED_ON();
-- @param undefined
-- @return BOOL
function IsSubtitlePreferenceSwitchedOn() end

-- If Hud should be displayed
-- @module native
-- @submodule ui
-- @see DISPLAY_HUD
-- @usage void DISPLAY_HUD(BOOL toggle);
-- @param toggle BOOL
-- @return void
function DisplayHud() end

-- If Minimap / Radar should be displayed.
-- @module native
-- @submodule ui
-- @see DISPLAY_RADAR
-- @usage Any DISPLAY_RADAR(BOOL Toggle);
-- @param Toggle BOOL
-- @return Any
function DisplayRadar() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_HUD_HIDDEN
-- @usage BOOL IS_HUD_HIDDEN();
-- @param undefined
-- @return BOOL
function IsHudHidden() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_RADAR_HIDDEN
-- @usage BOOL IS_RADAR_HIDDEN();
-- @param undefined
-- @return BOOL
function IsRadarHidden() end

-- Enable / disable showing route for the Blip-object.
-- @module native
-- @submodule ui
-- @see SET_BLIP_ROUTE
-- @usage void SET_BLIP_ROUTE(Blip blip, BOOL enabled);
-- @param blip Blip
-- @param BOOL
-- @return void
function SetBlipRoute() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_ROUTE_COLOUR
-- @usage void SET_BLIP_ROUTE_COLOUR(Blip blip, int colour);
-- @param blip Blip
-- @param int
-- @return void
function SetBlipRouteColour() end

-- hash collision?
-- @module native
-- @submodule ui
-- @see ADD_NEXT_MESSAGE_TO_PREVIOUS_BRIEFS
-- @usage void ADD_NEXT_MESSAGE_TO_PREVIOUS_BRIEFS(BOOL p0);
-- @param p0 BOOL
-- @return void
function AddNextMessageToPreviousBriefs() end

-- Please change back to _0xBD12C5EEE184C33 (hash collision) actual native starts with SET_RADAR_ZOOM_...
-- @module native
-- @submodule ui
-- @see RESPONDING_AS_TEMP
-- @usage void RESPONDING_AS_TEMP(float p0);
-- @param p0 float
-- @return void
function RespondingAsTemp() end

-- zoomLevel ranges from 0 to 200
-- @module native
-- @submodule ui
-- @see SET_RADAR_ZOOM
-- @usage void SET_RADAR_ZOOM(int zoomLevel);
-- @param zoomLevel int
-- @return void
function SetRadarZoom() end

-- HUD colors and their values: pastebin.com/d9aHPbXN
-- @module native
-- @submodule ui
-- @see GET_HUD_COLOUR
-- @usage void GET_HUD_COLOUR(int hudColorIndex, int* r, int* g, int* b, int* a);
-- @param hudColorIndex int
-- @param int*
-- @return void
function GetHudColour() end

-- If set to true ability bar will flash
-- @module native
-- @submodule ui
-- @see FLASH_ABILITY_BAR
-- @usage void FLASH_ABILITY_BAR(BOOL toggle);
-- @param toggle BOOL
-- @return void
function FlashAbilityBar() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_ABILITY_BAR_VALUE
-- @usage void SET_ABILITY_BAR_VALUE(float p0, float p1);
-- @param p0 float
-- @param float
-- @return void
function SetAbilityBarValue() end

-- @todo
-- @module native
-- @submodule ui
-- @see FLASH_WANTED_DISPLAY
-- @usage Any FLASH_WANTED_DISPLAY(BOOL p0);
-- @param p0 BOOL
-- @return Any
function FlashWantedDisplay() end

-- Size range : 0F to 1.0F p0 is unknown and doesn't seem to have an effect, yet in the game scripts it changes to 1.0F sometimes.
-- @module native
-- @submodule ui
-- @see SET_TEXT_SCALE
-- @usage void SET_TEXT_SCALE(float p0, float size);
-- @param p0 float
-- @param float
-- @return void
function SetTextScale() end

-- colors you input not same as you think? A: for some reason its R B G A
-- @module native
-- @submodule ui
-- @see SET_TEXT_COLOUR
-- @usage void SET_TEXT_COLOUR(int red, int green, int blue, int alpha);
-- @param red int
-- @param int
-- @return void
function SetTextColour() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_TEXT_CENTRE
-- @usage void SET_TEXT_CENTRE(BOOL align);
-- @param align BOOL
-- @return void
function SetTextCentre() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_TEXT_RIGHT_JUSTIFY
-- @usage void SET_TEXT_RIGHT_JUSTIFY(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetTextRightJustify() end

-- Types - 0: Center-Justify 1: Left-Justify 2: Right-Justify  Right-Justify requires SET_TEXT_WRAP, otherwise it will draw to the far right of the screen
-- @module native
-- @submodule ui
-- @see SET_TEXT_JUSTIFICATION
-- @usage void SET_TEXT_JUSTIFICATION(int justifyType);
-- @param justifyType int
-- @return void
function SetTextJustification() end

-- It sets the text in a specified box and wraps the text if it exceeds the boundries. Both values are for X axis. Useful when positioning text set to center or aligned to the right.  start - left boundry on screen position (0.0 - 1.0) end - right boundry on screen position (0.0 - 1.0)
-- @module native
-- @submodule ui
-- @see SET_TEXT_WRAP
-- @usage void SET_TEXT_WRAP(float start, float end);
-- @param start float
-- @param float
-- @return void
function SetTextWrap() end

-- from script am_mp_yacht.c int? ui::set_text_leading(2);
-- @module native
-- @submodule ui
-- @see SET_TEXT_LEADING
-- @usage void SET_TEXT_LEADING(BOOL p0);
-- @param p0 BOOL
-- @return void
function SetTextLeading() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_TEXT_PROPORTIONAL
-- @usage void SET_TEXT_PROPORTIONAL(BOOL p0);
-- @param p0 BOOL
-- @return void
function SetTextProportional() end

-- fonts that mess up your text where made for number values/misc stuff
-- @module native
-- @submodule ui
-- @see SET_TEXT_FONT
-- @usage void SET_TEXT_FONT(int fontType);
-- @param fontType int
-- @return void
function SetTextFont() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_TEXT_DROP_SHADOW
-- @usage void SET_TEXT_DROP_SHADOW();
-- @param undefined
-- @return void
function SetTextDropShadow() end

-- distance - shadow distance in pixels, both horizontal and vertical r, g, b, a
-- @module native
-- @submodule ui
-- @see SET_TEXT_DROPSHADOW
-- @usage void SET_TEXT_DROPSHADOW(int distance, int r, int g, int b, int a);
-- @param distance int
-- @param int
-- @return void
function SetTextDropshadow() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_TEXT_OUTLINE
-- @usage void SET_TEXT_OUTLINE();
-- @param undefined
-- @return void
function SetTextOutline() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_TEXT_EDGE
-- @usage void SET_TEXT_EDGE(int p0, int r, int g, int b, int a);
-- @param p0 int
-- @param int
-- @return void
function SetTextEdge() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_TEXT_RENDER_ID
-- @usage void SET_TEXT_RENDER_ID(int renderId);
-- @param renderId int
-- @return void
function SetTextRenderId() end

-- This function is hard-coded to always return 1.
-- @module native
-- @submodule ui
-- @see GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID
-- @usage int GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID();
-- @param undefined
-- @return int
function GetDefaultScriptRendertargetRenderId() end

-- @todo
-- @module native
-- @submodule ui
-- @see REGISTER_NAMED_RENDERTARGET
-- @usage BOOL REGISTER_NAMED_RENDERTARGET(char* p0, BOOL p1);
-- @param p0 char*
-- @param BOOL
-- @return BOOL
function RegisterNamedRendertarget() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_NAMED_RENDERTARGET_REGISTERED
-- @usage BOOL IS_NAMED_RENDERTARGET_REGISTERED(char* p0);
-- @param p0 char*
-- @return BOOL
function IsNamedRendertargetRegistered() end

-- @todo
-- @module native
-- @submodule ui
-- @see RELEASE_NAMED_RENDERTARGET
-- @usage BOOL RELEASE_NAMED_RENDERTARGET(Any* p0);
-- @param p0 Any*
-- @return BOOL
function ReleaseNamedRendertarget() end

-- @todo
-- @module native
-- @submodule ui
-- @see LINK_NAMED_RENDERTARGET
-- @usage void LINK_NAMED_RENDERTARGET(Hash hash);
-- @param hash Hash
-- @return void
function LinkNamedRendertarget() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_NAMED_RENDERTARGET_RENDER_ID
-- @usage Any GET_NAMED_RENDERTARGET_RENDER_ID(char* p0);
-- @param p0 char*
-- @return Any
function GetNamedRendertargetRenderId() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_NAMED_RENDERTARGET_LINKED
-- @usage BOOL IS_NAMED_RENDERTARGET_LINKED(Hash hash);
-- @param hash Hash
-- @return BOOL
function IsNamedRendertargetLinked() end

-- @todo
-- @module native
-- @submodule ui
-- @see CLEAR_HELP
-- @usage void CLEAR_HELP(BOOL toggle);
-- @param toggle BOOL
-- @return void
function ClearHelp() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_HELP_MESSAGE_ON_SCREEN
-- @usage BOOL IS_HELP_MESSAGE_ON_SCREEN();
-- @param undefined
-- @return BOOL
function IsHelpMessageOnScreen() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_HELP_MESSAGE_BEING_DISPLAYED
-- @usage BOOL IS_HELP_MESSAGE_BEING_DISPLAYED();
-- @param undefined
-- @return BOOL
function IsHelpMessageBeingDisplayed() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_HELP_MESSAGE_FADING_OUT
-- @usage BOOL IS_HELP_MESSAGE_FADING_OUT();
-- @param undefined
-- @return BOOL
function IsHelpMessageFadingOut() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_NUMBER_OF_ACTIVE_BLIPS
-- @usage int GET_NUMBER_OF_ACTIVE_BLIPS();
-- @param undefined
-- @return int
function GetNumberOfActiveBlips() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_NEXT_BLIP_INFO_ID
-- @usage Blip GET_NEXT_BLIP_INFO_ID(int blipSprite);
-- @param blipSprite int
-- @return Blip
function GetNextBlipInfoId() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_FIRST_BLIP_INFO_ID
-- @usage Blip GET_FIRST_BLIP_INFO_ID(int blipSprite);
-- @param blipSprite int
-- @return Blip
function GetFirstBlipInfoId() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_BLIP_INFO_ID_COORD
-- @usage Vector3 GET_BLIP_INFO_ID_COORD(Blip blip);
-- @param blip Blip
-- @return Vector3
function GetBlipInfoIdCoord() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_BLIP_INFO_ID_DISPLAY
-- @usage int GET_BLIP_INFO_ID_DISPLAY(Blip blip);
-- @param blip Blip
-- @return int
function GetBlipInfoIdDisplay() end

-- Returns a value based on what the blip is attached to 1  2  3  4  5  6  7
-- @module native
-- @submodule ui
-- @see GET_BLIP_INFO_ID_TYPE
-- @usage int GET_BLIP_INFO_ID_TYPE(Blip blip);
-- @param blip Blip
-- @return int
function GetBlipInfoIdType() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_BLIP_INFO_ID_ENTITY_INDEX
-- @usage Entity GET_BLIP_INFO_ID_ENTITY_INDEX(Blip blip);
-- @param blip Blip
-- @return Entity
function GetBlipInfoIdEntityIndex() end

-- This function is hard-coded to always return 0.
-- @module native
-- @submodule ui
-- @see GET_BLIP_INFO_ID_PICKUP_INDEX
-- @usage Pickup GET_BLIP_INFO_ID_PICKUP_INDEX(Blip blip);
-- @param blip Blip
-- @return Pickup
function GetBlipInfoIdPickupIndex() end

-- Returns the Blip handle of given Entity.
-- @module native
-- @submodule ui
-- @see GET_BLIP_FROM_ENTITY
-- @usage Blip GET_BLIP_FROM_ENTITY(Entity entity);
-- @param entity Entity
-- @return Blip
function GetBlipFromEntity() end

-- @todo
-- @module native
-- @submodule ui
-- @see ADD_BLIP_FOR_RADIUS
-- @usage Blip ADD_BLIP_FOR_RADIUS(float posX, float posY, float posZ, float radius);
-- @param posX float
-- @param float
-- @return Blip
function AddBlipForRadius() end

-- Returns red ( default ) blip attached to entity.  Example: Blip blip; //Put this outside your case or option blip = UI::ADD_BLIP_FOR_ENTITY(YourPedOrBodyguardName); UI::SET_BLIP_AS_FRIENDLY(blip, true);
-- @module native
-- @submodule ui
-- @see ADD_BLIP_FOR_ENTITY
-- @usage Blip ADD_BLIP_FOR_ENTITY(Entity entity);
-- @param entity Entity
-- @return Blip
function AddBlipForEntity() end

-- @todo
-- @module native
-- @submodule ui
-- @see ADD_BLIP_FOR_PICKUP
-- @usage Blip ADD_BLIP_FOR_PICKUP(Pickup pickup);
-- @param pickup Pickup
-- @return Blip
function AddBlipForPickup() end

-- Creates an orange ( default ) Blip-object. Returns a Blip-object which can then be modified.
-- @module native
-- @submodule ui
-- @see ADD_BLIP_FOR_COORD
-- @usage Blip ADD_BLIP_FOR_COORD(float x, float y, float z);
-- @param x float
-- @param float
-- @return Blip
function AddBlipForCoord() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_COORDS
-- @usage void SET_BLIP_COORDS(Blip blip, float posX, float posY, float posZ);
-- @param blip Blip
-- @param float
-- @return void
function SetBlipCoords() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_BLIP_COORDS
-- @usage Vector3 GET_BLIP_COORDS(Blip blip);
-- @param blip Blip
-- @return Vector3
function GetBlipCoords() end

-- Takes a blip object and adds a sprite to it on the map.  You may have your own list, but since dev-c didn't show it I was bored and started looking through scripts and functions to get a presumable almost positive list of a majority of blip IDs h t t p://pastebin.com/Bpj9Sfft  Blips Images + IDs: gtaxscripting.blogspot.com/2016/05/gta-v-blips-id-and-image.html
-- @module native
-- @submodule ui
-- @see SET_BLIP_SPRITE
-- @usage void SET_BLIP_SPRITE(Blip blip, int spriteId);
-- @param blip Blip
-- @param int
-- @return void
function SetBlipSprite() end

-- Blips Images + IDs: gtaxscripting.blogspot.com/2016/05/gta-v-blips-id-and-image.html
-- @module native
-- @submodule ui
-- @see GET_BLIP_SPRITE
-- @usage int GET_BLIP_SPRITE(Blip blip);
-- @param blip Blip
-- @return int
function GetBlipSprite() end

-- Doesn't work if the label text of gxtEntry is >= 80.
-- @module native
-- @submodule ui
-- @see SET_BLIP_NAME_FROM_TEXT_FILE
-- @usage void SET_BLIP_NAME_FROM_TEXT_FILE(Blip blip, char* gxtEntry);
-- @param blip Blip
-- @param char*
-- @return void
function SetBlipNameFromTextFile() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_NAME_TO_PLAYER_NAME
-- @usage void SET_BLIP_NAME_TO_PLAYER_NAME(Blip blip, Player player);
-- @param blip Blip
-- @param Player
-- @return void
function SetBlipNameToPlayerName() end

-- Sets alpha-channel for blip color.  Example:  Blip blip = UI::ADD_BLIP_FOR_ENTITY(entity); UI::SET_BLIP_COLOUR(blip , 3); UI::SET_BLIP_ALPHA(blip , 64);
-- @module native
-- @submodule ui
-- @see SET_BLIP_ALPHA
-- @usage void SET_BLIP_ALPHA(Blip blip, int alpha);
-- @param blip Blip
-- @param int
-- @return void
function SetBlipAlpha() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_BLIP_ALPHA
-- @usage int GET_BLIP_ALPHA(Blip blip);
-- @param blip Blip
-- @return int
function GetBlipAlpha() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_FADE
-- @usage void SET_BLIP_FADE(Blip blip, int opacity, int duration);
-- @param blip Blip
-- @param int
-- @return void
function SetBlipFade() end

-- After some testing, looks like you need to use UI:CEIL() on the rotation (vehicle/ped heading) before using it there.
-- @module native
-- @submodule ui
-- @see SET_BLIP_ROTATION
-- @usage void SET_BLIP_ROTATION(Blip blip, int rotation);
-- @param blip Blip
-- @param int
-- @return void
function SetBlipRotation() end

-- Adds up after viewing multiple R* scripts. I believe that the duration is in miliseconds.
-- @module native
-- @submodule ui
-- @see SET_BLIP_FLASH_TIMER
-- @usage void SET_BLIP_FLASH_TIMER(Blip blip, int duration);
-- @param blip Blip
-- @param int
-- @return void
function SetBlipFlashTimer() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_FLASH_INTERVAL
-- @usage void SET_BLIP_FLASH_INTERVAL(Blip blip, Any p1);
-- @param blip Blip
-- @param Any
-- @return void
function SetBlipFlashInterval() end

-- Color:  0: white 1: red 2: green 3: blue 17: orange 19: purple 20: grey 21: brown 23: pink 25: dark green 27: dark purple 29: dark blue Default (Function not used): yellow  Those are not the only ones. i.e: 17 is Trevor's orange.
-- @module native
-- @submodule ui
-- @see SET_BLIP_COLOUR
-- @usage void SET_BLIP_COLOUR(Blip blip, int color);
-- @param blip Blip
-- @param int
-- @return void
function SetBlipColour() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_SECONDARY_COLOUR
-- @usage void SET_BLIP_SECONDARY_COLOUR(Blip blip, float r, float g, float b);
-- @param blip Blip
-- @param float
-- @return void
function SetBlipSecondaryColour() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_BLIP_COLOUR
-- @usage int GET_BLIP_COLOUR(Blip blip);
-- @param blip Blip
-- @return int
function GetBlipColour() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_BLIP_HUD_COLOUR
-- @usage int GET_BLIP_HUD_COLOUR(Blip blip);
-- @param blip Blip
-- @return int
function GetBlipHudColour() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_BLIP_SHORT_RANGE
-- @usage BOOL IS_BLIP_SHORT_RANGE(Blip blip);
-- @param blip Blip
-- @return BOOL
function IsBlipShortRange() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_BLIP_ON_MINIMAP
-- @usage BOOL IS_BLIP_ON_MINIMAP(Blip blip);
-- @param blip Blip
-- @return BOOL
function IsBlipOnMinimap() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_HIGH_DETAIL
-- @usage void SET_BLIP_HIGH_DETAIL(Blip blip, BOOL toggle);
-- @param blip Blip
-- @param BOOL
-- @return void
function SetBlipHighDetail() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_AS_MISSION_CREATOR_BLIP
-- @usage void SET_BLIP_AS_MISSION_CREATOR_BLIP(Blip blip, BOOL toggle);
-- @param blip Blip
-- @param BOOL
-- @return void
function SetBlipAsMissionCreatorBlip() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_MISSION_CREATOR_BLIP
-- @usage BOOL IS_MISSION_CREATOR_BLIP(Blip blip);
-- @param blip Blip
-- @return BOOL
function IsMissionCreatorBlip() end

-- Hash collision!!!   Returns a blip handle.
-- @module native
-- @submodule ui
-- @see DISABLE_BLIP_NAME_FOR_VAR
-- @usage Blip DISABLE_BLIP_NAME_FOR_VAR();
-- @param undefined
-- @return Blip
function DisableBlipNameForVar() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_FLASHES
-- @usage void SET_BLIP_FLASHES(Blip blip, BOOL toggle);
-- @param blip Blip
-- @param BOOL
-- @return void
function SetBlipFlashes() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_FLASHES_ALTERNATE
-- @usage void SET_BLIP_FLASHES_ALTERNATE(Blip blip, BOOL toggle);
-- @param blip Blip
-- @param BOOL
-- @return void
function SetBlipFlashesAlternate() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_BLIP_FLASHING
-- @usage BOOL IS_BLIP_FLASHING(Blip blip);
-- @param blip Blip
-- @return BOOL
function IsBlipFlashing() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_AS_SHORT_RANGE
-- @usage void SET_BLIP_AS_SHORT_RANGE(Blip blip, BOOL toggle);
-- @param blip Blip
-- @param BOOL
-- @return void
function SetBlipAsShortRange() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_SCALE
-- @usage void SET_BLIP_SCALE(Blip blip, float scale);
-- @param blip Blip
-- @param float
-- @return void
function SetBlipScale() end

-- See this topic for more details : gtaforums.com/topic/717612-v-scriptnative-documentation-and-research/page-35?p=1069477935
-- @module native
-- @submodule ui
-- @see SET_BLIP_PRIORITY
-- @usage void SET_BLIP_PRIORITY(Blip blip, int priority);
-- @param blip Blip
-- @param int
-- @return void
function SetBlipPriority() end

-- displayId = 8 : shows on radar  displayId: 3 = Shows on Main map but not Radar (not selectable on map)  displayId = 2 (Shows on Main map + Radar + selectable)
-- @module native
-- @submodule ui
-- @see SET_BLIP_DISPLAY
-- @usage void SET_BLIP_DISPLAY(Blip blip, int displayId);
-- @param blip Blip
-- @param int
-- @return void
function SetBlipDisplay() end

-- int index:  1 = No Text on blip or Distance 2 = Text on blip 3 = No text, just distance 4+ No Text on blip or distance
-- @module native
-- @submodule ui
-- @see SET_BLIP_CATEGORY
-- @usage void SET_BLIP_CATEGORY(Blip blip, int index);
-- @param blip Blip
-- @param int
-- @return void
function SetBlipCategory() end

-- In the C++ SDK, this seems not to work-- the blip isn't removed immediately. I use it for saving cars.  E.g.:  Ped pped = PLAYER::PLAYER_PED_ID(); Vehicle v = PED::GET_VEHICLE_PED_IS_USING(pped); Blip b = UI::ADD_BLIP_FOR_ENTITY(v);  works fine. But later attempting to delete it with:  Blip b = UI::GET_BLIP_FROM_ENTITY(v); if (UI::DOES_BLIP_EXIST(b)) UI::REMOVE_BLIP(&b);  doesn't work. And yes, doesn't work without the DOES_BLIP_EXIST check either. Also, if you attach multiple blips to the same thing (say, a vehicle), and that thing disappears, the blips randomly attach to other things (in my case, a vehicle).  Thus for me, UI::REMOVE_BLIP(&b) only works if there's one blip, (in my case) the vehicle is marked as no longer needed, you drive away from it and it eventually despawns, AND there is only one blip attached to it. I never intentionally attach multiple blips but if the user saves the car, this adds a blip. Then if they delete it, it is supposed to remove the blip, but it doesn't. Then they can immediately save it again, causing another blip to re-appear. -------------  Passing the address of the variable instead of the value works for me. e.g. int blip = UI::ADD_BLIP_FOR_ENTITY(ped); UI::REMOVE_BLIP(&blip);   Remove blip will currently crash your game, just artificially remove the blip by setting the sprite to a id that is 'invisible'.  -- It crashes my game.
-- @module native
-- @submodule ui
-- @see REMOVE_BLIP
-- @usage void REMOVE_BLIP(Blip* blip);
-- @param blip Blip*
-- @return void
function RemoveBlip() end

-- false for enemy true for friendly
-- @module native
-- @submodule ui
-- @see SET_BLIP_AS_FRIENDLY
-- @usage void SET_BLIP_AS_FRIENDLY(Blip blip, BOOL toggle);
-- @param blip Blip
-- @param BOOL
-- @return void
function SetBlipAsFriendly() end

-- @todo
-- @module native
-- @submodule ui
-- @see PULSE_BLIP
-- @usage void PULSE_BLIP(Blip blip);
-- @param blip Blip
-- @return void
function PulseBlip() end

-- @todo
-- @module native
-- @submodule ui
-- @see SHOW_NUMBER_ON_BLIP
-- @usage void SHOW_NUMBER_ON_BLIP(Blip blip, int number);
-- @param blip Blip
-- @param int
-- @return void
function ShowNumberOnBlip() end

-- @todo
-- @module native
-- @submodule ui
-- @see HIDE_NUMBER_ON_BLIP
-- @usage void HIDE_NUMBER_ON_BLIP(Blip blip);
-- @param blip Blip
-- @return void
function HideNumberOnBlip() end

-- Adds the GTA: Online player heading indicator to a blip.
-- @module native
-- @submodule ui
-- @see SHOW_HEADING_INDICATOR_ON_BLIP
-- @usage void SHOW_HEADING_INDICATOR_ON_BLIP(Blip blip, BOOL toggle);
-- @param blip Blip
-- @param BOOL
-- @return void
function ShowHeadingIndicatorOnBlip() end

-- @todo
-- @module native
-- @submodule ui
-- @see DOES_BLIP_EXIST
-- @usage BOOL DOES_BLIP_EXIST(Blip blip);
-- @param blip Blip
-- @return BOOL
function DoesBlipExist() end

-- This native removes the current waypoint from the map.  Example: C#: Function.Call(Hash.SET_WAYPOINT_OFF);  C++: UI::SET_WAYPOINT_OFF();
-- @module native
-- @submodule ui
-- @see SET_WAYPOINT_OFF
-- @usage void SET_WAYPOINT_OFF();
-- @param undefined
-- @return void
function SetWaypointOff() end

-- @todo
-- @module native
-- @submodule ui
-- @see REFRESH_WAYPOINT
-- @usage void REFRESH_WAYPOINT();
-- @param undefined
-- @return void
function RefreshWaypoint() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_WAYPOINT_ACTIVE
-- @usage BOOL IS_WAYPOINT_ACTIVE();
-- @param undefined
-- @return BOOL
function IsWaypointActive() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_NEW_WAYPOINT
-- @usage void SET_NEW_WAYPOINT(float x, float y);
-- @param x float
-- @param float
-- @return void
function SetNewWaypoint() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_BRIGHT
-- @usage void SET_BLIP_BRIGHT(Blip blip, BOOL toggle);
-- @param blip Blip
-- @param BOOL
-- @return void
function SetBlipBright() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_BLIP_SHOW_CONE
-- @usage void SET_BLIP_SHOW_CONE(Blip blip, BOOL toggle);
-- @param blip Blip
-- @param BOOL
-- @return void
function SetBlipShowCone() end

-- Please change to void.  p2 appears to be always -1.
-- @module native
-- @submodule ui
-- @see SET_MINIMAP_COMPONENT
-- @usage Any SET_MINIMAP_COMPONENT(int p0, BOOL p1, int p2);
-- @param p0 int
-- @param BOOL
-- @param int
-- @return Any
function SetMinimapComponent() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_MAIN_PLAYER_BLIP_ID
-- @usage Blip GET_MAIN_PLAYER_BLIP_ID();
-- @param undefined
-- @return Blip
function GetMainPlayerBlipId() end

-- @todo
-- @module native
-- @submodule ui
-- @see HIDE_LOADING_ON_FADE_THIS_FRAME
-- @usage void HIDE_LOADING_ON_FADE_THIS_FRAME();
-- @param undefined
-- @return void
function HideLoadingOnFadeThisFrame() end

-- List of interior hashes: pastebin.com/1FUyXNqY Not for every interior zoom > 0 available.
-- @module native
-- @submodule ui
-- @see SET_RADAR_AS_INTERIOR_THIS_FRAME
-- @usage void SET_RADAR_AS_INTERIOR_THIS_FRAME(Hash interior, float x, float y, int z, int zoom);
-- @param interior Hash
-- @param float
-- @param int
-- @return void
function SetRadarAsInteriorThisFrame() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_RADAR_AS_EXTERIOR_THIS_FRAME
-- @usage void SET_RADAR_AS_EXTERIOR_THIS_FRAME();
-- @param undefined
-- @return void
function SetRadarAsExteriorThisFrame() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_WIDESCREEN_FORMAT
-- @usage void SET_WIDESCREEN_FORMAT(Any p0);
-- @param p0 Any
-- @return void
function SetWidescreenFormat() end

-- @todo
-- @module native
-- @submodule ui
-- @see DISPLAY_AREA_NAME
-- @usage void DISPLAY_AREA_NAME(BOOL toggle);
-- @param toggle BOOL
-- @return void
function DisplayAreaName() end

-- "DISPLAY_CASH(false);" makes the cash amount render on the screen when appropriate "DISPLAY_CASH(true);" disables cash amount rendering
-- @module native
-- @submodule ui
-- @see DISPLAY_CASH
-- @usage void DISPLAY_CASH(BOOL toggle);
-- @param toggle BOOL
-- @return void
function DisplayCash() end

-- @todo
-- @module native
-- @submodule ui
-- @see DISPLAY_AMMO_THIS_FRAME
-- @usage void DISPLAY_AMMO_THIS_FRAME(BOOL display);
-- @param display BOOL
-- @return void
function DisplayAmmoThisFrame() end

-- Displays the crosshair for this frame.
-- @module native
-- @submodule ui
-- @see DISPLAY_SNIPER_SCOPE_THIS_FRAME
-- @usage void DISPLAY_SNIPER_SCOPE_THIS_FRAME();
-- @param undefined
-- @return void
function DisplaySniperScopeThisFrame() end

-- I think this works, but seems to prohibit switching to other weapons (or accessing the weapon wheel)
-- @module native
-- @submodule ui
-- @see HIDE_HUD_AND_RADAR_THIS_FRAME
-- @usage void HIDE_HUD_AND_RADAR_THIS_FRAME();
-- @param undefined
-- @return void
function HideHudAndRadarThisFrame() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_MULTIPLAYER_BANK_CASH
-- @usage void SET_MULTIPLAYER_BANK_CASH();
-- @param undefined
-- @return void
function SetMultiplayerBankCash() end

-- @todo
-- @module native
-- @submodule ui
-- @see REMOVE_MULTIPLAYER_BANK_CASH
-- @usage void REMOVE_MULTIPLAYER_BANK_CASH();
-- @param undefined
-- @return void
function RemoveMultiplayerBankCash() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_MULTIPLAYER_HUD_CASH
-- @usage void SET_MULTIPLAYER_HUD_CASH(int p0, int p1);
-- @param p0 int
-- @param int
-- @return void
function SetMultiplayerHudCash() end

-- Removes multiplayer cash hud each frame
-- @module native
-- @submodule ui
-- @see REMOVE_MULTIPLAYER_HUD_CASH
-- @usage void REMOVE_MULTIPLAYER_HUD_CASH();
-- @param undefined
-- @return void
function RemoveMultiplayerHudCash() end

-- @todo
-- @module native
-- @submodule ui
-- @see HIDE_HELP_TEXT_THIS_FRAME
-- @usage void HIDE_HELP_TEXT_THIS_FRAME();
-- @param undefined
-- @return void
function HideHelpTextThisFrame() end

-- The messages are localized strings. Examples: "No_bus_money" "Enter_bus" "Tour_help" "LETTERS_HELP2" "Dummy"  **The bool appears to always be false (if it even is a bool, as it's represented by a zero)** -------- p1 doesn't seem to make a difference, regardless of the state it's in.    picture of where this is displayed?
-- @module native
-- @submodule ui
-- @see DISPLAY_HELP_TEXT_THIS_FRAME
-- @usage void DISPLAY_HELP_TEXT_THIS_FRAME(char* message, BOOL p1);
-- @param message char*
-- @param BOOL
-- @return void
function DisplayHelpTextThisFrame() end

-- Only the script that originally called SET_GPS_FLAGS can set them again. Another script cannot set the flags, until the first script that called it has called CLEAR_GPS_FLAGS.  Doesn't seem like the flags are actually read by the game at all.
-- @module native
-- @submodule ui
-- @see SET_GPS_FLAGS
-- @usage void SET_GPS_FLAGS(int p0, float p1);
-- @param p0 int
-- @param float
-- @return void
function SetGpsFlags() end

-- Clears the GPS flags. Only the script that originally called SET_GPS_FLAGS can clear them.  Doesn't seem like the flags are actually read by the game at all.
-- @module native
-- @submodule ui
-- @see CLEAR_GPS_FLAGS
-- @usage void CLEAR_GPS_FLAGS();
-- @param undefined
-- @return void
function ClearGpsFlags() end

-- @todo
-- @module native
-- @submodule ui
-- @see CLEAR_GPS_RACE_TRACK
-- @usage void CLEAR_GPS_RACE_TRACK();
-- @param undefined
-- @return void
function ClearGpsRaceTrack() end

-- @todo
-- @module native
-- @submodule ui
-- @see CLEAR_GPS_PLAYER_WAYPOINT
-- @usage void CLEAR_GPS_PLAYER_WAYPOINT();
-- @param undefined
-- @return void
function ClearGpsPlayerWaypoint() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_GPS_FLASHES
-- @usage void SET_GPS_FLASHES(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetGpsFlashes() end

-- adds a short flash to the Radar/Minimap Usage: UI.FLASH_MINIMAP_DISPLAY
-- @module native
-- @submodule ui
-- @see FLASH_MINIMAP_DISPLAY
-- @usage void FLASH_MINIMAP_DISPLAY();
-- @param undefined
-- @return void
function FlashMinimapDisplay() end

-- @todo
-- @module native
-- @submodule ui
-- @see TOGGLE_STEALTH_RADAR
-- @usage void TOGGLE_STEALTH_RADAR(BOOL toggle);
-- @param toggle BOOL
-- @return void
function ToggleStealthRadar() end

-- hash collision
-- @module native
-- @submodule ui
-- @see KEY_HUD_COLOUR
-- @usage void KEY_HUD_COLOUR(BOOL p0, Any p1);
-- @param p0 BOOL
-- @param Any
-- @return void
function KeyHudColour() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_MISSION_NAME
-- @usage void SET_MISSION_NAME(BOOL p0, char* name);
-- @param p0 BOOL
-- @param char*
-- @return void
function SetMissionName() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_MINIMAP_BLOCK_WAYPOINT
-- @usage void SET_MINIMAP_BLOCK_WAYPOINT(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetMinimapBlockWaypoint() end

-- Locks the minimap to the specified angle in integer degrees.  angle: The angle in whole degrees. If less than 0 or greater than 360, unlocks the angle.
-- @module native
-- @submodule ui
-- @see LOCK_MINIMAP_ANGLE
-- @usage void LOCK_MINIMAP_ANGLE(int angle);
-- @param angle int
-- @return void
function LockMinimapAngle() end

-- @todo
-- @module native
-- @submodule ui
-- @see UNLOCK_MINIMAP_ANGLE
-- @usage void UNLOCK_MINIMAP_ANGLE();
-- @param undefined
-- @return void
function UnlockMinimapAngle() end

-- Locks the minimap to the specified world position.
-- @module native
-- @submodule ui
-- @see LOCK_MINIMAP_POSITION
-- @usage void LOCK_MINIMAP_POSITION(float x, float y);
-- @param x float
-- @param float
-- @return void
function LockMinimapPosition() end

-- @todo
-- @module native
-- @submodule ui
-- @see UNLOCK_MINIMAP_POSITION
-- @usage void UNLOCK_MINIMAP_POSITION();
-- @param undefined
-- @return void
function UnlockMinimapPosition() end

-- Full list of components below  HUD = 0; HUD_WANTED_STARS = 1; HUD_WEAPON_ICON = 2; HUD_CASH = 3; HUD_MP_CASH = 4; HUD_MP_MESSAGE = 5; HUD_VEHICLE_NAME = 6; HUD_AREA_NAME = 7; HUD_VEHICLE_CLASS = 8; HUD_STREET_NAME = 9; HUD_HELP_TEXT = 10; HUD_FLOATING_HELP_TEXT_1 = 11; HUD_FLOATING_HELP_TEXT_2 = 12; HUD_CASH_CHANGE = 13; HUD_RETICLE = 14; HUD_SUBTITLE_TEXT = 15; HUD_RADIO_STATIONS = 16; HUD_SAVING_GAME = 17; HUD_GAME_STREAM = 18; HUD_WEAPON_WHEEL = 19; HUD_WEAPON_WHEEL_STATS = 20; MAX_HUD_COMPONENTS = 21; MAX_HUD_WEAPONS = 22; MAX_SCRIPTED_HUD_COMPONENTS = 141;
-- @module native
-- @submodule ui
-- @see IS_HUD_COMPONENT_ACTIVE
-- @usage BOOL IS_HUD_COMPONENT_ACTIVE(int id);
-- @param id int
-- @return BOOL
function IsHudComponentActive() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_SCRIPTED_HUD_COMPONENT_ACTIVE
-- @usage BOOL IS_SCRIPTED_HUD_COMPONENT_ACTIVE(int id);
-- @param id int
-- @return BOOL
function IsScriptedHudComponentActive() end

-- @todo
-- @module native
-- @submodule ui
-- @see HIDE_SCRIPTED_HUD_COMPONENT_THIS_FRAME
-- @usage void HIDE_SCRIPTED_HUD_COMPONENT_THIS_FRAME(int id);
-- @param id int
-- @return void
function HideScriptedHudComponentThisFrame() end

-- @todo
-- @module native
-- @submodule ui
-- @see HIDE_HUD_COMPONENT_THIS_FRAME
-- @usage void HIDE_HUD_COMPONENT_THIS_FRAME(int id);
-- @param id int
-- @return void
function HideHudComponentThisFrame() end

-- @todo
-- @module native
-- @submodule ui
-- @see SHOW_HUD_COMPONENT_THIS_FRAME
-- @usage void SHOW_HUD_COMPONENT_THIS_FRAME(int id);
-- @param id int
-- @return void
function ShowHudComponentThisFrame() end

-- @todo
-- @module native
-- @submodule ui
-- @see RESET_RETICULE_VALUES
-- @usage void RESET_RETICULE_VALUES();
-- @param undefined
-- @return void
function ResetReticuleValues() end

-- @todo
-- @module native
-- @submodule ui
-- @see RESET_HUD_COMPONENT_VALUES
-- @usage void RESET_HUD_COMPONENT_VALUES(int id);
-- @param id int
-- @return void
function ResetHudComponentValues() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_HUD_COMPONENT_POSITION
-- @usage void SET_HUD_COMPONENT_POSITION(int id, float x, float y);
-- @param id int
-- @param float
-- @return void
function SetHudComponentPosition() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_HUD_COMPONENT_POSITION
-- @usage Vector3 GET_HUD_COMPONENT_POSITION(int id);
-- @param id int
-- @return Vector3
function GetHudComponentPosition() end

-- @todo
-- @module native
-- @submodule ui
-- @see CLEAR_REMINDER_MESSAGE
-- @usage void CLEAR_REMINDER_MESSAGE();
-- @param undefined
-- @return void
function ClearReminderMessage() end

-- p0 looks like int in script
-- @module native
-- @submodule ui
-- @see CLEAR_FLOATING_HELP
-- @usage void CLEAR_FLOATING_HELP(Any p0, BOOL p1);
-- @param p0 Any
-- @param BOOL
-- @return void
function ClearFloatingHelp() end

-- @todo
-- @module native
-- @submodule ui
-- @see REMOVE_MP_GAMER_TAG
-- @usage void REMOVE_MP_GAMER_TAG(int gamerTagId);
-- @param gamerTagId int
-- @return void
function RemoveMpGamerTag() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_MP_GAMER_TAG_ACTIVE
-- @usage BOOL IS_MP_GAMER_TAG_ACTIVE(int gamerTagId);
-- @param gamerTagId int
-- @return BOOL
function IsMpGamerTagActive() end

-- Hash collision! _IS_MP_GAMER_TAG_ACTIVE_2
-- @module native
-- @submodule ui
-- @see ADD_TREVOR_RANDOM_MODIFIER
-- @usage BOOL ADD_TREVOR_RANDOM_MODIFIER(int gamerTagId);
-- @param gamerTagId int
-- @return BOOL
function AddTrevorRandomModifier() end

-- enum MpGamerTagComponent {   GAMER_NAME = 0,   CREW_TAG,   healthArmour,   BIG_TEXT,   AUDIO_ICON,   MP_USING_MENU,   MP_PASSIVE_MODE,   WANTED_STARS,   MP_DRIVER,   MP_CO_DRIVER,   MP_TAGGED,   GAMER_NAME_NEARBY,   ARROW,   MP_PACKAGES,   INV_IF_PED_FOLLOWING,   RANK_TEXT,   MP_TYPING };
-- @module native
-- @submodule ui
-- @see SET_MP_GAMER_TAG_VISIBILITY
-- @usage void SET_MP_GAMER_TAG_VISIBILITY(int gamerTagId, int component, BOOL toggle);
-- @param gamerTagId int
-- @param int
-- @param BOOL
-- @return void
function SetMpGamerTagVisibility() end

-- Ranges from 0 to 255. 0 is grey health bar, ~50 yellow, 200 purple.
-- @module native
-- @submodule ui
-- @see SET_MP_GAMER_TAG_COLOUR
-- @usage void SET_MP_GAMER_TAG_COLOUR(int gamerTagId, int flag, int color);
-- @param gamerTagId int
-- @param int
-- @return void
function SetMpGamerTagColour() end

-- Ranges from 0 to 255. 0 is grey health bar, ~50 yellow, 200 purple. Should be enabled as flag (2). Has 0 opacity by default.  - This was _SET_MP_GAMER_TAG_HEALTH_BAR_COLOR,
-- @module native
-- @submodule ui
-- @see SET_MP_GAMER_TAG_HEALTH_BAR_COLOUR
-- @usage void SET_MP_GAMER_TAG_HEALTH_BAR_COLOUR(int headDisplayId, int color);
-- @param headDisplayId int
-- @param int
-- @return void
function SetMpGamerTagHealthBarColour() end

-- Sets flag's sprite transparency. 0-255.
-- @module native
-- @submodule ui
-- @see SET_MP_GAMER_TAG_ALPHA
-- @usage void SET_MP_GAMER_TAG_ALPHA(int gamerTagId, int component, int alpha);
-- @param gamerTagId int
-- @param int
-- @return void
function SetMpGamerTagAlpha() end

-- displays wanted star above head
-- @module native
-- @submodule ui
-- @see SET_MP_GAMER_TAG_WANTED_LEVEL
-- @usage void SET_MP_GAMER_TAG_WANTED_LEVEL(int gamerTagId, int wantedlvl);
-- @param gamerTagId int
-- @param int
-- @return void
function SetMpGamerTagWantedLevel() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_MP_GAMER_TAG_NAME
-- @usage void SET_MP_GAMER_TAG_NAME(int gamerTagId, char* string);
-- @param gamerTagId int
-- @param char*
-- @return void
function SetMpGamerTagName() end

-- @todo
-- @module native
-- @submodule ui
-- @see GET_CURRENT_WEBSITE_ID
-- @usage int GET_CURRENT_WEBSITE_ID();
-- @param undefined
-- @return int
function GetCurrentWebsiteId() end

-- You can only use text entries. No custom text.  Example: SET_WARNING_MESSAGE("t20", 3, "adder", false, -1, 0, 0, true);
-- @module native
-- @submodule ui
-- @see SET_WARNING_MESSAGE
-- @usage void SET_WARNING_MESSAGE(char* entryLine1, int instructionalKey, char* entryLine2, BOOL p3, Any p4, Any* p5, Any* p6, BOOL background);
-- @param entryLine1 char*
-- @param int
-- @param char*
-- @param BOOL
-- @param Any
-- @param Any*
-- @return void
function SetWarningMessage() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_WARNING_MESSAGE_ACTIVE
-- @usage BOOL IS_WARNING_MESSAGE_ACTIVE();
-- @param undefined
-- @return BOOL
function IsWarningMessageActive() end

-- Does stuff like this: gyazo.com/7fcb78ea3520e3dbc5b2c0c0f3712617  Example: int GetHash = GET_HASH_KEY("fe_menu_version_corona_lobby"); ACTIVATE_FRONTEND_MENU(GetHash, 0, -1);  BOOL p1 is a toggle to define the game in pause. int p2 is unknown but -1 always works, not sure why though.  [30/03/2017] ins1de :  the int p2 is actually a component variable. When the pause menu is visible, it opens the tab related to it.  Example : Function.Call(Hash.ACTIVATE_FRONTEND_MENU,-1171018317, 0, 42); Result : Opens the "Online" tab without pausing the menu, with -1 it opens the map.
-- @module native
-- @submodule ui
-- @see ACTIVATE_FRONTEND_MENU
-- @usage void ACTIVATE_FRONTEND_MENU(Hash menuhash, BOOL Toggle_Pause, int component);
-- @param menuhash Hash
-- @param BOOL
-- @param int
-- @return void
function ActivateFrontendMenu() end

-- Before using this native click the native above and look at the decription.  Example: int GetHash = Function.Call<int>(Hash.GET_HASH_KEY, "fe_menu_version_corona_lobby"); Function.Call(Hash.ACTIVATE_FRONTEND_MENU, GetHash, 0, -1); Function.Call(Hash.RESTART_FRONTEND_MENU(GetHash, -1);  This native refreshes the frontend menu.  p1 = Hash of Menu p2 = Unknown but always works with -1.
-- @module native
-- @submodule ui
-- @see RESTART_FRONTEND_MENU
-- @usage void RESTART_FRONTEND_MENU(Hash menuHash, int p1);
-- @param menuHash Hash
-- @param int
-- @return void
function RestartFrontendMenu() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_PAUSE_MENU_ACTIVE
-- @usage void SET_PAUSE_MENU_ACTIVE(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetPauseMenuActive() end

-- @todo
-- @module native
-- @submodule ui
-- @see DISABLE_FRONTEND_THIS_FRAME
-- @usage void DISABLE_FRONTEND_THIS_FRAME();
-- @param undefined
-- @return void
function DisableFrontendThisFrame() end

-- @todo
-- @module native
-- @submodule ui
-- @see SET_FRONTEND_ACTIVE
-- @usage void SET_FRONTEND_ACTIVE(BOOL active);
-- @param active BOOL
-- @return void
function SetFrontendActive() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_PAUSE_MENU_ACTIVE
-- @usage BOOL IS_PAUSE_MENU_ACTIVE();
-- @param undefined
-- @return BOOL
function IsPauseMenuActive() end

-- Returns:  0 5 10 15 20 25 30 35
-- @module native
-- @submodule ui
-- @see GET_PAUSE_MENU_STATE
-- @usage int GET_PAUSE_MENU_STATE();
-- @param undefined
-- @return int
function GetPauseMenuState() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_PAUSE_MENU_RESTARTING
-- @usage BOOL IS_PAUSE_MENU_RESTARTING();
-- @param undefined
-- @return BOOL
function IsPauseMenuRestarting() end

-- Please change back to _0x444D8CF241EC25C5 (hash collision)
-- @module native
-- @submodule ui
-- @see OBJECT_DECAL_TOGGLE
-- @usage void OBJECT_DECAL_TOGGLE(Hash hash);
-- @param hash Hash
-- @return void
function ObjectDecalToggle() end

-- Please change back to _0x4895BDEA16E7C080 (hash collision)
-- @module native
-- @submodule ui
-- @see ENABLE_DEATHBLOOD_SEETHROUGH
-- @usage void ENABLE_DEATHBLOOD_SEETHROUGH(BOOL p0);
-- @param p0 BOOL
-- @return void
function EnableDeathbloodSeethrough() end

-- Hash collision! Please change back to _0xEF4CED81CEBEDC6D
-- @module native
-- @submodule ui
-- @see SET_USERIDS_UIHIDDEN
-- @usage BOOL SET_USERIDS_UIHIDDEN(Any p0, Any* p1);
-- @param p0 Any
-- @param Any*
-- @return BOOL
function SetUseridsUihidden() end

-- @todo
-- @module native
-- @submodule ui
-- @see CLEAR_PED_IN_PAUSE_MENU
-- @usage void CLEAR_PED_IN_PAUSE_MENU();
-- @param undefined
-- @return void
function ClearPedInPauseMenu() end

-- p1 is either 1 or 2 in the PC scripts.
-- @module native
-- @submodule ui
-- @see GIVE_PED_TO_PAUSE_MENU
-- @usage void GIVE_PED_TO_PAUSE_MENU(Ped ped, int p1);
-- @param ped Ped
-- @param int
-- @return void
function GivePedToPauseMenu() end

-- @todo
-- @module native
-- @submodule ui
-- @see IS_SOCIAL_CLUB_ACTIVE
-- @usage BOOL IS_SOCIAL_CLUB_ACTIVE();
-- @param undefined
-- @return BOOL
function IsSocialClubActive() end

-- Returns whether the ped's blip is controlled by the game.  It's the default blip you can see on enemies during freeroam in singleplayer (the one that fades out quickly).
-- @module native
-- @submodule ui
-- @see DOES_PED_HAVE_AI_BLIP
-- @usage BOOL DOES_PED_HAVE_AI_BLIP(Ped ped);
-- @param ped Ped
-- @return BOOL
function DoesPedHaveAiBlip() end

-- Hash collision
-- @module native
-- @submodule ui
-- @see HIDE_SPECIAL_ABILITY_LOCKON_OPERATION
-- @usage void HIDE_SPECIAL_ABILITY_LOCKON_OPERATION(Any p0, BOOL p1);
-- @param p0 Any
-- @param BOOL
-- @return void
function HideSpecialAbilityLockonOperation() end