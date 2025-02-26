-- BUSINESS REQUEST - 3
-- City Level Repeat Passenger Trip Frequency Report

WITH cte AS (
	SELECT 
		city_id,
        city_name,
		trip_count,
		ROUND((repeat_passenger_count / SUM(repeat_passenger_count) over(partition by city_id))*100,2) AS pct_repeat_passenger_by_category
	FROM
		dim_repeat_trip_distribution
	JOIN 
		dim_city
	USING
		(city_id)
	GROUP BY
		city_id , trip_count
)
SELECT
	city_name,
    SUM(IF(trip_count = '2-Trips',  pct_repeat_passenger_by_category, 0)) AS `2-Trips`,
    SUM(IF(trip_count = '3-Trips',  pct_repeat_passenger_by_category, 0)) AS `3-Trips`,
    SUM(IF(trip_count = '4-Trips',  pct_repeat_passenger_by_category, 0)) AS `4-Trips`,
    SUM(IF(trip_count = '5-Trips',  pct_repeat_passenger_by_category, 0)) AS `5-Trips`,
    SUM(IF(trip_count = '6-Trips',  pct_repeat_passenger_by_category, 0)) AS `6-Trips`,
    SUM(IF(trip_count = '7-Trips',  pct_repeat_passenger_by_category, 0)) AS `7-Trips`,
    SUM(IF(trip_count = '8-Trips',  pct_repeat_passenger_by_category, 0)) AS `8-Trips`,
    SUM(IF(trip_count = '9-Trips',  pct_repeat_passenger_by_category, 0)) AS `9-Trips`,
    SUM(IF(trip_count = '10-Trips', pct_repeat_passenger_by_category, 0)) AS `10-Trips`
FROM
	cte
GROUP BY
	city_id

