#https://bitbucket.org/sumerc/yappi/src/bf48b53eb3ce51a21e58b5223f10b19e1c3351c9?at=default
#if isPlot is True,env needs gprof2dot(https://github.com/jrfonseca/gprof2dot) & dot(yum install graphviz)
import yappi
import os

def performance(func, isPlot):
    yappi.clear_stats()
    yappi.set_clock_type('cpu')
    yappi.start(builtins=True)
    func()
    yappi.stop()
    stats = yappi.convert2pstats(yappi.get_func_stats())
    stats.sort_stats("cumulative")
    stats.print_stats()
    if isPlot:
        yappi.get_func_stats().save('callgrind.foo.prof', type='callgrind')
        os.system("cat callgrind.foo.prof | python gprof2dot.py -f callgrind | dot -Tpng -o output.png")
        os.system("rm -f callgrind.foo.prof")
    

