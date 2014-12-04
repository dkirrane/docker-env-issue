#!/bin/bash
# Docker doesn't have a great way to set runtime environment variables,
# so use this script to prepare the execution environnment for later processes.
echo $LOOKUPLOCATORS
LOOKUPLOCATORS=`echo ${DB_PORT} | sed "s/^tcp:\/\///"`
echo $LOOKUPLOCATORS
export LOOKUPLOCATORS

# Execute the commands passed to this script
# e.g. "./env.sh venv/bin/nosetests --with-xunit
exec "$@"