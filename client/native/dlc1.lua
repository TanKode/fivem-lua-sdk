-- @todo
-- @module native
-- @submodule dlc1
-- @see INIT_SHOP_PED_COMPONENT
-- @usage void INIT_SHOP_PED_COMPONENT(int* outComponent);
-- @param outComponent int*
-- @return void
function InitShopPedComponent(outComponent) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see INIT_SHOP_PED_PROP
-- @usage void INIT_SHOP_PED_PROP(int* outProp);
-- @param outProp int*
-- @return void
function InitShopPedProp(outProp) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see GET_SHOP_PED_QUERY_COMPONENT
-- @usage void GET_SHOP_PED_QUERY_COMPONENT(int componentId, int* outComponent);
-- @param componentId int
-- @param outComponent int*
-- @return void
function GetShopPedQueryComponent(componentId, outComponent) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see GET_SHOP_PED_COMPONENT
-- @usage void GET_SHOP_PED_COMPONENT(Hash p0, Any* p1);
-- @param p0 Hash
-- @param p1 Any*
-- @return void
function GetShopPedComponent(p0, p1) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see GET_SHOP_PED_QUERY_PROP
-- @usage void GET_SHOP_PED_QUERY_PROP(Any p0, Any* p1);
-- @param p0 Any
-- @param p1 Any*
-- @return void
function GetShopPedQueryProp(p0, p1) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see GET_HASH_NAME_FOR_COMPONENT
-- @usage Hash GET_HASH_NAME_FOR_COMPONENT(Entity entity, int componentId, int drawableVariant, int textureVariant);
-- @param entity Entity
-- @param componentId int
-- @param drawableVariant int
-- @param textureVariant int
-- @return Hash
function GetHashNameForComponent(entity, componentId, drawableVariant, textureVariant) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see GET_HASH_NAME_FOR_PROP
-- @usage Hash GET_HASH_NAME_FOR_PROP(Entity entity, int componentId, int propIndex, int propTextureIndex);
-- @param entity Entity
-- @param componentId int
-- @param propIndex int
-- @param propTextureIndex int
-- @return Hash
function GetHashNameForProp(entity, componentId, propIndex, propTextureIndex) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see GET_VARIANT_COMPONENT
-- @usage void GET_VARIANT_COMPONENT(Hash componentHash, int componentId, Any* p2, Any* p3, Any* p4);
-- @param componentHash Hash
-- @param componentId int
-- @param p2 Any*
-- @param p3 Any*
-- @param p4 Any*
-- @return void
function GetVariantComponent(componentHash, componentId, p2, p3, p4) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see GET_FORCED_COMPONENT
-- @usage void GET_FORCED_COMPONENT(Hash componentHash, int componentId, Any* p2, Any* p3, Any* p4);
-- @param componentHash Hash
-- @param componentId int
-- @param p2 Any*
-- @param p3 Any*
-- @param p4 Any*
-- @return void
function GetForcedComponent(componentHash, componentId, p2, p3, p4) end

-- struct Outfit_s 	{ 		int mask, torso, pants, parachute, shoes, misc1, tops1, armour, crew, tops2, hat, glasses, earpiece; 		int maskTexture, torsoTexture, pantsTexture, parachuteTexture, shoesTexture, misc1Texture, tops1Texture,  			armourTexture, crewTexture, tops2Texture, hatTexture, glassesTexture, earpieceTexture; 	};
-- @module native
-- @submodule dlc1
-- @see GET_SHOP_PED_QUERY_OUTFIT
-- @usage void GET_SHOP_PED_QUERY_OUTFIT(Any p0, Any* outfit);
-- @param p0 Any
-- @param outfit Any*
-- @return void
function GetShopPedQueryOutfit(p0, outfit) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see GET_SHOP_PED_OUTFIT
-- @usage void GET_SHOP_PED_OUTFIT(Any p0, Any* p1);
-- @param p0 Any
-- @param p1 Any*
-- @return void
function GetShopPedOutfit(p0, p1) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see GET_SHOP_PED_OUTFIT_LOCATE
-- @usage Any GET_SHOP_PED_OUTFIT_LOCATE(Any p0);
-- @param p0 Any
-- @return Any
function GetShopPedOutfitLocate(p0) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see GET_NUM_DLC_VEHICLES
-- @usage int GET_NUM_DLC_VEHICLES();
-- @return int
function GetNumDlcVehicles() end

