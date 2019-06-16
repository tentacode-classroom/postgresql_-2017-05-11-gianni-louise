#!/bin/bash

echo ""
echo "Populate Raw Events : [started]"
echo ""


# Run script PHP who get JSON and put it into table event_raw we have just created
php populate_events.php
