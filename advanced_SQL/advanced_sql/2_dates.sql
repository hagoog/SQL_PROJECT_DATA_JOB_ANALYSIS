SELECT job_posted_date
FROM job_postings_fact
LIMIT 10;

SELECT 
    '2023-02-19'::DATE,
    '123':: INT,
    true:: BOOLEAN,
    '3.14':: REAL;


-- extract data with date
SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date AS date
FROM
    job_postings_fact

--cast date time into date only
SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date::DATE AS date
FROM
    job_postings_fact

-- add time zone from UTC to EST
-- postgresql.org/docs/7.2/timezones.html
SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE'UTC' AT TIME ZONE 'EST' AS date
FROM
    job_postings_fact
LIMIT 5

--extract
SELECT
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE'UTC' AT TIME ZONE 'EST' AS date,
    EXTRACT (MONTH FROM job_posted_date) AS date_month,
    EXTRACT (YEAR FROM job_posted_date) AS date_year
FROM
    job_postings_fact
LIMIT 5

--analysis per month

SELECT
    COUNT (job_id) AS jobs_posted_count,
    EXTRACT (MONTH FROM job_posted_date) AS month_of_application
FROM
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    month_of_application
ORDER BY
    month_of_application
