if (!hasInterface) exitWith {};
[] spawn {
    private _heli = vehicle player;

    while {true} do {
        private _apu = _heli getVariable ["vtx_uh60_acft_apustate", "N/A"];
        private _apugen = _heli getVariable ["vtx_uh60_acft_apugenswitchstate", "N/A"];
        private _engpctnp = _heli getVariable ["vtx_uh60_sfmplus_engpctnp", [0,0]];
        private _engtgt = _heli getVariable ["vtx_uh60_sfmplus_engtgt", [0,0]];
        private _engstate = _heli getVariable ["vtx_uh60_sfmplus_engstate", ["N/A","N/A"]];
        private _stab = _heli getVariable ["vtx_uh60_sfmplus_stablength", -1];

        diag_log format [
            "[VTX_FLAT] APU=%1 GEN=%2 ENG1=%3 ENG2=%4 TGT1=%5 TGT2=%6 STAB=%7 STATE1=%8 STATE2=%9",
            _apu,
            _apugen,
            _engpctnp select 0,
            _engpctnp select 1,
            _engtgt select 0,
            _engtgt select 1,
            _stab,
            _engstate select 0,
            _engstate select 1
        ];

        sleep 1;
    };
};