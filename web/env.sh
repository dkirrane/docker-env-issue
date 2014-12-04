#!/bin/bash
# Docker doesn't have a great way to set runtime environment variables,
# so use this script to prepare the execution environnment for later processes.
MY_DB=`echo ${DB_PORT}`
export MY_DB

IP=`ip addr show eth0 | awk '/inet / {print $2}' | cut -d/ -f1`
export IP

# Execute the commands passed to this script
# e.g. "./env.sh venv/bin/nosetests --with-xunit
exec "$@"