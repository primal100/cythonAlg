#!"c:\users\epalman\onedrive - ericsson ab\documents\pycharmprojects\cythonalg\venv\scripts\python.exe"
# EASY-INSTALL-ENTRY-SCRIPT: 'autopxd2==1.1.0','console_scripts','autopxd'
__requires__ = 'autopxd2==1.1.0'
import re
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.argv[0] = re.sub(r'(-script\.pyw?|\.exe)?$', '', sys.argv[0])
    sys.exit(
        load_entry_point('autopxd2==1.1.0', 'console_scripts', 'autopxd')()
    )
