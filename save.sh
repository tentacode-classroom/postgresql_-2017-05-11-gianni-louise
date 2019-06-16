#!/usr/bin/env bash

pg_dump --username=super_admin --dbname=github_events -f ./backup/backup_github_events.sql

pg_dumpall --roles-only --username=super_admin -f backup/backup_github_events_roles.sql