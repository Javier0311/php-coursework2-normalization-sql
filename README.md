# Coursework 2 - Database Normalization and SQL Queries

## Project Description
This repository contains the complete solution for Coursework 2. It demonstrates the process of taking a denormalized dataset, normalizing it up to the Third Normal Form (3NF), designing the database schema, inserting data, and running complex SQL queries.

## Repository Structure
* **`normalization_process.md`**: Step-by-step explanation of the normalization process (1NF, 2NF, and 3NF) identifying functional dependencies and removing data redundancy.
* **`schema.sql`**: SQL commands to create the `Departments` and `Employees` tables with their respective Primary Keys and Foreign Keys.
* **`data.sql`**: SQL commands to insert exactly 30 realistic records across the created tables, maintaining referential integrity.
* **`queries.sql`**: A collection of SQL queries answering the coursework requirements, including data aggregation, table joins, and filtering.
* **`coursework2_db.sql`**: The full exported database file containing both the structure and the data.

## How to Import the Database
1. Open MySQL or phpMyAdmin.
2. Create a new database (for example, `coursework2_db`).
3. Select the newly created database.
4. Go to the "Import" tab and upload the `coursework2_db.sql` file.
5. Alternatively, you can run the files manually by executing `schema.sql` first, followed by `data.sql`.