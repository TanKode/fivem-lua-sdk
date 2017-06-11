-- NOTE: Debugging functions are not present in the retail version of the game.
-- @module native
-- @submodule graphics
-- @see SET_DEBUG_LINES_AND_SPHERES_DRAWING_ACTIVE
-- @usage void SET_DEBUG_LINES_AND_SPHERES_DRAWING_ACTIVE(BOOL enabled);
-- @param enabled BOOL
-- @return void
function SetDebugLinesAndSpheresDrawingActive() end

-- NOTE: Debugging functions are not present in the retail version of the game.
-- @module native
-- @submodule graphics
-- @see DRAW_DEBUG_LINE
-- @usage void DRAW_DEBUG_LINE(float x1, float y1, float z1, float x2, float y2, float z2, int red, int green, int blue, int alpha);
-- @param x1 float
-- @param float
-- @param int
-- @return void
function DrawDebugLine() end

-- NOTE: Debugging functions are not present in the retail version of the game.
-- @module native
-- @submodule graphics
-- @see DRAW_DEBUG_LINE_WITH_TWO_COLOURS
-- @usage void DRAW_DEBUG_LINE_WITH_TWO_COLOURS(float x1, float y1, float z1, float x2, float y2, float z2, int r1, int g1, int b1, int r2, int g2, int b2, int alpha1, int alpha2);
-- @param x1 float
-- @param float
-- @param int
-- @return void
function DrawDebugLineWithTwoColours() end

-- NOTE: Debugging functions are not present in the retail version of the game.
-- @module native
-- @submodule graphics
-- @see DRAW_DEBUG_SPHERE
-- @usage void DRAW_DEBUG_SPHERE(float x, float y, float z, float radius, int red, int green, int blue, int alpha);
-- @param x float
-- @param float
-- @param int
-- @return void
function DrawDebugSphere() end

-- NOTE: Debugging functions are not present in the retail version of the game.
-- @module native
-- @submodule graphics
-- @see DRAW_DEBUG_BOX
-- @usage void DRAW_DEBUG_BOX(float x1, float y1, float z1, float x2, float y2, float z2, int red, int green, int blue, int alpha);
-- @param x1 float
-- @param float
-- @param int
-- @return void
function DrawDebugBox() end

-- NOTE: Debugging functions are not present in the retail version of the game.
-- @module native
-- @submodule graphics
-- @see DRAW_DEBUG_CROSS
-- @usage void DRAW_DEBUG_CROSS(float x, float y, float z, float size, int red, int green, int blue, int alpha);
-- @param x float
-- @param float
-- @param int
-- @return void
function DrawDebugCross() end

-- NOTE: Debugging functions are not present in the retail version of the game.
-- @module native
-- @submodule graphics
-- @see DRAW_DEBUG_TEXT
-- @usage void DRAW_DEBUG_TEXT(char* text, float x, float y, float z, int red, int green, int blue, int alpha);
-- @param text char*
-- @param float
-- @param int
-- @return void
function DrawDebugText() end

-- NOTE: Debugging functions are not present in the retail version of the game.
-- @module native
-- @submodule graphics
-- @see DRAW_DEBUG_TEXT_2D
-- @usage void DRAW_DEBUG_TEXT_2D(char* text, float x, float y, float z, int red, int green, int blue, int alpha);
-- @param text char*
-- @param float
-- @param int
-- @return void
function DrawDebugText_2d() end

