#!/bin/bash

echo ""
echo "Populate Raw Events : [started]"
echo ""

# Create database events_raw
sudo psql --username super_admin -f ../sql/create_raw_db.sql


# Run script PHP who get JSON and put it into table event_raw we have just created
php populate_events.php
