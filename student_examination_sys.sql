CREATE DATABASE student_examination_sys;

CREATE TABLE student
(
	id VARCHAR(3) NOT NULL PRIMARY KEY,
	name VARCHAR(64) NOT NULL, 
	age INT NOT NULL,
	sex VARCHAR(10) NOT NULL
);
INSERT INTO student VALUES ("001", "zhangsan", 18, "male"), 
("002", "lisi", 20, "female");


CREATE TABLE subject
(
	id VARCHAR(4) NOT NULL PRIMARY KEY,
	subject VARCHAR(10) NOT NULL, 
	teacher VARCHAR(10) NOT NULL,
	description VARCHAR(255)
);
INSERT INTO subject VALUES("1001", "Chinese", "Mr.Wang", "the exam is easy"),
("1002", "math", "Miss liu", "the exam is difficult");


CREATE TABLE score
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	student_id VARCHAR(3) NOT NULL,
	subject_id VARCHAR(4) NOT NULL,
	score DOUBLE(5,2)
);
INSERT INTO score VALUES(null, "001", "1001", 80),
(null, "002", "1002", 60),
(null, "001", "1001", 70),
(null, "002", "1002", 60.5)
