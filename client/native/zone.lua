-- @todo
-- @module native
-- @submodule zone
-- @see GET_ZONE_AT_COORDS
-- @usage int GET_ZONE_AT_COORDS(float x, float y, float z);
-- @param x float
-- @param float
-- @return int
function GetZoneAtCoords() end

-- 'zoneName' corresponds to an entry in 'popzone.ipl'.  AIRP = Los Santos International Airport ALAMO = Alamo Sea ALTA = Alta ARMYB = Fort Zancudo BANHAMC = Banham Canyon Dr BANNING = Banning BEACH = Vespucci Beach BHAMCA = Banham Canyon BRADP = Braddock Pass BRADT = Braddock Tunnel BURTON = Burton CALAFB = Calafia Bridge CANNY = Raton Canyon CCREAK = Cassidy Creek CHAMH = Chamberlain Hills CHIL = Vinewood Hills CHU = Chumash CMSW = Chiliad Mountain State Wilderness CYPRE = Cypress Flats DAVIS = Davis DELBE = Del Perro Beach DELPE = Del Perro DELSOL = La Puerta DESRT = Grand Senora Desert DOWNT = Downtown DTVINE = Downtown Vinewood EAST_V = East Vinewood EBURO = El Burro Heights ELGORL = El Gordo Lighthouse ELYSIAN = Elysian Island GALFISH = Galilee GOLF = GWC and Golfing Society GRAPES = Grapeseed GREATC = Great Chaparral HARMO = Harmony HAWICK = Hawick HORS = Vinewood Racetrack HUMLAB = Humane Labs and Research JAIL = Bolingbroke Penitentiary KOREAT = Little Seoul LACT = Land Act Reservoir LAGO = Lago Zancudo LDAM = Land Act Dam LEGSQU = Legion Square LMESA = La Mesa LOSPUER = La Puerta MIRR = Mirror Park MORN = Morningwood MOVIE = Richards Majestic MTCHIL = Mount Chiliad MTGORDO = Mount Gordo MTJOSE = Mount Josiah MURRI = Murrieta Heights NCHU = North Chumash NOOSE = N.O.O.S.E OCEANA = Pacific Ocean PALCOV = Paleto Cove PALETO = Paleto Bay PALFOR = Paleto Forest PALHIGH = Palomino Highlands PALMPOW = Palmer-Taylor Power Station PBLUFF = Pacific Bluffs PBOX = Pillbox Hill PROCOB = Procopio Beach RANCHO = Rancho RGLEN = Richman Glen RICHM = Richman ROCKF = Rockford Hills RTRAK = Redwood Lights Track SANAND = San Andreas SANCHIA = San Chianski Mountain Range SANDY = Sandy Shores SKID = Mission Row SLAB = Stab City STAD = Maze Bank Arena STRAW = Strawberry TATAMO = Tataviam Mountains TERMINA = Terminal TEXTI = Textile City TONGVAH = Tongva Hills TONGVAV = Tongva Valley VCANA = Vespucci Canals VESP = Vespucci VINE = Vinewood WINDF = Ron Alternates Wind Farm WVINE = West Vinewood ZANCUDO = Zancudo River ZP_ORT = Port of South Los Santos ZQ_UAR = Davis Quartz
-- @module native
-- @submodule zone
-- @see GET_ZONE_FROM_NAME_ID
-- @usage int GET_ZONE_FROM_NAME_ID(char* zoneName);
-- @param zoneName char*
-- @return int
function GetZoneFromNameId() end

-- @todo
-- @module native
-- @submodule zone
-- @see GET_ZONE_POPSCHEDULE
-- @usage int GET_ZONE_POPSCHEDULE(int zoneId);
-- @param zoneId int
-- @return int
function GetZonePopschedule() end

