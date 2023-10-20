-- Remove film from inventory
DELETE FROM inventory
WHERE film_id = (
SELECT film_id
FROM film
WHERE title = 'The Shawshank Redemption'
);


DELETE FROM rental
WHERE film_id = (
SELECT film_id
FROM film
WHERE title = 'The Shawshank Redemption'
);


DELETE FROM address
WHERE address_id = (
SELECT address_id
FROM customer
WHERE first_name = 'Bard'
AND last_name = 'Google AI'
);

DELETE FROM film_actor
WHERE actor_id = (
SELECT actor_id
FROM actor
WHERE first_name = 'Bard'
AND last_name = 'Google AI'
);

DELETE FROM payment
WHERE customer_id = (
SELECT customer_id
FROM customer
WHERE first_name = 'Bard'
AND last_name = 'Google AI'
);
