# 1. What is PostgreSQL??

PostgreSQL হল বিশ্বের সবচেয়ে উন্নত ওপেন সোর্স রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম (RDBMS). <br>

এর কিছু আশ্চর্যজনক বৈশিষ্ট্য রয়েছে যেমন: <b>ওপেন সোর্স</b>, <b>SQL এবং NoSQL উভয় ধরনের ডেটা সাপোর্ট করে</b>, <b>অত্যন্ত নির্ভরযোগ্য</b>, <b>বড় ও জটিল ডেটাবেস প্রজেক্টে ব্যবহারের জন্য উপযোগী</b>.

# 2. Explain the Primary Key and Foreign Key concepts in PostgreSQL.

## Primary Key

Primary Key একটি টেবিলের এমন একটি কলাম বা কলামসমষ্টি যা প্রতিটি সারির জন্য ইউনিক এবং ফাঁকা (NULL) হতে পারে না। <br>
উদাহরণ: <br>
CREATE TABLE rangers (<br>
ranger_id SERIAL PRIMARY KEY,<br>
name VARCHAR(100),<br>
region VARCHAR(100)<br>
); <br>
এখানে "ranger_id" একটি Primary Key.

## Foreign Key

একটি foreign key হল একটি কলাম যা দুটি টেবিলের মধ্যে একটি সম্পর্ক তৈরি করে।<br>
উদাহরণ:<br>
CREATE TABLE sightings (<br>
sighting_id SERIAL PRIMARY KEY,<br>
ranger_id INT REFERENCES rangers(ranger_id),<br>
species_id INT,<br>
sighting_time TIMESTAMP<br>
);<br>
এখানে "ranger_id" একটি foreign key.

# 3. What is the difference between the VARCHAR and CHAR data types?

## VARCHAR():

VARCHAR(n) হলো সর্বোচ্চ দৈর্ঘ্য (n) পর্যন্ত ভেরিয়েবল টেক্সট।<br>
উদাহরণ:<br>
VARCHAR(10) "Cat" কে 3 বাইট হিসেবে সংরক্ষণ করে

## CHAR():

Char(n) হলো নির্দিষ্ট দৈর্ঘ্যের (n) ফিক্সড টেক্সট ফিল্ড। <br>
উদাহরণ: <br>
CHAR(10) 10 এর কম হলেও 10 বাইট হিসেবে সংরক্ষণ করে

# 4. Explain the purpose of the WHERE clause in a SELECT statement.

WHERE ক্লজ হল SQL-এর একটি গুরুত্বপূর্ণ অংশ, যা নির্দিষ্ট শর্ত অনুযায়ী ডেটা ফিল্টার করতে ব্যবহৃত হয়।<br>
উদাহরণ: <br>
SELECT name <br>
FROM rangers <br>
WHERE region = 'River Delta';

# 5. What are the LIMIT and OFFSET clauses used for?

LIMIT এবং OFFSET হলো SQL-এ ব্যবহৃত দুটি ক্লজ, যেগুলো মূলত ডেটার পরিমাণ এবং কোন স্থান থেকে শুরু করে ডেটা দেখাবে তা নির্ধারণ করতে ব্যবহৃত হয়।

## LIMIT:

LIMIT নির্ধারণ করে আপনি কয়টি রেকর্ড দেখতে চান।<br>
উদাহরণ: <br>
SELECT \* FROM sightings <br>
LIMIT 5; <br>
উপরের কোয়েরিতে প্রথম ৫টি রেকর্ড দেখাবে।

## OFFSET:

OFFSET নির্ধারণ করে কতগুলো রেকর্ড স্কিপ করা হবে, তারপর দেখানো শুরু হবে।<br>
উদাহরণ: <br>
SELECT \* FROM sightings <br>
OFFSET 5; <br>
উপরের কোয়েরি প্রথম ২টি রেকর্ড বাদ দিয়ে পরের ৫টি রেকর্ড দেখাবে
