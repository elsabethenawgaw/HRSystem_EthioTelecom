-- 1. CREATE DATABASE
CREATE DATABASE EmployeeDB;
GO
USE EmployeeDB;
GO

-- 2. EMPLOYEES TABLE
CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Gender NVARCHAR(10) CHECK(Gender IN ('Male', 'Female')),
    DateOfBirth DATE NOT NULL,
    Phone NVARCHAR(20) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    HireDate DATE NOT NULL,
    DepartmentID INT NOT NULL,
    JobID INT NOT NULL,
    Status NVARCHAR(10) CHECK(Status IN ('Active', 'Inactive'))
);

-- 3. LEAVE TYPES TABLE
CREATE TABLE LeaveTypes (
    LeaveTypeID INT IDENTITY(1,1) PRIMARY KEY,
    TypeName VARCHAR(50) NOT NULL
);

-- 4. LEAVES TABLE
CREATE TABLE Leaves (
    LeaveID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,
    LeaveTypeID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    Status VARCHAR(20) CHECK(Status IN ('Approved','Pending','Rejected')),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (LeaveTypeID) REFERENCES LeaveTypes(LeaveTypeID)
);

-- 5. ATTENDANCE TABLE
CREATE TABLE Attendance (
    AttendanceID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,
    AttendanceDate DATE NOT NULL,
    CheckIn TIME,
    CheckOut TIME,
    WorkHours DECIMAL(5,2),
    Status VARCHAR(20),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- 6. OVERTIME TABLE
CREATE TABLE Overtime (
    OvertimeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,
    OvertimeDate DATE NOT NULL,
    HoursWorked DECIMAL(5,2),
    RatePerHour DECIMAL(10,2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- 7. ALLOWANCES TABLE
CREATE TABLE Allowances (
    AllowanceID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,
    AllowanceType VARCHAR(50),
    Amount DECIMAL(10,2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- 8. EMPLOYEE SALARIES TABLE
CREATE TABLE EmployeeSalaries (
    EmployeeID INT PRIMARY KEY,
    JobID INT,
    JobTitle VARCHAR(50),
    GradeLevel INT,
    BaseSalary DECIMAL(18, 2),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- 9. PAYROLL TABLE
CREATE TABLE Payroll (
    PayrollID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,
    BaseSalary DECIMAL(18,2),
    TotalAllowances DECIMAL(18,2),
    TotalOvertime DECIMAL(18,2),
    Deductions DECIMAL(18,2),
    NetPay DECIMAL(18,2),
    PayDate DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
GO
