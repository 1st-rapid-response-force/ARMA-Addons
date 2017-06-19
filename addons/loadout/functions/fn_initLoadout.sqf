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
        
        systemChat (str ("rrf_loadouts" callExtension ("prepLoadout " + _uuid)));

        waitUntil { sleep 0.5; str ("rrf_loadouts" callExtension ("getStatus")) != "loading" };

        systemChat ("Loadout downloaded for player " + _uuid);

        // Strip Naked
        removeAllWeapons _player;
        removeAllItems _player;
        removeAllAssignedItems _player;
        removeUniform _player;
        removeVest _player;
        removeBackpack _player;
        removeHeadgear _player;
        removeGoggles _player;

        // Lookup the Primary Weapon System
        _primaryWeapon = ("rrf_loadouts" callExtension "getPrimaryWeapon");
        systemChat (str _primaryWeapon);
        systemChat (str _player);
        _player addWeapon _primaryWeapon;

    };

};