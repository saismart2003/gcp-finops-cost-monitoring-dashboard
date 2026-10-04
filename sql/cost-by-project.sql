-- GCP FinOps: Cost by Project

SELECT
  project_id,
  project_name,
  SUM(cost) AS total_cost,
  SUM(credit) AS total_credits,
  SUM(cost + credit) AS net_cost
FROM
  `PROJECT_ID.DATASET.TABLE`
GROUP BY
  project_id,
  project_name
ORDER BY
  net_cost DESC;
