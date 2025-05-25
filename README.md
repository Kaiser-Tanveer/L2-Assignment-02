# What is PostgreSQL??

PostgreSQL is the world's most Advanced open source relational database management system (RDBMS).

# Explain the Primary Key and Foreign Key concepts in PostgreSQL.

## Primary Key

A Primary Key is a column or a group of columns in a table that uniquely identifies each row. <br>
Example: <br>
CREATE TABLE rangers (<br>
ranger_id SERIAL PRIMARY KEY,<br>
name VARCHAR(100),<br>
region VARCHAR(100)<br>
); <br>
Here "ranger_id" is a primary key.

## Foreign Key

A Foreign Key is a column that creates a relationship between two tables.<br>
Example:<br>
CREATE TABLE sightings (<br>
sighting_id SERIAL PRIMARY KEY,<br>
ranger_id INT REFERENCES rangers(ranger_id),<br>
species_id INT,<br>
sighting_time TIMESTAMP<br>
);<br>
Here "ranger_id" is a foreign key.

# What is the difference between the VARCHAR and CHAR data types?

## VARCHAR():

A VARCHAR() stores the variable length character<br>
Example:<br>
VARCHAR(10) stores "Cat" as 3 bytes

## CHAR():

A Char() stores total length mentioned in the char(..) <br>
Example: <br>
CHAR(10) holds a fixed character even if there less than 10
