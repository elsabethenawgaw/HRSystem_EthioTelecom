# HRSystem_EthioTelecom

This is a **SQL-based Human Resource Management System** for Ethio Telecom.

## Features
- Employee management
- Attendance tracking
- Leave management
- Overtime & allowances
- Payroll calculation

## SQL Structure
The project is organized into separate SQL scripts for clarity:

1. `01_create_schema.sql` – Creates all tables.  
2. `02_insert_leave_types.sql` – Inserts leave types.  
3. `03_insert_employees.sql` – Inserts sample employee data.  
4. `04_insert_employee_salaries.sql` – Inserts salary data.  
5. `05_insert_attendance.sql` – Inserts attendance records.  
6. `06_insert_overtime.sql` – Inserts overtime data.  
7. `07_insert_allowances.sql` – Inserts allowances.  
8. `08_insert_leaves.sql` – Inserts leave records.  
9. `09_create_payroll.sql` – Creates payroll table and calculations.  
10. `10_queries.sql` – Verification queries to check data.

> ⚠️ Run the SQL scripts in the order listed above to avoid errors.

## How to Use
1. Open **SQL Server Management Studio (SSMS)**.  
2. Run `01_create_schema.sql` first.  
3. Run the other scripts in order (`02_insert_leave_types.sql`, `03_insert_employees.sql`, …).  
4. Run `10_queries.sql` to verify that your data is inserted correctly.

## License
MIT License

## Author
**Elsabeth Enawgaw** – [Elsabethenawgaw78@gmail.com]
