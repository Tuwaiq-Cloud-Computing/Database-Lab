CREATE TABLE Departments (
  Department_id int PRIMARY KEY,
  Department_Name varchar(255)
);

INSERT INTO Departments (Department_id, Department_Name)
VALUES
  (1, 'Human resources'),
  (2, 'Development'),
  (3, 'Sales'),
  (4, 'Accounting');

CREATE TABLE Employees (
  Employee_id int PRIMARY KEY,
  Employee_name varchar(255),
  Employee_Salary int,
  Department_Id int,
  FOREIGN KEY (Department_Id) REFERENCES Departments(Department_id)
);

INSERT INTO Employees (Employee_id, Employee_name, Employee_Salary, Department_Id)
VALUES
  (1, 'Naif', 10000, 1),
  (2, 'Khaled', 9000, 1),
  (3, 'Noura Rasheed', 8500, 2),
  (4, 'Saleh', 8500, 3),
  (5, 'Deem', 11000, 3),
  (6, 'Sara', 8000, 4);