-- AIRP = Los Santos International Airport ALAMO = Alamo Sea ALTA = Alta ARMYB = Fort Zancudo BANHAMC = Banham Canyon Dr BANNING = Banning BEACH = Vespucci Beach BHAMCA = Banham Canyon BRADP = Braddock Pass BRADT = Braddock Tunnel BURTON = Burton CALAFB = Calafia Bridge CANNY = Raton Canyon CCREAK = Cassidy Creek CHAMH = Chamberlain Hills CHIL = Vinewood Hills CHU = Chumash CMSW = Chiliad Mountain State Wilderness CYPRE = Cypress Flats DAVIS = Davis DELBE = Del Perro Beach DELPE = Del Perro DELSOL = La Puerta DESRT = Grand Senora Desert DOWNT = Downtown DTVINE = Downtown Vinewood EAST_V = East Vinewood EBURO = El Burro Heights ELGORL = El Gordo Lighthouse ELYSIAN = Elysian Island GALFISH = Galilee GOLF = GWC and Golfing Society GRAPES = Grapeseed GREATC = Great Chaparral HARMO = Harmony HAWICK = Hawick HORS = Vinewood Racetrack HUMLAB = Humane Labs and Research JAIL = Bolingbroke Penitentiary KOREAT = Little Seoul LACT = Land Act Reservoir LAGO = Lago Zancudo LDAM = Land Act Dam LEGSQU = Legion Square LMESA = La Mesa LOSPUER = La Puerta MIRR = Mirror Park MORN = Morningwood MOVIE = Richards Majestic MTCHIL = Mount Chiliad MTGORDO = Mount Gordo MTJOSE = Mount Josiah MURRI = Murrieta Heights NCHU = North Chumash NOOSE = N.O.O.S.E OCEANA = Pacific Ocean PALCOV = Paleto Cove PALETO = Paleto Bay PALFOR = Paleto Forest PALHIGH = Palomino Highlands PALMPOW = Palmer-Taylor Power Station PBLUFF = Pacific Bluffs PBOX = Pillbox Hill PROCOB = Procopio Beach RANCHO = Rancho RGLEN = Richman Glen RICHM = Richman ROCKF = Rockford Hills RTRAK = Redwood Lights Track SANAND = San Andreas SANCHIA = San Chianski Mountain Range SANDY = Sandy Shores SKID = Mission Row SLAB = Stab City STAD = Maze Bank Arena STRAW = Strawberry TATAMO = Tataviam Mountains TERMINA = Terminal TEXTI = Textile City TONGVAH = Tongva Hills TONGVAV = Tongva Valley VCANA = Vespucci Canals VESP = Vespucci VINE = Vinewood WINDF = Ron Alternates Wind Farm WVINE = West Vinewood ZANCUDO = Zancudo River ZP_ORT = Port of South Los Santos ZQ_UAR = Davis Quartz
-- @module native
-- @submodule zone
-- @see GET_NAME_OF_ZONE
-- @usage char* GET_NAME_OF_ZONE(float x, float y, float z);
-- @param x float
-- @param float
-- @return char*
function GetNameOfZone() end

-- @todo
-- @module native
-- @submodule zone
-- @see SET_ZONE_ENABLED
-- @usage void SET_ZONE_ENABLED(int zoneId, BOOL toggle);
-- @param zoneId int
-- @param BOOL
-- @return void
function SetZoneEnabled() end

-- cellphone range 1- 5 used for signal bar in iFruit phone
-- @module native
-- @submodule zone
-- @see GET_ZONE_SCUMMINESS
-- @usage int GET_ZONE_SCUMMINESS(int zoneId);
-- @param zoneId int
-- @return int
function GetZoneScumminess() end

-- Only used once in the decompiled scripts. Seems to be related to scripted vehicle generators.  Modified example from "am_imp_exp.c4", line 6406: /* popSchedules[0] = ZONE::GET_ZONE_POPSCHEDULE(ZONE::GET_ZONE_AT_COORDS(891.3, 807.9, 188.1)); etc. */ ZONE::OVERRIDE_POPSCHEDULE_VEHICLE_MODEL(popSchedules[index], vehicleHash); STREAMING::REQUEST_MODEL(vehicleHash);
-- @module native
-- @submodule zone
-- @see OVERRIDE_POPSCHEDULE_VEHICLE_MODEL
-- @usage void OVERRIDE_POPSCHEDULE_VEHICLE_MODEL(int scheduleId, Hash vehicleHash);
-- @param scheduleId int
-- @param Hash
-- @return void
function OverridePopscheduleVehicleModel() end

-- Only used once in the decompiled scripts. Seems to be related to scripted vehicle generators.  Modified example from "am_imp_exp.c4", line 6418: /* popSchedules[0] = ZONE::GET_ZONE_POPSCHEDULE(ZONE::GET_ZONE_AT_COORDS(891.3, 807.9, 188.1)); etc. */ STREAMING::SET_MODEL_AS_NO_LONGER_NEEDED(vehicleHash); ZONE::CLEAR_POPSCHEDULE_OVERRIDE_VEHICLE_MODEL(popSchedules[index]);
-- @module native
-- @submodule zone
-- @see CLEAR_POPSCHEDULE_OVERRIDE_VEHICLE_MODEL
-- @usage void CLEAR_POPSCHEDULE_OVERRIDE_VEHICLE_MODEL(int scheduleId);
-- @param scheduleId int
-- @return void
function ClearPopscheduleOverrideVehicleModel() end

-- Returns a hash representing which part of the map the given coords are located.  Possible return values: (Hash of) city -> -289320599 (Hash of) countryside -> 2072609373  C# Example :  Ped player = Game.Player.Character; Hash h = Function.Call<Hash>(Hash.GET_HASH_OF_MAP_AREA_AT_COORDS, player.Position.X, player.Position.Y, player.Position.Z);
-- @module native
-- @submodule zone
-- @see GET_HASH_OF_MAP_AREA_AT_COORDS
-- @usage Hash GET_HASH_OF_MAP_AREA_AT_COORDS(float x, float y, float z);
-- @param x float
-- @param float
-- @return Hash
function GetHashOfMapAreaAtCoords() end