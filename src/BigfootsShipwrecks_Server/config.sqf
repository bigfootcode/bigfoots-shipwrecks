BS_debug_logCrateFill = true; // True to log items spawned in crates to server .RPT, usually right after [Display #24]

BS_player_showCrateClaimMessage = true; // True to show toast and chat notification with coordinates to all players when any players are close to crate
BS_player_showCrateClaimMessageRadius = 20; // Players must be this close (in meters) to trigger serverwide chat/toast notification

BS_class_crate = "Exile_Container_SupplyBox"; // Class of loot crate.
BS_class_wreckage = "Land_UWreck_FishingBoat_F"; // Class of shipwreck.

BS_count_shipwrecks = 7; // Total wrecks

BS_locations_crateWreckOffset = 10; // Distance from wreck to spawn crate.
BS_locations_center = [14912.4,15108.7,0]; // Center o fmap from which to spawn wrecks, on Altis this is in the central bay
BS_locations_distance_min = 0; // Minimum distance from BS_location_center to spawn crate.
BS_locations_distance_max = 13000; // Maximum distance from BS_locations_center to spawn crate. Careful putting this too high or they will spawn off the map!

BS_loot_enablePoptabs = true; // True to spawn random number of poptabs in crates, otherwise false.
BS_loot_count_poptabs_seed = [3000, 5000, 18000]; // min/mid/max, so will spawn around 5k most of the time with small chance to be much closer to 18k and small chance to be closer to 3k

BS_loot_itemCargo = // Items to put in loot crate.
[   // [class (if array, picks one random item), guaranteed amount, possible random additional amount, % chance of spawning additional random amount]
    ["Exile_Item_SafeKit", 0, 1, 100], // 100% of the time 0-1 safes will spawn.
    ["Exile_Weapon_AKS_Gold", 0, 2, 100], // 100% of the time 0-2 safes will spawn.
    ["Exile_Magazine_30Rnd_762x39_AK", 0, 2, 100],
    ["Exile_Weapon_TaurusGold", 1, 1, 100], // One pistol guaranteed, with 100% chance to spawn random pistol (so really 50%)
    ["Exile_Magazine_6Rnd_45ACP", 0, 3, 100],
    ["arifle_SDAR_F", 1, 1, 50],
    ["20Rnd_556x45_UW_mag", 1, 2, 100], // One mag guaranteed, with 100% chance to spawn between 0-2 more mags 
    ["SatchelCharge_Remote_Mag", 1, 2, 100],
    ["Exile_Item_Defibrillator", 1, 2, 100],
    ["Exile_Item_Rope", 1, 1, 100],
    ["Exile_Item_Vishpirin", 1, 3, 100],
    ["Exile_Item_DuctTape", 1, 2, 100],
    ["Exile_Item_PlasticBottleFreshWater", 0, 2, 100],
    ["Exile_Item_EMRE", 0, 2, 100],
    [["V_RebreatherB", "V_RebreatherIA", "V_RebreatherIR"], 1, 1, 100],
    [["G_Diving", "G_B_Diving", "G_O_Diving", "G_I_Diving"], 1, 1, 100],
    [["NVGoggles", "NVGoggles_INDEP", "NVGoggles_OPFOR"], 1, 2, 100],
    ["Exile_Item_ConcreteWallKit", 0, 1, 100],
    ["Exile_Item_ConcreteFloorKit", 0, 1, 100],
    ["Exile_Item_FortificationUpgrade", 0, 2, 100],
    ["Exile_Item_RubberDuck", 0, 2, 14], // No ducks guaranteed, but 14% of the time, an additional 0-2 ducks could spawn.
    ["Exile_Item_Knife", 0, 1, 25] // No knives guaranteed, but 25% of the time an additional 0-1 knives could spawn.
]; 

publicVariable "BS_debug_logCrateFill";
publicVariable "BS_player_showCrateClaimMessage";
publicVariable "BS_player_showCrateClaimMessageRadius";
publicVariable "BS_class_crate";
publicVariable "BS_class_wreckage";
publicVariable "BS_count_shipwrecks";
publicVariable "BS_locations_crateWreckOffset";
publicVariable "BS_locations_center";
publicVariable "BS_locations_distance_min";
publicVariable "BS_locations_distance_max";
publicVariable "BS_loot_enablePoptabs";
publicVariable "BS_loot_count_poptabs_seed";
publicVariable "BS_loot_itemCargo";