CREATE database university_db;

CREATE TABLE Student
(
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    data_of_birth DATE
);

CREATE TABLE Module
(
    module_id INT AUTO_INCREMENT PRIMARY KEY,
    module_title VARCHAR(50) NOT NULL,
    level INT NOT NULL,
    credits INT NOT NULL DEFAULT 20
);

CREATE TABLE registration
(
    student_id INT,
    module_id INT,
    result DOUBLE(10, 1),
    FOREIGN KEY (student_id) REFERENCES Student (student_id),
    FOREIGN KEY (module_id) REFERENCES Module (module_id)
);

INSERT INTO Student (first_name, last_name, data_of_birth) VALUES ('Daniel', 'Radcliffe', '1995-04-23');
INSERT INTO Student (first_name, last_name, data_of_birth) VALUES ('Emma', 'Watson', '1994-07-15');
INSERT INTO Student (first_name, last_name, data_of_birth) VALUES ('Rupert', 'Grint', '1995-10-24');

INSERT INTO Module (module_title, level, credits) VALUES ('Math', 1, 30);
INSERT INTO Module (module_title, level) VALUES ('Physics', 1);
INSERT INTO Module (module_title, level, credits) VALUES ('Chemistry', 1, 15);

INSERT INTO registration (student_id, module_id) VALUES (1, 1);
INSERT INTO registration (student_id, module_id) VALUES (1, 2);
INSERT INTO registration (student_id, module_id) VALUES (1, 3);
INSERT INTO registration (student_id, module_id) VALUES (2, 3);
INSERT INTO registration (student_id, module_id) VALUES (2, 1);
INSERT INTO registration (student_id, module_id) VALUES (3, 2);
INSERT INTO registration (student_id, module_id) VALUES (3, 1);