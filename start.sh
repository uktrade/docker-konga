#!/bin/bash

export DB_URI="$DATABASE_URL"
export DB_PG_SCHEMA=postgres
export HOST=0.0.0.0

node ./bin/konga.js  prepare --adapter postgres $DB_URI

exec /app/_start.sh $@ 
