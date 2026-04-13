select *
from layoffs_staging2;
alter table layoffs_staging2
drop column row_num;
delete
from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;
select *
from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;
update layoffs_staging2 t1
join layoffs_staging2 t2
on t1.company = t2.company
set t1.industry=t2.industry
where t1.industry is null 
and t2.industry is not null;
update layoffs_staging2
join layoffs_staging2 t2
on t1.company = t2.company
set t1.industry=t2.industry
where t1.industry is null 
and t2.industry is not null;
update layoffs_staging2
join layoffs_staging2 t2
on t1.company = t2.company
set t1.industry=t2.industry
where (t1.industry is null )
and t2.industry is not null;
update layoffs_staging2
join layoffs_staging2 t2
on t1.company = t2.company
set t1.indutry=t2.industry
where (t1.industry is null )
and t2.industry is not null;
update layoffs_staging2
set industry=null 
where industry= '';
select t1.industry, t2.industry
from layoffs_staging2 t1
join layoffs_staging2 t2
on t1.company = t2.company
where (t1.industry is null or t1.industry= '')
and t2.industry is not null;
select *
from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;
select *
from layoffs_staging2
where total_laid_off is null;
select *
from layoffs_staging2;
alter table layoffs_staging2
modify column `date` date;
update layoffs_staging2
set `date` = STR_TO_DATE (`date`,'%m/%d/%Y');
select `date`,
STR_TO_DATE (`date`,'%m/%d/%Y')
from layoffs_staging2;
update layoffs_staging2
set `date` = STR_TO_DATE (`date`,'%m/%d/%y');
select `date`,
STR_TO_DATE (`date`,'%m/%d/%y')
from layoffs_staging2;
select `date`,
STR_TO_DATE (`date`,'&m/%d/%y')
from layoffs_staging2;
select `date`,
STR_TO_DATE (`date`,'&m/%d/%Y')
from layoffs_staging2;
select `date`,
STR_TO_DATE (`date` '&m/%d/%Y')
from layoffs_staging2;
select `date`,
STR_TO_DATE (`date`, '&m/%d/%Y')
from layoffs_staging2;
select distinct country
from layoffs_staging2;
update layoffs_staging2
set country= 'united states'
where industry like 'united states%';
select distinct country
from layoffs_staging2
where country like 'united states%';
select distinct location
from layoffs_staging2
where location like 'united states%';
select distinct industry
from layoffs_staging2
where industry like 'united states%';
select distinct industry
from layoffs_staging2
where industry like 'crypto%';
update layoffs_staging2
set industry = 'crypto'
where industry like 'crypto%';
select distinct industry
from layoffs_staging2
where industry like 'crypto%';
select *
from layoffs_staging2;
update layoffs_staging2
set company= trim(company);
select*
from layoffs_staging2;
select*
from layoffs_staging2
where row_num > 1;
select*
from layoffs_staging2;
delete
from layoffs_staging2
where row_num > 1;
set sql_safe_updates = 0;
delete
from layoffs_staging2
where row_num > 1;
delete
from layoffs_staging2
where row_num > 1;
select*
from layoffs_staging2
where row_num > 1;
select*
from layoffs_staging2;
insert into layoffs_staging2
select *,
row_number () over (
partition by company,location,industry,total_laid_off,percentage_laid_off,`date`, stage,country,funds_raised_millions) as row_num
from layoffs_staging;
select*
from layoffs_staging2;
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
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `layoffs_staging` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
with duplicate_cte as
(
select *,
row_number () over (
partition by company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions) as row_num
from layoffs_staging)
select *
from duplicate_cte
where row_num > 1;
select *,
row_number () over (
partition by company,location,industry,total_laid_off,percentage_laid_off,`date`, stage,country,funds_raised_millions) as row_num
from layoffs_staging;
with duplicate_cte as
(
select *,
row_number () over (
partition by company,location,industry,total_laid_off,percentage_laid_off,`date`) as row_num
from layoffs_staging)
select *
from duplicate_cte
where row_num > 1;
select *,
row_number () over (
partition by company,location,industry,total_laid_off,percentage_laid_off,`date`) as row_num
from layoffs_staging;
select *
from layoffs_staging;
insert layoffs_staging
select*
from layoffs;
Create table layoffs_staging
like layoffs;
SELECT *
FROM layoffs;

select *
from layoffs_staging2;

select *
from layoffs_staging2
where total_laid_off is null or percentage_laid_off is null;

select count 
from layoffs_staging2;

