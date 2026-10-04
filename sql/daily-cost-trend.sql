-- GCP FinOps: Daily Cost Trend

SELECT
  usage_date,
  SUM(cost) AS total_cost,
  SUM(credit) AS total_credits,
  SUM(cost + credit) AS net_cost
FROM
  `PROJECT_ID.DATASET.TABLE`
GROUP BY
  usage_date
ORDER BY
  usage_date;
