USE sakila;

-- 1. Show all tables
SHOW TABLES;

-- 2. Retrieve all the data from the tables actor, film and customer.
SELECT * FROM actor, film, customer;

-- 3. Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
SELECT title FROM film;
-- 3.2 List of languages used in films, with the column aliased as language from the language table
SELECT name, language_id FROM language;
-- 3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;
-- 4. Retrieve unique release years.
SELECT DISTINCT release_year FROM film;
-- 5. Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
SELECT COUNT(store_id) -- the * counts all values that SELECT returns, including NaNs and duplicates
FROM store;
-- 5.2 Determine the number of employees that the company has.
SELECT COUNT(staff_id)
FROM staff;
-- 5.3 Determine number of physical movies that are available for rent: And distinct film titles for rent
SELECT COUNT(DISTINCT inventory_id) -- we take the inventory ids
FROM inventory;

SELECT COUNT(DISTINCT film_id) -- we 
FROM inventory;

-- 5.4 Determine the number of distinct last names of the actors in the database.
SELECT COUNT(DISTINCT last_name)
FROM actor;

-- 6. Retrieve the 10 longest films.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Use filtering techniques in order to: 
--  7.1 Retrieve all actors with the first name "SCARLETT".
SELECT first_name, last_name   -- could also use * if you just want those, but they'll have nulls
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100; -- the %% signify beginning or end
-- 7.3 Determine the number of films that include Behind the Scenes content
SELECT COUNT(film_id)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';