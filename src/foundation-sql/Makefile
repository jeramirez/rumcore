
PKGROOT         = /etc/rumrocks/mysql
PKGVAR          = /var/lib/rumrocks
REMLIST         = / /opt /etc /var
INSTALLDB       = $(PKGROOT)/sbin/mysql-install-db
REDHAT.ROOT     = $(CURDIR)/../../
ROCKSROOT       = ../devel/devel

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk


build:


install::
	mkdir -p $(ROOT)/$(PKGROOT)/sbin/
	mkdir -p $(ROOT)/$(PKGROOT)/selinux/
	mkdir -p $(ROOT)/$(PKGVAR)/mysql
	chmod 0755 $(ROOT)/$(PKGVAR)/mysql
	mkdir -p $(ROOT)/var/log/$(NAME)
	chmod 0755 $(ROOT)/var/log/$(NAME)
	mkdir -p $(ROOT)/$(PKGVAR)/$(NAME)
	mkdir -p $(ROOT)/run/$(NAME)

	echo "#!/bin/bash"				>  $(ROOT)/$(INSTALLDB)
	echo "/usr/bin/mysql_install_db \\"		>> $(ROOT)/$(INSTALLDB)
	echo "  --defaults-file=$(PKGROOT)/my.cnf\\"	>> $(ROOT)/$(INSTALLDB)
	echo "  --basedir=$(PKGROOT) \\"		>> $(ROOT)/$(INSTALLDB)
	echo "  --datadir=$(PKGVAR)/mysql  \\"		>> $(ROOT)/$(INSTALLDB)
	echo "  --user=rocksdb"                         >> $(ROOT)/$(INSTALLDB)
	echo ""						>> $(ROOT)/$(INSTALLDB)
	echo "semanage port -a -t mysqld_port_t -p tcp 40000"	>> $(ROOT)/$(INSTALLDB)
	chmod +x $(ROOT)/$(INSTALLDB)
	$(INSTALL) -m 0644 my.cnf $(ROOT)/$(PKGROOT)/my.cnf;
	$(INSTALL) -m 0644 mariadb_socket.pp $(ROOT)/$(PKGROOT)/selinux/mariadb_socket.pp;
	$(INSTALL) -m 0644 mariadb_socket.te $(ROOT)/$(PKGROOT)/selinux/mariadb_socket.te;
	echo "$(PKGROOT)/my.cnf"	> $(RPM.FILESLIST)
	echo "$(PKGVAR)/mysql"		>> $(RPM.FILESLIST)
	echo "$(PKGVAR)/${NAME}"	>> $(RPM.FILESLIST)
	echo "/run/${NAME}"		>> $(RPM.FILESLIST)
	echo "$(INSTALLDB)"		>> $(RPM.FILESLIST)
	echo "$(PKGROOT)/selinux/mariadb_socket.pp"		>> $(RPM.FILESLIST)
	echo "$(PKGROOT)/selinux/mariadb_socket.te"		>> $(RPM.FILESLIST)
	echo "/usr/lib/systemd/system/$(NAME).service"		>> $(RPM.FILESLIST)

clean::
	-/bin/rm $(RPM.FILESLIST)

