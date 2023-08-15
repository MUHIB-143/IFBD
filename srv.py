import os,platform,time
 
bitt=platform.architecture()[0]
 
if bitt=="32bit":
    os.system('clear');print('[!] Your Device is 64 bit');time.sleep(1);print('\n\n[!] Your Python Version :');time.sleep(1);os.system('python --version')
    time.sleep(0.1)
    import code.Main
else:
    print('\nYOUR DEVICE 32 BIT NOT SUPPORT')
