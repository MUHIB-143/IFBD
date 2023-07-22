import os,platform,time

bitt=platform.architecture()[0]

if bitt=="64bit":
    os.system('clear')
    time.sleep(0.1)
    import IFBD64
else:
  import IFBD32
