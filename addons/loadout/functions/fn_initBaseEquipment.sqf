/*
 * Author: Striker.A
 *
 * Arguments:
 *  0 - RRF Player Object
 *  1 - Player Role String
 *
 * Public: No
 */

 private ["_player", "_role"];

_player = _this select 0;
_role = _this select 1;

// Add essential items
_player linkItem "ItemMap";
_player linkItem "ItemCompass";
_player linkItem "ACE_Altimeter";
_player linkItem "ItemRadioAcreFlagged";

// Add the universal base load
for "_i" from 1 to 6 do {_player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_player addItemToUniform "ACE_morphine";};
for "_i" from 1 to 2 do {_player addItemToUniform "ACE_tourniquet";};
_player addItemToUniform "ACE_EarPlugs";
_player addItemToUniform "ACE_MapTools";
_player addItemToUniform "ACE_Flashlight_XL50";
_player addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 4 do {_player addItemToUniform "Chemlight_green";};
for "_i" from 1 to 4 do {_player addItemToUniform "ACE_Chemlight_HiOrange";};

// Give everyone a 343
_player addItemToUniform "ACRE_PRC343";

// Add vest items
for "_i" from 1 to 2 do {_player addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_player addItemToVest "SmokeShell";};
_player addItemToVest "B_IR_Grenade";

// Add backpack items
if ( _role == "medic" ) then {
	_player addItemToBackpack "ACE_bodyBag";
	for "_i" from 1 to 5 do {_player addItemToBackpack "ACE_CableTie";};
	_player addItemToBackpack "ACE_SpraypaintGreen";
	_player addItemToBackpack "ACE_SpraypaintRed";
	for "_i" from 1 to 10 do {_player addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 10 do {_player addItemToBackpack "ACE_packingBandage";};
	_player addItemToBackpack "ACE_personalAidKit";
	_player addItemToBackpack "ACE_surgicalKit";
	for "_i" from 1 to 4 do {_player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 2 do {_player addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 6 do {_player addItemToBackpack "ACE_tourniquet";};
	for "_i" from 1 to 2 do {_player addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 5 do {_player addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 3 do {_player addItemToBackpack "ACE_adenosine";};
	for "_i" from 1 to 2 do {_player addItemToBackpack "ACE_atropine";};
	_player addItemToBackpack "B_IR_Grenade";
	for "_i" from 1 to 2 do {_player addItemToBackpack "UK3CB_BAF_SmokeShell";};
} else {
	for "_i" from 1 to 6 do {_player addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 2 do {_player addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 2 do {_player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 2 do {_player addItemToBackpack "ACE_tourniquet";};
	_player addItemToBackpack "ACE_bodyBag";
	_player addItemToBackpack "ACE_salineIV_500";
	for "_i" from 1 to 5 do {_player addItemToBackpack "ACE_CableTie";};
	_player addItemToBackpack "ACE_SpraypaintGreen";
	_player addItemToBackpack "ACE_SpraypaintRed";
	_player addItemToBackpack "ACE_IR_Strobe_Item";
	_player addItemToBackpack "B_IR_Grenade";
	for "_i" from 1 to 2 do {_player addItemToBackpack "SmokeShell";};
};

// Add custom equipment by class
if ( _role in ["squadleader", "fireteamleader"] ) then {
	_player addItemToBackpack "SmokeShellBlue";
	_player addItemToBackpack "SmokeShellPurple";
	_player addItemToBackpack "ACE_M14";
};

if ( _role == "squadleader" ) then {
	_player addItemToUniform "ACRE_PRC152";
};

if ( _role == "fireteamleader" ) then {
	_player addItemToBackpack "ACE_Clacker";
	_player addItemToBackpack "DemoCharge_Remote_Mag";
};

if ( _role == "medic" ) then {
	// Mark medics as a medic
	_player setVariable ["ace_medical_medicClass", 1, true];
	[_player, "UK3CB_BAF_Insignia_RedCross"] call bis_fnc_setUnitInsignia;
};