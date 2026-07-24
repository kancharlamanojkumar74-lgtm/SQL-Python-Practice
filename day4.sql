CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    DeptID INT,
    Salary INT,
    JoinDate DATE
);
INSERT INTO Employee (EmpID, Name, DeptID, Salary, JoinDate)
VALUES
(101, 'Rahul', 1, 35000, '2022-01-15'),
(102, 'Anu', 2, 50000, '2021-08-20'),
(103, 'Kiran', 2, 60000, '2020-05-10'),
(104, 'Ravi', 3, 45000, '2023-02-18'),
(105, 'Meena', 1, 40000, '2021-12-05'),
(106, 'John', 2, 70000, '2019-07-25');
'Display each employees name in uppercase.'
select upper(Name) as Employeename
from Employee;
'Display employees who joined after 1st January 2021.'
select Name,JoinDate 
from Employee where Date(JoinDate)>'2021-1-1';
'If an employees salary is NULL, display 0 instead.'
update Employee
set Salary=0 where Salary=Null;
'Display employee names along with the length of each name'
select Name,Length(Name) as l_o_n
from Employee;
'Display the first three characters of every employees name.'
select Name,left(Name,3) from Employee;