#!/usr/bin/env bash

set -e 

# Variables
C_HOST="${HOSTNAME}"
H_KERN="$(uname -romi)"
# shellcheck disable=SC2154
H_RUNT="${container}"

# Functions
replace() {
    sed -i "s/Container Hostname\:/Container Hostname ${C_HOST}/g" \
        /var/www/localhost/htdocs/index.html
    sed -i "s/Host Kernel\:/Host Kernel ${H_KERN}/g" \
        /var/www/localhost/htdocs/index.html
    sed -i "s/Host Runtime\:/Host Runtime ${H_RUNT}/g" \
        /var/www/localhost/htdocs/index.html
}

# Main
# If the container/entrypoint is started without an additional command, we want
# to run our stuff. Otherwise, we want to run the provided user command.
if [ -z "${*}" ]
then
    CMD="/usr/sbin/httpd -DFOREGROUND"
    replace
    ${CMD}
else
    CMD="${*}"
    ${CMD}
fi

exit 0
