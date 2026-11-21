-- Week 4 Database Assignment: Advanced SQL Queries and Aggregations
-- Database: week4_database_assignment
-- Before running these queries, import the assignment's sample data/schema
-- into this database. The queries expect the classicmodels tables:
-- payments, customers, orderdetails, and products.

CREATE DATABASE IF NOT EXISTS week4_database_assignment;
USE week4_database_assignment;

-- Question 1: Calculate the total payment amount for each payment date.
-- Group all payments made on the same date and show the newest dates first.
SELECT
    paymentDate,
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC;

-- Question 2: Calculate the average credit limit for each customer.
-- customerNumber identifies a customer; name and country make the result readable.
SELECT
    customerNumber,
    customerName,
    country,
    AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerNumber, customerName, country
ORDER BY customerName;

-- Question 3: Calculate the total value of products ordered.
-- Sum each order line's price times its quantity, grouped by product.
SELECT
    productCode,
    SUM(priceEach * quantityOrdered) AS total_price
FROM orderdetails
GROUP BY productCode
ORDER BY total_price DESC;

-- Question 4: Find the highest payment amount for each check number.
SELECT
    checkNumber,
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber
ORDER BY checkNumber;
