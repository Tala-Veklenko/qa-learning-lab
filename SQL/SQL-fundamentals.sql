lesson-01 select /where /order-by /distinct-limit
- MySQL
- MySQL Workbench
- Sakila sample database
Use [Sakila](https://downloads.mysql.com/docs/sakila-db.zip?utm_source=chatgpt.com) as a primary training database. 

show databases;
use sakila;

SELECT * 
FROM customer;

SELECT customer_id, 
       store_id, 
       first_name, 
       address_id 
       FROM customer;

SELECT * 
FROM film;

SELECT customer_id, 
       first_name, 
       last_name 
       FROM customer;  
       
SELECT film_id, 
       title, 
       release_year, 
       rental_rate 
       FROM film;
       
SELECT customer_id, 
       first_name, 
       last_name, 
       email 
       FROM customer;

lesson-02 where/between/insert into

SELECT
    language_id,
    name
FROM language;


-- ============================================
-- INSERT LANGUAGES
-- ============================================

INSERT INTO language (
    language_id,
    name,
    last_update
)
VALUES
    (1, 'English', NOW()),
    (2, 'Italian', NOW()),
    (3, 'Ukrainian', NOW()),
    (4, 'German', NOW()),
    (5, 'French', NOW());

-- ============================================
-- INSERT FILMS
-- ============================================

INSERT INTO film (
    film_id,
    title,
    description,
    release_year,
    language_id,
    original_language_id,
    rental_duration,
    rental_rate,
    length,
    replacement_cost,
    rating,
    special_features,
    last_update
)
VALUES
    (1001, 'MYSTERY ISLAND', 'A group discovers a mysterious island.', 2020, 2, NULL, 5, 2.99, 110, 19.99, 'PG', 'Trailers,Deleted Scenes', NOW()),

    (1002, 'DARK FOREST', 'An adventure deep inside a dark forest.', 2019, 2, NULL, 6, 3.99, 125, 24.99, 'PG-13', 'Commentaries,Behind the Scenes', NOW()),

    (1003, 'SPACE JOURNEY', 'Astronauts explore a distant galaxy.', 2022, 2, NULL, 7, 4.99, 145, 29.99, 'PG', 'Trailers,Commentaries', NOW()),

    (1004, 'LOST CITY', 'Explorers search for an ancient civilization.', 2018, 2, NULL, 4, 0.99, 95, 14.99, 'G', 'Deleted Scenes', NOW()),

    (1005, 'THE LAST HERO', 'A hero attempts to save the world.', 2021, 2, NULL, 5, 2.99, 130, 21.99, 'PG-13', 'Trailers,Behind the Scenes', NOW()),

    (1006, 'OCEAN SECRET', 'A marine scientist discovers an underwater secret.', 2017, 2, NULL, 3, 0.99, 105, 17.99, 'PG', 'Commentaries', NOW()),

    (1007, 'ROBOT WORLD', 'Robots become part of everyday human life.', 2023, 2, NULL, 6, 3.99, 115, 25.99, 'PG', 'Trailers,Deleted Scenes', NOW()),

    (1008, 'NIGHT SHADOW', 'A detective investigates a mysterious crime.', 2016, 2, NULL, 7, 4.99, 140, 27.99, 'R', 'Behind the Scenes', NOW()),

    (1009, 'MAGIC KINGDOM', 'A young girl discovers a magical kingdom.', 2024, 2, NULL, 5, 2.99, 100, 19.99, 'G', 'Trailers,Commentaries', NOW()),

    (1010, 'FINAL MISSION', 'A special agent completes a dangerous mission.', 2022, 2, NULL, 4, 1.99, 120, 22.99, 'PG-13', 'Deleted Scenes,Behind the Scenes', NOW()),

    (1011, 'MYSTERY ISLAND', 'A group discovers a mysterious island.', 2020, 2, NULL, 5, 2.99, 110, 19.99, 'PG', 'Trailers,Deleted Scenes', NOW());

SELECT *
FROM film;

-- ============================================
-- above, equal, PG, etc.
-- ============================================

SELECT *
FROM customer
WHERE customer_id = 5;

SELECT *
FROM customer
WHERE customer_id < 3;

SELECT *
FROM film
WHERE rating = 'PG-13';

SELECT *
FROM film
WHERE length < 100;

SELECT *
FROM film
WHERE replacement_cost BETWEEN 15.00 AND 20.00;

SELECT * from customer WHERE store_id = 2;
SELECT * FROM film WHERE film_id = 1001;
SELECT * FROM film WHERE rental_rate > 3;
SELECT * FROM customer WHERE first_name = 'Jennifer';

SELECT customer_id,
       first_name,
	   last_name,
       email 
FROM customer;

SELECT * FROM film WHERE replacement_cost BETWEEN 20.00 and 25.00;

lesson-03 and/or/not



