from openql import openql as ql
import os
import argparse

def circuit(config_file, new_scheduler='yes', scheduler='ASAP', uniform_sched= 'no', sched_commute = 'yes', mapper='base', moves='no', maptiebreak='random', initial_placement='no', output_dir_name='test_output', optimize='no', measurement=True, log_level='LOG_WARNING'):
    curdir = os.path.dirname(__file__)
    output_dir = os.path.join(curdir, output_dir_name)
    ql.set_option('output_dir', output_dir)
    ql.set_option('optimize', optimize)
    ql.set_option('scheduler', scheduler)
    ql.set_option('scheduler_uniform', uniform_sched)
    ql.set_option('mapper', mapper)
    ql.set_option('initialplace', initial_placement)
    ql.set_option('log_level', log_level)
    ql.set_option('scheduler_post179', new_scheduler)
    ql.set_option('scheduler_commute', sched_commute)
    ql.set_option('mapusemoves', moves)
    ql.set_option('maptiebreak', maptiebreak)

    config_fn = os.path.join(curdir, config_file)

    # platform  = ql.Platform('platform_none', config_fn)
    platform  = ql.Platform('starmon', config_fn)
    sweep_points = [1,2]
    num_circuits = 1
    num_qubits = 386
    p = ql.Program('vbeAdder_128b', platform, num_qubits)
    p.set_sweep_points(sweep_points, num_circuits)
    k = ql.Kernel('vbeAdder_128b', platform, num_qubits)
    k.gate('toffoli',[1,2,3])
    k.gate('cnot',[1,2])
    k.gate('toffoli',[0,2,3])
    k.gate('toffoli',[4,5,6])
    k.gate('cnot',[4,5])
    k.gate('toffoli',[3,5,6])
    k.gate('toffoli',[7,8,9])
    k.gate('cnot',[7,8])
    k.gate('toffoli',[6,8,9])
    k.gate('toffoli',[10,11,12])
    k.gate('cnot',[10,11])
    k.gate('toffoli',[9,11,12])
    k.gate('toffoli',[13,14,15])
    k.gate('cnot',[13,14])
    k.gate('toffoli',[12,14,15])
    k.gate('toffoli',[16,17,18])
    k.gate('cnot',[16,17])
    k.gate('toffoli',[15,17,18])
    k.gate('toffoli',[19,20,21])
    k.gate('cnot',[19,20])
    k.gate('toffoli',[18,20,21])
    k.gate('toffoli',[22,23,24])
    k.gate('cnot',[22,23])
    k.gate('toffoli',[21,23,24])
    k.gate('toffoli',[25,26,27])
    k.gate('cnot',[25,26])
    k.gate('toffoli',[24,26,27])
    k.gate('toffoli',[28,29,30])
    k.gate('cnot',[28,29])
    k.gate('toffoli',[27,29,30])
    k.gate('toffoli',[31,32,33])
    k.gate('cnot',[31,32])
    k.gate('toffoli',[30,32,33])
    k.gate('toffoli',[34,35,36])
    k.gate('cnot',[34,35])
    k.gate('toffoli',[33,35,36])
    k.gate('toffoli',[37,38,39])
    k.gate('cnot',[37,38])
    k.gate('toffoli',[36,38,39])
    k.gate('toffoli',[40,41,42])
    k.gate('cnot',[40,41])
    k.gate('toffoli',[39,41,42])
    k.gate('toffoli',[43,44,45])
    k.gate('cnot',[43,44])
    k.gate('toffoli',[42,44,45])
    k.gate('toffoli',[46,47,48])
    k.gate('cnot',[46,47])
    k.gate('toffoli',[45,47,48])
    k.gate('toffoli',[49,50,51])
    k.gate('cnot',[49,50])
    k.gate('toffoli',[48,50,51])
    k.gate('toffoli',[52,53,54])
    k.gate('cnot',[52,53])
    k.gate('toffoli',[51,53,54])
    k.gate('toffoli',[55,56,57])
    k.gate('cnot',[55,56])
    k.gate('toffoli',[54,56,57])
    k.gate('toffoli',[58,59,60])
    k.gate('cnot',[58,59])
    k.gate('toffoli',[57,59,60])
    k.gate('toffoli',[61,62,63])
    k.gate('cnot',[61,62])
    k.gate('toffoli',[60,62,63])
    k.gate('toffoli',[64,65,66])
    k.gate('cnot',[64,65])
    k.gate('toffoli',[63,65,66])
    k.gate('toffoli',[67,68,69])
    k.gate('cnot',[67,68])
    k.gate('toffoli',[66,68,69])
    k.gate('toffoli',[70,71,72])
    k.gate('cnot',[70,71])
    k.gate('toffoli',[69,71,72])
    k.gate('toffoli',[73,74,75])
    k.gate('cnot',[73,74])
    k.gate('toffoli',[72,74,75])
    k.gate('toffoli',[76,77,78])
    k.gate('cnot',[76,77])
    k.gate('toffoli',[75,77,78])
    k.gate('toffoli',[79,80,81])
    k.gate('cnot',[79,80])
    k.gate('toffoli',[78,80,81])
    k.gate('toffoli',[82,83,84])
    k.gate('cnot',[82,83])
    k.gate('toffoli',[81,83,84])
    k.gate('toffoli',[85,86,87])
    k.gate('cnot',[85,86])
    k.gate('toffoli',[84,86,87])
    k.gate('toffoli',[88,89,90])
    k.gate('cnot',[88,89])
    k.gate('toffoli',[87,89,90])
    k.gate('toffoli',[91,92,93])
    k.gate('cnot',[91,92])
    k.gate('toffoli',[90,92,93])
    k.gate('toffoli',[94,95,96])
    k.gate('cnot',[94,95])
    k.gate('toffoli',[93,95,96])
    k.gate('toffoli',[97,98,99])
    k.gate('cnot',[97,98])
    k.gate('toffoli',[96,98,99])
    k.gate('toffoli',[100,101,102])
    k.gate('cnot',[100,101])
    k.gate('toffoli',[99,101,102])
    k.gate('toffoli',[103,104,105])
    k.gate('cnot',[103,104])
    k.gate('toffoli',[102,104,105])
    k.gate('toffoli',[106,107,108])
    k.gate('cnot',[106,107])
    k.gate('toffoli',[105,107,108])
    k.gate('toffoli',[109,110,111])
    k.gate('cnot',[109,110])
    k.gate('toffoli',[108,110,111])
    k.gate('toffoli',[112,113,114])
    k.gate('cnot',[112,113])
    k.gate('toffoli',[111,113,114])
    k.gate('toffoli',[115,116,117])
    k.gate('cnot',[115,116])
    k.gate('toffoli',[114,116,117])
    k.gate('toffoli',[118,119,120])
    k.gate('cnot',[118,119])
    k.gate('toffoli',[117,119,120])
    k.gate('toffoli',[121,122,123])
    k.gate('cnot',[121,122])
    k.gate('toffoli',[120,122,123])
    k.gate('toffoli',[124,125,126])
    k.gate('cnot',[124,125])
    k.gate('toffoli',[123,125,126])
    k.gate('toffoli',[127,128,129])
    k.gate('cnot',[127,128])
    k.gate('toffoli',[126,128,129])
    k.gate('toffoli',[130,131,132])
    k.gate('cnot',[130,131])
    k.gate('toffoli',[129,131,132])
    k.gate('toffoli',[133,134,135])
    k.gate('cnot',[133,134])
    k.gate('toffoli',[132,134,135])
    k.gate('toffoli',[136,137,138])
    k.gate('cnot',[136,137])
    k.gate('toffoli',[135,137,138])
    k.gate('toffoli',[139,140,141])
    k.gate('cnot',[139,140])
    k.gate('toffoli',[138,140,141])
    k.gate('toffoli',[142,143,144])
    k.gate('cnot',[142,143])
    k.gate('toffoli',[141,143,144])
    k.gate('toffoli',[145,146,147])
    k.gate('cnot',[145,146])
    k.gate('toffoli',[144,146,147])
    k.gate('toffoli',[148,149,150])
    k.gate('cnot',[148,149])
    k.gate('toffoli',[147,149,150])
    k.gate('toffoli',[151,152,153])
    k.gate('cnot',[151,152])
    k.gate('toffoli',[150,152,153])
    k.gate('toffoli',[154,155,156])
    k.gate('cnot',[154,155])
    k.gate('toffoli',[153,155,156])
    k.gate('toffoli',[157,158,159])
    k.gate('cnot',[157,158])
    k.gate('toffoli',[156,158,159])
    k.gate('toffoli',[160,161,162])
    k.gate('cnot',[160,161])
    k.gate('toffoli',[159,161,162])
    k.gate('toffoli',[163,164,165])
    k.gate('cnot',[163,164])
    k.gate('toffoli',[162,164,165])
    k.gate('toffoli',[166,167,168])
    k.gate('cnot',[166,167])
    k.gate('toffoli',[165,167,168])
    k.gate('toffoli',[169,170,171])
    k.gate('cnot',[169,170])
    k.gate('toffoli',[168,170,171])
    k.gate('toffoli',[172,173,174])
    k.gate('cnot',[172,173])
    k.gate('toffoli',[171,173,174])
    k.gate('toffoli',[175,176,177])
    k.gate('cnot',[175,176])
    k.gate('toffoli',[174,176,177])
    k.gate('toffoli',[178,179,180])
    k.gate('cnot',[178,179])
    k.gate('toffoli',[177,179,180])
    k.gate('toffoli',[181,182,183])
    k.gate('cnot',[181,182])
    k.gate('toffoli',[180,182,183])
    k.gate('toffoli',[184,185,186])
    k.gate('cnot',[184,185])
    k.gate('toffoli',[183,185,186])
    k.gate('toffoli',[187,188,189])
    k.gate('cnot',[187,188])
    k.gate('toffoli',[186,188,189])
    k.gate('toffoli',[190,191,192])
    k.gate('cnot',[190,191])
    k.gate('toffoli',[189,191,192])
    k.gate('toffoli',[193,194,195])
    k.gate('cnot',[193,194])
    k.gate('toffoli',[192,194,195])
    k.gate('toffoli',[196,197,198])
    k.gate('cnot',[196,197])
    k.gate('toffoli',[195,197,198])
    k.gate('toffoli',[199,200,201])
    k.gate('cnot',[199,200])
    k.gate('toffoli',[198,200,201])
    k.gate('toffoli',[202,203,204])
    k.gate('cnot',[202,203])
    k.gate('toffoli',[201,203,204])
    k.gate('toffoli',[205,206,207])
    k.gate('cnot',[205,206])
    k.gate('toffoli',[204,206,207])
    k.gate('toffoli',[208,209,210])
    k.gate('cnot',[208,209])
    k.gate('toffoli',[207,209,210])
    k.gate('toffoli',[211,212,213])
    k.gate('cnot',[211,212])
    k.gate('toffoli',[210,212,213])
    k.gate('toffoli',[214,215,216])
    k.gate('cnot',[214,215])
    k.gate('toffoli',[213,215,216])
    k.gate('toffoli',[217,218,219])
    k.gate('cnot',[217,218])
    k.gate('toffoli',[216,218,219])
    k.gate('toffoli',[220,221,222])
    k.gate('cnot',[220,221])
    k.gate('toffoli',[219,221,222])
    k.gate('toffoli',[223,224,225])
    k.gate('cnot',[223,224])
    k.gate('toffoli',[222,224,225])
    k.gate('toffoli',[226,227,228])
    k.gate('cnot',[226,227])
    k.gate('toffoli',[225,227,228])
    k.gate('toffoli',[229,230,231])
    k.gate('cnot',[229,230])
    k.gate('toffoli',[228,230,231])
    k.gate('toffoli',[232,233,234])
    k.gate('cnot',[232,233])
    k.gate('toffoli',[231,233,234])
    k.gate('toffoli',[235,236,237])
    k.gate('cnot',[235,236])
    k.gate('toffoli',[234,236,237])
    k.gate('toffoli',[238,239,240])
    k.gate('cnot',[238,239])
    k.gate('toffoli',[237,239,240])
    k.gate('toffoli',[241,242,243])
    k.gate('cnot',[241,242])
    k.gate('toffoli',[240,242,243])
    k.gate('toffoli',[244,245,246])
    k.gate('cnot',[244,245])
    k.gate('toffoli',[243,245,246])
    k.gate('toffoli',[247,248,249])
    k.gate('cnot',[247,248])
    k.gate('toffoli',[246,248,249])
    k.gate('toffoli',[250,251,252])
    k.gate('cnot',[250,251])
    k.gate('toffoli',[249,251,252])
    k.gate('toffoli',[253,254,255])
    k.gate('cnot',[253,254])
    k.gate('toffoli',[252,254,255])
    k.gate('toffoli',[256,257,258])
    k.gate('cnot',[256,257])
    k.gate('toffoli',[255,257,258])
    k.gate('toffoli',[259,260,261])
    k.gate('cnot',[259,260])
    k.gate('toffoli',[258,260,261])
    k.gate('toffoli',[262,263,264])
    k.gate('cnot',[262,263])
    k.gate('toffoli',[261,263,264])
    k.gate('toffoli',[265,266,267])
    k.gate('cnot',[265,266])
    k.gate('toffoli',[264,266,267])
    k.gate('toffoli',[268,269,270])
    k.gate('cnot',[268,269])
    k.gate('toffoli',[267,269,270])
    k.gate('toffoli',[271,272,273])
    k.gate('cnot',[271,272])
    k.gate('toffoli',[270,272,273])
    k.gate('toffoli',[274,275,276])
    k.gate('cnot',[274,275])
    k.gate('toffoli',[273,275,276])
    k.gate('toffoli',[277,278,279])
    k.gate('cnot',[277,278])
    k.gate('toffoli',[276,278,279])
    k.gate('toffoli',[280,281,282])
    k.gate('cnot',[280,281])
    k.gate('toffoli',[279,281,282])
    k.gate('toffoli',[283,284,285])
    k.gate('cnot',[283,284])
    k.gate('toffoli',[282,284,285])
    k.gate('toffoli',[286,287,288])
    k.gate('cnot',[286,287])
    k.gate('toffoli',[285,287,288])
    k.gate('toffoli',[289,290,291])
    k.gate('cnot',[289,290])
    k.gate('toffoli',[288,290,291])
    k.gate('toffoli',[292,293,294])
    k.gate('cnot',[292,293])
    k.gate('toffoli',[291,293,294])
    k.gate('toffoli',[295,296,297])
    k.gate('cnot',[295,296])
    k.gate('toffoli',[294,296,297])
    k.gate('toffoli',[298,299,300])
    k.gate('cnot',[298,299])
    k.gate('toffoli',[297,299,300])
    k.gate('toffoli',[301,302,303])
    k.gate('cnot',[301,302])
    k.gate('toffoli',[300,302,303])
    k.gate('toffoli',[304,305,306])
    k.gate('cnot',[304,305])
    k.gate('toffoli',[303,305,306])
    k.gate('toffoli',[307,308,309])
    k.gate('cnot',[307,308])
    k.gate('toffoli',[306,308,309])
    k.gate('toffoli',[310,311,312])
    k.gate('cnot',[310,311])
    k.gate('toffoli',[309,311,312])
    k.gate('toffoli',[313,314,315])
    k.gate('cnot',[313,314])
    k.gate('toffoli',[312,314,315])
    k.gate('toffoli',[316,317,318])
    k.gate('cnot',[316,317])
    k.gate('toffoli',[315,317,318])
    k.gate('toffoli',[319,320,321])
    k.gate('cnot',[319,320])
    k.gate('toffoli',[318,320,321])
    k.gate('toffoli',[322,323,324])
    k.gate('cnot',[322,323])
    k.gate('toffoli',[321,323,324])
    k.gate('toffoli',[325,326,327])
    k.gate('cnot',[325,326])
    k.gate('toffoli',[324,326,327])
    k.gate('toffoli',[328,329,330])
    k.gate('cnot',[328,329])
    k.gate('toffoli',[327,329,330])
    k.gate('toffoli',[331,332,333])
    k.gate('cnot',[331,332])
    k.gate('toffoli',[330,332,333])
    k.gate('toffoli',[334,335,336])
    k.gate('cnot',[334,335])
    k.gate('toffoli',[333,335,336])
    k.gate('toffoli',[337,338,339])
    k.gate('cnot',[337,338])
    k.gate('toffoli',[336,338,339])
    k.gate('toffoli',[340,341,342])
    k.gate('cnot',[340,341])
    k.gate('toffoli',[339,341,342])
    k.gate('toffoli',[343,344,345])
    k.gate('cnot',[343,344])
    k.gate('toffoli',[342,344,345])
    k.gate('toffoli',[346,347,348])
    k.gate('cnot',[346,347])
    k.gate('toffoli',[345,347,348])
    k.gate('toffoli',[349,350,351])
    k.gate('cnot',[349,350])
    k.gate('toffoli',[348,350,351])
    k.gate('toffoli',[352,353,354])
    k.gate('cnot',[352,353])
    k.gate('toffoli',[351,353,354])
    k.gate('toffoli',[355,356,357])
    k.gate('cnot',[355,356])
    k.gate('toffoli',[354,356,357])
    k.gate('toffoli',[358,359,360])
    k.gate('cnot',[358,359])
    k.gate('toffoli',[357,359,360])
    k.gate('toffoli',[361,362,363])
    k.gate('cnot',[361,362])
    k.gate('toffoli',[360,362,363])
    k.gate('toffoli',[364,365,366])
    k.gate('cnot',[364,365])
    k.gate('toffoli',[363,365,366])
    k.gate('toffoli',[367,368,369])
    k.gate('cnot',[367,368])
    k.gate('toffoli',[366,368,369])
    k.gate('toffoli',[370,371,372])
    k.gate('cnot',[370,371])
    k.gate('toffoli',[369,371,372])
    k.gate('toffoli',[373,374,375])
    k.gate('cnot',[373,374])
    k.gate('toffoli',[372,374,375])
    k.gate('toffoli',[376,377,378])
    k.gate('cnot',[376,377])
    k.gate('toffoli',[375,377,378])
    k.gate('toffoli',[379,380,381])
    k.gate('cnot',[379,380])
    k.gate('toffoli',[378,380,381])
    k.gate('toffoli',[382,383,384])
    k.gate('cnot',[382,383])
    k.gate('toffoli',[381,383,384])
    k.gate('cnot',[382,383])
    k.gate('toffoli',[378,380,381])
    k.gate('cnot',[379,380])
    k.gate('toffoli',[379,380,381])
    k.gate('cnot',[379,380])
    k.gate('cnot',[378,380])
    k.gate('toffoli',[375,377,378])
    k.gate('cnot',[376,377])
    k.gate('toffoli',[376,377,378])
    k.gate('cnot',[376,377])
    k.gate('cnot',[375,377])
    k.gate('toffoli',[372,374,375])
    k.gate('cnot',[373,374])
    k.gate('toffoli',[373,374,375])
    k.gate('cnot',[373,374])
    k.gate('cnot',[372,374])
    k.gate('toffoli',[369,371,372])
    k.gate('cnot',[370,371])
    k.gate('toffoli',[370,371,372])
    k.gate('cnot',[370,371])
    k.gate('cnot',[369,371])
    k.gate('toffoli',[366,368,369])
    k.gate('cnot',[367,368])
    k.gate('toffoli',[367,368,369])
    k.gate('cnot',[367,368])
    k.gate('cnot',[366,368])
    k.gate('toffoli',[363,365,366])
    k.gate('cnot',[364,365])
    k.gate('toffoli',[364,365,366])
    k.gate('cnot',[364,365])
    k.gate('cnot',[363,365])
    k.gate('toffoli',[360,362,363])
    k.gate('cnot',[361,362])
    k.gate('toffoli',[361,362,363])
    k.gate('cnot',[361,362])
    k.gate('cnot',[360,362])
    k.gate('toffoli',[357,359,360])
    k.gate('cnot',[358,359])
    k.gate('toffoli',[358,359,360])
    k.gate('cnot',[358,359])
    k.gate('cnot',[357,359])
    k.gate('toffoli',[354,356,357])
    k.gate('cnot',[355,356])
    k.gate('toffoli',[355,356,357])
    k.gate('cnot',[355,356])
    k.gate('cnot',[354,356])
    k.gate('toffoli',[351,353,354])
    k.gate('cnot',[352,353])
    k.gate('toffoli',[352,353,354])
    k.gate('cnot',[352,353])
    k.gate('cnot',[351,353])
    k.gate('toffoli',[348,350,351])
    k.gate('cnot',[349,350])
    k.gate('toffoli',[349,350,351])
    k.gate('cnot',[349,350])
    k.gate('cnot',[348,350])
    k.gate('toffoli',[345,347,348])
    k.gate('cnot',[346,347])
    k.gate('toffoli',[346,347,348])
    k.gate('cnot',[346,347])
    k.gate('cnot',[345,347])
    k.gate('toffoli',[342,344,345])
    k.gate('cnot',[343,344])
    k.gate('toffoli',[343,344,345])
    k.gate('cnot',[343,344])
    k.gate('cnot',[342,344])
    k.gate('toffoli',[339,341,342])
    k.gate('cnot',[340,341])
    k.gate('toffoli',[340,341,342])
    k.gate('cnot',[340,341])
    k.gate('cnot',[339,341])
    k.gate('toffoli',[336,338,339])
    k.gate('cnot',[337,338])
    k.gate('toffoli',[337,338,339])
    k.gate('cnot',[337,338])
    k.gate('cnot',[336,338])
    k.gate('toffoli',[333,335,336])
    k.gate('cnot',[334,335])
    k.gate('toffoli',[334,335,336])
    k.gate('cnot',[334,335])
    k.gate('cnot',[333,335])
    k.gate('toffoli',[330,332,333])
    k.gate('cnot',[331,332])
    k.gate('toffoli',[331,332,333])
    k.gate('cnot',[331,332])
    k.gate('cnot',[330,332])
    k.gate('toffoli',[327,329,330])
    k.gate('cnot',[328,329])
    k.gate('toffoli',[328,329,330])
    k.gate('cnot',[328,329])
    k.gate('cnot',[327,329])
    k.gate('toffoli',[324,326,327])
    k.gate('cnot',[325,326])
    k.gate('toffoli',[325,326,327])
    k.gate('cnot',[325,326])
    k.gate('cnot',[324,326])
    k.gate('toffoli',[321,323,324])
    k.gate('cnot',[322,323])
    k.gate('toffoli',[322,323,324])
    k.gate('cnot',[322,323])
    k.gate('cnot',[321,323])
    k.gate('toffoli',[318,320,321])
    k.gate('cnot',[319,320])
    k.gate('toffoli',[319,320,321])
    k.gate('cnot',[319,320])
    k.gate('cnot',[318,320])
    k.gate('toffoli',[315,317,318])
    k.gate('cnot',[316,317])
    k.gate('toffoli',[316,317,318])
    k.gate('cnot',[316,317])
    k.gate('cnot',[315,317])
    k.gate('toffoli',[312,314,315])
    k.gate('cnot',[313,314])
    k.gate('toffoli',[313,314,315])
    k.gate('cnot',[313,314])
    k.gate('cnot',[312,314])
    k.gate('toffoli',[309,311,312])
    k.gate('cnot',[310,311])
    k.gate('toffoli',[310,311,312])
    k.gate('cnot',[310,311])
    k.gate('cnot',[309,311])
    k.gate('toffoli',[306,308,309])
    k.gate('cnot',[307,308])
    k.gate('toffoli',[307,308,309])
    k.gate('cnot',[307,308])
    k.gate('cnot',[306,308])
    k.gate('toffoli',[303,305,306])
    k.gate('cnot',[304,305])
    k.gate('toffoli',[304,305,306])
    k.gate('cnot',[304,305])
    k.gate('cnot',[303,305])
    k.gate('toffoli',[300,302,303])
    k.gate('cnot',[301,302])
    k.gate('toffoli',[301,302,303])
    k.gate('cnot',[301,302])
    k.gate('cnot',[300,302])
    k.gate('toffoli',[297,299,300])
    k.gate('cnot',[298,299])
    k.gate('toffoli',[298,299,300])
    k.gate('cnot',[298,299])
    k.gate('cnot',[297,299])
    k.gate('toffoli',[294,296,297])
    k.gate('cnot',[295,296])
    k.gate('toffoli',[295,296,297])
    k.gate('cnot',[295,296])
    k.gate('cnot',[294,296])
    k.gate('toffoli',[291,293,294])
    k.gate('cnot',[292,293])
    k.gate('toffoli',[292,293,294])
    k.gate('cnot',[292,293])
    k.gate('cnot',[291,293])
    k.gate('toffoli',[288,290,291])
    k.gate('cnot',[289,290])
    k.gate('toffoli',[289,290,291])
    k.gate('cnot',[289,290])
    k.gate('cnot',[288,290])
    k.gate('toffoli',[285,287,288])
    k.gate('cnot',[286,287])
    k.gate('toffoli',[286,287,288])
    k.gate('cnot',[286,287])
    k.gate('cnot',[285,287])
    k.gate('toffoli',[282,284,285])
    k.gate('cnot',[283,284])
    k.gate('toffoli',[283,284,285])
    k.gate('cnot',[283,284])
    k.gate('cnot',[282,284])
    k.gate('toffoli',[279,281,282])
    k.gate('cnot',[280,281])
    k.gate('toffoli',[280,281,282])
    k.gate('cnot',[280,281])
    k.gate('cnot',[279,281])
    k.gate('toffoli',[276,278,279])
    k.gate('cnot',[277,278])
    k.gate('toffoli',[277,278,279])
    k.gate('cnot',[277,278])
    k.gate('cnot',[276,278])
    k.gate('toffoli',[273,275,276])
    k.gate('cnot',[274,275])
    k.gate('toffoli',[274,275,276])
    k.gate('cnot',[274,275])
    k.gate('cnot',[273,275])
    k.gate('toffoli',[270,272,273])
    k.gate('cnot',[271,272])
    k.gate('toffoli',[271,272,273])
    k.gate('cnot',[271,272])
    k.gate('cnot',[270,272])
    k.gate('toffoli',[267,269,270])
    k.gate('cnot',[268,269])
    k.gate('toffoli',[268,269,270])
    k.gate('cnot',[268,269])
    k.gate('cnot',[267,269])
    k.gate('toffoli',[264,266,267])
    k.gate('cnot',[265,266])
    k.gate('toffoli',[265,266,267])
    k.gate('cnot',[265,266])
    k.gate('cnot',[264,266])
    k.gate('toffoli',[261,263,264])
    k.gate('cnot',[262,263])
    k.gate('toffoli',[262,263,264])
    k.gate('cnot',[262,263])
    k.gate('cnot',[261,263])
    k.gate('toffoli',[258,260,261])
    k.gate('cnot',[259,260])
    k.gate('toffoli',[259,260,261])
    k.gate('cnot',[259,260])
    k.gate('cnot',[258,260])
    k.gate('toffoli',[255,257,258])
    k.gate('cnot',[256,257])
    k.gate('toffoli',[256,257,258])
    k.gate('cnot',[256,257])
    k.gate('cnot',[255,257])
    k.gate('toffoli',[252,254,255])
    k.gate('cnot',[253,254])
    k.gate('toffoli',[253,254,255])
    k.gate('cnot',[253,254])
    k.gate('cnot',[252,254])
    k.gate('toffoli',[249,251,252])
    k.gate('cnot',[250,251])
    k.gate('toffoli',[250,251,252])
    k.gate('cnot',[250,251])
    k.gate('cnot',[249,251])
    k.gate('toffoli',[246,248,249])
    k.gate('cnot',[247,248])
    k.gate('toffoli',[247,248,249])
    k.gate('cnot',[247,248])
    k.gate('cnot',[246,248])
    k.gate('toffoli',[243,245,246])
    k.gate('cnot',[244,245])
    k.gate('toffoli',[244,245,246])
    k.gate('cnot',[244,245])
    k.gate('cnot',[243,245])
    k.gate('toffoli',[240,242,243])
    k.gate('cnot',[241,242])
    k.gate('toffoli',[241,242,243])
    k.gate('cnot',[241,242])
    k.gate('cnot',[240,242])
    k.gate('toffoli',[237,239,240])
    k.gate('cnot',[238,239])
    k.gate('toffoli',[238,239,240])
    k.gate('cnot',[238,239])
    k.gate('cnot',[237,239])
    k.gate('toffoli',[234,236,237])
    k.gate('cnot',[235,236])
    k.gate('toffoli',[235,236,237])
    k.gate('cnot',[235,236])
    k.gate('cnot',[234,236])
    k.gate('toffoli',[231,233,234])
    k.gate('cnot',[232,233])
    k.gate('toffoli',[232,233,234])
    k.gate('cnot',[232,233])
    k.gate('cnot',[231,233])
    k.gate('toffoli',[228,230,231])
    k.gate('cnot',[229,230])
    k.gate('toffoli',[229,230,231])
    k.gate('cnot',[229,230])
    k.gate('cnot',[228,230])
    k.gate('toffoli',[225,227,228])
    k.gate('cnot',[226,227])
    k.gate('toffoli',[226,227,228])
    k.gate('cnot',[226,227])
    k.gate('cnot',[225,227])
    k.gate('toffoli',[222,224,225])
    k.gate('cnot',[223,224])
    k.gate('toffoli',[223,224,225])
    k.gate('cnot',[223,224])
    k.gate('cnot',[222,224])
    k.gate('toffoli',[219,221,222])
    k.gate('cnot',[220,221])
    k.gate('toffoli',[220,221,222])
    k.gate('cnot',[220,221])
    k.gate('cnot',[219,221])
    k.gate('toffoli',[216,218,219])
    k.gate('cnot',[217,218])
    k.gate('toffoli',[217,218,219])
    k.gate('cnot',[217,218])
    k.gate('cnot',[216,218])
    k.gate('toffoli',[213,215,216])
    k.gate('cnot',[214,215])
    k.gate('toffoli',[214,215,216])
    k.gate('cnot',[214,215])
    k.gate('cnot',[213,215])
    k.gate('toffoli',[210,212,213])
    k.gate('cnot',[211,212])
    k.gate('toffoli',[211,212,213])
    k.gate('cnot',[211,212])
    k.gate('cnot',[210,212])
    k.gate('toffoli',[207,209,210])
    k.gate('cnot',[208,209])
    k.gate('toffoli',[208,209,210])
    k.gate('cnot',[208,209])
    k.gate('cnot',[207,209])
    k.gate('toffoli',[204,206,207])
    k.gate('cnot',[205,206])
    k.gate('toffoli',[205,206,207])
    k.gate('cnot',[205,206])
    k.gate('cnot',[204,206])
    k.gate('toffoli',[201,203,204])
    k.gate('cnot',[202,203])
    k.gate('toffoli',[202,203,204])
    k.gate('cnot',[202,203])
    k.gate('cnot',[201,203])
    k.gate('toffoli',[198,200,201])
    k.gate('cnot',[199,200])
    k.gate('toffoli',[199,200,201])
    k.gate('cnot',[199,200])
    k.gate('cnot',[198,200])
    k.gate('toffoli',[195,197,198])
    k.gate('cnot',[196,197])
    k.gate('toffoli',[196,197,198])
    k.gate('cnot',[196,197])
    k.gate('cnot',[195,197])
    k.gate('toffoli',[192,194,195])
    k.gate('cnot',[193,194])
    k.gate('toffoli',[193,194,195])
    k.gate('cnot',[193,194])
    k.gate('cnot',[192,194])
    k.gate('toffoli',[189,191,192])
    k.gate('cnot',[190,191])
    k.gate('toffoli',[190,191,192])
    k.gate('cnot',[190,191])
    k.gate('cnot',[189,191])
    k.gate('toffoli',[186,188,189])
    k.gate('cnot',[187,188])
    k.gate('toffoli',[187,188,189])
    k.gate('cnot',[187,188])
    k.gate('cnot',[186,188])
    k.gate('toffoli',[183,185,186])
    k.gate('cnot',[184,185])
    k.gate('toffoli',[184,185,186])
    k.gate('cnot',[184,185])
    k.gate('cnot',[183,185])
    k.gate('toffoli',[180,182,183])
    k.gate('cnot',[181,182])
    k.gate('toffoli',[181,182,183])
    k.gate('cnot',[181,182])
    k.gate('cnot',[180,182])
    k.gate('toffoli',[177,179,180])
    k.gate('cnot',[178,179])
    k.gate('toffoli',[178,179,180])
    k.gate('cnot',[178,179])
    k.gate('cnot',[177,179])
    k.gate('toffoli',[174,176,177])
    k.gate('cnot',[175,176])
    k.gate('toffoli',[175,176,177])
    k.gate('cnot',[175,176])
    k.gate('cnot',[174,176])
    k.gate('toffoli',[171,173,174])
    k.gate('cnot',[172,173])
    k.gate('toffoli',[172,173,174])
    k.gate('cnot',[172,173])
    k.gate('cnot',[171,173])
    k.gate('toffoli',[168,170,171])
    k.gate('cnot',[169,170])
    k.gate('toffoli',[169,170,171])
    k.gate('cnot',[169,170])
    k.gate('cnot',[168,170])
    k.gate('toffoli',[165,167,168])
    k.gate('cnot',[166,167])
    k.gate('toffoli',[166,167,168])
    k.gate('cnot',[166,167])
    k.gate('cnot',[165,167])
    k.gate('toffoli',[162,164,165])
    k.gate('cnot',[163,164])
    k.gate('toffoli',[163,164,165])
    k.gate('cnot',[163,164])
    k.gate('cnot',[162,164])
    k.gate('toffoli',[159,161,162])
    k.gate('cnot',[160,161])
    k.gate('toffoli',[160,161,162])
    k.gate('cnot',[160,161])
    k.gate('cnot',[159,161])
    k.gate('toffoli',[156,158,159])
    k.gate('cnot',[157,158])
    k.gate('toffoli',[157,158,159])
    k.gate('cnot',[157,158])
    k.gate('cnot',[156,158])
    k.gate('toffoli',[153,155,156])
    k.gate('cnot',[154,155])
    k.gate('toffoli',[154,155,156])
    k.gate('cnot',[154,155])
    k.gate('cnot',[153,155])
    k.gate('toffoli',[150,152,153])
    k.gate('cnot',[151,152])
    k.gate('toffoli',[151,152,153])
    k.gate('cnot',[151,152])
    k.gate('cnot',[150,152])
    k.gate('toffoli',[147,149,150])
    k.gate('cnot',[148,149])
    k.gate('toffoli',[148,149,150])
    k.gate('cnot',[148,149])
    k.gate('cnot',[147,149])
    k.gate('toffoli',[144,146,147])
    k.gate('cnot',[145,146])
    k.gate('toffoli',[145,146,147])
    k.gate('cnot',[145,146])
    k.gate('cnot',[144,146])
    k.gate('toffoli',[141,143,144])
    k.gate('cnot',[142,143])
    k.gate('toffoli',[142,143,144])
    k.gate('cnot',[142,143])
    k.gate('cnot',[141,143])
    k.gate('toffoli',[138,140,141])
    k.gate('cnot',[139,140])
    k.gate('toffoli',[139,140,141])
    k.gate('cnot',[139,140])
    k.gate('cnot',[138,140])
    k.gate('toffoli',[135,137,138])
    k.gate('cnot',[136,137])
    k.gate('toffoli',[136,137,138])
    k.gate('cnot',[136,137])
    k.gate('cnot',[135,137])
    k.gate('toffoli',[132,134,135])
    k.gate('cnot',[133,134])
    k.gate('toffoli',[133,134,135])
    k.gate('cnot',[133,134])
    k.gate('cnot',[132,134])
    k.gate('toffoli',[129,131,132])
    k.gate('cnot',[130,131])
    k.gate('toffoli',[130,131,132])
    k.gate('cnot',[130,131])
    k.gate('cnot',[129,131])
    k.gate('toffoli',[126,128,129])
    k.gate('cnot',[127,128])
    k.gate('toffoli',[127,128,129])
    k.gate('cnot',[127,128])
    k.gate('cnot',[126,128])
    k.gate('toffoli',[123,125,126])
    k.gate('cnot',[124,125])
    k.gate('toffoli',[124,125,126])
    k.gate('cnot',[124,125])
    k.gate('cnot',[123,125])
    k.gate('toffoli',[120,122,123])
    k.gate('cnot',[121,122])
    k.gate('toffoli',[121,122,123])
    k.gate('cnot',[121,122])
    k.gate('cnot',[120,122])
    k.gate('toffoli',[117,119,120])
    k.gate('cnot',[118,119])
    k.gate('toffoli',[118,119,120])
    k.gate('cnot',[118,119])
    k.gate('cnot',[117,119])
    k.gate('toffoli',[114,116,117])
    k.gate('cnot',[115,116])
    k.gate('toffoli',[115,116,117])
    k.gate('cnot',[115,116])
    k.gate('cnot',[114,116])
    k.gate('toffoli',[111,113,114])
    k.gate('cnot',[112,113])
    k.gate('toffoli',[112,113,114])
    k.gate('cnot',[112,113])
    k.gate('cnot',[111,113])
    k.gate('toffoli',[108,110,111])
    k.gate('cnot',[109,110])
    k.gate('toffoli',[109,110,111])
    k.gate('cnot',[109,110])
    k.gate('cnot',[108,110])
    k.gate('toffoli',[105,107,108])
    k.gate('cnot',[106,107])
    k.gate('toffoli',[106,107,108])
    k.gate('cnot',[106,107])
    k.gate('cnot',[105,107])
    k.gate('toffoli',[102,104,105])
    k.gate('cnot',[103,104])
    k.gate('toffoli',[103,104,105])
    k.gate('cnot',[103,104])
    k.gate('cnot',[102,104])
    k.gate('toffoli',[99,101,102])
    k.gate('cnot',[100,101])
    k.gate('toffoli',[100,101,102])
    k.gate('cnot',[100,101])
    k.gate('cnot',[99,101])
    k.gate('toffoli',[96,98,99])
    k.gate('cnot',[97,98])
    k.gate('toffoli',[97,98,99])
    k.gate('cnot',[97,98])
    k.gate('cnot',[96,98])
    k.gate('toffoli',[93,95,96])
    k.gate('cnot',[94,95])
    k.gate('toffoli',[94,95,96])
    k.gate('cnot',[94,95])
    k.gate('cnot',[93,95])
    k.gate('toffoli',[90,92,93])
    k.gate('cnot',[91,92])
    k.gate('toffoli',[91,92,93])
    k.gate('cnot',[91,92])
    k.gate('cnot',[90,92])
    k.gate('toffoli',[87,89,90])
    k.gate('cnot',[88,89])
    k.gate('toffoli',[88,89,90])
    k.gate('cnot',[88,89])
    k.gate('cnot',[87,89])
    k.gate('toffoli',[84,86,87])
    k.gate('cnot',[85,86])
    k.gate('toffoli',[85,86,87])
    k.gate('cnot',[85,86])
    k.gate('cnot',[84,86])
    k.gate('toffoli',[81,83,84])
    k.gate('cnot',[82,83])
    k.gate('toffoli',[82,83,84])
    k.gate('cnot',[82,83])
    k.gate('cnot',[81,83])
    k.gate('toffoli',[78,80,81])
    k.gate('cnot',[79,80])
    k.gate('toffoli',[79,80,81])
    k.gate('cnot',[79,80])
    k.gate('cnot',[78,80])
    k.gate('toffoli',[75,77,78])
    k.gate('cnot',[76,77])
    k.gate('toffoli',[76,77,78])
    k.gate('cnot',[76,77])
    k.gate('cnot',[75,77])
    k.gate('toffoli',[72,74,75])
    k.gate('cnot',[73,74])
    k.gate('toffoli',[73,74,75])
    k.gate('cnot',[73,74])
    k.gate('cnot',[72,74])
    k.gate('toffoli',[69,71,72])
    k.gate('cnot',[70,71])
    k.gate('toffoli',[70,71,72])
    k.gate('cnot',[70,71])
    k.gate('cnot',[69,71])
    k.gate('toffoli',[66,68,69])
    k.gate('cnot',[67,68])
    k.gate('toffoli',[67,68,69])
    k.gate('cnot',[67,68])
    k.gate('cnot',[66,68])
    k.gate('toffoli',[63,65,66])
    k.gate('cnot',[64,65])
    k.gate('toffoli',[64,65,66])
    k.gate('cnot',[64,65])
    k.gate('cnot',[63,65])
    k.gate('toffoli',[60,62,63])
    k.gate('cnot',[61,62])
    k.gate('toffoli',[61,62,63])
    k.gate('cnot',[61,62])
    k.gate('cnot',[60,62])
    k.gate('toffoli',[57,59,60])
    k.gate('cnot',[58,59])
    k.gate('toffoli',[58,59,60])
    k.gate('cnot',[58,59])
    k.gate('cnot',[57,59])
    k.gate('toffoli',[54,56,57])
    k.gate('cnot',[55,56])
    k.gate('toffoli',[55,56,57])
    k.gate('cnot',[55,56])
    k.gate('cnot',[54,56])
    k.gate('toffoli',[51,53,54])
    k.gate('cnot',[52,53])
    k.gate('toffoli',[52,53,54])
    k.gate('cnot',[52,53])
    k.gate('cnot',[51,53])
    k.gate('toffoli',[48,50,51])
    k.gate('cnot',[49,50])
    k.gate('toffoli',[49,50,51])
    k.gate('cnot',[49,50])
    k.gate('cnot',[48,50])
    k.gate('toffoli',[45,47,48])
    k.gate('cnot',[46,47])
    k.gate('toffoli',[46,47,48])
    k.gate('cnot',[46,47])
    k.gate('cnot',[45,47])
    k.gate('toffoli',[42,44,45])
    k.gate('cnot',[43,44])
    k.gate('toffoli',[43,44,45])
    k.gate('cnot',[43,44])
    k.gate('cnot',[42,44])
    k.gate('toffoli',[39,41,42])
    k.gate('cnot',[40,41])
    k.gate('toffoli',[40,41,42])
    k.gate('cnot',[40,41])
    k.gate('cnot',[39,41])
    k.gate('toffoli',[36,38,39])
    k.gate('cnot',[37,38])
    k.gate('toffoli',[37,38,39])
    k.gate('cnot',[37,38])
    k.gate('cnot',[36,38])
    k.gate('toffoli',[33,35,36])
    k.gate('cnot',[34,35])
    k.gate('toffoli',[34,35,36])
    k.gate('cnot',[34,35])
    k.gate('cnot',[33,35])
    k.gate('toffoli',[30,32,33])
    k.gate('cnot',[31,32])
    k.gate('toffoli',[31,32,33])
    k.gate('cnot',[31,32])
    k.gate('cnot',[30,32])
    k.gate('toffoli',[27,29,30])
    k.gate('cnot',[28,29])
    k.gate('toffoli',[28,29,30])
    k.gate('cnot',[28,29])
    k.gate('cnot',[27,29])
    k.gate('toffoli',[24,26,27])
    k.gate('cnot',[25,26])
    k.gate('toffoli',[25,26,27])
    k.gate('cnot',[25,26])
    k.gate('cnot',[24,26])
    k.gate('toffoli',[21,23,24])
    k.gate('cnot',[22,23])
    k.gate('toffoli',[22,23,24])
    k.gate('cnot',[22,23])
    k.gate('cnot',[21,23])
    k.gate('toffoli',[18,20,21])
    k.gate('cnot',[19,20])
    k.gate('toffoli',[19,20,21])
    k.gate('cnot',[19,20])
    k.gate('cnot',[18,20])
    k.gate('toffoli',[15,17,18])
    k.gate('cnot',[16,17])
    k.gate('toffoli',[16,17,18])
    k.gate('cnot',[16,17])
    k.gate('cnot',[15,17])
    k.gate('toffoli',[12,14,15])
    k.gate('cnot',[13,14])
    k.gate('toffoli',[13,14,15])
    k.gate('cnot',[13,14])
    k.gate('cnot',[12,14])
    k.gate('toffoli',[9,11,12])
    k.gate('cnot',[10,11])
    k.gate('toffoli',[10,11,12])
    k.gate('cnot',[10,11])
    k.gate('cnot',[9,11])
    k.gate('toffoli',[6,8,9])
    k.gate('cnot',[7,8])
    k.gate('toffoli',[7,8,9])
    k.gate('cnot',[7,8])
    k.gate('cnot',[6,8])
    k.gate('toffoli',[3,5,6])
    k.gate('cnot',[4,5])
    k.gate('toffoli',[4,5,6])
    k.gate('cnot',[4,5])
    k.gate('cnot',[3,5])
    k.gate('toffoli',[0,2,3])
    k.gate('cnot',[1,2])
    k.gate('toffoli',[1,2,3])
    k.gate('cnot',[1,2])
    k.gate('cnot',[0,2])

    if measurement:
        for q in range(num_qubits):
            k.gate('measure', [q])

    p.add_kernel(k)
    p.compile()
    ql.set_option('mapper', 'no')

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='OpenQL compilation of a Quantum Algorithm')
    parser.add_argument('config_file', help='Path to the OpenQL configuration file to compile this algorithm')
    parser.add_argument('--new_scheduler', nargs='?', default='yes', help='Scheduler defined by Hans')
    parser.add_argument('--scheduler', nargs='?', default='ASAP', help='Scheduler specification (ASAP (default), ALAP, ...)')
    parser.add_argument('--uniform_sched', nargs='?', default='no', help='Uniform shceduler actication (yes or no)')
    parser.add_argument('--sched_commute', nargs='?', default='yes', help='Permits two-qubit gates to be commutable')
    parser.add_argument('--mapper', nargs='?', default='base', help='Mapper specification (base, minextend, minextendrc)')
    parser.add_argument('--moves', nargs='?', default='no', help='Let the use of moves')
    parser.add_argument('--maptiebreak', nargs='?', default='random', help='')
    parser.add_argument('--initial_placement', nargs='?', default='no', help='Initial placement specification (yes or no)')
    parser.add_argument('--out_dir', nargs='?', default='test_output', help='Folder name to store the compilation')
    parser.add_argument('--measurement', nargs='?', default=True, help='Add measurement to all the qubits in the end of the algorithm')
    args = parser.parse_args()
    try:
        circuit(args.config_file, args.new_scheduler, args.scheduler, args.uniform_sched, args.sched_commute, args.mapper, args.moves, args.maptiebreak, args.initial_placement, args.out_dir)
    except TypeError:
        print('\nCompiled, but some gate is not defined in the configuration file. \nThe gate will be invoked like it is.')
        raise