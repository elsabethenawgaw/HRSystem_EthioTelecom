USE EmployeeDB;
GO

WITH AllowanceSum AS (
    SELECT EmployeeID, SUM(Amount) AS TotalAllowances
    FROM Allowances
    GROUP BY EmployeeID
),
OvertimeSum AS (
    SELECT EmployeeID, SUM(HoursWorked * RatePerHour) AS TotalOvertime
    FROM Overtime
    GROUP BY EmployeeID
),
UnpaidLeaves AS (
    SELECT l.EmployeeID, SUM(DATEDIFF(DAY, l.StartDate, l.EndDate)+1) * 500 AS TotalDeductions
    FROM Leaves l
    INNER JOIN LeaveTypes t ON l.LeaveTypeID = t.LeaveTypeID
    WHERE t.TypeName = 'Unpaid'
    GROUP BY l.EmployeeID
)
INSERT INTO Payroll (EmployeeID, BaseSalary, TotalAllowances, TotalOvertime, Deductions, NetPay, PayDate)
SELECT 
    e.EmployeeID,
    s.BaseSalary,
    ISNULL(a.TotalAllowances, 0) AS TotalAllowances,
    ISNULL(o.TotalOvertime, 0) AS TotalOvertime,
    ISNULL(u.TotalDeductions, 0) AS Deductions,
    s.BaseSalary + ISNULL(a.TotalAllowances, 0) + ISNULL(o.TotalOvertime, 0) - ISNULL(u.TotalDeductions, 0) AS NetPay,
    GETDATE() AS PayDate
FROM Employees e
LEFT JOIN EmployeeSalaries s ON e.EmployeeID = s.EmployeeID
LEFT JOIN AllowanceSum a ON e.EmployeeID = a.EmployeeID
LEFT JOIN OvertimeSum o ON e.EmployeeID = o.EmployeeID
LEFT JOIN UnpaidLeaves u ON e.EmployeeID = u.EmployeeID;
GO
