#!/bin/bash

echo ""
echo "Import GitHub : [started]"
echo ""

#Delete folder if exists
rm -Rf ../ressources 

#Get Json file 
wget https://data.gharchive.org/2017-05-11-2.json.gz

#Unizp file
gunzip 2017-05-11-2.json.gz

#Set file into  folder ressources
rm -fr ./ressources
mkdir ./ressources
sudo mv 2017-05-11-2.json ressources
echo "folder created"
