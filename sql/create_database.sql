-- **************************** CREATE DATABASE ****************************

--Create database 
DROP DATABASE IF EXISTS github_events;
CREATE DATABASE github_events; 

--Connect to database 
\c github_events 

--Create secondary table for "actor" JSON Object
CREATE TABLE actor (
	id bigint PRIMARY KEY NOT NULL,
	login varchar(45) NOT NULL,
	display_login varchar(45) NOT NULL,
	url varchar(255) NOT NULL,
	avatar_url varchar(255) NOT NULL
);

--Create secondary table for "repo" JSON Object
CREATE TABLE repo (
	id bigint PRIMARY KEY NOT NULL,
	name varchar(100) NOT NULL,
	url varchar(255) NOT NULL
);

--Create table "event" (mother) 
CREATE TABLE event (
	id bigint PRIMARY KEY NOT NULL,
	actor bigint REFERENCES actor(id) NOT NULL,
	repo bigint REFERENCES repo(id) NOT NULL,
	public boolean NOT NULL,
	created_at varchar(100) NOT NULL
);

--Create table "issue_event" (child)
CREATE TABLE events_raw
(
	json_data JSONB NOT NULL
);

CREATE TABLE issue_event (
	issue_url varchar(255) NOT NULL, 
    issue_title varchar(255) NOT NULL
) INHERITS (event);

--Create table "push_event" (child)
CREATE TABLE push_event (
	nb_commits int NOT NULL
) INHERITS (event);

-- **************************** INSERT INTO DATABASE ****************************