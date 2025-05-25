# 1. What is PostgreSQL??

PostgreSQL is the world's most Advanced open source relational database management system (RDBMS). <br>

It has some amazing features like: <b>Open Source</b>, <b>Relational & SQL-Based</b>, <b>Highly Reliable</b>, <b>Extensible</b> and some <b>Advanced Features</b>.

# 2. Explain the Primary Key and Foreign Key concepts in PostgreSQL.

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

# 3. What is the difference between the VARCHAR and CHAR data types?

## VARCHAR():

A VARCHAR() stores the variable length character<br>
Example:<br>
VARCHAR(10) stores "Cat" as 3 bytes

## CHAR():

A Char() stores total length mentioned in the char(..) <br>
Example: <br>
CHAR(10) holds a fixed character even if there less than 10

# 4. Explain the purpose of the WHERE clause in a SELECT statement.

The WHERE clause in a SELECT statement is used to filter rows from a table based on specific conditions.<br>
Example: <br>
SELECT name <br>
FROM rangers <br>
WHERE region = 'River Delta';

# 5. What are the LIMIT and OFFSET clauses used for?

## LIMIT:

Restricts the maximum number of rows returned by a query.<br>
Example: <br>
SELECT \* FROM sightings <br>
LIMIT 5; <br>
Here returns only 5 rows.

## OFFSET:

Skips a specific number of rows before beginning to return results.<br>
Example: <br>
SELECT \* FROM sightings <br>
OFFSET 5; <br>
It skips the first 5 rows and returns the rest.
