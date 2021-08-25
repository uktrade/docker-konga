#!/bin/bash

export DB_URI="$DATABASE_URL?ssl=true"
export DB_PG_SCHEMA=postgres
export HOST=0.0.0.0
export NODE_ENV=${NODE_ENV:-production}

exec /app/_start.sh $@ 
