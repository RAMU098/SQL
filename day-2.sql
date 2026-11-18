USE cdg_hyd_jfs_059;

-- MYSQL QUERIES COMMANDS 
SHOW DATABASES;
-- for SHOW TABLES
SHOW TABLES;
-- FOR DESCRIBEiNG
DESCRIBE customers;
SHOW CREATE TABLE customers;


-- INSERT IN DML OPERATION
INSERT INTO 
     customers(customer_id,first_name,last_name) 
VALUES
     (101,'Neha','Gupta');
     
     
INSERT INTO 
     customers(first_name,customer_id,last_name) 
VALUES
     ('Akash',102,'Sharma');
-- WE CAN INSERT WHAT WE WANT REMAINING IT SHOWS BLANK LIKE NULL


INSERT INTO 
     customers(first_name,last_name) 
VALUES
     ('Bharat','Sharma');
     
     
-- BASED ON THE COLUMNS NAME FORMATE WE CAN INSERT THE DATA
INSERT INTO 
     customers 
VALUES
     (104,'Gaurav','Kapoor');
     
     
-- WE CAN INSERT MULTIPLE ROWS AT A TIME
INSERT INTO 
     customers(customer_id,first_name,last_name) 
VALUES
     (105,'Akshat','Kumar'),
     (106,'Vani','Gupta'),
     (107,'Chetan','Sharma');
     
     
-- UPDATE IN DML 
UPDATE 
     customers 
SET 
   last_name='Verma';
   
   
   -- UPDATE BASED ON SPECIFIC COLUMNS
UPDATE customers 
SET 
    last_name = 'Sharma'
WHERE
    customer_id = 101;
    
    
UPDATE customers 
SET 
    last_name = 'Sharma'
WHERE
    customer_id = 111;-- no id is found so 0affected
    
    
UPDATE customers 
SET 
    last_name = 'Sharma'
WHERE
    first_name = 'Vani';
    
    
UPDATE customers 
SET 
    customer_id = 103,
    last_name = 'Verma'
WHERE
    first_name = 'Bharat';


-- DELETE IN DML
DELETE FROM customers;-- DELETE ALL DATA

DELETE FROM customers 
WHERE
    customer_id = 107;


   
   
-- SELECTING EVERY COLUMNS FROM TABLE SQL
SELECT  
     customer_id,
     first_name,
     last_name 
FROM 
     customers;
