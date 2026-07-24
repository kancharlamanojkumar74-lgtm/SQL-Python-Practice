CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(30),
    Salary INT
);
INSERT INTO Employee (EmpID, Name, Department, Salary)
VALUES
(101, 'Rahul', 'HR', 35000),
(102, 'Anu', 'IT', 50000),
(103, 'Kiran', 'IT', 60000),
(104, 'Ravi', 'Sales', 45000),
(105, 'Meena', 'HR', 40000);
select * from Employee;
select * from Employee where department='IT';
'Display employee names and salaries where salary is between 40000 and 60000.'
select Name,Salary from Employee
where Salary between 40000 and 60000;

'Write a query to find the second highest salary in the Employee table.'
select max(salary) as secondHigh
from Employee
where Salary<(select max(salary)
from Employee);
'Display each department and the number of employees working in it.'
SELECT department, COUNT(*) AS employee_count
FROM Employee
GROUP BY department;
'5) Display all employees whose names start with the letter R.'
select Name from Employee
where Name like 'R%';