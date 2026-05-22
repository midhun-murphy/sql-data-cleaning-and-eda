-- 1. Remove Duplicates
-- 2. Standardized the data
-- 3. Null Values Or blank value
-- 4. Remove unwanted column

select * from layoffs;

create table layoffs_staging
like layoffs;

select * from layoffs_staging;

insert layoffs_staging
select * from layoffs;

select *,
row_number() over( 
partition by company, industry, total_laid_off,percentage_laid_off, 'date') as row_num
from layoffs_staging;

with duplicate_cte as
(
select *,
row_number() over( 
partition by company, location, industry, total_laid_off,percentage_laid_off, 'date',
stage, country, funds_raised_millions) as row_num
from layoffs_staging
)
select * from duplicate_cte where row_num > 1;

select * from layoffs_staging where company = 'Casper';

with duplicate_cte as
(
select *,
row_number() over( 
partition by company, location, industry, total_laid_off,percentage_laid_off, 'date',
stage, country, funds_raised_millions) as row_num
from layoffs_staging
)
delete from duplicate_cte where row_num > 1;

CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num`INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

select * from layoffs_staging2;

insert into layoffs_staging2
select *,
row_number() over( 
partition by company, location, industry, total_laid_off,percentage_laid_off, 'date',
stage, country, funds_raised_millions) as row_num
from layoffs_staging;

delete from layoffs_staging2
where row_num > 1;

select * from layoffs_staging2;

-- Standardizing data
select company, trim(company) from layoffs_staging2;

update layoffs_staging2 
set company = trim(company);

select * from layoffs_staging2 where industry like 'Crypto%';

update layoffs_staging2 set industry = 'Crypto' where industry like 'Crypto%';

select distinct industry from layoffs_staging2;

select distinct location from layoffs_staging2 order by 1;
select distinct country from layoffs_staging2 order by 1;

-- remove . from united states
select distinct country, trim(trailing '.' from country)
from layoffs_staging2 order by 1;

update layoffs_staging2 set country = trim(trailing '.' from country)
where country like 'United States%';

-- change date datatype to date
SELECT `date`,
STR_TO_DATE(`date`, '%m-%d-%Y') from layoffs_staging2;

UPDATE layoffs_staging2
SET `date` = STR_TO_DATE(`date`, '%m-%d-%Y');

-- check table
SELECT DISTINCT `date`
FROM layoffs_staging2
ORDER BY `date`;

UPDATE layoffs_staging2
SET `date` = REPLACE(`date`, '-', '/');

UPDATE layoffs_staging2
SET converted_date = STR_TO_DATE(`date`, '%m/%d/%Y');

SELECT `date`, converted_date
FROM layoffs_staging2;

ALTER TABLE layoffs_staging2
DROP COLUMN `date`;

ALTER TABLE layoffs_staging2
CHANGE converted_date `date` DATE;

-- changing empty space to null values
update layoffs_staging2
set industry = null where industry = '';

-- using self join adding values in the industry column
select * from layoffs_staging2
where company like 'Airbnb';

select t1.industry, t2.industry from layoffs_staging2 t1
join layoffs_staging2 t2
	on t1.company = t2.company
where (t1.industry is null or t1.industry = '')
and t2.industry is not null;

update layoffs_staging2 t1
join layoffs_staging2 t2
	on t1.company = t2.company
set t1.industry = t2.industry
where t1.industry is null
and t2.industry is not null;

select * from layoffs_staging2
where company like 'Bally%';

-- remove null value 
-- because both of the total_laid_off and percentage_laid_off
select * from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;

delete from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;

select * from layoffs_staging2;

-- delete the row_num column after cleaning the data 
-- we used it for finding the duplate value by comparing each row
alter table layoffs_staging2
drop column row_num;




