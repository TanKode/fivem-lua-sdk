-- Stand still (?)
-- @module native
-- @submodule ai
-- @see TASK_PAUSE
-- @usage void TASK_PAUSE(Ped ped, int ms);
-- @param ped Ped
-- @param ms int
-- @return void
function TaskPause(ped, ms) end

-- Makes the specified ped stand still for (time) milliseconds.
-- @module native
-- @submodule ai
-- @see TASK_STAND_STILL
-- @usage void TASK_STAND_STILL(Ped ped, int time);
-- @param ped Ped
-- @param time int
-- @return void
function TaskStandStill(ped, time) end

-- Definition is wrong. This has 4 parameters (Not sure when they were added. v350 has 2, v678 has 4).  v350: Ped ped, bool unused v678: Ped ped, bool unused, bool flag1, bool flag2  flag1 = super jump, flag2 = do nothing if flag1 is false and doubles super jump height if flag1 is true.
-- @module native
-- @submodule ai
-- @see TASK_JUMP
-- @usage void TASK_JUMP(Ped ped, BOOL unused);
-- @param ped Ped
-- @param unused BOOL
-- @return void
function TaskJump(ped, unused) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_COWER
-- @usage void TASK_COWER(Ped ped, int duration);
-- @param ped Ped
-- @param duration int
-- @return void
function TaskCower(ped, duration) end

-- In the scripts, p3 was always -1.  p3 seems to be duration or timeout of turn animation. Also facingPed can be 0 or -1 so ped will just raise hands up.
-- @module native
-- @submodule ai
-- @see TASK_HANDS_UP
-- @usage void TASK_HANDS_UP(Ped ped, int duration, Ped facingPed, int p3, BOOL p4);
-- @param ped Ped
-- @param duration int
-- @param facingPed Ped
-- @param p3 int
-- @param p4 BOOL
-- @return void
function TaskHandsUp(ped, duration, facingPed, p3, p4) end

-- @todo
-- @module native
-- @submodule ai
-- @see UPDATE_TASK_HANDS_UP_DURATION
-- @usage void UPDATE_TASK_HANDS_UP_DURATION(Ped ped, int duration);
-- @param ped Ped
-- @param duration int
-- @return void
function UpdateTaskHandsUpDuration(ped, duration) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_OPEN_VEHICLE_DOOR
-- @usage void TASK_OPEN_VEHICLE_DOOR(Ped ped, Vehicle vehicle, int timeOut, int doorIndex, float speed);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param timeOut int
-- @param doorIndex int
-- @param speed float
-- @return void
function TaskOpenVehicleDoor(ped, vehicle, timeOut, doorIndex, speed) end

-- speed 1.0 = walk, 2.0 = run p5 1 = normal, 3 = teleport to vehicle, 16 = teleport directly into vehicle p6 is always 0  Usage of seat  -1 = driver 0 = passenger 1 = left back seat 2 = right back seat 3 = outside left 4 = outside right
-- @module native
-- @submodule ai
-- @see TASK_ENTER_VEHICLE
-- @usage void TASK_ENTER_VEHICLE(Ped ped, Vehicle vehicle, int timeout, int seat, float speed, int p5, Any p6);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param timeout int
-- @param seat int
-- @param speed float
-- @param p5 int
-- @param p6 Any
-- @return void
function TaskEnterVehicle(ped, vehicle, timeout, seat, speed, p5, p6) end

-- Flags from decompiled scripts: 0 = normal exit and closes door. 1 = normal exit and closes door. 16 = teleports outside, door kept closed. 64 = normal exit and closes door, maybe a bit slower animation than 0. 256 = normal exit but does not close the door. 4160 = ped is throwing himself out, even when the vehicle is still. 262144 = ped moves to passenger seat first, then exits normally  Others to be tried out: 320, 512, 131072.
-- @module native
-- @submodule ai
-- @see TASK_LEAVE_VEHICLE
-- @usage void TASK_LEAVE_VEHICLE(Ped ped, Vehicle vehicle, int flags);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param flags int
-- @return void
function TaskLeaveVehicle(ped, vehicle, flags) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_SKY_DIVE
-- @usage void TASK_SKY_DIVE(Ped ped);
-- @param ped Ped
-- @return void
function TaskSkyDive(ped) end

-- This function has a third parameter as well (bool). Second parameter is unused.  seconds parameter was for jetpack in the early stages of gta and the hard coded code is now removed
-- @module native
-- @submodule ai
-- @see TASK_PARACHUTE
-- @usage void TASK_PARACHUTE(Ped ped, BOOL p1);
-- @param ped Ped
-- @param p1 BOOL
-- @return void
function TaskParachute(ped, p1) end

-- makes ped parachute to coords x y z. Works well with PATHFIND::GET_SAFE_COORD_FOR_PED
-- @module native
-- @submodule ai
-- @see TASK_PARACHUTE_TO_TARGET
-- @usage void TASK_PARACHUTE_TO_TARGET(Ped ped, float x, float y, float z);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @return void
function TaskParachuteToTarget(ped, x, y, z) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_PARACHUTE_TASK_TARGET
-- @usage void SET_PARACHUTE_TASK_TARGET(Ped ped, float x, float y, float z);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @return void
function SetParachuteTaskTarget(ped, x, y, z) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_PARACHUTE_TASK_THRUST
-- @usage void SET_PARACHUTE_TASK_THRUST(Ped ped, float thrust);
-- @param ped Ped
-- @param thrust float
-- @return void
function SetParachuteTaskThrust(ped, thrust) end

-- Only appears twice in the scripts.  AI::TASK_RAPPEL_FROM_HELI(PLAYER::PLAYER_PED_ID(), 0x41200000); AI::TASK_RAPPEL_FROM_HELI(a_0, 0x41200000);  Fixed, definitely not a float and since it's such a big number obviously not a bool. All though note when I thought it was a bool and set it to 1 it seemed to work that same as int 0x41200000.
-- @module native
-- @submodule ai
-- @see TASK_RAPPEL_FROM_HELI
-- @usage void TASK_RAPPEL_FROM_HELI(Ped ped, int unused);
-- @param ped Ped
-- @param unused int
-- @return void
function TaskRappelFromHeli(ped, unused) end

-- info about driving modes: HTTP://gtaforums.com/topic/822314-guide-driving-styles/ --------------------------------------------------------------- Passing P6 value as floating value didn't throw any errors, though unsure what is it exactly, looks like radius or something.  P10 though, it is mentioned as float, however, I used bool and set it to true, that too worked. Here the e.g. code I used Function.Call(Hash.TASK_VEHICLE_DRIVE_TO_COORD, Ped, Vehicle, Cor X, Cor Y, Cor Z, 30f, 1f, Vehicle.GetHashCode(), 16777216, 1f, true);
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_DRIVE_TO_COORD
-- @usage void TASK_VEHICLE_DRIVE_TO_COORD(Ped ped, Vehicle vehicle, float x, float y, float z, float speed, Any p6, Hash vehicleModel, int drivingMode, float stopRange, float p10);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param x float
-- @param y float
-- @param z float
-- @param speed float
-- @param p6 Any
-- @param vehicleModel Hash
-- @param drivingMode int
-- @param stopRange float
-- @param p10 float
-- @return void
function TaskVehicleDriveToCoord(ped, vehicle, x, y, z, speed, p6, vehicleModel, drivingMode, stopRange, p10) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE
-- @usage void TASK_VEHICLE_DRIVE_TO_COORD_LONGRANGE(Ped ped, Vehicle vehicle, float x, float y, float z, float speed, int driveMode, float stopRange);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param x float
-- @param y float
-- @param z float
-- @param speed float
-- @param driveMode int
-- @param stopRange float
-- @return void
function TaskVehicleDriveToCoordLongrange(ped, vehicle, x, y, z, speed, driveMode, stopRange) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_DRIVE_WANDER
-- @usage void TASK_VEHICLE_DRIVE_WANDER(Ped ped, Vehicle vehicle, float speed, int drivingStyle);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param speed float
-- @param drivingStyle int
-- @return void
function TaskVehicleDriveWander(ped, vehicle, speed, drivingStyle) end

-- p6 always -1 p7 always 10.0 p8 always 1
-- @module native
-- @submodule ai
-- @see TASK_FOLLOW_TO_OFFSET_OF_ENTITY
-- @usage void TASK_FOLLOW_TO_OFFSET_OF_ENTITY(Ped ped, Entity entity, float offsetX, float offsetY, float offsetZ, float movementSpeed, int timeout, float stoppingRange, BOOL persistFollowing);
-- @param ped Ped
-- @param entity Entity
-- @param offsetX float
-- @param offsetY float
-- @param offsetZ float
-- @param movementSpeed float
-- @param timeout int
-- @param stoppingRange float
-- @param persistFollowing BOOL
-- @return void
function TaskFollowToOffsetOfEntity(ped, entity, offsetX, offsetY, offsetZ, movementSpeed, timeout, stoppingRange, persistFollowing) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_GO_STRAIGHT_TO_COORD
-- @usage void TASK_GO_STRAIGHT_TO_COORD(Ped ped, float x, float y, float z, float speed, int timeout, float targetHeading, float distanceToSlide);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param speed float
-- @param timeout int
-- @param targetHeading float
-- @param distanceToSlide float
-- @return void
function TaskGoStraightToCoord(ped, x, y, z, speed, timeout, targetHeading, distanceToSlide) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_GO_STRAIGHT_TO_COORD_RELATIVE_TO_ENTITY
-- @usage void TASK_GO_STRAIGHT_TO_COORD_RELATIVE_TO_ENTITY(Entity entity1, Entity entity2, float p2, float p3, float p4, float p5, Any p6);
-- @param entity1 Entity
-- @param entity2 Entity
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 Any
-- @return void
function TaskGoStraightToCoordRelativeToEntity(entity1, entity2, p2, p3, p4, p5, p6) end

-- Makes the specified ped achieve the specified heading.  pedHandle: The handle of the ped to assign the task to. heading: The desired heading. timeout: The time, in milliseconds, to allow the task to complete. If the task times out, it is cancelled, and the ped will stay at the heading it managed to reach in the time.
-- @module native
-- @submodule ai
-- @see TASK_ACHIEVE_HEADING
-- @usage void TASK_ACHIEVE_HEADING(Ped ped, float heading, int timeout);
-- @param ped Ped
-- @param heading float
-- @param timeout int
-- @return void
function TaskAchieveHeading(ped, heading, timeout) end

-- MulleKD19: Clears the current point route. Call this before TASK_EXTEND_ROUTE and TASK_FOLLOW_POINT_ROUTE.
-- @module native
-- @submodule ai
-- @see TASK_FLUSH_ROUTE
-- @usage void TASK_FLUSH_ROUTE();
-- @return void
function TaskFlushRoute() end

-- MulleKD19: Adds a new point to the current point route. Call TASK_FLUSH_ROUTE before the first call to this. Call TASK_FOLLOW_POINT_ROUTE to make the Ped go the route.  A maximum of 8 points can be added.
-- @module native
-- @submodule ai
-- @see TASK_EXTEND_ROUTE
-- @usage void TASK_EXTEND_ROUTE(float x, float y, float z);
-- @param x float
-- @param y float
-- @param z float
-- @return void
function TaskExtendRoute(x, y, z) end

-- MulleKD19: Makes the ped go on the created point route.  ped: The ped to give the task to. speed: The speed to move at in m/s. int: Unknown. Can be 0, 1, 2 or 3.  Example: TASK_FLUSH_ROUTE(); TASK_EXTEND_ROUTE(0f, 0f, 70f); TASK_EXTEND_ROUTE(10f, 0f, 70f); TASK_EXTEND_ROUTE(10f, 10f, 70f); TASK_FOLLOW_POINT_ROUTE(GET_PLAYER_PED(), 1f, 0);
-- @module native
-- @submodule ai
-- @see TASK_FOLLOW_POINT_ROUTE
-- @usage void TASK_FOLLOW_POINT_ROUTE(Ped ped, float speed, int unknown);
-- @param ped Ped
-- @param speed float
-- @param unknown int
-- @return void
function TaskFollowPointRoute(ped, speed, unknown) end

-- The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0  Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.  Example: AI::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)  Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
-- @module native
-- @submodule ai
-- @see TASK_GO_TO_ENTITY
-- @usage void TASK_GO_TO_ENTITY(Entity entity, Entity target, int duration, float distance, float speed, float p5, int p6);
-- @param entity Entity
-- @param target Entity
-- @param duration int
-- @param distance float
-- @param speed float
-- @param p5 float
-- @param p6 int
-- @return void
function TaskGoToEntity(entity, target, duration, distance, speed, p5, p6) end

-- Makes the specified ped flee the specified distance from the specified position.
-- @module native
-- @submodule ai
-- @see TASK_SMART_FLEE_COORD
-- @usage void TASK_SMART_FLEE_COORD(Ped ped, float x, float y, float z, float distance, int time, BOOL p6, BOOL p7);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param distance float
-- @param time int
-- @param p6 BOOL
-- @param p7 BOOL
-- @return void
function TaskSmartFleeCoord(ped, x, y, z, distance, time, p6, p7) end

-- Makes a ped run away from another ped (fleeTarget).  distance = ped will flee this distance. fleeTime = ped will flee for this amount of time, set to "-1" to flee forever
-- @module native
-- @submodule ai
-- @see TASK_SMART_FLEE_PED
-- @usage void TASK_SMART_FLEE_PED(Ped ped, Ped fleeTarget, float distance, Any fleeTime, BOOL p4, BOOL p5);
-- @param ped Ped
-- @param fleeTarget Ped
-- @param distance float
-- @param fleeTime Any
-- @param p4 BOOL
-- @param p5 BOOL
-- @return void
function TaskSmartFleePed(ped, fleeTarget, distance, fleeTime, p4, p5) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_REACT_AND_FLEE_PED
-- @usage void TASK_REACT_AND_FLEE_PED(Ped ped, Ped fleeTarget);
-- @param ped Ped
-- @param fleeTarget Ped
-- @return void
function TaskReactAndFleePed(ped, fleeTarget) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_SHOCKING_EVENT_REACT
-- @usage void TASK_SHOCKING_EVENT_REACT(Ped ped, int eventHandle);
-- @param ped Ped
-- @param eventHandle int
-- @return void
function TaskShockingEventReact(ped, eventHandle) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_WANDER_IN_AREA
-- @usage void TASK_WANDER_IN_AREA(Ped ped, float x, float y, float z, float radius, float minimalLength, float timeBetweenWalks);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param minimalLength float
-- @param timeBetweenWalks float
-- @return void
function TaskWanderInArea(ped, x, y, z, radius, minimalLength, timeBetweenWalks) end

-- Makes ped walk around the area.  set p1 to 10.0f and p2 to 10 if you want the ped to walk anywhere without a duration.
-- @module native
-- @submodule ai
-- @see TASK_WANDER_STANDARD
-- @usage void TASK_WANDER_STANDARD(Ped ped, float p1, int p2);
-- @param ped Ped
-- @param p1 float
-- @param p2 int
-- @return void
function TaskWanderStandard(ped, p1, p2) end

-- Modes: 0 - ignore heading 1 - park forward 2 - park backwards  Depending on the angle of approach, the vehicle can park at the specified heading or at its exact opposite (-180) angle.  Radius seems to define how close the vehicle has to be -after parking- to the position for this task considered completed. If the value is too small, the vehicle will try to park again until it's exactly where it should be. 20.0 Works well but lower values don't, like the radius is measured in centimeters or something.
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_PARK
-- @usage void TASK_VEHICLE_PARK(Ped ped, Vehicle vehicle, float x, float y, float z, float heading, int mode, float radius, BOOL keepEngineOn);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param x float
-- @param y float
-- @param z float
-- @param heading float
-- @param mode int
-- @param radius float
-- @param keepEngineOn BOOL
-- @return void
function TaskVehiclePark(ped, vehicle, x, y, z, heading, mode, radius, keepEngineOn) end

-- known "killTypes" are: "AR_stealth_kill_knife" and "AR_stealth_kill_a".
-- @module native
-- @submodule ai
-- @see TASK_STEALTH_KILL
-- @usage Any TASK_STEALTH_KILL(Ped killer, Ped target, Hash killType, float p3, BOOL p4);
-- @param killer Ped
-- @param target Ped
-- @param killType Hash
-- @param p3 float
-- @param p4 BOOL
-- @return Any
function TaskStealthKill(killer, target, killType, p3, p4) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_PLANT_BOMB
-- @usage void TASK_PLANT_BOMB(Ped ped, float x, float y, float z, float heading);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param heading float
-- @return void
function TaskPlantBomb(ped, x, y, z, heading) end

