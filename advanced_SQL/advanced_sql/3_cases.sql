SELECT
    job_title_short,
    job_location
FROM
    job_postings_fact

/*
label a new column as below
    'anywhere' jobs as 'remote'
    'new york, ny' jobs as 'local'
    otherwise 'onsite'
*/

SELECT
    job_title_short,
    job_location,
    CASE
    WHEN LOWER (job_location) = LOWER ('anywhere') THEN 'Remote'
    WHEN LOWER (job_location) LIKE LOWER ('%new york%') THEN 'Local'
    ELSE 'Onsite'
    END AS location_category
FROM
    job_postings_fact

--aggregation
SELECT
    COUNT (job_id) AS number_of_jobs,
    CASE
    WHEN LOWER (job_location) = LOWER ('anywhere') THEN 'Remote'
    WHEN LOWER (job_location) LIKE LOWER ('%new york%') THEN 'Local'
    ELSE 'Onsite'
    END AS location_category
FROM
    job_postings_fact
WHERE job_title_short = 'Data Analyst'
GROUP BY location_category