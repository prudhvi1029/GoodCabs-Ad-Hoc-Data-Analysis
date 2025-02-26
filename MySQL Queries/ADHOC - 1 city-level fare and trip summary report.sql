-- Business Request - 1 
-- City Fare and Trip Summary Report
WITH cte AS (
	SELECT
		city_name, 
		COUNT(trip_id) AS no_of_trips,
		SUM(fare_amount)/SUM(distance_travelled_km) AS avg_fare_per_km,
		AVG(fare_amount) AS avg_fare_per_trip
	FROM
		fact_trips
	JOIN
		dim_city
	USING 
		(city_id)
	GROUP BY
		city_name
)
SELECT 
	*,
    ROUND(no_of_trips*100 / SUM(no_of_trips) over(),2) AS pct_contribution_to_total_trips 
FROM cte
    
    
    