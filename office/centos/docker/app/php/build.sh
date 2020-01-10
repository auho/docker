#!/bin/bash

sed -i -E "s#^;error_log = php_errors.log#error_log = \"/var/log/php/errors.log\"#" conf/php.ini
sed -i -E "s#^;date.timezone =#date.timezone = Asia/Shanghai#" conf/php.ini
sed -i -E "s#^;catch_workers_output = yes#catch_workers_output = yes#" conf/php-fpm.d/www.conf