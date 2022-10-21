-- Multimodule protocols

local FAILSAFE = 1
local TELEMETRY = 2

local RF_TUNE_OPTION = {name="RF Tune", min=-128, max=127, display=function(value) return value end }
local SERVO_REFRESH_RATE_OPTION = {name="Servo Refresh Rate", min=0, max=70, display=function(value) return (value * 5 + 50) .. "Hz" end }

local function init()
    system.registerMultimoduleProtocol("Assan", 24)
    system.registerMultimoduleProtocol("Bayang", 14, {"Bayang", "H8S3D", "X16_AH", "IRDRONE", "DHD_D4", "QX100"})
    system.registerMultimoduleProtocol("Bayang RX", 59, {"Multi", "CPPM"})
    system.registerMultimoduleProtocol("Bugs", 41)
    system.registerMultimoduleProtocol("BugsMini", 42, {"BUGSMINI", "BUGS3H"})
    system.registerMultimoduleProtocol("Cabell", 34, {"Cabell_V3", "C_TELEM", "0", "0", "0", "0", "F_SAFE", "UNBIND"})
    system.registerMultimoduleProtocol("CFlie", 38, {"CFlie"})
    system.registerMultimoduleProtocol("CG023", 13, {"CG023", "YD829"})
    system.registerMultimoduleProtocol("Corona", 37, {"COR_V1", "COR_V2", "FD_V3"})
    system.registerMultimoduleProtocol("CX10", 12, {"GREEN", "BLUE", "DM007", "0", "J3015_1", "J3015_2", "MK33041"})
    system.registerMultimoduleProtocol("Devo", 7, {variants={"8CH", "10CH", "12CH", "6CH", "7CH"}})
    system.registerMultimoduleProtocol("DSM", 6, {variants={"DSM2-1F", "DSM2-2F", "DSMX-1F", "DSMX-2F", "AUTO", "DSMR-1F"}, minChannels=3, maxChannels=12})
    system.registerMultimoduleProtocol("DM002", 33)
    system.registerMultimoduleProtocol("E010R5", 81)
    system.registerMultimoduleProtocol("E016H", 85)
    system.registerMultimoduleProtocol("E016HV2", 80)
    system.registerMultimoduleProtocol("E01X", 45, {"E012", "E015"})
    system.registerMultimoduleProtocol("E129", 83, {"E129", "C186"})
    system.registerMultimoduleProtocol("ESky", 16, {"ESky", "ET4"})
    system.registerMultimoduleProtocol("ESky150", 35)
    system.registerMultimoduleProtocol("ESky150V2", 69)
    system.registerMultimoduleProtocol("FlySky", 1, {variants={"Default", "V9X9", "V6X6", "V912", "CX20"}})
    system.registerMultimoduleProtocol("FrSky D8", 3, {minChannels=8, maxChannels=8})
    system.registerMultimoduleProtocol("FrSky V", 25)
    system.registerMultimoduleProtocol("FlySky AFHDS 2A", 28, {variants={"PWM+IBUS", "PPM+IBUS", "PWM+SBUS", "PPM+SBUS", "PWM+IBUS16", "PPM+IBUS16"}, features=FAILSAFE+TELEMETRY, options={SERVO_REFRESH_RATE_OPTION}})
    system.registerMultimoduleProtocol("FQ777", 23)
    system.registerMultimoduleProtocol("Futaba/SFHSS", 21, {"SFHSS"})
    system.registerMultimoduleProtocol("FX", 28, {"816", "620"})
    system.registerMultimoduleProtocol("FY326", 20, {"FY326", "FY319"})
    system.registerMultimoduleProtocol("GD00X", 47, {"GD_V1*", "GD_V2*"})
    system.registerMultimoduleProtocol("GW008", 32)
    system.registerMultimoduleProtocol("H8_3D", 36, {"H8_3D", "H20H", "H20Mini", "H30Mini"})
    system.registerMultimoduleProtocol("Height", 53, {"5ch", "8ch"})
    system.registerMultimoduleProtocol("Hisky", 4, {"Hisky", "HK310"})
    system.registerMultimoduleProtocol("Hitec", 39, {"OPT_FW", "OPT_HUB", "MINIMA"})
    system.registerMultimoduleProtocol("Hontai", 26, {"HONTAI", "JJRCX1", "X5C1", "FQ777_951"})
    system.registerMultimoduleProtocol("HoTT", 57, {"Sync", "No_Sync"})
    system.registerMultimoduleProtocol("Hubsan", 2, {variants={"H107", "H301", "H501"}})
    system.registerMultimoduleProtocol("J6Pro", 22)
    system.registerMultimoduleProtocol("JJRC345", 71, {"JJRC345", "SkyTmblr"})
    system.registerMultimoduleProtocol("JOYSWAY", 84)
    system.registerMultimoduleProtocol("KF606", 49, {"KF606", "MIG320"})
    system.registerMultimoduleProtocol("KN", 9, {"WLTOYS", "FEILUN"})
    system.registerMultimoduleProtocol("Kyosho", 73, {"FHSS", "Hype"})
    system.registerMultimoduleProtocol("Kyosho2", 93, {"KT-17"})
    system.registerMultimoduleProtocol("LOLI", 82)
    system.registerMultimoduleProtocol("Losi", 89)
    system.registerMultimoduleProtocol("MJXq", 18, {"WLH08", "X600", "X800", "H26D", "E010*", "H26WH", "PHOENIX*"})
    system.registerMultimoduleProtocol("MLINK", 78)
    system.registerMultimoduleProtocol("MouldKg", 90, {"Analog", "Digit"})
    system.registerMultimoduleProtocol("MT99xx", 17, {"MT", "H7", "YZ", "LS", "FY805", "A180", "DRAGON", "F949G"})
    system.registerMultimoduleProtocol("MT99xx2", 92, {"PA18"})
    system.registerMultimoduleProtocol("NCC1701", 44)
    system.registerMultimoduleProtocol("OMP", 77, {features=TELEMETRY, options={RF_TUNE_OPTION}})
    system.registerMultimoduleProtocol("OpenLRS", 27)
    system.registerMultimoduleProtocol("Pelikan", 60, {"Pro", "Lite", "SCX24"})
    system.registerMultimoduleProtocol("Potensic", 51, {"A20"})
    system.registerMultimoduleProtocol("PROPEL", 66, {"74-Z"})
    system.registerMultimoduleProtocol("Q2X2", 29, {"Q222", "Q242", "Q282"})
    system.registerMultimoduleProtocol("Q303", 31, {"Q303", "CX35", "CX10D", "CX10WD"})
    system.registerMultimoduleProtocol("Q90C", 72, {"Q90C*"})
    system.registerMultimoduleProtocol("RadioLink", 74, {"Surface", "Air", "DumboRC"})
    system.registerMultimoduleProtocol("Realacc", 76, {"R11"})
    system.registerMultimoduleProtocol("Redpine", 50, {"FAST", "SLOW"})
    system.registerMultimoduleProtocol("Scanner", 54)
    system.registerMultimoduleProtocol("Shenqi", 19, {"Shenqi"})
    system.registerMultimoduleProtocol("Skyartec", 68)
    system.registerMultimoduleProtocol("SLT", 11, {"SLT_V1", "SLT_V2", "Q100", "Q200", "MR100"})
    system.registerMultimoduleProtocol("SymaX", 10, {"SYMAX", "SYMAX5C"})
    system.registerMultimoduleProtocol("Tiger", 61)
    system.registerMultimoduleProtocol("Traxxas", 43, {"6519 RX"})
    system.registerMultimoduleProtocol("V2x2", 5, {"V2x2", "JXD506", "MR101"})
    system.registerMultimoduleProtocol("V761", 48, {"3CH", "4CH"})
    system.registerMultimoduleProtocol("V911S", 46, {"V911S*", "E119*"})
    system.registerMultimoduleProtocol("WFLY", 40, {"WFR0x"})
    system.registerMultimoduleProtocol("WFLY2", 79, {"RF20x"})
    system.registerMultimoduleProtocol("WK2x01", 30, {"WK2801", "WK2401", "W6_5_1", "W6_6_1", "W6_HEL", "W6_HEL_I"})
    system.registerMultimoduleProtocol("XERALL", 91, {"Tank"})
    system.registerMultimoduleProtocol("XK", 62, {"X450", "X420"})
    system.registerMultimoduleProtocol("YD717", 8, {"YD717", "SKYWLKR", "SYMAX4", "XINXUN", "NIHUI"})
    system.registerMultimoduleProtocol("ZSX", 52, {"280"})
end

return {init=init}