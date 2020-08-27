-- Create Three Tables
CREATE TABLE income (
  metro_area TEXT PRIMARY KEY,
  per_capita_income INT
);

CREATE TABLE sales (
  metro_area TEXT PRIMARY KEY,
  median_home_price_1_18 INT, 	
  median_home_price_2_18 INT,	
  median_home_price_3_18 INT,	
  median_home_price_4_18 INT,	
  median_home_price_5_18 INT,	
  median_home_price_6_18 INT,	
  median_home_price_7_18 INT,	
  median_home_price_8_18 INT,	
  median_home_price_9_18 INT,	
  median_home_price_10_18 INT,	
  median_home_price_11_18 INT,	
  median_home_price_12_18 INT,	
  sales_average_2018 INT
);

CREATE TABLE rent (
  metro_area TEXT PRIMARY KEY,
  median_rent_price_1_18 INT, 	
  median_rent_price_2_18 INT,	
  median_rent_price_3_18 INT,	
  median_rent_price_4_18 INT,	
  median_rent_price_5_18 INT,	
  median_rent_price_6_18 INT,	
  median_rent_price_7_18 INT,	
  median_rent_price_8_18 INT,	
  median_rent_price_9_18 INT,	
  median_rent_price_10_18 INT,	
  median_rent_price_11_18 INT,	
  median_rent_price_12_18 INT,	
  rent_average_2018 INT
);