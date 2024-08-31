--sub-query to make the january table made in the practice problem

SELECT *
FROM (
    SELECT *
    FROM job_postings_fact
    WHERE
    (EXTRACT (MONTH FROM job_posted_date) = 1 AND EXTRACT (YEAR FROM job_posted_date) = 2023)
) AS january_jobs

--CTE
WITH january_jobs AS ( --CTE starts below
    SELECT *
    FROM job_postings_fact
    WHERE     (EXTRACT (MONTH FROM job_posted_date) = 1 AND EXTRACT (YEAR FROM job_posted_date) = 2023)
)--CTE end
SELECT *
FROM january_jobs

--sub query practice
SELECT
    company_id,
    name AS company_name
FROM
    company_dim
WHERE company_id IN(
    SELECT
        company_id
    FROM
        job_postings_fact
    WHERE
        job_no_degree_mention = true
    ORDER BY company_id
)

--solve the same using CTE