
RPM.ARCH	= noarch

install::
	mkdir -p $(ROOT)/usr/lib/systemd/system/
	(								\
		cp foundation-mysql.service				\
			$(ROOT)/usr/lib/systemd/system/$(NAME).service;	\
	)
