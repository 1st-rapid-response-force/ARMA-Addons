/*
 * Author: Striker.A
 *
 * Arguments:
 *  0 - RRF Player Object
 *  1 - Player Role String
 *  2 - Secondary Weapon String
 *
 * Public: No
 */

private ["_player", "_role", "_secondaryWeapons"];

_player = _this select 0;
_role = _this select 1;
_secondaryWeapon = _this select 2;

if ( _secondaryWeapon == "RH_m9" ) then {
	_player addHandgunItem "RH_m9qd";

	for "_i" from 1 to 3 do {_player addItemToVest "RH_15Rnd_9x19_M9";};
};

if ( _secondaryWeapon == "RH_fn57" ) then {
	_player addHandgunItem "RH_sfn57";

	for "_i" from 1 to 3 do {_player addItemToVest "RH_20Rnd_57x28_FN";};
};

if ( _secondaryWeapon == "RH_fnp45" ) then {
	_player addHandgunItem "RH_gemtech45";

	for "_i" from 1 to 3 do {_player addItemToVest "RH_15Rnd_45cal_fnp";};
};

if ( _secondaryWeapon == "RH_fnp45t" ) then {
	_player addHandgunItem "RH_osprey";

	for "_i" from 1 to 3 do {_player addItemToVest "RH_15Rnd_45cal_fnp";};
};

if ( _secondaryWeapon in ["RH_g19", "RH_g19t"] ) then {
	_player addHandgunItem "RH_gemtech9";

	for "_i" from 1 to 3 do {_player addItemToVest "RH_17Rnd_9x19_g17";};
};

if ( _secondaryWeapon == "RH_kimber_nw" ) then {
	_player addHandgunItem "RH_gemtech45";

	for "_i" from 1 to 3 do {_player addItemToVest "RH_7Rnd_45cal_m1911";};
};

if ( _secondaryWeapon == "RH_kimber" ) then {
	_player addHandgunItem "RH_osprey";

	for "_i" from 1 to 3 do {_player addItemToVest "RH_7Rnd_45cal_m1911";};
};

if ( _secondaryWeapon == "RH_p226" ) then {
	_player addHandgunItem "RH_suppr9";

	for "_i" from 1 to 3 do {this addItemToVest "RH_15Rnd_9x19_SIG";};
};