-- If no timeout, set timeout to -1.
-- @module native
-- @submodule ai
-- @see TASK_FOLLOW_NAV_MESH_TO_COORD
-- @usage void TASK_FOLLOW_NAV_MESH_TO_COORD(Ped ped, float x, float y, float z, float speed, int timeout, float stoppingRange, BOOL persistFollowing, float unk);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param speed float
-- @param timeout int
-- @param stoppingRange float
-- @param persistFollowing BOOL
-- @param unk float
-- @return void
function TaskFollowNavMeshToCoord(ped, x, y, z, speed, timeout, stoppingRange, persistFollowing, unk) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_FOLLOW_NAV_MESH_TO_COORD_ADVANCED
-- @usage void TASK_FOLLOW_NAV_MESH_TO_COORD_ADVANCED(Ped ped, float x, float y, float z, float speed, int timeout, float unkFloat, int unkInt, float unkX, float unkY, float unkZ, float unk_40000f);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param speed float
-- @param timeout int
-- @param unkFloat float
-- @param unkInt int
-- @param unkX float
-- @param unkY float
-- @param unkZ float
-- @param unk_40000f float
-- @return void
function TaskFollowNavMeshToCoordAdvanced(ped, x, y, z, speed, timeout, unkFloat, unkInt, unkX, unkY, unkZ, unk_40000f) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_PED_PATH_CAN_USE_CLIMBOVERS
-- @usage Any SET_PED_PATH_CAN_USE_CLIMBOVERS(Ped ped, BOOL Toggle);
-- @param ped Ped
-- @param Toggle BOOL
-- @return Any
function SetPedPathCanUseClimbovers(ped, Toggle) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_PED_PATH_CAN_USE_LADDERS
-- @usage Any SET_PED_PATH_CAN_USE_LADDERS(Ped ped, BOOL Toggle);
-- @param ped Ped
-- @param Toggle BOOL
-- @return Any
function SetPedPathCanUseLadders(ped, Toggle) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_PED_PATH_CAN_DROP_FROM_HEIGHT
-- @usage void SET_PED_PATH_CAN_DROP_FROM_HEIGHT(Ped ped, BOOL Toggle);
-- @param ped Ped
-- @param Toggle BOOL
-- @return void
function SetPedPathCanDropFromHeight(ped, Toggle) end

-- Hash collision!!! Actual name: SET_PED_PATH_MAY_ENTER_WATER
-- @module native
-- @submodule ai
-- @see SET_PED_PATHS_WIDTH_PLANT
-- @usage void SET_PED_PATHS_WIDTH_PLANT(Ped ped, BOOL mayEnterWater);
-- @param ped Ped
-- @param mayEnterWater BOOL
-- @return void
function SetPedPathsWidthPlant(ped, mayEnterWater) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_PED_PATH_PREFER_TO_AVOID_WATER
-- @usage void SET_PED_PATH_PREFER_TO_AVOID_WATER(Ped ped, BOOL avoidWater);
-- @param ped Ped
-- @param avoidWater BOOL
-- @return void
function SetPedPathPreferToAvoidWater(ped, avoidWater) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_PED_PATH_AVOID_FIRE
-- @usage void SET_PED_PATH_AVOID_FIRE(Ped ped, BOOL avoidFire);
-- @param ped Ped
-- @param avoidFire BOOL
-- @return void
function SetPedPathAvoidFire(ped, avoidFire) end

-- Needs to be looped! And yes, it does work and is not a hash collision. Birds will try to reach the given height.
-- @module native
-- @submodule ai
-- @see SET_GLOBAL_MIN_BIRD_FLIGHT_HEIGHT
-- @usage void SET_GLOBAL_MIN_BIRD_FLIGHT_HEIGHT(float height);
-- @param height float
-- @return void
function SetGlobalMinBirdFlightHeight(height) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_NAVMESH_ROUTE_DISTANCE_REMAINING
-- @usage Any GET_NAVMESH_ROUTE_DISTANCE_REMAINING(Ped ped, Any* p1, Any* p2);
-- @param ped Ped
-- @param p1 Any*
-- @param p2 Any*
-- @return Any
function GetNavmeshRouteDistanceRemaining(ped, p1, p2) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_NAVMESH_ROUTE_RESULT
-- @usage int GET_NAVMESH_ROUTE_RESULT(Ped ped);
-- @param ped Ped
-- @return int
function GetNavmeshRouteResult(ped) end

-- example from fm_mission_controller  AI::TASK_GO_TO_COORD_ANY_MEANS(l_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);
-- @module native
-- @submodule ai
-- @see TASK_GO_TO_COORD_ANY_MEANS
-- @usage void TASK_GO_TO_COORD_ANY_MEANS(Ped ped, float x, float y, float z, float speed, Any p5, BOOL p6, int walkingStyle, float p8);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param speed float
-- @param p5 Any
-- @param p6 BOOL
-- @param walkingStyle int
-- @param p8 float
-- @return void
function TaskGoToCoordAnyMeans(ped, x, y, z, speed, p5, p6, walkingStyle, p8) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS
-- @usage void TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS(Ped ped, float x, float y, float z, float speed, Any p5, BOOL p6, int walkingStyle, float p8, Any p9, Any p10, Any p11);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param speed float
-- @param p5 Any
-- @param p6 BOOL
-- @param walkingStyle int
-- @param p8 float
-- @param p9 Any
-- @param p10 Any
-- @param p11 Any
-- @return void
function TaskGoToCoordAnyMeansExtraParams(ped, x, y, z, speed, p5, p6, walkingStyle, p8, p9, p10, p11) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS_WITH_CRUISE_SPEED
-- @usage void TASK_GO_TO_COORD_ANY_MEANS_EXTRA_PARAMS_WITH_CRUISE_SPEED(Ped ped, float x, float y, float z, float speed, Any p5, BOOL p6, int walkingStyle, float p8, Any p9, Any p10, Any p11, Any p12);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param speed float
-- @param p5 Any
-- @param p6 BOOL
-- @param walkingStyle int
-- @param p8 float
-- @param p9 Any
-- @param p10 Any
-- @param p11 Any
-- @param p12 Any
-- @return void
function TaskGoToCoordAnyMeansExtraParamsWithCruiseSpeed(ped, x, y, z, speed, p5, p6, walkingStyle, p8, p9, p10, p11, p12) end

-- Animations List : www.ls-multiplayer.com/dev/index.php?section=3  float speed > normal speed is 8.0f ----------------------  float speedMultiplier > multiply the playback speed ----------------------  int duration: time in millisecond ---------------------- -1 _ _ _ _ _ _ _> Default (see flag) 0 _ _ _ _ _ _ _ > Not play at all Small value _ _ > Slow down animation speed Other _ _ _ _ _ > freeze player control until specific time (ms) has  _ _ _ _ _ _ _ _ _ passed. (No effect if flag is set to be  _ _ _ _ _ _ _ _ _ controllable.)  int flag: ---------------------- enum eAnimationFlags {  ANIM_FLAG_NORMAL = 0,    ANIM_FLAG_REPEAT = 1,    ANIM_FLAG_STOP_LAST_FRAME = 2,    ANIM_FLAG_UPPERBODY = 16,    ANIM_FLAG_ENABLE_PLAYER_CONTROL = 32,    ANIM_FLAG_CANCELABLE = 120, }; Odd number : loop infinitely Even number : Freeze at last frame Multiple of 4: Freeze at last frame but controllable  01 to 15 > Full body 10 to 31 > Upper body 32 to 47 > Full body > Controllable 48 to 63 > Upper body > Controllable ... 001 to 255 > Normal 256 to 511 > Garbled ...  playbackRate:  values are between 0.0 and 1.0   lockX:    0 in most cases 1 for rcmepsilonism8 and rcmpaparazzo_3 > 1 for mini@sprunk    lockY:  0 in most cases  1 for missfam5_yoga, missfra1mcs_2_crew_react   lockZ:       0 for single player      Can be 1 but only for MP
-- @module native
-- @submodule ai
-- @see TASK_PLAY_ANIM
-- @usage void TASK_PLAY_ANIM(Ped ped, char* animDictionary, char* animationName, float speed, float speedMultiplier, int duration, int flag, float playbackRate, BOOL lockX, BOOL lockY, BOOL lockZ);
-- @param ped Ped
-- @param animDictionary char*
-- @param animationName char*
-- @param speed float
-- @param speedMultiplier float
-- @param duration int
-- @param flag int
-- @param playbackRate float
-- @param lockX BOOL
-- @param lockY BOOL
-- @param lockZ BOOL
-- @return void
function TaskPlayAnim(ped, animDictionary, animationName, speed, speedMultiplier, duration, flag, playbackRate, lockX, lockY, lockZ) end

-- It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position). animTime is a float from 0.0 -> 1.0, lets you start an animation from given point. The rest as in AI::TASK_PLAY_ANIM.   Rotation information : rotX and rotY don't seem to have any effect, only rotZ works.  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule ai
-- @see TASK_PLAY_ANIM_ADVANCED
-- @usage void TASK_PLAY_ANIM_ADVANCED(Ped ped, char* animDict, char* animName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float speed, float speedMultiplier, int duration, Any flag, float animTime, Any p14, Any p15);
-- @param ped Ped
-- @param animDict char*
-- @param animName char*
-- @param posX float
-- @param posY float
-- @param posZ float
-- @param rotX float
-- @param rotY float
-- @param rotZ float
-- @param speed float
-- @param speedMultiplier float
-- @param duration int
-- @param flag Any
-- @param animTime float
-- @param p14 Any
-- @param p15 Any
-- @return void
function TaskPlayAnimAdvanced(ped, animDict, animName, posX, posY, posZ, rotX, rotY, rotZ, speed, speedMultiplier, duration, flag, animTime, p14, p15) end

-- @todo
-- @module native
-- @submodule ai
-- @see STOP_ANIM_TASK
-- @usage void STOP_ANIM_TASK(Ped ped, char* animDictionary, char* animationName, float p3);
-- @param ped Ped
-- @param animDictionary char*
-- @param animationName char*
-- @param p3 float
-- @return void
function StopAnimTask(ped, animDictionary, animationName, p3) end

