USE employee_db;

INSERT INTO department (name) VALUES
 ('Legal'), ('Engineering'), ('Finance'), ('Management'), ('Sales');

INSERT INTO role (title, salary, department_id) VALUES 
('Legal Team Lead', 250000, 1),
('Lawyer', 180000, 1), 
('Lead Engineer', 150000, 2),
('Software Engineer', 90000, 2),
('Accountant', 120000, 3),
('CEO', 200000, 4),
('Manager', 85000, 4),
('Sales Lead', 110000, 5),
('Salesperson', 75000, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
('Michael', 'Angelo', 6, null),
('Duck', 'Egg', 7, 1),
('Brian', 'Coffee', 7, 1),
('Chris', 'Robbinson', 7, 1),
('Evan', 'Peters', 7, 1),
('Juan', 'Diego', 3, 2),
('Greg', 'Gerg', 4, 2),
('Tom', 'Holland', 1, 1),
('TJ', 'Maxx', 2, 1),
('Ted', 'Stephen', 5, 2),
('Orange', 'Juce', 8, 3),
('Talula', 'Hart', 8, 2),
('Jack', 'Sparrow', 9, 5);