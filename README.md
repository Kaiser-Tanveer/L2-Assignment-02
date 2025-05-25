# What is PostgreSQL??

PostgreSQL is the world's most Advanced open source relational database management system (RDBMS).

# Explain the Primary Key and Foreign Key concepts in PostgreSQL.

## Primary Key

A Primary Key is a column or a group of columns in a table that uniquely identifies each row.
Example: CREATE TABLE rangers (
ranger_id SERIAL PRIMARY KEY,
name VARCHAR(100),
region VARCHAR(100)
);
Here "ranger_id" is a primary key.

## Foreign Key

A Foreign Key is a column or a group of columns in a table that uniquely identifies each row.
Example: CREATE TABLE sightings (
sighting_id SERIAL PRIMARY KEY,
ranger_id INT REFERENCES rangers(ranger_id),
species_id INT,
sighting_time TIMESTAMP
);
Here "ranger_id" is a foreign key.
