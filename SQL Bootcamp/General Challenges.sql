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


-- What customer IDs are eligible for platinum status (40 or more transactions)?
SELECT customer_id, COUNT(payment_id) 
FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) >= 40;

-- What are the customer IDs of customers who have spent more than $100 in payment transactions with our staff_id member 2?
SELECT customer_id, SUM(amount) 
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;


-- What are the emails of the customers who live in California?
SELECT email FROM address
INNER JOIN customer ON address.address_id = customer.address_id
WHERE district = 'California';

-- Get a list of all the movies 'Nick Wahlberg' has been in.
SELECT title, first_name, last_name 
FROM film
LEFT JOIN film_actor ON film.film_id = film_actor.film_id
LEFT JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE first_name = 'Nick' 
AND last_name = 'Wahlberg';