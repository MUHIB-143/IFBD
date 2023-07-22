import os,platform,time

bitt=platform.architecture()[0]

if bitt=="64bit":
    os.system('clear')
    time.sleep(2)
    import IFBD64
else:
    os.system('clear')
    time.sleep(2)
    import IFBD32
