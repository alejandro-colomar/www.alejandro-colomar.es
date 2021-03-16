################################################################################
#	Copyright (C) 2020        Alejandro Colomar Andrés
#	SPDX-License-Identifier:  GPL-2.0-only
################################################################################


function update_date()
{
	find ./srv/www/ -type f \
	|grep '\.html$' \
	|while read -r f; do
		local d="$(stat -c %y "${f}" \
			|cut -f1 -d' ' \
			|xargs date '+%b/%Y' -d)";

		sed "\%Last modified:%s%\(<time>\)\(.*\)\(</time>\)%\1${d}\3%" \
			-i "${f}";
	done;
}
