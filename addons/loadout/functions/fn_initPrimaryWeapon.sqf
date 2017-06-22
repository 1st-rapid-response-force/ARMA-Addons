/*
 * Author: Striker.A
 *
 * Arguments:
 *  0 - RRF Player Object
 *  1 - Player Role String
 *  2 - Primary Weapons [String]
 *
 * Public: No
 */

private ["_player", "_role", "_primaryWeapons", "_556AR", "_UGL", "_556MG", "_762DMR"];

_player = _this select 0;
_role = _this select 1;
_primaryWeapons = _this select 2;

// Define weapon types
_556AR = ["rhs_weap_m16a4_carryhandle", "rhs_weap_m16a4_carryhandle", "rhs_weap_m16a4_carryhandle_m203", "rhs_weap_m4a1", "rhs_weap_m4a1_d", "rhs_weap_m4a1_m203s_d", "rhs_weap_m4a1_m203", "rhs_weap_m4a1_m320", "rhs_weap_m4a1_pmag"];
_UGL = ["rhs_weap_m16a4_carryhandle_m203", "rhs_weap_m4a1_m203s_d", "rhs_weap_m4a1_m203", "rhs_weap_m4a1_m320"];
_556MG = ["rhs_weap_m249_pip_S_para", "rhs_weap_m249_pip_L_para"];
_762DMR = ["rhs_weap_sr25_d", "rhs_weap_sr25_wd"];

for "_i" from 0 to (count _primaryWeapons) do {

	if ( (_primaryWeapons select _i) in _556AR ) then {
		_player addPrimaryWeaponItem "rhsusf_acc_nt4_black";

		// Add rounds proportional to role - default to infantry load
		if ( _role == "medic" ) then {
			for "_i" from 0 to 5 do {_player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		} else {
			for "_i" from 0 to 7 do {_player addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
			for "_i" from 1 to 2 do {_player addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
		};

	};

	if ( (_primaryWeapons select _i) in _UGL ) then {
		// Add standard grenadier items
		for "_i" from 1 to 4 do {_player addItemToVest "rhs_mag_M441_HE";};
		for "_i" from 1 to 2 do {_player addItemToVest "rhs_mag_m714_White";};
		for "_i" from 1 to 2 do {_player addItemToBackpack "rhs_mag_M441_HE";};
		for "_i" from 1 to 2 do {_player addItemToBackpack "UGL_FlareCIR_F";};
		for "_i" from 1 to 2 do {_player addItemToBackpack "UGL_FlareWhite_F";};
	};

	if ( (_primaryWeapons select _i) in _762DMR ) then {
		// Add the SR Supressor
		_player addPrimaryWeaponItem "rhsusf_acc_SR25S";
		_player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";

		for "_i" from 0 to 7 do {_player addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
		for "_i" from 1 to 2 do {_player addItemToBackpack "rhsusf_20Rnd_762x51_m118_special_Mag";};
	};

	if ( (_primaryWeapons select _i) in _556MG ) then {
		_player addPrimaryWeaponItem "rhsusf_acc_nt4_black";
		_player addItemToBackpack "ACE_SpareBarrel";

		for "_i" from 1 to 2 do {_player addItemToVest "rhsusf_200Rnd_556x45_soft_pouch";};
		for "_i" from 0 to 1 do {_player addItemToBackpack "rhsusf_200Rnd_556x45_soft_pouch";};
	};

};