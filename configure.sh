#!/bin/bash

sudo -u postgres psql -f update_configuration.sql
sudo service postgresql restart
