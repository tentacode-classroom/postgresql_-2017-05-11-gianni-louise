#!/bin/bash

sudo apt-get install pgadmin4 -y

sudo -u postgres psql -f ../sql/pg_admin_install.sql

sudo service postgresql restart