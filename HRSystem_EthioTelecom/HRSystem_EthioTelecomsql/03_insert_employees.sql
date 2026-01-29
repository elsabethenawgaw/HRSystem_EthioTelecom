USE EmployeeDB;
GO
INSERT INTO Employees (FirstName, LastName, Gender, DateOfBirth, Phone, Email, HireDate, DepartmentID, JobID, Status)
VALUES
('Lily','Mamo','Female','1997-10-22','0911000001','lily1@example.com','2020-04-05',1,101,'Active'),
('Daniel','Kebede','Male','1995-03-20','0911000002','daniel2@example.com','2022-02-15',2,102,'Active'),
('Sara','Bekele','Female','1998-11-05','0911000003','sara3@example.com','2021-06-10',1,103,'Active'),
('Abebe','Hailu','Male','1988-07-18','0911000004','abebe4@example.com','2015-01-12',3,104,'Active'),
('Mekdes','Tesfaye','Female','1992-12-30','0911000005','mekdes5@example.com','2018-09-05',2,105,'Active'),
('Samuel','Tadesse','Male','1985-02-22','0911000006','samuel6@example.com','2010-03-01',3,106,'Active'),
('Hanna','Abdisa','Female','1990-08-14','0911000007','hanna7@example.com','2016-07-20',1,107,'Inactive'),
('Yohannes','Berhanu','Male','1993-06-01','0911000008','yohannes8@example.com','2019-11-15',2,108,'Active'),
('Tesfaye','Wolde','Male','1982-01-13','0911000009','tesfaye9@example.com','2008-05-25',1,102,'Inactive'),
('Bethel','Fikre','Female','1994-04-16','0911000010','bethel10@example.com','2021-02-01',2,103,'Active');
GO
