#!/bin/bash
# Created on 2020-03-17T12:27:12+1100, using template:01-base.sh.tmpl and json:gearbox.json

p_info "composer" "test started."

COMPOSER="$(which composer)"
if [ "${COMPOSER}" != "" ]
then
	c_ok "Composer found."
else
	c_err "Composer NOT found."
fi

################################################################################
if ${COMPOSER} --no-interaction --version
then
	c_ok "Composer version OK."
else
	c_err "Composer version NOT OK."
fi

################################################################################
if ${COMPOSER} --no-interaction about
then
	c_ok "Composer about OK."
else
	c_err "Composer about NOT OK."
fi

################################################################################
mkdir /tmp/test && cd /tmp/test
cat <<EOF > /tmp/test/HelloWorld.php
<?php
namespace HelloWorld;
class Greetings {
  public static function sayHelloWorld() {
    return 'Composer WORKS\n';
  }
}
EOF

cat <<EOF > /tmp/test/composer.json
{
    "name": "root/app",
    "description": "This is a simple \"Hello World\" example to try Composer",
    "authors": [
        {
            "name": "Gearbox",
            "email": "team@gearboxworks.io"
        }
    ],
    "minimum-stability": "dev",
    "require": {
	"php": ">=5.5.0"
    },
    "autoload": {
        "psr-0": {
            "HelloWorld": "src/"
        }
    }
}
EOF

################################################################################
if ${COMPOSER} --no-interaction update
then
	c_ok "Composer update OK."
else
	c_err "Composer update NOT OK."
fi

################################################################################
if ${COMPOSER} --no-interaction check-platform-reqs
then
	c_ok "Composer check-platform-reqs OK."
else
	c_err "Composer check-platform-reqs NOT OK."
fi

p_info "composer" "test finished."

