-- /* Corrected conflicting parameter names */
-- @module native
-- @submodule pathfind
-- @see SET_ROADS_IN_AREA
-- @usage void SET_ROADS_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL unknown1, BOOL unknown2);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param unknown1 BOOL
-- @param unknown2 BOOL
-- @return void
function SetRoadsInArea(x1, y1, z1, x2, y2, z2, unknown1, unknown2) end

-- /* Corrected conflicting parameter names */
-- @module native
-- @submodule pathfind
-- @see SET_ROADS_IN_ANGLED_AREA
-- @usage void SET_ROADS_IN_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float angle, BOOL unknown1, BOOL unknown2, BOOL unknown3);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param angle float
-- @param unknown1 BOOL
-- @param unknown2 BOOL
-- @param unknown3 BOOL
-- @return void
function SetRoadsInAngledArea(x1, y1, z1, x2, y2, z2, angle, unknown1, unknown2, unknown3) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see SET_PED_PATHS_IN_AREA
-- @usage void SET_PED_PATHS_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL unknown);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param unknown BOOL
-- @return void
function SetPedPathsInArea(x1, y1, z1, x2, y2, z2, unknown) end

-- When onGround == true outPosition is a position located on the nearest pavement.  When a safe coord could not be found the result of a function is false and outPosition == Vector3.Zero.  In the scripts these flags are used: 0, 14, 12, 16, 20, 21, 28. 0 is most commonly used, then 16.   16 works for me, 0 crashed the script.
-- @module native
-- @submodule pathfind
-- @see GET_SAFE_COORD_FOR_PED
-- @usage BOOL GET_SAFE_COORD_FOR_PED(float x, float y, float z, BOOL onGround, Vector3* outPosition, int flags);
-- @param x float
-- @param y float
-- @param z float
-- @param onGround BOOL
-- @param outPosition Vector3*
-- @param flags int
-- @return BOOL
function GetSafeCoordForPed(x, y, z, onGround, outPosition, flags) end

-- FYI: When falling through the map (or however you got under it) you will respawn when your player ped's height is <= -200.0 meters (I think you all know this) and when in a vehicle you will actually respawn at the closest vehicle node.  ----------  Vector3 nodePos; GET_CLOSEST_VEHICLE_NODE(x,y,z,&nodePos,...)  p4 is either 0, 1 or 8. 1 means any path/road. 0 means node in the middle of the closest main (asphalt) road. p5, p6 are always the same: 0x40400000 (3.0), 0 p5 can also be 100.0 and p6 can be 2.5: PATHFIND::GET_CLOSEST_VEHICLE_NODE(a_0, &v_5, v_9, 100.0, 2.5)  Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.  Starting at 2, every fourth node is under the map, always same coords. Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).   gtaforums.com/topic/843561-pathfind-node-types
-- @module native
-- @submodule pathfind
-- @see GET_CLOSEST_VEHICLE_NODE
-- @usage BOOL GET_CLOSEST_VEHICLE_NODE(float x, float y, float z, Vector3* outPosition, int nodeType, float p5, float p6);
-- @param x float
-- @param y float
-- @param z float
-- @param outPosition Vector3*
-- @param nodeType int
-- @param p5 float
-- @param p6 float
-- @return BOOL
function GetClosestVehicleNode(x, y, z, outPosition, nodeType, p5, p6) end

-- Get the closest vehicle node to a given position, unknown1 = 3.0, unknown2 = 0
-- @module native
-- @submodule pathfind
-- @see GET_CLOSEST_MAJOR_VEHICLE_NODE
-- @usage BOOL GET_CLOSEST_MAJOR_VEHICLE_NODE(float x, float y, float z, Vector3* outPosition, float unknown1, int unknown2);
-- @param x float
-- @param y float
-- @param z float
-- @param outPosition Vector3*
-- @param unknown1 float
-- @param unknown2 int
-- @return BOOL
function GetClosestMajorVehicleNode(x, y, z, outPosition, unknown1, unknown2) end

