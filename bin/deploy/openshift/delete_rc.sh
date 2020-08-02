#!/bin/bash -x
##	./bin/deploy/openshift/delete_rc.sh
################################################################################
##      Copyright (C) 2020        Alejandro Colomar Andrés                    ##
##      SPDX-License-Identifier:  GPL-2.0-only                                ##
################################################################################
##
## Delete rc stack
## ===============
##
################################################################################


################################################################################
##	source								      ##
################################################################################
source	lib/libalx/sh/sysexits.sh;


################################################################################
##	definitions							      ##
################################################################################
ARGC=0;


################################################################################
##	functions							      ##
################################################################################


################################################################################
##	main								      ##
################################################################################
function main()
{

	./bin/deploy/openshift/delete.sh	"rc";
}


################################################################################
##	run								      ##
################################################################################
argc=$#;
if [ ${argc} -ne ${ARGC} ]; then
	echo	"Illegal number of parameters (Requires ${ARGC})";
	exit	${EX_USAGE};
fi

main;


################################################################################
##	end of file							      ##
################################################################################