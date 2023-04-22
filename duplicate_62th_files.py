import shutil
import os
i = 1
for i in range(62000):
    src = r'C:\Users\Anastasia\Desktop\on\load.zip'
    dst = r'C:\Users\Anastasia\Desktop\to\load.zip'
    shutil.copyfile(src, dst)
    os.rename(r'C:\Users\Anastasia\Desktop\to\load.zip', r'C:\Users\Anastasia\Desktop\to\load_' + str(i+1) + '.zip')
