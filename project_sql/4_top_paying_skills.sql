/*
Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and 
    helps identify the most financially rewarding skills to acquire or improve
*/

SELECT 
    skills,
    ROUND(AVG(salary_year_avg), 0) AS avg_salary

FROM job_postings_fact as jpf

INNER JOIN skills_job_dim as sjd ON jpf.job_id = sjd.job_id
INNER JOIN skills_dim as sd ON sjd.skill_id = sd.skill_id

WHERE
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = 'TRUE' 

GROUP BY
    skills

ORDER BY
    avg_salary DESC

LIMIT 25


/*
Here's a breakdown of the results for top paying skills for Data Analysts:
- Big Data, AI, and Machine Learning: Top skills like PySpark ($208,172), Watson ($160,515), and DataRobot ($155,486) highlight the high demand for expertise in big data processing, AI, and automated machine learning platforms.
- Cloud, DevOps, and Containerization: Skills in cloud platforms (GCP - $122,500), container orchestration (Kubernetes - $132,500), and CI/CD tools (Bitbucket - $189,155, GitLab - $154,500) are essential, reflecting the industry's shift towards cloud computing and DevOps practices.
- Programming Languages and Essential Tools: Proficiency in key programming languages and libraries (Swift - $153,750, Pandas - $151,821, Golang - $145,000) and foundational tools for data analysis (Jupyter - $152,777, Elasticsearch - $145,000) remains critical for high-paying data analyst roles.


[
  {
    "skills": "pyspark",
    "avg_salary": "208172"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "189155"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515"
  },
  {
    "skills": "watson",
    "avg_salary": "160515"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155486"
  },
  {
    "skills": "gitlab",
    "avg_salary": "154500"
  },
  {
    "skills": "swift",
    "avg_salary": "153750"
  },
  {
    "skills": "jupyter",
    "avg_salary": "152777"
  },
  {
    "skills": "pandas",
    "avg_salary": "151821"
  },
  {
    "skills": "elasticsearch",
    "avg_salary": "145000"
  },
  {
    "skills": "golang",
    "avg_salary": "145000"
  },
  {
    "skills": "numpy",
    "avg_salary": "143513"
  },
  {
    "skills": "databricks",
    "avg_salary": "141907"
  },
  {
    "skills": "linux",
    "avg_salary": "136508"
  },
  {
    "skills": "kubernetes",
    "avg_salary": "132500"
  },
  {
    "skills": "atlassian",
    "avg_salary": "131162"
  },
  {
    "skills": "twilio",
    "avg_salary": "127000"
  },
  {
    "skills": "airflow",
    "avg_salary": "126103"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "125781"
  },
  {
    "skills": "jenkins",
    "avg_salary": "125436"
  },
  {
    "skills": "notion",
    "avg_salary": "125000"
  },
  {
    "skills": "scala",
    "avg_salary": "124903"
  },
  {
    "skills": "postgresql",
    "avg_salary": "123879"
  },
  {
    "skills": "gcp",
    "avg_salary": "122500"
  },
  {
    "skills": "microstrategy",
    "avg_salary": "121619"
  }
]


*/
