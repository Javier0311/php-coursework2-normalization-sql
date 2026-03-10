CREATE TABLE Departments (
    Deptcode VARCHAR(10) PRIMARY KEY,
    Deptlocation VARCHAR(100) NOT NULL
);

CREATE TABLE Employees (
    Empno INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Job VARCHAR(100),
    hiredate DATE,
    salary DECIMAL(10,2),
    Deptcode VARCHAR(10),
    FOREIGN KEY (Deptcode) REFERENCES Departments(Deptcode)
);