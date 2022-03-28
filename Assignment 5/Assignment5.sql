-- Purpose create a query that adds 3 data sets to the new student_database database
-- Julia Majkowski IT2351 03/28/2022
INSERT INTO registration(Student_id,class,major) VALUES ("S3","1025","Networking");
INSERT INTO registration(Student_id,class,major) VALUES ("S4","1025","Networking");
INSERT INTO registration(Student_id,class,major) VALUES ("S7","IT1050","Networking");

INSERT INTO student(Student_id,Student_name,Student_email) VALUES ("S3","Nick Foyar","Nick@school.edu");
INSERT INTO student(Student_id,Student_name,Student_email) VALUES ("S4","Andy Andrews","Andy@school.edu");
INSERT INTO student(Student_id,Student_name,Student_email) VALUES ("S7","Bob Bobson","Bob@school.edu");

INSERT INTO student_info(Student_name,Student_address) VALUES ("Nick Foyar","45 york road");
INSERT INTO student_info(Student_name,Student_address) VALUES ("Andy Andrews","4600 5th ave.");
INSERT INTO student_info(Student_name,Student_address) VALUES ("Bob Bobson","1112 maple trail");

SELECT * FROM student;