CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    DeptID INT,
    Salary INT,
    ManagerID INT
);
INSERT INTO Employee (EmpID, Name, DeptID, Salary, ManagerID)
VALUES
(101, 'Rahul', 1, 35000, 105),
(102, 'Anu', 2, 50000, 106),
(103, 'Kiran', 2, 60000, 106),
(104, 'Ravi', 3, 45000, 105),
(105, 'Meena', 1, 40000, NULL),
(106, 'John', 2, 70000, NULL);

select distinct DeptID from Employee  order by DeptID asc;
'Display employee names along with a new column called Salary_Status:
Salary ≥ 60000 → "High"
Salary between 40000 and 59999 → "Medium"
Salary < 40000 → "Low"
'
select Name,
case
when Salary >= 60000 then 'high'
when Salary between 4000 and 59999 then 'medium'
else 'low'
end as salary_status
from Employee
order by salary_status asc;

'Display all employees whose names:
Start with R, OR
End with n'
select Name from Employee
where Name like 'R%' or 
Name like '%n';
'
Display each employee's name along with their manager's name.'
select Name,ManagerID
from Employee ;
'
Display employees whose salary is greater than the average salary of their own department.'
SELECT Name, DeptID, Salary
FROM Employee E
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employee
    WHERE DeptID = E.DeptID
);