-- Draws a depth-tested line from one point to another. ---------------- x1, y1, z1 : Coordinates for the first point x2, y2, z2 : Coordinates for the second point r, g, b, alpha : Color with RGBA-Values I recommend using a predefined function to call this. [VB.NET] Public Sub DrawLine(from As Vector3, [to] As Vector3, col As Color)     [Function].Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, [to].X, [to].Y, [to].Z, col.R, col.G, col.B, col.A) End Sub  [C#] public void DrawLine(Vector3 from, Vector3 to, Color col) {     Function.Call(Hash.DRAW_LINE, from.X, from.Y, from.Z, to.X, to.Y, to.Z, col.R, col.G, col.B, col.A); }
-- @module native
-- @submodule graphics
-- @see DRAW_LINE
-- @usage void DRAW_LINE(float x1, float y1, float z1, float x2, float y2, float z2, int red, int green, int blue, int alpha);
-- @param x1 float
-- @param float
-- @param int
-- @return void
function DrawLine() end

-- x/y/z - Location of a vertex (in world coords), presumably. ---------------- x1, y1, z1     : Coordinates for the first point x2, y2, z2     : Coordinates for the second point x3, y3, z3     : Coordinates for the third point r, g, b, alpha : Color with RGBA-Values  Keep in mind that only one side of the drawn triangle is visible: It's the side, in which the vector-product of the vectors heads to: (b-a)x(c-a) Or (b-a)x(c-b). But be aware: The function seems to work somehow differently. I have trouble having them drawn in rotated orientation. Try it yourself and if you somehow succeed, please edit this and post your solution. I recommend using a predefined function to call this. [VB.NET] Public Sub DrawPoly(a As Vector3, b As Vector3, c As Vector3, col As Color)     [Function].Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A) End Sub  [C#] public void DrawPoly(Vector3 a, Vector3 b, Vector3 c, Color col) {     Function.Call(Hash.DRAW_POLY, a.X, a.Y, a.Z, b.X, b.Y, b.Z, c.X, c.Y, c.Z, col.R, col.G, col.B, col.A); } BTW: Intersecting triangles are not supported: They overlap in the order they were called.
-- @module native
-- @submodule graphics
-- @see DRAW_POLY
-- @usage void DRAW_POLY(float x1, float y1, float z1, float x2, float y2, float z2, float x3, float y3, float z3, int red, int green, int blue, int alpha);
-- @param x1 float
-- @param float
-- @param int
-- @return void
function DrawPoly() end

-- x,y,z = start pos x2,y2,z2 = end pos  Draw's a 3D Box between the two x,y,z coords. -------------- Keep in mind that the edges of the box do only align to the worlds base-vectors. Therefore something like rotation cannot be applied. That means this function is pretty much useless, unless you want a static unicolor box somewhere. I recommend using a predefined function to call this. [VB.NET] Public Sub DrawBox(a As Vector3, b As Vector3, col As Color)     [Function].Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A) End Sub  [C#] public void DrawBox(Vector3 a, Vector3 b, Color col) {     Function.Call(Hash.DRAW_BOX,a.X, a.Y, a.Z,b.X, b.Y, b.Z,col.R, col.G, col.B, col.A); }
-- @module native
-- @submodule graphics
-- @see DRAW_BOX
-- @usage void DRAW_BOX(float x1, float y1, float z1, float x2, float y2, float z2, int red, int green, int blue, int alpha);
-- @param x1 float
-- @param float
-- @param int
-- @return void
function DrawBox() end

-- This function is hard-coded to always return 0.
-- @module native
-- @submodule graphics
-- @see GET_MAXIMUM_NUMBER_OF_PHOTOS
-- @usage int GET_MAXIMUM_NUMBER_OF_PHOTOS();
-- @param undefined
-- @return int
function GetMaximumNumberOfPhotos() end

-- @todo
-- @module native
-- @submodule graphics
-- @see DRAW_LIGHT_WITH_RANGE
-- @usage void DRAW_LIGHT_WITH_RANGE(float posX, float posY, float posZ, int colorR, int colorG, int colorB, float range, float intensity);
-- @param posX float
-- @param float
-- @param int
-- @return void
function DrawLightWithRange() end

-- Parameters: * pos - coordinate where the spotlight is located * dir - the direction vector the spotlight should aim at from its current position * r,g,b - color of the spotlight * distance - the maximum distance the light can reach * brightness - the brightness of the light * roundness - "smoothness" of the circle edge * radius - the radius size of the spotlight * falloff - the falloff size of the light's edge (example: www.i.imgur.com/DemAWeO.jpg)  Example in C# (spotlight aims at the closest vehicle): Vector3 myPos = Game.Player.Character.Position; Vehicle nearest = World.GetClosestVehicle(myPos , 1000f); Vector3 destinationCoords = nearest.Position; Vector3 dirVector = destinationCoords - myPos; dirVector.Normalize(); Function.Call(Hash.DRAW_SPOT_LIGHT, pos.X, pos.Y, pos.Z, dirVector.X, dirVector.Y, dirVector.Z, 255, 255, 255, 100.0f, 1f, 0.0f, 13.0f, 1f);
-- @module native
-- @submodule graphics
-- @see DRAW_SPOT_LIGHT
-- @usage void DRAW_SPOT_LIGHT(float posX, float posY, float posZ, float dirX, float dirY, float dirZ, int colorR, int colorG, int colorB, float distance, float brightness, float roundness, float radius, float falloff);
-- @param posX float
-- @param float
-- @param int
-- @return void
function DrawSpotLight() end

-- enum MarkerTypes { 	MarkerTypeUpsideDownCone = 0, 	MarkerTypeVerticalCylinder = 1, 	MarkerTypeThickChevronUp = 2, 	MarkerTypeThinChevronUp = 3, 	MarkerTypeCheckeredFlagRect = 4, 	MarkerTypeCheckeredFlagCircle = 5, 	MarkerTypeVerticleCircle = 6, 	MarkerTypePlaneModel = 7, 	MarkerTypeLostMCDark = 8, 	MarkerTypeLostMCLight = 9, 	MarkerTypeNumber0 = 10, 	MarkerTypeNumber1 = 11, 	MarkerTypeNumber2 = 12, 	MarkerTypeNumber3 = 13, 	MarkerTypeNumber4 = 14, 	MarkerTypeNumber5 = 15, 	MarkerTypeNumber6 = 16, 	MarkerTypeNumber7 = 17, 	MarkerTypeNumber8 = 18, 	MarkerTypeNumber9 = 19, 	MarkerTypeChevronUpx1 = 20, 	MarkerTypeChevronUpx2 = 21, 	MarkerTypeChevronUpx3 = 22, 	MarkerTypeHorizontalCircleFat = 23, 	MarkerTypeReplayIcon = 24, 	MarkerTypeHorizontalCircleSkinny = 25, 	MarkerTypeHorizontalCircleSkinny_Arrow = 26, 	MarkerTypeHorizontalSplitArrowCircle = 27, 	MarkerTypeDebugSphere = 28, 	MarkerTypeDallorSign = 29, 	MarkerTypeHorizontalBars = 30, 	MarkerTypeWolfHead = 31 };  dirX/Y/Z represent a heading on each axis in which the marker should face, alternatively you can rotate each axis independently with rotX/Y/Z (and set dirX/Y/Z all to 0).  faceCamera - Rotates only the y-axis (the heading) towards the camera  p19 - no effect, default value in script is 2  rotate - Rotates only on the y-axis (the heading)  textureDict - Name of texture dictionary to load texture from (e.g. "GolfPutting")  textureName - Name of texture inside dictionary to load (e.g. "PuttingMarker")  drawOnEnts - Draws the marker onto any entities that intersect it  basically what he said, except textureDict and textureName are totally not char*, or if so, then they are always set to 0/NULL/nullptr in every script I checked, eg:  bj.c: graphics::draw_marker(6, vParam0, 0f, 0f, 1f, 0f, 0f, 0f, 4f, 4f, 4f, 240, 200, 80, iVar1, 0, 0, 2, 0, 0, 0, false);  his is what I used to draw an amber downward pointing chevron "V", has to be redrawn every frame.  The 180 is for 180 degrees rotation around the Y axis, the 50 is alpha, assuming max is 100, but it will accept 255.  GRAPHICS::DRAW_MARKER(2, v.x, v.y, v.z + 2, 0, 0, 0, 0, 180, 0, 2, 2, 2, 255, 128, 0, 50, 0, 1, 1, 0, 0, 0, 0);
-- @module native
-- @submodule graphics
-- @see DRAW_MARKER
-- @usage void DRAW_MARKER(int type, float posX, float posY, float posZ, float dirX, float dirY, float dirZ, float rotX, float rotY, float rotZ, float scaleX, float scaleY, float scaleZ, int red, int green, int blue, int alpha, BOOL bobUpAndDown, BOOL faceCamera, int p19, BOOL rotate, char* textureDict, char* textureName, BOOL drawOnEnts);
-- @param type int
-- @param float
-- @param int
-- @param BOOL
-- @param char*
-- @return void
function DrawMarker() end

-- Creates a checkpoint. Returns the handle of the checkpoint.  20/03/17 : Attention, checkpoints are already handled by the game itself, so you must not loop it like markers.  Parameters: * type - The type of checkpoint to create. See below for a list of checkpoint types. * pos1 - The position of the checkpoint. * pos2 - The position of the next checkpoint to point to. * radius - The radius of the checkpoint. * color - The color of the checkpoint. * reserved - Special parameter, see below for details. Usually set to 0 in the scripts.  Checkpoint types: 0-4---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker 5-9---------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker 10-14-------Ring: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker 15-19-------1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker       20-24-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  25-29-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker     30-34-------Cylinder: 1 arrow, 2 arrow, 3 arrows, CycleArrow, Checker  35-38-------Ring: Airplane Up, Left, Right, UpsideDown 39----------? 40----------Ring: just a ring 41----------? 42-44-------Cylinder w/ number (uses 'reserved' parameter) 45-47-------Cylinder no arrow or number  If using type 42-44, reserved sets number / number and shape to display  0-99------------Just numbers (0-99) 100-109-----------------Arrow (0-9) 110-119------------Two arrows (0-9) 120-129----------Three arrows (0-9) 130-139----------------Circle (0-9) 140-149------------CycleArrow (0-9) 150-159----------------Circle (0-9) 160-169----Circle  w/ pointer (0-9) 170-179-------Perforated ring (0-9) 180-189----------------Sphere (0-9)
-- @module native
-- @submodule graphics
-- @see CREATE_CHECKPOINT
-- @usage int CREATE_CHECKPOINT(int type, float posX1, float posY1, float posZ1, float posX2, float posY2, float posZ2, float radius, int red, int green, int blue, int alpha, int reserved);
-- @param type int
-- @param float
-- @param int
-- @return int
function CreateCheckpoint() end

-- Sets the cylinder height of the checkpoint.  Parameters: * nearHeight - The height of the checkpoint when inside of the radius. * farHeight - The height of the checkpoint when outside of the radius. * radius - The radius of the checkpoint.
-- @module native
-- @submodule graphics
-- @see SET_CHECKPOINT_CYLINDER_HEIGHT
-- @usage void SET_CHECKPOINT_CYLINDER_HEIGHT(int checkpoint, float nearHeight, float farHeight, float radius);
-- @param checkpoint int
-- @param float
-- @return void
function SetCheckpointCylinderHeight() end

-- Sets the checkpoint color.
-- @module native
-- @submodule graphics
-- @see SET_CHECKPOINT_RGBA
-- @usage void SET_CHECKPOINT_RGBA(int checkpoint, int red, int green, int blue, int alpha);
-- @param checkpoint int
-- @param int
-- @return void
function SetCheckpointRgba() end

-- @todo
-- @module native
-- @submodule graphics
-- @see DELETE_CHECKPOINT
-- @usage void DELETE_CHECKPOINT(int checkpoint);
-- @param checkpoint int
-- @return void
function DeleteCheckpoint() end

-- last param isnt a toggle
-- @module native
-- @submodule graphics
-- @see REQUEST_STREAMED_TEXTURE_DICT
-- @usage void REQUEST_STREAMED_TEXTURE_DICT(char* textureDict, BOOL p1);
-- @param textureDict char*
-- @param BOOL
-- @return void
function RequestStreamedTextureDict() end

-- @todo
-- @module native
-- @submodule graphics
-- @see HAS_STREAMED_TEXTURE_DICT_LOADED
-- @usage BOOL HAS_STREAMED_TEXTURE_DICT_LOADED(char* textureDict);
-- @param textureDict char*
-- @return BOOL
function HasStreamedTextureDictLoaded() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED
-- @usage void SET_STREAMED_TEXTURE_DICT_AS_NO_LONGER_NEEDED(char* textureDict);
-- @param textureDict char*
-- @return void
function SetStreamedTextureDictAsNoLongerNeeded() end

-- Draws a rectangle on the screen.  -x: The relative X point of the center of the rectangle. (0.0-1.0, 0.0 is the left edge of the screen, 1.0 is the right edge of the screen)  -y: The relative Y point of the center of the rectangle. (0.0-1.0, 0.0 is the top edge of the screen, 1.0 is the bottom edge of the screen)  -width: The relative width of the rectangle. (0.0-1.0, 1.0 means the whole screen width)  -height: The relative height of the rectangle. (0.0-1.0, 1.0 means the whole screen height)  -R: Red part of the color. (0-255)  -G: Green part of the color. (0-255)  -B: Blue part of the color. (0-255)  -A: Alpha part of the color. (0-255, 0 means totally transparent, 255 means totally opaque)  The total number of rectangles to be drawn in one frame is apparently limited to 399.
-- @module native
-- @submodule graphics
-- @see DRAW_RECT
-- @usage void DRAW_RECT(float x, float y, float width, float height, int r, int g, int b, int a);
-- @param x float
-- @param float
-- @param int
-- @return void
function DrawRect() end

-- Gets the scale of safe zone. if the safe zone size scale is max, it will return 1.0.
-- @module native
-- @submodule graphics
-- @see GET_SAFE_ZONE_SIZE
-- @usage float GET_SAFE_ZONE_SIZE();
-- @param undefined
-- @return float
function GetSafeZoneSize() end

-- Draws a 2D sprite on the screen.  Parameters: textureDict - Name of texture dictionary to load texture from (e.g. "CommonMenu", "MPWeaponsCommon", etc.)  textureName - Name of texture to load from texture dictionary (e.g. "last_team_standing_icon", "tennis_icon", etc.)  screenX/Y - Screen offset (0.5 = center) scaleX/Y - Texture scaling. Negative values can be used to flip the texture on that axis. (0.5 = half)  heading - Texture rotation in degrees (default = 0.0) positive is clockwise, measured in degrees  red,green,blue - Sprite color (default = 255/255/255)  alpha - if set to '2' it will grab all entitys in the game on call  alpha - why would it do that and where would it output the entites. And shouldn't it the alpha color for this param?
-- @module native
-- @submodule graphics
-- @see DRAW_SPRITE
-- @usage void DRAW_SPRITE(char* textureDict, char* textureName, float screenX, float screenY, float width, float height, float heading, int red, int green, int blue, int alpha);
-- @param textureDict char*
-- @param char*
-- @param float
-- @param int
-- @return void
function DrawSprite() end

-- Example: GRAPHICS::ADD_ENTITY_ICON(a_0, "MP_Arrow");  I tried this and nothing happened...
-- @module native
-- @submodule graphics
-- @see ADD_ENTITY_ICON
-- @usage Any ADD_ENTITY_ICON(Entity entity, char* icon);
-- @param entity Entity
-- @param char*
-- @return Any
function AddEntityIcon() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_ENTITY_ICON_VISIBILITY
-- @usage void SET_ENTITY_ICON_VISIBILITY(Entity entity, BOOL toggle);
-- @param entity Entity
-- @param BOOL
-- @return void
function SetEntityIconVisibility() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_ENTITY_ICON_COLOR
-- @usage void SET_ENTITY_ICON_COLOR(Entity entity, int red, int green, int blue, int alpha);
-- @param entity Entity
-- @param int
-- @return void
function SetEntityIconColor() end

-- Sets the on-screen drawing origin for draw-functions (which is normally x=0,y=0 in the upper left corner of the screen) to a world coordinate. From now on, the screen coordinate which displays the given world coordinate on the screen is seen as x=0,y=0.  Example in C#: Vector3 boneCoord = somePed.GetBoneCoord(Bone.SKEL_Head); Function.Call(Hash.SET_DRAW_ORIGIN, boneCoord.X, boneCoord.Y, boneCoord.Z, 0); Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, -0.015, 0.013, 0.013, 0.0, 255, 0, 0, 200); Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, -0.015, 0.013, 0.013, 90.0, 255, 0, 0, 200); Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", -0.01, 0.015, 0.013, 0.013, 270.0, 255, 0, 0, 200); Function.Call(Hash.DRAW_SPRITE, "helicopterhud", "hud_corner", 0.01, 0.015, 0.013, 0.013, 180.0, 255, 0, 0, 200); Function.Call(Hash.CLEAR_DRAW_ORIGIN);  Result: www11.pic-upload.de/19.06.15/bkqohvil2uao.jpg If the pedestrian starts walking around now, the sprites are always around her head, no matter where the head is displayed on the screen.  This function also effects the drawing of texts and other UI-elements. The effect can be reset by calling GRAPHICS::CLEAR_DRAW_ORIGIN().
-- @module native
-- @submodule graphics
-- @see SET_DRAW_ORIGIN
-- @usage void SET_DRAW_ORIGIN(float x, float y, float z, Any p3);
-- @param x float
-- @param float
-- @param Any
-- @return void
function SetDrawOrigin() end

-- Resets the screen's draw-origin which was changed by the function GRAPHICS::SET_DRAW_ORIGIN(...) back to x=0,y=0.  See GRAPHICS::SET_DRAW_ORIGIN(...) for further information.
-- @module native
-- @submodule graphics
-- @see CLEAR_DRAW_ORIGIN
-- @usage void CLEAR_DRAW_ORIGIN();
-- @param undefined
-- @return void
function ClearDrawOrigin() end

-- Might be more appropriate in AUDIO?
-- @module native
-- @submodule graphics
-- @see ATTACH_TV_AUDIO_TO_ENTITY
-- @usage void ATTACH_TV_AUDIO_TO_ENTITY(Entity entity);
-- @param entity Entity
-- @return void
function AttachTvAudioToEntity() end

-- Might be more appropriate in AUDIO?  Rockstar made it like this.  Probably changes tvs from being a 3d audio to being "global" audio
-- @module native
-- @submodule graphics
-- @see SET_TV_AUDIO_FRONTEND
-- @usage void SET_TV_AUDIO_FRONTEND(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetTvAudioFrontend() end

-- @todo
-- @module native
-- @submodule graphics
-- @see LOAD_MOVIE_MESH_SET
-- @usage int LOAD_MOVIE_MESH_SET(char* movieMeshSetName);
-- @param movieMeshSetName char*
-- @return int
function LoadMovieMeshSet() end

-- @todo
-- @module native
-- @submodule graphics
-- @see RELEASE_MOVIE_MESH_SET
-- @usage void RELEASE_MOVIE_MESH_SET(int movieMeshSet);
-- @param movieMeshSet int
-- @return void
function ReleaseMovieMeshSet() end

-- int screenresx,screenresy; GET_SCREEN_RESOLUTION(&screenresx,&screenresy);
-- @module native
-- @submodule graphics
-- @see GET_SCREEN_RESOLUTION
-- @usage void GET_SCREEN_RESOLUTION(int* x, int* y);
-- @param x int*
-- @param int*
-- @return void
function GetScreenResolution() end

-- Setting Aspect Ratio Manually in game will return:  false - for Narrow format Aspect Ratios (3:2, 4:3, 5:4, etc. ) true - for Wide format Aspect Ratios (5:3, 16:9, 16:10, etc. )  Setting Aspect Ratio to "Auto" in game will return "false" or "true" based on the actual set Resolution Ratio.
-- @module native
-- @submodule graphics
-- @see GET_IS_WIDESCREEN
-- @usage BOOL GET_IS_WIDESCREEN();
-- @param undefined
-- @return BOOL
function GetIsWidescreen() end

-- false = Any resolution < 1280x720 true = Any resolution >= 1280x720
-- @module native
-- @submodule graphics
-- @see GET_IS_HIDEF
-- @usage BOOL GET_IS_HIDEF();
-- @param undefined
-- @return BOOL
function GetIsHidef() end

-- Enables Night Vision.  Example: C#: Function.Call(Hash.SET_NIGHTVISION, true); C++: GRAPHICS::SET_NIGHTVISION(true);  BOOL toggle: true = turns night vision on for your player. false = turns night vision off for your player.
-- @module native
-- @submodule graphics
-- @see SET_NIGHTVISION
-- @usage void SET_NIGHTVISION(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetNightvision() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_NOISEOVERIDE
-- @usage void SET_NOISEOVERIDE(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetNoiseoveride() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_NOISINESSOVERIDE
-- @usage void SET_NOISINESSOVERIDE(float value);
-- @param value float
-- @return void
function SetNoisinessoveride() end

-- Convert a world coordinate into its relative screen coordinate.  (WorldToScreen)  Returns a boolean; whether or not the operation was successful. It will return false if the coordinates given are not visible to the rendering camera.   For .NET users...  VB: Public Shared Function World3DToScreen2d(pos as vector3) As Vector2          Dim x2dp, y2dp As New Native.OutputArgument          Native.Function.Call(Of Boolean)(Native.Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.x, pos.y, pos.z, x2dp, y2dp)         Return New Vector2(x2dp.GetResult(Of Single), y2dp.GetResult(Of Single))            End Function  C#: Vector2 World3DToScreen2d(Vector3 pos)     {         var x2dp = new OutputArgument();         var y2dp = new OutputArgument();          Function.Call<bool>(Hash.GET_SCREEN_COORD_FROM_WORLD_COORD , pos.X, pos.Y, pos.Z, x2dp, y2dp);         return new Vector2(x2dp.GetResult<float>(), y2dp.GetResult<float>());     } //USE VERY SMALL VALUES FOR THE SCALE OF RECTS/TEXT because it is dramatically larger on screen than in 3D, e.g '0.05' small.  Used to be called _WORLD3D_TO_SCREEN2D  I thought we lost you from the scene forever. It does seem however that calling SET_DRAW_ORIGIN then your natives, then ending it. Seems to work better for certain things such as keeping boxes around people for a predator missile e.g.
-- @module native
-- @submodule graphics
-- @see GET_SCREEN_COORD_FROM_WORLD_COORD
-- @usage BOOL GET_SCREEN_COORD_FROM_WORLD_COORD(float worldX, float worldY, float worldZ, float* screenX, float* screenY);
-- @param worldX float
-- @param float
-- @param float*
-- @return BOOL
function GetScreenCoordFromWorldCoord() end

-- Returns the texture resolution of the passed texture dict+name.  Note: Most texture resolutions are doubled compared to the console version of the game.
-- @module native
-- @submodule graphics
-- @see GET_TEXTURE_RESOLUTION
-- @usage Vector3 GET_TEXTURE_RESOLUTION(char* textureDict, char* textureName);
-- @param textureDict char*
-- @param char*
-- @return Vector3
function GetTextureResolution() end

-- Purpose of p0 and p1 unknown.
-- @module native
-- @submodule graphics
-- @see SET_FLASH
-- @usage void SET_FLASH(float p0, float p1, float fadeIn, float duration, float fadeOut);
-- @param p0 float
-- @param float
-- @return void
function SetFlash() end

-- Creates a tracked point, useful for checking the visibility of a 3D point on screen.
-- @module native
-- @submodule graphics
-- @see CREATE_TRACKED_POINT
-- @usage Object CREATE_TRACKED_POINT();
-- @param undefined
-- @return Object
function CreateTrackedPoint() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_TRACKED_POINT_INFO
-- @usage Any SET_TRACKED_POINT_INFO(Object point, float x, float y, float z, float radius);
-- @param point Object
-- @param float
-- @return Any
function SetTrackedPointInfo() end

-- @todo
-- @module native
-- @submodule graphics
-- @see IS_TRACKED_POINT_VISIBLE
-- @usage BOOL IS_TRACKED_POINT_VISIBLE(Object point);
-- @param point Object
-- @return BOOL
function IsTrackedPointVisible() end

-- @todo
-- @module native
-- @submodule graphics
-- @see DESTROY_TRACKED_POINT
-- @usage void DESTROY_TRACKED_POINT(Object point);
-- @param point Object
-- @return void
function DestroyTrackedPoint() end

-- Toggles Heatvision on/off.
-- @module native
-- @submodule graphics
-- @see SET_SEETHROUGH
-- @usage void SET_SEETHROUGH(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetSeethrough() end

-- @todo
-- @module native
-- @submodule graphics
-- @see IS_PARTICLE_FX_DELAYED_BLINK
-- @usage float IS_PARTICLE_FX_DELAYED_BLINK();
-- @param undefined
-- @return float
function IsParticleFxDelayedBlink() end

-- GRAPHICS::START_PARTICLE_FX_NON_LOOPED_AT_COORD("scr_paleto_roof_impact", -140.8576f, 6420.789f, 41.1391f, 0f, 0f, 267.3957f, 0x3F800000, 0, 0, 0);  Axis - Invert Axis Flags  list: pastebin.com/N9unUFWY   ------------------------------------------------------------------- C#  Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, = you are calling this function.  char *effectname = This is an in-game effect name, for e.g. "scr_fbi4_trucks_crash" is used to give the effects when truck crashes etc  float x, y, z pos = this one is Simple, you just have to declare, where do you want this effect to take place at, so declare the ordinates  float xrot, yrot, zrot = Again simple? just mention the value in case if you want the effect to rotate.  float scale = is declare the scale of the effect, this may vary as per the effects for e.g 1.0f  bool xaxis, yaxis, zaxis = To bool the axis values.  example: Function.Call<int>(Hash.START_PARTICLE_FX_NON_LOOPED_AT_COORD, "scr_fbi4_trucks_crash", GTA.Game.Player.Character.Position.X, GTA.Game.Player.Character.Position.Y, GTA.Game.Player.Character.Position.Z + 4f, 0, 0, 0, 5.5f, 0, 0, 0);
-- @module native
-- @submodule graphics
-- @see START_PARTICLE_FX_NON_LOOPED_AT_COORD
-- @usage int START_PARTICLE_FX_NON_LOOPED_AT_COORD(char* effectName, float xPos, float yPos, float zPos, float xRot, float yRot, float zRot, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis);
-- @param effectName char*
-- @param float
-- @param BOOL
-- @return int
function StartParticleFxNonLoopedAtCoord() end

-- GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE("scr_sh_bong_smoke", PLAYER::PLAYER_PED_ID(), -0.025f, 0.13f, 0f, 0f, 0f, 0f, 31086, 0x3F800000, 0, 0, 0);  Axis - Invert Axis Flags  list: pastebin.com/N9unUFWY
-- @module native
-- @submodule graphics
-- @see START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE
-- @usage BOOL START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE(char* effectName, Ped ped, float offsetX, float offsetY, float offsetZ, float rotX, float rotY, float rotZ, int boneIndex, float scale, BOOL axisX, BOOL axisY, BOOL axisZ);
-- @param effectName char*
-- @param Ped
-- @param float
-- @param int
-- @param BOOL
-- @return BOOL
function StartParticleFxNonLoopedOnPedBone() end

-- Starts a particle effect on an entity for example your player. List: pastebin.com/N9unUFWY  Example: C#: Function.Call(Hash.REQUEST_NAMED_PTFX_ASSET, "scr_rcbarry2");                     Function.Call(Hash._SET_PTFX_ASSET_NEXT_CALL, "scr_rcbarry2");                             Function.Call(Hash.START_PARTICLE_FX_NON_LOOPED_ON_ENTITY, "scr_clown_appears", Game.Player.Character, 0.0, 0.0, -0.5, 0.0, 0.0, 0.0, 1.0, false, false, false);  Internally this calls the same function as GRAPHICS::START_PARTICLE_FX_NON_LOOPED_ON_PED_BONE however it uses -1 for the specified bone index, so it should be possible to start a non looped fx on an entity bone using that native
-- @module native
-- @submodule graphics
-- @see START_PARTICLE_FX_NON_LOOPED_ON_ENTITY
-- @usage BOOL START_PARTICLE_FX_NON_LOOPED_ON_ENTITY(char* effectName, Entity entity, float offsetX, float offsetY, float offsetZ, float rotX, float rotY, float rotZ, float scale, BOOL axisX, BOOL axisY, BOOL axisZ);
-- @param effectName char*
-- @param Entity
-- @param float
-- @param BOOL
-- @return BOOL
function StartParticleFxNonLoopedOnEntity() end

-- only works on some fx's
-- @module native
-- @submodule graphics
-- @see SET_PARTICLE_FX_NON_LOOPED_COLOUR
-- @usage void SET_PARTICLE_FX_NON_LOOPED_COLOUR(float r, float g, float b);
-- @param r float
-- @param float
-- @return void
function SetParticleFxNonLoopedColour() end

-- Usage example for C#:          Function.Call(Hash.SET_PARTICLE_FX_NON_LOOPED_ALPHA, new InputArgument[] { 0.1f });  Note: the argument alpha ranges from 0.0f-1.0f !
-- @module native
-- @submodule graphics
-- @see SET_PARTICLE_FX_NON_LOOPED_ALPHA
-- @usage void SET_PARTICLE_FX_NON_LOOPED_ALPHA(float alpha);
-- @param alpha float
-- @return void
function SetParticleFxNonLoopedAlpha() end

-- GRAPHICS::START_PARTICLE_FX_LOOPED_AT_COORD("scr_fbi_falling_debris", 93.7743f, -749.4572f, 70.86904f, 0f, 0f, 0f, 0x3F800000, 0, 0, 0, 0)
-- @module native
-- @submodule graphics
-- @see START_PARTICLE_FX_LOOPED_AT_COORD
-- @usage int START_PARTICLE_FX_LOOPED_AT_COORD(char* effectName, float x, float y, float z, float xRot, float yRot, float zRot, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis, BOOL p11);
-- @param effectName char*
-- @param float
-- @param BOOL
-- @return int
function StartParticleFxLoopedAtCoord() end

-- @todo
-- @module native
-- @submodule graphics
-- @see START_PARTICLE_FX_LOOPED_ON_PED_BONE
-- @usage int START_PARTICLE_FX_LOOPED_ON_PED_BONE(char* effectName, Ped ped, float xOffset, float yOffset, float zOffset, float xRot, float yRot, float zRot, int boneIndex, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis);
-- @param effectName char*
-- @param Ped
-- @param float
-- @param int
-- @param BOOL
-- @return int
function StartParticleFxLoopedOnPedBone() end

-- list: pastebin.com/N9unUFWY
-- @module native
-- @submodule graphics
-- @see START_PARTICLE_FX_LOOPED_ON_ENTITY
-- @usage int START_PARTICLE_FX_LOOPED_ON_ENTITY(char* effectName, Entity entity, float xOffset, float yOffset, float zOffset, float xRot, float yRot, float zRot, float scale, BOOL xAxis, BOOL yAxis, BOOL zAxis);
-- @param effectName char*
-- @param Entity
-- @param float
-- @param BOOL
-- @return int
function StartParticleFxLoopedOnEntity() end

-- p1 is always 0 in the native scripts
-- @module native
-- @submodule graphics
-- @see STOP_PARTICLE_FX_LOOPED
-- @usage void STOP_PARTICLE_FX_LOOPED(int ptfxHandle, BOOL p1);
-- @param ptfxHandle int
-- @param BOOL
-- @return void
function StopParticleFxLooped() end

-- @todo
-- @module native
-- @submodule graphics
-- @see REMOVE_PARTICLE_FX
-- @usage void REMOVE_PARTICLE_FX(int ptfxHandle, BOOL p1);
-- @param ptfxHandle int
-- @param BOOL
-- @return void
function RemoveParticleFx() end

-- @todo
-- @module native
-- @submodule graphics
-- @see REMOVE_PARTICLE_FX_FROM_ENTITY
-- @usage void REMOVE_PARTICLE_FX_FROM_ENTITY(Entity entity);
-- @param entity Entity
-- @return void
function RemoveParticleFxFromEntity() end

-- @todo
-- @module native
-- @submodule graphics
-- @see REMOVE_PARTICLE_FX_IN_RANGE
-- @usage void REMOVE_PARTICLE_FX_IN_RANGE(float X, float Y, float Z, float radius);
-- @param X float
-- @param float
-- @return void
function RemoveParticleFxInRange() end

-- @todo
-- @module native
-- @submodule graphics
-- @see DOES_PARTICLE_FX_LOOPED_EXIST
-- @usage BOOL DOES_PARTICLE_FX_LOOPED_EXIST(int ptfxHandle);
-- @param ptfxHandle int
-- @return BOOL
function DoesParticleFxLoopedExist() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_PARTICLE_FX_LOOPED_OFFSETS
-- @usage void SET_PARTICLE_FX_LOOPED_OFFSETS(int ptfxHandle, float x, float y, float z, float rotX, float rotY, float rotZ);
-- @param ptfxHandle int
-- @param float
-- @return void
function SetParticleFxLoopedOffsets() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_PARTICLE_FX_LOOPED_EVOLUTION
-- @usage void SET_PARTICLE_FX_LOOPED_EVOLUTION(int ptfxHandle, char* propertyName, float amount, BOOL Id);
-- @param ptfxHandle int
-- @param char*
-- @param float
-- @param BOOL
-- @return void
function SetParticleFxLoopedEvolution() end

-- only works on some fx's  p4 = 0
-- @module native
-- @submodule graphics
-- @see SET_PARTICLE_FX_LOOPED_COLOUR
-- @usage void SET_PARTICLE_FX_LOOPED_COLOUR(int ptfxHandle, float r, float g, float b, BOOL p4);
-- @param ptfxHandle int
-- @param float
-- @param BOOL
-- @return void
function SetParticleFxLoopedColour() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_PARTICLE_FX_LOOPED_ALPHA
-- @usage void SET_PARTICLE_FX_LOOPED_ALPHA(int ptfxHandle, float alpha);
-- @param ptfxHandle int
-- @param float
-- @return void
function SetParticleFxLoopedAlpha() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_PARTICLE_FX_LOOPED_SCALE
-- @usage void SET_PARTICLE_FX_LOOPED_SCALE(int ptfxHandle, float scale);
-- @param ptfxHandle int
-- @param float
-- @return void
function SetParticleFxLoopedScale() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_PARTICLE_FX_CAM_INSIDE_VEHICLE
-- @usage void SET_PARTICLE_FX_CAM_INSIDE_VEHICLE(BOOL p0);
-- @param p0 BOOL
-- @return void
function SetParticleFxCamInsideVehicle() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_PARTICLE_FX_CAM_INSIDE_NONPLAYER_VEHICLE
-- @usage void SET_PARTICLE_FX_CAM_INSIDE_NONPLAYER_VEHICLE(Any p0, BOOL p1);
-- @param p0 Any
-- @param BOOL
-- @return void
function SetParticleFxCamInsideNonplayerVehicle() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_PARTICLE_FX_SHOOTOUT_BOAT
-- @usage void SET_PARTICLE_FX_SHOOTOUT_BOAT(Any p0);
-- @param p0 Any
-- @return void
function SetParticleFxShootoutBoat() end

-- hash collision
-- @module native
-- @submodule graphics
-- @see SET_PARTICLE_FX_BLOOD_SCALE
-- @usage void SET_PARTICLE_FX_BLOOD_SCALE(BOOL p0);
-- @param p0 BOOL
-- @return void
function SetParticleFxBloodScale() end

-- Creates cartoon effect when Michel smokes the weed
-- @module native
-- @submodule graphics
-- @see ENABLE_CLOWN_BLOOD_VFX
-- @usage void ENABLE_CLOWN_BLOOD_VFX(BOOL toggle);
-- @param toggle BOOL
-- @return void
function EnableClownBloodVfx() end

-- @todo
-- @module native
-- @submodule graphics
-- @see ENABLE_ALIEN_BLOOD_VFX
-- @usage void ENABLE_ALIEN_BLOOD_VFX(BOOL Toggle);
-- @param Toggle BOOL
-- @return void
function EnableAlienBloodVfx() end

-- @todo
-- @module native
-- @submodule graphics
-- @see WASH_DECALS_IN_RANGE
-- @usage void WASH_DECALS_IN_RANGE(Any p0, Any p1, Any p2, Any p3, Any p4);
-- @param p0 Any
-- @param Any
-- @return void
function WashDecalsInRange() end

-- @todo
-- @module native
-- @submodule graphics
-- @see WASH_DECALS_FROM_VEHICLE
-- @usage void WASH_DECALS_FROM_VEHICLE(Vehicle vehicle, float p1);
-- @param vehicle Vehicle
-- @param float
-- @return void
function WashDecalsFromVehicle() end

-- Fades nearby decals within the range specified
-- @module native
-- @submodule graphics
-- @see FADE_DECALS_IN_RANGE
-- @usage void FADE_DECALS_IN_RANGE(Any p0, Any p1, Any p2, Any p3, Any p4);
-- @param p0 Any
-- @param Any
-- @return void
function FadeDecalsInRange() end

-- Removes all decals in range from a position, it includes the bullet holes, blood pools, petrol...
-- @module native
-- @submodule graphics
-- @see REMOVE_DECALS_IN_RANGE
-- @usage void REMOVE_DECALS_IN_RANGE(float x, float y, float z, float range);
-- @param x float
-- @param float
-- @return void
function RemoveDecalsInRange() end

-- @todo
-- @module native
-- @submodule graphics
-- @see REMOVE_DECALS_FROM_OBJECT
-- @usage void REMOVE_DECALS_FROM_OBJECT(Object obj);
-- @param obj Object
-- @return void
function RemoveDecalsFromObject() end

-- @todo
-- @module native
-- @submodule graphics
-- @see REMOVE_DECALS_FROM_OBJECT_FACING
-- @usage void REMOVE_DECALS_FROM_OBJECT_FACING(Object obj, float x, float y, float z);
-- @param obj Object
-- @param float
-- @return void
function RemoveDecalsFromObjectFacing() end

-- @todo
-- @module native
-- @submodule graphics
-- @see REMOVE_DECALS_FROM_VEHICLE
-- @usage void REMOVE_DECALS_FROM_VEHICLE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function RemoveDecalsFromVehicle() end

-- decal types:  public enum DecalTypes {     splatters_blood = 1010,     splatters_blood_dir = 1015,     splatters_blood_mist = 1017,     splatters_mud = 1020,     splatters_paint = 1030,     splatters_water = 1040,     splatters_water_hydrant = 1050,     splatters_blood2 = 1110,     weapImpact_metal = 4010,     weapImpact_concrete = 4020,     weapImpact_mattress = 4030,     weapImpact_mud = 4032,     weapImpact_wood = 4050,     weapImpact_sand = 4053,     weapImpact_cardboard = 4040,     weapImpact_melee_glass = 4100,     weapImpact_glass_blood = 4102,     weapImpact_glass_blood2 = 4104,     weapImpact_shotgun_paper = 4200,     weapImpact_shotgun_mattress,     weapImpact_shotgun_metal,     weapImpact_shotgun_wood,     weapImpact_shotgun_dirt,     weapImpact_shotgun_tvscreen,     weapImpact_shotgun_tvscreen2,     weapImpact_shotgun_tvscreen3,     weapImpact_melee_concrete = 4310,     weapImpact_melee_wood = 4312,     weapImpact_melee_metal = 4314,     burn1 = 4421,     burn2,     burn3,     burn4,     burn5,     bang_concrete_bang = 5000,     bang_concrete_bang2,     bang_bullet_bang,     bang_bullet_bang2 = 5004,     bang_glass = 5031,     bang_glass2,     solidPool_water = 9000,     solidPool_blood,     solidPool_oil,     solidPool_petrol,     solidPool_mud,     porousPool_water,     porousPool_blood,     porousPool_oil,     porousPool_petrol,     porousPool_mud,     porousPool_water_ped_drip,     liquidTrail_water = 9050 }
-- @module native
-- @submodule graphics
-- @see ADD_DECAL
-- @usage int ADD_DECAL(int decalType, float posX, float posY, float posZ, float p4, float p5, float p6, float p7, float p8, float p9, float width, float height, float rCoef, float gCoef, float bCoef, float opacity, float timeout, BOOL p17, BOOL p18, BOOL p19);
-- @param decalType int
-- @param float
-- @param BOOL
-- @return int
function AddDecal() end

-- @todo
-- @module native
-- @submodule graphics
-- @see ADD_PETROL_DECAL
-- @usage Any ADD_PETROL_DECAL(float x, float y, float z, float groundLvl, float width, float transparency);
-- @param x float
-- @param float
-- @return Any
function AddPetrolDecal() end

-- @todo
-- @module native
-- @submodule graphics
-- @see REMOVE_DECAL
-- @usage void REMOVE_DECAL(int decal);
-- @param decal int
-- @return void
function RemoveDecal() end

-- @todo
-- @module native
-- @submodule graphics
-- @see IS_DECAL_ALIVE
-- @usage BOOL IS_DECAL_ALIVE(int decal);
-- @param decal int
-- @return BOOL
function IsDecalAlive() end

-- @todo
-- @module native
-- @submodule graphics
-- @see GET_DECAL_WASH_LEVEL
-- @usage float GET_DECAL_WASH_LEVEL(int decal);
-- @param decal int
-- @return float
function GetDecalWashLevel() end

-- @todo
-- @module native
-- @submodule graphics
-- @see MOVE_VEHICLE_DECALS
-- @usage void MOVE_VEHICLE_DECALS(Any p0, Any p1);
-- @param p0 Any
-- @param Any
-- @return void
function MoveVehicleDecals() end

-- @todo
-- @module native
-- @submodule graphics
-- @see DISABLE_VEHICLE_DISTANTLIGHTS
-- @usage void DISABLE_VEHICLE_DISTANTLIGHTS(BOOL toggle);
-- @param toggle BOOL
-- @return void
function DisableVehicleDistantlights() end

-- Loads the specified timecycle modifier. Modifiers are defined separately in another file (e.g. "timecycle_mods_1.xml")  Parameters: modifierName - The modifier to load (e.g. "V_FIB_IT3", "scanline_cam", etc.)  For a full list, see here: pastebin.com/kVPwMemE
-- @module native
-- @submodule graphics
-- @see SET_TIMECYCLE_MODIFIER
-- @usage void SET_TIMECYCLE_MODIFIER(char* modifierName);
-- @param modifierName char*
-- @return void
function SetTimecycleModifier() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_TIMECYCLE_MODIFIER_STRENGTH
-- @usage void SET_TIMECYCLE_MODIFIER_STRENGTH(float strength);
-- @param strength float
-- @return void
function SetTimecycleModifierStrength() end

-- For a full list, see here: pastebin.com/kVPwMemE
-- @module native
-- @submodule graphics
-- @see SET_TRANSITION_TIMECYCLE_MODIFIER
-- @usage void SET_TRANSITION_TIMECYCLE_MODIFIER(char* modifierName, float transition);
-- @param modifierName char*
-- @param float
-- @return void
function SetTransitionTimecycleModifier() end

-- @todo
-- @module native
-- @submodule graphics
-- @see CLEAR_TIMECYCLE_MODIFIER
-- @usage void CLEAR_TIMECYCLE_MODIFIER();
-- @param undefined
-- @return void
function ClearTimecycleModifier() end

-- Only use for this in the PC scripts is:  if (GRAPHICS::GET_TIMECYCLE_MODIFIER_INDEX() != -1)  For a full list, see here: pastebin.com/cnk7FTF2
-- @module native
-- @submodule graphics
-- @see GET_TIMECYCLE_MODIFIER_INDEX
-- @usage int GET_TIMECYCLE_MODIFIER_INDEX();
-- @param undefined
-- @return int
function GetTimecycleModifierIndex() end

-- @todo
-- @module native
-- @submodule graphics
-- @see PUSH_TIMECYCLE_MODIFIER
-- @usage void PUSH_TIMECYCLE_MODIFIER();
-- @param undefined
-- @return void
function PushTimecycleModifier() end

-- @todo
-- @module native
-- @submodule graphics
-- @see POP_TIMECYCLE_MODIFIER
-- @usage void POP_TIMECYCLE_MODIFIER();
-- @param undefined
-- @return void
function PopTimecycleModifier() end

-- Gets a new native after almost every update.  Update 1.0.393.2 0x67D02A194A2FC2BD  Update 1.0.463.1 0xC97D787CE7726A2F  Update 1.0.505.2 0x36ECDA4DD9A3F08D  Update 1.0.573.1 0xE3C796DC28BC3254  Update 1.0.678.1 0x2F14983962462691
-- @module native
-- @submodule graphics
-- @see REQUEST_SCALEFORM_MOVIE
-- @usage int REQUEST_SCALEFORM_MOVIE(char* scaleformName);
-- @param scaleformName char*
-- @return int
function RequestScaleformMovie() end

-- Also used by 0x67D02A194A2FC2BD
-- @module native
-- @submodule graphics
-- @see REQUEST_SCALEFORM_MOVIE_INSTANCE
-- @usage int REQUEST_SCALEFORM_MOVIE_INSTANCE(char* scaleformName);
-- @param scaleformName char*
-- @return int
function RequestScaleformMovieInstance() end

-- @todo
-- @module native
-- @submodule graphics
-- @see HAS_SCALEFORM_MOVIE_LOADED
-- @usage BOOL HAS_SCALEFORM_MOVIE_LOADED(int scaleformHandle);
-- @param scaleformHandle int
-- @return BOOL
function HasScaleformMovieLoaded() end

-- @todo
-- @module native
-- @submodule graphics
-- @see HAS_SCALEFORM_CONTAINER_MOVIE_LOADED_INTO_PARENT
-- @usage BOOL HAS_SCALEFORM_CONTAINER_MOVIE_LOADED_INTO_PARENT(int scaleformHandle);
-- @param scaleformHandle int
-- @return BOOL
function HasScaleformContainerMovieLoadedIntoParent() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED
-- @usage void SET_SCALEFORM_MOVIE_AS_NO_LONGER_NEEDED(int* scaleformHandle);
-- @param scaleformHandle int*
-- @return void
function SetScaleformMovieAsNoLongerNeeded() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_SCALEFORM_MOVIE_TO_USE_SYSTEM_TIME
-- @usage void SET_SCALEFORM_MOVIE_TO_USE_SYSTEM_TIME(int scaleform, BOOL toggle);
-- @param scaleform int
-- @param BOOL
-- @return void
function SetScaleformMovieToUseSystemTime() end

-- @todo
-- @module native
-- @submodule graphics
-- @see DRAW_SCALEFORM_MOVIE
-- @usage void DRAW_SCALEFORM_MOVIE(int scaleformHandle, float x, float y, float width, float height, int red, int green, int blue, int alpha, int unk);
-- @param scaleformHandle int
-- @param float
-- @param int
-- @return void
function DrawScaleformMovie() end

-- unk is not used so no need
-- @module native
-- @submodule graphics
-- @see DRAW_SCALEFORM_MOVIE_FULLSCREEN
-- @usage void DRAW_SCALEFORM_MOVIE_FULLSCREEN(int scaleform, int red, int green, int blue, int alpha, int unk);
-- @param scaleform int
-- @param int
-- @return void
function DrawScaleformMovieFullscreen() end

-- @todo
-- @module native
-- @submodule graphics
-- @see DRAW_SCALEFORM_MOVIE_FULLSCREEN_MASKED
-- @usage void DRAW_SCALEFORM_MOVIE_FULLSCREEN_MASKED(int scaleform1, int scaleform2, int red, int green, int blue, int alpha);
-- @param scaleform1 int
-- @param int
-- @return void
function DrawScaleformMovieFullscreenMasked() end

-- @todo
-- @module native
-- @submodule graphics
-- @see DRAW_SCALEFORM_MOVIE_3D
-- @usage void DRAW_SCALEFORM_MOVIE_3D(int scaleform, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float p7, float p8, float p9, float scaleX, float scaleY, float scaleZ, Any p13);
-- @param scaleform int
-- @param float
-- @param Any
-- @return void
function DrawScaleformMovie_3d() end

-- Calls the Scaleform function.
-- @module native
-- @submodule graphics
-- @see CALL_SCALEFORM_MOVIE_METHOD
-- @usage void CALL_SCALEFORM_MOVIE_METHOD(int scaleform, char* method);
-- @param scaleform int
-- @param char*
-- @return void
function CallScaleformMovieMethod() end

-- Unsurprisingly, this native is incorrectly named. Instead, this returns the name of the scaleform movie.  HASH COLLISION. PLEASE REMOVE NATIVE NAME.
-- @module native
-- @submodule graphics
-- @see SITTING_TV
-- @usage char* SITTING_TV(int scaleform);
-- @param scaleform int
-- @return char*
function SittingTv() end

-- Called prior to adding a text component to the UI. After doing so, GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING is called.  Examples: GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("NUMBER"); UI::ADD_TEXT_COMPONENT_INTEGER(GAMEPLAY::ABSI(a_1)); GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRING"); UI::_ADD_TEXT_COMPONENT_STRING(a_2); GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM2"); UI::_0x17299B63C7683A2B(v_3); UI::_0x17299B63C7683A2B(v_4); GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();  GRAPHICS::BEGIN_TEXT_COMMAND_SCALEFORM_STRING("STRTNM1"); UI::_0x17299B63C7683A2B(v_3); GRAPHICS::END_TEXT_COMMAND_SCALEFORM_STRING();
-- @module native
-- @submodule graphics
-- @see BEGIN_TEXT_COMMAND_SCALEFORM_STRING
-- @usage void BEGIN_TEXT_COMMAND_SCALEFORM_STRING(char* componentType);
-- @param componentType char*
-- @return void
function BeginTextCommandScaleformString() end

-- @todo
-- @module native
-- @submodule graphics
-- @see END_TEXT_COMMAND_SCALEFORM_STRING
-- @usage void END_TEXT_COMMAND_SCALEFORM_STRING();
-- @param undefined
-- @return void
function EndTextCommandScaleformString() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_TV_CHANNEL
-- @usage void SET_TV_CHANNEL(int channel);
-- @param channel int
-- @return void
function SetTvChannel() end

-- @todo
-- @module native
-- @submodule graphics
-- @see GET_TV_CHANNEL
-- @usage int GET_TV_CHANNEL();
-- @param undefined
-- @return int
function GetTvChannel() end

-- @todo
-- @module native
-- @submodule graphics
-- @see SET_TV_VOLUME
-- @usage void SET_TV_VOLUME(float volume);
-- @param volume float
-- @return void
function SetTvVolume() end

-- @todo
-- @module native
-- @submodule graphics
-- @see GET_TV_VOLUME
-- @usage float GET_TV_VOLUME();
-- @param undefined
-- @return float
function GetTvVolume() end

-- All calls to this native are preceded by calls to GRAPHICS::_0x61BB1D9B3A95D802 and GRAPHICS::_0xC6372ECD45D73BCD, respectively.  "act_cinema.ysc", line 1483: UI::SET_HUD_COMPONENT_POSITION(15, 0.0, -0.0375); UI::SET_TEXT_RENDER_ID(l_AE); GRAPHICS::_0x61BB1D9B3A95D802(4); GRAPHICS::_0xC6372ECD45D73BCD(1); if (GRAPHICS::_0x0AD973CA1E077B60(${movie_arthouse})) {     GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 0.7375, 1.0, 0.0, 255, 255, 255, 255); } else {      GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255); }  "am_mp_property_int.ysc", line 102545: if (ENTITY::DOES_ENTITY_EXIST(a_2._f3)) {     if (UI::IS_NAMED_RENDERTARGET_LINKED(ENTITY::GET_ENTITY_MODEL(a_2._f3))) {         UI::SET_TEXT_RENDER_ID(a_2._f1);         GRAPHICS::_0x61BB1D9B3A95D802(4);         GRAPHICS::_0xC6372ECD45D73BCD(1);         GRAPHICS::DRAW_TV_CHANNEL(0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255);         if (GRAPHICS::GET_TV_CHANNEL() == -1) {             sub_a8fa5(a_2, 1);         } else {              sub_a8fa5(a_2, 1);             GRAPHICS::ATTACH_TV_AUDIO_TO_ENTITY(a_2._f3);         }         UI::SET_TEXT_RENDER_ID(UI::GET_DEFAULT_SCRIPT_RENDERTARGET_RENDER_ID());     } }
-- @module native
-- @submodule graphics
-- @see DRAW_TV_CHANNEL
-- @usage void DRAW_TV_CHANNEL(float xPos, float yPos, float xScale, float yScale, float rotation, int red, int green, int blue, int alpha);
-- @param xPos float
-- @param float
-- @param int
-- @return void
function DrawTvChannel() end

-- @todo
-- @module native
-- @submodule graphics
-- @see ENABLE_MOVIE_SUBTITLES
-- @usage void ENABLE_MOVIE_SUBTITLES(BOOL toggle);
-- @param toggle BOOL
-- @return void
function EnableMovieSubtitles() end