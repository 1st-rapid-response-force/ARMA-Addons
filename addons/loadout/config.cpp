class CfgPatches
{
  class RRF_Loadout
  {
  	units[] = {};
  	weapons[] = {};
  	requiredVersion = 1.60;
  	requiredAddons[] = {"cba_xeh", "RRF_Units"};
  };

};

class Extended_PreInit_EventHandlers {
    class Rrf_loadout_init_event {
        init = "call compile preprocessFileLineNumbers 'x\rrf\addons\loadout\XEH_preInit.sqf'";
    };
};
