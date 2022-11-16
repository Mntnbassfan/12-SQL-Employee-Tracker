DROP DATABASE IF EXISTS employee_tracker.db;

CREATE DATABASE employee_tracker.db;
USE employee_tracker.db;

CREATE TABLE department(
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(30) NOT NULL
);

CREATE TABLE role(
      id INT AUTO_INCREMENT PRIMARY KEY,
      title VARCHAR(30) NOT NULL,
      salary DECIMAL NOT NULL,
      depart_id INT NOT NULL,
      FOREIGN KEY(depart_id) REFERENCES department(id)
);

CREATE TABLE employee(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY(role_id) REFERENCES role(id),
     manager_id INT NOT NULL,
    FOREIGN KEY(manager_id) REFERENCES employee(id)
);

