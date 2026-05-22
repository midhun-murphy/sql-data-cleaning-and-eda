-- Exploratory Data Analysis

select * from layoffs_staging2;

select max(total_laid_off), max(percentage_laid_off)
from layoffs_staging2;

select * from layoffs_staging2
where percentage_laid_off=1
order by total_laid_off desc;

-- total_laid off by company 
select company, sum(total_laid_off) from layoffs_staging2
group by company order by 2 desc;

select min(date) ,max(date)
from layoffs_staging2;

select industry, sum(total_laid_off) from layoffs_staging2
group by industry order by 2 desc;
select country, sum(total_laid_off) from layoffs_staging2
group by country order by 2 desc;

select year(date), sum(total_laid_off) from layoffs_staging2
group by year(date) order by 1 desc;

select stage, sum(total_laid_off) from layoffs_staging2
group by stage order by 2 desc;

-- percentage laid off
select company, avg(percentage_laid_off) from layoffs_staging2
group by company order by 2 desc;

-- fetch the month and year
select substring(date,1,7) as MONTH, sum(total_laid_off)
from layoffs_staging2
where substring(date,1,7) IS not NULL
group by month
order by 1 asc;

-- total_laid,month laid_off 
with rolling_total as 
(
select substring(date,1,7) as MONTH, sum(total_laid_off) as total_off
from layoffs_staging2
where substring(date,1,7) IS not NULL
group by month
order by 1 asc
)
select month, total_off, sum(total_off) over(order by month) as rolling_total
from rolling_total;

-- based on company and year wise total laid off
select company, year(date), sum(total_laid_off) from layoffs_staging2
group by company, year(date) order by company ;

-- based on company and year wise total laid off and used dense function, it 2 cte
with company_year (company, years,total_laid_off)as(
select company, year(date), sum(total_laid_off) from layoffs_staging2
group by company, year(date) order by company 
), company_year_rank as(
select *, 
dense_rank() over (partition by years order by total_laid_off desc) as ranking
from company_year
where years is not null)
select * from company_year_rank
where ranking <= 5;


