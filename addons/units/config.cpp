class CfgPatches
{
	class RRF_Units
	{
		// Meta information for editor
		name = "1RRF Units";
		author = "Striker.A [1RRF]";
		url = "https://1st-rrf.com";

		// Minimum compatible version. When the game's version is lower, pop-up warning will appear when launching the game.
		requiredVersion = 1.60;

		// Required addons, used for setting load order.
		// When any of the addons is missing, pop-up warning will appear when launching the game.
		requiredAddons[] = {};

    // List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content unlocking.
		units[] = {};

		// List of weapons (CfgWeapons classes) contained in the addon.
		weapons[] = {};

	};
};

class cfgFactionClasses
{
  class RRF_FACTION //Faction Calling Name
  {
    displayName = "1st Rapid Response Force";
    priority = 1;
    side = 1;
  };
};

class CfgVehicleClasses
{
  class RRF_Units //Name of unit group e.g Air, Infantry, Armour
  {
    displayName = "Players"; //In-game name
    priority = 1; // How far down it is on the menu
  };
};

class CfgVehicles
{
  class B_Soldier_base_F; //Blufor Soldier

  class RRF_Player: B_Soldier_base_F //Unit Class name: Class getting info from
  {
    side = 1; //Blufor
    faction = "RRF_FACTION"; //Your Faction
    backpack = ""; //Backpack
    vehicleclass = "RRF_Units"; //Unit Group
    author = "1st RRF";
    _generalMacro = "RRF_Player"; //Class Name
    scope = 2;
    displayName = "RRF Member"; //In-Game Name
    weapons[] = {"rhs_weap_m16a4_carryhandle_pmag","RH_p226"};
    respawnWeapons[] = {};
    magazines[] = {};
    respawnMagazines[] = {};
    linkedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};
    respawnLinkedItems[] = {"ItemMap","ItemCompass","ItemWatch","ItemRadio"};
    uniformClass = "VSM_OCP_Crye_SS_Camo";
  };

};
