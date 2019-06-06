#!/bin/bash

echo ""
echo "Configure : [started]"
echo ""

sudo -u postgres psql -f ../sql/update_configuration.sql
sudo service postgresql restart
