#!/bin/bash

export DB_URI="$DATABASE_URL"
export DB_PG_SCHEMA=postgres
export HOST=0.0.0.0

echo "Running migrations...."
node ./bin/konga.js  prepare --adapter postgres $DATABASE_URL 
echo "End of migrations"

exec /app/_start.sh $@ 
