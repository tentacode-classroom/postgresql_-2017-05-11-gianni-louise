-- **************************** SUPER ADMIN ****************************

DROP DATABASE IF EXISTS super_admin;
DROP ROLE super_admin;

--Creation du super user avec le nom "super_admin" et un mot de passe "12345"
CREATE ROLE super_admin LOGIN PASSWORD '12345' SUPERUSER;

--Affiche les users
\dg

--Creation de la base de donnée dont le user est le propriétaire 
CREATE DATABASE super_admin OWNER super_admin;

-- **************************** GITHUB USER ****************************

--DROP DATABASE IF EXISTS github_events;
--DROP ROLE IF EXISTS github_events;

--Creation du super user avec le nom "github_events" et un mot de passe "12345"
CREATE ROLE github_events LOGIN PASSWORD '12345';

--Affiche les users
\dg

--Creation de la base de donnée dont le user est le propriétaire 
ALTER DATABASE github_events OWNER TO github_events;



