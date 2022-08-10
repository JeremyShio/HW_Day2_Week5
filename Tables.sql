-- Create Customer Table --
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	phone_number VARCHAR(10),
	email_address VARCHAR(50),
	loyalty_member BOOLEAN
);
-- Test Customer Table:
SELECT *
FROM customer;



-- Create Ticket Table --
CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	ticket_price NUMERIC(4,2),
	movie_id INTEGER NOT NULL,
	ticket_date VARCHAR(14)
);
-- Alter Ticket Table with Foreign Key --
ALTER TABLE ticket 
ADD FOREIGN KEY(customer_id) REFERENCES customer(customer_id);
-- Test Ticket Table:
SELECT *
FROM ticket;



-- Create Ticket_Movie Table --
CREATE TABLE ticket_movie(
	ticket_id INTEGER, 
	movie_id INTEGER,
	ticket_quantity INTEGER
);
-- Alter Ticket_Movie Table with Foreign Key --
ALTER TABLE ticket_movie 
ADD FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id),
ADD FOREIGN KEY(movie_id) REFERENCES movie(movie_id);
-- Test Ticket_Movie Table:
SELECT *
FROM ticket_movie;



-- Create Movie Table --
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(25),
	movie_description VARCHAR(200),
	movie_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	movie_attendance INTEGER NOT NULL
);
-- Alter Movie Table with Foreign Key --
ALTER TABLE movie_genera
ADD FOREIGN KEY (genera_id) REFERENCES genera(genera_id);
-- Test Movie Table:
SELECT *
FROM movie;



-- Create Movie_Genera Table --
CREATE TABLE movie_genera(
	genera_id INTEGER,
	movie_id INTEGER,
	genera_quantity INTEGER
);
-- Alter Movie_Genera Table with Foreign Key --
ALTER TABLE movie_genera
ADD FOREIGN KEY (genera_id) REFERENCES genera(genera_id),
ADD FOREIGN KEY (movie_id) REFERENCES movie(movie_id);
-- Test Movie_Genera Table:
SELECT *
FROM movie_genera;



-- Create Country Table --
CREATE TABLE country(
	country_id SERIAL PRIMARY KEY,
	country_name VARCHAR(25),
	country_description VARCHAR(200),
	country_flag_img VARCHAR(50),
	continent_name VARCHAR(25)
);
-- Test Country Table:
SELECT *
FROM country;



-- Create Genera Table --
CREATE TABLE genera(
	genera_id SERIAL PRIMARY KEY,
	genera_name VARCHAR(25),
	genera_description VARCHAR(200),
	genera_img VARCHAR(50),
	movie_id INTEGER
);
-- Test Genera Table:
SELECT *
FROM genera;