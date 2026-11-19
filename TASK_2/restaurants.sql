USE cdg_hyd_jfs_059;
DROP TABLE restaurants;

CREATE TABLE restaurants (
    restaurant_id INT,
    restaurant_code VARCHAR(12),
    restaurant_name VARCHAR(120),
    cuisine_type VARCHAR(80),
    city VARCHAR(80),
    phone VARCHAR(15),
    seating_capacity INT,
    average_cost_for_two DECIMAL(10,2),
    rating DECIMAL(3,2),
    opening_time TIME,
    closing_time TIME,
    opened_date DATE,
    last_review_at DATETIME,
    opening_status VARCHAR(25)
);

DESCRIBE restaurants;

SHOW CREATE TABLE restaurants;

INSERT INTO 
	restaurants (restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, phone, seating_capacity, average_cost_for_two, rating, opening_time, closing_time, opened_date, last_review_at, opening_status)
VALUES
	(1, 'RES-BLR-001', 'Spice Courtyard', 'Indian', 'Bengaluru', '9876601001', 80, 1200.50, 4.40, '11:00:00', '23:00:00', '2018-06-15', '2026-11-10 10:30:00', 'OPEN');
      
INSERT INTO 
     restaurants (restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, phone, seating_capacity, average_cost_for_two, rating, opening_time, closing_time, opened_date, last_review_at, opening_status)
VALUES
    (2, 'RES-CHE-002', 'Green Banana Leaf', 'South Indian', 'Chennai', '9876601002', 60, 700.75, 4.60, '08:00:00', '22:00:00', '2020-02-10', '2026-11-11 11:00:00', 'OPEN'),
    (3, 'RES-MUM-003', 'Coastal Plate', 'Seafood', 'Mumbai', '9876601003', 100, 1800.00, 4.20, '12:00:00', '23:30:00', '2017-09-21', '2026-11-12 12:00:00', 'OPEN');


INSERT INTO 
     restaurants (restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, phone, seating_capacity, average_cost_for_two, rating, opening_time, closing_time, opened_date, last_review_at, opening_status)
VALUES 
	 (4, 'RES-HYD-004', 'Urban Bowl', 'Fusion', 'Hyderabad', '9876601004', 45, 950.50, 4.00, '10:00:00', '22:30:00', '2026-01-12', '2026-11-13 13:00:00', 'OPEN');


INSERT INTO 
     restaurants (restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, phone, seating_capacity, average_cost_for_two, rating, opening_time, closing_time, opened_date, last_review_at, opening_status)
VALUES 
     (5, 'RES-PUN-005', 'The Coffee Table', 'Cafe', 'Pune', '9876601005', 35, 450.25, 4.30, '07:00:00', '21:00:00', '2022-05-01', '2026-11-14 14:00:00', 'OPEN');
     
INSERT INTO 
     restaurants (restaurant_id, restaurant_code, restaurant_name, cuisine_type, city, phone, seating_capacity, average_cost_for_two, rating, opening_time, closing_time, opened_date, last_review_at, opening_status)
VALUES 
     (6, 'RES-HYD-006', 'Royal Spice House', 'North Indian', 'Hyderabad', '9876601006', 50, 1100.75, 3.85, '11:30:00', '22:00:00', '2023-08-15', '2026-11-15 15:00:00', 'CLOSED');
     
UPDATE restaurants 
SET 
    rating = 4.55
WHERE
    restaurant_code = 'RES-BLR-001';


UPDATE restaurants 
SET 
    average_cost_for_two = average_cost_for_two + (average_cost_for_two * 10.00 / 100)
WHERE
    city = 'Mumbai';
    
UPDATE restaurants 
SET 
    rating = 4.25
WHERE
    restaurant_code = 'RES-HYD-004';


UPDATE restaurants 
SET 
    opening_time = '10:00:00'
WHERE
    opening_status = 'OPEN';


UPDATE restaurants 
SET 
    last_review_at = '2026-11-19 12:30:00'
WHERE
    restaurant_code = 'RES-CHE-002';
    
UPDATE restaurants 
SET 
    seating_capacity = seating_capacity + 10
WHERE
    seating_capacity < 60;
    
SELECT 
    restaurant_id,
    restaurant_code,
    restaurant_name,
    city,
    seating_capacity,
    average_cost_for_two,
    rating,
    opening_time,
    last_review_at,
    opening_status
FROM
    restaurants;


SELECT 
    restaurant_code, restaurant_name, city, opening_status
FROM
    restaurants
WHERE
    opening_status = 'OPEN';


SELECT 
    restaurant_code, restaurant_name, cuisine_type, city, rating
FROM
    restaurants
WHERE
    city = 'Hyderabad';


SELECT 
    restaurant_code, restaurant_name, rating
FROM
    restaurants
WHERE
    rating > 4.00;
    
SELECT 
    restaurant_code, restaurant_name, average_cost_for_two
FROM
    restaurants
WHERE
    average_cost_for_two > 1000;


SELECT 
    restaurant_code, restaurant_name, seating_capacity
FROM
    restaurants
WHERE
    seating_capacity > 60;
    
SELECT 
    restaurant_code, restaurant_name, cuisine_type, city
FROM
    restaurants
WHERE
    cuisine_type = 'South Indian';
    
SELECT 
    restaurant_code, restaurant_name, rating
FROM
    restaurants
WHERE
    rating = 3.85;
    
SELECT 
    restaurant_code, restaurant_name, opening_time
FROM
    restaurants
WHERE
    opening_time = '10:00:00';
    
SELECT 
    restaurant_code, restaurant_name, seating_capacity
FROM
    restaurants
WHERE
    seating_capacity < 60;
SELECT 
    restaurant_code, restaurant_name, opened_date
FROM
    restaurants
WHERE
    opened_date > '2020-12-31';
SELECT 
    restaurant_code, restaurant_name, average_cost_for_two
FROM
    restaurants
WHERE
    average_cost_for_two BETWEEN 500 AND 1500;
    
SELECT 
    restaurant_id,
    restaurant_code,
    restaurant_name,
    city,
    seating_capacity,
    average_cost_for_two,
    rating,
    opening_time,
    last_review_at,
    opening_status
FROM
    restaurants;