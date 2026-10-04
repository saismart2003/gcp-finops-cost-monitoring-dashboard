-- GCP FinOps: Top SKUs by Net Cost

SELECT
  sku,
  SUM(cost) AS total_cost,
  SUM(credit) AS total_credits,
  SUM(cost + credit) AS net_cost
FROM
  `PROJECT_ID.DATASET.TABLE`
GROUP BY
  sku
ORDER BY
  net_cost DESC
LIMIT 10;
