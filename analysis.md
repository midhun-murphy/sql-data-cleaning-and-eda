# Exploratory Data Analysis Results

---

# Top Companies by Total Layoffs

| Rank | Company | Total Layoffs |
|------|----------|----------------|
| 1 | Amazon | 18,150 |
| 2 | Google | 12,000 |
| 3 | Meta | 11,000 |

---

# Top Companies by Funding (Millions USD)

| Rank | Company | Total Funding |
|------|----------|----------------|
| 1 | Netflix | 487,600 |
| 2 | Uber | 123,500 |
| 3 | WeWork | 65,700 |

---

# Time Period Analysis

## Layoffs Timeline

| Metric | Value |
|--------|--------|
| Start Date | March 11, 2020 |
| End Date | March 6, 2023 |
| Duration | 3 Years of Layoff Data |

---

# Industry Impact

| Rank | Industry | Total Layoffs |
|------|-----------|----------------|
| 1 | Consumer | 45,182 |
| 2 | Retail | 43,613 |
| 3 | Other | 36,289 |

---

# Geographic Distribution

| Rank | Country | Total Layoffs |
|------|----------|----------------|
| 1 | United States | 256,559 |
| 2 | India | 35,993 |
| 3 | Netherlands | 17,220 |

---

# Yearly Trends

| Year | Total Layoffs | Percentage of Total |
|------|----------------|---------------------|
| 2022 | 160,661 | 43.2% |
| 2023 | 125,677 | 33.8% |
| 2020 | 80,998 | 21.8% |
| 2021 | 15,823 | 4.3% |

---

# Company Stages Affected

| Rank | Stage | Total Layoffs |
|------|--------|----------------|
| 1 | Post-IPO | 204,132 |
| 2 | Unknown | 40,716 |
| 3 | Acquired | 27,576 |
| 4 | Series C | 20,017 |
| 5 | Series D | 19,225 |

---

# Monthly Patterns

| Month | Total Layoffs | Key Observation |
|------|----------------|------------------|
| January | 92,037 | Highest layoff month |
| November | 55,758 | Second highest |
| February | 41,046 | Early year impact |

---

# Top 5 Companies by Year

## 2020 - COVID-19 Impact

| Rank | Company | Layoffs |
|------|----------|----------|
| 1 | Uber | 7,525 |
| 2 | Booking.com | 4,375 |
| 3 | Groupon | 2,800 |
| 4 | Swiggy | 2,250 |
| 5 | Airbnb | 1,900 |

---

## 2021 - Recovery Phase

| Rank | Company | Layoffs |
|------|----------|----------|
| 1 | Bytedance | 3,600 |
| 2 | Katerra | 2,434 |
| 3 | Zillow | 2,000 |
| 4 | Instacart | 1,877 |
| 5 | WhiteHat Jr | 1,800 |

---

## 2022 - Tech Layoffs Peak

| Rank | Company | Layoffs |
|------|----------|----------|
| 1 | Meta | 11,000 |
| 2 | Amazon | 10,150 |
| 3 | Cisco | 4,100 |
| 4 | Peloton | 4,084 |
| 5 | Carvana | 4,000 |
| 5 | Philips | 4,000 |

---

## 2023 - Continued Impact

| Rank | Company | Layoffs |
|------|----------|----------|
| 1 | Google | 12,000 |
| 2 | Microsoft | 10,000 |
| 3 | Ericsson | 8,500 |
| 4 | Amazon | 8,000 |
| 4 | Salesforce | 8,000 |
| 5 | Dell | 6,650 |

---

# Key Insights

## Trend Analysis

- 2022 recorded the highest layoffs with 160,661 employees affected, representing 43.2% of all layoffs in the dataset.
- January consistently showed the highest layoffs across years, suggesting strong Q4 restructuring impact.

---

## Company Patterns

- Big Tech companies such as Amazon, Google, and Meta dominated layoff counts.
- Several highly funded companies still experienced major workforce reductions.

---

## Geographic Concentration

- The United States accounted for nearly 69% of total layoffs in the dataset.
- Consumer and Retail industries were among the hardest hit sectors.

---

## Funding vs Layoffs Analysis

- Companies with massive funding levels still conducted large-scale layoffs.
- This indicates that high funding alone does not guarantee workforce stability.

---

## Stage-Specific Impact

- Post-IPO companies experienced the highest layoffs, showing market pressure on public companies.
- Later-stage startups such as Series C and Series D were also heavily affected.

---

# SQL Concepts Used

| SQL Concept | Purpose |
|--------------|---------|
| ROW_NUMBER() | Identified duplicate records |
| DENSE_RANK() | Ranked companies by yearly layoffs |
| CTEs | Simplified complex queries |
| Aggregate Functions | Generated business insights |
| Rolling Totals | Analyzed cumulative layoffs trends |
| Window Functions | Performed advanced analytical operations |

---

# Conclusion

This project demonstrates end-to-end SQL data cleaning and exploratory data analysis using MySQL. The analysis highlights global layoff trends, industry impact, company behavior, and workforce reduction patterns using advanced SQL techniques.
