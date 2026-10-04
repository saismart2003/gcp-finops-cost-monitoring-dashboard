# GCP FinOps Cost Monitoring & Billing Dashboard

> A Google Cloud FinOps solution for monitoring, analyzing and visualizing cloud costs using Cloud Billing, BigQuery, SQL and Looker Studio.

![Google Cloud](https://img.shields.io/badge/Google%20Cloud-GCP-blue)
![BigQuery](https://img.shields.io/badge/Google%20Cloud-BigQuery-blue)
![FinOps](https://img.shields.io/badge/Focus-FinOps-green)
![SQL](https://img.shields.io/badge/Query-SQL-orange)
![Looker Studio](https://img.shields.io/badge/Dashboard-Looker%20Studio-purple)

---

## 📌 Project Overview

This project demonstrates a **GCP FinOps cost monitoring and reporting solution** built using Google Cloud Billing, BigQuery, SQL and Looker Studio.

The solution provides centralized visibility into cloud expenditure and enables analysis of costs by project, service, region, date and SKU.

### Solution Flow

```text
Google Cloud Services
        │
        ▼
   Cloud Billing
        │
        ▼
  Billing Export
        │
        ▼
     BigQuery
        │
        ▼
       SQL
        │
        ▼
  Looker Studio
        │
        ▼
 FinOps Dashboard
```

---

## 🎯 Objectives

- Monitor Google Cloud spending
- Analyze cost by project
- Analyze cost by service
- Analyze cost by region
- Track daily cost trends
- Identify high-cost SKUs
- Track billing credits
- Calculate net cloud expenditure
- Provide centralized FinOps reporting
- Improve cloud cost visibility

---

## 🏗️ Architecture

```text
┌─────────────────────────────┐
│    Google Cloud Services    │
│                             │
│ Compute Engine              │
│ Cloud Storage               │
│ BigQuery                    │
│ Cloud Run                   │
│ Other GCP Services          │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│       Cloud Billing         │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│      Billing Export         │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│          BigQuery           │
│                             │
│ Billing Data                │
│ Usage Data                  │
│ Cost Data                   │
│ Credits                     │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│        SQL Analysis         │
│                             │
│ Project Cost                │
│ Service Cost                │
│ Daily Cost                  │
│ Regional Cost               │
│ SKU Analysis                │
└──────────────┬──────────────┘
               │
               ▼
┌─────────────────────────────┐
│       Looker Studio         │
│                             │
│ Scorecards                  │
│ Charts                      │
│ Tables                      │
│ Filters                     │
└─────────────────────────────┘
```

---

## 🔧 Technologies Used

| Technology | Purpose |
|---|---|
| Google Cloud Billing | Cloud cost and usage information |
| Billing Export | Export billing data to BigQuery |
| BigQuery | Billing data storage and analysis |
| SQL | Cost and usage analysis |
| Looker Studio | Interactive dashboard |
| Google Cloud | Cloud infrastructure platform |

---

## 📊 Dashboard

The dashboard provides the following views:

### Executive Cost Summary

- Total Cost
- Total Credits
- Net Cost

### Cost by Project

Shows cloud expenditure grouped by GCP project.

### Cost by Service

Shows which Google Cloud services contribute to overall expenditure.

### Daily Cost Trend

Shows changes in cloud spending over time.

### Cost by Region

Provides regional cost visibility.

### Top SKUs

Identifies SKUs contributing to cloud expenditure.

### Interactive Filters

The dashboard supports filtering by:

- Project
- Service
- Region
- Date

---

## 💰 FinOps Metrics

### Total Cost

```text
Total Cost = SUM(cost)
```

Represents the total billed amount before applying credits.

### Total Credits

```text
Total Credits = SUM(credit)
```

Credits represent discounts, promotional credits, free-tier adjustments or other billing credits.

### Net Cost

```text
Net Cost = SUM(cost + credit)
```

Represents the effective cost after applying credits.

---

## 🗄️ BigQuery Data Model

The billing analysis uses fields such as:

| Field | Description |
|---|---|
| usage_date | Date of resource usage |
| project_id | GCP project identifier |
| project_name | Project name |
| service | Google Cloud service |
| sku | Billing SKU |
| region | Resource region |
| usage_amount | Amount of resource usage |
| usage_unit | Unit of measurement |
| cost | Billed cost |
| credit | Applied credits |

---

## 🔎 Example SQL

### Cost by Project

```sql
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
```

### Cost by Service

```sql
SELECT
  service,
  SUM(cost) AS total_cost,
  SUM(credit) AS total_credits,
  SUM(cost + credit) AS net_cost
FROM
  `PROJECT_ID.DATASET.TABLE`
GROUP BY
  service
ORDER BY
  net_cost DESC;
```

### Daily Cost Trend

```sql
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
```

---

## 👨‍💻 My Role

**Role:** GCP Cloud / Operations Engineer

Key responsibilities included:

- Working with Google Cloud billing information
- Working with billing export data
- Analyzing billing data using BigQuery
- Developing SQL queries
- Creating FinOps reporting views
- Building Looker Studio dashboards
- Analyzing project, service and regional costs
- Supporting customer-facing cloud cost visibility
- Delivering the reporting solution

---

## 🏢 Customer Delivery

This solution was also delivered as part of a **customer-facing GCP implementation**.

The public repository contains only a sanitized representation of the solution.

Customer-specific information, production billing data, project identifiers and confidential configuration are intentionally excluded.

---

## 📈 Business Value

The solution helps stakeholders:

- Understand where cloud expenditure is occurring
- Identify high-cost projects and services
- Monitor spending trends
- Understand the impact of credits
- Improve cloud cost visibility
- Support FinOps discussions
- Make informed cloud spending decisions

---

## 🚀 Future Improvements

Potential enhancements include:

- Cost anomaly detection
- Budget threshold alerts
- Monthly cost forecasting
- Idle resource detection
- Cost optimization recommendations
- Commitment and discount analysis
- Automated email reporting
- Scheduled reporting
- Business-unit cost allocation
- Automated FinOps recommendations

---

## 📚 Learning Outcomes

This project provided hands-on experience with:

- Google Cloud Billing
- Billing Export
- BigQuery
- SQL
- Looker Studio
- FinOps concepts
- Cloud cost analysis
- Data visualization
- Cloud operations
- Customer-facing delivery

---

## 🔐 Security & Data Protection

This repository is a sanitized portfolio representation.

It does **not** contain:

- Customer credentials
- Service-account keys
- API keys
- Passwords
- Access tokens
- Customer billing exports
- Confidential customer information
- Internal IP addresses
- Production secrets
- Private configuration

Only synthetic or sanitized information should be added to this repository.

---

## 👤 Author

**Jithendra Sai Obilisetti**

GCP & Azure Operations Engineer | Cloud Infrastructure | Incident & Service Management | Security & Reliability

---

## ⚠️ Disclaimer

This repository is intended for educational and professional portfolio purposes.

Customer-specific information has been removed or anonymized to maintain confidentiality.

The implementation shown here represents the architecture and technical approach used for the solution.
