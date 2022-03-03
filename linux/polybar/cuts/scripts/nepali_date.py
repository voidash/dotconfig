#! /usr/bin/python3

# import subprocess
# import sys


# req = subprocess.check_output([sys.executable, '-m', 'pip', 'freeze'])
# installed_packages = [r.decode().split('==')[0] for r in req.split()]

# if 'nepali-datetime' in installed_packages:
# else:
#    print('install nepali_datetime python package')

import nepali_datetime
print(nepali_datetime.datetime.now().strftime(' %B %d'))
