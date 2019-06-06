#!/bin/bash 

echo ""
echo "Create Users : [started]"
echo ""

# Connexion avec l'utilisateur "postgres"
sudo -u postgres psql -f ../sql/create_users.sql

./create_event_database.sh

psql --username github_events -c "SELECT 'Je suis connecté sur github.';"