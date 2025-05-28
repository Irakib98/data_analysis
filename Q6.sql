--How many jobs are there for data analysts in Bangladesh?

ELECT 
    j.job_location,
    j.job_title_short,
    c.name AS company_name,
    j.job_via
FROM 
    job_postings_fact j
INNER JOIN 
    company_dim c ON j.company_id = c.company_id
WHERE
    j.job_country = 'Bangladesh' AND
    j.job_title_short = 'Data Analyst'