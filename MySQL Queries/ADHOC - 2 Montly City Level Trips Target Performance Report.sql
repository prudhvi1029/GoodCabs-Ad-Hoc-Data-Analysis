-- BUSINESS REQUEST - 2
-- Montly City Level Trips Target Performance Report
WITH cte AS (
SELECT
	city_name,
    MONTHNAME(ft.date) AS month,
    COUNT(ft.trip_id) AS total_actual_trips,
    total_target_trips
FROM
	fact_trips ft
JOIN
	dim_city dc
ON
	dc.city_id = ft.city_id
JOIN
	targets_db.monthly_target_trips mtt
ON
	mtt.city_id = ft.city_id AND month(mtt.month) = month(ft.date)
GROUP BY 
	MONTH(ft.date),ft.city_id
)

SELECT 
	*,
    IF(total_actual_trips > total_target_trips , "Above Target" , "Below Target") AS performance_status,
    ROUND(((total_actual_trips - total_target_trips) / total_target_trips) * 100,2) AS "pct_gap_from_target"
FROM
	cte
    
	
    