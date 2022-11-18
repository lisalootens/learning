-- Q: How many payment transactions were greater than $ 5.00 ? A: 3618
SELECT COUNT(amount) FROM payment
WHERE amount > 5.00;

-- Q: How many actors have a first name that starts with P? A: 5
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

-- Q: How many unique districts are our customers from? A: 378
SELECT COUNT(DISTINCT district) FROM address;

-- Q: Retrieve the list of names for those distinct districs.
SELECT DISTINCT district FROM address;

-- Q: How many films have a rating of R and a replacement cost of between $5 and $15? A: 52
SELECT COUNT(*) FROM film
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5 AND 15;

-- Q: How many films have the word Truman somewhere in the title? A: 5
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';


-- How many payments did each staff member handle?
SELECT staff_id, COUNT(payment_id) 
FROM payment
GROUP BY staff_id;

-- What is the average replacement cost per MPAA rating?
SELECT rating, ROUND(AVG(replacement_cost), 2) 
FROM film
GROUP BY rating;

-- What are the customer IDs of the top 5 customers by total spend?
SELECT customer_id, SUM(amount) 
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;