-- From fm_mission_controller.c: reserve_network_mission_objects(get_num_reserved_mission_objects(0) + 1); 			vVar28 = {0.094f, 0.02f, -0.005f}; 			vVar29 = {-92.24f, 63.64f, 150.24f}; 			func_253(&uVar30, joaat("prop_ld_case_01"), Global_1592429.imm_34757[iParam1 <268>], 1, 1, 0, 1); 			set_entity_lod_dist(net_to_ent(uVar30), 500); 			attach_entity_to_entity(net_to_ent(uVar30), iParam0, get_ped_bone_index(iParam0, 28422), vVar28, vVar29, 1, 0, 0, 0, 2, 1); 			Var31.imm_4 = 1065353216; 			Var31.imm_5 = 1065353216; 			Var31.imm_9 = 1065353216; 			Var31.imm_10 = 1065353216; 			Var31.imm_14 = 1065353216; 			Var31.imm_15 = 1065353216; 			Var31.imm_17 = 1040187392; 			Var31.imm_18 = 1040187392; 			Var31.imm_19 = -1; 			Var32.imm_4 = 1065353216; 			Var32.imm_5 = 1065353216; 			Var32.imm_9 = 1065353216; 			Var32.imm_10 = 1065353216; 			Var32.imm_14 = 1065353216; 			Var32.imm_15 = 1065353216; 			Var32.imm_17 = 1040187392; 			Var32.imm_18 = 1040187392; 			Var32.imm_19 = -1; 			Var31 = 1; 			Var31.imm_1 = "weapons@misc@jerrycan@mp_male"; 			Var31.imm_2 = "idle"; 			Var31.imm_20 = 1048633; 			Var31.imm_4 = 0.5f; 			Var31.imm_16 = get_hash_key("BONEMASK_ARMONLY_R"); 			task_scripted_animation(iParam0, &Var31, &Var32, &Var32, 0f, 0.25f); 			set_model_as_no_longer_needed(joaat("prop_ld_case_01")); 			remove_anim_dict("anim@heists@biolab@");
-- @module native
-- @submodule ai
-- @see TASK_SCRIPTED_ANIMATION
-- @usage void TASK_SCRIPTED_ANIMATION(Ped ped, Any* p1, Any* p2, Any* p3, float p4, float p5);
-- @param ped Ped
-- @param p1 Any*
-- @param p2 Any*
-- @param p3 Any*
-- @param p4 float
-- @param p5 float
-- @return void
function TaskScriptedAnimation(ped, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule ai
-- @see PLAY_ENTITY_SCRIPTED_ANIM
-- @usage void PLAY_ENTITY_SCRIPTED_ANIM(Any p0, Any* p1, Any* p2, Any* p3, float p4, float p5);
-- @param p0 Any
-- @param p1 Any*
-- @param p2 Any*
-- @param p3 Any*
-- @param p4 float
-- @param p5 float
-- @return void
function PlayEntityScriptedAnim(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule ai
-- @see STOP_ANIM_PLAYBACK
-- @usage void STOP_ANIM_PLAYBACK(Ped ped, Any p1, BOOL p2);
-- @param ped Ped
-- @param p1 Any
-- @param p2 BOOL
-- @return void
function StopAnimPlayback(ped, p1, p2) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_ANIM_WEIGHT
-- @usage void SET_ANIM_WEIGHT(Any p0, float p1, Any p2, Any p3, BOOL p4);
-- @param p0 Any
-- @param p1 float
-- @param p2 Any
-- @param p3 Any
-- @param p4 BOOL
-- @return void
function SetAnimWeight(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_ANIM_RATE
-- @usage void SET_ANIM_RATE(Any p0, float p1, Any p2, BOOL p3);
-- @param p0 Any
-- @param p1 float
-- @param p2 Any
-- @param p3 BOOL
-- @return void
function SetAnimRate(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_ANIM_LOOPED
-- @usage void SET_ANIM_LOOPED(Any p0, BOOL p1, Any p2, BOOL p3);
-- @param p0 Any
-- @param p1 BOOL
-- @param p2 Any
-- @param p3 BOOL
-- @return void
function SetAnimLooped(p0, p1, p2, p3) end

-- Example from the scripts: AI::TASK_PLAY_PHONE_GESTURE_ANIMATION(PLAYER::PLAYER_PED_ID(), v_3, v_2, v_4, 0.25, 0.25, 0, 0);  ========================================================= ^^ No offense, but Idk how that would really help anyone.  As for the animDict & animation, they're both store in a global in all 5 scripts. So if anyone would be so kind as to read that global and comment what strings they use. Thanks.  Known boneMaskTypes' "BONEMASK_HEADONLY" "BONEMASK_HEAD_NECK_AND_ARMS" "BONEMASK_HEAD_NECK_AND_L_ARM" "BONEMASK_HEAD_NECK_AND_R_ARM"  p4 known args - 0.0f, 0.5f, 0.25f p5 known args - 0.0f, 0.25f p6 known args - 1 if a global if check is passed. p7 known args - 1 if a global if check is passed.  The values found above, I found within the 5 scripts this is ever called in. (fmmc_launcher, fm_deathmatch_controller, fm_impromptu_dm_controller, fm_mission_controller, and freemode). =========================================================
-- @module native
-- @submodule ai
-- @see TASK_PLAY_PHONE_GESTURE_ANIMATION
-- @usage void TASK_PLAY_PHONE_GESTURE_ANIMATION(Ped ped, char* animDict, char* animation, char* boneMaskType, float p4, float p5, BOOL p6, BOOL p7);
-- @param ped Ped
-- @param animDict char*
-- @param animation char*
-- @param boneMaskType char*
-- @param p4 float
-- @param p5 float
-- @param p6 BOOL
-- @param p7 BOOL
-- @return void
function TaskPlayPhoneGestureAnimation(ped, animDict, animation, boneMaskType, p4, p5, p6, p7) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_PLAYING_PHONE_GESTURE_ANIM
-- @usage BOOL IS_PLAYING_PHONE_GESTURE_ANIM(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPlayingPhoneGestureAnim(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_PHONE_GESTURE_ANIM_CURRENT_TIME
-- @usage float GET_PHONE_GESTURE_ANIM_CURRENT_TIME(Ped ped);
-- @param ped Ped
-- @return float
function GetPhoneGestureAnimCurrentTime(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_PHONE_GESTURE_ANIM_TOTAL_TIME
-- @usage float GET_PHONE_GESTURE_ANIM_TOTAL_TIME(Ped ped);
-- @param ped Ped
-- @return float
function GetPhoneGestureAnimTotalTime(ped) end

-- Most probably plays a specific animation on vehicle. For example getting chop out of van etc...  Here's how its used -   AI::TASK_VEHICLE_PLAY_ANIM(l_325, "rcmnigel1b", "idle_speedo");  AI::TASK_VEHICLE_PLAY_ANIM(l_556[0/*1*/], "missfra0_chop_drhome", "InCar_GetOutofBack_Speedo");  FYI : Speedo is the name of van in which chop was put in the mission.
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_PLAY_ANIM
-- @usage void TASK_VEHICLE_PLAY_ANIM(Vehicle vehicle, char* animation_set, char* animation_name);
-- @param vehicle Vehicle
-- @param animation_set char*
-- @param animation_name char*
-- @return void
function TaskVehiclePlayAnim(vehicle, animation_set, animation_name) end

-- p5 = 0, p6 = 2
-- @module native
-- @submodule ai
-- @see TASK_LOOK_AT_COORD
-- @usage void TASK_LOOK_AT_COORD(Entity entity, float x, float y, float z, float duration, Any p5, Any p6);
-- @param entity Entity
-- @param x float
-- @param y float
-- @param z float
-- @param duration float
-- @param p5 Any
-- @param p6 Any
-- @return void
function TaskLookAtCoord(entity, x, y, z, duration, p5, p6) end

-- param3: duration in ms, use -1 to look forever param4: using 2048 is fine param5: using 3 is fine
-- @module native
-- @submodule ai
-- @see TASK_LOOK_AT_ENTITY
-- @usage void TASK_LOOK_AT_ENTITY(Ped ped, Entity lookAt, int duration, int unknown1, int unknown2);
-- @param ped Ped
-- @param lookAt Entity
-- @param duration int
-- @param unknown1 int
-- @param unknown2 int
-- @return void
function TaskLookAtEntity(ped, lookAt, duration, unknown1, unknown2) end

-- Not clear what it actually does, but here's how script uses it -   if (OBJECT::HAS_PICKUP_BEEN_COLLECTED(...)  { 	if(ENTITY::DOES_ENTITY_EXIST(PLAYER::PLAYER_PED_ID())) 	{ 		AI::TASK_CLEAR_LOOK_AT(PLAYER::PLAYER_PED_ID()); 	} 	... }  Another one where it doesn't "look" at current player -   AI::TASK_PLAY_ANIM(l_3ED, "missheist_agency2aig_2", "look_at_phone_a", 1000.0, -2.0, -1, 48, v_2, 0, 0, 0); PED::_2208438012482A1A(l_3ED, 0, 0); AI::TASK_CLEAR_LOOK_AT(l_3ED);
-- @module native
-- @submodule ai
-- @see TASK_CLEAR_LOOK_AT
-- @usage void TASK_CLEAR_LOOK_AT(Ped ped);
-- @param ped Ped
-- @return void
function TaskClearLookAt(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see OPEN_SEQUENCE_TASK
-- @usage Any OPEN_SEQUENCE_TASK(Object* taskSequence);
-- @param taskSequence Object*
-- @return Any
function OpenSequenceTask(taskSequence) end

-- @todo
-- @module native
-- @submodule ai
-- @see CLOSE_SEQUENCE_TASK
-- @usage Any CLOSE_SEQUENCE_TASK(Object taskSequence);
-- @param taskSequence Object
-- @return Any
function CloseSequenceTask(taskSequence) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_PERFORM_SEQUENCE
-- @usage Any TASK_PERFORM_SEQUENCE(Ped ped, Object taskSequence);
-- @param ped Ped
-- @param taskSequence Object
-- @return Any
function TaskPerformSequence(ped, taskSequence) end

-- @todo
-- @module native
-- @submodule ai
-- @see CLEAR_SEQUENCE_TASK
-- @usage Any CLEAR_SEQUENCE_TASK(Object* taskSequence);
-- @param taskSequence Object*
-- @return Any
function ClearSequenceTask(taskSequence) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_SEQUENCE_TO_REPEAT
-- @usage void SET_SEQUENCE_TO_REPEAT(Object taskSequence, BOOL repeat);
-- @param taskSequence Object
-- @param repeat BOOL
-- @return void
function SetSequenceToRepeat(taskSequence, repeat) end

-- returned values: 0 to 7 = task that's currently in progress, 0 meaning the first one.
-- @module native
-- @submodule ai
-- @see GET_SEQUENCE_PROGRESS
-- @usage int GET_SEQUENCE_PROGRESS(Ped ped);
-- @param ped Ped
-- @return int
function GetSequenceProgress(ped) end

-- from docks_heistb.c4: AI::GET_IS_TASK_ACTIVE(PLAYER::PLAYER_PED_ID(), 2))  Known Tasks: pastebin.com/2gFqJ3Px
-- @module native
-- @submodule ai
-- @see GET_IS_TASK_ACTIVE
-- @usage BOOL GET_IS_TASK_ACTIVE(Ped ped, int taskNumber);
-- @param ped Ped
-- @param taskNumber int
-- @return BOOL
function GetIsTaskActive(ped, taskNumber) end

-- Gets the status of a script-assigned task. The hash does not seem to match the actual native name, but is assigned hardcoded from the executable during task creation.  Statuses are specific to tasks, in addition '7' means the specified task is not assigned to the ped.  A few hashes found in the executable (although not a complete list) can be found at pastebin.com/R9iK6M9W as it was too long for this wiki.
-- @module native
-- @submodule ai
-- @see GET_SCRIPT_TASK_STATUS
-- @usage int GET_SCRIPT_TASK_STATUS(Ped targetPed, Hash taskHash);
-- @param targetPed Ped
-- @param taskHash Hash
-- @return int
function GetScriptTaskStatus(targetPed, taskHash) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_ACTIVE_VEHICLE_MISSION_TYPE
-- @usage int GET_ACTIVE_VEHICLE_MISSION_TYPE(Vehicle veh);
-- @param veh Vehicle
-- @return int
function GetActiveVehicleMissionType(veh) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_LEAVE_ANY_VEHICLE
-- @usage void TASK_LEAVE_ANY_VEHICLE(Ped ped, int p1, int p2);
-- @param ped Ped
-- @param p1 int
-- @param p2 int
-- @return void
function TaskLeaveAnyVehicle(ped, p1, p2) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_AIM_GUN_SCRIPTED
-- @usage void TASK_AIM_GUN_SCRIPTED(Ped ped, Hash scriptTask, BOOL p2, BOOL p3);
-- @param ped Ped
-- @param scriptTask Hash
-- @param p2 BOOL
-- @param p3 BOOL
-- @return void
function TaskAimGunScripted(ped, scriptTask, p2, p3) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_AIM_GUN_SCRIPTED_WITH_TARGET
-- @usage void TASK_AIM_GUN_SCRIPTED_WITH_TARGET(Any p0, Any p1, float p2, float p3, float p4, Any p5, BOOL p6, BOOL p7);
-- @param p0 Any
-- @param p1 Any
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 Any
-- @param p6 BOOL
-- @param p7 BOOL
-- @return void
function TaskAimGunScriptedWithTarget(p0, p1, p2, p3, p4, p5, p6, p7) end

-- @todo
-- @module native
-- @submodule ai
-- @see UPDATE_TASK_AIM_GUN_SCRIPTED_TARGET
-- @usage void UPDATE_TASK_AIM_GUN_SCRIPTED_TARGET(Ped p0, Ped p1, float p2, float p3, float p4, BOOL p5);
-- @param p0 Ped
-- @param p1 Ped
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 BOOL
-- @return void
function UpdateTaskAimGunScriptedTarget(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_CLIP_SET_FOR_SCRIPTED_GUN_TASK
-- @usage char* GET_CLIP_SET_FOR_SCRIPTED_GUN_TASK(int p0);
-- @param p0 int
-- @return char*
function GetClipSetForScriptedGunTask(p0) end

-- duration: the amount of time in milliseconds to do the task.  -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped
-- @module native
-- @submodule ai
-- @see TASK_AIM_GUN_AT_ENTITY
-- @usage void TASK_AIM_GUN_AT_ENTITY(Ped ped, Entity entity, int duration, BOOL p3);
-- @param ped Ped
-- @param entity Entity
-- @param duration int
-- @param p3 BOOL
-- @return void
function TaskAimGunAtEntity(ped, entity, duration, p3) end

-- duration: the amount of time in milliseconds to do the task. -1 will keep the task going until either another task is applied, or CLEAR_ALL_TASKS() is called with the ped
-- @module native
-- @submodule ai
-- @see TASK_TURN_PED_TO_FACE_ENTITY
-- @usage void TASK_TURN_PED_TO_FACE_ENTITY(Ped ped, Entity entity, int duration);
-- @param ped Ped
-- @param entity Entity
-- @param duration int
-- @return void
function TaskTurnPedToFaceEntity(ped, entity, duration) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_AIM_GUN_AT_COORD
-- @usage void TASK_AIM_GUN_AT_COORD(Ped ped, float x, float y, float z, int time, BOOL p5, BOOL p6);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param time int
-- @param p5 BOOL
-- @param p6 BOOL
-- @return void
function TaskAimGunAtCoord(ped, x, y, z, time, p5, p6) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_SHOOT_AT_COORD
-- @usage void TASK_SHOOT_AT_COORD(Ped ped, float x, float y, float z, int duration, Hash firingPattern);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param duration int
-- @param firingPattern Hash
-- @return void
function TaskShootAtCoord(ped, x, y, z, duration, firingPattern) end

-- Makes the specified ped shuffle to the next vehicle seat. The ped MUST be in a vehicle and the vehicle parameter MUST be the ped's current vehicle.
-- @module native
-- @submodule ai
-- @see TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT
-- @usage void TASK_SHUFFLE_TO_NEXT_VEHICLE_SEAT(Ped ped, Vehicle vehicle);
-- @param ped Ped
-- @param vehicle Vehicle
-- @return void
function TaskShuffleToNextVehicleSeat(ped, vehicle) end

-- @todo
-- @module native
-- @submodule ai
-- @see CLEAR_PED_TASKS
-- @usage void CLEAR_PED_TASKS(Ped ped);
-- @param ped Ped
-- @return void
function ClearPedTasks(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see CLEAR_PED_SECONDARY_TASK
-- @usage void CLEAR_PED_SECONDARY_TASK(Ped ped);
-- @param ped Ped
-- @return void
function ClearPedSecondaryTask(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_EVERYONE_LEAVE_VEHICLE
-- @usage void TASK_EVERYONE_LEAVE_VEHICLE(Vehicle vehicle);
-- @param vehicle Vehicle
-- @return void
function TaskEveryoneLeaveVehicle(vehicle) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_GOTO_ENTITY_OFFSET
-- @usage void TASK_GOTO_ENTITY_OFFSET(Ped ped, Any p1, Any p2, float x, float y, float z, int duration);
-- @param ped Ped
-- @param p1 Any
-- @param p2 Any
-- @param x float
-- @param y float
-- @param z float
-- @param duration int
-- @return void
function TaskGotoEntityOffset(ped, p1, p2, x, y, z, duration) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_GOTO_ENTITY_OFFSET_XY
-- @usage void TASK_GOTO_ENTITY_OFFSET_XY(Any p0, Any p1, Any p2, float p3, float p4, float p5, float p6, Any p7);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 Any
-- @return void
function TaskGotoEntityOffsetXy(p0, p1, p2, p3, p4, p5, p6, p7) end

-- duration in milliseconds
-- @module native
-- @submodule ai
-- @see TASK_TURN_PED_TO_FACE_COORD
-- @usage void TASK_TURN_PED_TO_FACE_COORD(Ped ped, float x, float y, float z, int duration);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param duration int
-- @return void
function TaskTurnPedToFaceCoord(ped, x, y, z, duration) end

-- '1  '3 - brake + reverse '4 - turn left 90 + braking '5 - turn right 90 + braking '6 - brake strong (handbrake?) until time ends '7 - turn left + accelerate '7 - turn right + accelerate '9 - weak acceleration '10 - turn left + restore wheel pos to center in the end '11 - turn right + restore wheel pos to center in the end '13 - turn left + go reverse '14 - turn left + go reverse '16 - crash the game after like 2 seconds :) '17 - keep actual state, game crashed after few tries '18 - game crash '19 - strong brake + turn left/right '20 - weak brake + turn left then turn right '21 - weak brake + turn right then turn left '22 - brake + reverse '23 - accelerate fast '24  '25 - brake turning left then when almost stopping it turns left more '26 - brake turning right then when almost stopping it turns right more '27 - brake until car stop or until time ends '28 - brake + strong reverse acceleration '30 - performs a burnout (brake until stop + brake and accelerate) '31 - accelerate + handbrake '32 - accelerate very strong  Seems to be this: Works on NPCs, but overrides their current task. If inside a task sequence (and not being the last task), "time" will work, otherwise the task will be performed forever until tasked with something else
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_TEMP_ACTION
-- @usage void TASK_VEHICLE_TEMP_ACTION(Ped driver, Vehicle vehicle, int action, int time);
-- @param driver Ped
-- @param vehicle Vehicle
-- @param action int
-- @param time int
-- @return void
function TaskVehicleTempAction(driver, vehicle, action, time) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_MISSION
-- @usage void TASK_VEHICLE_MISSION(Any p0, Any p1, Any p2, Any p3, float p4, Any p5, float p6, float p7, BOOL p8);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 float
-- @param p5 Any
-- @param p6 float
-- @param p7 float
-- @param p8 BOOL
-- @return void
function TaskVehicleMission(p0, p1, p2, p3, p4, p5, p6, p7, p8) end

-- Modes: 8= flees 1=drives around the ped 4=drives and stops near 7=follows 10=follows to the left 11=follows to the  right 12 = follows behind 13=follows ahead 14=follows, stop when near
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_MISSION_PED_TARGET
-- @usage void TASK_VEHICLE_MISSION_PED_TARGET(Ped ped, Vehicle vehicle, Ped pedTarget, int mode, float maxSpeed, int drivingStyle, float minDistance, float p7, BOOL p8);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param pedTarget Ped
-- @param mode int
-- @param maxSpeed float
-- @param drivingStyle int
-- @param minDistance float
-- @param p7 float
-- @param p8 BOOL
-- @return void
function TaskVehicleMissionPedTarget(ped, vehicle, pedTarget, mode, maxSpeed, drivingStyle, minDistance, p7, p8) end

-- Example from fm_mission_controller.c4: AI::TASK_VEHICLE_MISSION_COORS_TARGET(l_65E1, l_65E2, 324.84588623046875, 325.09619140625, 104.3525, 4, 15.0, 802987, 5.0, 5.0, 0);
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_MISSION_COORS_TARGET
-- @usage void TASK_VEHICLE_MISSION_COORS_TARGET(Ped ped, Vehicle vehicle, float x, float y, float z, int p5, int p6, int p7, float p8, float p9, BOOL p10);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param x float
-- @param y float
-- @param z float
-- @param p5 int
-- @param p6 int
-- @param p7 int
-- @param p8 float
-- @param p9 float
-- @param p10 BOOL
-- @return void
function TaskVehicleMissionCoorsTarget(ped, vehicle, x, y, z, p5, p6, p7, p8, p9, p10) end

-- Makes a ped follow the targetVehicle with <minDistance> in between.  note: minDistance is ignored if drivingstyle is avoiding traffic, but Rushed is fine.  Mode: The mode defines the relative position to the targetVehicle. The ped will try to position its vehicle there. -1 = behind 0 = ahead 1 = left 2 = right 3 = back left 4 = back right  if the target is closer than noRoadsDistance, the driver will ignore pathing/roads and follow you directly.  Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_ESCORT
-- @usage void TASK_VEHICLE_ESCORT(Ped ped, Vehicle vehicle, Vehicle targetVehicle, int mode, float speed, int drivingStyle, float minDistance, int p7, float noRoadsDistance);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param targetVehicle Vehicle
-- @param mode int
-- @param speed float
-- @param drivingStyle int
-- @param minDistance float
-- @param p7 int
-- @param noRoadsDistance float
-- @return void
function TaskVehicleEscort(ped, vehicle, targetVehicle, mode, speed, drivingStyle, minDistance, p7, noRoadsDistance) end

-- chases targetEnt fast and aggressively -- Makes ped (needs to be in vehicle) chase targetEnt.
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_CHASE
-- @usage void TASK_VEHICLE_CHASE(Ped driver, Entity targetEnt);
-- @param driver Ped
-- @param targetEnt Entity
-- @return void
function TaskVehicleChase(driver, targetEnt) end

-- pilot, vehicle and altitude are rather self-explanatory.  p4: is unused variable in the function.  entityToFollow: you can provide a Vehicle entity or a Ped entity, the heli will protect them.  'targetSpeed':  The pilot will dip the nose AS MUCH AS POSSIBLE so as to reach this value AS FAST AS POSSIBLE.  As such, you'll want to modulate it as opposed to calling it via a hard-wired, constant #.  'radius' isn't just "stop within radius of X of target" like with ground vehicles.  In this case, the pilot will fly an entire circle around 'radius' and continue to do so.  NOT CONFIRMED:  p7 appears to be a FlyingStyle enum.  Still investigating it as of this writing, but playing around with values here appears to result in different -behavior- as opposed to offsetting coordinates, altitude, target speed, etc.  NOTE: If the pilot finds enemies, it will engage them until it kills them, but will return to protect the ped/vehicle given shortly thereafter.
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_HELI_PROTECT
-- @usage void TASK_VEHICLE_HELI_PROTECT(Ped pilot, Vehicle vehicle, Entity entityToFollow, float targetSpeed, int p4, float radius, int altitude, int p7);
-- @param pilot Ped
-- @param vehicle Vehicle
-- @param entityToFollow Entity
-- @param targetSpeed float
-- @param p4 int
-- @param radius float
-- @param altitude int
-- @param p7 int
-- @return void
function TaskVehicleHeliProtect(pilot, vehicle, entityToFollow, targetSpeed, p4, radius, altitude, p7) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_TASK_VEHICLE_CHASE_BEHAVIOR_FLAG
-- @usage void SET_TASK_VEHICLE_CHASE_BEHAVIOR_FLAG(Ped ped, int flag, BOOL set);
-- @param ped Ped
-- @param flag int
-- @param set BOOL
-- @return void
function SetTaskVehicleChaseBehaviorFlag(ped, flag, set) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_TASK_VEHICLE_CHASE_IDEAL_PURSUIT_DISTANCE
-- @usage void SET_TASK_VEHICLE_CHASE_IDEAL_PURSUIT_DISTANCE(Ped ped, float distance);
-- @param ped Ped
-- @param distance float
-- @return void
function SetTaskVehicleChaseIdealPursuitDistance(ped, distance) end

-- Ped pilot should be in a heli. EntityToFollow can be a vehicle or Ped.  x,y,z appear to be how close to the EntityToFollow the heli should be. Scripts use 0.0, 0.0, 80.0. Then the heli tries to position itself 80 units above the EntityToFollow. If you reduce it to -5.0, it tries to go below (if the EntityToFollow is a heli or plane)   NOTE: If the pilot finds enemies, it will engage them, then remain there idle, not continuing to chase the Entity given.
-- @module native
-- @submodule ai
-- @see TASK_HELI_CHASE
-- @usage void TASK_HELI_CHASE(Ped pilot, Entity entityToFollow, float x, float y, float z);
-- @param pilot Ped
-- @param entityToFollow Entity
-- @param x float
-- @param y float
-- @param z float
-- @return void
function TaskHeliChase(pilot, entityToFollow, x, y, z) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_PLANE_CHASE
-- @usage void TASK_PLANE_CHASE(Ped pilot, Entity entityToFollow, float x, float y, float z);
-- @param pilot Ped
-- @param entityToFollow Entity
-- @param x float
-- @param y float
-- @param z float
-- @return void
function TaskPlaneChase(pilot, entityToFollow, x, y, z) end

-- Function.Call(Hash.TASK_PLANE_LAND, pilot, selectedAirplane, runwayStartPoint.X, runwayStartPoint.Y, runwayStartPoint.Z, runwayEndPoint.X, runwayEndPoint.Y, runwayEndPoint.Z);
-- @module native
-- @submodule ai
-- @see TASK_PLANE_LAND
-- @usage void TASK_PLANE_LAND(Ped pilot, Vehicle plane, float runwayStartX, float runwayStartY, float runwayStartZ, float runwayEndX, float runwayEndY, float runwayEndZ);
-- @param pilot Ped
-- @param plane Vehicle
-- @param runwayStartX float
-- @param runwayStartY float
-- @param runwayStartZ float
-- @param runwayEndX float
-- @param runwayEndY float
-- @param runwayEndZ float
-- @return void
function TaskPlaneLand(pilot, plane, runwayStartX, runwayStartY, runwayStartZ, runwayEndX, runwayEndY, runwayEndZ) end

-- Needs more research.  Default value of p13 is -1.0 or 0xBF800000. Default value of p14 is 0.  Modified examples from "fm_mission_controller.ysc", line ~203551: AI::TASK_HELI_MISSION(ped, vehicle, 0, 0, posX, posY, posZ, 4, 1.0, -1.0, -1.0, 10, 10, 5.0, 0); AI::TASK_HELI_MISSION(ped, vehicle, 0, 0, posX, posY, posZ, 4, 1.0, -1.0, -1.0, 0, ?, 5.0, 4096);  int mode seams to set mission type 4 = coords target, 23 = ped target. int 14 set to 32 = ped will land at destination.  My findings: mode 4 or 7 forces heli to snap to the heading set 8 makes the heli flee from the ped. 9 circles around ped with angle set 10, 11 normal + imitate ped heading 20 makes the heli land when he's near the ped. It won't resume chasing. 21 emulates an helicopter crash 23 makes the heli circle erratically around ped  I change p2 to 'vehicleToFollow' as it seems to work like the task natives to set targets. In the heli_taxi script where as the merryweather heli takes you to your waypoint it has no need to follow a vehicle or a ped, so of course both have 0 set.
-- @module native
-- @submodule ai
-- @see TASK_HELI_MISSION
-- @usage void TASK_HELI_MISSION(Ped pilot, Vehicle vehicle, Vehicle vehicleToFollow, Ped pedToFollow, float posX, float posY, float posZ, int mode, float speed, float radius, float angle, int p11, int height, float p13, int p14);
-- @param pilot Ped
-- @param vehicle Vehicle
-- @param vehicleToFollow Vehicle
-- @param pedToFollow Ped
-- @param posX float
-- @param posY float
-- @param posZ float
-- @param mode int
-- @param speed float
-- @param radius float
-- @param angle float
-- @param p11 int
-- @param height int
-- @param p13 float
-- @param p14 int
-- @return void
function TaskHeliMission(pilot, vehicle, vehicleToFollow, pedToFollow, posX, posY, posZ, mode, speed, radius, angle, p11, height, p13, p14) end

-- EXAMPLE USAGE:  Fly around target (Precautiously, keeps high altitude): Function.Call(Hash.TASK_PLANE_MISSION, pilot, selectedAirplane, 0, 0, Target.X, Target.Y, Target.Z, 4, 100f, 0f, 90f, 0, 200f);  Fly around target (Dangerously, keeps VERY low altitude): Function.Call(Hash.TASK_PLANE_MISSION, pilot, selectedAirplane, 0, 0, Target.X, Target.Y, Target.Z, 4, 100f, 0f, 90f, 0, -500f);  Fly directly into target: Function.Call(Hash.TASK_PLANE_MISSION, pilot, selectedAirplane, 0, 0, Target.X, Target.Y, Target.Z, 4, 100f, 0f, 90f, 0, -5000f);  EXPANDED INFORMATION FOR ADVANCED USAGE (custom pilot)  'physicsSpeed': (THIS IS NOT YOUR ORDINARY SPEED PARAMETER: READ!!) Think of this -first- as a radius value, not a true speed value.  The ACTUAL effective speed of the plane will be that of the maximum speed permissible to successfully fly in a -circle- with a radius of 'physicsSpeed'.  This also means that the plane must complete a circle before it can begin its "bombing run", its straight line pass towards the target.  p9 appears to influence the angle at which a "bombing run" begins, although I can't confirm yet.  VERY IMPORTANT: A "bombing run" will only occur if a plane can successfully determine a possible navigable route (the slower the value of 'physicsSpeed', the more precise the pilot can be due to less influence of physics on flightpath).  Otherwise, the pilot will continue to patrol around Destination (be it a dynamic Entity position vector or a fixed world coordinate vector.)  0 = Plane's physics are almost entirely frozen, plane appears to "orbit" around precise destination point 1-299 = Blend of "frozen, small radius" vs. normal vs. "accelerated, hyperfast, large radius" 300+ =  Vehicle behaves entirely like a normal gameplay plane.  'patrolBlend' (The lower the value, the more the Destination is treated as a "fly AT" rather than a "fly AROUND point".)  Scenario: Destination is an Entity on ground level, wide open field -5000 = Pilot kamikazes directly into Entity -1000 = Pilot flies extremely low -around- Entity, very prone to crashing -200 = Pilot flies lower than average around Entity. 0 = Pilot flies around Entity, normal altitude 200 = Pilot flies an extra eighty units or so higher than 0 while flying around Destination (this doesn't seem to correlate directly into distance units.)  -- Valid mission types found in the exe: --  0 = None 1 = Unk 2 = CTaskVehicleRam 3 = CTaskVehicleBlock 4 = CTaskVehicleGoToPlane 5 = CTaskVehicleStop 6 = CTaskVehicleAttack 7 = CTaskVehicleFollow 8 = CTaskVehicleFleeAirborne 9= CTaskVehicleCircle 10 = CTaskVehicleEscort 15 = CTaskVehicleFollowRecording 16 = CTaskVehiclePoliceBehaviour 17 = CTaskVehicleCrash
-- @module native
-- @submodule ai
-- @see TASK_PLANE_MISSION
-- @usage void TASK_PLANE_MISSION(Ped pilot, Vehicle plane, Vehicle targetVehicle, Ped targetPed, float destinationX, float destinationY, float destinationZ, int missionType, float vehicleSpeed, float p9, float heading, float maxAltitude, float minAltitude);
-- @param pilot Ped
-- @param plane Vehicle
-- @param targetVehicle Vehicle
-- @param targetPed Ped
-- @param destinationX float
-- @param destinationY float
-- @param destinationZ float
-- @param missionType int
-- @param vehicleSpeed float
-- @param p9 float
-- @param heading float
-- @param maxAltitude float
-- @param minAltitude float
-- @return void
function TaskPlaneMission(pilot, plane, targetVehicle, targetPed, destinationX, destinationY, destinationZ, missionType, vehicleSpeed, p9, heading, maxAltitude, minAltitude) end

-- You need to call PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS after TASK_BOAT_MISSION in order for the task to execute.  Working example float vehicleMaxSpeed = VEHICLE::_GET_VEHICLE_MAX_SPEED(ENTITY::GET_ENTITY_MODEL(pedVehicle)); AI::TASK_BOAT_MISSION(pedDriver, pedVehicle, 0, 0, waypointCoord.x, waypointCoord.y, waypointCoord.z, 4, vehicleMaxSpeed, 786469, -1.0, 7); PED::SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(pedDriver, 1);  P8 appears to be driving style flag - see gtaforums.com/topic/822314-guide-driving-styles/ for documentation
-- @module native
-- @submodule ai
-- @see TASK_BOAT_MISSION
-- @usage void TASK_BOAT_MISSION(Ped pedDriver, Vehicle boat, Any p2, Any p3, float x, float y, float z, Any p7, float maxSpeed, int drivingStyle, float p10, Any p11);
-- @param pedDriver Ped
-- @param boat Vehicle
-- @param p2 Any
-- @param p3 Any
-- @param x float
-- @param y float
-- @param z float
-- @param p7 Any
-- @param maxSpeed float
-- @param drivingStyle int
-- @param p10 float
-- @param p11 Any
-- @return void
function TaskBoatMission(pedDriver, boat, p2, p3, x, y, z, p7, maxSpeed, drivingStyle, p10, p11) end

-- Example:  AI::TASK_DRIVE_BY(l_467[1/*22*/], PLAYER::PLAYER_PED_ID(), 0, 0.0, 0.0, 2.0, 300.0, 100, 0, ${firing_pattern_burst_fire_driveby});     Needs working example. Doesn't seem to do anything.  I marked p2 as targetVehicle as all these shooting related tasks seem to have that in common. I marked p6 as distanceToShoot as if you think of GTA's Logic with the native SET_VEHICLE_SHOOT natives, it won't shoot till it gets within a certain distance of the target. I marked p7 as pedAccuracy as it seems it's mostly 100 (Completely Accurate), 75, 90, etc. Although this could be the ammo count within the gun, but I highly doubt it. I will change this comment once I find out if it's ammo count or not.
-- @module native
-- @submodule ai
-- @see TASK_DRIVE_BY
-- @usage void TASK_DRIVE_BY(Ped driverPed, Ped targetPed, Vehicle targetVehicle, float targetX, float targetY, float targetZ, float distanceToShoot, int pedAccuracy, BOOL p8, Hash firingPattern);
-- @param driverPed Ped
-- @param targetPed Ped
-- @param targetVehicle Vehicle
-- @param targetX float
-- @param targetY float
-- @param targetZ float
-- @param distanceToShoot float
-- @param pedAccuracy int
-- @param p8 BOOL
-- @param firingPattern Hash
-- @return void
function TaskDriveBy(driverPed, targetPed, targetVehicle, targetX, targetY, targetZ, distanceToShoot, pedAccuracy, p8, firingPattern) end

-- For p1 & p2 (Ped, Vehicle). I could be wrong, as the only time this native is called in scripts is once and both are 0, but I assume this native will work like SET_MOUNTED_WEAPON_TARGET in which has the same exact amount of parameters and the 1st and last 3 parameters are right and the same for both natives.
-- @module native
-- @submodule ai
-- @see SET_DRIVEBY_TASK_TARGET
-- @usage void SET_DRIVEBY_TASK_TARGET(Ped shootingPed, Ped targetPed, Vehicle targetVehicle, float x, float y, float z);
-- @param shootingPed Ped
-- @param targetPed Ped
-- @param targetVehicle Vehicle
-- @param x float
-- @param y float
-- @param z float
-- @return void
function SetDrivebyTaskTarget(shootingPed, targetPed, targetVehicle, x, y, z) end

-- @todo
-- @module native
-- @submodule ai
-- @see CLEAR_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK
-- @usage void CLEAR_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK(Ped ped);
-- @param ped Ped
-- @return void
function ClearDrivebyTaskUnderneathDrivingTask(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK
-- @usage BOOL IS_DRIVEBY_TASK_UNDERNEATH_DRIVING_TASK(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsDrivebyTaskUnderneathDrivingTask(ped) end

-- Forces the ped to use the mounted weapon. Returns false if task is not possible.
-- @module native
-- @submodule ai
-- @see CONTROL_MOUNTED_WEAPON
-- @usage BOOL CONTROL_MOUNTED_WEAPON(Ped ped);
-- @param ped Ped
-- @return BOOL
function ControlMountedWeapon(ped) end

-- Note: Look in decompiled scripts and the times that p1 and p2 aren't 0. They are filled with vars. If you look through out that script what other natives those vars are used in, you can tell p1 is a ped and p2 is a vehicle. Which most likely means if you want the mounted weapon to target a ped set targetVehicle to 0 or vice-versa.
-- @module native
-- @submodule ai
-- @see SET_MOUNTED_WEAPON_TARGET
-- @usage void SET_MOUNTED_WEAPON_TARGET(Ped shootingPed, Ped targetPed, Vehicle targetVehicle, float x, float y, float z);
-- @param shootingPed Ped
-- @param targetPed Ped
-- @param targetVehicle Vehicle
-- @param x float
-- @param y float
-- @param z float
-- @return void
function SetMountedWeaponTarget(shootingPed, targetPed, targetVehicle, x, y, z) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_MOUNTED_WEAPON_TASK_UNDERNEATH_DRIVING_TASK
-- @usage BOOL IS_MOUNTED_WEAPON_TASK_UNDERNEATH_DRIVING_TASK(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsMountedWeaponTaskUnderneathDrivingTask(ped) end

-- Actually has 3 params, not 2.  p0: Ped p1: int (or bool?) p2: int
-- @module native
-- @submodule ai
-- @see TASK_USE_MOBILE_PHONE
-- @usage void TASK_USE_MOBILE_PHONE(Ped ped, int p1);
-- @param ped Ped
-- @param p1 int
-- @return void
function TaskUseMobilePhone(ped, p1) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_USE_MOBILE_PHONE_TIMED
-- @usage void TASK_USE_MOBILE_PHONE_TIMED(Ped ped, int duration);
-- @param ped Ped
-- @param duration int
-- @return void
function TaskUseMobilePhoneTimed(ped, duration) end

-- p2 tend to be 16, 17 or 1 p3 to p7 tend to be 0.0
-- @module native
-- @submodule ai
-- @see TASK_CHAT_TO_PED
-- @usage void TASK_CHAT_TO_PED(Ped ped, Ped target, Any p2, float p3, float p4, float p5, float p6, float p7);
-- @param ped Ped
-- @param target Ped
-- @param p2 Any
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 float
-- @return void
function TaskChatToPed(ped, target, p2, p3, p4, p5, p6, p7) end

-- Seat Numbers ------------------------------- Driver = -1 Any = -2 Left-Rear = 1 Right-Front = 0 Right-Rear = 2 Extra seats = 3-14(This may differ from vehicle type e.g. Firetruck Rear Stand, Ambulance Rear)
-- @module native
-- @submodule ai
-- @see TASK_WARP_PED_INTO_VEHICLE
-- @usage void TASK_WARP_PED_INTO_VEHICLE(Ped ped, Vehicle vehicle, int seat);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param seat int
-- @return void
function TaskWarpPedIntoVehicle(ped, vehicle, seat) end

-- //this part of the code is to determine at which entity the player is aiming, for example if you want to create a mod where you give orders to peds Entity aimedentity; Player player = PLAYER::PLAYER_ID(); PLAYER::_GET_AIMED_ENTITY(player, &aimedentity);  //bg is an array of peds AI::TASK_SHOOT_AT_ENTITY(bg[i], aimedentity, 5000, GAMEPLAY::GET_HASH_KEY("FIRING_PATTERN_FULL_AUTO"));  in practical usage, getting the entity the player is aiming at and then task the peds to shoot at the entity, at a button press event would be better.
-- @module native
-- @submodule ai
-- @see TASK_SHOOT_AT_ENTITY
-- @usage void TASK_SHOOT_AT_ENTITY(Entity entity, Entity target, int duration, Hash firingPattern);
-- @param entity Entity
-- @param target Entity
-- @param duration int
-- @param firingPattern Hash
-- @return void
function TaskShootAtEntity(entity, target, duration, firingPattern) end

-- Climbs or vaults the nearest thing.
-- @module native
-- @submodule ai
-- @see TASK_CLIMB
-- @usage void TASK_CLIMB(Ped ped, BOOL unused);
-- @param ped Ped
-- @param unused BOOL
-- @return void
function TaskClimb(ped, unused) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_CLIMB_LADDER
-- @usage void TASK_CLIMB_LADDER(Ped ped, int p1);
-- @param ped Ped
-- @param p1 int
-- @return void
function TaskClimbLadder(ped, p1) end

-- Immediately stops the pedestrian from whatever it's doing. They stop fighting, animations, etc. they forget what they were doing.
-- @module native
-- @submodule ai
-- @see CLEAR_PED_TASKS_IMMEDIATELY
-- @usage void CLEAR_PED_TASKS_IMMEDIATELY(Ped ped);
-- @param ped Ped
-- @return void
function ClearPedTasksImmediately(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_PERFORM_SEQUENCE_FROM_PROGRESS
-- @usage void TASK_PERFORM_SEQUENCE_FROM_PROGRESS(Any p0, Any p1, Any p2, Any p3);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @return void
function TaskPerformSequenceFromProgress(p0, p1, p2, p3) end

-- Not used in the scripts.  Bullshit! It's used in spawn_activities
-- @module native
-- @submodule ai
-- @see SET_NEXT_DESIRED_MOVE_STATE
-- @usage void SET_NEXT_DESIRED_MOVE_STATE(float p0);
-- @param p0 float
-- @return void
function SetNextDesiredMoveState(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_PED_DESIRED_MOVE_BLEND_RATIO
-- @usage void SET_PED_DESIRED_MOVE_BLEND_RATIO(Ped ped, float p1);
-- @param ped Ped
-- @param p1 float
-- @return void
function SetPedDesiredMoveBlendRatio(ped, p1) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_PED_DESIRED_MOVE_BLEND_RATIO
-- @usage float GET_PED_DESIRED_MOVE_BLEND_RATIO(Ped ped);
-- @param ped Ped
-- @return float
function GetPedDesiredMoveBlendRatio(ped) end

-- eg   AI::TASK_GOTO_ENTITY_AIMING(v_2, PLAYER::PLAYER_PED_ID(), 5.0, 25.0);  ped = Ped you want to perform this task. target = the Entity they should aim at. distanceToStopAt = distance from the target, where the ped should stop to aim. StartAimingDist = distance where the ped should start to aim.
-- @module native
-- @submodule ai
-- @see TASK_GOTO_ENTITY_AIMING
-- @usage void TASK_GOTO_ENTITY_AIMING(Ped ped, Entity target, float distanceToStopAt, float StartAimingDist);
-- @param ped Ped
-- @param target Entity
-- @param distanceToStopAt float
-- @param StartAimingDist float
-- @return void
function TaskGotoEntityAiming(ped, target, distanceToStopAt, StartAimingDist) end

-- p1 is always GET_HASH_KEY("empty") in scripts, for the rare times this is used
-- @module native
-- @submodule ai
-- @see TASK_SET_DECISION_MAKER
-- @usage void TASK_SET_DECISION_MAKER(Ped p0, Hash p1);
-- @param p0 Ped
-- @param p1 Hash
-- @return void
function TaskSetDecisionMaker(p0, p1) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_SET_SPHERE_DEFENSIVE_AREA
-- @usage void TASK_SET_SPHERE_DEFENSIVE_AREA(Any p0, float p1, float p2, float p3, float p4);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @return void
function TaskSetSphereDefensiveArea(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_CLEAR_DEFENSIVE_AREA
-- @usage void TASK_CLEAR_DEFENSIVE_AREA(Any p0);
-- @param p0 Any
-- @return void
function TaskClearDefensiveArea(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_PED_SLIDE_TO_COORD
-- @usage void TASK_PED_SLIDE_TO_COORD(Ped ped, float x, float y, float z, float heading, float p5);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param heading float
-- @param p5 float
-- @return void
function TaskPedSlideToCoord(ped, x, y, z, heading, p5) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_PED_SLIDE_TO_COORD_HDG_RATE
-- @usage void TASK_PED_SLIDE_TO_COORD_HDG_RATE(Ped ped, float x, float y, float z, float heading, float p5, float p6);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param heading float
-- @param p5 float
-- @param p6 float
-- @return void
function TaskPedSlideToCoordHdgRate(ped, x, y, z, heading, p5, p6) end

-- @todo
-- @module native
-- @submodule ai
-- @see ADD_COVER_POINT
-- @usage ScrHandle ADD_COVER_POINT(float p0, float p1, float p2, float p3, Any p4, Any p5, Any p6, BOOL p7);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 Any
-- @param p5 Any
-- @param p6 Any
-- @param p7 BOOL
-- @return ScrHandle
function AddCoverPoint(p0, p1, p2, p3, p4, p5, p6, p7) end

-- @todo
-- @module native
-- @submodule ai
-- @see REMOVE_COVER_POINT
-- @usage void REMOVE_COVER_POINT(ScrHandle coverpoint);
-- @param coverpoint ScrHandle
-- @return void
function RemoveCoverPoint(coverpoint) end

-- Checks if there is a cover point at position
-- @module native
-- @submodule ai
-- @see DOES_SCRIPTED_COVER_POINT_EXIST_AT_COORDS
-- @usage BOOL DOES_SCRIPTED_COVER_POINT_EXIST_AT_COORDS(float x, float y, float z);
-- @param x float
-- @param y float
-- @param z float
-- @return BOOL
function DoesScriptedCoverPointExistAtCoords(x, y, z) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_SCRIPTED_COVER_POINT_COORDS
-- @usage Vector3 GET_SCRIPTED_COVER_POINT_COORDS(ScrHandle coverpoint);
-- @param coverpoint ScrHandle
-- @return Vector3
function GetScriptedCoverPointCoords(coverpoint) end

-- Makes the specified ped attack the target ped. p2 should be 0 p3 should be 16
-- @module native
-- @submodule ai
-- @see TASK_COMBAT_PED
-- @usage void TASK_COMBAT_PED(Ped ped, Ped targetPed, int p2, int p3);
-- @param ped Ped
-- @param targetPed Ped
-- @param p2 int
-- @param p3 int
-- @return void
function TaskCombatPed(ped, targetPed, p2, p3) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_COMBAT_PED_TIMED
-- @usage void TASK_COMBAT_PED_TIMED(Any p0, Ped ped, int p2, Any p3);
-- @param p0 Any
-- @param ped Ped
-- @param p2 int
-- @param p3 Any
-- @return void
function TaskCombatPedTimed(p0, ped, p2, p3) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_SEEK_COVER_FROM_POS
-- @usage void TASK_SEEK_COVER_FROM_POS(Ped ped, float x, float y, float z, int duration, BOOL p5);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param duration int
-- @param p5 BOOL
-- @return void
function TaskSeekCoverFromPos(ped, x, y, z, duration, p5) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_SEEK_COVER_FROM_PED
-- @usage void TASK_SEEK_COVER_FROM_PED(Ped ped, Ped target, int duration, BOOL p3);
-- @param ped Ped
-- @param target Ped
-- @param duration int
-- @param p3 BOOL
-- @return void
function TaskSeekCoverFromPed(ped, target, duration, p3) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_SEEK_COVER_TO_COVER_POINT
-- @usage void TASK_SEEK_COVER_TO_COVER_POINT(Any p0, Any p1, float p2, float p3, float p4, Any p5, BOOL p6);
-- @param p0 Any
-- @param p1 Any
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 Any
-- @param p6 BOOL
-- @return void
function TaskSeekCoverToCoverPoint(p0, p1, p2, p3, p4, p5, p6) end

-- from michael2: AI::TASK_SEEK_COVER_TO_COORDS(ped, 967.5164794921875, -2121.603515625, 30.479299545288086, 978.94677734375, -2125.84130859375, 29.4752, -1, 1);   appears to be shorter variation from michael3: AI::TASK_SEEK_COVER_TO_COORDS(ped, -2231.011474609375, 263.6326599121094, 173.60195922851562, -1, 0);
-- @module native
-- @submodule ai
-- @see TASK_SEEK_COVER_TO_COORDS
-- @usage void TASK_SEEK_COVER_TO_COORDS(Ped ped, float x1, float y1, float z1, float x2, float y2, float z2, Any p7, BOOL p8);
-- @param ped Ped
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param p7 Any
-- @param p8 BOOL
-- @return void
function TaskSeekCoverToCoords(ped, x1, y1, z1, x2, y2, z2, p7, p8) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_PUT_PED_DIRECTLY_INTO_COVER
-- @usage void TASK_PUT_PED_DIRECTLY_INTO_COVER(Ped ped, float x, float y, float z, Any timeout, BOOL p5, float p6, BOOL p7, BOOL p8, Any p9, BOOL p10);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param timeout Any
-- @param p5 BOOL
-- @param p6 float
-- @param p7 BOOL
-- @param p8 BOOL
-- @param p9 Any
-- @param p10 BOOL
-- @return void
function TaskPutPedDirectlyIntoCover(ped, x, y, z, timeout, p5, p6, p7, p8, p9, p10) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_EXIT_COVER
-- @usage void TASK_EXIT_COVER(Any p0, Any p1, float p2, float p3, float p4);
-- @param p0 Any
-- @param p1 Any
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @return void
function TaskExitCover(p0, p1, p2, p3, p4) end

-- from armenian3.c4  AI::TASK_PUT_PED_DIRECTLY_INTO_MELEE(PlayerPed, armenianPed, 0.0, -1.0, 0.0, 0);
-- @module native
-- @submodule ai
-- @see TASK_PUT_PED_DIRECTLY_INTO_MELEE
-- @usage void TASK_PUT_PED_DIRECTLY_INTO_MELEE(Ped ped, Ped meleeTarget, float p2, float p3, float p4, BOOL p5);
-- @param ped Ped
-- @param meleeTarget Ped
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 BOOL
-- @return void
function TaskPutPedDirectlyIntoMelee(ped, meleeTarget, p2, p3, p4, p5) end

-- used in sequence task  both parameters seems to be always 0
-- @module native
-- @submodule ai
-- @see TASK_TOGGLE_DUCK
-- @usage void TASK_TOGGLE_DUCK(BOOL p0, BOOL p1);
-- @param p0 BOOL
-- @param p1 BOOL
-- @return void
function TaskToggleDuck(p0, p1) end

-- From re_prisonvanbreak:  AI::TASK_GUARD_CURRENT_POSITION(l_DD, 35.0, 35.0, 1);
-- @module native
-- @submodule ai
-- @see TASK_GUARD_CURRENT_POSITION
-- @usage void TASK_GUARD_CURRENT_POSITION(Ped p0, float p1, float p2, BOOL p3);
-- @param p0 Ped
-- @param p1 float
-- @param p2 float
-- @param p3 BOOL
-- @return void
function TaskGuardCurrentPosition(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_GUARD_ASSIGNED_DEFENSIVE_AREA
-- @usage void TASK_GUARD_ASSIGNED_DEFENSIVE_AREA(Any p0, float p1, float p2, float p3, float p4, float p5, Any p6);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 Any
-- @return void
function TaskGuardAssignedDefensiveArea(p0, p1, p2, p3, p4, p5, p6) end

-- p0 - Guessing PedID p1, p2, p3 - XYZ? p4 - ??? p5 - Maybe the size of sphere from XYZ? p6 - ??? p7, p8, p9 - XYZ again? p10 - Maybe the size of sphere from second XYZ?
-- @module native
-- @submodule ai
-- @see TASK_GUARD_SPHERE_DEFENSIVE_AREA
-- @usage void TASK_GUARD_SPHERE_DEFENSIVE_AREA(Ped p0, float p1, float p2, float p3, float p4, float p5, Any p6, float p7, float p8, float p9, float p10);
-- @param p0 Ped
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 Any
-- @param p7 float
-- @param p8 float
-- @param p9 float
-- @param p10 float
-- @return void
function TaskGuardSphereDefensiveArea(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

-- scenarioName example: "WORLD_HUMAN_GUARD_STAND"
-- @module native
-- @submodule ai
-- @see TASK_STAND_GUARD
-- @usage void TASK_STAND_GUARD(Ped ped, float x, float y, float z, float heading, char* scenarioName);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param heading float
-- @param scenarioName char*
-- @return void
function TaskStandGuard(ped, x, y, z, heading, scenarioName) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_DRIVE_TASK_CRUISE_SPEED
-- @usage void SET_DRIVE_TASK_CRUISE_SPEED(Ped driver, float cruiseSpeed);
-- @param driver Ped
-- @param cruiseSpeed float
-- @return void
function SetDriveTaskCruiseSpeed(driver, cruiseSpeed) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_DRIVE_TASK_MAX_CRUISE_SPEED
-- @usage void SET_DRIVE_TASK_MAX_CRUISE_SPEED(Any p0, float p1);
-- @param p0 Any
-- @param p1 float
-- @return void
function SetDriveTaskMaxCruiseSpeed(p0, p1) end

-- This native is used to set the driving style for specific ped.  Driving styles id seems to be: 786468 262144 786469  http://gtaforums.com/topic/822314-guide-driving-styles/
-- @module native
-- @submodule ai
-- @see SET_DRIVE_TASK_DRIVING_STYLE
-- @usage void SET_DRIVE_TASK_DRIVING_STYLE(Ped ped, int drivingStyle);
-- @param ped Ped
-- @param drivingStyle int
-- @return void
function SetDriveTaskDrivingStyle(ped, drivingStyle) end

-- @todo
-- @module native
-- @submodule ai
-- @see ADD_COVER_BLOCKING_AREA
-- @usage void ADD_COVER_BLOCKING_AREA(float playerX, float playerY, float playerZ, float radiusX, float radiusY, float radiusZ, BOOL p6, BOOL p7, BOOL p8, BOOL p9);
-- @param playerX float
-- @param playerY float
-- @param playerZ float
-- @param radiusX float
-- @param radiusY float
-- @param radiusZ float
-- @param p6 BOOL
-- @param p7 BOOL
-- @param p8 BOOL
-- @param p9 BOOL
-- @return void
function AddCoverBlockingArea(playerX, playerY, playerZ, radiusX, radiusY, radiusZ, p6, p7, p8, p9) end

-- @todo
-- @module native
-- @submodule ai
-- @see REMOVE_ALL_COVER_BLOCKING_AREAS
-- @usage void REMOVE_ALL_COVER_BLOCKING_AREAS();
-- @return void
function RemoveAllCoverBlockingAreas() end

-- Plays a scenario on a Ped at their current location.  unkDelay - Usually 0 or -1, doesn't seem to have any effect. Might be a delay between sequences. playEnterAnim - Plays the "Enter" anim if true, otherwise plays the "Exit" anim. Scenarios that don't have any "Enter" anims won't play if this is set to true.  ----  From "am_hold_up.ysc.c4" at line 339:  AI::TASK_START_SCENARIO_IN_PLACE(NETWORK::NET_TO_PED(l_8D._f4), sub_adf(), 0, 1);  I'm unsure of what the last two parameters are, however sub_adf() randomly returns 1 of 3 scenarios, those being: WORLD_HUMAN_SMOKING WORLD_HUMAN_HANG_OUT_STREET WORLD_HUMAN_STAND_MOBILE  This makes sense, as these are what I commonly see when going by a liquor store. ------------------------- List of scenarioNames: pastebin.com/6mrYTdQv (^ Thank you so fucking much for this)  Also these: WORLD_FISH_FLEE DRIVE WORLD_HUMAN_HIKER WORLD_VEHICLE_ATTRACTOR WORLD_VEHICLE_BICYCLE_MOUNTAIN WORLD_VEHICLE_BIKE_OFF_ROAD_RACE WORLD_VEHICLE_BIKER WORLD_VEHICLE_CONSTRUCTION_PASSENGERS WORLD_VEHICLE_CONSTRUCTION_SOLO WORLD_VEHICLE_DRIVE_PASSENGERS WORLD_VEHICLE_DRIVE_SOLO WORLD_VEHICLE_EMPTY WORLD_VEHICLE_PARK_PARALLEL WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN WORLD_VEHICLE_POLICE_BIKE WORLD_VEHICLE_POLICE_CAR WORLD_VEHICLE_POLICE_NEXT_TO_CAR WORLD_VEHICLE_SALTON_DIRT_BIKE WORLD_VEHICLE_TRUCK_LOGS
-- @module native
-- @submodule ai
-- @see TASK_START_SCENARIO_IN_PLACE
-- @usage void TASK_START_SCENARIO_IN_PLACE(Ped ped, char* scenarioName, int unkDelay, BOOL playEnterAnim);
-- @param ped Ped
-- @param scenarioName char*
-- @param unkDelay int
-- @param playEnterAnim BOOL
-- @return void
function TaskStartScenarioInPlace(ped, scenarioName, unkDelay, playEnterAnim) end

-- List of scenarioNames: pastebin.com/6mrYTdQv  Also a few more listed at AI::TASK_START_SCENARIO_IN_PLACE just above. --------------- The first parameter in every scenario has always been a Ped of some sort. The second like TASK_START_SCENARIO_IN_PLACE is the name of the scenario.   The next 4 parameters were harder to decipher. After viewing "hairdo_shop_mp.ysc.c4", and being confused from seeing the case in other scripts, they passed the first three of the arguments as one array from a function, and it looked like it was obviously x, y, and z.  I haven't seen the sixth parameter go to or over 360, making me believe that it is rotation, but I really can't confirm anything.  I have no idea what the last 3 parameters are, but I'll try to find out.  -going on the last 3 parameters, they appear to always be "0, 0, 1"  p6 -1 also used in scrips  p7 used for sitting scenarios  p8 teleports ped to position
-- @module native
-- @submodule ai
-- @see TASK_START_SCENARIO_AT_POSITION
-- @usage void TASK_START_SCENARIO_AT_POSITION(Ped ped, char* scenarioName, float x, float y, float z, float heading, int duration, BOOL sittingScenario, BOOL teleport);
-- @param ped Ped
-- @param scenarioName char*
-- @param x float
-- @param y float
-- @param z float
-- @param heading float
-- @param duration int
-- @param sittingScenario BOOL
-- @param teleport BOOL
-- @return void
function TaskStartScenarioAtPosition(ped, scenarioName, x, y, z, heading, duration, sittingScenario, teleport) end

-- Updated variables  An alternative to AI::TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP. Makes the ped walk to the scenario instead.
-- @module native
-- @submodule ai
-- @see TASK_USE_NEAREST_SCENARIO_TO_COORD
-- @usage void TASK_USE_NEAREST_SCENARIO_TO_COORD(Ped ped, float x, float y, float z, float distance, int duration);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param distance float
-- @param duration int
-- @return void
function TaskUseNearestScenarioToCoord(ped, x, y, z, distance, duration) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP
-- @usage void TASK_USE_NEAREST_SCENARIO_TO_COORD_WARP(Ped ped, float x, float y, float z, float radius, Any p5);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param p5 Any
-- @return void
function TaskUseNearestScenarioToCoordWarp(ped, x, y, z, radius, p5) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD
-- @usage void TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD(Any p0, float p1, float p2, float p3, float p4, Any p5);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 Any
-- @return void
function TaskUseNearestScenarioChainToCoord(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD_WARP
-- @usage void TASK_USE_NEAREST_SCENARIO_CHAIN_TO_COORD_WARP(Any p0, float p1, float p2, float p3, float p4, Any p5);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 Any
-- @return void
function TaskUseNearestScenarioChainToCoordWarp(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule ai
-- @see DOES_SCENARIO_EXIST_IN_AREA
-- @usage BOOL DOES_SCENARIO_EXIST_IN_AREA(float x, float y, float z, float radius, BOOL b);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param b BOOL
-- @return BOOL
function DoesScenarioExistInArea(x, y, z, radius, b) end

-- @todo
-- @module native
-- @submodule ai
-- @see DOES_SCENARIO_OF_TYPE_EXIST_IN_AREA
-- @usage BOOL DOES_SCENARIO_OF_TYPE_EXIST_IN_AREA(float p0, float p1, float p2, Any* p3, float p4, BOOL p5);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 Any*
-- @param p4 float
-- @param p5 BOOL
-- @return BOOL
function DoesScenarioOfTypeExistInArea(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_SCENARIO_OCCUPIED
-- @usage BOOL IS_SCENARIO_OCCUPIED(float p0, float p1, float p2, float p3, BOOL p4);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 BOOL
-- @return BOOL
function IsScenarioOccupied(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule ai
-- @see PED_HAS_USE_SCENARIO_TASK
-- @usage BOOL PED_HAS_USE_SCENARIO_TASK(Ped ped);
-- @param ped Ped
-- @return BOOL
function PedHasUseScenarioTask(ped) end

-- Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule ai
-- @see PLAY_ANIM_ON_RUNNING_SCENARIO
-- @usage void PLAY_ANIM_ON_RUNNING_SCENARIO(Ped ped, char* animDict, char* animName);
-- @param ped Ped
-- @param animDict char*
-- @param animName char*
-- @return void
function PlayAnimOnRunningScenario(ped, animDict, animName) end

-- Occurrences in the b617d scripts:  "ARMY_GUARD", "ARMY_HELI", "Cinema_Downtown", "Cinema_Morningwood", "Cinema_Textile", "City_Banks", "Countryside_Banks", "DEALERSHIP", "GRAPESEED_PLANES", "KORTZ_SECURITY", "LOST_BIKERS", "LSA_Planes", "LSA_Planes", "MP_POLICE", "Observatory_Bikers",  "POLICE_POUND1", "POLICE_POUND2", "POLICE_POUND3", "POLICE_POUND4", "POLICE_POUND5" "QUARRY", "SANDY_PLANES", "SCRAP_SECURITY", "SEW_MACHINE", "SOLOMON_GATE", "Triathlon_1_Start",  "Triathlon_2_Start",  "Triathlon_3_Start"  Sometimes used with IS_SCENARIO_GROUP_ENABLED: if (AI::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") && (!AI::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) { else if (AI::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {
-- @module native
-- @submodule ai
-- @see DOES_SCENARIO_GROUP_EXIST
-- @usage BOOL DOES_SCENARIO_GROUP_EXIST(char* scenarioGroup);
-- @param scenarioGroup char*
-- @return BOOL
function DoesScenarioGroupExist(scenarioGroup) end

-- Occurrences in the b617d scripts:    "ARMY_GUARD",  "ARMY_HELI",  "BLIMP",  "Cinema_Downtown",  "Cinema_Morningwood",  "Cinema_Textile",  "City_Banks",  "Countryside_Banks",  "DEALERSHIP",  "KORTZ_SECURITY",  "LSA_Planes",  "MP_POLICE",  "Observatory_Bikers",  "POLICE_POUND1",  "POLICE_POUND2",  "POLICE_POUND3",  "POLICE_POUND4",  "POLICE_POUND5",  "Rampage1",  "SANDY_PLANES",  "SCRAP_SECURITY",  "SEW_MACHINE",  "SOLOMON_GATE"  Sometimes used with DOES_SCENARIO_GROUP_EXIST: if (AI::DOES_SCENARIO_GROUP_EXIST("Observatory_Bikers") &&   (!AI::IS_SCENARIO_GROUP_ENABLED("Observatory_Bikers"))) { else if (AI::IS_SCENARIO_GROUP_ENABLED("BLIMP")) {
-- @module native
-- @submodule ai
-- @see IS_SCENARIO_GROUP_ENABLED
-- @usage BOOL IS_SCENARIO_GROUP_ENABLED(char* scenarioGroup);
-- @param scenarioGroup char*
-- @return BOOL
function IsScenarioGroupEnabled(scenarioGroup) end

-- Occurrences in the b617d scripts: pastebin.com/Tvg2PRHU
-- @module native
-- @submodule ai
-- @see SET_SCENARIO_GROUP_ENABLED
-- @usage void SET_SCENARIO_GROUP_ENABLED(char* scenarioGroup, BOOL p1);
-- @param scenarioGroup char*
-- @param p1 BOOL
-- @return void
function SetScenarioGroupEnabled(scenarioGroup, p1) end

-- @todo
-- @module native
-- @submodule ai
-- @see RESET_SCENARIO_GROUPS_ENABLED
-- @usage void RESET_SCENARIO_GROUPS_ENABLED();
-- @return void
function ResetScenarioGroupsEnabled() end

-- Groups found in the scripts used with this native:  "AMMUNATION", "QUARRY", "Triathlon_1", "Triathlon_2", "Triathlon_3"
-- @module native
-- @submodule ai
-- @see SET_EXCLUSIVE_SCENARIO_GROUP
-- @usage void SET_EXCLUSIVE_SCENARIO_GROUP(char* scenarioGroup);
-- @param scenarioGroup char*
-- @return void
function SetExclusiveScenarioGroup(scenarioGroup) end

-- @todo
-- @module native
-- @submodule ai
-- @see RESET_EXCLUSIVE_SCENARIO_GROUP
-- @usage void RESET_EXCLUSIVE_SCENARIO_GROUP();
-- @return void
function ResetExclusiveScenarioGroup() end

-- Occurrences in the b617d scripts: "PROP_HUMAN_SEAT_CHAIR", "WORLD_HUMAN_DRINKING", "WORLD_HUMAN_HANG_OUT_STREET", "WORLD_HUMAN_SMOKING", "WORLD_MOUNTAIN_LION_WANDER", "WORLD_HUMAN_DRINKING"  Sometimes used together with GAMEPLAY::IS_STRING_NULL_OR_EMPTY in the scripts.  scenarioType could be the same as scenarioName, used in for example AI::TASK_START_SCENARIO_AT_POSITION.
-- @module native
-- @submodule ai
-- @see IS_SCENARIO_TYPE_ENABLED
-- @usage BOOL IS_SCENARIO_TYPE_ENABLED(char* scenarioType);
-- @param scenarioType char*
-- @return BOOL
function IsScenarioTypeEnabled(scenarioType) end

-- seems to enable/disable specific scenario-types from happening in the game world.  Here are some scenario types from the scripts: "WORLD_MOUNTAIN_LION_REST"                                              "WORLD_MOUNTAIN_LION_WANDER"                                             "DRIVE"                                                                   "WORLD_VEHICLE_POLICE_BIKE"                                              "WORLD_VEHICLE_POLICE_CAR"                                              "WORLD_VEHICLE_POLICE_NEXT_TO_CAR"                                         "WORLD_VEHICLE_DRIVE_SOLO"                                                  "WORLD_VEHICLE_BIKER"                                                       "WORLD_VEHICLE_DRIVE_PASSENGERS"                                            "WORLD_VEHICLE_SALTON_DIRT_BIKE"                                            "WORLD_VEHICLE_BICYCLE_MOUNTAIN"                                            "PROP_HUMAN_SEAT_CHAIR"                                              "WORLD_VEHICLE_ATTRACTOR"                                              "WORLD_HUMAN_LEANING"                                                  "WORLD_HUMAN_HANG_OUT_STREET"                                         "WORLD_HUMAN_DRINKING"                                                 "WORLD_HUMAN_SMOKING"                                                 "WORLD_HUMAN_GUARD_STAND"                                             "WORLD_HUMAN_CLIPBOARD"                                               "WORLD_HUMAN_HIKER"                                                   "WORLD_VEHICLE_EMPTY"                                                       "WORLD_VEHICLE_BIKE_OFF_ROAD_RACE"                                       "WORLD_HUMAN_PAPARAZZI"                                                "WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN"                             "WORLD_VEHICLE_PARK_PARALLEL"                                               "WORLD_VEHICLE_CONSTRUCTION_SOLO"                                "WORLD_VEHICLE_CONSTRUCTION_PASSENGERS"                                                                     "WORLD_VEHICLE_TRUCK_LOGS"  -alphazolam  scenarioType could be the same as scenarioName, used in for example AI::TASK_START_SCENARIO_AT_POSITION.
-- @module native
-- @submodule ai
-- @see SET_SCENARIO_TYPE_ENABLED
-- @usage void SET_SCENARIO_TYPE_ENABLED(char* scenarioType, BOOL toggle);
-- @param scenarioType char*
-- @param toggle BOOL
-- @return void
function SetScenarioTypeEnabled(scenarioType, toggle) end

-- @todo
-- @module native
-- @submodule ai
-- @see RESET_SCENARIO_TYPES_ENABLED
-- @usage void RESET_SCENARIO_TYPES_ENABLED();
-- @return void
function ResetScenarioTypesEnabled() end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_PED_ACTIVE_IN_SCENARIO
-- @usage BOOL IS_PED_ACTIVE_IN_SCENARIO(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedActiveInScenario(ped) end

-- Despite its name, it only attacks ONE hated target. The one closest to the specified position.
-- @module native
-- @submodule ai
-- @see TASK_COMBAT_HATED_TARGETS_IN_AREA
-- @usage void TASK_COMBAT_HATED_TARGETS_IN_AREA(Ped ped, float x, float y, float z, float radius, Any p5);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param p5 Any
-- @return void
function TaskCombatHatedTargetsInArea(ped, x, y, z, radius, p5) end

-- Despite its name, it only attacks ONE hated target. The one closest hated target.  p2 seems to be always 0
-- @module native
-- @submodule ai
-- @see TASK_COMBAT_HATED_TARGETS_AROUND_PED
-- @usage void TASK_COMBAT_HATED_TARGETS_AROUND_PED(Ped ped, float radius, int p2);
-- @param ped Ped
-- @param radius float
-- @param p2 int
-- @return void
function TaskCombatHatedTargetsAroundPed(ped, radius, p2) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_COMBAT_HATED_TARGETS_AROUND_PED_TIMED
-- @usage void TASK_COMBAT_HATED_TARGETS_AROUND_PED_TIMED(Any p0, float p1, Any p2, Any p3);
-- @param p0 Any
-- @param p1 float
-- @param p2 Any
-- @param p3 Any
-- @return void
function TaskCombatHatedTargetsAroundPedTimed(p0, p1, p2, p3) end

-- In every case of this native, I've only seen the first parameter passed as 0, although I believe it's a Ped after seeing tasks around it using 0. That's because it's used in a Sequence Task.  The last 3 parameters are definitely coordinates after seeing them passed in other scripts, and even being used straight from the player's coordinates. --- It seems that - in the decompiled scripts - this native was used on a ped who was in a vehicle to throw a projectile out the window at the player. This is something any ped will naturally do if they have a throwable and they are doing driveby-combat (although not very accurately). It is possible, however, that this is how SWAT throws smoke grenades at the player when in cover. ---------------------------------------------------- The first comment is right it definately is the ped as if you look in script finale_heist2b.c line 59628 in Xbox Scripts atleast you will see task_throw_projectile and the first param is Local_559[2 <14>] if you look above it a little bit line 59622 give_weapon_to_ped uses the same exact param Local_559[2 <14>] and we all know the first param of that native is ped. So it guaranteed has to be ped. 0 just may mean to use your ped by default for some reason.
-- @module native
-- @submodule ai
-- @see TASK_THROW_PROJECTILE
-- @usage void TASK_THROW_PROJECTILE(int ped, float x, float y, float z);
-- @param ped int
-- @param x float
-- @param y float
-- @param z float
-- @return void
function TaskThrowProjectile(ped, x, y, z) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_SWAP_WEAPON
-- @usage void TASK_SWAP_WEAPON(Ped ped, BOOL p1);
-- @param ped Ped
-- @param p1 BOOL
-- @return void
function TaskSwapWeapon(ped, p1) end

-- The 2nd param (unused) is not implemented.  -----------------------------------------------------------------------  The only occurrence I found in a R* script ("assassin_construction.ysc.c4"):              if (((v_3 < v_4) && (AI::GET_SCRIPT_TASK_STATUS(PLAYER::PLAYER_PED_ID(), 0x6a67a5cc) != 1)) && (v_5 > v_3)) {                 AI::TASK_RELOAD_WEAPON(PLAYER::PLAYER_PED_ID(), 1);             }
-- @module native
-- @submodule ai
-- @see TASK_RELOAD_WEAPON
-- @usage void TASK_RELOAD_WEAPON(Ped ped, BOOL unused);
-- @param ped Ped
-- @param unused BOOL
-- @return void
function TaskReloadWeapon(ped, unused) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_PED_GETTING_UP
-- @usage BOOL IS_PED_GETTING_UP(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedGettingUp(ped) end

-- EX: Function.Call(Ped1, Ped2, Time, 0);  The last parameter is always 0 for some reason I do not know. The first parameter is the pedestrian who will writhe to the pedestrian in the other parameter. The third paremeter is how long until the Writhe task ends. When the task ends, the ped will die. If set to -1, he will not die automatically, and the task will continue until something causes it to end. This can be being touched by an entity, being shot, explosion, going into ragdoll, having task cleared. Anything that ends the current task will kill the ped at this point.    MulleDK19: Third parameter does not appear to be time. The last parameter is not implemented (It's not used, regardless of value).
-- @module native
-- @submodule ai
-- @see TASK_WRITHE
-- @usage void TASK_WRITHE(Ped ped, Ped target, int time, int p3);
-- @param ped Ped
-- @param target Ped
-- @param time int
-- @param p3 int
-- @return void
function TaskWrithe(ped, target, time, p3) end

-- returns true is the ped is on the ground whining like a little female dog from a gunshot wound
-- @module native
-- @submodule ai
-- @see IS_PED_IN_WRITHE
-- @usage BOOL IS_PED_IN_WRITHE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInWrithe(ped) end

-- patrolRoutes found in the b617d scripts:  "miss_Ass0",  "miss_Ass1",  "miss_Ass2",  "miss_Ass3",  "miss_Ass4",  "miss_Ass5",  "miss_Ass6",  "MISS_PATROL_6",  "MISS_PATROL_7",  "MISS_PATROL_8",  "MISS_PATROL_9",  "miss_Tower_01",  "miss_Tower_02",  "miss_Tower_03",  "miss_Tower_04",  "miss_Tower_05",  "miss_Tower_06",  "miss_Tower_07",  "miss_Tower_08",  "miss_Tower_10"
-- @module native
-- @submodule ai
-- @see OPEN_PATROL_ROUTE
-- @usage void OPEN_PATROL_ROUTE(char* patrolRoute);
-- @param patrolRoute char*
-- @return void
function OpenPatrolRoute(patrolRoute) end

-- @todo
-- @module native
-- @submodule ai
-- @see CLOSE_PATROL_ROUTE
-- @usage void CLOSE_PATROL_ROUTE();
-- @return void
function ClosePatrolRoute() end

-- Example:  AI::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", -193.4915, -2378.864990234375, 10.9719, -193.4915, -2378.864990234375, 10.9719, 3000);  p0 is between 0 and 4 in the scripts.  p1 is "WORLD_HUMAN_GUARD_STAND" or "StandGuard".  p2, p3 and p4 is only one parameter sometimes in the scripts. Most likely a Vector3 hence p2, p3 and p4 are coordinates.  Examples:  AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_739[7/*3*/], 0.0, 0.0, 0.0, 0);  AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_B0[17/*44*/]._f3, l_B0[17/*44*/]._f3, 2000);  p5, p6 and p7 are for example set to: 1599.0406494140625, 2713.392578125, 44.4309.  p8 is an int, often random set to for example: GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000).
-- @module native
-- @submodule ai
-- @see ADD_PATROL_ROUTE_NODE
-- @usage void ADD_PATROL_ROUTE_NODE(int p0, char* p1, float x1, float y1, float z1, float x2, float y2, float z2, int p8);
-- @param p0 int
-- @param p1 char*
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param p8 int
-- @return void
function AddPatrolRouteNode(p0, p1, x1, y1, z1, x2, y2, z2, p8) end

-- @todo
-- @module native
-- @submodule ai
-- @see ADD_PATROL_ROUTE_LINK
-- @usage void ADD_PATROL_ROUTE_LINK(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return void
function AddPatrolRouteLink(p0, p1) end

-- @todo
-- @module native
-- @submodule ai
-- @see CREATE_PATROL_ROUTE
-- @usage void CREATE_PATROL_ROUTE();
-- @return void
function CreatePatrolRoute() end

-- From the b617d scripts:  AI::DELETE_PATROL_ROUTE("miss_merc0"); AI::DELETE_PATROL_ROUTE("miss_merc1"); AI::DELETE_PATROL_ROUTE("miss_merc2"); AI::DELETE_PATROL_ROUTE("miss_dock");
-- @module native
-- @submodule ai
-- @see DELETE_PATROL_ROUTE
-- @usage void DELETE_PATROL_ROUTE(char* patrolRoute);
-- @param patrolRoute char*
-- @return void
function DeletePatrolRoute(patrolRoute) end

-- After looking at some scripts the second parameter seems to be an id of some kind. Here are some I found from some R* scripts:  "miss_Tower_01" (this went from 01 - 10) "miss_Ass0" (0, 4, 6, 3) "MISS_PATROL_8"  I think they're patrol routes, but I'm not sure. And I believe the 3rd parameter is a BOOL, but I can't confirm other than only seeing 0 and 1 being passed.   As far as I can see the patrol routes names such as "miss_Ass0" have been defined earlier in the scripts. This leads me to believe we can defined our own new patrol routes by following the same approach.  From the scripts      AI::OPEN_PATROL_ROUTE("miss_Ass0");     AI::ADD_PATROL_ROUTE_NODE(0, "WORLD_HUMAN_GUARD_STAND", l_738[0/*3*/], -139.4076690673828, -993.4732055664062, 26.2754, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));     AI::ADD_PATROL_ROUTE_NODE(1, "WORLD_HUMAN_GUARD_STAND", l_738[1/*3*/], -116.1391830444336, -987.4984130859375, 26.38541030883789, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));     AI::ADD_PATROL_ROUTE_NODE(2, "WORLD_HUMAN_GUARD_STAND", l_738[2/*3*/], -128.46847534179688, -979.0340576171875, 26.2754, GAMEPLAY::GET_RANDOM_INT_IN_RANGE(5000, 10000));     AI::ADD_PATROL_ROUTE_LINK(0, 1);     AI::ADD_PATROL_ROUTE_LINK(1, 2);     AI::ADD_PATROL_ROUTE_LINK(2, 0);     AI::CLOSE_PATROL_ROUTE();     AI::CREATE_PATROL_ROUTE();
-- @module native
-- @submodule ai
-- @see TASK_PATROL
-- @usage void TASK_PATROL(Ped ped, char* p1, Any p2, BOOL p3, BOOL p4);
-- @param ped Ped
-- @param p1 char*
-- @param p2 Any
-- @param p3 BOOL
-- @param p4 BOOL
-- @return void
function TaskPatrol(ped, p1, p2, p3, p4) end

-- Makes the ped run to take cover
-- @module native
-- @submodule ai
-- @see TASK_STAY_IN_COVER
-- @usage void TASK_STAY_IN_COVER(Ped ped);
-- @param ped Ped
-- @return void
function TaskStayInCover(ped) end

-- x, y, z: offset in world coords from some entity.
-- @module native
-- @submodule ai
-- @see ADD_VEHICLE_SUBTASK_ATTACK_COORD
-- @usage void ADD_VEHICLE_SUBTASK_ATTACK_COORD(Ped ped, float x, float y, float z);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @return void
function AddVehicleSubtaskAttackCoord(ped, x, y, z) end

-- @todo
-- @module native
-- @submodule ai
-- @see ADD_VEHICLE_SUBTASK_ATTACK_PED
-- @usage void ADD_VEHICLE_SUBTASK_ATTACK_PED(Ped ped, Ped ped2);
-- @param ped Ped
-- @param ped2 Ped
-- @return void
function AddVehicleSubtaskAttackPed(ped, ped2) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_SHOOT_AT_PED
-- @usage void TASK_VEHICLE_SHOOT_AT_PED(Ped ped, Ped target, float p2);
-- @param ped Ped
-- @param target Ped
-- @param p2 float
-- @return void
function TaskVehicleShootAtPed(ped, target, p2) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_AIM_AT_PED
-- @usage void TASK_VEHICLE_AIM_AT_PED(Ped ped, Ped target);
-- @param ped Ped
-- @param target Ped
-- @return void
function TaskVehicleAimAtPed(ped, target) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_SHOOT_AT_COORD
-- @usage void TASK_VEHICLE_SHOOT_AT_COORD(Ped ped, float x, float y, float z, float p4);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param p4 float
-- @return void
function TaskVehicleShootAtCoord(ped, x, y, z, p4) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_AIM_AT_COORD
-- @usage void TASK_VEHICLE_AIM_AT_COORD(Ped ped, float x, float y, float z);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @return void
function TaskVehicleAimAtCoord(ped, x, y, z) end

-- Differs from TASK_VEHICLE_DRIVE_TO_COORDS in that it will pick the shortest possible road route without taking one-way streets and other "road laws" into consideration.  WARNING: A behaviorFlag value of 0 will result in a clunky, stupid driver!  Recommended settings: speed = 30.0f, behaviorFlag = 156,  stoppingRange = 5.0f;  If you simply want to have your driver move to a fixed location, call it only once, or, when necessary in the event of interruption.   If using this to continually follow a Ped who is on foot:  You will need to run this in a tick loop.  Call it in with the Ped's updated coordinates every 20 ticks or so and you will have one hell of a smart, fast-reacting NPC driver -- provided he doesn't get stuck.  If your update frequency is too fast, the Ped may not have enough time to figure his way out of being stuck, and thus, remain stuck.  One way around this would be to implement an "anti-stuck" mechanism, which allows the driver to realize he's stuck, temporarily pause the tick, unstuck, then resume the tick.  EDIT:  This is being discussed in more detail at http://gtaforums.com/topic/818504-any-idea-on-how-to-make-peds-clever-and-insanely-fast-c/
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_GOTO_NAVMESH
-- @usage void TASK_VEHICLE_GOTO_NAVMESH(Ped ped, Vehicle vehicle, float x, float y, float z, float speed, int behaviorFlag, float stoppingRange);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param x float
-- @param y float
-- @param z float
-- @param speed float
-- @param behaviorFlag int
-- @param stoppingRange float
-- @return void
function TaskVehicleGotoNavmesh(ped, vehicle, x, y, z, speed, behaviorFlag, stoppingRange) end

-- movement_speed: mostly 2f, but also 1/1.2f, etc. p8: always false p9: 2f p10: 0.5f p11: true p12: 0 / 512 / 513, etc. p13: 0 firing_pattern: ${firing_pattern_full_auto}, 0xC6EE6B4C
-- @module native
-- @submodule ai
-- @see TASK_GO_TO_COORD_WHILE_AIMING_AT_COORD
-- @usage void TASK_GO_TO_COORD_WHILE_AIMING_AT_COORD(Ped ped, float x, float y, float z, float aimAtX, float aimAtY, float aimAtZ, float moveSpeed, BOOL p8, float p9, float p10, BOOL p11, Any flags, BOOL p13, Hash firingPattern);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param aimAtX float
-- @param aimAtY float
-- @param aimAtZ float
-- @param moveSpeed float
-- @param p8 BOOL
-- @param p9 float
-- @param p10 float
-- @param p11 BOOL
-- @param flags Any
-- @param p13 BOOL
-- @param firingPattern Hash
-- @return void
function TaskGoToCoordWhileAimingAtCoord(ped, x, y, z, aimAtX, aimAtY, aimAtZ, moveSpeed, p8, p9, p10, p11, flags, p13, firingPattern) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY
-- @usage void TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY(Any p0, float p1, float p2, float p3, Any p4, float p5, BOOL p6, float p7, float p8, BOOL p9, Any p10, BOOL p11, Any p12, Any p13);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 Any
-- @param p5 float
-- @param p6 BOOL
-- @param p7 float
-- @param p8 float
-- @param p9 BOOL
-- @param p10 Any
-- @param p11 BOOL
-- @param p12 Any
-- @param p13 Any
-- @return void
function TaskGoToCoordWhileAimingAtEntity(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13) end

-- The ped will walk or run towards goToLocation, aiming towards goToLocation or focusLocation (depending on the aimingFlag) and shooting if shootAtEnemies = true to any enemy in his path.  If the ped is closer than noRoadsDistance, the ped will ignore pathing/navmesh and go towards goToLocation directly. This could cause the ped to get stuck behind tall walls if the goToLocation is on the other side. To avoid this, use 0.0f and the ped will always use pathing/navmesh to reach his destination.  If the speed is set to 0.0f, the ped will just stand there while aiming, if set to 1.0f he will walk while aiming, 2.0f will run while aiming.  The ped will stop aiming when he is closer than distanceToStopAt to goToLocation.  I still can't figure out what unkTrue is used for. I don't notice any difference if I set it to false but in the decompiled scripts is always true.  I think that unkFlag, like the driving styles, could be a flag that "work as a list of 32 bits converted to a decimal integer. Each bit acts as a flag, and enables or disables a function". What leads me to this conclusion is the fact that in the decompiled scripts, unkFlag takes values like: 0, 1, 5 (101 in binary) and 4097 (4096 + 1 or 1000000000001 in binary). For now, I don't know what behavior enable or disable this possible flag so I leave it at 0.  Note: After some testing, using unkFlag = 16 (0x10) enables the use of sidewalks while moving towards goToLocation.  The aimingFlag takes 2 values: 0 to aim at the focusLocation, 1 to aim at where the ped is heading (goToLocation).  Example:  enum AimFlag {    AimAtFocusLocation,    AimAtGoToLocation };  Vector3 goToLocation1 = { 996.2867f, 0, -2143.044f, 0, 28.4763f, 0 }; // remember the padding.  Vector3 goToLocation2 = { 990.2867f, 0, -2140.044f, 0, 28.4763f, 0 }; // remember the padding.  Vector3 focusLocation = { 994.3478f, 0, -2136.118f, 0, 29.2463f, 0 }; // the coord z should be a little higher, around +1.0f to avoid aiming at the ground  // 1st example AI::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation1.x, goToLocation1.y, goToLocation1.z, focusLocation.x, focusLocation.y, focusLocation.z, 2.0f /*run*/, true /*shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtGoToLocation, -957453492 /*FullAuto pattern*/);  // 2nd example AI::TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(pedHandle, goToLocation2.x, goToLocation2.y, goToLocation2.z, focusLocation.x, focusLocation.y, focusLocation.z, 1.0f /*walk*/, false /*don't shoot*/, 3.0f /*stop at*/, 0.0f /*noRoadsDistance*/, true /*always true*/, 0 /*possible flag*/, AimFlag::AimAtFocusLocation, -957453492 /*FullAuto pattern*/);   1st example: The ped (pedhandle) will run towards goToLocation1. While running and aiming towards goToLocation1, the ped will shoot on sight to any enemy in his path, using "FullAuto" firing pattern. The ped will stop once he is closer than distanceToStopAt to goToLocation1.  2nd example: The ped will walk towards goToLocation2. This time, while walking towards goToLocation2 and aiming at focusLocation, the ped will point his weapon on sight to any enemy in his path without shooting. The ped will stop once he is closer than distanceToStopAt to goToLocation2.
-- @module native
-- @submodule ai
-- @see TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD
-- @usage void TASK_GO_TO_COORD_AND_AIM_AT_HATED_ENTITIES_NEAR_COORD(Ped pedHandle, float goToLocationX, float goToLocationY, float goToLocationZ, float focusLocationX, float focusLocationY, float focusLocationZ, float speed, BOOL shootAtEnemies, float distanceToStopAt, float noRoadsDistance, BOOL unkTrue, int unkFlag, int aimingFlag, Hash firingPattern);
-- @param pedHandle Ped
-- @param goToLocationX float
-- @param goToLocationY float
-- @param goToLocationZ float
-- @param focusLocationX float
-- @param focusLocationY float
-- @param focusLocationZ float
-- @param speed float
-- @param shootAtEnemies BOOL
-- @param distanceToStopAt float
-- @param noRoadsDistance float
-- @param unkTrue BOOL
-- @param unkFlag int
-- @param aimingFlag int
-- @param firingPattern Hash
-- @return void
function TaskGoToCoordAndAimAtHatedEntitiesNearCoord(pedHandle, goToLocationX, goToLocationY, goToLocationZ, focusLocationX, focusLocationY, focusLocationZ, speed, shootAtEnemies, distanceToStopAt, noRoadsDistance, unkTrue, unkFlag, aimingFlag, firingPattern) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_GO_TO_ENTITY_WHILE_AIMING_AT_COORD
-- @usage void TASK_GO_TO_ENTITY_WHILE_AIMING_AT_COORD(Any p0, Any p1, float p2, float p3, float p4, float p5, BOOL p6, float p7, float p8, BOOL p9, BOOL p10, Any p11);
-- @param p0 Any
-- @param p1 Any
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 BOOL
-- @param p7 float
-- @param p8 float
-- @param p9 BOOL
-- @param p10 BOOL
-- @param p11 Any
-- @return void
function TaskGoToEntityWhileAimingAtCoord(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11) end

-- shootatEntity: If true, peds will shoot at Entity till it is dead. If false, peds will just walk till they reach the entity and will cease shooting.
-- @module native
-- @submodule ai
-- @see TASK_GO_TO_ENTITY_WHILE_AIMING_AT_ENTITY
-- @usage void TASK_GO_TO_ENTITY_WHILE_AIMING_AT_ENTITY(Ped ped, Entity entityToWalkTo, Entity entityToAimAt, float speed, BOOL shootatEntity, float p5, float p6, BOOL p7, BOOL p8, Hash firingPattern);
-- @param ped Ped
-- @param entityToWalkTo Entity
-- @param entityToAimAt Entity
-- @param speed float
-- @param shootatEntity BOOL
-- @param p5 float
-- @param p6 float
-- @param p7 BOOL
-- @param p8 BOOL
-- @param firingPattern Hash
-- @return void
function TaskGoToEntityWhileAimingAtEntity(ped, entityToWalkTo, entityToAimAt, speed, shootatEntity, p5, p6, p7, p8, firingPattern) end

-- Makes the ped ragdoll like when falling from a great height
-- @module native
-- @submodule ai
-- @see SET_HIGH_FALL_TASK
-- @usage void SET_HIGH_FALL_TASK(Ped ped, Any p1, Any p2, Any p3);
-- @param ped Ped
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @return void
function SetHighFallTask(ped, p1, p2, p3) end

-- For a full list, see here: pastebin.com/Tp0XpBMN For a full list of the points, see here: goo.gl/wIH0vn  Max number of loaded recordings is 32.
-- @module native
-- @submodule ai
-- @see REQUEST_WAYPOINT_RECORDING
-- @usage void REQUEST_WAYPOINT_RECORDING(char* name);
-- @param name char*
-- @return void
function RequestWaypointRecording(name) end

-- For a full list, see here: pastebin.com/Tp0XpBMN
-- @module native
-- @submodule ai
-- @see GET_IS_WAYPOINT_RECORDING_LOADED
-- @usage BOOL GET_IS_WAYPOINT_RECORDING_LOADED(char* name);
-- @param name char*
-- @return BOOL
function GetIsWaypointRecordingLoaded(name) end

-- For a full list, see here: pastebin.com/Tp0XpBMN
-- @module native
-- @submodule ai
-- @see REMOVE_WAYPOINT_RECORDING
-- @usage void REMOVE_WAYPOINT_RECORDING(char* name);
-- @param name char*
-- @return void
function RemoveWaypointRecording(name) end

-- For a full list, see here: pastebin.com/Tp0XpBMN For a full list of the points, see here: goo.gl/wIH0vn
-- @module native
-- @submodule ai
-- @see WAYPOINT_RECORDING_GET_NUM_POINTS
-- @usage BOOL WAYPOINT_RECORDING_GET_NUM_POINTS(char* name, int* points);
-- @param name char*
-- @param points int*
-- @return BOOL
function WaypointRecordingGetNumPoints(name, points) end

-- For a full list, see here: pastebin.com/Tp0XpBMN For a full list of the points, see here: goo.gl/wIH0vn
-- @module native
-- @submodule ai
-- @see WAYPOINT_RECORDING_GET_COORD
-- @usage BOOL WAYPOINT_RECORDING_GET_COORD(char* name, int point, Vector3* coord);
-- @param name char*
-- @param point int
-- @param coord Vector3*
-- @return BOOL
function WaypointRecordingGetCoord(name, point, coord) end

-- @todo
-- @module native
-- @submodule ai
-- @see WAYPOINT_RECORDING_GET_SPEED_AT_POINT
-- @usage float WAYPOINT_RECORDING_GET_SPEED_AT_POINT(char* name, int point);
-- @param name char*
-- @param point int
-- @return float
function WaypointRecordingGetSpeedAtPoint(name, point) end

-- For a full list, see here: pastebin.com/Tp0XpBMN For a full list of the points, see here: goo.gl/wIH0vn
-- @module native
-- @submodule ai
-- @see WAYPOINT_RECORDING_GET_CLOSEST_WAYPOINT
-- @usage BOOL WAYPOINT_RECORDING_GET_CLOSEST_WAYPOINT(char* name, float x, float y, float z, int* point);
-- @param name char*
-- @param x float
-- @param y float
-- @param z float
-- @param point int*
-- @return BOOL
function WaypointRecordingGetClosestWaypoint(name, x, y, z, point) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_FOLLOW_WAYPOINT_RECORDING
-- @usage void TASK_FOLLOW_WAYPOINT_RECORDING(Any p0, Any p1, Any p2, Any p3, Any p4);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @return void
function TaskFollowWaypointRecording(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_PED
-- @usage BOOL IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_PED(Any p0);
-- @param p0 Any
-- @return BOOL
function IsWaypointPlaybackGoingOnForPed(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_PED_WAYPOINT_PROGRESS
-- @usage Any GET_PED_WAYPOINT_PROGRESS(Any p0);
-- @param p0 Any
-- @return Any
function GetPedWaypointProgress(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_PED_WAYPOINT_DISTANCE
-- @usage float GET_PED_WAYPOINT_DISTANCE(Any p0);
-- @param p0 Any
-- @return float
function GetPedWaypointDistance(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see SET_PED_WAYPOINT_ROUTE_OFFSET
-- @usage Any SET_PED_WAYPOINT_ROUTE_OFFSET(Any p0, Any p1, Any p2, Any p3);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @return Any
function SetPedWaypointRouteOffset(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_WAYPOINT_DISTANCE_ALONG_ROUTE
-- @usage float GET_WAYPOINT_DISTANCE_ALONG_ROUTE(char* p0, int p1);
-- @param p0 char*
-- @param p1 int
-- @return float
function GetWaypointDistanceAlongRoute(p0, p1) end

-- @todo
-- @module native
-- @submodule ai
-- @see WAYPOINT_PLAYBACK_GET_IS_PAUSED
-- @usage BOOL WAYPOINT_PLAYBACK_GET_IS_PAUSED(Any p0);
-- @param p0 Any
-- @return BOOL
function WaypointPlaybackGetIsPaused(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see WAYPOINT_PLAYBACK_PAUSE
-- @usage void WAYPOINT_PLAYBACK_PAUSE(Any p0, BOOL p1, BOOL p2);
-- @param p0 Any
-- @param p1 BOOL
-- @param p2 BOOL
-- @return void
function WaypointPlaybackPause(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule ai
-- @see WAYPOINT_PLAYBACK_RESUME
-- @usage void WAYPOINT_PLAYBACK_RESUME(Any p0, BOOL p1, Any p2, Any p3);
-- @param p0 Any
-- @param p1 BOOL
-- @param p2 Any
-- @param p3 Any
-- @return void
function WaypointPlaybackResume(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule ai
-- @see WAYPOINT_PLAYBACK_OVERRIDE_SPEED
-- @usage void WAYPOINT_PLAYBACK_OVERRIDE_SPEED(Any p0, float p1, BOOL p2);
-- @param p0 Any
-- @param p1 float
-- @param p2 BOOL
-- @return void
function WaypointPlaybackOverrideSpeed(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule ai
-- @see WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED
-- @usage void WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED(Any p0);
-- @param p0 Any
-- @return void
function WaypointPlaybackUseDefaultSpeed(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see USE_WAYPOINT_RECORDING_AS_ASSISTED_MOVEMENT_ROUTE
-- @usage void USE_WAYPOINT_RECORDING_AS_ASSISTED_MOVEMENT_ROUTE(Any* p0, BOOL p1, float p2, float p3);
-- @param p0 Any*
-- @param p1 BOOL
-- @param p2 float
-- @param p3 float
-- @return void
function UseWaypointRecordingAsAssistedMovementRoute(p0, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule ai
-- @see WAYPOINT_PLAYBACK_START_AIMING_AT_PED
-- @usage void WAYPOINT_PLAYBACK_START_AIMING_AT_PED(Any p0, Any p1, BOOL p2);
-- @param p0 Any
-- @param p1 Any
-- @param p2 BOOL
-- @return void
function WaypointPlaybackStartAimingAtPed(p0, p1, p2) end

-- @todo
-- @module native
-- @submodule ai
-- @see WAYPOINT_PLAYBACK_START_AIMING_AT_COORD
-- @usage void WAYPOINT_PLAYBACK_START_AIMING_AT_COORD(Any p0, float p1, float p2, float p3, BOOL p4);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 BOOL
-- @return void
function WaypointPlaybackStartAimingAtCoord(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule ai
-- @see WAYPOINT_PLAYBACK_START_SHOOTING_AT_COORD
-- @usage void WAYPOINT_PLAYBACK_START_SHOOTING_AT_COORD(Any p0, float p1, float p2, float p3, BOOL p4, Any p5);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 BOOL
-- @param p5 Any
-- @return void
function WaypointPlaybackStartShootingAtCoord(p0, p1, p2, p3, p4, p5) end

-- @todo
-- @module native
-- @submodule ai
-- @see WAYPOINT_PLAYBACK_STOP_AIMING_OR_SHOOTING
-- @usage void WAYPOINT_PLAYBACK_STOP_AIMING_OR_SHOOTING(Any p0);
-- @param p0 Any
-- @return void
function WaypointPlaybackStopAimingOrShooting(p0) end

-- Routes: "1_FIBStairs", "2_FIBStairs", "3_FIBStairs", "4_FIBStairs", "5_FIBStairs", "5_TowardsFire", "6a_FIBStairs", "7_FIBStairs", "8_FIBStairs", "Aprtmnt_1", "AssAfterLift", "ATM_1", "coroner2", "coroner_stairs", "f5_jimmy1", "fame1", "family5b", "family5c", "Family5d", "family5d", "FIB_Glass1", "FIB_Glass2", "FIB_Glass3", "finaBroute1A", "finalb1st", "finalB1sta", "finalbround", "finalbroute2", "Hairdresser1", "jan_foyet_ft_door", "Jo_3", "Lemar1", "Lemar2", "mansion_1", "Mansion_1", "pols_1", "pols_2", "pols_3", "pols_4", "pols_5", "pols_6", "pols_7", "pols_8", "Pro_S1", "Pro_S1a", "Pro_S2", "Towards_case", "trev_steps", "tunrs1", "tunrs2", "tunrs3", "Wave01457s"
-- @module native
-- @submodule ai
-- @see ASSISTED_MOVEMENT_REQUEST_ROUTE
-- @usage void ASSISTED_MOVEMENT_REQUEST_ROUTE(char* route);
-- @param route char*
-- @return void
function AssistedMovementRequestRoute(route) end

-- @todo
-- @module native
-- @submodule ai
-- @see ASSISTED_MOVEMENT_REMOVE_ROUTE
-- @usage void ASSISTED_MOVEMENT_REMOVE_ROUTE(char* route);
-- @param route char*
-- @return void
function AssistedMovementRemoveRoute(route) end

-- @todo
-- @module native
-- @submodule ai
-- @see ASSISTED_MOVEMENT_IS_ROUTE_LOADED
-- @usage BOOL ASSISTED_MOVEMENT_IS_ROUTE_LOADED(char* route);
-- @param route char*
-- @return BOOL
function AssistedMovementIsRouteLoaded(route) end

-- @todo
-- @module native
-- @submodule ai
-- @see ASSISTED_MOVEMENT_SET_ROUTE_PROPERTIES
-- @usage void ASSISTED_MOVEMENT_SET_ROUTE_PROPERTIES(char* route, int props);
-- @param route char*
-- @param props int
-- @return void
function AssistedMovementSetRouteProperties(route, props) end

-- @todo
-- @module native
-- @submodule ai
-- @see ASSISTED_MOVEMENT_OVERRIDE_LOAD_DISTANCE_THIS_FRAME
-- @usage void ASSISTED_MOVEMENT_OVERRIDE_LOAD_DISTANCE_THIS_FRAME(float dist);
-- @param dist float
-- @return void
function AssistedMovementOverrideLoadDistanceThisFrame(dist) end

-- task_vehicle_follow_waypoint_recording(Ped p0, Vehicle p1, string p2, int p3, int p4, int p5, int p6, float.x p7, float.Y p8, float.Z p9, bool p10, int p11)  p2 = Waypoint recording string (found in update\update.rpf\x64\levels\gta5\waypointrec.rpf p3 = 786468 p4 = 0 p5 = 16 p6 = -1 (angle?) p7/8/9 = usually v3.zero p10 = bool (repeat?) p11 = 1073741824
-- @module native
-- @submodule ai
-- @see TASK_VEHICLE_FOLLOW_WAYPOINT_RECORDING
-- @usage void TASK_VEHICLE_FOLLOW_WAYPOINT_RECORDING(Ped ped, Vehicle vehicle, char* WPRecording, int p3, int p4, int p5, int p6, float p7, BOOL p8, float p9);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param WPRecording char*
-- @param p3 int
-- @param p4 int
-- @param p5 int
-- @param p6 int
-- @param p7 float
-- @param p8 BOOL
-- @param p9 float
-- @return void
function TaskVehicleFollowWaypointRecording(ped, vehicle, WPRecording, p3, p4, p5, p6, p7, p8, p9) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_VEHICLE
-- @usage BOOL IS_WAYPOINT_PLAYBACK_GOING_ON_FOR_VEHICLE(Any p0);
-- @param p0 Any
-- @return BOOL
function IsWaypointPlaybackGoingOnForVehicle(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_VEHICLE_WAYPOINT_PROGRESS
-- @usage Any GET_VEHICLE_WAYPOINT_PROGRESS(Any p0);
-- @param p0 Any
-- @return Any
function GetVehicleWaypointProgress(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see GET_VEHICLE_WAYPOINT_TARGET_POINT
-- @usage Any GET_VEHICLE_WAYPOINT_TARGET_POINT(Any p0);
-- @param p0 Any
-- @return Any
function GetVehicleWaypointTargetPoint(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see VEHICLE_WAYPOINT_PLAYBACK_PAUSE
-- @usage void VEHICLE_WAYPOINT_PLAYBACK_PAUSE(Any p0);
-- @param p0 Any
-- @return void
function VehicleWaypointPlaybackPause(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see VEHICLE_WAYPOINT_PLAYBACK_RESUME
-- @usage void VEHICLE_WAYPOINT_PLAYBACK_RESUME(Any p0);
-- @param p0 Any
-- @return void
function VehicleWaypointPlaybackResume(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see VEHICLE_WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED
-- @usage void VEHICLE_WAYPOINT_PLAYBACK_USE_DEFAULT_SPEED(Any p0);
-- @param p0 Any
-- @return void
function VehicleWaypointPlaybackUseDefaultSpeed(p0) end

-- @todo
-- @module native
-- @submodule ai
-- @see VEHICLE_WAYPOINT_PLAYBACK_OVERRIDE_SPEED
-- @usage void VEHICLE_WAYPOINT_PLAYBACK_OVERRIDE_SPEED(Any p0, float p1);
-- @param p0 Any
-- @param p1 float
-- @return void
function VehicleWaypointPlaybackOverrideSpeed(p0, p1) end

-- I cant believe I have to define this, this is one of the best natives.  It makes the ped ignore basically all shocking events around it. Occasionally the ped may comment or gesture, but other than that they just continue their daily activities. This includes shooting and wounding the ped. And - most importantly - they do not flee.  Since it is a task, every time the native is called the ped will stop for a moment.
-- @module native
-- @submodule ai
-- @see TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS
-- @usage void TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function TaskSetBlockingOfNonTemporaryEvents(ped, toggle) end

-- p2 always false  [30/03/2017] ins1de :  See dev-c.com/nativedb/func/info/f28965d04f570dca
-- @module native
-- @submodule ai
-- @see TASK_FORCE_MOTION_STATE
-- @usage void TASK_FORCE_MOTION_STATE(Ped ped, Hash state, BOOL p2);
-- @param ped Ped
-- @param state Hash
-- @param p2 BOOL
-- @return void
function TaskForceMotionState(ped, state, p2) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_MOVE_BLEND_RATIO_STILL
-- @usage BOOL IS_MOVE_BLEND_RATIO_STILL(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsMoveBlendRatioStill(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_MOVE_BLEND_RATIO_WALKING
-- @usage BOOL IS_MOVE_BLEND_RATIO_WALKING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsMoveBlendRatioWalking(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_MOVE_BLEND_RATIO_RUNNING
-- @usage BOOL IS_MOVE_BLEND_RATIO_RUNNING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsMoveBlendRatioRunning(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_MOVE_BLEND_RATIO_SPRINTING
-- @usage BOOL IS_MOVE_BLEND_RATIO_SPRINTING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsMoveBlendRatioSprinting(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_PED_STILL
-- @usage BOOL IS_PED_STILL(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedStill(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_PED_WALKING
-- @usage BOOL IS_PED_WALKING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedWalking(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_PED_RUNNING
-- @usage BOOL IS_PED_RUNNING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedRunning(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_PED_SPRINTING
-- @usage BOOL IS_PED_SPRINTING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedSprinting(ped) end

-- What's strafing?
-- @module native
-- @submodule ai
-- @see IS_PED_STRAFING
-- @usage BOOL IS_PED_STRAFING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedStrafing(ped) end

-- AI::TASK_SYNCHRONIZED_SCENE(ped, scene, "creatures@rottweiler@in_vehicle@std_car", "get_in", 1000.0, -8.0, 4, 0, 0x447a0000, 0);  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule ai
-- @see TASK_SYNCHRONIZED_SCENE
-- @usage void TASK_SYNCHRONIZED_SCENE(Ped ped, int scene, char* animDictionary, char* animationName, float speed, float speedMultiplier, int duration, int flag, float playbackRate, Any p9);
-- @param ped Ped
-- @param scene int
-- @param animDictionary char*
-- @param animationName char*
-- @param speed float
-- @param speedMultiplier float
-- @param duration int
-- @param flag int
-- @param playbackRate float
-- @param p9 Any
-- @return void
function TaskSynchronizedScene(ped, scene, animDictionary, animationName, speed, speedMultiplier, duration, flag, playbackRate, p9) end

-- This function is called on peds in vehicles.  anim: animation name p2, p3, p4: "sweep_low", "sweep_med" or "sweep_high" p5: no idea what it does but is usually -1
-- @module native
-- @submodule ai
-- @see TASK_SWEEP_AIM_ENTITY
-- @usage void TASK_SWEEP_AIM_ENTITY(Ped ped, char* anim, char* p2, char* p3, char* p4, int p5, Vehicle vehicle, float p7, float p8);
-- @param ped Ped
-- @param anim char*
-- @param p2 char*
-- @param p3 char*
-- @param p4 char*
-- @param p5 int
-- @param vehicle Vehicle
-- @param p7 float
-- @param p8 float
-- @return void
function TaskSweepAimEntity(ped, anim, p2, p3, p4, p5, vehicle, p7, p8) end

-- @todo
-- @module native
-- @submodule ai
-- @see UPDATE_TASK_SWEEP_AIM_ENTITY
-- @usage void UPDATE_TASK_SWEEP_AIM_ENTITY(Ped ped, Entity entity);
-- @param ped Ped
-- @param entity Entity
-- @return void
function UpdateTaskSweepAimEntity(ped, entity) end

-- @todo
-- @module native
-- @submodule ai
-- @see TASK_SWEEP_AIM_POSITION
-- @usage void TASK_SWEEP_AIM_POSITION(Any p0, Any* p1, Any* p2, Any* p3, Any* p4, Any p5, float p6, float p7, float p8, float p9, float p10);
-- @param p0 Any
-- @param p1 Any*
-- @param p2 Any*
-- @param p3 Any*
-- @param p4 Any*
-- @param p5 Any
-- @param p6 float
-- @param p7 float
-- @param p8 float
-- @param p9 float
-- @param p10 float
-- @return void
function TaskSweepAimPosition(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

-- @todo
-- @module native
-- @submodule ai
-- @see UPDATE_TASK_SWEEP_AIM_POSITION
-- @usage void UPDATE_TASK_SWEEP_AIM_POSITION(Any p0, float p1, float p2, float p3);
-- @param p0 Any
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @return void
function UpdateTaskSweepAimPosition(p0, p1, p2, p3) end

-- Example from "me_amanda1.ysc.c4": AI::TASK_ARREST_PED(l_19F /* This is a Ped */ , PLAYER::PLAYER_PED_ID());  Example from "armenian1.ysc.c4": if (!PED::IS_PED_INJURED(l_B18[0/*1*/])) {     AI::TASK_ARREST_PED(l_B18[0/*1*/], PLAYER::PLAYER_PED_ID()); }  I would love to have time to experiment to see if a player Ped can arrest another Ped. Might make for a good cop mod.   Looks like only the player can be arrested this way. Peds react and try to arrest you if you task them, but the player charater doesn't do anything if tasked to arrest another ped.
-- @module native
-- @submodule ai
-- @see TASK_ARREST_PED
-- @usage void TASK_ARREST_PED(Ped ped, Ped target);
-- @param ped Ped
-- @param target Ped
-- @return void
function TaskArrestPed(ped, target) end

-- @todo
-- @module native
-- @submodule ai
-- @see IS_PED_RUNNING_ARREST_TASK
-- @usage BOOL IS_PED_RUNNING_ARREST_TASK(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedRunningArrestTask(ped) end

-- This function is hard-coded to always return 0.
-- @module native
-- @submodule ai
-- @see IS_PED_BEING_ARRESTED
-- @usage BOOL IS_PED_BEING_ARRESTED(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedBeingArrested(ped) end

-- @todo
-- @module native
-- @submodule ai
-- @see UNCUFF_PED
-- @usage void UNCUFF_PED(Ped ped);
-- @param ped Ped
-- @return void
function UncuffPed(ped) end

-- l
-- @module native
-- @submodule ai
-- @see IS_PED_CUFFED
-- @usage BOOL IS_PED_CUFFED(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedCuffed(ped) end