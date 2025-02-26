-- BUSINESS REQUEST - 4
-- Identify Cities With Higest and Lowest Total New Passengers

WITH cte AS (
	SELECT
		city_id,
		SUM(new_passengers) AS total_new_passengers,
		CASE
			WHEN RANK() OVER(ORDER BY SUM(new_passengers) DESC ) <= 3 THEN "Top 3"
			WHEN RANK() OVER(ORDER BY SUM(new_passengers) DESC ) >= 8 THEN "Bottom 3"
		ELSE
			"-"
		END AS city_category
	FROM
		fact_passenger_summary
	GROUP BY
		city_id
)
SELECT
	city_name,
    total_new_passengers,
    city_category
FROM
	cte
JOIN 
	dim_city
USING
	(city_id)
WHERE
	city_category NOT IN("-")

    