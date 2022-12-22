-- Roles
INSERT INTO role (title, salary, departmentID) VALUES ("Accountant", 125000, 1);
INSERT INTO role (title, salary, departmentID) VALUES ("Account Manager", 160000, 1);
INSERT INTO role (title, salary, departmentID) VALUES ("Salesperson", 80000, 2):
INSERT INTO role (title, salary, departmentID) VALUES ("Lead Engineer", 150000, 3);
INSERT INTO role (title, salary, departmentID) VALUES ("Software Engineer", 170000, 3);
INSERT INTO role (title, salary, departmentID) VALUES ("HR Coordinator", 110000, 4);
INSERT INTO role (title, salary, departmentID) VALUES ("Legal Team Lead", 250000, 5);
INSERT INTO role (title, salary, departmentID) VALUES ("Lawyer", 190000, 5);

-- Departments

INSERT INTO department (id, name) VALUES (1, 'Finance');
INSERT INTO department (id, name) VALUES (2, 'Sales');
INSERT INTO department (id, name) VALUES (3, 'Engineering');
INSERT INTO department (id, name) VALUES (4, 'Human Resources');
INSERT INTO department (id, name) VALUES (5, 'Legal');

-- Enployees
-- id - INT PRIMARY KEY
-- first_name - employee first name
-- last_name - employee last name
-- role_id - reference to role employee has
-- manager_id - reference to another employee who is the manager of the current employee.
-- This field will be null if the employee is not a manager.
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Robert', 'Johnson',1, 3 );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('B.B.', 'King',2, 3 );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Buddy', 'Guy',3, null );

INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Muddy', 'Waters',4, 6 );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('John', 'Hooker',5, 6 );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Stevie', 'Vaughn',6, null );

INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Albert', 'King',7, 9 );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Eric', 'Clapton',8, 9 );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Howlin', 'Wolf',9, null );

INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Son', 'House',10, 12 );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Elmore', 'James',11, 12 );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Etta', 'James',12, null );

INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Lightnin', 'Hopkins',13, 15 );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Luther', 'Allison',14, 15 );
INSERT INTO employees (firstName, lastName, roleID, managerID) VALUES ('Bobby', 'Bland',12, null );

