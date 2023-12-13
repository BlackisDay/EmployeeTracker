INSERT INTO department (name)
VALUES 
('IT'),
('Finance & Accounting'),
('Sales & Marketing'),
('Operations');

INSERT INTO role (title, salary, department_id)
VALUES
('Full Stack Developer', 80000, 1), /*Title goes first, Then Salary(Yearly Salary of course) and department ID*/
('Software Engineer', 120000, 1),
('Accountant', 10000, 2), 
('Finanical Analyst', 150000, 2),
('Marketing Coordindator', 70000, 3), 
('Sales Lead', 90000, 3),
('Project Manager', 100000, 4),
('Operations Manager', 90000, 4);


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
('John', 'Miller', 2, null),
('Devin', 'Anderson', 1, 1),
('Jose', 'Brown', 4, null),
('Jon', 'Doe', 3, 3),
('Katherine', 'Rodriguez', 6, null),
('Joe', 'Davis', 5, 5),
('Markiplier', 'Obu', 7, null),
('Donald', 'Trump', 8, 7);