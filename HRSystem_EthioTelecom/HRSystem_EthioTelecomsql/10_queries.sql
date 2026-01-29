USE EmployeeDB;
GO

-- Verify tables
SELECT * FROM Employees;
SELECT * FROM EmployeeSalaries;
SELECT * FROM Attendance;
SELECT * FROM Overtime;
SELECT * FROM Allowances;
SELECT * FROM Leaves;

-- Payroll with Employee Names
SELECT 
    e.FirstName + ' ' + e.LastName AS EmployeeName,
    p.BaseSalary,
    p.TotalAllowances,
    p.TotalOvertime,
    p.Deductions,
    p.NetPay,
    p.PayDate
FROM Payroll p
JOIN Employees e ON p.EmployeeID = e.EmployeeID;
GO