-- p5, p6 and p7 seems to be about the same as p4, p5 and p6 for GET_CLOSEST_VEHICLE_NODE. p6 and/or p7 has something to do with finding a node on the same path/road and same direction(at least for this native, something to do with the heading maybe). Edit this when you find out more.  p5 is either 1 or 12. 1 means any path/road. 12, 8, 0 means node in the middle of the closest main (asphalt) road. p6 is always 3.0 p7 is always 0.  Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.  Starting at 2, every fourth node is under the map, always same coords. Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).  gtaforums.com/topic/843561-pathfind-node-types  Example of usage, moving vehicle to closest path/road: Vector3 coords = ENTITY::GET_ENTITY_COORDS(playerVeh, true); Vector3 closestVehicleNodeCoords;  float roadHeading;  PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x, coords.y, coords.z, &closestVehicleNodeCoords, &roadHeading, 1, 3, 0);  ENTITY::SET_ENTITY_HEADING(playerVeh, roadHeading); ENTITY::SET_ENTITY_COORDS(playerVeh, closestVehicleNodeCoords.x, closestVehicleNodeCoords.y, closestVehicleNodeCoords.z, 1, 0, 0, 1); VEHICLE::SET_VEHICLE_ON_GROUND_PROPERLY(playerVeh);  ------------------------------------------------------------------ C# Example (ins1de) : pastebin.com/fxtMWAHD
-- @module native
-- @submodule pathfind
-- @see GET_CLOSEST_VEHICLE_NODE_WITH_HEADING
-- @usage BOOL GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(float x, float y, float z, Vector3* outPosition, float* outHeading, int nodeType, float p6, int p7);
-- @param x float
-- @param y float
-- @param z float
-- @param outPosition Vector3*
-- @param outHeading float*
-- @param nodeType int
-- @param p6 float
-- @param p7 int
-- @return BOOL
function GetClosestVehicleNodeWithHeading(x, y, z, outPosition, outHeading, nodeType, p6, p7) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see GET_NTH_CLOSEST_VEHICLE_NODE
-- @usage BOOL GET_NTH_CLOSEST_VEHICLE_NODE(float x, float y, float z, int nthClosest, Vector3* outPosition, Any unknown1, Any unknown2, Any unknown3);
-- @param x float
-- @param y float
-- @param z float
-- @param nthClosest int
-- @param outPosition Vector3*
-- @param unknown1 Any
-- @param unknown2 Any
-- @param unknown3 Any
-- @return BOOL
function GetNthClosestVehicleNode(x, y, z, nthClosest, outPosition, unknown1, unknown2, unknown3) end

-- Returns the id.
-- @module native
-- @submodule pathfind
-- @see GET_NTH_CLOSEST_VEHICLE_NODE_ID
-- @usage int GET_NTH_CLOSEST_VEHICLE_NODE_ID(float x, float y, float z, int nth, int nodetype, float p5, float p6);
-- @param x float
-- @param y float
-- @param z float
-- @param nth int
-- @param nodetype int
-- @param p5 float
-- @param p6 float
-- @return int
function GetNthClosestVehicleNodeId(x, y, z, nth, nodetype, p5, p6) end

-- Get the nth closest vehicle node and its heading. (unknown2 = 9, unknown3 = 3.0, unknown4 = 2.5)
-- @module native
-- @submodule pathfind
-- @see GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING
-- @usage BOOL GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING(float x, float y, float z, int nthClosest, Vector3* outPosition, float* heading, Any* unknown1, int unknown2, float unknown3, float unknown4);
-- @param x float
-- @param y float
-- @param z float
-- @param nthClosest int
-- @param outPosition Vector3*
-- @param heading float*
-- @param unknown1 Any*
-- @param unknown2 int
-- @param unknown3 float
-- @param unknown4 float
-- @return BOOL
function GetNthClosestVehicleNodeWithHeading(x, y, z, nthClosest, outPosition, heading, unknown1, unknown2, unknown3, unknown4) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see GET_NTH_CLOSEST_VEHICLE_NODE_ID_WITH_HEADING
-- @usage Any GET_NTH_CLOSEST_VEHICLE_NODE_ID_WITH_HEADING(float x, float y, float z, int nthClosest, Vector3* outPosition, float outHeading, Any p6, float p7, float p8);
-- @param x float
-- @param y float
-- @param z float
-- @param nthClosest int
-- @param outPosition Vector3*
-- @param outHeading float
-- @param p6 Any
-- @param p7 float
-- @param p8 float
-- @return Any
function GetNthClosestVehicleNodeIdWithHeading(x, y, z, nthClosest, outPosition, outHeading, p6, p7, p8) end

-- See gtaforums.com/topic/843561-pathfind-node-types for node type info. 0 = paved road only, 1 = any road, 3 = water  p10 always equal 0x40400000 p11 always equal 0
-- @module native
-- @submodule pathfind
-- @see GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION
-- @usage BOOL GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION(float x, float y, float z, float desiredX, float desiredY, float desiredZ, int nthClosest, Vector3* outPosition, float* outHeading, int nodetype, Any p10, Any p11);
-- @param x float
-- @param y float
-- @param z float
-- @param desiredX float
-- @param desiredY float
-- @param desiredZ float
-- @param nthClosest int
-- @param outPosition Vector3*
-- @param outHeading float*
-- @param nodetype int
-- @param p10 Any
-- @param p11 Any
-- @return BOOL
function GetNthClosestVehicleNodeFavourDirection(x, y, z, desiredX, desiredY, desiredZ, nthClosest, outPosition, outHeading, nodetype, p10, p11) end

