SELECT * 
FROM actor ;

SELECT first_name, last_name
FROM actor ;

--QUESTION 1
SELECT first_name, last_name
FROM actor 
WHERE last_name  = 'Wahlberg';

--QUESTION 2
SELECT amount
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;

--QUESTION 3
SELECT film_id, count(film_id) 
FROM inventory 
GROUP BY film_id 
HAVING count(film_id)  > 7;

--QUESTION 4
SELECT first_name, last_name
FROM customer 
WHERE last_name = 'Williams';

--QUESTION 5
SELECT staff_id
FROM rental 
GROUP BY staff_id 
ORDER BY count(staff_id) DESC 
LIMIT 1;

--QUESTION 6
SELECT DISTINCT district 
FROM address ;

--QUESTION 7
SELECT film_id, count(film_id)
FROM film_actor 
GROUP BY film_id 
ORDER BY count(film_id) DESC 
LIMIT 1;

--QUESTION 8
SELECT first_name, last_name
FROM customer
WHERE last_name LIKE '%es';

--QUESTION 9
SELECT amount 
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING count(*) > 250 ;

--QUESTION 10
SELECT count(DISTINCT rating) AS categories, count(*) AS num_movies
FROM film 
GROUP BY rating 
ORDER BY num_movies DESC
LIMIT 1;

