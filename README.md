# Week 4 Database Assignment: Advanced SQL Queries and Aggregations

The assignment queries are in [`answer.sql`](answer.sql). The script creates and selects a database named `week4_database_assignment`, then runs four commented aggregation queries.

## Before running `answer.sql`

Import the assignment's sample schema and data into `week4_database_assignment` in MySQL first. The queries expect the `customers`, `payments`, and `orderdetails` tables and the columns used in the assignment.

Run the script in MySQL Workbench or the MySQL command-line client. Check that each query executes successfully against your imported data before submitting.

## Assignment requirements covered

- **Question 1:** Groups payments by date, orders dates newest first, and limits the output to 5 dates.
- **Question 2:** Calculates each customer's average credit limit.
- **Question 3:** Returns `productCode`, `quantityOrdered`, and the total order value, grouped by both columns.
- **Question 4:** Finds the highest payment amount for each check number.

This repository does not include the assignment's data files. Use the schema and data supplied by the course before running the script.

## Submission

Submit this repository URL: https://github.com/akuch79/week-4-database-assignment
