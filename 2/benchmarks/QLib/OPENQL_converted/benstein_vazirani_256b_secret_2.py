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
    num_qubits = 258
    p = ql.Program('benstein_vazirani_256b_secret_2', platform, num_qubits)
    p.set_sweep_points(sweep_points, num_circuits)
    k = ql.Kernel('benstein_vazirani_256b_secret_2', platform, num_qubits)
    k.gate('prepz',[256])
    k.gate('x',[256])
    k.gate('h',[0])
    k.gate('h',[1])
    k.gate('h',[2])
    k.gate('h',[3])
    k.gate('h',[4])
    k.gate('h',[5])
    k.gate('h',[6])
    k.gate('h',[7])
    k.gate('h',[8])
    k.gate('h',[9])
    k.gate('h',[10])
    k.gate('h',[11])
    k.gate('h',[12])
    k.gate('h',[13])
    k.gate('h',[14])
    k.gate('h',[15])
    k.gate('h',[16])
    k.gate('h',[17])
    k.gate('h',[18])
    k.gate('h',[19])
    k.gate('h',[20])
    k.gate('h',[21])
    k.gate('h',[22])
    k.gate('h',[23])
    k.gate('h',[24])
    k.gate('h',[25])
    k.gate('h',[26])
    k.gate('h',[27])
    k.gate('h',[28])
    k.gate('h',[29])
    k.gate('h',[30])
    k.gate('h',[31])
    k.gate('h',[32])
    k.gate('h',[33])
    k.gate('h',[34])
    k.gate('h',[35])
    k.gate('h',[36])
    k.gate('h',[37])
    k.gate('h',[38])
    k.gate('h',[39])
    k.gate('h',[40])
    k.gate('h',[41])
    k.gate('h',[42])
    k.gate('h',[43])
    k.gate('h',[44])
    k.gate('h',[45])
    k.gate('h',[46])
    k.gate('h',[47])
    k.gate('h',[48])
    k.gate('h',[49])
    k.gate('h',[50])
    k.gate('h',[51])
    k.gate('h',[52])
    k.gate('h',[53])
    k.gate('h',[54])
    k.gate('h',[55])
    k.gate('h',[56])
    k.gate('h',[57])
    k.gate('h',[58])
    k.gate('h',[59])
    k.gate('h',[60])
    k.gate('h',[61])
    k.gate('h',[62])
    k.gate('h',[63])
    k.gate('h',[64])
    k.gate('h',[65])
    k.gate('h',[66])
    k.gate('h',[67])
    k.gate('h',[68])
    k.gate('h',[69])
    k.gate('h',[70])
    k.gate('h',[71])
    k.gate('h',[72])
    k.gate('h',[73])
    k.gate('h',[74])
    k.gate('h',[75])
    k.gate('h',[76])
    k.gate('h',[77])
    k.gate('h',[78])
    k.gate('h',[79])
    k.gate('h',[80])
    k.gate('h',[81])
    k.gate('h',[82])
    k.gate('h',[83])
    k.gate('h',[84])
    k.gate('h',[85])
    k.gate('h',[86])
    k.gate('h',[87])
    k.gate('h',[88])
    k.gate('h',[89])
    k.gate('h',[90])
    k.gate('h',[91])
    k.gate('h',[92])
    k.gate('h',[93])
    k.gate('h',[94])
    k.gate('h',[95])
    k.gate('h',[96])
    k.gate('h',[97])
    k.gate('h',[98])
    k.gate('h',[99])
    k.gate('h',[100])
    k.gate('h',[101])
    k.gate('h',[102])
    k.gate('h',[103])
    k.gate('h',[104])
    k.gate('h',[105])
    k.gate('h',[106])
    k.gate('h',[107])
    k.gate('h',[108])
    k.gate('h',[109])
    k.gate('h',[110])
    k.gate('h',[111])
    k.gate('h',[112])
    k.gate('h',[113])
    k.gate('h',[114])
    k.gate('h',[115])
    k.gate('h',[116])
    k.gate('h',[117])
    k.gate('h',[118])
    k.gate('h',[119])
    k.gate('h',[120])
    k.gate('h',[121])
    k.gate('h',[122])
    k.gate('h',[123])
    k.gate('h',[124])
    k.gate('h',[125])
    k.gate('h',[126])
    k.gate('h',[127])
    k.gate('h',[128])
    k.gate('h',[129])
    k.gate('h',[130])
    k.gate('h',[131])
    k.gate('h',[132])
    k.gate('h',[133])
    k.gate('h',[134])
    k.gate('h',[135])
    k.gate('h',[136])
    k.gate('h',[137])
    k.gate('h',[138])
    k.gate('h',[139])
    k.gate('h',[140])
    k.gate('h',[141])
    k.gate('h',[142])
    k.gate('h',[143])
    k.gate('h',[144])
    k.gate('h',[145])
    k.gate('h',[146])
    k.gate('h',[147])
    k.gate('h',[148])
    k.gate('h',[149])
    k.gate('h',[150])
    k.gate('h',[151])
    k.gate('h',[152])
    k.gate('h',[153])
    k.gate('h',[154])
    k.gate('h',[155])
    k.gate('h',[156])
    k.gate('h',[157])
    k.gate('h',[158])
    k.gate('h',[159])
    k.gate('h',[160])
    k.gate('h',[161])
    k.gate('h',[162])
    k.gate('h',[163])
    k.gate('h',[164])
    k.gate('h',[165])
    k.gate('h',[166])
    k.gate('h',[167])
    k.gate('h',[168])
    k.gate('h',[169])
    k.gate('h',[170])
    k.gate('h',[171])
    k.gate('h',[172])
    k.gate('h',[173])
    k.gate('h',[174])
    k.gate('h',[175])
    k.gate('h',[176])
    k.gate('h',[177])
    k.gate('h',[178])
    k.gate('h',[179])
    k.gate('h',[180])
    k.gate('h',[181])
    k.gate('h',[182])
    k.gate('h',[183])
    k.gate('h',[184])
    k.gate('h',[185])
    k.gate('h',[186])
    k.gate('h',[187])
    k.gate('h',[188])
    k.gate('h',[189])
    k.gate('h',[190])
    k.gate('h',[191])
    k.gate('h',[192])
    k.gate('h',[193])
    k.gate('h',[194])
    k.gate('h',[195])
    k.gate('h',[196])
    k.gate('h',[197])
    k.gate('h',[198])
    k.gate('h',[199])
    k.gate('h',[200])
    k.gate('h',[201])
    k.gate('h',[202])
    k.gate('h',[203])
    k.gate('h',[204])
    k.gate('h',[205])
    k.gate('h',[206])
    k.gate('h',[207])
    k.gate('h',[208])
    k.gate('h',[209])
    k.gate('h',[210])
    k.gate('h',[211])
    k.gate('h',[212])
    k.gate('h',[213])
    k.gate('h',[214])
    k.gate('h',[215])
    k.gate('h',[216])
    k.gate('h',[217])
    k.gate('h',[218])
    k.gate('h',[219])
    k.gate('h',[220])
    k.gate('h',[221])
    k.gate('h',[222])
    k.gate('h',[223])
    k.gate('h',[224])
    k.gate('h',[225])
    k.gate('h',[226])
    k.gate('h',[227])
    k.gate('h',[228])
    k.gate('h',[229])
    k.gate('h',[230])
    k.gate('h',[231])
    k.gate('h',[232])
    k.gate('h',[233])
    k.gate('h',[234])
    k.gate('h',[235])
    k.gate('h',[236])
    k.gate('h',[237])
    k.gate('h',[238])
    k.gate('h',[239])
    k.gate('h',[240])
    k.gate('h',[241])
    k.gate('h',[242])
    k.gate('h',[243])
    k.gate('h',[244])
    k.gate('h',[245])
    k.gate('h',[246])
    k.gate('h',[247])
    k.gate('h',[248])
    k.gate('h',[249])
    k.gate('h',[250])
    k.gate('h',[251])
    k.gate('h',[252])
    k.gate('h',[253])
    k.gate('h',[254])
    k.gate('h',[255])
    k.gate('h',[256])
    k.gate('cnot',[1,256])
    k.gate('cnot',[65,256])
    k.gate('cnot',[129,256])
    k.gate('cnot',[193,256])
    k.gate('h',[0])
    k.gate('h',[1])
    k.gate('h',[2])
    k.gate('h',[3])
    k.gate('h',[4])
    k.gate('h',[5])
    k.gate('h',[6])
    k.gate('h',[7])
    k.gate('h',[8])
    k.gate('h',[9])
    k.gate('h',[10])
    k.gate('h',[11])
    k.gate('h',[12])
    k.gate('h',[13])
    k.gate('h',[14])
    k.gate('h',[15])
    k.gate('h',[16])
    k.gate('h',[17])
    k.gate('h',[18])
    k.gate('h',[19])
    k.gate('h',[20])
    k.gate('h',[21])
    k.gate('h',[22])
    k.gate('h',[23])
    k.gate('h',[24])
    k.gate('h',[25])
    k.gate('h',[26])
    k.gate('h',[27])
    k.gate('h',[28])
    k.gate('h',[29])
    k.gate('h',[30])
    k.gate('h',[31])
    k.gate('h',[32])
    k.gate('h',[33])
    k.gate('h',[34])
    k.gate('h',[35])
    k.gate('h',[36])
    k.gate('h',[37])
    k.gate('h',[38])
    k.gate('h',[39])
    k.gate('h',[40])
    k.gate('h',[41])
    k.gate('h',[42])
    k.gate('h',[43])
    k.gate('h',[44])
    k.gate('h',[45])
    k.gate('h',[46])
    k.gate('h',[47])
    k.gate('h',[48])
    k.gate('h',[49])
    k.gate('h',[50])
    k.gate('h',[51])
    k.gate('h',[52])
    k.gate('h',[53])
    k.gate('h',[54])
    k.gate('h',[55])
    k.gate('h',[56])
    k.gate('h',[57])
    k.gate('h',[58])
    k.gate('h',[59])
    k.gate('h',[60])
    k.gate('h',[61])
    k.gate('h',[62])
    k.gate('h',[63])
    k.gate('h',[64])
    k.gate('h',[65])
    k.gate('h',[66])
    k.gate('h',[67])
    k.gate('h',[68])
    k.gate('h',[69])
    k.gate('h',[70])
    k.gate('h',[71])
    k.gate('h',[72])
    k.gate('h',[73])
    k.gate('h',[74])
    k.gate('h',[75])
    k.gate('h',[76])
    k.gate('h',[77])
    k.gate('h',[78])
    k.gate('h',[79])
    k.gate('h',[80])
    k.gate('h',[81])
    k.gate('h',[82])
    k.gate('h',[83])
    k.gate('h',[84])
    k.gate('h',[85])
    k.gate('h',[86])
    k.gate('h',[87])
    k.gate('h',[88])
    k.gate('h',[89])
    k.gate('h',[90])
    k.gate('h',[91])
    k.gate('h',[92])
    k.gate('h',[93])
    k.gate('h',[94])
    k.gate('h',[95])
    k.gate('h',[96])
    k.gate('h',[97])
    k.gate('h',[98])
    k.gate('h',[99])
    k.gate('h',[100])
    k.gate('h',[101])
    k.gate('h',[102])
    k.gate('h',[103])
    k.gate('h',[104])
    k.gate('h',[105])
    k.gate('h',[106])
    k.gate('h',[107])
    k.gate('h',[108])
    k.gate('h',[109])
    k.gate('h',[110])
    k.gate('h',[111])
    k.gate('h',[112])
    k.gate('h',[113])
    k.gate('h',[114])
    k.gate('h',[115])
    k.gate('h',[116])
    k.gate('h',[117])
    k.gate('h',[118])
    k.gate('h',[119])
    k.gate('h',[120])
    k.gate('h',[121])
    k.gate('h',[122])
    k.gate('h',[123])
    k.gate('h',[124])
    k.gate('h',[125])
    k.gate('h',[126])
    k.gate('h',[127])
    k.gate('h',[128])
    k.gate('h',[129])
    k.gate('h',[130])
    k.gate('h',[131])
    k.gate('h',[132])
    k.gate('h',[133])
    k.gate('h',[134])
    k.gate('h',[135])
    k.gate('h',[136])
    k.gate('h',[137])
    k.gate('h',[138])
    k.gate('h',[139])
    k.gate('h',[140])
    k.gate('h',[141])
    k.gate('h',[142])
    k.gate('h',[143])
    k.gate('h',[144])
    k.gate('h',[145])
    k.gate('h',[146])
    k.gate('h',[147])
    k.gate('h',[148])
    k.gate('h',[149])
    k.gate('h',[150])
    k.gate('h',[151])
    k.gate('h',[152])
    k.gate('h',[153])
    k.gate('h',[154])
    k.gate('h',[155])
    k.gate('h',[156])
    k.gate('h',[157])
    k.gate('h',[158])
    k.gate('h',[159])
    k.gate('h',[160])
    k.gate('h',[161])
    k.gate('h',[162])
    k.gate('h',[163])
    k.gate('h',[164])
    k.gate('h',[165])
    k.gate('h',[166])
    k.gate('h',[167])
    k.gate('h',[168])
    k.gate('h',[169])
    k.gate('h',[170])
    k.gate('h',[171])
    k.gate('h',[172])
    k.gate('h',[173])
    k.gate('h',[174])
    k.gate('h',[175])
    k.gate('h',[176])
    k.gate('h',[177])
    k.gate('h',[178])
    k.gate('h',[179])
    k.gate('h',[180])
    k.gate('h',[181])
    k.gate('h',[182])
    k.gate('h',[183])
    k.gate('h',[184])
    k.gate('h',[185])
    k.gate('h',[186])
    k.gate('h',[187])
    k.gate('h',[188])
    k.gate('h',[189])
    k.gate('h',[190])
    k.gate('h',[191])
    k.gate('h',[192])
    k.gate('h',[193])
    k.gate('h',[194])
    k.gate('h',[195])
    k.gate('h',[196])
    k.gate('h',[197])
    k.gate('h',[198])
    k.gate('h',[199])
    k.gate('h',[200])
    k.gate('h',[201])
    k.gate('h',[202])
    k.gate('h',[203])
    k.gate('h',[204])
    k.gate('h',[205])
    k.gate('h',[206])
    k.gate('h',[207])
    k.gate('h',[208])
    k.gate('h',[209])
    k.gate('h',[210])
    k.gate('h',[211])
    k.gate('h',[212])
    k.gate('h',[213])
    k.gate('h',[214])
    k.gate('h',[215])
    k.gate('h',[216])
    k.gate('h',[217])
    k.gate('h',[218])
    k.gate('h',[219])
    k.gate('h',[220])
    k.gate('h',[221])
    k.gate('h',[222])
    k.gate('h',[223])
    k.gate('h',[224])
    k.gate('h',[225])
    k.gate('h',[226])
    k.gate('h',[227])
    k.gate('h',[228])
    k.gate('h',[229])
    k.gate('h',[230])
    k.gate('h',[231])
    k.gate('h',[232])
    k.gate('h',[233])
    k.gate('h',[234])
    k.gate('h',[235])
    k.gate('h',[236])
    k.gate('h',[237])
    k.gate('h',[238])
    k.gate('h',[239])
    k.gate('h',[240])
    k.gate('h',[241])
    k.gate('h',[242])
    k.gate('h',[243])
    k.gate('h',[244])
    k.gate('h',[245])
    k.gate('h',[246])
    k.gate('h',[247])
    k.gate('h',[248])
    k.gate('h',[249])
    k.gate('h',[250])
    k.gate('h',[251])
    k.gate('h',[252])
    k.gate('h',[253])
    k.gate('h',[254])
    k.gate('h',[255])
    k.gate('h',[256])

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