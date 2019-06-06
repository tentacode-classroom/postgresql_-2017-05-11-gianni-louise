#!/bin/bash

echo ""
echo "Populate Raw Events : [started]"
echo ""

sudo -u postgres psql -f ../sql/populate_raw_events.sql


#sed -n '2p' 2017-05-11-2.json ;

#for line in $(cat 2017-05-11-2.json);
#    do sed -n $line'p' 2017-05-11-2.json ;
#done 
