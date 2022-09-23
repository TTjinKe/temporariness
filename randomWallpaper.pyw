import random
import ctypes
import time
import os
path=r"C:\Users\U\Downloads\wallpapers"
while True:
    file = os.listdir(path); 
    filepath = path +"\\" + random.choice(file);
    ctypes.windll.user32.SystemParametersInfoW(20, 0, filepath, 0)
    time.sleep(60);
