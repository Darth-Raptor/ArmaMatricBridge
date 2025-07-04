[] spawn {
    waitUntil { !isNull player };
    player addEventHandler ["GetInMan", {
        params ["_unit", "_role", "_vehicle", "_turret"];

        if (_vehicle isKindOf "Air") then {
            [_vehicle] spawn R_T_F_T_fnc_sendCommonTelemetry;
        };
    }];
};
