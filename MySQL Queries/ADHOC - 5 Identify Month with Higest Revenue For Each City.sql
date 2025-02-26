-- BUSINESS REQUEST - 5
-- Identify Month with Higest Revenue For Each City
WITH cte AS(

	SELECT
		city_id,
		MONTHNAME(date) As month,
		SUM(fare_amount) AS revenue
	FROM
		fact_trips
	GROUP BY
		MONTH(date),city_id
),
cte_1 AS(
	SELECT
		city_name,
		month,
		revenue,
		RANK() OVER (PARTITION BY city_id ORDER BY revenue DESC) AS rnk,
		ROUND((revenue/SUM(revenue) OVER(PARTITION BY city_id))*100,2) AS percentage_contribution
	FROM 
		cte
	JOIN
		dim_city
	USING
		(city_id)
)
SELECT
	city_name,
    month,
    revenue,
    percentage_contribution
FROM
	cte_1
WHERE
	rnk = 1
	