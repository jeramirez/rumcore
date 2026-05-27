ROCKSROOT = ../src/devel/devel
include ../src/devel/devel/etc/rocks-version.mk

default:
	cd $(VERSION.MAJOR) && find . -type f | grep -v CVS | cpio -pduv ../..
