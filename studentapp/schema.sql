CREATE DATABASE studentapp;
USE studentapp;
CREATE TABLE students (
  student_id INT NOT NULL AUTO_INCREMENT,
  student_name VARCHAR(100),
  student_addr VARCHAR(100),
  student_age VARCHAR(3),
  student_qual VARCHAR(20),
  student_percent VARCHAR(10),
  student_year_passed VARCHAR(10),
  PRIMARY KEY (student_id)
);
EXIT;

