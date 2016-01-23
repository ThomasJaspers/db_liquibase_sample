#!/usr/bin/env bash
set -e

psql -U postgres -d postgres -c "DROP DATABASE IF EXISTS liquibasedemo"
psql -U postgres -d postgres -c "DROP ROLE IF EXISTS liquibasedemo"
