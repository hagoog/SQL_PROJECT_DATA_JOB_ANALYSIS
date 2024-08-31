--practice problem 
-- create tables (jan 2023 jobs, feb 2023 jobs, mar 2023 jobs)
--lukeb.co/sqlchatbot

--January 2023 Jobs Posted
CREATE TABLE january_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE (EXTRACT (MONTH FROM job_posted_date) = 1 AND EXTRACT (YEAR FROM job_posted_date) = 2023)

--February 2023 Jobs Posted
CREATE TABLE february_jobs AS 
    SELECT *
    FROM job_postings_fact
    WHERE (EXTRACT (MONTH FROM job_posted_date) = 2 AND EXTRACT (YEAR FROM job_posted_date) = 2023)

--March 2023 Jobs Posted
CREATE TABLE march_jobs AS 
    SELECT *
    FROM job_postings_fact
    WHERE (EXTRACT (MONTH FROM job_posted_date) = 3 AND EXTRACT (YEAR FROM job_posted_date) = 2023)
