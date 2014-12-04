#!/bin/bash
# Docker doesn't have a great way to set runtime environment variables,
# so use this script to prepare the execution environnment for later processes.
MY_DB=`echo ${DB_PORT} | sed "s/^tcp:\/\///"`
export MY_DB

ip addr show eth0

# Execute the commands passed to this script
# e.g. "./env.sh venv/bin/nosetests --with-xunit
exec "$@"