#!/usr/bin/env bash
set -e

psql -U postgres -c "CREATE ROLE liquibasedemo LOGIN  PASSWORD 'liquibasedemo'"
psql -U postgres -d postgres -c "CREATE DATABASE liquibasedemo OWNER liquibasedemo"
