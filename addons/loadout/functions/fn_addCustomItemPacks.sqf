/*
 * Author: Striker.A
 *
 * Arguments:
 *  0 - RRF Player Object
 *  1 - Item Packs [String]
 *
 * Public: No
 */

 private ["_player", "_items"];

_player = _this select 0;
_items = _this select 1;

for "_i" from 0 to (count _items) do {
	systemChat str ( _items select _i );
	if ( ( _items select _i ) == "FLASHBANG" ) then {
		for "_i" from 1 to 2 do {_player addItemToVest "ACE_M84";};
		for "_i" from 1 to 2 do {_player addItemToBackpack "ACE_M84";};
	};

	if ( ( _items select _i ) == "BLOOD_SUPPLIES" ) then {
		for "_i" from 1 to 2 do {_player addItemToBackpack "ACE_bloodIV";};
		for "_i" from 1 to 4 do {_player addItemToBackpack "ACE_bloodIV_500";};
		for "_i" from 1 to 8 do {_player addItemToBackpack "ACE_bloodIV_250";};
		for "_i" from 1 to 5 do {_player addItemToBackpack "ACE_plasmaIV_500";};
	};

	if ( ( _items select _i ) == "ItemAndroid" ) then {
		_player linkItem "ItemAndroid";
	};

	if ( ( _items select _i ) == "ItemAndroid" ) then {
		_player linkItem "ItemAndroid";
	};

	if ( ( _items select _i ) == "ItemcTab" ) then {
		_player linkItem "ItemcTab";
	};

	if ( ( _items select _i ) == "ACE_VectorDay" ) then {
		_player linkItem "ACE_VectorDay";
	};

	if ( ( _items select _i ) == "Rangefinder" ) then {
		_player linkItem "Rangefinder";
	};

	if ( ( _items select _i ) == "UK3CB_BAF_Soflam_Laserdesignator" ) then {
		_player linkItem "UK3CB_BAF_Soflam_Laserdesignator";
	};

	if ( ( _items select _i ) == "ANPRC177F" ) then {
		_player addItemToBackpack "ACRE_PRC117F";
	};

};