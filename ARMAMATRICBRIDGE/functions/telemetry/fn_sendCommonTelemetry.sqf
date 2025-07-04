params ["_veh"];

if (missionNamespace getVariable ["R_T_F_T_telemetryRunning", false]) exitWith {};
missionNamespace setVariable ["R_T_F_T_telemetryRunning", true];

while { player in _veh } do {
    private _asl = getPosASL _veh;
    private _atl = getPosATL _veh;
    private _altMSL = round (_asl select 2);
    private _rAlt = round (_atl select 2);

    private _spd = round (speed _veh);
    private _hdg = round (getDir _veh);

    private _dir = vectorDir _veh;
    private _up = vectorUp _veh;


diag_log format [
    "[RTFT_TELEMETRY] %1,%2,%3,%4",
    _altMSL toFixed 2,
    _rAlt toFixed 2,
    _spd toFixed 2,
    _hdg toFixed 2
];

    sleep 1;
};

missionNamespace setVariable ["R_T_F_T__telemetryRunning", false];
