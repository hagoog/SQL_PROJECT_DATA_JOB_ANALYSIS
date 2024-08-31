/*
What are the top-paying data analyst jobs? (deliverables)
    -identify the top 10 highest paying data analyst roles available remotely.
    -focus on job postings with specific salary (remove nulls)
    -why? highlight the top-paying opportunities for data analyst, offering insights into employees
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    LOWER(job_title_short) = LOWER('Data Analyst') AND
    LOWER(job_location) = LOWER('Anywhere') AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10