-- dlcVehicleIndex is 0 to GET_NUM_DLC_VEHICLS()
-- @module native
-- @submodule dlc1
-- @see GET_DLC_VEHICLE_MODEL
-- @usage Hash GET_DLC_VEHICLE_MODEL(int dlcVehicleIndex);
-- @param dlcVehicleIndex int
-- @return Hash
function GetDlcVehicleModel(dlcVehicleIndex) end

-- dlcVehicleIndex takes a number from 0 - GET_NUM_DLC_VEHICLES() - 1. outData is a struct of 3 8-byte items. The Second item in the struct *(Hash *)(outData + 1) is the vehicle hash.
-- @module native
-- @submodule dlc1
-- @see GET_DLC_VEHICLE_DATA
-- @usage BOOL GET_DLC_VEHICLE_DATA(int dlcVehicleIndex, int* outData);
-- @param dlcVehicleIndex int
-- @param outData int*
-- @return BOOL
function GetDlcVehicleData(dlcVehicleIndex, outData) end

-- @todo
-- @module native
-- @submodule dlc1
-- @see GET_DLC_VEHICLE_FLAGS
-- @usage int GET_DLC_VEHICLE_FLAGS(int dlcVehicleIndex);
-- @param dlcVehicleIndex int
-- @return int
function GetDlcVehicleFlags(dlcVehicleIndex) end

-- Gets the total number of DLC weapons.
-- @module native
-- @submodule dlc1
-- @see GET_NUM_DLC_WEAPONS
-- @usage int GET_NUM_DLC_WEAPONS();
-- @return int
function GetNumDlcWeapons() end

-- dlcWeaponIndex takes a number from 0 - GET_NUM_DLC_WEAPONS() - 1. struct DlcWeaponData { int emptyCheck; //use DLC1::_IS_DLC_DATA_EMPTY on this int padding1; int weaponHash; int padding2; int unk; int padding3; int weaponCost; int padding4; int ammoCost; int padding5; int ammoType; int padding6; int defaultClipSize; int padding7; char nameLabel[64]; char descLabel[64]; char desc2Label[64]; // usually "the" + name char upperCaseNameLabel[64]; };
-- @module native
-- @submodule dlc1
-- @see GET_DLC_WEAPON_DATA
-- @usage BOOL GET_DLC_WEAPON_DATA(int dlcWeaponIndex, int* outData);
-- @param dlcWeaponIndex int
-- @param outData int*
-- @return BOOL
function GetDlcWeaponData(dlcWeaponIndex, outData) end

-- Allowed Values from 0 - DLC1::GET_NUM_DLC_WEAPONS()
-- @module native
-- @submodule dlc1
-- @see GET_NUM_DLC_WEAPON_COMPONENTS
-- @usage int GET_NUM_DLC_WEAPON_COMPONENTS(int dlcWeaponIndex);
-- @param dlcWeaponIndex int
-- @return int
function GetNumDlcWeaponComponents(dlcWeaponIndex) end

-- p0 seems to be the weapon index p1 seems to be the weapon component index struct DlcComponentData{ int attachBone; int padding1; int bActiveByDefault; int padding2; int unk; int padding3; int componentHash; int padding4; int unk2; int padding5; int componentCost; int padding6; char nameLabel[64]; char descLabel[64]; };
-- @module native
-- @submodule dlc1
-- @see GET_DLC_WEAPON_COMPONENT_DATA
-- @usage BOOL GET_DLC_WEAPON_COMPONENT_DATA(int dlcWeaponIndex, int dlcWeapCompIndex, int* ComponentDataPtr);
-- @param dlcWeaponIndex int
-- @param dlcWeapCompIndex int
-- @param ComponentDataPtr int*
-- @return BOOL
function GetDlcWeaponComponentData(dlcWeaponIndex, dlcWeapCompIndex, ComponentDataPtr) end

-- Use _GET_VEHICLE_MOD_DATA for modData
-- @module native
-- @submodule dlc1
-- @see IS_DLC_VEHICLE_MOD
-- @usage BOOL IS_DLC_VEHICLE_MOD(int modData);
-- @param modData int
-- @return BOOL
function IsDlcVehicleMod(modData) end