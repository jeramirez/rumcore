
. src/devel/devel/src/roll/etc/bootstrap-functions.sh
# if downloading binaries files failed we shout stop now
# no point in going on with compilation
if [ "$?" != "0" ]; then
	echo Failed to import bootstrap functions
	echo Likely we had some problem downloading RUMRocks binary files
	exit 1
fi

# 0. check cmds are available
echo "################################################################################"
echo "# bootstrap_env.sh: 0.  checking if ./_os is available"
echo "################################################################################"
if [ ! -f ./_os  ]; then
	echo Missing ./_os
	echo run cmd \"make Rolls.mk\"
fi
