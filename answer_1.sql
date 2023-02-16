SELECT Employee_name
FROM Employees e
JOIN Departments d ON e.Department_Id = d.Department_id
WHERE d.Department_Name IN ('Human resources', 'Accounting');
