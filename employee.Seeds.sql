use employee_tracker;


-- Departments

INSERT INTO department (id, name) VALUES (1, 'Finance');
INSERT INTO department (id, name) VALUES (2, 'Sales');
INSERT INTO department (id, name) VALUES (3, 'Engineering');
INSERT INTO department (id, name) VALUES (4, 'Human Resources');
INSERT INTO department (id, name) VALUES (5, 'Legal');

-- Roles
INSERT INTO role (title, salary, department_id) VALUES ("Accountant", 125000, 1);
INSERT INTO role (title, salary, department_id) VALUES ("Account Manager", 160000, 1);
INSERT INTO role (title, salary, department_id) VALUES ("Salesperson", 80000, 2):
INSERT INTO role (title, salary, department_id) VALUES ("Lead Engineer", 150000, 3);
INSERT INTO role (title, salary, department_id) VALUES ("Software Engineer", 170000, 3);
INSERT INTO role (title, salary, department_id) VALUES ("HR Coordinator", 110000, 4);
INSERT INTO role (title, salary, department_id) VALUES ("Legal Team Lead", 250000, 5);
INSERT INTO role (title, salary, department_id) VALUES ("Lawyer", 190000, 5);

-- Enployees
-- id - INT PRIMARY KEY
-- first_name - employee first name
-- last_name - employee last name
-- role_id - reference to role employee has
-- manager_id - reference to another employee who is the manager of the current employee.
-- This field will be null if the employee is not a manager.
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Buddy', 'Guy', 1, null );
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('B.B.', 'King', 1, 1 );
INSERT INTO employee  (first_name, last_name, role_id, manager_id) VALUES ('Robert', 'Johnson', 1, 1 );
 
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Stevie', 'Vaughn', 2, null );
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Muddy', 'Waters', 2, 4 );
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('John', 'Hooker', 2, 4 );

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Howlin', 'Wolf', 3, null );
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Albert', 'King', 3, 97);
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Eric', 'Clapton', 3, 7 );

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Etta', 'James', 4, null );
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Son', 'House', 4, 10 );
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Elmore', 'James', 4, 10);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Bobby', 'Bland', 5, null );
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Lightnin', 'Hopkins', 5, 13 );
INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('Luther', 'Allison', 5, 13 );

