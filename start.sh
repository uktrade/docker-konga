#!/bin/bash

export DB_URI="$DATABASE_URL"
export DB_PG_SCHEMA="postgres"
export HOST=0.0.0.0

exec /app/_start.sh $@ 
