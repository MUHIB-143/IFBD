import os
import subprocess 
subprocess.run(["pip","install","-r","requirement"])
subprocess.run(["chmod","777","run"])
os.system("./run")
