#!/bin/bash
# Created on 2020-03-17T14:59:57+1100, using template:composer.sh.tmpl and json:gearbox.json

test -f /etc/gearbox/bin/colors.sh && . /etc/gearbox/bin/colors.sh

c_ok "Started."

c_ok "Installing packages."
APKBIN="$(which apk)"
if [ "${APKBIN}" != "" ]
then
	if [ -f /etc/gearbox/build/composer.apks ]
	then
		APKS="$(cat /etc/gearbox/build/composer.apks)"
		${APKBIN} update && ${APKBIN} add --no-cache ${APKS}; checkExit
	fi
fi

APTBIN="$(which apt-get)"
if [ "${APTBIN}" != "" ]
then
	if [ -f /etc/gearbox/build/composer.apt ]
	then
		DEBS="$(cat /etc/gearbox/build/composer.apt)"
		${APTBIN} update && ${APTBIN} install ${DEBS}; checkExit
	fi
fi


if [ -f /etc/gearbox/build/composer.env ]
then
	. /etc/gearbox/build/composer.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi

chown -fhR gearbox:gearbox /composer 2>/dev/null

c_ok "Finished."
