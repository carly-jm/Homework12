-- Drops the db if it already exists --
DROP DATABASE IF EXISTS employee_db;

-- Create the database and specified it for use.
CREATE DATABASE employee_db;

USE employee_db;

-- Create the Department table
CREATE TABLE department (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

-- Create the Role table
CREATE TABLE role (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(10,2) NULL,
  department_id int NOT NULL,
  CONSTRAINT fk_dept_id FOREIGN KEY (department_id) REFERENCES department(id) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Create the Employee table
CREATE TABLE employee (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id int NOT NULL,
  manager_id int NULL,
  INDEX mgr_id (manager_id),
  CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES role(id) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_manager_id FOREIGN KEY (manager_id) REFERENCES employee(id) ON UPDATE CASCADE ON DELETE SET NULL
);