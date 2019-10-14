#!/usr/bin/env bash

set -e

echo
echo "Importing Database Scripts to ./database"
echo "= = ="

if [ -z ${PROJECTS_HOME+x} ]; then
  echo "PROJECTS_HOME is not set"
  exit
fi

default_database_source="$PROJECTS_HOME/postgres-message-store/database"
if [ -z ${DATABASE_SOURCE+x} ]; then
  echo "(DATABASE_SOURCE is not set. Default will be used.)"
  database_source=$default_database_source
else
  database_source=$DATABASE_SOURCE
fi
echo "Database source is: $database_source"

echo
echo "Removing database directory (./database)"
rm -rf ./database

echo "Copying database scripts from $database_source"
cp -a $database_source ./database

echo
echo '- - -'
echo 'done'
echo
