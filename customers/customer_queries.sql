-- 1. Display all customers
SELECT *
FROM customers;


-- 2. Display only active customers
SELECT customer_number, customer_name, city, state
FROM customers
WHERE customer_status = 'ACTIVE';


-- 3. Find verified KYC customers
SELECT customer_number, customer_name, kyc_status
FROM customers
WHERE kyc_status = 'VERIFIED';


-- 4. Find customers whose KYC is pending
SELECT customer_number, customer_name, kyc_status
FROM customers
WHERE kyc_status = 'PENDING';


-- 5. Count total customers
SELECT COUNT(*) AS total_customers
FROM customers;


-- 6. Count customers by city
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city
ORDER BY customer_count DESC;


-- 7. Count customers by KYC status
SELECT kyc_status, COUNT(*) AS customer_count
FROM customers
GROUP BY kyc_status
ORDER BY customer_count DESC;


-- 8. Count customers by customer status
SELECT customer_status, COUNT(*) AS customer_count
FROM customers
GROUP BY customer_status;


-- 9. Display customers from Hyderabad
SELECT customer_number, customer_name, mobile_number
FROM customers
WHERE city = 'Hyderabad';


-- 10. Display customers alphabetically
SELECT customer_number, customer_name, city
FROM customers
ORDER BY customer_name;