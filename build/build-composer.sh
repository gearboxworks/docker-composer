#!/bin/bash

# See gearboxworks/gearbox-base for details.
test -f /build/include-me.sh && . /build/include-me.sh

c_ok "Started."

c_ok "Installing packages."
if [ -f /build/build-composer.apks ]
then
	APKS="$(cat /build/build-composer.apks)"
	if [ "${APKS}" != "" ]
	then
		apk update && apk add --no-cache ${APKS}; checkExit
	fi
fi

if [ -f /build/build-composer.env ]
then
	. /build/build-composer.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi

c_ok "Finished."
