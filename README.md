# ETL Project - Household Income & Real Estate Prices
### Colby Hoke
### Connor Reside
### Jamie Lam

## Overview
* Combining data sets from Zillow and BEA.gov to create a database:
  * Housing sale price (2018 averages)
  * Housing rental price (2018 averages)
  *Household income (2018)

## Goals
* Extract data from disparate sources
* Transform data to combine on common axis
* Load transformed data into database

## Data sources
* BEA.gov:
  *https://www.bea.gov/system/files/2019-11/lapi1119msa.xlsx
* Zillow:
  * https://www.zillow.com/research/data/
    * http://files.zillowstatic.com/research/public_v2/zori/Metro_ZORI_AllHomesPlusMultifamily_Smoothed.csv
    * http://files.zillowstatic.com/research/public_v2/median_sale_price/Metro_median_sale_price_uc_SFRCondo_smoothed_month.csv

## Technical debrief
After extracting data from all three resources, we were able to individually transform each subsection to align everything on the metro_area column in our database. Out of ~104 rows of cities and more than 300 rows of census data, we landed on 94 common areas that matched up in our datasets. From there, we were able to join all tables into a large table containing all relevant info, effectively loading our data into the database (2018_Housing_Income) using PgAdmin.

In PgAdmin we created a database (2018_Housing_Income) along with 3 tables (income, rent, and sales). We then connected to PgAdmin from our notebook by creating an engine and accessing it with the local_user credentials. Once connected, we verified the table names. Once verified, we populated the tables with the corresponding dataframes developed earlier in the notebook. After confirming that the tables had been populated, we then used an inner join in PgAdmin to merge all the tables into one.

### Files:
* Census_notebook.ipynb
  * Test file: Extracts 2018 Census income data	
* Rental_Data.ipynb
  * Test file: Extracts 2018 home rental data form Zillow
* zillow_home_sales.ipynb
  * Test file: Extracts 2018 home sales data from Zillow
* Income_Sales_Rental_Combined_notebook.ipynb
  * Combines the above 3 notebooks into a single notebook and loads data into mysql, once query.sql has been run in pgadmin
* query.sql
  * Creates all of the blank table to hold data loaded from Income_Sales_Rental_Combined_notebook.ipynb
* local_user.sql
  * Creates the user and password for mysql in pgadmin
* join_tables.sql
  * Joins the tables, once data is loaded, based on shared column of metro_area
