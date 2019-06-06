#!/bin/bash 

echo "Create Users : [started]"
echo ""

# Connexion avec l'utilisateur "postgres"
sudo -u postgres psql -f ../sql/create_users.sql

psql --username github_events -c "SELECT 'Je suis connecté sur github.';".