/*
 * Author: Striker.A
 *
 * Arguments:
 *  0 - The roster position assigned to the individual
 *
 * Public: No
 */

// Default to an infantryman if unsure
_result = "infantryman";
_input = _this;
_infantrymanRoles = ["Alpha Fireteam Grenadier", "Alpha Fireteam Autorifleman", "Alpha Fireteam Rifleman", "Alpha Fireteam Designated Marksman", "Bravo Fireteam Grenadier", "Bravo Fireteam Autorifleman", "Bravo Fireteam Rifleman", "Bravo Fireteam Designated Marksman", "Infantry Reservist"];
_medicRoles = ["Medical Reservist", "Flight Medic", "Platoon Medic"];
_squadLeaderRoles = ["Squad Leader", "Unit Commander"];
_fireTeamLeaderRoles = ["Alpha Fireteam Leader", "Bravo Fireteam Leader"];

if ( _input in _medicRoles) then {
	_result = "medic";
};

if (_input in _squadLeaderRoles) then {
	 _result = "squadleader";
};

if (_input in _fireTeamLeaderRoles) then {
	_result = "fireteamleader";
};

// Return the result
 _result

