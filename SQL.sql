--To quit type
.exit
--Force Stop
...>    use this ctrl+D

--Start a console
sqlite3 file_name.db

--list all the available commands
.help

--view the available tables in this database
.tables

-- SQL query to see the data in the table
--(the * is short hand for all feilds & all columns)
SELECT * FROM table_name;

--This is how you select specific columns
--(name and age are your properties)
SELECT name, age FROM table_name;

--How to select specific's this would return only the entries with the name "George"
SELECT * FROM table_name WHERE name="George";

--How to add a new entry
INSERT INTO table_name (name, age, sexy) VALUES ("Gumdrop", 22, "true");

--How to update an entry
sqlite> UPDATE table_name SET address = 'Texas' WHERE id = 6;


--How to create a new table
--(VARCHAR is a string and 255 is its max length)
--(name, age, and sexy attribute name's )
--(VARCHAR(255),INT, and BOOLEAN are the data types )
CREATE TABLE georgestable (
  name VARCHAR(255),
  age INT,
  sexy BOOLEAN
);

--How to delete an entire row from a table
DELETE FROM table_name WHERE name = "jess";

--How to drop(delete) a table from a db
DROP TABLE table_name;

--View a tables blueprint(schema) and show all it's attributs
.schema

--How to create tables with automatic primary keys
CREATE TABLE your_table_name (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  whatevanumber INT,
  ... the rest of your attributes go here ...
);

--How to create a relational database with a Foreign key(in this case team is the table to refference)
CREATE TABLE players (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  number INT,
  team_id INT,
  FOREIGN KEY (team_id) REFERENCES team(id));

--How to view a table Includeing the refference to it's foreign key
--(the "teams" is the table to refference)
--(the "players.team_id" is colume you use to refference)
--(the "teams.id" is retriveing the teams name by the id of the teams table)
SELECT * FROM players, teams WHERE players.team_id = teams.id;

--How to join a refferecce
--This will display a table without all the id bullshit
SELECT players.name, players.number, teams.name FROM players JOIN teams ON players.team_id = teams.id;



--Carr. 4411,Bo Atalaya, Aguada PR, Atalaya

-- Carr. 413, Bo Puntas, Rincon PR, Bo. Puntas

--Carr. 4409, Bo Naranjo, Moca, Bo. Naranjo

--Carr. 429, Calle Bastia, Pelican Reef Rincon PR. 00677, Pelican Reef



--Carr. 429, Los Almendros Km 1.2 Rincon PR, Los Almendros


--Carr. 401,Tres Hermanos Blvd, Anasco PR, Bo. Tres Hermanos (18287548)

Carr. 115, Bo Palatine , Rincon PR, Palatine Hills



CREATE TABLE listings (
  id INTEGER PRIMARY KEY,
  address VARCHAR(255),
  bedrooms INT,
  bathrooms INT,
  ocean_front BOOLEAN,
  city_id INT,
  FOREIGN KEY (city_id) REFERENCES cities(id));

INSERT INTO listings (address, bedrooms, bathrooms, ocean_front, city_id) VALUES ("Carr. 115, Bo Palatine", 4, 2, "false", 3);

sqlite> UPDATE table_name SET address = 'Texas' WHERE id = 6;

sqlite> UPDATE listings SET bedrooms = 10 WHERE id = 2;

SELECT * FROM players, teams WHERE players.team_id = teams.id;

SELECT * FROM listings, cities WHERE listings.city_id = cities.id;

SELECT players.name, players.number, teams.name FROM players JOIN teams ON players.team_id = teams.id;

SELECT listings.address, listings.bedrooms, listings.bathrooms, listings.ocean_front, cities.city FROM listings JOIN cities ON listings.city_id = cities.id;

DELETE FROM table_name WHERE name = "jess";

DELETE FROM listings WHERE address = "Carr. 115, Bo Palatine";

SELECT listings.address, cities.city FROM listings JOIN cities ON listings.city_id = cities.id;

SELECT EMP_ID, NAME, DEPT FROM COMPANY CROSS JOIN DEPARTMENT;

SELECT address, bedrooms, bathrooms FROM listings CROSS JOIN cities;

SELECT EMP_ID, NAME, DEPT FROM COMPANY INNER JOIN DEPARTMENT
      ON COMPANY.ID = DEPARTMENT.EMP_ID;

SELECT address, bedrooms, bathrooms FROM listings INNER JOIN cities ON listings.bathrooms = cities.id;

SELECT EMP_ID, NAME, DEPT FROM COMPANY LEFT OUTER JOIN DEPARTMENT
      ON COMPANY.ID = DEPARTMENT.EMP_ID;

SELECT address, bedrooms, bathrooms FROM listings LEFT OUTER JOIN cities ON listings.bedrooms = cities.id;


CREATE TABLE your_table_name (id INTEGER PRIMARY KEY, name VARCHAR(255), number INT, team VARCHAR(255));

INSERT INTO players (name, number, team_id) VALUES ("April Bloodgate", 7, 2);

CREATE TABLE teams (id INTEGER PRIMARY KEY, name VARCHAR(255));

INSERT INTO teams (name) VALUES ("Team Unicorn");

SELECT * FROM players, teams WHERE players.team_id = teams.id;

SELECT * FROM players, teams WHERE players.team_id = teams.id;


CREATE TABLE businesses (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);


INSERT INTO businesses (name) VALUES ("Grundy Hollow Wedding Chapel");
INSERT INTO businesses (name) VALUES ("Amir's Towing");
INSERT INTO businesses (name) VALUES ("The Beagle Nightclub");
INSERT INTO businesses (name) VALUES ("Lotus Yoga");

INSERT INTO users (first_name,last_name) VALUES ("Bradford","Pitt");
INSERT INTO users (first_name,last_name) VALUES ("MAndy","Kaling");
INSERT INTO users (first_name,last_name) VALUES ("Angela","Jolie");
INSERT INTO users (first_name,last_name) VALUES ("Steven","Wonder");

CREATE TABLE listings (
  id INTEGER PRIMARY KEY,
  address VARCHAR(255),
  bedrooms INT,
  bathrooms INT,
  ocean_front BOOLEAN,
  city_id INT,
  FOREIGN KEY (city_id) REFERENCES cities(id));


CREATE TABLE reviews (
  id INTEGER PRIMARY KEY,
  stars INT,
  comment VARCHAR(255),
  business_id INT,
  user_id INT,
  FOREIGN KEY (business_id) REFERENCES businesses(id),
  FOREIGN KEY (user_id) REFERENCES users(id)
  );

INSERT INTO reviews (stars, comment, business_id, user_id) VALUES (5, "Great food!", 1,1);
INSERT INTO reviews (stars, comment, business_id, user_id) VALUES (4, "Good food!", 2,2);
INSERT INTO reviews (stars, comment, business_id, user_id) VALUES (3, "Ok food!", 3,3);
INSERT INTO reviews (stars, comment, business_id, user_id) VALUES (1, "Bad food!", 4,4);


SELECT players.name, players.number, teams.name FROM players JOIN teams ON players.team_id = teams.id;

SELECT users.first_name, users.last_name, reviews.stars FROM users JOIN reviews ON users.id = reviews.user_id;

SELECT users.first_name, users.last_name, reviews.stars, reviews.comment FROM users JOIN reviews ON users.id = reviews.user_id, businesses.name FROM reviews JOIN businesses ON businesses.id = reviews.business_id;


-- get users and add it to reviews
SELECT * FROM reviews JOIN users, businesses
ON reviews.user_id = users.id AND reviews.business_id=businesses.id;
-- 1|5|Great food!|1|1|1|Bradford|Pitt|1|Grundy Hollow Wedding Chapel
-- 2|4|Good food!|2|2|2|MAndy|Kaling|2|Amir's Towing
-- 3|3|Ok food!|3|3|3|Angela|Jolie|3|The Beagle Nightclub
-- 4|1|Bad food!|4|4|4|Steven|Wonder|4|Lotus Yoga
-- sqlite>
SELECT users.first_name, users.last_name, businesses.name, stars, comment From reviews
JOIN users, businesses ON reviews.user_id = users.id AND reviews.business_id = businesses.id;
-- Bradford|Pitt|Grundy Hollow Wedding Chapel|5|Great food!
-- MAndy|Kaling|Amir's Towing|4|Good food!
-- Angela|Jolie|The Beagle Nightclub|3|Ok food!
-- Steven|Wonder|Lotus Yoga|1|Bad food!
-- sqlite>
SELECT users.first_name, users.last_name, businesses.name, stars, comment From reviews
JOIN users, businesses ON reviews.user_id = users.id AND reviews.business_id = businesses.id WHERE businesses.name = "Amir's Towing";

--WHERE name = "jess";