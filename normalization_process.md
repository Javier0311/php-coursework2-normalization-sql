# Normalization Process (up to 3NF)

## 1. Initial Raw Dataset (Denormalized)
**Attributes:** Empno, Deptcode, Deptlocation, Name, Job, hiredate, salary.

## 2. Functional Dependencies (FDs)
* Empno -> Name, Job, hiredate, salary, Deptcode
* Deptcode -> Deptlocation

## 3. Step-by-Step Transformation

### First Normal Form (1NF)
**Problem:** Ensure there are no repeating groups and that all values are atomic.
**Solution:** The original table already complies with 1NF. Each cell contains a single value, and each record is uniquely identified by the employee number.

### Second Normal Form (2NF)
**Problem:** Remove partial dependencies (which only occur with composite primary keys).
**Solution:** Our Primary Key (`Empno`) is a single column. Since there is no composite primary key, partial dependencies cannot exist. The table is inherently in 2NF.

### Third Normal Form (3NF)
**Problem:** Remove transitive dependencies (when a non-key attribute depends on another non-key attribute). In this dataset, `Deptlocation` depends on `Deptcode`, not directly on `Empno`. This causes data redundancy and update anomalies.
**Solution:** Decompose the original table into two separate tables to eliminate this redundancy: `Employees` and `Departments`.

## 4. Final Relations & Keys

**Table: Departments**
* `Deptcode` (Primary Key)
* `Deptlocation`

**Table: Employees**
* `Empno` (Primary Key)
* `Name`
* `Job`
* `hiredate`
* `salary`
* `Deptcode` (Foreign Key referencing Departments)