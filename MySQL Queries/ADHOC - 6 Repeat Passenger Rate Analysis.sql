-- BUSINESS REQUEST - 6
-- Repeat Passenger Rate Analysis

SELECT
	city_name,
    MONTHNAME(month) AS month,
    total_passengers,
    repeat_passengers,
    ROUND((repeat_passengers/total_passengers)* 100,2) AS monthly_repeat_passengers_rate_pct,
    ROUND((SUM(repeat_passengers) OVER(PARTITION BY city_id)/SUM(total_passengers) OVER(PARTITION BY city_id))*100,2) AS city_repeat_passenger_rate_pct
FROM
	fact_passenger_summary
JOIN 
	dim_city
USING
	(city_id)
ORDER BY
	city_name,month(month)
