-- p7 - last parameter does not mean ped handle is returned maybe a quick view in disassembly will tell us what is actually does   *Heading*: 0.0 *Heading* is the Z axis spawn rotation of the ped 0->5th parameter.  Ped Types: [Player,1|Male,4|Female,5|Cop,6|Human,26|SWAT,27|Animal,28|Army,29] You can also use GET_PED_TYPE
-- @module native
-- @submodule ped
-- @see CREATE_PED
-- @usage Ped CREATE_PED(int pedType, Hash modelHash, float x, float y, float z, float heading, BOOL isNetwork, BOOL p7);
-- @param pedType int
-- @param modelHash Hash
-- @param x float
-- @param y float
-- @param z float
-- @param heading float
-- @param isNetwork BOOL
-- @param p7 BOOL
-- @return Ped
function CreatePed(pedType, modelHash, x, y, z, heading, isNetwork, p7) end

-- Deletes the specified ped, then sets the handle pointed to by the pointer to NULL.
-- @module native
-- @submodule ped
-- @see DELETE_PED
-- @usage void DELETE_PED(Ped* ped);
-- @param ped Ped*
-- @return void
function DeletePed(ped) end

-- p3 - last parameter does not mean ped handle is returned maybe a quick view in disassembly will tell us what is actually does   Example of Cloning Your Player: CLONE_PED(PLAYER_PED_ID(), GET_ENTITY_HEADING(PLAYER_PED_ID()), 0, 1);
-- @module native
-- @submodule ped
-- @see CLONE_PED
-- @usage Ped CLONE_PED(Ped ped, float heading, BOOL isNetwork, BOOL p3);
-- @param ped Ped
-- @param heading float
-- @param isNetwork BOOL
-- @param p3 BOOL
-- @return Ped
function ClonePed(ped, heading, isNetwork, p3) end

-- What exactly is the difference? What does this exactly do by chance?
-- @module native
-- @submodule ped
-- @see CLONE_PED_TO_TARGET
-- @usage void CLONE_PED_TO_TARGET(Ped ped, Ped targetPed);
-- @param ped Ped
-- @param targetPed Ped
-- @return void
function ClonePedToTarget(ped, targetPed) end

-- Gets a value indicating whether the specified ped is in the specified vehicle.  If 'atGetIn' is false, the function will not return true until the ped is sitting in the vehicle and is about to close the door. If it's true, the function returns true the moment the ped starts to get onto the seat (after opening the door). Eg. if false, and the ped is getting into a submersible, the function will not return true until the ped has descended down into the submersible and gotten into the seat, while if it's true, it'll return true the moment the hatch has been opened and the ped is about to descend into the submersible.
-- @module native
-- @submodule ped
-- @see IS_PED_IN_VEHICLE
-- @usage BOOL IS_PED_IN_VEHICLE(Ped ped, Vehicle vehicle, BOOL atGetIn);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param atGetIn BOOL
-- @return BOOL
function IsPedInVehicle(ped, vehicle, atGetIn) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_MODEL
-- @usage BOOL IS_PED_IN_MODEL(Ped ped, Hash modelHash);
-- @param ped Ped
-- @param modelHash Hash
-- @return BOOL
function IsPedInModel(ped, modelHash) end

-- Gets a value indicating whether the specified ped is in any vehicle.  If 'atGetIn' is false, the function will not return true until the ped is sitting in the vehicle and is about to close the door. If it's true, the function returns true the moment the ped starts to get onto the seat (after opening the door). Eg. if false, and the ped is getting into a submersible, the function will not return true until the ped has descended down into the submersible and gotten into the seat, while if it's true, it'll return true the moment the hatch has been opened and the ped is about to descend into the submersible.
-- @module native
-- @submodule ped
-- @see IS_PED_IN_ANY_VEHICLE
-- @usage BOOL IS_PED_IN_ANY_VEHICLE(Ped ped, BOOL atGetIn);
-- @param ped Ped
-- @param atGetIn BOOL
-- @return BOOL
function IsPedInAnyVehicle(ped, atGetIn) end

-- xyz - relative to the world origin.
-- @module native
-- @submodule ped
-- @see IS_COP_PED_IN_AREA_3D
-- @usage BOOL IS_COP_PED_IN_AREA_3D(float x1, float y1, float z1, float x2, float y2, float z2);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @return BOOL
function IsCopPedInArea_3d(x1, y1, z1, x2, y2, z2) end

