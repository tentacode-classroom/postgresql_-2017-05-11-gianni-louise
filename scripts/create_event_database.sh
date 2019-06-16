#!/bin/bash

echo ""
echo "Create Event Database : [started]"
echo ""

#Start service
sudo service postgresql start

#Enter into PostgreSQL
sudo -u postgres psql -f ../sql/create_database.sql
