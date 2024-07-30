import os
import sys
# import time
def slow(e):
  for i in e + '\n':
    sys.stdout.write(i)
    sys.stdout.flush()
    # time.sleep(0.2)

slow("hello world in the webpage using django")
