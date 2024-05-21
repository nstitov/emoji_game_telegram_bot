#!/bin/bash
set -e

# Choose database name and add this name to PostgresDSN in .env file (DBNAME)

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE games_bot_db;
EOSQL