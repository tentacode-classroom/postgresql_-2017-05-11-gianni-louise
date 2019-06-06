-- **************************** SUPER ADMIN ****************************
--Creation du super user avec le nom "super_admin" et un mot de passe "12345"
CREATE ROLE super_admin LOGIN PASSWORD 'jw8s0F4' SUPERUSER;

--Affiche les users
\dg

--Creation de la base de donnée dont le user est le propriétaire 
DROP DATABASE super_admin IF EXISTS;
CREATE DATABASE super_admin OWNER super_admin;

\c super_admin 
\q


-- **************************** GITHUB USER ****************************
--Creation du super user avec le nom "github_events" et un mot de passe "12345"
CREATE ROLE github_events LOGIN PASSWORD 'jw8s0F4' SUPERUSER;

--Affiche les users
\dg

--Creation de la base de donnée dont le user est le propriétaire 
ALTER DATABASE github_events OWNER TO github_events;

\c super_admin 
\q



