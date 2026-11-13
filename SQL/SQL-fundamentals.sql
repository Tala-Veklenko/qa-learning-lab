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
