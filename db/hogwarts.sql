DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses(
  id serial2 PRIMARY KEY,
  name Varchar(255),
  url Varchar(255)
  );

CREATE TABLE students(
  id serial4 PRIMARY KEY,
  first_name Varchar(255),
  last_name Varchar(255),
  age INT2,
  house INT2 REFERENCES houses(id)
  );

