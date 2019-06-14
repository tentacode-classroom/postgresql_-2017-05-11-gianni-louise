#!/bin/bash 

echo ""
echo "PG Admin SetUp : [started]"
echo ""

# Identification for "ALTER SYSTEM"
sudo psql --username super_admin -f ../sql/pg_admin_install.sql

# Restart PostgreSQL 
sudo service postgresql restart 