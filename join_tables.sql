SELECT income.metro_area, income.per_capita_income, sales.median_home_price_1_18, 
	sales.median_home_price_2_18, sales.median_home_price_3_18, sales.median_home_price_4_18,
	sales.median_home_price_5_18, sales.median_home_price_6_18, sales.median_home_price_7_18,
	sales.median_home_price_8_18, sales.median_home_price_9_18, sales.median_home_price_10_18,
	sales.median_home_price_11_18, sales.median_home_price_12_18, sales.sales_average_2018,
	rent.median_rent_price_1_18, rent.median_rent_price_2_18, rent.median_rent_price_3_18, 
	rent.median_rent_price_4_18, rent.median_rent_price_5_18, rent.median_rent_price_6_18, 
	rent.median_rent_price_7_18, rent.median_rent_price_8_18, rent.median_rent_price_9_18, 
	rent.median_rent_price_10_18, rent.median_rent_price_11_18, rent.median_rent_price_12_18,
	rent.rent_average_2018
FROM income
INNER JOIN rent ON rent.metro_area = income.metro_area
INNER JOIN sales ON rent.metro_area = sales.metro_area