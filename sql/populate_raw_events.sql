--Connect to database 
\c github_events 

DROP TABLE IF EXISTS events_raw;

CREATE TABLE events_raw (
    data_json jsonb NOT NULL
);