-- MulleDK19: Gets the density and flags of the closest node to the specified position. Density is a value between 0 and 15, indicating how busy the road is. Flags is a bit field.
-- @module native
-- @submodule pathfind
-- @see GET_VEHICLE_NODE_PROPERTIES
-- @usage BOOL GET_VEHICLE_NODE_PROPERTIES(float x, float y, float z, int* density, int* flags);
-- @param x float
-- @param y float
-- @param z float
-- @param density int*
-- @param flags int*
-- @return BOOL
function GetVehicleNodeProperties(x, y, z, density, flags) end

-- Returns true if the id is non zero.
-- @module native
-- @submodule pathfind
-- @see IS_VEHICLE_NODE_ID_VALID
-- @usage BOOL IS_VEHICLE_NODE_ID_VALID(int vehicleNodeId);
-- @param vehicleNodeId int
-- @return BOOL
function IsVehicleNodeIdValid(vehicleNodeId) end

-- Calling this with an invalid node id, will crash the game. Note that IS_VEHICLE_NODE_ID_VALID simply checks if nodeId is not zero. It does not actually ensure that the id is valid. Eg. IS_VEHICLE_NODE_ID_VALID(1) will return true, but will crash when calling GET_VEHICLE_NODE_POSITION().  sfink: This native returns a pointer to a packed Vector3 struct in the RAX register, as do the following natives: AI::WAYPOINT_RECORDING_GET_COORD ENTITY::GET_ENTITY_MATRIX FIRE::GET_CLOSEST_FIRE_POS GAMEPLAY::FIND_SPAWN_POINT_IN_DIRECTION GAMEPLAY::GET_MODEL_DIMENSIONS GAMEPLAY::OVERRIDE_SAVE_HOUSE GAMEPLAY::_0x82FDE6A57EE4EE44 GAMEPLAY::_0x8BDC7BFC57A81E76 GAMEPLAY::_0x8D7A43EC6A5FEA45 GAMEPLAY::_0xA4A0065E39C9F25C GAMEPLAY::_0xDFB4138EEFED7B81 MOBILE::GET_MOBILE_PHONE_POSITION MOBILE::GET_MOBILE_PHONE_ROTATION NETWORK::NETWORK_GET_RESPAWN_RESULT OBJECT::_0x163F8B586BC95F2A PATHFIND::GET_CLOSEST_MAJOR_VEHICLE_NODE PATHFIND::GET_CLOSEST_ROAD PATHFIND::GET_CLOSEST_VEHICLE_NODE PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE_FAVOUR_DIRECTION PATHFIND::GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING PATHFIND::GET_RANDOM_VEHICLE_NODE PATHFIND::GET_SAFE_COORD_FOR_PED PATHFIND::GET_VEHICLE_NODE_POSITION PATHFIND::_0x16F46FB18C8009E4 VEHICLE::_0xA4822F1CF23F4810 VEHICLE::_0xDF7E3EEB29642C38 WATER::TEST_PROBE_AGAINST_ALL_WATER WATER::TEST_PROBE_AGAINST_WATER WEAPON::GET_PED_LAST_WEAPON_IMPACT_COORD WORLDPROBE::_0xFF6BE494C7987F34 WORLDPROBE::_GET_RAYCAST_RESULT
-- @module native
-- @submodule pathfind
-- @see GET_VEHICLE_NODE_POSITION
-- @usage void GET_VEHICLE_NODE_POSITION(int nodeId, Vector3* outPosition);
-- @param nodeId int
-- @param outPosition Vector3*
-- @return void
function GetVehicleNodePosition(nodeId, outPosition) end

-- p1 seems to be always 1.0f in the scripts
-- @module native
-- @submodule pathfind
-- @see GET_CLOSEST_ROAD
-- @usage Any GET_CLOSEST_ROAD(float x, float y, float z, float p3, int p4, Vector3* p5, Vector3* p6, Any* p7, Any* p8, float* p9, BOOL p10);
-- @param x float
-- @param y float
-- @param z float
-- @param p3 float
-- @param p4 int
-- @param p5 Vector3*
-- @param p6 Vector3*
-- @param p7 Any*
-- @param p8 Any*
-- @param p9 float*
-- @param p10 BOOL
-- @return Any
function GetClosestRoad(x, y, z, p3, p4, p5, p6, p7, p8, p9, p10) end