-- Gets a value indicating whether this ped's health is below its injured threshold.  The default threshold is 100.
-- @module native
-- @submodule ped
-- @see IS_PED_INJURED
-- @usage BOOL IS_PED_INJURED(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInjured(ped) end

-- Returns whether the specified ped is hurt.
-- @module native
-- @submodule ped
-- @see IS_PED_HURT
-- @usage BOOL IS_PED_HURT(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedHurt(ped) end

-- Gets a value indicating whether this ped's health is below its fatally injured threshold. The default threshold is 100. If the handle is invalid, the function returns true.
-- @module native
-- @submodule ped
-- @see IS_PED_FATALLY_INJURED
-- @usage BOOL IS_PED_FATALLY_INJURED(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedFatallyInjured(ped) end

-- Seems to consistently return true if the ped is dead.  p1 is always passed 1 in the scripts.  I suggest to remove "OR_DYING" part, because it does not detect dying phase.  That's what the devs call it, cry about it.  lol
-- @module native
-- @submodule ped
-- @see IS_PED_DEAD_OR_DYING
-- @usage BOOL IS_PED_DEAD_OR_DYING(Ped ped, BOOL p1);
-- @param ped Ped
-- @param p1 BOOL
-- @return BOOL
function IsPedDeadOrDying(ped, p1) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_CONVERSATION_PED_DEAD
-- @usage BOOL IS_CONVERSATION_PED_DEAD(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsConversationPedDead(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_AIMING_FROM_COVER
-- @usage BOOL IS_PED_AIMING_FROM_COVER(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedAimingFromCover(ped) end

-- Returns whether the specified ped is reloading.
-- @module native
-- @submodule ped
-- @see IS_PED_RELOADING
-- @usage BOOL IS_PED_RELOADING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedReloading(ped) end

-- Returns true if the given ped has a valid pointer to CPlayerInfo in its CPed class. That's all.
-- @module native
-- @submodule ped
-- @see IS_PED_A_PLAYER
-- @usage BOOL IS_PED_A_PLAYER(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedAPlayer(ped) end

-- p5 - last parameter does not mean ped handle is returned maybe a quick view in disassembly will tell us what is actually does   Ped Types: Player = 1 Male = 4  Female = 5  Cop = 6 Taxi Driver = 25 (sfink) Human = 26 SWAT = 27  Animal = 28 Army = 29
-- @module native
-- @submodule ped
-- @see CREATE_PED_INSIDE_VEHICLE
-- @usage Ped CREATE_PED_INSIDE_VEHICLE(Vehicle vehicle, int pedType, Hash modelHash, int seat, BOOL isNetwork, BOOL p5);
-- @param vehicle Vehicle
-- @param pedType int
-- @param modelHash Hash
-- @param seat int
-- @param isNetwork BOOL
-- @param p5 BOOL
-- @return Ped
function CreatePedInsideVehicle(vehicle, pedType, modelHash, seat, isNetwork, p5) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_DESIRED_HEADING
-- @usage void SET_PED_DESIRED_HEADING(Ped ped, float heading);
-- @param ped Ped
-- @param heading float
-- @return void
function SetPedDesiredHeading(ped, heading) end

-- angle is ped's view cone
-- @module native
-- @submodule ped
-- @see IS_PED_FACING_PED
-- @usage BOOL IS_PED_FACING_PED(Ped ped, Ped otherPed, float angle);
-- @param ped Ped
-- @param otherPed Ped
-- @param angle float
-- @return BOOL
function IsPedFacingPed(ped, otherPed, angle) end

-- Notes: The function only returns true while the ped is:  A.) Swinging a random melee attack (including pistol-whipping)  B.) Reacting to being hit by a melee attack (including pistol-whipping)  C.) Is locked-on to an enemy (arms up, strafing/skipping in the default fighting-stance, ready to dodge+counter).   You don't have to be holding the melee-targetting button to be in this stance; you stay in it by default for a few seconds after swinging at someone. If you do a sprinting punch, it returns true for the duration of the punch animation and then returns false again, even if you've punched and made-angry many peds
-- @module native
-- @submodule ped
-- @see IS_PED_IN_MELEE_COMBAT
-- @usage BOOL IS_PED_IN_MELEE_COMBAT(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInMeleeCombat(ped) end

-- Returns true if the ped doesn't do any movement. If the ped is being pushed forwards by using APPLY_FORCE_TO_ENTITY for example, the function returns false.
-- @module native
-- @submodule ped
-- @see IS_PED_STOPPED
-- @usage BOOL IS_PED_STOPPED(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedStopped(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_SHOOTING_IN_AREA
-- @usage BOOL IS_PED_SHOOTING_IN_AREA(Ped ped, float x1, float y1, float z1, float x2, float y2, float z2, BOOL p7, BOOL p8);
-- @param ped Ped
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param p7 BOOL
-- @param p8 BOOL
-- @return BOOL
function IsPedShootingInArea(ped, x1, y1, z1, x2, y2, z2, p7, p8) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_ANY_PED_SHOOTING_IN_AREA
-- @usage BOOL IS_ANY_PED_SHOOTING_IN_AREA(float x1, float y1, float z1, float x2, float y2, float z2, BOOL p6, BOOL p7);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @param p6 BOOL
-- @param p7 BOOL
-- @return BOOL
function IsAnyPedShootingInArea(x1, y1, z1, x2, y2, z2, p6, p7) end

-- Returns whether the specified ped is shooting.
-- @module native
-- @submodule ped
-- @see IS_PED_SHOOTING
-- @usage BOOL IS_PED_SHOOTING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedShooting(ped) end

-- accuracy = 0-100, 100 being perfectly accurate
-- @module native
-- @submodule ped
-- @see SET_PED_ACCURACY
-- @usage Any SET_PED_ACCURACY(Ped ped, int accuracy);
-- @param ped Ped
-- @param accuracy int
-- @return Any
function SetPedAccuracy(ped, accuracy) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_ACCURACY
-- @usage int GET_PED_ACCURACY(Ped ped);
-- @param ped Ped
-- @return int
function GetPedAccuracy(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_MODEL
-- @usage BOOL IS_PED_MODEL(Ped ped, Hash modelHash);
-- @param ped Ped
-- @param modelHash Hash
-- @return BOOL
function IsPedModel(ped, modelHash) end

-- Forces the ped to fall back and kills it.
-- @module native
-- @submodule ped
-- @see EXPLODE_PED_HEAD
-- @usage void EXPLODE_PED_HEAD(Ped ped, Hash weaponHash);
-- @param ped Ped
-- @param weaponHash Hash
-- @return void
function ExplodePedHead(ped, weaponHash) end

-- Judging purely from a quick disassembly, if the ped is in a vehicle, the ped will be deleted immediately. If not, it'll be marked as no longer needed.
-- @module native
-- @submodule ped
-- @see REMOVE_PED_ELEGANTLY
-- @usage void REMOVE_PED_ELEGANTLY(Ped* ped);
-- @param ped Ped*
-- @return void
function RemovePedElegantly(ped) end

-- Same as SET_PED_ARMOUR, but ADDS 'amount' to the armor the Ped already has.
-- @module native
-- @submodule ped
-- @see ADD_ARMOUR_TO_PED
-- @usage void ADD_ARMOUR_TO_PED(Ped ped, int amount);
-- @param ped Ped
-- @param amount int
-- @return void
function AddArmourToPed(ped, amount) end

-- Sets the armor of the specified ped.  ped: The Ped to set the armor of. amount: A value between 0 and 100 indicating the value to set the Ped's armor to.
-- @module native
-- @submodule ped
-- @see SET_PED_ARMOUR
-- @usage void SET_PED_ARMOUR(Ped ped, int amount);
-- @param ped Ped
-- @param amount int
-- @return void
function SetPedArmour(ped, amount) end

-- Ped: The ped to warp. vehicle: The vehicle to warp the ped into. Seat_Index: [-1 is driver seat, -2 first free passenger seat]  Moreinfo of Seat Index DriverSeat = -1 Passenger = 0 Left Rear = 1 RightRear = 2
-- @module native
-- @submodule ped
-- @see SET_PED_INTO_VEHICLE
-- @usage void SET_PED_INTO_VEHICLE(Ped ped, Vehicle vehicle, int seatIndex);
-- @param ped Ped
-- @param vehicle Vehicle
-- @param seatIndex int
-- @return void
function SetPedIntoVehicle(ped, vehicle, seatIndex) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_ALLOW_VEHICLES_OVERRIDE
-- @usage void SET_PED_ALLOW_VEHICLES_OVERRIDE(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedAllowVehiclesOverride(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see CAN_CREATE_RANDOM_PED
-- @usage BOOL CAN_CREATE_RANDOM_PED(BOOL unk);
-- @param unk BOOL
-- @return BOOL
function CanCreateRandomPed(unk) end

-- vb.net Dim ped_handle As Integer                     With Game.Player.Character                         Dim pos As Vector3 = .Position + .ForwardVector * 3                         ped_handle = Native.Function.Call(Of Integer)(Hash.CREATE_RANDOM_PED, pos.X, pos.Y, pos.Z)                     End With  Creates a Ped at the specified location, returns the Ped Handle.   Ped will not act until SET_PED_AS_NO_LONGER_NEEDED is called.
-- @module native
-- @submodule ped
-- @see CREATE_RANDOM_PED
-- @usage Ped CREATE_RANDOM_PED(float posX, float posY, float posZ);
-- @param posX float
-- @param posY float
-- @param posZ float
-- @return Ped
function CreateRandomPed(posX, posY, posZ) end

-- @todo
-- @module native
-- @submodule ped
-- @see CREATE_RANDOM_PED_AS_DRIVER
-- @usage Ped CREATE_RANDOM_PED_AS_DRIVER(Vehicle vehicle, BOOL returnHandle);
-- @param vehicle Vehicle
-- @param returnHandle BOOL
-- @return Ped
function CreateRandomPedAsDriver(vehicle, returnHandle) end

-- @todo
-- @module native
-- @submodule ped
-- @see CAN_CREATE_RANDOM_DRIVER
-- @usage BOOL CAN_CREATE_RANDOM_DRIVER();
-- @return BOOL
function CanCreateRandomDriver() end

-- @todo
-- @module native
-- @submodule ped
-- @see CAN_CREATE_RANDOM_BIKE_RIDER
-- @usage BOOL CAN_CREATE_RANDOM_BIKE_RIDER();
-- @return BOOL
function CanCreateRandomBikeRider() end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_MOVE_ANIMS_BLEND_OUT
-- @usage void SET_PED_MOVE_ANIMS_BLEND_OUT(Ped ped);
-- @param ped Ped
-- @return void
function SetPedMoveAnimsBlendOut(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_BE_DRAGGED_OUT
-- @usage void SET_PED_CAN_BE_DRAGGED_OUT(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanBeDraggedOut(ped, toggle) end

-- Returns true/false if the ped is/isn't male.
-- @module native
-- @submodule ped
-- @see IS_PED_MALE
-- @usage BOOL IS_PED_MALE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedMale(ped) end

-- Returns true/false if the ped is/isn't humanoid.
-- @module native
-- @submodule ped
-- @see IS_PED_HUMAN
-- @usage BOOL IS_PED_HUMAN(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedHuman(ped) end

-- Gets the vehicle the specified Ped is/was in depending on bool value.  [False = CurrentVehicle, True = LastVehicle]
-- @module native
-- @submodule ped
-- @see GET_VEHICLE_PED_IS_IN
-- @usage Vehicle GET_VEHICLE_PED_IS_IN(Ped ped, BOOL lastVehicle);
-- @param ped Ped
-- @param lastVehicle BOOL
-- @return Vehicle
function GetVehiclePedIsIn(ped, lastVehicle) end

-- Resets the value for the last vehicle driven by the Ped.
-- @module native
-- @submodule ped
-- @see RESET_PED_LAST_VEHICLE
-- @usage void RESET_PED_LAST_VEHICLE(Ped ped);
-- @param ped Ped
-- @return void
function ResetPedLastVehicle(ped) end

-- • Usage  → Use this native inside a looped function. → Values: → 0.0 = no peds on streets → 1.0 = normal peds on streets
-- @module native
-- @submodule ped
-- @see SET_PED_DENSITY_MULTIPLIER_THIS_FRAME
-- @usage void SET_PED_DENSITY_MULTIPLIER_THIS_FRAME(float multiplier);
-- @param multiplier float
-- @return void
function SetPedDensityMultiplierThisFrame(multiplier) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME
-- @usage void SET_SCENARIO_PED_DENSITY_MULTIPLIER_THIS_FRAME(float p0, float p1);
-- @param p0 float
-- @param p1 float
-- @return void
function SetScenarioPedDensityMultiplierThisFrame(p0, p1) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_SCRIPTED_CONVERSION_COORD_THIS_FRAME
-- @usage void SET_SCRIPTED_CONVERSION_COORD_THIS_FRAME(float x, float y, float z);
-- @param x float
-- @param y float
-- @param z float
-- @return void
function SetScriptedConversionCoordThisFrame(x, y, z) end

-- The distance between these points, is the diagonal of a box (remember it's 3D).
-- @module native
-- @submodule ped
-- @see SET_PED_NON_CREATION_AREA
-- @usage void SET_PED_NON_CREATION_AREA(float x1, float y1, float z1, float x2, float y2, float z2);
-- @param x1 float
-- @param y1 float
-- @param z1 float
-- @param x2 float
-- @param y2 float
-- @param z2 float
-- @return void
function SetPedNonCreationArea(x1, y1, z1, x2, y2, z2) end

-- @todo
-- @module native
-- @submodule ped
-- @see CLEAR_PED_NON_CREATION_AREA
-- @usage void CLEAR_PED_NON_CREATION_AREA();
-- @return void
function ClearPedNonCreationArea() end

-- Same function call as PED::GET_MOUNT, aka just returns 0
-- @module native
-- @submodule ped
-- @see IS_PED_ON_MOUNT
-- @usage BOOL IS_PED_ON_MOUNT(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedOnMount(ped) end

-- Function just returns 0 void __fastcall ped__get_mount(NativeContext *a1) {   NativeContext *v1; // rbx@1    v1 = a1;   GetAddressOfPedFromScriptHandle(a1->Args->Arg1);   v1->Returns->Item1= 0; }
-- @module native
-- @submodule ped
-- @see GET_MOUNT
-- @usage Ped GET_MOUNT(Ped ped);
-- @param ped Ped
-- @return Ped
function GetMount(ped) end

-- Gets a value indicating whether the specified ped is on top of any vehicle.  Return 1 when ped is on vehicle. Return 0 when ped is not on a vehicle.
-- @module native
-- @submodule ped
-- @see IS_PED_ON_VEHICLE
-- @usage BOOL IS_PED_ON_VEHICLE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedOnVehicle(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_ON_SPECIFIC_VEHICLE
-- @usage BOOL IS_PED_ON_SPECIFIC_VEHICLE(Ped ped, Vehicle vehicle);
-- @param ped Ped
-- @param vehicle Vehicle
-- @return BOOL
function IsPedOnSpecificVehicle(ped, vehicle) end

-- Maximum possible amount of money on MP is 2000. ~JX  -----------------------------------------------------------------------------  Maximum amount that a ped can theoretically have is 65535 (0xFFFF) since the amount is stored as an unsigned short (uint16_t) value.
-- @module native
-- @submodule ped
-- @see SET_PED_MONEY
-- @usage void SET_PED_MONEY(Ped ped, int amount);
-- @param ped Ped
-- @param amount int
-- @return void
function SetPedMoney(ped, amount) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_MONEY
-- @usage int GET_PED_MONEY(Ped ped);
-- @param ped Ped
-- @return int
function GetPedMoney(ped) end

-- ped cannot be headshot if this is set to false
-- @module native
-- @submodule ped
-- @see SET_PED_SUFFERS_CRITICAL_HITS
-- @usage void SET_PED_SUFFERS_CRITICAL_HITS(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedSuffersCriticalHits(ped, toggle) end

-- Detect if ped is sitting in the specified vehicle [True/False]
-- @module native
-- @submodule ped
-- @see IS_PED_SITTING_IN_VEHICLE
-- @usage BOOL IS_PED_SITTING_IN_VEHICLE(Ped ped, Vehicle vehicle);
-- @param ped Ped
-- @param vehicle Vehicle
-- @return BOOL
function IsPedSittingInVehicle(ped, vehicle) end

-- Detect if ped is in any vehicle [True/False]
-- @module native
-- @submodule ped
-- @see IS_PED_SITTING_IN_ANY_VEHICLE
-- @usage BOOL IS_PED_SITTING_IN_ANY_VEHICLE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedSittingInAnyVehicle(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_ON_FOOT
-- @usage BOOL IS_PED_ON_FOOT(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedOnFoot(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_ON_ANY_BIKE
-- @usage BOOL IS_PED_ON_ANY_BIKE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedOnAnyBike(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_PLANTING_BOMB
-- @usage BOOL IS_PED_PLANTING_BOMB(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedPlantingBomb(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_DEAD_PED_PICKUP_COORDS
-- @usage Vector3 GET_DEAD_PED_PICKUP_COORDS(Ped ped, float p1, float p2);
-- @param ped Ped
-- @param p1 float
-- @param p2 float
-- @return Vector3
function GetDeadPedPickupCoords(ped, p1, p2) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_ANY_BOAT
-- @usage BOOL IS_PED_IN_ANY_BOAT(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInAnyBoat(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_ANY_SUB
-- @usage BOOL IS_PED_IN_ANY_SUB(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInAnySub(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_ANY_HELI
-- @usage BOOL IS_PED_IN_ANY_HELI(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInAnyHeli(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_ANY_PLANE
-- @usage BOOL IS_PED_IN_ANY_PLANE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInAnyPlane(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_FLYING_VEHICLE
-- @usage BOOL IS_PED_IN_FLYING_VEHICLE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInFlyingVehicle(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_DIES_IN_WATER
-- @usage void SET_PED_DIES_IN_WATER(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedDiesInWater(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_DIES_IN_SINKING_VEHICLE
-- @usage void SET_PED_DIES_IN_SINKING_VEHICLE(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedDiesInSinkingVehicle(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_ARMOUR
-- @usage int GET_PED_ARMOUR(Ped ped);
-- @param ped Ped
-- @return int
function GetPedArmour(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_STAY_IN_VEHICLE_WHEN_JACKED
-- @usage void SET_PED_STAY_IN_VEHICLE_WHEN_JACKED(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedStayInVehicleWhenJacked(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_BE_SHOT_IN_VEHICLE
-- @usage void SET_PED_CAN_BE_SHOT_IN_VEHICLE(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanBeShotInVehicle(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_LAST_DAMAGE_BONE
-- @usage BOOL GET_PED_LAST_DAMAGE_BONE(Ped ped, int* outBone);
-- @param ped Ped
-- @param outBone int*
-- @return BOOL
function GetPedLastDamageBone(ped, outBone) end

-- @todo
-- @module native
-- @submodule ped
-- @see CLEAR_PED_LAST_DAMAGE_BONE
-- @usage void CLEAR_PED_LAST_DAMAGE_BONE(Ped ped);
-- @param ped Ped
-- @return void
function ClearPedLastDamageBone(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_AI_WEAPON_DAMAGE_MODIFIER
-- @usage void SET_AI_WEAPON_DAMAGE_MODIFIER(float value);
-- @param value float
-- @return void
function SetAiWeaponDamageModifier(value) end

-- @todo
-- @module native
-- @submodule ped
-- @see RESET_AI_WEAPON_DAMAGE_MODIFIER
-- @usage void RESET_AI_WEAPON_DAMAGE_MODIFIER();
-- @return void
function ResetAiWeaponDamageModifier() end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_AI_MELEE_WEAPON_DAMAGE_MODIFIER
-- @usage void SET_AI_MELEE_WEAPON_DAMAGE_MODIFIER(float modifier);
-- @param modifier float
-- @return void
function SetAiMeleeWeaponDamageModifier(modifier) end

-- @todo
-- @module native
-- @submodule ped
-- @see RESET_AI_MELEE_WEAPON_DAMAGE_MODIFIER
-- @usage void RESET_AI_MELEE_WEAPON_DAMAGE_MODIFIER();
-- @return void
function ResetAiMeleeWeaponDamageModifier() end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_BE_TARGETTED
-- @usage void SET_PED_CAN_BE_TARGETTED(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanBeTargetted(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_BE_TARGETTED_BY_TEAM
-- @usage void SET_PED_CAN_BE_TARGETTED_BY_TEAM(Ped ped, int team, BOOL toggle);
-- @param ped Ped
-- @param team int
-- @param toggle BOOL
-- @return void
function SetPedCanBeTargettedByTeam(ped, team, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_BE_TARGETTED_BY_PLAYER
-- @usage void SET_PED_CAN_BE_TARGETTED_BY_PLAYER(Ped ped, Player player, BOOL toggle);
-- @param ped Ped
-- @param player Player
-- @param toggle BOOL
-- @return void
function SetPedCanBeTargettedByPlayer(ped, player, toggle) end

-- Hash collision. Please change back to _0x_
-- @module native
-- @submodule ped
-- @see SET_TIME_EXCLUSIVE_DISPLAY_TEXTURE
-- @usage void SET_TIME_EXCLUSIVE_DISPLAY_TEXTURE(Any p0, BOOL p1);
-- @param p0 Any
-- @param p1 BOOL
-- @return void
function SetTimeExclusiveDisplayTexture(p0, p1) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_ANY_POLICE_VEHICLE
-- @usage BOOL IS_PED_IN_ANY_POLICE_VEHICLE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInAnyPoliceVehicle(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see FORCE_PED_TO_OPEN_PARACHUTE
-- @usage void FORCE_PED_TO_OPEN_PARACHUTE(Ped ped);
-- @param ped Ped
-- @return void
function ForcePedToOpenParachute(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_PARACHUTE_FREE_FALL
-- @usage BOOL IS_PED_IN_PARACHUTE_FREE_FALL(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInParachuteFreeFall(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_FALLING
-- @usage BOOL IS_PED_FALLING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedFalling(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_JUMPING
-- @usage BOOL IS_PED_JUMPING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedJumping(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_CLIMBING
-- @usage BOOL IS_PED_CLIMBING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedClimbing(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_VAULTING
-- @usage BOOL IS_PED_VAULTING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedVaulting(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_DIVING
-- @usage BOOL IS_PED_DIVING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedDiving(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_JUMPING_OUT_OF_VEHICLE
-- @usage BOOL IS_PED_JUMPING_OUT_OF_VEHICLE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedJumpingOutOfVehicle(ped) end

-- Returns:  -1: Normal 0: Wearing parachute on back 1: Parachute opening 2: Parachute open 3: Falling to doom (e.g. after exiting parachute)  Normal means no parachute?
-- @module native
-- @submodule ped
-- @see GET_PED_PARACHUTE_STATE
-- @usage int GET_PED_PARACHUTE_STATE(Ped ped);
-- @param ped Ped
-- @return int
function GetPedParachuteState(ped) end

-- -1: no landing 0: landing on both feet 1: stumbling 2: rolling 3: ragdoll
-- @module native
-- @submodule ped
-- @see GET_PED_PARACHUTE_LANDING_TYPE
-- @usage int GET_PED_PARACHUTE_LANDING_TYPE(Ped ped);
-- @param ped Ped
-- @return int
function GetPedParachuteLandingType(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_PARACHUTE_TINT_INDEX
-- @usage void SET_PED_PARACHUTE_TINT_INDEX(Ped ped, int tintIndex);
-- @param ped Ped
-- @param tintIndex int
-- @return void
function SetPedParachuteTintIndex(ped, tintIndex) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_PARACHUTE_TINT_INDEX
-- @usage void GET_PED_PARACHUTE_TINT_INDEX(Ped ped, int* outTintIndex);
-- @param ped Ped
-- @param outTintIndex int*
-- @return void
function GetPedParachuteTintIndex(ped, outTintIndex) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_RESERVE_PARACHUTE_TINT_INDEX
-- @usage void SET_PED_RESERVE_PARACHUTE_TINT_INDEX(Ped ped, Any p1);
-- @param ped Ped
-- @param p1 Any
-- @return void
function SetPedReserveParachuteTintIndex(ped, p1) end

-- This is the SET_CHAR_DUCKING from GTA IV, that makes Peds duck. This function does nothing in GTA V. It cannot set the ped as ducking in vehicles, and IS_PED_DUCKING will always return false.
-- @module native
-- @submodule ped
-- @see SET_PED_DUCKING
-- @usage void SET_PED_DUCKING(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedDucking(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_DUCKING
-- @usage BOOL IS_PED_DUCKING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedDucking(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_ANY_TAXI
-- @usage BOOL IS_PED_IN_ANY_TAXI(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInAnyTaxi(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_ID_RANGE
-- @usage void SET_PED_ID_RANGE(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedIdRange(ped, value) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_SEEING_RANGE
-- @usage void SET_PED_SEEING_RANGE(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedSeeingRange(ped, value) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_HEARING_RANGE
-- @usage void SET_PED_HEARING_RANGE(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedHearingRange(ped, value) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_VISUAL_FIELD_MIN_ANGLE
-- @usage void SET_PED_VISUAL_FIELD_MIN_ANGLE(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedVisualFieldMinAngle(ped, value) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_VISUAL_FIELD_MAX_ANGLE
-- @usage void SET_PED_VISUAL_FIELD_MAX_ANGLE(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedVisualFieldMaxAngle(ped, value) end

-- This native refers to the field of vision the ped has below them, starting at 0 degrees. The angle value should be negative.
-- @module native
-- @submodule ped
-- @see SET_PED_VISUAL_FIELD_MIN_ELEVATION_ANGLE
-- @usage void SET_PED_VISUAL_FIELD_MIN_ELEVATION_ANGLE(Ped ped, float angle);
-- @param ped Ped
-- @param angle float
-- @return void
function SetPedVisualFieldMinElevationAngle(ped, angle) end

-- This native refers to the field of vision the ped has above them, starting at 0 degrees. 90f would let the ped see enemies directly above of them.
-- @module native
-- @submodule ped
-- @see SET_PED_VISUAL_FIELD_MAX_ELEVATION_ANGLE
-- @usage void SET_PED_VISUAL_FIELD_MAX_ELEVATION_ANGLE(Ped ped, float angle);
-- @param ped Ped
-- @param angle float
-- @return void
function SetPedVisualFieldMaxElevationAngle(ped, angle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_VISUAL_FIELD_PERIPHERAL_RANGE
-- @usage void SET_PED_VISUAL_FIELD_PERIPHERAL_RANGE(Ped ped, float range);
-- @param ped Ped
-- @param range float
-- @return void
function SetPedVisualFieldPeripheralRange(ped, range) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_VISUAL_FIELD_CENTER_ANGLE
-- @usage void SET_PED_VISUAL_FIELD_CENTER_ANGLE(Ped ped, float angle);
-- @param ped Ped
-- @param angle float
-- @return void
function SetPedVisualFieldCenterAngle(ped, angle) end

-- p1 is usually 0 in the scripts. action is either 0 or a pointer to "DEFAULT_ACTION".
-- @module native
-- @submodule ped
-- @see SET_PED_STEALTH_MOVEMENT
-- @usage void SET_PED_STEALTH_MOVEMENT(Ped ped, BOOL p1, char* action);
-- @param ped Ped
-- @param p1 BOOL
-- @param action char*
-- @return void
function SetPedStealthMovement(ped, p1, action) end

-- Returns whether the entity is in stealth mode
-- @module native
-- @submodule ped
-- @see GET_PED_STEALTH_MOVEMENT
-- @usage BOOL GET_PED_STEALTH_MOVEMENT(Ped ped);
-- @param ped Ped
-- @return BOOL
function GetPedStealthMovement(ped) end

-- Creates a new ped group. Groups can contain up to 8 peds.  The parameter is unused.  Returns a handle to the created group, or 0 if a group couldn't be created.
-- @module native
-- @submodule ped
-- @see CREATE_GROUP
-- @usage int CREATE_GROUP(int unused);
-- @param unused int
-- @return int
function CreateGroup(unused) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_AS_GROUP_LEADER
-- @usage void SET_PED_AS_GROUP_LEADER(Ped ped, int groupId);
-- @param ped Ped
-- @param groupId int
-- @return void
function SetPedAsGroupLeader(ped, groupId) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_AS_GROUP_MEMBER
-- @usage void SET_PED_AS_GROUP_MEMBER(Ped ped, int groupId);
-- @param ped Ped
-- @param groupId int
-- @return void
function SetPedAsGroupMember(ped, groupId) end

-- This only will teleport the ped to the group leader if the group leader teleports (sets coords).  Only works in singleplayer
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_TELEPORT_TO_GROUP_LEADER
-- @usage void SET_PED_CAN_TELEPORT_TO_GROUP_LEADER(Ped pedHandle, int groupHandle, BOOL toggle);
-- @param pedHandle Ped
-- @param groupHandle int
-- @param toggle BOOL
-- @return void
function SetPedCanTeleportToGroupLeader(pedHandle, groupHandle, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see REMOVE_GROUP
-- @usage void REMOVE_GROUP(int groupId);
-- @param groupId int
-- @return void
function RemoveGroup(groupId) end

-- @todo
-- @module native
-- @submodule ped
-- @see REMOVE_PED_FROM_GROUP
-- @usage void REMOVE_PED_FROM_GROUP(Ped ped);
-- @param ped Ped
-- @return void
function RemovePedFromGroup(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_GROUP_MEMBER
-- @usage BOOL IS_PED_GROUP_MEMBER(Ped ped, int groupId);
-- @param ped Ped
-- @param groupId int
-- @return BOOL
function IsPedGroupMember(ped, groupId) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_HANGING_ON_TO_VEHICLE
-- @usage BOOL IS_PED_HANGING_ON_TO_VEHICLE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedHangingOnToVehicle(ped) end

-- Sets the range at which members will automatically leave the group.
-- @module native
-- @submodule ped
-- @see SET_GROUP_SEPARATION_RANGE
-- @usage void SET_GROUP_SEPARATION_RANGE(int groupHandle, float separationRange);
-- @param groupHandle int
-- @param separationRange float
-- @return void
function SetGroupSeparationRange(groupHandle, separationRange) end

-- Ped will stay on the ground after being stunned for at lest ms time. (in milliseconds)
-- @module native
-- @submodule ped
-- @see SET_PED_MIN_GROUND_TIME_FOR_STUNGUN
-- @usage void SET_PED_MIN_GROUND_TIME_FOR_STUNGUN(Ped ped, int ms);
-- @param ped Ped
-- @param ms int
-- @return void
function SetPedMinGroundTimeForStungun(ped, ms) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_PRONE
-- @usage BOOL IS_PED_PRONE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedProne(ped) end

-- Checks to see if ped and target are in combat with eachother. Only goes one-way: if target is engaged in combat with ped but ped has not yet reacted, the function will return false until ped starts fighting back.  p1 is usually 0 in the scripts because it gets the ped id during the task sequence. For instance: PED::IS_PED_IN_COMBAT(l_42E[4/*14*/], PLAYER::PLAYER_PED_ID()) // armenian2.ct4: 43794
-- @module native
-- @submodule ped
-- @see IS_PED_IN_COMBAT
-- @usage BOOL IS_PED_IN_COMBAT(Ped ped, Ped target);
-- @param ped Ped
-- @param target Ped
-- @return BOOL
function IsPedInCombat(ped, target) end

-- @todo
-- @module native
-- @submodule ped
-- @see CAN_PED_IN_COMBAT_SEE_TARGET
-- @usage BOOL CAN_PED_IN_COMBAT_SEE_TARGET(Ped ped, Ped target);
-- @param ped Ped
-- @param target Ped
-- @return BOOL
function CanPedInCombatSeeTarget(ped, target) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_DOING_DRIVEBY
-- @usage BOOL IS_PED_DOING_DRIVEBY(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedDoingDriveby(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_JACKING
-- @usage BOOL IS_PED_JACKING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedJacking(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_BEING_JACKED
-- @usage BOOL IS_PED_BEING_JACKED(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedBeingJacked(ped) end

-- p1 is always 0
-- @module native
-- @submodule ped
-- @see IS_PED_BEING_STUNNED
-- @usage BOOL IS_PED_BEING_STUNNED(Ped ped, int p1);
-- @param ped Ped
-- @param p1 int
-- @return BOOL
function IsPedBeingStunned(ped, p1) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PEDS_JACKER
-- @usage Ped GET_PEDS_JACKER(Ped ped);
-- @param ped Ped
-- @return Ped
function GetPedsJacker(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_JACK_TARGET
-- @usage Ped GET_JACK_TARGET(Ped ped);
-- @param ped Ped
-- @return Ped
function GetJackTarget(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_FLEEING
-- @usage BOOL IS_PED_FLEEING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedFleeing(ped) end

-- p1 is nearly always 0 in the scripts.
-- @module native
-- @submodule ped
-- @see IS_PED_IN_COVER
-- @usage BOOL IS_PED_IN_COVER(Ped ped, BOOL p1);
-- @param ped Ped
-- @param p1 BOOL
-- @return BOOL
function IsPedInCover(ped, p1) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_COVER_FACING_LEFT
-- @usage BOOL IS_PED_IN_COVER_FACING_LEFT(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInCoverFacingLeft(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_GOING_INTO_COVER
-- @usage BOOL IS_PED_GOING_INTO_COVER(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedGoingIntoCover(ped) end

-- i could be time. Only example in the decompiled scripts uses it as -1.
-- @module native
-- @submodule ped
-- @see SET_PED_PINNED_DOWN
-- @usage Any SET_PED_PINNED_DOWN(Ped ped, BOOL pinned, int i);
-- @param ped Ped
-- @param pinned BOOL
-- @param i int
-- @return Any
function SetPedPinnedDown(ped, pinned, i) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_SEAT_PED_IS_TRYING_TO_ENTER
-- @usage int GET_SEAT_PED_IS_TRYING_TO_ENTER(Ped ped);
-- @param ped Ped
-- @return int
function GetSeatPedIsTryingToEnter(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_VEHICLE_PED_IS_TRYING_TO_ENTER
-- @usage Vehicle GET_VEHICLE_PED_IS_TRYING_TO_ENTER(Ped ped);
-- @param ped Ped
-- @return Vehicle
function GetVehiclePedIsTryingToEnter(ped) end

-- Returns the Entity (Ped, Vehicle, or ?Object?) that killed the 'ped'  Is best to check if the Ped is dead before asking for its killer.
-- @module native
-- @submodule ped
-- @see GET_PED_SOURCE_OF_DEATH
-- @usage Entity GET_PED_SOURCE_OF_DEATH(Ped ped);
-- @param ped Ped
-- @return Entity
function GetPedSourceOfDeath(ped) end

-- Returns the hash of the weapon/model/object that killed the ped.
-- @module native
-- @submodule ped
-- @see GET_PED_CAUSE_OF_DEATH
-- @usage Hash GET_PED_CAUSE_OF_DEATH(Ped ped);
-- @param ped Ped
-- @return Hash
function GetPedCauseOfDeath(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH
-- @usage void SET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH(Ped ped, Hash hash);
-- @param ped Ped
-- @param hash Hash
-- @return void
function SetPedRelationshipGroupDefaultHash(ped, hash) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_RELATIONSHIP_GROUP_HASH
-- @usage void SET_PED_RELATIONSHIP_GROUP_HASH(Ped ped, Hash hash);
-- @param ped Ped
-- @param hash Hash
-- @return void
function SetPedRelationshipGroupHash(ped, hash) end

-- Sets the relationship between two groups. This should be called twice (once for each group).  Relationship types: 0 = Companion 1 = Respect 2 = Like 3 = Neutral 4 = Dislike 5 = Hate 255 = Pedestrians  Example: PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C); PED::SET_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);
-- @module native
-- @submodule ped
-- @see SET_RELATIONSHIP_BETWEEN_GROUPS
-- @usage void SET_RELATIONSHIP_BETWEEN_GROUPS(int relationship, Hash group1, Hash group2);
-- @param relationship int
-- @param group1 Hash
-- @param group2 Hash
-- @return void
function SetRelationshipBetweenGroups(relationship, group1, group2) end

-- Clears the relationship between two groups. This should be called twice (once for each group).  Relationship types: 0 = Companion 1 = Respect 2 = Like 3 = Neutral 4 = Dislike 5 = Hate 255 = Pedestrians (Credits: Inco)  Example: PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, l_1017, 0xA49E591C); PED::CLEAR_RELATIONSHIP_BETWEEN_GROUPS(2, 0xA49E591C, l_1017);
-- @module native
-- @submodule ped
-- @see CLEAR_RELATIONSHIP_BETWEEN_GROUPS
-- @usage void CLEAR_RELATIONSHIP_BETWEEN_GROUPS(int relationship, Hash group1, Hash group2);
-- @param relationship int
-- @param group1 Hash
-- @param group2 Hash
-- @return void
function ClearRelationshipBetweenGroups(relationship, group1, group2) end

-- Can't select void. This function returns nothing. The hash of the created relationship group is output in the second parameter.
-- @module native
-- @submodule ped
-- @see ADD_RELATIONSHIP_GROUP
-- @usage Any ADD_RELATIONSHIP_GROUP(char* name, Hash* groupHash);
-- @param name char*
-- @param groupHash Hash*
-- @return Any
function AddRelationshipGroup(name, groupHash) end

-- @todo
-- @module native
-- @submodule ped
-- @see REMOVE_RELATIONSHIP_GROUP
-- @usage void REMOVE_RELATIONSHIP_GROUP(Hash groupHash);
-- @param groupHash Hash
-- @return void
function RemoveRelationshipGroup(groupHash) end

-- Gets the relationship between two peds. This should be called twice (once for each ped).  Relationship types: 0 = Companion 1 = Respect 2 = Like 3 = Neutral 4 = Dislike 5 = Hate 255 = Pedestrians (Credits: Inco)  Example: PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, l_1017, 0xA49E591C); PED::GET_RELATIONSHIP_BETWEEN_PEDS(2, 0xA49E591C, l_1017);
-- @module native
-- @submodule ped
-- @see GET_RELATIONSHIP_BETWEEN_PEDS
-- @usage int GET_RELATIONSHIP_BETWEEN_PEDS(Ped ped1, Ped ped2);
-- @param ped1 Ped
-- @param ped2 Ped
-- @return int
function GetRelationshipBetweenPeds(ped1, ped2) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH
-- @usage Hash GET_PED_RELATIONSHIP_GROUP_DEFAULT_HASH(Ped ped);
-- @param ped Ped
-- @return Hash
function GetPedRelationshipGroupDefaultHash(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_RELATIONSHIP_GROUP_HASH
-- @usage Hash GET_PED_RELATIONSHIP_GROUP_HASH(Ped ped);
-- @param ped Ped
-- @return Hash
function GetPedRelationshipGroupHash(ped) end

-- Gets the relationship between two groups. This should be called twice (once for each group).  Relationship types: 0 = Companion 1 = Respect 2 = Like 3 = Neutral 4 = Dislike 5 = Hate 255 = Pedestrians  Example: PED::GET_RELATIONSHIP_BETWEEN_GROUPS(l_1017, 0xA49E591C); PED::GET_RELATIONSHIP_BETWEEN_GROUPS(0xA49E591C, l_1017);
-- @module native
-- @submodule ped
-- @see GET_RELATIONSHIP_BETWEEN_GROUPS
-- @usage int GET_RELATIONSHIP_BETWEEN_GROUPS(Hash group1, Hash group2);
-- @param group1 Hash
-- @param group2 Hash
-- @return int
function GetRelationshipBetweenGroups(group1, group2) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_BE_TARGETED_WITHOUT_LOS
-- @usage void SET_PED_CAN_BE_TARGETED_WITHOUT_LOS(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanBeTargetedWithoutLos(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_TO_INFORM_RESPECTED_FRIENDS
-- @usage void SET_PED_TO_INFORM_RESPECTED_FRIENDS(Ped ped, float radius, int maxFriends);
-- @param ped Ped
-- @param radius float
-- @param maxFriends int
-- @return void
function SetPedToInformRespectedFriends(ped, radius, maxFriends) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_RESPONDING_TO_EVENT
-- @usage BOOL IS_PED_RESPONDING_TO_EVENT(Ped ped, Any event);
-- @param ped Ped
-- @param event Any
-- @return BOOL
function IsPedRespondingToEvent(ped, event) end

-- FIRING_PATTERN_BURST_FIRE = 0xD6FF6D61 ( 1073727030 ) FIRING_PATTERN_BURST_FIRE_IN_COVER = 0x026321F1 ( 40051185 ) FIRING_PATTERN_BURST_FIRE_DRIVEBY = 0xD31265F2 ( -753768974 ) FIRING_PATTERN_FROM_GROUND = 0x2264E5D6 ( 577037782 ) FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC = 0x7A845691 ( 2055493265 ) FIRING_PATTERN_FULL_AUTO = 0xC6EE6B4C ( -957453492 ) FIRING_PATTERN_SINGLE_SHOT = 0x5D60E4E0 ( 1566631136 ) FIRING_PATTERN_BURST_FIRE_PISTOL = 0xA018DB8A ( -1608983670 ) FIRING_PATTERN_BURST_FIRE_SMG = 0xD10DADEE ( 1863348768 ) FIRING_PATTERN_BURST_FIRE_RIFLE = 0x9C74B406 ( -1670073338 ) FIRING_PATTERN_BURST_FIRE_MG = 0xB573C5B4 ( -1250703948 ) FIRING_PATTERN_BURST_FIRE_PUMPSHOTGUN = 0x00BAC39B ( 12239771 ) FIRING_PATTERN_BURST_FIRE_HELI = 0x914E786F ( -1857128337 ) FIRING_PATTERN_BURST_FIRE_MICRO = 0x42EF03FD ( 1122960381 ) FIRING_PATTERN_SHORT_BURSTS = 0x1A92D7DF ( 445831135 ) FIRING_PATTERN_SLOW_FIRE_TANK = 0xE2CA3A71 ( -490063247 )  if anyone is interested firing pattern info: pastebin.com/Px036isB
-- @module native
-- @submodule ped
-- @see SET_PED_FIRING_PATTERN
-- @usage void SET_PED_FIRING_PATTERN(Ped ped, Hash patternHash);
-- @param ped Ped
-- @param patternHash Hash
-- @return void
function SetPedFiringPattern(ped, patternHash) end

-- shootRate 0-1000
-- @module native
-- @submodule ped
-- @see SET_PED_SHOOT_RATE
-- @usage void SET_PED_SHOOT_RATE(Ped ped, int shootRate);
-- @param ped Ped
-- @param shootRate int
-- @return void
function SetPedShootRate(ped, shootRate) end

-- combatType can be between 0-14. See GET_COMBAT_FLOAT below for a list of possible parameters.
-- @module native
-- @submodule ped
-- @see SET_COMBAT_FLOAT
-- @usage void SET_COMBAT_FLOAT(Ped ped, int combatType, float p2);
-- @param ped Ped
-- @param combatType int
-- @param p2 float
-- @return void
function SetCombatFloat(ped, combatType, p2) end

-- p0: Ped Handle p1: int i | 0 <= i <= 27  p1 probably refers to the attributes configured in combatbehavior.meta. There are 13. Example:  <BlindFireChance value="0.1"></BlindFireChance> <WeaponShootRateModifier value="1.0"></WeaponShootRateModifier> <TimeBetweenBurstsInCover value="1.25"></TimeBetweenBurstsInCover> <BurstDurationInCover value="2.0"></BurstDurationInCover> <TimeBetweenPeeks value="10.0"></TimeBetweenPeeks> <WeaponAccuracy value="0.18"></WeaponAccuracy> <FightProficiency value="0.8"></FightProficiency> <StrafeWhenMovingChance value="1.0"></StrafeWhenMovingChance> <WalkWhenStrafingChance value="0.0"></WalkWhenStrafingChance> <AttackWindowDistanceForCover value="55.0"></AttackWindowDistanceForCover> <TimeToInvalidateInjuredTarget value="9.0"></TimeToInvalidateInjuredTarget> <TriggerChargeTime_Near value="4.0"></TriggerChargeTime_Near> <TriggerChargeTime_Far value="10.0"></TriggerChargeTime_Far>  -------------Confirmed by editing combatbehavior.meta: p1: 0=BlindFireChance 1=BurstDurationInCover 3=TimeBetweenBurstsInCover 4=TimeBetweenPeeks 5=StrafeWhenMovingChance 8=WalkWhenStrafingChance 11=AttackWindowDistanceForCover 12=TimeToInvalidateInjuredTarget 16=OptimalCoverDistance
-- @module native
-- @submodule ped
-- @see GET_COMBAT_FLOAT
-- @usage float GET_COMBAT_FLOAT(Ped ped, int p1);
-- @param ped Ped
-- @param p1 int
-- @return float
function GetCombatFloat(ped, p1) end

-- p1 may be a BOOL representing whether or not the group even exists
-- @module native
-- @submodule ped
-- @see GET_GROUP_SIZE
-- @usage void GET_GROUP_SIZE(int groupID, Any* unknown, int* sizeInMembers);
-- @param groupID int
-- @param unknown Any*
-- @param sizeInMembers int*
-- @return void
function GetGroupSize(groupID, unknown, sizeInMembers) end

-- @todo
-- @module native
-- @submodule ped
-- @see DOES_GROUP_EXIST
-- @usage BOOL DOES_GROUP_EXIST(int groupId);
-- @param groupId int
-- @return BOOL
function DoesGroupExist(groupId) end

-- Returns the group id of which the specified ped is a member of.
-- @module native
-- @submodule ped
-- @see GET_PED_GROUP_INDEX
-- @usage int GET_PED_GROUP_INDEX(Ped ped);
-- @param ped Ped
-- @return int
function GetPedGroupIndex(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_GROUP
-- @usage BOOL IS_PED_IN_GROUP(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInGroup(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PLAYER_PED_IS_FOLLOWING
-- @usage Player GET_PLAYER_PED_IS_FOLLOWING(Ped ped);
-- @param ped Ped
-- @return Player
function GetPlayerPedIsFollowing(ped) end

-- 0: Default 1: Circle Around Leader 2: Alternative Circle Around Leader 3: Line, with Leader at center
-- @module native
-- @submodule ped
-- @see SET_GROUP_FORMATION
-- @usage void SET_GROUP_FORMATION(int groupId, int formationType);
-- @param groupId int
-- @param formationType int
-- @return void
function SetGroupFormation(groupId, formationType) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_GROUP_FORMATION_SPACING
-- @usage void SET_GROUP_FORMATION_SPACING(int groupId, float p1, float p2, float p3);
-- @param groupId int
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @return void
function SetGroupFormationSpacing(groupId, p1, p2, p3) end

-- @todo
-- @module native
-- @submodule ped
-- @see RESET_GROUP_FORMATION_DEFAULT_SPACING
-- @usage void RESET_GROUP_FORMATION_DEFAULT_SPACING(int groupHandle);
-- @param groupHandle int
-- @return void
function ResetGroupFormationDefaultSpacing(groupHandle) end

-- Gets ID of vehicle player using. It means it can get ID at any interaction with vehicle. Enter\exit for example. And that means it is faster than GET_VEHICLE_PED_IS_IN but less safe.
-- @module native
-- @submodule ped
-- @see GET_VEHICLE_PED_IS_USING
-- @usage Vehicle GET_VEHICLE_PED_IS_USING(Ped ped);
-- @param ped Ped
-- @return Vehicle
function GetVehiclePedIsUsing(ped) end

-- In appcamera.c4, Line 106: if (VEHICLE::IS_VEHICLE_DRIVEABLE(PED::SET_EXCLUSIVE_PHONE_RELATIONSHIPS(PLAYER::PLAYER_PED_ID()), 0)) So return type could be a vehicle?  !Hash collision - gets the vehicle handle from ped which is about entering the vehicle!  sfink: agreed, 100% Proper name is GET_VEHICLE_PED_IS_ENTERING
-- @module native
-- @submodule ped
-- @see SET_EXCLUSIVE_PHONE_RELATIONSHIPS
-- @usage Vehicle SET_EXCLUSIVE_PHONE_RELATIONSHIPS(Ped ped);
-- @param ped Ped
-- @return Vehicle
function SetExclusivePhoneRelationships(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_GRAVITY
-- @usage void SET_PED_GRAVITY(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedGravity(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see APPLY_DAMAGE_TO_PED
-- @usage void APPLY_DAMAGE_TO_PED(Ped ped, int damageAmount, BOOL p2);
-- @param ped Ped
-- @param damageAmount int
-- @param p2 BOOL
-- @return void
function ApplyDamageToPed(ped, damageAmount, p2) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_ALLOWED_TO_DUCK
-- @usage void SET_PED_ALLOWED_TO_DUCK(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedAllowedToDuck(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_NEVER_LEAVES_GROUP
-- @usage void SET_PED_NEVER_LEAVES_GROUP(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedNeverLeavesGroup(ped, toggle) end

-- Ped Types: (ordered by return priority)  Michael = 0 Franklin = 1 Trevor = 2  Army = 29 Animal = 28 SWAT = 27 LSFD = 21 Paramedic = 20  Cop = 6  Male = 4 Female = 5   Human = 26  Note/Exception hc_gunman : 4 // Mix male and female hc_hacker : 4 // Mix male and female mp_f_misty_01 : 4 // Female character s_f_y_ranger_01 : 5 // Ranger s_m_y_ranger_01 : 4 // Ranger s_m_y_uscg_01 : 6 // US Coast Guard
-- @module native
-- @submodule ped
-- @see GET_PED_TYPE
-- @usage int GET_PED_TYPE(Ped ped);
-- @param ped Ped
-- @return int
function GetPedType(ped) end

-- Turns the desired ped into a cop. If you use this on the player ped, you will become almost invisible to cops dispatched for you. You will also report your own crimes, get a generic cop voice, get a cop-vision-cone on the radar, and you will be unable to shoot at other cops. SWAT and Army will still shoot at you. Toggling ped as "false" has no effect; you must change p0's ped model to disable the effect.
-- @module native
-- @submodule ped
-- @see SET_PED_AS_COP
-- @usage void SET_PED_AS_COP(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedAsCop(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_MAX_HEALTH
-- @usage void SET_PED_MAX_HEALTH(Ped ped, int value);
-- @param ped Ped
-- @param value int
-- @return void
function SetPedMaxHealth(ped, value) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_MAX_HEALTH
-- @usage int GET_PED_MAX_HEALTH(Ped ped);
-- @param ped Ped
-- @return int
function GetPedMaxHealth(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_MAX_TIME_IN_WATER
-- @usage void SET_PED_MAX_TIME_IN_WATER(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedMaxTimeInWater(ped, value) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_MAX_TIME_UNDERWATER
-- @usage void SET_PED_MAX_TIME_UNDERWATER(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedMaxTimeUnderwater(ped, value) end

-- 0 = can (bike) 1 = can't (bike) 2 = unk  3 = unk
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_BE_KNOCKED_OFF_VEHICLE
-- @usage void SET_PED_CAN_BE_KNOCKED_OFF_VEHICLE(Ped ped, int state);
-- @param ped Ped
-- @param state int
-- @return void
function SetPedCanBeKnockedOffVehicle(ped, state) end

-- @todo
-- @module native
-- @submodule ped
-- @see CAN_KNOCK_PED_OFF_VEHICLE
-- @usage BOOL CAN_KNOCK_PED_OFF_VEHICLE(Ped ped);
-- @param ped Ped
-- @return BOOL
function CanKnockPedOffVehicle(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see KNOCK_PED_OFF_VEHICLE
-- @usage void KNOCK_PED_OFF_VEHICLE(Ped ped);
-- @param ped Ped
-- @return void
function KnockPedOffVehicle(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_COORDS_NO_GANG
-- @usage void SET_PED_COORDS_NO_GANG(Ped ped, float posX, float posY, float posZ);
-- @param ped Ped
-- @param posX float
-- @param posY float
-- @param posZ float
-- @return void
function SetPedCoordsNoGang(ped, posX, posY, posZ) end

-- from fm_mission_controller.c4 (variable names changed for clarity):  int groupID = PLAYER::GET_PLAYER_GROUP(PLAYER::PLAYER_ID()); PED::GET_GROUP_SIZE(group, &unused, &groupSize); if (groupSize >= 1) { . . . . for (int memberNumber = 0; memberNumber < groupSize; memberNumber++) { . . . . . . . . Ped ped1 = PED::GET_PED_AS_GROUP_MEMBER(groupID, memberNumber); . . . . . . . . //and so on
-- @module native
-- @submodule ped
-- @see GET_PED_AS_GROUP_MEMBER
-- @usage Ped GET_PED_AS_GROUP_MEMBER(int groupID, int memberNumber);
-- @param groupID int
-- @param memberNumber int
-- @return Ped
function GetPedAsGroupMember(groupID, memberNumber) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_KEEP_TASK
-- @usage void SET_PED_KEEP_TASK(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedKeepTask(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_SWIMMING
-- @usage BOOL IS_PED_SWIMMING(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedSwimming(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_SWIMMING_UNDER_WATER
-- @usage BOOL IS_PED_SWIMMING_UNDER_WATER(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedSwimmingUnderWater(ped) end

-- teleports ped to coords along with the vehicle ped is in
-- @module native
-- @submodule ped
-- @see SET_PED_COORDS_KEEP_VEHICLE
-- @usage void SET_PED_COORDS_KEEP_VEHICLE(Ped ped, float posX, float posY, float posZ);
-- @param ped Ped
-- @param posX float
-- @param posY float
-- @param posZ float
-- @return void
function SetPedCoordsKeepVehicle(ped, posX, posY, posZ) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_DIES_IN_VEHICLE
-- @usage void SET_PED_DIES_IN_VEHICLE(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedDiesInVehicle(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_CREATE_RANDOM_COPS
-- @usage void SET_CREATE_RANDOM_COPS(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetCreateRandomCops(toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_CREATE_RANDOM_COPS_NOT_ON_SCENARIOS
-- @usage void SET_CREATE_RANDOM_COPS_NOT_ON_SCENARIOS(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetCreateRandomCopsNotOnScenarios(toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_CREATE_RANDOM_COPS_ON_SCENARIOS
-- @usage void SET_CREATE_RANDOM_COPS_ON_SCENARIOS(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetCreateRandomCopsOnScenarios(toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see CAN_CREATE_RANDOM_COPS
-- @usage BOOL CAN_CREATE_RANDOM_COPS();
-- @return BOOL
function CanCreateRandomCops() end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_AS_ENEMY
-- @usage void SET_PED_AS_ENEMY(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedAsEnemy(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_SMASH_GLASS
-- @usage void SET_PED_CAN_SMASH_GLASS(Ped ped, BOOL p1, BOOL p2);
-- @param ped Ped
-- @param p1 BOOL
-- @param p2 BOOL
-- @return void
function SetPedCanSmashGlass(ped, p1, p2) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_IN_ANY_TRAIN
-- @usage BOOL IS_PED_IN_ANY_TRAIN(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedInAnyTrain(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_GETTING_INTO_A_VEHICLE
-- @usage BOOL IS_PED_GETTING_INTO_A_VEHICLE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedGettingIntoAVehicle(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_TRYING_TO_ENTER_A_LOCKED_VEHICLE
-- @usage BOOL IS_PED_TRYING_TO_ENTER_A_LOCKED_VEHICLE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedTryingToEnterALockedVehicle(ped) end

-- ped can not pull out a weapon when true
-- @module native
-- @submodule ped
-- @see SET_ENABLE_HANDCUFFS
-- @usage void SET_ENABLE_HANDCUFFS(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetEnableHandcuffs(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_ENABLE_BOUND_ANKLES
-- @usage void SET_ENABLE_BOUND_ANKLES(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetEnableBoundAnkles(ped, toggle) end

-- Enables diving motion when underwater.
-- @module native
-- @submodule ped
-- @see SET_ENABLE_SCUBA
-- @usage void SET_ENABLE_SCUBA(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetEnableScuba(ped, toggle) end

-- Setting ped to true allows the ped to shoot "friendlies".  p2 set to true when toggle is also true seams to make peds permanently unable to aim at, even if you set p2 back to false.  p1 = false & p2 = false for unable to aim at. p1 = true & p2 = false for able to aim at.
-- @module native
-- @submodule ped
-- @see SET_CAN_ATTACK_FRIENDLY
-- @usage void SET_CAN_ATTACK_FRIENDLY(Ped ped, BOOL toggle, BOOL p2);
-- @param ped Ped
-- @param toggle BOOL
-- @param p2 BOOL
-- @return void
function SetCanAttackFriendly(ped, toggle, p2) end

-- Returns the ped's alertness (0-3).  Values :   0 : Neutral 1 : Heard something (gun shot, hit, etc) 2 : Knows (the origin of the event) 3 : Fully alerted (is facing the event?)  If the Ped does not exist, returns -1.
-- @module native
-- @submodule ped
-- @see GET_PED_ALERTNESS
-- @usage int GET_PED_ALERTNESS(Ped ped);
-- @param ped Ped
-- @return int
function GetPedAlertness(ped) end

-- value ranges from 0 to 3.
-- @module native
-- @submodule ped
-- @see SET_PED_ALERTNESS
-- @usage void SET_PED_ALERTNESS(Ped ped, int value);
-- @param ped Ped
-- @param value int
-- @return void
function SetPedAlertness(ped, value) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_GET_OUT_UPSIDE_DOWN_VEHICLE
-- @usage void SET_PED_GET_OUT_UPSIDE_DOWN_VEHICLE(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedGetOutUpsideDownVehicle(ped, toggle) end

-- p2 is usually 1.0f  EDIT 12/24/16:  p2 does absolutely nothing no matter what the value is.   List of movement clipsets: Thanks to elsewhat for list.   "ANIM_GROUP_MOVE_BALLISTIC"  "ANIM_GROUP_MOVE_LEMAR_ALLEY"  "clipset@move@trash_fast_turn"  "FEMALE_FAST_RUNNER"  "missfbi4prepp1_garbageman"  "move_characters@franklin@fire"  "move_characters@Jimmy@slow@"  "move_characters@michael@fire"  "move_f@flee@a"  "move_f@scared"  "move_f@sexy@a"  "move_heist_lester"  "move_injured_generic"  "move_lester_CaneUp"  "move_m@bag"  "MOVE_M@BAIL_BOND_NOT_TAZERED"  "MOVE_M@BAIL_BOND_TAZERED"  "move_m@brave"  "move_m@casual@d"  "move_m@drunk@moderatedrunk"  "MOVE_M@DRUNK@MODERATEDRUNK"  "MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP"  "MOVE_M@DRUNK@SLIGHTLYDRUNK"  "MOVE_M@DRUNK@VERYDRUNK"  "move_m@fire"  "move_m@gangster@var_e"  "move_m@gangster@var_f"  "move_m@gangster@var_i"  "move_m@JOG@"  "MOVE_M@PRISON_GAURD"  "MOVE_P_M_ONE"  "MOVE_P_M_ONE_BRIEFCASE"  "move_p_m_zero_janitor"  "move_p_m_zero_slow"  "move_ped_bucket"  "move_ped_crouched"  "move_ped_mop"  "MOVE_M@FEMME@"  "MOVE_F@FEMME@"  "MOVE_M@GANGSTER@NG"  "MOVE_F@GANGSTER@NG"  "MOVE_M@POSH@"  "MOVE_F@POSH@"  "MOVE_M@TOUGH_GUY@"  "MOVE_F@TOUGH_GUY@"  ~ NotCrunchyTaco
-- @module native
-- @submodule ped
-- @see SET_PED_MOVEMENT_CLIPSET
-- @usage void SET_PED_MOVEMENT_CLIPSET(Ped ped, char* clipSet, float p2);
-- @param ped Ped
-- @param clipSet char*
-- @param p2 float
-- @return void
function SetPedMovementClipset(ped, clipSet, p2) end

-- If p1 is 0.0, I believe you are back to normal.  If p1 is 1.0, it looks like you can only rotate the ped, not walk.  Using the following code to reset back to normal PED::RESET_PED_MOVEMENT_CLIPSET(PLAYER::PLAYER_PED_ID(), 0.0);
-- @module native
-- @submodule ped
-- @see RESET_PED_MOVEMENT_CLIPSET
-- @usage void RESET_PED_MOVEMENT_CLIPSET(Ped ped, float p1);
-- @param ped Ped
-- @param p1 float
-- @return void
function ResetPedMovementClipset(ped, p1) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_STRAFE_CLIPSET
-- @usage void SET_PED_STRAFE_CLIPSET(Ped ped, char* clipSet);
-- @param ped Ped
-- @param clipSet char*
-- @return void
function SetPedStrafeClipset(ped, clipSet) end

-- @todo
-- @module native
-- @submodule ped
-- @see RESET_PED_STRAFE_CLIPSET
-- @usage void RESET_PED_STRAFE_CLIPSET(Ped ped);
-- @param ped Ped
-- @return void
function ResetPedStrafeClipset(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_WEAPON_MOVEMENT_CLIPSET
-- @usage void SET_PED_WEAPON_MOVEMENT_CLIPSET(Ped ped, char* clipSet);
-- @param ped Ped
-- @param clipSet char*
-- @return void
function SetPedWeaponMovementClipset(ped, clipSet) end

-- @todo
-- @module native
-- @submodule ped
-- @see RESET_PED_WEAPON_MOVEMENT_CLIPSET
-- @usage void RESET_PED_WEAPON_MOVEMENT_CLIPSET(Ped ped);
-- @param ped Ped
-- @return void
function ResetPedWeaponMovementClipset(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_DRIVE_BY_CLIPSET_OVERRIDE
-- @usage void SET_PED_DRIVE_BY_CLIPSET_OVERRIDE(Ped ped, char* clipset);
-- @param ped Ped
-- @param clipset char*
-- @return void
function SetPedDriveByClipsetOverride(ped, clipset) end

-- @todo
-- @module native
-- @submodule ped
-- @see CLEAR_PED_DRIVE_BY_CLIPSET_OVERRIDE
-- @usage void CLEAR_PED_DRIVE_BY_CLIPSET_OVERRIDE(Ped ped);
-- @param ped Ped
-- @return void
function ClearPedDriveByClipsetOverride(ped) end

-- PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, GAMEPLAY::GET_HASH_KEY("MINI_PROSTITUTE_LOW_PASSENGER")); PED::SET_PED_IN_VEHICLE_CONTEXT(l_128, GAMEPLAY::GET_HASH_KEY("MINI_PROSTITUTE_LOW_RESTRICTED_PASSENGER")); PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, GAMEPLAY::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT")); PED::SET_PED_IN_VEHICLE_CONTEXT(l_3212, GAMEPLAY::GET_HASH_KEY("MISS_FAMILY1_JIMMY_SIT_REAR")); PED::SET_PED_IN_VEHICLE_CONTEXT(l_95, GAMEPLAY::GET_HASH_KEY("MISS_FAMILY2_JIMMY_BICYCLE")); PED::SET_PED_IN_VEHICLE_CONTEXT(num3, GAMEPLAY::GET_HASH_KEY("MISSFBI2_MICHAEL_DRIVEBY")); PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("MISS_ARMENIAN3_FRANKLIN_TENSE")); PED::SET_PED_IN_VEHICLE_CONTEXT(PLAYER::PLAYER_PED_ID(), GAMEPLAY::GET_HASH_KEY("MISSFBI5_TREVOR_DRIVING"));
-- @module native
-- @submodule ped
-- @see SET_PED_IN_VEHICLE_CONTEXT
-- @usage void SET_PED_IN_VEHICLE_CONTEXT(Ped ped, Hash context);
-- @param ped Ped
-- @param context Hash
-- @return void
function SetPedInVehicleContext(ped, context) end

-- @todo
-- @module native
-- @submodule ped
-- @see RESET_PED_IN_VEHICLE_CONTEXT
-- @usage void RESET_PED_IN_VEHICLE_CONTEXT(Ped ped);
-- @param ped Ped
-- @return void
function ResetPedInVehicleContext(ped) end

-- Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule ped
-- @see IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM
-- @usage BOOL IS_SCRIPTED_SCENARIO_PED_USING_CONDITIONAL_ANIM(Ped ped, char* animDict, char* anim);
-- @param ped Ped
-- @param animDict char*
-- @param anim char*
-- @return BOOL
function IsScriptedScenarioPedUsingConditionalAnim(ped, animDict, anim) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_ALTERNATE_WALK_ANIM
-- @usage void SET_PED_ALTERNATE_WALK_ANIM(Ped ped, char* animDict, char* animName, float p3, BOOL p4);
-- @param ped Ped
-- @param animDict char*
-- @param animName char*
-- @param p3 float
-- @param p4 BOOL
-- @return void
function SetPedAlternateWalkAnim(ped, animDict, animName, p3, p4) end

-- @todo
-- @module native
-- @submodule ped
-- @see CLEAR_PED_ALTERNATE_WALK_ANIM
-- @usage void CLEAR_PED_ALTERNATE_WALK_ANIM(Ped ped, float p1);
-- @param ped Ped
-- @param p1 float
-- @return void
function ClearPedAlternateWalkAnim(ped, p1) end

-- stance: 0 = idle 1 = walk 2 = running  p5 = usually set to true  Animations List : www.ls-multiplayer.com/dev/index.php?section=3
-- @module native
-- @submodule ped
-- @see SET_PED_ALTERNATE_MOVEMENT_ANIM
-- @usage void SET_PED_ALTERNATE_MOVEMENT_ANIM(Ped ped, int stance, char* animDictionary, char* animationName, float p4, BOOL p5);
-- @param ped Ped
-- @param stance int
-- @param animDictionary char*
-- @param animationName char*
-- @param p4 float
-- @param p5 BOOL
-- @return void
function SetPedAlternateMovementAnim(ped, stance, animDictionary, animationName, p4, p5) end

-- @todo
-- @module native
-- @submodule ped
-- @see CLEAR_PED_ALTERNATE_MOVEMENT_ANIM
-- @usage void CLEAR_PED_ALTERNATE_MOVEMENT_ANIM(Ped ped, int stance, float p2);
-- @param ped Ped
-- @param stance int
-- @param p2 float
-- @return void
function ClearPedAlternateMovementAnim(ped, stance, p2) end

-- From the scripts: PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(), "ANIM_GROUP_GESTURE_MISS_FRA0"); PED::SET_PED_GESTURE_GROUP(PLAYER::PLAYER_PED_ID(), "ANIM_GROUP_GESTURE_MISS_DocksSetup1");
-- @module native
-- @submodule ped
-- @see SET_PED_GESTURE_GROUP
-- @usage void SET_PED_GESTURE_GROUP(Ped ped, char* animGroupGesture);
-- @param ped Ped
-- @param animGroupGesture char*
-- @return void
function SetPedGestureGroup(ped, animGroupGesture) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_ANIM_INITIAL_OFFSET_POSITION
-- @usage Vector3 GET_ANIM_INITIAL_OFFSET_POSITION(char* animDict, char* animName, float x, float y, float z, float xRot, float yRot, float zRot, float p8, int p9);
-- @param animDict char*
-- @param animName char*
-- @param x float
-- @param y float
-- @param z float
-- @param xRot float
-- @param yRot float
-- @param zRot float
-- @param p8 float
-- @param p9 int
-- @return Vector3
function GetAnimInitialOffsetPosition(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_ANIM_INITIAL_OFFSET_ROTATION
-- @usage Vector3 GET_ANIM_INITIAL_OFFSET_ROTATION(char* animDict, char* animName, float x, float y, float z, float xRot, float yRot, float zRot, float p8, int p9);
-- @param animDict char*
-- @param animName char*
-- @param x float
-- @param y float
-- @param z float
-- @param xRot float
-- @param yRot float
-- @param zRot float
-- @param p8 float
-- @param p9 int
-- @return Vector3
function GetAnimInitialOffsetRotation(animDict, animName, x, y, z, xRot, yRot, zRot, p8, p9) end

-- Ids 0  1  2  3  4  5  6  7 - ------ 8 - Accessories 1 9 - Accessories 2 10 11 - Auxiliary parts for torso
-- @module native
-- @submodule ped
-- @see GET_PED_DRAWABLE_VARIATION
-- @usage int GET_PED_DRAWABLE_VARIATION(Ped ped, int componentId);
-- @param ped Ped
-- @param componentId int
-- @return int
function GetPedDrawableVariation(ped, componentId) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS
-- @usage int GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS(Ped ped, int componentId);
-- @param ped Ped
-- @param componentId int
-- @return int
function GetNumberOfPedDrawableVariations(ped, componentId) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see GET_PED_TEXTURE_VARIATION
-- @usage int GET_PED_TEXTURE_VARIATION(Ped ped, int componentId);
-- @param ped Ped
-- @param componentId int
-- @return int
function GetPedTextureVariation(ped, componentId) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see GET_NUMBER_OF_PED_TEXTURE_VARIATIONS
-- @usage int GET_NUMBER_OF_PED_TEXTURE_VARIATIONS(Ped ped, int componentId, int drawableId);
-- @param ped Ped
-- @param componentId int
-- @param drawableId int
-- @return int
function GetNumberOfPedTextureVariations(ped, componentId, drawableId) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS
-- @usage int GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS(Ped ped, int propId);
-- @param ped Ped
-- @param propId int
-- @return int
function GetNumberOfPedPropDrawableVariations(ped, propId) end

-- Need to check behavior when drawableId = -1  - Doofy.Ass Why this function doesn't work and return nill value? GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(PLAYER.PLAYER_PED_ID(), 0, 5)  tick: scripts/addins/menu_execute.lua:51: attempt to call field 'GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS' (a nil value)   List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS
-- @usage int GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(Ped ped, int propId, int drawableId);
-- @param ped Ped
-- @param propId int
-- @param drawableId int
-- @return int
function GetNumberOfPedPropTextureVariations(ped, propId, drawableId) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see GET_PED_PALETTE_VARIATION
-- @usage int GET_PED_PALETTE_VARIATION(Ped ped, int componentId);
-- @param ped Ped
-- @param componentId int
-- @return int
function GetPedPaletteVariation(ped, componentId) end

-- Checks if the component variation is valid, this works great for randomizing components using loops.  List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see IS_PED_COMPONENT_VARIATION_VALID
-- @usage BOOL IS_PED_COMPONENT_VARIATION_VALID(Ped ped, int componentId, int drawableId, int textureId);
-- @param ped Ped
-- @param componentId int
-- @param drawableId int
-- @param textureId int
-- @return BOOL
function IsPedComponentVariationValid(ped, componentId, drawableId, textureId) end

-- paletteId/palletColor -  0 to 3.  enum PedVariationData { 	PED_VARIATION_FACE = 0, 	PED_VARIATION_HEAD = 1, 	PED_VARIATION_HAIR = 2, 	PED_VARIATION_TORSO = 3, 	PED_VARIATION_LEGS = 4, 	PED_VARIATION_HANDS = 5, 	PED_VARIATION_FEET = 6, 	PED_VARIATION_EYES = 7, 	PED_VARIATION_ACCESSORIES = 8, 	PED_VARIATION_TASKS = 9, 	PED_VARIATION_TEXTURES = 10, 	PED_VARIATION_TORSO2 = 11 }; Usage:  SET_PED_COMPONENT_VARIATION(playerPed, PED_VARIATION_FACE, GET_NUMBER_OF_PED_DRAWABLE_VARIATIONS(playerPed, PED_VARIATION_FACE), GET_NUMBER_OF_PED_TEXTURE_VARIATIONS(playerPed, PED_VARIATION_FACE, 0), 2);  List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see SET_PED_COMPONENT_VARIATION
-- @usage void SET_PED_COMPONENT_VARIATION(Ped ped, int componentId, int drawableId, int textureId, int paletteId);
-- @param ped Ped
-- @param componentId int
-- @param drawableId int
-- @param textureId int
-- @param paletteId int
-- @return void
function SetPedComponentVariation(ped, componentId, drawableId, textureId, paletteId) end

-- p1 is always false in R* scripts.  Quick disassembly seems to indicate that p1 is unused.  List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see SET_PED_RANDOM_COMPONENT_VARIATION
-- @usage void SET_PED_RANDOM_COMPONENT_VARIATION(Ped ped, BOOL p1);
-- @param ped Ped
-- @param p1 BOOL
-- @return void
function SetPedRandomComponentVariation(ped, p1) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see SET_PED_RANDOM_PROPS
-- @usage void SET_PED_RANDOM_PROPS(Ped ped);
-- @param ped Ped
-- @return void
function SetPedRandomProps(ped) end

-- Sets Ped Default Clothes
-- @module native
-- @submodule ped
-- @see SET_PED_DEFAULT_COMPONENT_VARIATION
-- @usage void SET_PED_DEFAULT_COMPONENT_VARIATION(Ped ped);
-- @param ped Ped
-- @return void
function SetPedDefaultComponentVariation(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_BLEND_FROM_PARENTS
-- @usage void SET_PED_BLEND_FROM_PARENTS(Ped ped, Any p1, Any p2, float p3, float p4);
-- @param ped Ped
-- @param p1 Any
-- @param p2 Any
-- @param p3 float
-- @param p4 float
-- @return void
function SetPedBlendFromParents(ped, p1, p2, p3, p4) end

-- The "shape" parameters control the shape of the ped's face. The "skin" parameters control the skin tone. ShapeMix and skinMix control how much the first and second IDs contribute,(typically mother and father.) ThirdMix overrides the others in favor of the third IDs. IsParent is set for "children" of the player character's grandparents during old-gen character creation. It has unknown effect otherwise.  The IDs start at zero and go Male Non-DLC, Female Non-DLC, Male DLC, and Female DLC.  !!!Can someone add working example for this???  try this: 		headBlendData headData; 		_GET_PED_HEAD_BLEND_DATA(PLAYER_PED_ID(), &headData);  		SET_PED_HEAD_BLEND_DATA(PLAYER_PED_ID(), headData.shapeFirst, headData.shapeSecond, headData.shapeThird, headData.skinFirst, headData.skinSecond 			, headData.skinThird, headData.shapeMix, headData.skinMix, headData.skinThird, 0);   For more info please refer to this topic.  gtaforums.com/topic/858970-all-gtao-face-ids-pedset-ped-head-blend-data-explained
-- @module native
-- @submodule ped
-- @see SET_PED_HEAD_BLEND_DATA
-- @usage void SET_PED_HEAD_BLEND_DATA(Ped ped, int shapeFirstID, int shapeSecondID, int shapeThirdID, int skinFirstID, int skinSecondID, int skinThirdID, float shapeMix, float skinMix, float thirdMix, BOOL isParent);
-- @param ped Ped
-- @param shapeFirstID int
-- @param shapeSecondID int
-- @param shapeThirdID int
-- @param skinFirstID int
-- @param skinSecondID int
-- @param skinThirdID int
-- @param shapeMix float
-- @param skinMix float
-- @param thirdMix float
-- @param isParent BOOL
-- @return void
function SetPedHeadBlendData(ped, shapeFirstID, shapeSecondID, shapeThirdID, skinFirstID, skinSecondID, skinThirdID, shapeMix, skinMix, thirdMix, isParent) end

-- See SET_PED_HEAD_BLEND_DATA().
-- @module native
-- @submodule ped
-- @see UPDATE_PED_HEAD_BLEND_DATA
-- @usage void UPDATE_PED_HEAD_BLEND_DATA(Ped ped, float shapeMix, float skinMix, float thirdMix);
-- @param ped Ped
-- @param shapeMix float
-- @param skinMix float
-- @param thirdMix float
-- @return void
function UpdatePedHeadBlendData(ped, shapeMix, skinMix, thirdMix) end

-- OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0.   overlayID       Part                  Index, to disable 0               Blemishes             0 - 23, 255 1               Facial Hair           0 - 28, 255 2               Eyebrows              0 - 33, 255 3               Ageing                0 - 14, 255 4               Makeup                0 - 74, 255 5               Blush                 0 - 6, 255 6               Complexion            0 - 11, 255 7               Sun Damage            0 - 10, 255 8               Lipstick              0 - 9, 255 9               Moles/Freckles        0 - 17, 255 10              Chest Hair            0 - 16, 255 11              Body Blemishes        0 - 11, 255 12              Add Body Blemishes    0 - 1, 255
-- @module native
-- @submodule ped
-- @see SET_PED_HEAD_OVERLAY
-- @usage void SET_PED_HEAD_OVERLAY(Ped ped, int overlayID, int index, float opacity);
-- @param ped Ped
-- @param overlayID int
-- @param index int
-- @param opacity float
-- @return void
function SetPedHeadOverlay(ped, overlayID, index, opacity) end

-- @todo
-- @module native
-- @submodule ped
-- @see HAS_PED_HEAD_BLEND_FINISHED
-- @usage BOOL HAS_PED_HEAD_BLEND_FINISHED(Ped ped);
-- @param ped Ped
-- @return BOOL
function HasPedHeadBlendFinished(ped) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see GET_PED_PROP_INDEX
-- @usage int GET_PED_PROP_INDEX(Ped ped, int componentId);
-- @param ped Ped
-- @param componentId int
-- @return int
function GetPedPropIndex(ped, componentId) end

-- ComponentId can be set to various things based on what category you're wanting to set enum PedPropsData { 	PED_PROP_HATS = 0, 	PED_PROP_GLASSES = 1, 	PED_PROP_EARS = 2, 	PED_PROP_WATCHES = 3, }; Usage: SET_PED_PROP_INDEX(playerPed, PED_PROP_HATS, GET_NUMBER_OF_PED_PROP_DRAWABLE_VARIATIONS(playerPed, PED_PROP_HATS), GET_NUMBER_OF_PED_PROP_TEXTURE_VARIATIONS(playerPed, PED_PROP_HATS, 0), TRUE);  List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see SET_PED_PROP_INDEX
-- @usage void SET_PED_PROP_INDEX(Ped ped, int componentId, int drawableId, int TextureId, BOOL attach);
-- @param ped Ped
-- @param componentId int
-- @param drawableId int
-- @param TextureId int
-- @param attach BOOL
-- @return void
function SetPedPropIndex(ped, componentId, drawableId, TextureId, attach) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see KNOCK_OFF_PED_PROP
-- @usage void KNOCK_OFF_PED_PROP(Ped ped, BOOL p1, BOOL p2, BOOL p3, BOOL p4);
-- @param ped Ped
-- @param p1 BOOL
-- @param p2 BOOL
-- @param p3 BOOL
-- @param p4 BOOL
-- @return void
function KnockOffPedProp(ped, p1, p2, p3, p4) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see CLEAR_PED_PROP
-- @usage void CLEAR_PED_PROP(Ped ped, int propId);
-- @param ped Ped
-- @param propId int
-- @return void
function ClearPedProp(ped, propId) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see CLEAR_ALL_PED_PROPS
-- @usage void CLEAR_ALL_PED_PROPS(Ped ped);
-- @param ped Ped
-- @return void
function ClearAllPedProps(ped) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see GET_PED_PROP_TEXTURE_INDEX
-- @usage int GET_PED_PROP_TEXTURE_INDEX(Ped ped, int componentId);
-- @param ped Ped
-- @param componentId int
-- @return int
function GetPedPropTextureIndex(ped, componentId) end

-- works with AI::TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS to make a ped completely oblivious to all events going on around him
-- @module native
-- @submodule ped
-- @see SET_BLOCKING_OF_NON_TEMPORARY_EVENTS
-- @usage void SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetBlockingOfNonTemporaryEvents(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_BOUNDS_ORIENTATION
-- @usage void SET_PED_BOUNDS_ORIENTATION(Ped ped, float p1, float p2, float p3, float p4, float p5);
-- @param ped Ped
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @return void
function SetPedBoundsOrientation(ped, p1, p2, p3, p4, p5) end

-- PED::REGISTER_TARGET(l_216, PLAYER::PLAYER_PED_ID()); from re_prisonbreak.txt.  l_216 = RECSBRobber1
-- @module native
-- @submodule ped
-- @see REGISTER_TARGET
-- @usage void REGISTER_TARGET(Ped ped, Ped target);
-- @param ped Ped
-- @param target Ped
-- @return void
function RegisterTarget(ped, target) end

-- Based on TASK_COMBAT_HATED_TARGETS_AROUND_PED, the parameters are likely similar (PedHandle, and area to attack in).
-- @module native
-- @submodule ped
-- @see REGISTER_HATED_TARGETS_AROUND_PED
-- @usage void REGISTER_HATED_TARGETS_AROUND_PED(Ped ped, float radius);
-- @param ped Ped
-- @param radius float
-- @return void
function RegisterHatedTargetsAroundPed(ped, radius) end

-- Gets a random ped in the x/y/zRadius near the x/y/z coordinates passed.   Ped Types: Any = -1 Player = 1 Male = 4  Female = 5  Cop = 6 Human = 26 SWAT = 27  Animal = 28 Army = 29
-- @module native
-- @submodule ped
-- @see GET_RANDOM_PED_AT_COORD
-- @usage Ped GET_RANDOM_PED_AT_COORD(float x, float y, float z, float xRadius, float yRadius, float zRadius, int pedType);
-- @param x float
-- @param y float
-- @param z float
-- @param xRadius float
-- @param yRadius float
-- @param zRadius float
-- @param pedType int
-- @return Ped
function GetRandomPedAtCoord(x, y, z, xRadius, yRadius, zRadius, pedType) end

-- Gets the closest ped in a radius.  Ped Types: Any ped = -1 Player = 1 Male = 4  Female = 5  Cop = 6 Human = 26 SWAT = 27  Animal = 28 Army = 29  ------------------ P4 P5 P7 P8 1  0  x  x  = return nearest walking Ped 1  x  0  x  = return nearest walking Ped x  1  1  x  = return Ped you are using 0  0  x  x  = no effect 0  x  0  x  = no effect  x = can be 1 or 0. Does not have any obvious changes.  This function does not return ped who is: 1. Standing still 2. Driving 3. Fleeing 4. Attacking  This function only work if the ped is: 1. walking normally. 2. waiting to cross a road.  Note: PED::GET_PED_NEARBY_PEDS works for more peds.
-- @module native
-- @submodule ped
-- @see GET_CLOSEST_PED
-- @usage BOOL GET_CLOSEST_PED(float x, float y, float z, float radius, BOOL p4, BOOL p5, Ped* outPed, BOOL p7, BOOL p8, int pedType);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param p4 BOOL
-- @param p5 BOOL
-- @param outPed Ped*
-- @param p7 BOOL
-- @param p8 BOOL
-- @param pedType int
-- @return BOOL
function GetClosestPed(x, y, z, radius, p4, p5, outPed, p7, p8, pedType) end

-- Sets a value indicating whether scenario peds should be returned by the next call to a command that returns peds. Eg. GET_CLOSEST_PED.
-- @module native
-- @submodule ped
-- @see SET_SCENARIO_PEDS_TO_BE_RETURNED_BY_NEXT_COMMAND
-- @usage void SET_SCENARIO_PEDS_TO_BE_RETURNED_BY_NEXT_COMMAND(BOOL value);
-- @param value BOOL
-- @return void
function SetScenarioPedsToBeReturnedByNextCommand(value) end

-- The function specifically verifies the value is equal to, or less than 1.0f. If it is greater than 1.0f, the function does nothing at all.
-- @module native
-- @submodule ped
-- @see SET_DRIVER_ABILITY
-- @usage void SET_DRIVER_ABILITY(Ped driver, float ability);
-- @param driver Ped
-- @param ability float
-- @return void
function SetDriverAbility(driver, ability) end

-- range 0.0f - 1.0f
-- @module native
-- @submodule ped
-- @see SET_DRIVER_AGGRESSIVENESS
-- @usage void SET_DRIVER_AGGRESSIVENESS(Ped driver, float aggressiveness);
-- @param driver Ped
-- @param aggressiveness float
-- @return void
function SetDriverAggressiveness(driver, aggressiveness) end

-- Prevents the ped from going limp.  [Example: Can prevent peds from falling when standing on moving vehicles.]
-- @module native
-- @submodule ped
-- @see CAN_PED_RAGDOLL
-- @usage BOOL CAN_PED_RAGDOLL(Ped ped);
-- @param ped Ped
-- @return BOOL
function CanPedRagdoll(ped) end

-- time1- Time Ped is in ragdoll mode(ms)  time2- Unknown time, in milliseconds  ragdollType- 0 : Normal ragdoll 1 : Falls with stiff legs/body 2 : Narrow leg stumble(may not fall) 3 : Wide leg stumble(may not fall)  p4, p5, p6- No idea. In R*'s scripts they are usually either "true, true, false" or "false, false, false".     EDIT 3/11/16: unclear what 'mircoseconds' mean-- a microsecond is 1000x a ms, so time2 must be 1000x time1?  more testing needed.  -sob  Edit Mar 21, 2017: removed part about time2 being the microseconds version of time1. this just isn't correct. time2 is in milliseconds, and time1 and time2 don't seem to be connected in any way.
-- @module native
-- @submodule ped
-- @see SET_PED_TO_RAGDOLL
-- @usage BOOL SET_PED_TO_RAGDOLL(Ped ped, int time1, int time2, int ragdollType, BOOL p4, BOOL p5, BOOL p6);
-- @param ped Ped
-- @param time1 int
-- @param time2 int
-- @param ragdollType int
-- @param p4 BOOL
-- @param p5 BOOL
-- @param p6 BOOL
-- @return BOOL
function SetPedToRagdoll(ped, time1, time2, ragdollType, p4, p5, p6) end

-- Return variable is never used in R*'s scripts.  Not sure what p2 does. It seems like it would be a time judging by it's usage in R*'s scripts, but didn't seem to affect anything in my testings.  x, y, and z are coordinates, most likely to where the ped will fall.  p7 is probably the force of the fall, but untested, so I left the variable name the same.  p8 to p13 are always 0f in R*'s scripts.  (Simplified) Example of the usage of the function from R*'s scripts: ped::set_ped_to_ragdoll_with_fall(ped, 1500, 2000, 1, -entity::get_entity_forward_vector(ped), 1f, 0f, 0f, 0f, 0f, 0f, 0f);
-- @module native
-- @submodule ped
-- @see SET_PED_TO_RAGDOLL_WITH_FALL
-- @usage BOOL SET_PED_TO_RAGDOLL_WITH_FALL(Ped ped, int time, int p2, int ragdollType, float x, float y, float z, float p7, float p8, float p9, float p10, float p11, float p12, float p13);
-- @param ped Ped
-- @param time int
-- @param p2 int
-- @param ragdollType int
-- @param x float
-- @param y float
-- @param z float
-- @param p7 float
-- @param p8 float
-- @param p9 float
-- @param p10 float
-- @param p11 float
-- @param p12 float
-- @param p13 float
-- @return BOOL
function SetPedToRagdollWithFall(ped, time, p2, ragdollType, x, y, z, p7, p8, p9, p10, p11, p12, p13) end

-- Causes Ped to ragdoll on collision with any object (e.g Running into trashcan). If applied to player you will sometimes trip on the sidewalk.
-- @module native
-- @submodule ped
-- @see SET_PED_RAGDOLL_ON_COLLISION
-- @usage void SET_PED_RAGDOLL_ON_COLLISION(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedRagdollOnCollision(ped, toggle) end

-- If the ped handle passed through the parenthesis is in a ragdoll state this will return true.
-- @module native
-- @submodule ped
-- @see IS_PED_RAGDOLL
-- @usage BOOL IS_PED_RAGDOLL(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedRagdoll(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_RUNNING_RAGDOLL_TASK
-- @usage BOOL IS_PED_RUNNING_RAGDOLL_TASK(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedRunningRagdollTask(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_RAGDOLL_FORCE_FALL
-- @usage Any SET_PED_RAGDOLL_FORCE_FALL(Ped ped);
-- @param ped Ped
-- @return Any
function SetPedRagdollForceFall(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see RESET_PED_RAGDOLL_TIMER
-- @usage void RESET_PED_RAGDOLL_TIMER(Ped ped);
-- @param ped Ped
-- @return void
function ResetPedRagdollTimer(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_RAGDOLL
-- @usage void SET_PED_CAN_RAGDOLL(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanRagdoll(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_RUNNING_MOBILE_PHONE_TASK
-- @usage BOOL IS_PED_RUNNING_MOBILE_PHONE_TASK(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedRunningMobilePhoneTask(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_ANGLED_DEFENSIVE_AREA
-- @usage void SET_PED_ANGLED_DEFENSIVE_AREA(Ped ped, float p1, float p2, float p3, float p4, float p5, float p6, float p7, BOOL p8, BOOL p9);
-- @param ped Ped
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 float
-- @param p8 BOOL
-- @param p9 BOOL
-- @return void
function SetPedAngledDefensiveArea(ped, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_SPHERE_DEFENSIVE_AREA
-- @usage void SET_PED_SPHERE_DEFENSIVE_AREA(Ped ped, float x, float y, float z, float radius, BOOL p5, BOOL p6);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @param p5 BOOL
-- @param p6 BOOL
-- @return void
function SetPedSphereDefensiveArea(ped, x, y, z, radius, p5, p6) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_PED
-- @usage void SET_PED_DEFENSIVE_SPHERE_ATTACHED_TO_PED(Ped ped, Ped target, float xOffset, float yOffset, float zOffset, float radius, BOOL p6);
-- @param ped Ped
-- @param target Ped
-- @param xOffset float
-- @param yOffset float
-- @param zOffset float
-- @param radius float
-- @param p6 BOOL
-- @return void
function SetPedDefensiveSphereAttachedToPed(ped, target, xOffset, yOffset, zOffset, radius, p6) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_DEFENSIVE_AREA_ATTACHED_TO_PED
-- @usage void SET_PED_DEFENSIVE_AREA_ATTACHED_TO_PED(Ped ped, Ped attachPed, float p2, float p3, float p4, float p5, float p6, float p7, float p8, BOOL p9, BOOL p10);
-- @param ped Ped
-- @param attachPed Ped
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 float
-- @param p8 float
-- @param p9 BOOL
-- @param p10 BOOL
-- @return void
function SetPedDefensiveAreaAttachedToPed(ped, attachPed, p2, p3, p4, p5, p6, p7, p8, p9, p10) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_DEFENSIVE_AREA_DIRECTION
-- @usage void SET_PED_DEFENSIVE_AREA_DIRECTION(Ped ped, float p1, float p2, float p3, BOOL p4);
-- @param ped Ped
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 BOOL
-- @return void
function SetPedDefensiveAreaDirection(ped, p1, p2, p3, p4) end

-- Ped will no longer get angry when you stay near him.
-- @module native
-- @submodule ped
-- @see REMOVE_PED_DEFENSIVE_AREA
-- @usage void REMOVE_PED_DEFENSIVE_AREA(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function RemovePedDefensiveArea(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_DEFENSIVE_AREA_POSITION
-- @usage Vector3 GET_PED_DEFENSIVE_AREA_POSITION(Ped ped, BOOL p1);
-- @param ped Ped
-- @param p1 BOOL
-- @return Vector3
function GetPedDefensiveAreaPosition(ped, p1) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_PREFERRED_COVER_SET
-- @usage void SET_PED_PREFERRED_COVER_SET(Ped ped, Any itemSet);
-- @param ped Ped
-- @param itemSet Any
-- @return void
function SetPedPreferredCoverSet(ped, itemSet) end

-- @todo
-- @module native
-- @submodule ped
-- @see REMOVE_PED_PREFERRED_COVER_SET
-- @usage void REMOVE_PED_PREFERRED_COVER_SET(Ped ped);
-- @param ped Ped
-- @return void
function RemovePedPreferredCoverSet(ped) end

-- It will revive/cure the injured ped. The condition is ped must not be dead.  Upon setting and converting the health int, found, if health falls below 5, the ped will lay on the ground in pain(Maximum default health is 100).  This function is well suited there.
-- @module native
-- @submodule ped
-- @see REVIVE_INJURED_PED
-- @usage void REVIVE_INJURED_PED(Ped ped);
-- @param ped Ped
-- @return void
function ReviveInjuredPed(ped) end

-- This function will simply bring the dead person back to life.  Try not to use it alone, since using this function alone, will make peds fall through ground in hell(well for the most of the times).  Instead, before calling this function, you may want to declare the position, where your Resurrected ped to be spawn at.(For instance, Around 2 floats of Player's current position.)   Also, disabling any assigned task immediately helped in the number of scenarios, where If you want peds to perform certain decided tasks.
-- @module native
-- @submodule ped
-- @see RESURRECT_PED
-- @usage void RESURRECT_PED(Ped ped);
-- @param ped Ped
-- @return void
function ResurrectPed(ped) end

-- NOTE: Debugging functions are not present in the retail version of the game.  *untested but char *name could also be a hash for a localized string
-- @module native
-- @submodule ped
-- @see SET_PED_NAME_DEBUG
-- @usage void SET_PED_NAME_DEBUG(Ped ped, char* name);
-- @param ped Ped
-- @param name char*
-- @return void
function SetPedNameDebug(ped, name) end

-- Gets the offset the specified ped has moved since the previous tick.  If worldSpace is false, the returned offset is relative to the ped. That is, if the ped has moved 1 meter right and 5 meters forward, it'll return 1,5,0.  If worldSpace is true, the returned offset is relative to the world. That is, if the ped has moved 1 meter on the X axis and 5 meters on the Y axis, it'll return 1,5,0.
-- @module native
-- @submodule ped
-- @see GET_PED_EXTRACTED_DISPLACEMENT
-- @usage Vector3 GET_PED_EXTRACTED_DISPLACEMENT(Ped ped, BOOL worldSpace);
-- @param ped Ped
-- @param worldSpace BOOL
-- @return Vector3
function GetPedExtractedDisplacement(ped, worldSpace) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_DIES_WHEN_INJURED
-- @usage Any SET_PED_DIES_WHEN_INJURED(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return Any
function SetPedDiesWhenInjured(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_ENABLE_WEAPON_BLOCKING
-- @usage Any SET_PED_ENABLE_WEAPON_BLOCKING(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return Any
function SetPedEnableWeaponBlocking(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see RESET_PED_VISIBLE_DAMAGE
-- @usage Any RESET_PED_VISIBLE_DAMAGE(Ped ped);
-- @param ped Ped
-- @return Any
function ResetPedVisibleDamage(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see APPLY_PED_BLOOD_DAMAGE_BY_ZONE
-- @usage void APPLY_PED_BLOOD_DAMAGE_BY_ZONE(Ped ped, Any p1, float p2, float p3, Any p4);
-- @param ped Ped
-- @param p1 Any
-- @param p2 float
-- @param p3 float
-- @param p4 Any
-- @return void
function ApplyPedBloodDamageByZone(ped, p1, p2, p3, p4) end

-- Found one occurence in re_crashrescue.c4  PED::APPLY_PED_BLOOD(l_4B, 3, 0.0, 0.0, 0.0, "wound_sheet");
-- @module native
-- @submodule ped
-- @see APPLY_PED_BLOOD
-- @usage void APPLY_PED_BLOOD(Ped ped, int boneIndex, float xRot, float yRot, float zRot, char* woundType);
-- @param ped Ped
-- @param boneIndex int
-- @param xRot float
-- @param yRot float
-- @param zRot float
-- @param woundType char*
-- @return void
function ApplyPedBlood(ped, boneIndex, xRot, yRot, zRot, woundType) end

-- @todo
-- @module native
-- @submodule ped
-- @see APPLY_PED_BLOOD_BY_ZONE
-- @usage void APPLY_PED_BLOOD_BY_ZONE(Ped ped, Any p1, float p2, float p3, Any* p4);
-- @param ped Ped
-- @param p1 Any
-- @param p2 float
-- @param p3 float
-- @param p4 Any*
-- @return void
function ApplyPedBloodByZone(ped, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule ped
-- @see APPLY_PED_BLOOD_SPECIFIC
-- @usage void APPLY_PED_BLOOD_SPECIFIC(Ped ped, Any p1, float p2, float p3, float p4, float p5, Any p6, float p7, Any* p8);
-- @param ped Ped
-- @param p1 Any
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 Any
-- @param p7 float
-- @param p8 Any*
-- @return void
function ApplyPedBloodSpecific(ped, p1, p2, p3, p4, p5, p6, p7, p8) end

-- APPLY_PED_DAMAGE_DECAL(ped, 1, 0.5f, 0.513f, 0f, 1f, unk, 0, 0, "blushing");
-- @module native
-- @submodule ped
-- @see APPLY_PED_DAMAGE_DECAL
-- @usage void APPLY_PED_DAMAGE_DECAL(Ped ped, int p1, float p2, float p3, float p4, float p5, float p6, int p7, BOOL p8, char* p9);
-- @param ped Ped
-- @param p1 int
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 float
-- @param p7 int
-- @param p8 BOOL
-- @param p9 char*
-- @return void
function ApplyPedDamageDecal(ped, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

-- Damage Packs:  "SCR_TrevorTreeBang" "HOSPITAL_0" "HOSPITAL_1" "HOSPITAL_2" "HOSPITAL_3" "HOSPITAL_4" "HOSPITAL_5" "HOSPITAL_6" "HOSPITAL_7" "HOSPITAL_8" "HOSPITAL_9" "SCR_Dumpster" "BigHitByVehicle" "SCR_Finale_Michael_Face" "SCR_Franklin_finb" "SCR_Finale_Michael" "SCR_Franklin_finb2" "Explosion_Med" "SCR_Torture" "SCR_TracySplash" "Skin_Melee_0"  Additional damage packs:  gist.github.com/alexguirre/f3f47f75ddcf617f416f3c8a55ae2227
-- @module native
-- @submodule ped
-- @see APPLY_PED_DAMAGE_PACK
-- @usage void APPLY_PED_DAMAGE_PACK(Ped ped, char* damagePack, float damage, float mult);
-- @param ped Ped
-- @param damagePack char*
-- @param damage float
-- @param mult float
-- @return void
function ApplyPedDamagePack(ped, damagePack, damage, mult) end

-- @todo
-- @module native
-- @submodule ped
-- @see CLEAR_PED_BLOOD_DAMAGE
-- @usage void CLEAR_PED_BLOOD_DAMAGE(Ped ped);
-- @param ped Ped
-- @return void
function ClearPedBloodDamage(ped) end

-- Somehow related to changing ped's clothes.
-- @module native
-- @submodule ped
-- @see CLEAR_PED_BLOOD_DAMAGE_BY_ZONE
-- @usage void CLEAR_PED_BLOOD_DAMAGE_BY_ZONE(Ped ped, int p1);
-- @param ped Ped
-- @param p1 int
-- @return void
function ClearPedBloodDamageByZone(ped, p1) end

-- @todo
-- @module native
-- @submodule ped
-- @see HIDE_PED_BLOOD_DAMAGE_BY_ZONE
-- @usage void HIDE_PED_BLOOD_DAMAGE_BY_ZONE(Ped ped, Any p1, BOOL p2);
-- @param ped Ped
-- @param p1 Any
-- @param p2 BOOL
-- @return void
function HidePedBloodDamageByZone(ped, p1, p2) end

-- p1: from 0 to 5 in the b617d scripts. p2: "blushing" and "ALL" found in the b617d scripts.
-- @module native
-- @submodule ped
-- @see CLEAR_PED_DAMAGE_DECAL_BY_ZONE
-- @usage void CLEAR_PED_DAMAGE_DECAL_BY_ZONE(Ped ped, int p1, char* p2);
-- @param ped Ped
-- @param p1 int
-- @param p2 char*
-- @return void
function ClearPedDamageDecalByZone(ped, p1, p2) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_DECORATIONS_STATE
-- @usage Any GET_PED_DECORATIONS_STATE(Ped ped);
-- @param ped Ped
-- @return Any
function GetPedDecorationsState(ped) end

-- It clears the wetness of the selected Ped/Player. Clothes have to be wet to notice the difference.
-- @module native
-- @submodule ped
-- @see CLEAR_PED_WETNESS
-- @usage void CLEAR_PED_WETNESS(Ped ped);
-- @param ped Ped
-- @return void
function ClearPedWetness(ped) end

-- It adds the wetness level to the player clothing/outfit. As if player just got out from water surface.
-- @module native
-- @submodule ped
-- @see SET_PED_WETNESS_HEIGHT
-- @usage void SET_PED_WETNESS_HEIGHT(Ped ped, float height);
-- @param ped Ped
-- @param height float
-- @return void
function SetPedWetnessHeight(ped, height) end

-- combined with PED::SET_PED_WETNESS_HEIGHT(), this native makes the ped drenched in water up to the height specified in the other function
-- @module native
-- @submodule ped
-- @see SET_PED_WETNESS_ENABLED_THIS_FRAME
-- @usage void SET_PED_WETNESS_ENABLED_THIS_FRAME(Ped ped);
-- @param ped Ped
-- @return void
function SetPedWetnessEnabledThisFrame(ped) end

-- Sweat is set to 100.0 or 0.0 in the decompiled scripts.
-- @module native
-- @submodule ped
-- @see SET_PED_SWEAT
-- @usage void SET_PED_SWEAT(Ped ped, float sweat);
-- @param ped Ped
-- @param sweat float
-- @return void
function SetPedSweat(ped, sweat) end

-- @todo
-- @module native
-- @submodule ped
-- @see CLEAR_PED_DECORATIONS
-- @usage void CLEAR_PED_DECORATIONS(Ped ped);
-- @param ped Ped
-- @return void
function ClearPedDecorations(ped) end

-- Despite this function's name, it simply returns whether the specified handle is a Ped.
-- @module native
-- @submodule ped
-- @see WAS_PED_SKELETON_UPDATED
-- @usage BOOL WAS_PED_SKELETON_UPDATED(Ped ped);
-- @param ped Ped
-- @return BOOL
function WasPedSkeletonUpdated(ped) end

-- Gets the position of the specified bone of the specified ped.  ped: The ped to get the position of a bone from. boneId: The ID of the bone to get the position from. This is NOT the index. offsetX: The X-component of the offset to add to the position relative to the bone's rotation. offsetY: The Y-component of the offset to add to the position relative to the bone's rotation. offsetZ: The Z-component of the offset to add to the position relative to the bone's rotation.
-- @module native
-- @submodule ped
-- @see GET_PED_BONE_COORDS
-- @usage Vector3 GET_PED_BONE_COORDS(Ped ped, int boneId, float offsetX, float offsetY, float offsetZ);
-- @param ped Ped
-- @param boneId int
-- @param offsetX float
-- @param offsetY float
-- @param offsetZ float
-- @return Vector3
function GetPedBoneCoords(ped, boneId, offsetX, offsetY, offsetZ) end

-- Creates a new NaturalMotion message.  startImmediately: If set to true, the character will perform the message the moment it receives it by GIVE_PED_NM_MESSAGE. If false, the Ped will get the message but won't perform it yet. While it's a boolean value, if negative, the message will not be initialized. messageId: The ID of the NaturalMotion message.  If a message already exists, this function does nothing. A message exists until the point it has been successfully dispatched by GIVE_PED_NM_MESSAGE.
-- @module native
-- @submodule ped
-- @see CREATE_NM_MESSAGE
-- @usage void CREATE_NM_MESSAGE(BOOL startImmediately, int messageId);
-- @param startImmediately BOOL
-- @param messageId int
-- @return void
function CreateNmMessage(startImmediately, messageId) end

-- Sends the message that was created by a call to CREATE_NM_MESSAGE to the specified Ped.  If a message hasn't been created already, this function does nothing. If the Ped is not ragdolled with Euphoria enabled, this function does nothing. The following call can be used to ragdoll the Ped with Euphoria enabled: SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0);  Call order: SET_PED_TO_RAGDOLL CREATE_NM_MESSAGE GIVE_PED_NM_MESSAGE  Multiple messages can be chained. Eg. to make the ped stagger and swing his arms around, the following calls can be made: SET_PED_TO_RAGDOLL(ped, 4000, 5000, 1, 1, 1, 0); CREATE_NM_MESSAGE(true, 0); // stopAllBehaviours - Stop all other behaviours, in case the Ped is already doing some Euphoria stuff. GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped. CREATE_NM_MESSAGE(true, 1151); // staggerFall - Attempt to walk while falling. GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped. CREATE_NM_MESSAGE(true, 372); // armsWindmill - Swing arms around. GIVE_PED_NM_MESSAGE(ped); // Dispatch message to Ped.
-- @module native
-- @submodule ped
-- @see GIVE_PED_NM_MESSAGE
-- @usage void GIVE_PED_NM_MESSAGE(Ped ped);
-- @param ped Ped
-- @return void
function GivePedNmMessage(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see ADD_SCENARIO_BLOCKING_AREA
-- @usage Any ADD_SCENARIO_BLOCKING_AREA(float p0, float p1, float p2, float p3, float p4, float p5, BOOL p6, BOOL p7, BOOL p8, BOOL p9);
-- @param p0 float
-- @param p1 float
-- @param p2 float
-- @param p3 float
-- @param p4 float
-- @param p5 float
-- @param p6 BOOL
-- @param p7 BOOL
-- @param p8 BOOL
-- @param p9 BOOL
-- @return Any
function AddScenarioBlockingArea(p0, p1, p2, p3, p4, p5, p6, p7, p8, p9) end

-- @todo
-- @module native
-- @submodule ped
-- @see REMOVE_SCENARIO_BLOCKING_AREAS
-- @usage void REMOVE_SCENARIO_BLOCKING_AREAS();
-- @return void
function RemoveScenarioBlockingAreas() end

-- @todo
-- @module native
-- @submodule ped
-- @see REMOVE_SCENARIO_BLOCKING_AREA
-- @usage void REMOVE_SCENARIO_BLOCKING_AREA(Any p0, BOOL p1);
-- @param p0 Any
-- @param p1 BOOL
-- @return void
function RemoveScenarioBlockingArea(p0, p1) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_SCENARIO_PEDS_SPAWN_IN_SPHERE_AREA
-- @usage void SET_SCENARIO_PEDS_SPAWN_IN_SPHERE_AREA(Any p0, Any p1, Any p2, Any p3, Any p4);
-- @param p0 Any
-- @param p1 Any
-- @param p2 Any
-- @param p3 Any
-- @param p4 Any
-- @return void
function SetScenarioPedsSpawnInSphereArea(p0, p1, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_USING_SCENARIO
-- @usage BOOL IS_PED_USING_SCENARIO(Ped ped, char* scenario);
-- @param ped Ped
-- @param scenario char*
-- @return BOOL
function IsPedUsingScenario(ped, scenario) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_USING_ANY_SCENARIO
-- @usage BOOL IS_PED_USING_ANY_SCENARIO(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedUsingAnyScenario(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see PLAY_FACIAL_ANIM
-- @usage void PLAY_FACIAL_ANIM(Ped ped, char* animName, char* animDict);
-- @param ped Ped
-- @param animName char*
-- @param animDict char*
-- @return void
function PlayFacialAnim(ped, animName, animDict) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_FACIAL_IDLE_ANIM_OVERRIDE
-- @usage void SET_FACIAL_IDLE_ANIM_OVERRIDE(Ped ped, char* animName, char* animDict);
-- @param ped Ped
-- @param animName char*
-- @param animDict char*
-- @return void
function SetFacialIdleAnimOverride(ped, animName, animDict) end

-- @todo
-- @module native
-- @submodule ped
-- @see CLEAR_FACIAL_IDLE_ANIM_OVERRIDE
-- @usage void CLEAR_FACIAL_IDLE_ANIM_OVERRIDE(Ped ped);
-- @param ped Ped
-- @return void
function ClearFacialIdleAnimOverride(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_PLAY_GESTURE_ANIMS
-- @usage void SET_PED_CAN_PLAY_GESTURE_ANIMS(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanPlayGestureAnims(ped, toggle) end

-- p2 usually 0
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_PLAY_VISEME_ANIMS
-- @usage void SET_PED_CAN_PLAY_VISEME_ANIMS(Ped ped, BOOL toggle, BOOL p2);
-- @param ped Ped
-- @param toggle BOOL
-- @param p2 BOOL
-- @return void
function SetPedCanPlayVisemeAnims(ped, toggle, p2) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_PLAY_AMBIENT_ANIMS
-- @usage void SET_PED_CAN_PLAY_AMBIENT_ANIMS(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanPlayAmbientAnims(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_PLAY_AMBIENT_BASE_ANIMS
-- @usage void SET_PED_CAN_PLAY_AMBIENT_BASE_ANIMS(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanPlayAmbientBaseAnims(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_ARM_IK
-- @usage void SET_PED_CAN_ARM_IK(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanArmIk(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_HEAD_IK
-- @usage void SET_PED_CAN_HEAD_IK(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanHeadIk(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_LEG_IK
-- @usage void SET_PED_CAN_LEG_IK(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanLegIk(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_TORSO_IK
-- @usage void SET_PED_CAN_TORSO_IK(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanTorsoIk(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_USE_AUTO_CONVERSATION_LOOKAT
-- @usage void SET_PED_CAN_USE_AUTO_CONVERSATION_LOOKAT(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanUseAutoConversationLookat(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_HEADTRACKING_PED
-- @usage BOOL IS_PED_HEADTRACKING_PED(Ped ped1, Ped ped2);
-- @param ped1 Ped
-- @param ped2 Ped
-- @return BOOL
function IsPedHeadtrackingPed(ped1, ped2) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_HEADTRACKING_ENTITY
-- @usage BOOL IS_PED_HEADTRACKING_ENTITY(Ped ped, Entity entity);
-- @param ped Ped
-- @param entity Entity
-- @return BOOL
function IsPedHeadtrackingEntity(ped, entity) end

-- This is only called once in the scripts.  sub_1CD9(&l_49, 0, getElem(3, &l_34, 4), "MICHAEL", 0, 1);                     sub_1CA8("WORLD_HUMAN_SMOKING", 2);                     PED::SET_PED_PRIMARY_LOOKAT(getElem(3, &l_34, 4), PLAYER::PLAYER_PED_ID());
-- @module native
-- @submodule ped
-- @see SET_PED_PRIMARY_LOOKAT
-- @usage void SET_PED_PRIMARY_LOOKAT(Ped ped, Ped lookAt);
-- @param ped Ped
-- @param lookAt Ped
-- @return void
function SetPedPrimaryLookat(ped, lookAt) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CLOTH_PRONE
-- @usage void SET_PED_CLOTH_PRONE(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return void
function SetPedClothProne(p0, p1) end

-- Research help : pastebin.com/fPL1cSwB New items added with underscore as first char -----------------------------------------------------------------------  enum PedConfigFlags { 	PED_FLAG_CAN_FLY_THRU_WINDSCREEN = 32,         PED_FLAG_DIES_BY_RAGDOLL = 33, 	PED_FLAG_NO_COLLISION = 52,         _PED_FLAG_IS_SHOOTING = 58,         _PED_FLAG_IS_ON_GROUND = 60, 	PED_FLAG_NO_COLLIDE = 62, 	PED_FLAG_DEAD = 71,         PED_FLAG_IS_SNIPER_SCOPE_ACTIVE = 72, 	PED_FLAG_SUPER_DEAD = 73,         _PED_FLAG_IS_IN_AIR = 76, 	PED_FLAG_IS_AIMING = 78, 	PED_FLAG_DRUNK = 100,         _PED_FLAG_IS_NOT_RAGDOLL_AND_NOT_PLAYING_ANIM = 104,         PED_FLAG_NO_PLAYER_MELEE = 122, 	PED_FLAG_NM_MESSAGE_466 = 125, 	PED_FLAG_INJURED_LIMP = 166, 	PED_FLAG_INJURED_LIMP_2 = 170, 	PED_FLAG_INJURED_DOWN = 187, 	PED_FLAG_SHRINK = 223,         PED_FLAG_MELEE_COMBAT = 224,         _PED_FLAG_IS_ON_STAIRS = 253,         _PED_FLAG_HAS_ONE_LEG_ON_GROUND = 276, 	PED_FLAG_NO_WRITHE = 281, 	PED_FLAG_FREEZE = 292, 	PED_FLAG_IS_STILL = 301,         PED_FLAG_NO_PED_MELEE = 314,         _PED_SWITCHING_WEAPON = 331, 	PED_FLAG_ALPHA = 410, };  (*) When flagId is set to 33 and the bool value to true, peds will die by starting ragdoll, so you should set this flag to false when you resurrect a ped. When flagId is set to 62 and the boolvalue to false this happens: Ped is taken out of vehicle and can't get back in when jacking their empty vehicle. If in a plane it falls from the sky and crashes. Sometimes peds vehicle continue to drive the route without its driver who's running after.   (*) JUMPING CHANGES  60,61,104 TO FALSE BEING ON WATER CHANGES 60,61 TO FALSE AND 65,66,168 TO TRUE FALLING CHANGES 60,61,104,276 TO FALSE AND TO 76 TRUE DYING CHANGES 60,61,104,276* TO FALSE AND (NONE) TO TRUE DYING MAKES 60,61,104 TO FALSE BEING IN A CAR CHANGES 60,79,104 TO FALSE AND 62 TO TRUE  (*)Maximum value for flagId is 0x1AA (426) in b944. ID 0xF0 (240) appears to be a special flag which is handled different compared to the others IDs.
-- @module native
-- @submodule ped
-- @see SET_PED_CONFIG_FLAG
-- @usage void SET_PED_CONFIG_FLAG(Ped ped, int flagId, BOOL value);
-- @param ped Ped
-- @param flagId int
-- @param value BOOL
-- @return void
function SetPedConfigFlag(ped, flagId, value) end

-- PED::SET_PED_RESET_FLAG(PLAYER::PLAYER_PED_ID(), 240, 1);
-- @module native
-- @submodule ped
-- @see SET_PED_RESET_FLAG
-- @usage void SET_PED_RESET_FLAG(Ped ped, int flagId, BOOL doReset);
-- @param ped Ped
-- @param flagId int
-- @param doReset BOOL
-- @return void
function SetPedResetFlag(ped, flagId, doReset) end

-- p2 is always 1 in the scripts.  if (GET_PED_CONFIG_FLAG(ped, 78, 1)) = returns true if ped is aiming/shooting a gun
-- @module native
-- @submodule ped
-- @see GET_PED_CONFIG_FLAG
-- @usage BOOL GET_PED_CONFIG_FLAG(Ped ped, int flagId, BOOL p2);
-- @param ped Ped
-- @param flagId int
-- @param p2 BOOL
-- @return BOOL
function GetPedConfigFlag(ped, flagId, p2) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_RESET_FLAG
-- @usage BOOL GET_PED_RESET_FLAG(Ped ped, int flagId);
-- @param ped Ped
-- @param flagId int
-- @return BOOL
function GetPedResetFlag(ped, flagId) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_GROUP_MEMBER_PASSENGER_INDEX
-- @usage void SET_PED_GROUP_MEMBER_PASSENGER_INDEX(Ped ped, int index);
-- @param ped Ped
-- @param index int
-- @return void
function SetPedGroupMemberPassengerIndex(ped, index) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_EVASIVE_DIVE
-- @usage void SET_PED_CAN_EVASIVE_DIVE(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanEvasiveDive(ped, toggle) end

-- Presumably returns the Entity that the Ped is currently diving out of the way of.  var num3;     if (PED::IS_PED_EVASIVE_DIVING(A_0, &num3) != 0)         if (ENTITY::IS_ENTITY_A_VEHICLE(num3) != 0)
-- @module native
-- @submodule ped
-- @see IS_PED_EVASIVE_DIVING
-- @usage BOOL IS_PED_EVASIVE_DIVING(Ped ped, Entity* evadingEntity);
-- @param ped Ped
-- @param evadingEntity Entity*
-- @return BOOL
function IsPedEvasiveDiving(ped, evadingEntity) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_SHOOTS_AT_COORD
-- @usage void SET_PED_SHOOTS_AT_COORD(Ped ped, float x, float y, float z, BOOL toggle);
-- @param ped Ped
-- @param x float
-- @param y float
-- @param z float
-- @param toggle BOOL
-- @return void
function SetPedShootsAtCoord(ped, x, y, z, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_MODEL_IS_SUPPRESSED
-- @usage void SET_PED_MODEL_IS_SUPPRESSED(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedModelIsSuppressed(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see STOP_ANY_PED_MODEL_BEING_SUPPRESSED
-- @usage void STOP_ANY_PED_MODEL_BEING_SUPPRESSED();
-- @return void
function StopAnyPedModelBeingSuppressed() end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_BE_TARGETED_WHEN_INJURED
-- @usage void SET_PED_CAN_BE_TARGETED_WHEN_INJURED(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanBeTargetedWhenInjured(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_GENERATES_DEAD_BODY_EVENTS
-- @usage void SET_PED_GENERATES_DEAD_BODY_EVENTS(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedGeneratesDeadBodyEvents(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT
-- @usage void SET_PED_CAN_RAGDOLL_FROM_PLAYER_IMPACT(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanRagdollFromPlayerImpact(ped, toggle) end

-- PoliceMotorcycleHelmet	1024	 RegularMotorcycleHelmet	4096	 FiremanHelmet	16384	 PilotHeadset	32768	 PilotHelmet	65536 -- p2 is generally 4096 or 16384 in the scripts. p1 varies between 1 and 0.
-- @module native
-- @submodule ped
-- @see GIVE_PED_HELMET
-- @usage void GIVE_PED_HELMET(Ped ped, BOOL cannotRemove, int helmetFlag, int textureIndex);
-- @param ped Ped
-- @param cannotRemove BOOL
-- @param helmetFlag int
-- @param textureIndex int
-- @return void
function GivePedHelmet(ped, cannotRemove, helmetFlag, textureIndex) end

-- @todo
-- @module native
-- @submodule ped
-- @see REMOVE_PED_HELMET
-- @usage void REMOVE_PED_HELMET(Ped ped, BOOL instantly);
-- @param ped Ped
-- @param instantly BOOL
-- @return void
function RemovePedHelmet(ped, instantly) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_HELMET
-- @usage void SET_PED_HELMET(Ped ped, BOOL canWearHelmet);
-- @param ped Ped
-- @param canWearHelmet BOOL
-- @return void
function SetPedHelmet(ped, canWearHelmet) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_HELMET_FLAG
-- @usage void SET_PED_HELMET_FLAG(Ped ped, int helmetFlag);
-- @param ped Ped
-- @param helmetFlag int
-- @return void
function SetPedHelmetFlag(ped, helmetFlag) end

-- List of component/props ID gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
-- @module native
-- @submodule ped
-- @see SET_PED_HELMET_PROP_INDEX
-- @usage void SET_PED_HELMET_PROP_INDEX(Ped ped, int propIndex);
-- @param ped Ped
-- @param propIndex int
-- @return void
function SetPedHelmetPropIndex(ped, propIndex) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_HELMET_TEXTURE_INDEX
-- @usage void SET_PED_HELMET_TEXTURE_INDEX(Ped ped, int textureIndex);
-- @param ped Ped
-- @param textureIndex int
-- @return void
function SetPedHelmetTextureIndex(ped, textureIndex) end

-- Returns true if the ped passed through the parenthesis is wearing a helmet.
-- @module native
-- @submodule ped
-- @see IS_PED_WEARING_HELMET
-- @usage BOOL IS_PED_WEARING_HELMET(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedWearingHelmet(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_TO_LOAD_COVER
-- @usage void SET_PED_TO_LOAD_COVER(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedToLoadCover(ped, toggle) end

-- It simply makes the said ped to cower behind cover object(wall, desk, car)  Peds flee attributes must be set to not to flee, first. Else, most of the peds, will just flee from gunshot sounds or any other panic situations.
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_COWER_IN_COVER
-- @usage void SET_PED_CAN_COWER_IN_COVER(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanCowerInCover(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_PEEK_IN_COVER
-- @usage void SET_PED_CAN_PEEK_IN_COVER(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanPeekInCover(ped, toggle) end

-- Points to the same function as for example GET_RANDOM_VEHICLE_MODEL_IN_MEMORY and it does absolutely nothing.
-- @module native
-- @submodule ped
-- @see SET_PED_PLAYS_HEAD_ON_HORN_ANIM_WHEN_DIES_IN_VEHICLE
-- @usage void SET_PED_PLAYS_HEAD_ON_HORN_ANIM_WHEN_DIES_IN_VEHICLE(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedPlaysHeadOnHornAnimWhenDiesInVehicle(ped, toggle) end

-- "IK" stands for "Inverse kinematics." I assume this has something to do with how the ped uses his legs to balance. In the scripts, the second parameter is always an int with a value of 2, 0, or sometimes 1
-- @module native
-- @submodule ped
-- @see SET_PED_LEG_IK_MODE
-- @usage void SET_PED_LEG_IK_MODE(Ped ped, int mode);
-- @param ped Ped
-- @param mode int
-- @return void
function SetPedLegIkMode(ped, mode) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_MOTION_BLUR
-- @usage void SET_PED_MOTION_BLUR(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedMotionBlur(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_CAN_SWITCH_WEAPON
-- @usage void SET_PED_CAN_SWITCH_WEAPON(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedCanSwitchWeapon(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_DIES_INSTANTLY_IN_WATER
-- @usage void SET_PED_DIES_INSTANTLY_IN_WATER(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedDiesInstantlyInWater(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see STOP_PED_WEAPON_FIRING_WHEN_DROPPED
-- @usage void STOP_PED_WEAPON_FIRING_WHEN_DROPPED(Ped ped);
-- @param ped Ped
-- @return void
function StopPedWeaponFiringWhenDropped(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_SCRIPTED_ANIM_SEAT_OFFSET
-- @usage void SET_SCRIPTED_ANIM_SEAT_OFFSET(Ped ped, float p1);
-- @param ped Ped
-- @param p1 float
-- @return void
function SetScriptedAnimSeatOffset(ped, p1) end

-- 0 - Stationary (Will just stand in place) 1 - Defensive (Will try to find cover and very likely to blind fire) 2 - Offensive (Will attempt to charge at enemy but take cover as well) 3 - Suicidal Offensive (Will try to flank enemy in a suicidal attack)
-- @module native
-- @submodule ped
-- @see SET_PED_COMBAT_MOVEMENT
-- @usage void SET_PED_COMBAT_MOVEMENT(Ped ped, int combatMovement);
-- @param ped Ped
-- @param combatMovement int
-- @return void
function SetPedCombatMovement(ped, combatMovement) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_COMBAT_MOVEMENT
-- @usage int GET_PED_COMBAT_MOVEMENT(Ped ped);
-- @param ped Ped
-- @return int
function GetPedCombatMovement(ped) end

-- 100 would equal attack less then 50ish would mean run away  Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described in combatbehaviour.meta: 0: CA_Poor 1: CA_Average 2: CA_Professional  Tested this and got the same results as the first explanation here. Could not find any difference between 0, 1 and 2.
-- @module native
-- @submodule ped
-- @see SET_PED_COMBAT_ABILITY
-- @usage void SET_PED_COMBAT_ABILITY(Ped ped, int p1);
-- @param ped Ped
-- @param p1 int
-- @return void
function SetPedCombatAbility(ped, p1) end

-- Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described as AttackRange in combatbehaviour.meta: 0: CR_Near 1: CR_Medium 2: CR_Far
-- @module native
-- @submodule ped
-- @see SET_PED_COMBAT_RANGE
-- @usage void SET_PED_COMBAT_RANGE(Ped ped, int p1);
-- @param ped Ped
-- @param p1 int
-- @return void
function SetPedCombatRange(ped, p1) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_COMBAT_RANGE
-- @usage Any GET_PED_COMBAT_RANGE(Ped ped);
-- @param ped Ped
-- @return Any
function GetPedCombatRange(ped) end

-- These combat attributes seem to be the same as the BehaviourFlags from combatbehaviour.meta. So far, these are the equivalents found: enum CombatAttributes { 	BF_CanUseCover = 0, 	BF_CanUseVehicles = 1, 	BF_CanDoDrivebys = 2, 	BF_CanLeaveVehicle = 3, 	BF_CanFightArmedPedsWhenNotArmed = 5, 	BF_CanTauntInVehicle = 20, 	BF_AlwaysFight = 46, 	BF_IgnoreTrafficWhenDriving = 52,         BF_FreezeMovement = 292,         BF_PlayerCanUseFiringWeapons = 1424 };  8 = ? 9 = ? 13 = ? 14 ?  Research thread: gtaforums.com/topic/833391-researchguide-combat-behaviour-flags/
-- @module native
-- @submodule ped
-- @see SET_PED_COMBAT_ATTRIBUTES
-- @usage void SET_PED_COMBAT_ATTRIBUTES(Ped ped, int attributeIndex, BOOL enabled);
-- @param ped Ped
-- @param attributeIndex int
-- @param enabled BOOL
-- @return void
function SetPedCombatAttributes(ped, attributeIndex, enabled) end

-- Only 1 and 2 appear in the scripts. combatbehaviour.meta seems to only have TLR_SearchForTarget for all peds, but we don't know if that's 1 or 2.
-- @module native
-- @submodule ped
-- @see SET_PED_TARGET_LOSS_RESPONSE
-- @usage void SET_PED_TARGET_LOSS_RESPONSE(Ped ped, int responseType);
-- @param ped Ped
-- @param responseType int
-- @return void
function SetPedTargetLossResponse(ped, responseType) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_PERFORMING_STEALTH_KILL
-- @usage BOOL IS_PED_PERFORMING_STEALTH_KILL(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedPerformingStealthKill(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_BEING_STEALTH_KILLED
-- @usage BOOL IS_PED_BEING_STEALTH_KILLED(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedBeingStealthKilled(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_MELEE_TARGET_FOR_PED
-- @usage Ped GET_MELEE_TARGET_FOR_PED(Ped ped);
-- @param ped Ped
-- @return Ped
function GetMeleeTargetForPed(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see WAS_PED_KILLED_BY_STEALTH
-- @usage BOOL WAS_PED_KILLED_BY_STEALTH(Ped ped);
-- @param ped Ped
-- @return BOOL
function WasPedKilledByStealth(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see WAS_PED_KILLED_BY_TAKEDOWN
-- @usage BOOL WAS_PED_KILLED_BY_TAKEDOWN(Ped ped);
-- @param ped Ped
-- @return BOOL
function WasPedKilledByTakedown(ped) end

-- Bool probably has something to do with vehicles, maybe if the ped can use vehicle to flee?  Values used as attributes are those in sequence of powers of two, 1, 2, 4, 8, 16, 32, 64.... 65536.
-- @module native
-- @submodule ped
-- @see SET_PED_FLEE_ATTRIBUTES
-- @usage void SET_PED_FLEE_ATTRIBUTES(Ped ped, int attributes, BOOL p2);
-- @param ped Ped
-- @param attributes int
-- @param p2 BOOL
-- @return void
function SetPedFleeAttributes(ped, attributes, p2) end

-- p1: Only "CODE_HUMAN_STAND_COWER" found in the b617d scripts.
-- @module native
-- @submodule ped
-- @see SET_PED_COWER_HASH
-- @usage void SET_PED_COWER_HASH(Ped ped, char* p1);
-- @param ped Ped
-- @param p1 char*
-- @return void
function SetPedCowerHash(ped, p1) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_STEERS_AROUND_PEDS
-- @usage void SET_PED_STEERS_AROUND_PEDS(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedSteersAroundPeds(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_STEERS_AROUND_OBJECTS
-- @usage void SET_PED_STEERS_AROUND_OBJECTS(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedSteersAroundObjects(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_STEERS_AROUND_VEHICLES
-- @usage void SET_PED_STEERS_AROUND_VEHICLES(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetPedSteersAroundVehicles(ped, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_ANY_PED_NEAR_POINT
-- @usage BOOL IS_ANY_PED_NEAR_POINT(float x, float y, float z, float radius);
-- @param x float
-- @param y float
-- @param z float
-- @param radius float
-- @return BOOL
function IsAnyPedNearPoint(x, y, z, radius) end

-- hash collision???
-- @module native
-- @submodule ped
-- @see GET_PED_FLOOD_INVINCIBILITY
-- @usage void GET_PED_FLOOD_INVINCIBILITY(Ped ped, BOOL p1);
-- @param ped Ped
-- @param p1 BOOL
-- @return void
function GetPedFloodInvincibility(ped, p1) end

-- returns whether or not a ped is visible within your FOV, not this check auto's to false after a certain distance.   Target needs to be tracked.. won't work otherwise.
-- @module native
-- @submodule ped
-- @see IS_TRACKED_PED_VISIBLE
-- @usage BOOL IS_TRACKED_PED_VISIBLE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsTrackedPedVisible(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_TRACKED
-- @usage BOOL IS_PED_TRACKED(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedTracked(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see HAS_PED_RECEIVED_EVENT
-- @usage BOOL HAS_PED_RECEIVED_EVENT(Any p0, Any p1);
-- @param p0 Any
-- @param p1 Any
-- @return BOOL
function HasPedReceivedEvent(p0, p1) end

-- no bone= -1
-- @module native
-- @submodule ped
-- @see GET_PED_BONE_INDEX
-- @usage int GET_PED_BONE_INDEX(Ped ped, int boneId);
-- @param ped Ped
-- @param boneId int
-- @return int
function GetPedBoneIndex(ped, boneId) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_RAGDOLL_BONE_INDEX
-- @usage int GET_PED_RAGDOLL_BONE_INDEX(Ped ped, int bone);
-- @param ped Ped
-- @param bone int
-- @return int
function GetPedRagdollBoneIndex(ped, bone) end

-- Values look to be between 0.0 and 1.0 From decompiled scripts: 0.0, 0.6, 0.65, 0.8, 1.0  You are correct, just looked in IDA it breaks from the function if it's less than 0.0f or greater than 1.0f.
-- @module native
-- @submodule ped
-- @see SET_PED_ENVEFF_SCALE
-- @usage void SET_PED_ENVEFF_SCALE(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedEnveffScale(ped, value) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_PED_ENVEFF_SCALE
-- @usage float GET_PED_ENVEFF_SCALE(Ped ped);
-- @param ped Ped
-- @return float
function GetPedEnveffScale(ped) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_ENABLE_PED_ENVEFF_SCALE
-- @usage void SET_ENABLE_PED_ENVEFF_SCALE(Ped ped, BOOL toggle);
-- @param ped Ped
-- @param toggle BOOL
-- @return void
function SetEnablePedEnveffScale(ped, toggle) end

-- p6 always 2 (but it doesnt seem to matter...)  roll and pitch 0 yaw to Ped.rotation
-- @module native
-- @submodule ped
-- @see CREATE_SYNCHRONIZED_SCENE
-- @usage int CREATE_SYNCHRONIZED_SCENE(float x, float y, float z, float roll, float pitch, float yaw, int p6);
-- @param x float
-- @param y float
-- @param z float
-- @param roll float
-- @param pitch float
-- @param yaw float
-- @param p6 int
-- @return int
function CreateSynchronizedScene(x, y, z, roll, pitch, yaw, p6) end

-- Returns true if a synchronized scene is running
-- @module native
-- @submodule ped
-- @see IS_SYNCHRONIZED_SCENE_RUNNING
-- @usage BOOL IS_SYNCHRONIZED_SCENE_RUNNING(int sceneId);
-- @param sceneId int
-- @return BOOL
function IsSynchronizedSceneRunning(sceneId) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_SYNCHRONIZED_SCENE_ORIGIN
-- @usage void SET_SYNCHRONIZED_SCENE_ORIGIN(int sceneID, float x, float y, float z, float roll, float pitch, float yaw, BOOL p7);
-- @param sceneID int
-- @param x float
-- @param y float
-- @param z float
-- @param roll float
-- @param pitch float
-- @param yaw float
-- @param p7 BOOL
-- @return void
function SetSynchronizedSceneOrigin(sceneID, x, y, z, roll, pitch, yaw, p7) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_SYNCHRONIZED_SCENE_PHASE
-- @usage void SET_SYNCHRONIZED_SCENE_PHASE(int sceneID, float phase);
-- @param sceneID int
-- @param phase float
-- @return void
function SetSynchronizedScenePhase(sceneID, phase) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_SYNCHRONIZED_SCENE_PHASE
-- @usage float GET_SYNCHRONIZED_SCENE_PHASE(int sceneID);
-- @param sceneID int
-- @return float
function GetSynchronizedScenePhase(sceneID) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_SYNCHRONIZED_SCENE_RATE
-- @usage void SET_SYNCHRONIZED_SCENE_RATE(int sceneID, float rate);
-- @param sceneID int
-- @param rate float
-- @return void
function SetSynchronizedSceneRate(sceneID, rate) end

-- @todo
-- @module native
-- @submodule ped
-- @see GET_SYNCHRONIZED_SCENE_RATE
-- @usage float GET_SYNCHRONIZED_SCENE_RATE(int sceneID);
-- @param sceneID int
-- @return float
function GetSynchronizedSceneRate(sceneID) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_SYNCHRONIZED_SCENE_LOOPED
-- @usage void SET_SYNCHRONIZED_SCENE_LOOPED(int sceneID, BOOL toggle);
-- @param sceneID int
-- @param toggle BOOL
-- @return void
function SetSynchronizedSceneLooped(sceneID, toggle) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_SYNCHRONIZED_SCENE_LOOPED
-- @usage BOOL IS_SYNCHRONIZED_SCENE_LOOPED(int sceneID);
-- @param sceneID int
-- @return BOOL
function IsSynchronizedSceneLooped(sceneID) end

-- @todo
-- @module native
-- @submodule ped
-- @see ATTACH_SYNCHRONIZED_SCENE_TO_ENTITY
-- @usage void ATTACH_SYNCHRONIZED_SCENE_TO_ENTITY(int sceneID, Entity entity, int boneIndex);
-- @param sceneID int
-- @param entity Entity
-- @param boneIndex int
-- @return void
function AttachSynchronizedSceneToEntity(sceneID, entity, boneIndex) end

-- @todo
-- @module native
-- @submodule ped
-- @see DETACH_SYNCHRONIZED_SCENE
-- @usage void DETACH_SYNCHRONIZED_SCENE(int sceneID);
-- @param sceneID int
-- @return void
function DetachSynchronizedScene(sceneID) end

-- Some motionstate hashes are  0xec17e58 (standing idle), 0xbac0f10b (nothing?), 0x3f67c6af (aiming with pistol 2-h), 0x422d7a25 (stealth), 0xbd8817db, 0x916e828c  and those for the strings  "motionstate_idle", "motionstate_walk", "motionstate_run", "motionstate_actionmode_idle", and "motionstate_actionmode_walk".  Regarding p2, p3 and p4: Most common is 0, 0, 0); followed by 0, 1, 0); and 1, 1, 0); in the scripts. p4 is very rarely something other than 0.   [31/03/2017] ins1de :          enum MotionState         {             StopRunning = -530524,             StopWalking = -668482597,             Idle = 247561816, // 1, 1, 0             Idl2 = -1871534317,             SkyDive =-1161760501, // 0, 1, 0             Stealth = 1110276645,             Sprint = -1115154469,             Swim = -1855028596,             Unknown1 = 1063765679,             Unknown2 = -633298724,         }
-- @module native
-- @submodule ped
-- @see FORCE_PED_MOTION_STATE
-- @usage BOOL FORCE_PED_MOTION_STATE(Ped ped, Hash motionStateHash, BOOL p2, BOOL p3, BOOL p4);
-- @param ped Ped
-- @param motionStateHash Hash
-- @param p2 BOOL
-- @param p3 BOOL
-- @param p4 BOOL
-- @return BOOL
function ForcePedMotionState(ped, motionStateHash, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_MAX_MOVE_BLEND_RATIO
-- @usage void SET_PED_MAX_MOVE_BLEND_RATIO(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedMaxMoveBlendRatio(ped, value) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_MIN_MOVE_BLEND_RATIO
-- @usage void SET_PED_MIN_MOVE_BLEND_RATIO(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedMinMoveBlendRatio(ped, value) end

-- Min: 0.00 Max: 10.00  Can be used in combo with fast run cheat.  When value is set to 10.00: Sprinting without fast run cheat: 66 m/s Sprinting with fast run cheat: 77 m/s  Does not need to be looped!  Note: According to IDA for the Xbox360 xex, when they check bgt they seem to have the min to 0.0f, but the max set to 1.15f not 10.0f.
-- @module native
-- @submodule ped
-- @see SET_PED_MOVE_RATE_OVERRIDE
-- @usage void SET_PED_MOVE_RATE_OVERRIDE(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedMoveRateOverride(ped, value) end

-- Returns size of array, passed into the second variable.  See below for usage information.  This function actually requires a struct, where the first value is the maximum number of elements to return.  Here is a sample of how I was able to get it to work correctly, without yet knowing the struct format.  //Setup the array 	const int numElements = 10; 	const int arrSize = numElements * 2 + 2; 	Any veh[arrSize]; 	//0 index is the size of the array 	veh[0] = numElements;  	int count = PED::GET_PED_NEARBY_VEHICLES(PLAYER::PLAYER_PED_ID(), veh);  	if (veh != NULL) 	{ 		//Simple loop to go through results 		for (int i = 0; i < count; i++) 		{ 			int offsettedID = i * 2 + 2; 			//Make sure it exists 			if (veh[offsettedID] != NULL && ENTITY::DOES_ENTITY_EXIST(veh[offsettedID])) 			{ 				//Do something 			} 		} 	}
-- @module native
-- @submodule ped
-- @see GET_PED_NEARBY_VEHICLES
-- @usage int GET_PED_NEARBY_VEHICLES(Ped ped, int* sizeAndVehs);
-- @param ped Ped
-- @param sizeAndVehs int*
-- @return int
function GetPedNearbyVehicles(ped, sizeAndVehs) end

-- sizeAndPeds - is a pointer to an array. The array is filled with peds found nearby the ped supplied to the first argument. ignore - ped type to ignore  Return value is the number of peds found and added to the array passed.  -----------------------------------  To make this work in most menu bases at least in C++ do it like so,   Formatted Example: pastebin.com/D8an9wwp  -----------------------------------  Example: gtaforums.com/topic/789788-function-args-to-pedget-ped-nearby-peds/?p=1067386687
-- @module native
-- @submodule ped
-- @see GET_PED_NEARBY_PEDS
-- @usage int GET_PED_NEARBY_PEDS(Ped ped, int* sizeAndPeds, int ignore);
-- @param ped Ped
-- @param sizeAndPeds int*
-- @param ignore int
-- @return int
function GetPedNearbyPeds(ped, sizeAndPeds, ignore) end

-- @todo
-- @module native
-- @submodule ped
-- @see IS_PED_USING_ACTION_MODE
-- @usage BOOL IS_PED_USING_ACTION_MODE(Ped ped);
-- @param ped Ped
-- @return BOOL
function IsPedUsingActionMode(ped) end

-- p2 is usually -1 in the scripts. action is either 0 or "DEFAULT_ACTION".
-- @module native
-- @submodule ped
-- @see SET_PED_USING_ACTION_MODE
-- @usage void SET_PED_USING_ACTION_MODE(Ped ped, BOOL p1, Any p2, char* action);
-- @param ped Ped
-- @param p1 BOOL
-- @param p2 Any
-- @param action char*
-- @return void
function SetPedUsingActionMode(ped, p1, p2, action) end

-- Overrides the ped's collision capsule radius for the current tick. Must be called every tick to be effective.  Setting this to 0.001 will allow warping through some objects.
-- @module native
-- @submodule ped
-- @see SET_PED_CAPSULE
-- @usage void SET_PED_CAPSULE(Ped ped, float value);
-- @param ped Ped
-- @param value float
-- @return void
function SetPedCapsule(ped, value) end

-- gtaforums.com/topic/885580-ped-headshotmugshot-txd/
-- @module native
-- @submodule ped
-- @see REGISTER_PEDHEADSHOT
-- @usage int REGISTER_PEDHEADSHOT(Ped ped);
-- @param ped Ped
-- @return int
function RegisterPedheadshot(ped) end

-- gtaforums.com/topic/885580-ped-headshotmugshot-txd/
-- @module native
-- @submodule ped
-- @see UNREGISTER_PEDHEADSHOT
-- @usage void UNREGISTER_PEDHEADSHOT(int handle);
-- @param handle int
-- @return void
function UnregisterPedheadshot(handle) end

-- gtaforums.com/topic/885580-ped-headshotmugshot-txd/
-- @module native
-- @submodule ped
-- @see IS_PEDHEADSHOT_VALID
-- @usage BOOL IS_PEDHEADSHOT_VALID(int handle);
-- @param handle int
-- @return BOOL
function IsPedheadshotValid(handle) end

-- gtaforums.com/topic/885580-ped-headshotmugshot-txd/
-- @module native
-- @submodule ped
-- @see IS_PEDHEADSHOT_READY
-- @usage BOOL IS_PEDHEADSHOT_READY(int handle);
-- @param handle int
-- @return BOOL
function IsPedheadshotReady(handle) end

-- gtaforums.com/topic/885580-ped-headshotmugshot-txd/
-- @module native
-- @submodule ped
-- @see GET_PEDHEADSHOT_TXD_STRING
-- @usage char* GET_PEDHEADSHOT_TXD_STRING(int handle);
-- @param handle int
-- @return char*
function GetPedheadshotTxdString(handle) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_IK_TARGET
-- @usage void SET_IK_TARGET(Ped ped, int p1, Ped targetPed, int boneLookAt, float x, float y, float z, Any p7, int duration, int duration1);
-- @param ped Ped
-- @param p1 int
-- @param targetPed Ped
-- @param boneLookAt int
-- @param x float
-- @param y float
-- @param z float
-- @param p7 Any
-- @param duration int
-- @param duration1 int
-- @return void
function SetIkTarget(ped, p1, targetPed, boneLookAt, x, y, z, p7, duration, duration1) end

-- @todo
-- @module native
-- @submodule ped
-- @see REQUEST_ACTION_MODE_ASSET
-- @usage void REQUEST_ACTION_MODE_ASSET(char* asset);
-- @param asset char*
-- @return void
function RequestActionModeAsset(asset) end

-- @todo
-- @module native
-- @submodule ped
-- @see HAS_ACTION_MODE_ASSET_LOADED
-- @usage BOOL HAS_ACTION_MODE_ASSET_LOADED(char* asset);
-- @param asset char*
-- @return BOOL
function HasActionModeAssetLoaded(asset) end

-- @todo
-- @module native
-- @submodule ped
-- @see REMOVE_ACTION_MODE_ASSET
-- @usage void REMOVE_ACTION_MODE_ASSET(char* asset);
-- @param asset char*
-- @return void
function RemoveActionModeAsset(asset) end

-- @todo
-- @module native
-- @submodule ped
-- @see REQUEST_STEALTH_MODE_ASSET
-- @usage void REQUEST_STEALTH_MODE_ASSET(char* asset);
-- @param asset char*
-- @return void
function RequestStealthModeAsset(asset) end

-- @todo
-- @module native
-- @submodule ped
-- @see HAS_STEALTH_MODE_ASSET_LOADED
-- @usage BOOL HAS_STEALTH_MODE_ASSET_LOADED(char* asset);
-- @param asset char*
-- @return BOOL
function HasStealthModeAssetLoaded(asset) end

-- @todo
-- @module native
-- @submodule ped
-- @see REMOVE_STEALTH_MODE_ASSET
-- @usage void REMOVE_STEALTH_MODE_ASSET(char* asset);
-- @param asset char*
-- @return void
function RemoveStealthModeAsset(asset) end

-- @todo
-- @module native
-- @submodule ped
-- @see SET_PED_LOD_MULTIPLIER
-- @usage void SET_PED_LOD_MULTIPLIER(Ped ped, float multiplier);
-- @param ped Ped
-- @param multiplier float
-- @return void
function SetPedLodMultiplier(ped, multiplier) end