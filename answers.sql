-- QUESTION 1. Retrieve checkNumber, paymentDate, and amount from the payments table
SELECT checkNumber, paymentDate, amount
FROM payments;

--QUESTION 2. Retrieve orderDate, requiredDate, and status for 'In Process' orders, sorted by orderDate (descending)
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

--QUESTION 3. Display firstName, lastName, and email of 'Sales Rep' employees, sorted by employeeNumber (descending)
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

--QUESTION 4. Retrieve all columns and records from the offices table
SELECT *
FROM offices;

--QUESTION 5. Fetch productName and quantityInStock, sort by buyPrice (ascending), limit to 5 records
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;