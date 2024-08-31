SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs
UNION
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_jobs
UNION
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs
--union combines data without duplicates
--union all combines all data

SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs
UNION ALL
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_jobs
UNION ALL
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    march_jobs