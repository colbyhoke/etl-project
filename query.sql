-- Create Three Tables
CREATE TABLE income (
  metro_area TEXT PRIMARY KEY,
  per_capita_income INT
);

CREATE TABLE sales (
  metro_area TEXT PRIMARY KEY,
  Median_Home_Price_1_18 INT, 	
  Median_Home_Price_2_18 INT,	
  Median_Home_Price_3_18 INT,	
  Median_Home_Price_4_18 INT,	
  Median_Home_Price_5_18 INT,	
  Median_Home_Price_6_18 INT,	
  Median_Home_Price_7_18 INT,	
  Median_Home_Price_8_18 INT,	
  Median_Home_Price_9_18 INT,	
  Median_Home_Price_10_18 INT,	
  Median_Home_Price_11_18 INT,	
  Median_Home_Price_12_18 INT,	
  Sales_Average_2018 INT
);

CREATE TABLE rent (
  metro_area TEXT PRIMARY KEY,
  Median_Rent_Price_1_18 INT, 	
  Median_Rent_Price_2_18 INT,	
  Median_Rent_Price_3_18 INT,	
  Median_Rent_Price_4_18 INT,	
  Median_Rent_Price_5_18 INT,	
  Median_Rent_Price_6_18 INT,	
  Median_Rent_Price_7_18 INT,	
  Median_Rent_Price_8_18 INT,	
  Median_Rent_Price_9_18 INT,	
  Median_Rent_Price_10_18 INT,	
  Median_Rent_Price_11_18 INT,	
  Median_Rent_Price_12_18 INT,	
  Rent_Average_2018 INT
);

CREATE USER local_user with PASSWORD 'password123';

