/*  ASSESSMENT 3

1.  Create a new database called "School", this database should have two tables: teachers and students. The students table should have 
    columns for student_id, first_name,last_name, homeroom_number, phone,email, and graduation year. The teachers table should have columns 
    for teacher_id, first_name, last_name, homeroom_number, department, email, and phone.

    Your table constraints do have to consider the following:
        - We must have a phone number to contact students in case of an emergency.
        - We must have ids as the primary key of the tables.
        - Phone numbers and emails must be unique to the individual.

2.  Once you've made the tables, insert a student named Mark Watney (student_id=1) who has a phone number of 777-555-1234 
    and doesn't have an email. He graduates in 2035 and has 5 as a homeroom number. Then insert a teacher names Jonas Salk (teacher_id = 1) who as a homeroom number of 5 and is from the Biology department. His contact 
    info is: jsalk@school.org and a phone number of 777-555-4321.
*/

-- 1. Create tables
CREATE TABLE teachers (
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number SMALLINT,
	department VARCHAR(50),
	email VARCHAR(20) UNIQUE,
	phone VARCHAR(20) UNIQUE
);

CREATE TABLE students (
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number SMALLINT,
	email VARCHAR(20) UNIQUE,
	phone VARCHAR(20) UNIQUE NOT NULL,
	graduation_year SMALLINT
);

-- 2. Insert data
INSERT INTO students(first_name, last_name, homeroom_number, phone, graduation_year)
VALUES ('Mark', 'Watney', 5, '7775551234', 2035);

INSERT INTO teachers(first_name, last_name, homeroom_number, department, email, phone)
VALUES ('Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', '7775554321');