--Connect to database 
\c github_events 

DROP TABLE IF EXISTS events_raw;

CREATE TABLE events_raw (
    json_data jsonb NOT NULL
);
