/*
Question: what are the top skills based on salary?
    -look at the average salary associated with each skill for data analyst position
    -focus on roles with specific salaries, regardless of location
    -why? it reveals how different skills impact salary levels fpr data analysts and helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
    skills,
    ROUND(AVG(salary_year_avg),0 ) AS average_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
    AND job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    average_salary DESC
LIMIT 25

/*
Here are some insights into the trends for the top-paying skills for data analysts based on the provided data:

Specialized Tools:

PySpark is the top-paying skill, with an average salary of $208,172. This suggests that expertise in big data processing tools is highly valued.
Bitbucket and GitLab, both associated with version control and CI/CD pipelines, also command high salaries, indicating the importance of DevOps practices in data analysis roles.
AI and Machine Learning:

Tools like DataRobot ($155,486) and Watson ($160,515) are also among the top-paying, reflecting the growing demand for AI and machine learning proficiency.
Scikit-learn ($125,781) is another important skill, showing the relevance of machine learning libraries in these roles.
Data Processing and Analysis:

Pandas ($151,821) and NumPy ($143,513), both critical for data manipulation and analysis in Python, are highly valued.
Jupyter ($152,777) being on the list highlights the importance of environments that facilitate interactive data analysis.
Big Data and Cloud Technologies:

Databricks ($141,907), a cloud-based platform for big data and machine learning, and GCP ($122,500) emphasize the need for cloud expertise.
Elasticsearch ($145,000) and Kubernetes ($132,500) also showcase the importance of scalable data solutions.
Programming Languages:

Swift ($153,750) and Scala ($124,903) are the top-paying programming languages, indicating demand for data analysts who can work across different technology stacks.
Golang ($145,000) suggests a preference for languages that offer performance and efficiency in data tasks.
Automation and Workflow Management:

Airflow ($126,103) and Jenkins ($125,436) indicate that knowledge in workflow automation is lucrative, particularly in orchestrating complex data pipelines.
Database Management:

Couchbase ($160,515) and PostgreSQL ($123,879) are key, reflecting the importance of both NoSQL and relational databases in managing large volumes of data.
Overall, the trend suggests that data analysts with expertise in big data, machine learning, cloud computing, and specialized programming languages or tools are commanding the highest salaries in the industry.
*/