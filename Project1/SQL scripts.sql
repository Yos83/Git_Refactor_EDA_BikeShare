--#Question 1#
SELECT  c.name, COUNT(r.rental_id)
FROM film_category fc
JOIN category c
ON c.category_id = fc.category_id
JOIN film f
ON f.film_id = fc.film_id
JOIN inventory i
ON i.film_id = f.film_id
JOIN rental r 
ON r.inventory_id = i.inventory_id
WHERE c.name IN ('Animation', 'Children', 'Classics', 'Comedy', 'Family', 'Music')
GROUP BY 1
ORDER BY 1,2 desc;





--#Question 2#
SELECT CONCAT(b.first_name, ' ', b.last_name) AS full_name,
       SUM(a.amount) AS payment_amount       
FROM payment a
JOIN customer b ON a.customer_id = b.customer_id
WHERE CONCAT(b.first_name, ' ', b.last_name) IN (
    SELECT t1.full_name
    FROM (
        SELECT CONCAT(c.first_name, ' ', c.last_name) AS full_name,
               SUM(d.amount) AS amount_total
        FROM customer c
        JOIN payment d ON c.customer_id = d.customer_id
        GROUP BY 1
        ORDER BY 2 DESC
        LIMIT 10
    ) t1
)
GROUP BY  1
ORDER BY 2 desc;






--#Question 3#
WITH question3_ AS (
    SELECT c.customer_id, SUM(p.amount) AS total_payment
    FROM customer c
    JOIN payment p ON c.customer_id = p.customer_id
    GROUP BY 1
    ORDER BY 2 DESC
    LIMIT 10
),
table2 AS (
    SELECT DATE_TRUNC('month', p.payment_date) AS pay_month,
           CONCAT(c.first_name, ' ', c.last_name) AS full_name,
           SUM(p.amount) AS pay_amt
    FROM question3_
    JOIN customer c ON question3_.customer_id = c.customer_id
    JOIN payment p ON c.customer_id = p.customer_id
    GROUP BY 1, 2
)

SELECT *,
       LAG(pay_amt) OVER (PARTITION BY full_name ORDER BY pay_amt) AS amount_lag,
       pay_amt - LAG(pay_amt) OVER (PARTITION BY full_name ORDER BY pay_amt) AS diff
FROM table2
ORDER BY diff DESC;




--#Question 4#
with question4 as (SELECT f.title, c.name, f.rental_duration, NTILE(4) OVER (ORDER BY f.rental_duration) AS standard_quartile
FROM film_category fc
JOIN category c
ON c.category_id = fc.category_id
JOIN film f
ON f.film_id = fc.film_id
WHERE c.name IN ('Animation', 'Children', 'Classics', 'Comedy', 'Family', 'Music')
ORDER BY 3)

select name, standard_quartile, COUNT(standard_quartile)
from question4
group by 1,2
order by 1,2;
