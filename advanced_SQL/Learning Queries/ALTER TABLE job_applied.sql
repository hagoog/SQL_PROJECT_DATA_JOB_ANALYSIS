ALTER TABLE job_applied
--ADD contact VARCHAR (50);
RENAME COLUMN contact TO contact_name;

ALTER TABLE job_applied
ALTER COLUMN contact_name TYPE TEXT;

ALTER TABLE job_applied
DROP COLUMN contact_name;

SELECT *
FROM job_applied