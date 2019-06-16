ALTER SYSTEM SET port = '1234';
ALTER SYSTEM SET work_mem = '512MB';

SELECT name, setting FROM pg_settings WHERE name IN ('port', 'work_mem');
ALTER SYSTEM RESET all;

