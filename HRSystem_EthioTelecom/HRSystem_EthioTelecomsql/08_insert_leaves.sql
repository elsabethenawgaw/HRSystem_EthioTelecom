USE EmployeeDB;
GO
INSERT INTO Leaves (EmployeeID, LeaveTypeID, StartDate, EndDate, Status)
VALUES
(1,1,'2024-01-10','2024-01-12','Approved'),
(2,2,'2024-02-03','2024-02-05','Pending'),
(3,3,'2024-03-15','2024-03-16','Rejected'),
(4,1,'2024-04-01','2024-04-05','Approved'),
(5,2,'2024-05-10','2024-05-12','Approved'),
(6,1,'2024-06-20','2024-06-22','Pending'),
(7,3,'2024-07-05','2024-07-06','Approved'),
(8,2,'2024-08-15','2024-08-18','Rejected'),
(9,1,'2024-09-01','2024-09-04','Approved'),
(10,3,'2024-10-10','2024-10-12','Pending');
GO
