#!/bin/bash

# See gearboxworks/gearbox-base for details.
test -f /build/include-me.sh && . /build/include-me.sh

c_ok "Started."

c_ok "Installing packages."
APKS="$(cat /build/build-composer.apks)"
if [ "${APKS}" != "" ]
then
	apk update && apk add --no-cache ${APKS}; checkExit
fi

if [ -f /build/build-composer.env ]
then
	. /build/build-composer.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi

# curl --silent --show-error --fail --location --header "Accept: application/tar+gzip, application/x-gzip, application/octet-stream" -o - ${URL}
cd /usr/local/bin
wget -qO- --no-check-certificate ${URL} | tar zxvf - composer; checkExit

if [ ! -f /usr/local/bin/composer ]
then
	c_err "Failed to find /usr/local/bin/composer"
else
	chmod a+x /usr/local/bin/composer; checkExit
	/usr/local/bin/composer -version; checkExit
fi

c_ok "Finished."
