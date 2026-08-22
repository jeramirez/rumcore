NAME = rocks-pylib
RELEASE = 1
RPM.ARCH	= noarch
RPM.FILES = "/opt/rocks/bin/rocks\\n/usr/bin/rumrocks\\n/usr/lib/python3*/site-packages/rocks\\n/usr/lib/python3*/site-packages/rocks_pylib*"
RPM.REQUIRES = python-unversioned-command python3-sqlalchemy python3-mysqlclient python3-m2crypto python3-pexpect python3-lxml python3-pyyaml
