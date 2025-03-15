create database healthcare;
use healthcare;
select * from hospital;
/* 1.Top 2 FAC_NAME*/
select  * from hospital where FAC_NAME in ('ADVENTIST HEALTH AND RIDEOUT','ADVENTIST HEALTH BAKERSFIELD');


/*2.Count of TYPE_HOSP,LIC_BEDS,AVL_BEDS,STF_BEDS*/

select count('TYPE_HOSP')  from hospital; 
SELECT * FROM hospital WHERE TYPE_HOSP IS NULL;
select count('LIC_BEDS')  from hospital;    
select count('AVL_BEDS')  from hospital;
select count('STF_BEDS')  from hospital;



/* 3.Numbers of type of hospital  based on Year , Quarter */

-- YEARWISE
SELECT 
    TYPE_HOSP, 
    EXTRACT(YEAR FROM YEAR_QTR) AS year,
    COUNT(*) AS number_of_hospitals
FROM 
    hospital
GROUP BY 
    TYPE_HOSP, 
    EXTRACT(YEAR FROM YEAR_QTR)
ORDER BY 
    year, 
    TYPE_HOSP;

-- QUARTERWISE
SELECT 
    TYPE_HOSP, 
    EXTRACT(YEAR FROM YEAR_QTR) AS year, 
    EXTRACT(QUARTER FROM YEAR_QTR) AS quarter,
    COUNT(*) AS number_of_hospitals
FROM 
    hospital
GROUP BY 
    TYPE_HOSP, 
    EXTRACT(YEAR FROM YEAR_QTR), 
    EXTRACT(QUARTER FROM YEAR_QTR)
ORDER BY 
    year, 
    quarter, 
    TYPE_HOSP;


    
    
    
/*4.Average of  Total Capital Expenditures*/
    SELECT 
    AVG(CAP_EXP) AS average_capital_expenditure
FROM 
    hospital;
    
/*5. Details of COUNTY_NAME napa */

select *from hospital  where COUNTY_NAME = 'Napa';
    

    

