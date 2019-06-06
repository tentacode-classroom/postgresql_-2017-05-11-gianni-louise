#!/bin/bash 

# Connexion avec l'utilisateur "postgres"
sudo -u postgres psql -f ../sql/create_users.sql
