/*
 * Author: Striker.A
 *
 * Arguments:
 *  0 - RRF Player Object
 *
 * Public: No
 */

private ["_player", "_uuid"];
_player = (_this select 0);

if (local _player) then {

    _uuid = getPlayerUID _player;

    // Only execute in a multiplayer environment
    if(_uuid != "_SP_PLAYER_" ) then {
        
        "rrf_loadouts" callExtension ("prepLoadout " + _uuid);

        waitUntil { sleep 0.5; str ("rrf_loadouts" callExtension ("getStatus")) != "loading" };

        _playerRole = "rrf_loadouts" callExtension "getRole";
        _playerType = _playerRole call compile preprocessFileLineNumbers 'x\rrf\addons\loadout\functions\fn_getRoleType.sqf';

        // Strip Naked
        removeAllWeapons _player;
        removeAllItems _player;
        removeAllAssignedItems _player;
        removeUniform _player;
        removeVest _player;
        removeBackpack _player;
        removeHeadgear _player;
        removeGoggles _player;

        // Always set the voice to NoVoice
       _player setSpeaker "ACE_NoVoice";

        // Start by adding the Uniform, Vest and Backpack
        _uniform = "rrf_loadouts" callExtension "getUniform";
        _player forceAddUniform _uniform;
        _vest = "rrf_loadouts" callExtension "getVest";
        _player addVest _vest;
        _backpack = "rrf_loadouts" callExtension "getBackpack";
        _player addBackpack _backpack;

        // Lookup the Primary Weapon System
        _primaryWeapons = ("rrf_loadouts" callExtension "getPrimaryWeapon") splitString " ";
        _player addWeapon (_primaryWeapons select 0);

        // Add any additional primary weapons to the backpack
        for "_i" from 1 to (count _primaryWeapons) do {_player addItemToBackpack (_primaryWeapons select _i);};

        // Add the attachments to the backpack - Currently no way to detect overlaps
        _primaryAttachments = ("rrf_loadouts" callExtension "getPrimaryAttachments") splitString " ";
        for "_i" from 0 to (count _primaryAttachments) do {_player addPrimaryWeaponItem  (_primaryAttachments select _i);};

        // Initialize the primary weapon ammo
        [_player, _playerType, _primaryWeapons] call compile preprocessFileLineNumbers 'x\rrf\addons\loadout\functions\fn_initPrimaryWeapon.sqf'; 

        // Lookup the Secondary Weapon System
        _secondaryWeapon = ("rrf_loadouts" callExtension "getSecondaryWeapon");
        _player addWeapon _secondaryWeapon;

        // Add the secondary attachments
        _secondaryAttachments = ("rrf_loadouts" callExtension "getSecondaryAttachments") splitString " ";
        for "_i" from 0 to (count _secondaryAttachments) do {_player addHandgunItem  (_secondaryAttachments select _i);};
    
        // Initialize the Secondary Weapon ammo
        [_player, _playerType, _secondaryWeapon] call compile preprocessFileLineNumbers 'x\rrf\addons\loadout\functions\fn_initSecondaryWeapon.sqf'; 

        // Add Night Vision
        _nvgType = "rrf_loadouts" callExtension "getNightvision";
        _player linkItem _nvgType;

        // Add default Binoculars pending site update
        _player addWeapon "Binocular";

        // Add helmets
        _helmets = ("rrf_loadouts" callExtension "getHelmet") splitString " ";
        _player addHeadgear (_helmets select 0);
        for "_i" from 1 to (count _helmets) do {_player addItemToBackpack  (_helmets select _i);};

        // Add the player's choice of goggles
        _goggles = "rrf_loadouts" callExtension "getGoggles";
        _player addGoggles _goggles;

        // Initialize the Base Loadout of the unit
        [_player, _playerType] call compile preprocessFileLineNumbers 'x\rrf\addons\loadout\functions\fn_initBaseEquipment.sqf'; 

        // Initialize the Base Loadout of the unit
        _items = ("rrf_loadouts" callExtension "getAdditionalEquipment") splitString " ";
        [_player, _items] call compile preprocessFileLineNumbers 'x\rrf\addons\loadout\functions\fn_addCustomItemPacks.sqf'; 

    };

};