#!/bin/bash 

apt-get update
apt-get install git git-core php5 php-pear apache2 curl openssh-server php5-xdebug
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
pear config-set auto_discover 1
pear channel-discover pear.phpunit.de
pear channel-discover pear.phing.info
pear channel-discover pear.pdepend.org
pear install phpunit/PHPUnit
pear install phpunit/php_CodeCoverage
pear install phpunit/phpcov
pear install phpunit/phpcpd
pear install phpunit/phpdcd-0.3.9
pear install phpunit/phploc
pear install pdepend/PHP_Depend
pear install PHP_CodeSniffer-2.0.0a1
pear install phing/phing
