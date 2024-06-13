require 'Items/SuburbsDistributions'
require "Items/ProceduralDistributions"
require "Items/ItemPicker"

--Police Desk
table.insert(ProceduralDistributions["list"]["PoliceDesk"].items, "ICYHOT.IcyHotTube");
table.insert(ProceduralDistributions["list"]["PoliceDesk"].items, 3);

--Police Lockers
table.insert(ProceduralDistributions["list"]["PoliceLockers"].items, "ICYHOT.IcyHotTube");
table.insert(ProceduralDistributions["list"]["PoliceLockers"].items, 3);

table.insert(ProceduralDistributions["list"]["OfficeDeskHome"].items, "ICYHOT.IcyHotTube");

--Army Storage Outfit
table.insert(ProceduralDistributions["list"]["ArmyStorageOutfit"].items, "ICYHOT.IcyHotTube");

--Wardrobe Redneck
table.insert(ProceduralDistributions["list"]["WardrobeRedneck"].items, "ICYHOT.IcyHotTube");

--Locker Army Bedroom
table.insert(ProceduralDistributions["list"]["LockerArmyBedroom"].items, "ICYHOT.IcyHotTube");
table.insert(ProceduralDistributions["list"]["LockerArmyBedroom"].items, 3);


--Store Shelf Medical
table.insert(ProceduralDistributions["list"]["StoreShelfMedical"].items, "ICYHOT.IcyHotTube");
table.insert(ProceduralDistributions["list"]["StoreCounterTobacco"].items, 5);

--Zombies
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "ICYHOT.IcyHotTube");
table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, .05);

table.insert(SuburbsDistributions["all"]["inventorymale"].items, "ICYHOT.IcyHotTube");
table.insert(SuburbsDistributions["all"]["inventorymale"].items, .5);

--Vehicles
--Vehicle Gloveboxes
table.insert(VehicleDistributions.GloveBox.items, "ICYHOT.IcyHotTube");

--Trunks
table.insert(VehicleDistributions.TrunkStandard.items, "ICYHOT.IcyHotTube");

