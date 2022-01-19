#!/usr/bin/env bash

set -e 

# Variables
CMD="/usr/sbin/httpd -DFOREGROUND"

C_HOST="${HOSTNAME}"
H_KERN="$(uname -romi)"
# shellcheck disable=SC2154
H_RUNT="${container}"

# Functions
replace() {
    sed -i "s/Container Hostname\:/Container Hostname\: ${C_HOST}/g" /var/www/localhost/htdocs/index.html
    sed -i "s/Host Kernel\:/Host Kernel\: ${H_KERN}/g" /var/www/localhost/htdocs/index.html
    sed -i "s/Host Runtime\:/Host Runtime\: ${H_RUNT}/g" /var/www/localhost/htdocs/index.html
}

# Main
replace
${CMD}

exit 0
