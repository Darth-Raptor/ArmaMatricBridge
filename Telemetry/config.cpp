class CfgPatches
{
    class RealTimeFlightTelemetry
    {
        units[] = {};
        weapons[] = {};
        requiredVersion = 1.0;
        requiredAddons[] = {"cba_main"};
    };
};

class CfgFunctions
{
    class R_T_F_T
    {
        class Telemetry
        {
            file = "R_T_F_T\functions\telemetry";
            class sendCommonTelemetry
            {
            };
        };
        class SystemStates
        {
            file = "R_T_F_T\functions\states";
            class sendHatchetStates
            {
            };
        };
    };
};
class Extended_PreInit_EventHandlers
{
    class RealTimeFlightTelemetry_preInit
    {
        init = "call compile preprocessFileLineNumbers 'R_T_F_T\XEH_preInit.sqf'";
    };
};
class Extended_PostInit_EventHandlers
{
    class RealTimeFlightTelemetry_postInit
    {
        init = "call compile preprocessFileLineNumbers 'R_T_F_T\XEH_postInit.sqf'";
    };
};