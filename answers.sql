--  QUESTION 1. PAYMENTS DATABASE

-- Here is a database created named payments
       CREATE DATABASE payments;

       /* For our database to reflect all we are doing we need 
       to specifically choose to use it*/
    
       USE payments;

       /* This is the table we have created for our database with
       check number, payment date and amount columns*/

       CREATE TABLE payments (
        check_number VARCHAR(50),
        payment_date VARCHAR(50),
        amount DECIMAL(20, 2)

       );

       /* I was haing issues inserting the values into payment
       database so I used the USE statements again for mysql to 
       understand what's going on */
             USE payments;

        /* These are the values I've inserted into our columns */     

             INSERT INTO payments (check_number, payment_date, amount)

       VALUES('CHK001', '2023-08-08', 1500.50),
             ('CHK002', '2023-08-10', 1520.50),
             ('CHK003', '2023-08-09', 1540.50);

             USE payments;  
DESCRIBE payments;

/* Here the check number, payment date, and amount are 
successfully selected from the payments database */

       SELECT check_number, payment_date, amount
       FROM payments;

      
      
      
      
      
      
      
      
      
       -- QUESTION 2. ORDERS DATABASE

-- Created database named orders
       CREATE DATABASE orders;

-- Created table for orders database with orderDate, requiredDate, and status columns
       CREATE TABLE orders (
        orderDate DATE,
        requiredDate DATE,
        status VARCHAR(50)
       );

-- it's the orders database we are using here
       USE orders;

       
/* Here are the inserted values to the orders table */

             INSERT INTO orders (orderDate, requiredDate, status)

       VALUES('2025-08-05', '2025-08-12', 'In Process'),
             ('2025-08-03', '2025-08-10', 'Shipped'),
             ('2025-08-08', '2025-08-15', 'In Process'),
             ('2025-08-01', '2025-08-07', 'Cancelled');


-- just to be sure if we are using the right table and the details in the table
              SHOW TABLES;

              DESCRIBE orders;

/* Here is a successful retrieval of orderDate, requiredDate, status from orders
where status is 'in process' and order dates from descending order */              

              SELECT orderDate, requiredDate, status 
              FROM orders
              WHERE status = 'In Process'
              ORDER BY orderDate DESC;



              
              
              
              
              
              
              
              -- QUESTION 3. EMPLOYEE DATABASE

-- Created a database named employees
     CREATE DATABASE employees;

/* Here is the table for our database with firstName,  lastName, email,  
jobTitle and employeeNumber columns */
     CREATE TABLE employees (
        firstName VARCHAR(100),
        lastName VARCHAR(100),
        email VARCHAR(50),
        jobTitle VARCHAR(50),
        employeeNumber INT

     );

-- I have to specify to mysql which database to use
     USE employees;

     -- These are the values I inserted in my table

     INSERT INTO employees (firstName, lastName, email, jobTitle, employeeNumber)

     VALUES ('Irene', 'Ouko', 'irene@email.com', 'Sales Rep', 5230),
            ('Sharn', 'Desma', 'sharn@email.com', 'HR', 5631),
            ('Soniah', 'Mary', 'soniah@email.com', 'Sales Rep', 5530),
            ('Denis', 'Omala', 'denis@email.com', 'CEO', 4580);

            /* Successfully retrieved firstName, lastName, email from 
            employees where jobTitle is 'Sales Rep with a descending employeeNumber */

            SELECT firstName, lastName, email
            FROM employees
            WHERE jobTitle  = 'Sales Rep'
            ORDER BY employeeNumber DESC;  


            
            
            
            
            
            
            -- QUESTION 4. OFFICES DATABASE

--Created offices database 
DROP TABLE IF EXISTS offices;


--Created table for offices database with the listed data for the raw
CREATE TABLE offices (
    officeCode INT,
    city VARCHAR(50),
    phone VARCHAR(50),
    addressLine1 VARCHAR(100),
    country VARCHAR(50)
);

-- Inserted the listed values into the columns

INSERT INTO offices (officeCode, city, phone, addressLine1, country)
VALUES
(1, 'Nairobi', '+254701111111', 'Kenyatta Ave', 'Kenya'),
(2, 'Mombasa', '+254702222222', 'Moi Ave', 'Kenya'),
(3, 'Kisumu', '+254703333333', 'Oginga Odinga St', 'Kenya');

--Here it retrieves all the columns and the records from this database

SELECT * FROM offices;





--QUESTION 5. PRODUCT DATABASE

--This is a database named products

CREATE DATABASE products;

--Here is the table with the listed data in a row

CREATE TABLE products (
    productName VARCHAR(100),
    quantityInStock INT,
    buyPrice DECIMAL(10, 2)
);

USE products;

/* These are the values in the table */

INSERT INTO products (productName, quantityInStock, buyPrice)

VALUES ('Weetabix', 300, 500.87),
       ('Corn Flakes', 500, 354.50),
       ('Nyama Bite', 100, 90),
       ('Sausages', 200, 365),
       ('Chocolate', 250, 100),
       ('Ice Cream', 100, 250);


       /* Here I fetched the product name, quantity in stock from products and 
       ordered the buy price in ascending order with a limit of 5 */

       SELECT productName, quantityInStock
       FROM products
       ORDER BY buyPrice ASC
       LIMIT 5;