-- Loads all path nodes.  If keepInMemory is true, all path nodes will be loaded and be kept in memory; otherwise, all path nodes will be loaded, but unloaded as the game sees fit.
-- @module native
-- @submodule pathfind
-- @see LOAD_ALL_PATH_NODES
-- @usage BOOL LOAD_ALL_PATH_NODES(BOOL keepInMemory);
-- @param keepInMemory BOOL
-- @return BOOL
function LoadAllPathNodes(keepInMemory) end

-- missing a last parameter int p6
-- @module native
-- @submodule pathfind
-- @see SET_ROADS_BACK_TO_ORIGINAL
-- @usage void SET_ROADS_BACK_TO_ORIGINAL(float p0, float p1, float p2, float p3, float p4, float p5);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @return void
function SetRoadsBackToOriginal(p0, p1, p2, p3, p4, p5) end

-- bool p7 - always 1
-- @module native
-- @submodule pathfind
-- @see SET_ROADS_BACK_TO_ORIGINAL_IN_ANGLED_AREA
-- @usage void SET_ROADS_BACK_TO_ORIGINAL_IN_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float p6);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param p6 float
-- @return void
function SetRoadsBackToOriginalInAngledArea(x1, y1, z1, x2, y2, z2, p6) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see SET_PED_PATHS_BACK_TO_ORIGINAL
-- @usage void SET_PED_PATHS_BACK_TO_ORIGINAL(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @param p5 Any
-- @return void
function SetPedPathsBackToOriginal(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see GET_RANDOM_VEHICLE_NODE
-- @usage BOOL GET_RANDOM_VEHICLE_NODE(float x, float y, float z, float radius, BOOL p4, BOOL p5, BOOL p6, Vector3* outPosition, int* nodeId);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param p4 BOOL
-- @param p5 BOOL
-- @param p6 BOOL
-- @param outPosition Vector3*
-- @param nodeId int*
-- @return BOOL
function GetRandomVehicleNode(x, y, z, radius, p4, p5, p6, outPosition, nodeId) end

-- Determines the name of the street which is the closest to the given coordinates.  x,y,z - the coordinates of the street streetName - returns a hash to the name of the street the coords are on crossingRoad - if the coordinates are on an intersection, a hash to the name of the crossing road  Note: the names are returned as hashes, the strings can be returned using the function UI::GET_STREET_NAME_FROM_HASH_KEY.
-- @module native
-- @submodule pathfind
-- @see GET_STREET_NAME_AT_COORD
-- @usage void GET_STREET_NAME_AT_COORD(float x, float y, float z, Hash* streetName, Hash* crossingRoad);
-- @param x float
-- @param y float
-- @param z float
-- @param streetName Hash*
-- @param crossingRoad Hash*
-- @return void
function GetStreetNameAtCoord(x, y, z, streetName, crossingRoad) end

-- Usage example:  Public Function GenerateDirectionsToCoord(Pos As Vector3) As Tuple(Of String, Single, Single)         Dim f4, f5, f6 As New OutputArgument()         Native.Function.Call(Hash.GENERATE_DIRECTIONS_TO_COORD, Pos.X, Pos.Y, Pos.Z, True, f4, f5, f6)         Dim direction As String = f4.GetResult(Of Single)()         Return New Tuple(Of String, Single, Single)(direction.Substring(0, 1), f5.GetResult(Of Single)(), f6.GetResult(Of Single)())     End Function  p3 I use 1  direction: 0 = You Have Arrive 1 = Recalculating Route, Please make a u-turn where safe 2 = Please Proceed the Highlighted Route 3 = Keep Left (unsure) 4 = In (distToNxJunction) Turn Left 5 = In (distToNxJunction) Turn Right 6 = Keep Right (unsure) 7 = In (distToNxJunction) Go Straight Ahead 8 = In (distToNxJunction) Join the freeway 9 = In (distToNxJunction) Exit Freeway  return value set to 0 always
-- @module native
-- @submodule pathfind
-- @see GENERATE_DIRECTIONS_TO_COORD
-- @usage int GENERATE_DIRECTIONS_TO_COORD(float x, float y, float z, BOOL p3, float* direction, float* p5, float* distToNxJunction);
-- @param x float
-- @param y float
-- @param z float
-- @param p3 BOOL
-- @param direction float*
-- @param p5 float*
-- @param distToNxJunction float*
-- @return int
function GenerateDirectionsToCoord(x, y, z, p3, direction, p5, distToNxJunction) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see SET_IGNORE_NO_GPS_FLAG
-- @usage void SET_IGNORE_NO_GPS_FLAG(BOOL ignore);
-- @param ignore BOOL
-- @return void
function SetIgnoreNoGpsFlag(ignore) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see SET_GPS_DISABLED_ZONE
-- @usage void SET_GPS_DISABLED_ZONE(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @param p5 Any
-- @return void
function SetGpsDisabledZone(p0, p1, p2, p3, p4, p5) end

-- Gets a value indicating whether the specified position is on a road. The vehicle parameter is not implemented (ignored).
-- @module native
-- @submodule pathfind
-- @see IS_POINT_ON_ROAD
-- @usage BOOL IS_POINT_ON_ROAD(float x, float y, float z, Vehicle vehicle);
-- @param x float
-- @param y float
-- @param z float
-- @param vehicle Vehicle
-- @return BOOL
function IsPointOnRoad(x, y, z, vehicle) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see ADD_NAVMESH_REQUIRED_REGION
-- @usage void ADD_NAVMESH_REQUIRED_REGION(float x, float y, float radius);
-- @param x float
-- @param y float
-- @param radius float
-- @return void
function AddNavmeshRequiredRegion(x, y, radius) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see REMOVE_NAVMESH_REQUIRED_REGIONS
-- @usage void REMOVE_NAVMESH_REQUIRED_REGIONS();
-- @return void
function RemoveNavmeshRequiredRegions() end

-- @todo
-- @module native
-- @submodule pathfind
-- @see DISABLE_NAVMESH_IN_AREA
-- @usage void DISABLE_NAVMESH_IN_AREA(Any p0, Any p1, Any p2, Any p3, Any p4, Any p5, Any p6);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @param p5 Any
-- @param p6 Any
-- @return void
function DisableNavmeshInArea(p0, p1, p2, p3, p4, p5, p6) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see ARE_ALL_NAVMESH_REGIONS_LOADED
-- @usage BOOL ARE_ALL_NAVMESH_REGIONS_LOADED();
-- @return BOOL
function AreAllNavmeshRegionsLoaded() end

-- Returns whether navmesh for the region is loaded. The region is a rectangular prism defined by it's top left deepest corner to it's bottom right shallowest corner.  If you can re-word this so it makes more sense, please do. I'm horrible with words sometimes...
-- @module native
-- @submodule pathfind
-- @see IS_NAVMESH_LOADED_IN_AREA
-- @usage BOOL IS_NAVMESH_LOADED_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @return BOOL
function IsNavmeshLoadedInArea(x1, y1, z1, x2, y2, z2) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see ADD_NAVMESH_BLOCKING_OBJECT
-- @usage Any ADD_NAVMESH_BLOCKING_OBJECT(float p0, float p1, float p2, float p3, float p4, float p5, float p6, BOOL p7, Any p8);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 BOOL
-- @param p8 Any
-- @return Any
function AddNavmeshBlockingObject(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see UPDATE_NAVMESH_BLOCKING_OBJECT
-- @usage void UPDATE_NAVMESH_BLOCKING_OBJECT(Any p0, float p1, float p2, float p3, float p4, float p5, float p6, float p7, Any p8);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 float
-- @param p8 Any
-- @return void
function UpdateNavmeshBlockingObject(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see REMOVE_NAVMESH_BLOCKING_OBJECT
-- @usage void REMOVE_NAVMESH_BLOCKING_OBJECT(Any p0);
-- @param p0 Any
-- @return void
function RemoveNavmeshBlockingObject(p0) end

-- @todo
-- @module native
-- @submodule pathfind
-- @see DOES_NAVMESH_BLOCKING_OBJECT_EXIST
-- @usage BOOL DOES_NAVMESH_BLOCKING_OBJECT_EXIST(Any p0);
-- @param p0 Any
-- @return BOOL
function DoesNavmeshBlockingObjectExist(p0) end

-- Calculates the travel distance between a set of points.  Doesn't seem to correlate with distance on gps sometimes.
-- @module native
-- @submodule pathfind
-- @see CALCULATE_TRAVEL_DISTANCE_BETWEEN_POINTS
-- @usage float CALCULATE_TRAVEL_DISTANCE_BETWEEN_POINTS(float x1, float y1, float z1, float x2, float y2, float z2);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @return float
function CalculateTravelDistanceBetweenPoints(x1, y1, z1, x2, y2, z2) end