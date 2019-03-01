/*

To run this file, we do the following in our Terminal:

1. Go to the directory of this sql file.

2. Get into our mysql console.

3. Run "source schema.sql"

*/

DROP DATABASE burgers_db;
-- Create the database burgers_db and specified it for use.
CREATE DATABASE burgers_db;
USE burgers_db;

-- Create the table burgers.
CREATE TABLE burgers
(
id int NOT NULL AUTO_INCREMENT,
burger_name varchar(255) NOT NULL,
devoured boolean default false,
PRIMARY KEY (id)
);

-- Insert a set of records.
INSERT INTO burgers (burger_name) VALUES ('cheeseburger'), ('baconburger'), ('greenchili'), ('hamburger'), ('pizzaburger');
