-- 1. Display all branches
SELECT *
FROM branches;


-- 2. Display only active branches
SELECT branch_code, branch_name, city, state
FROM branches
WHERE status = 'ACTIVE';


-- 3. Find branches located in Hyderabad
SELECT branch_code, branch_name, city, ifsc_code
FROM branches
WHERE city = 'Hyderabad';


-- 4. Count total branches
SELECT COUNT(*) AS total_branches
FROM branches;


-- 5. Count branches by city
SELECT city, COUNT(*) AS branch_count
FROM branches
GROUP BY city
ORDER BY branch_count DESC;


-- 6. Count branches by branch type
SELECT branch_type, COUNT(*) AS branch_count
FROM branches
GROUP BY branch_type
ORDER BY branch_count DESC;


-- 7. Find branches opened after 2017
SELECT branch_code, branch_name, opening_date
FROM branches
WHERE opening_date >= DATE '2018-01-01'
ORDER BY opening_date;


-- 8. Display branches from newest to oldest
SELECT branch_code, branch_name, opening_date
FROM branches
ORDER BY opening_date DESC;


-- 9. Display branches with their current status
SELECT branch_code,
       branch_name,
       city,
       status
FROM branches
ORDER BY branch_name;


-- 10. Categorize branches based on status
SELECT branch_name,
       city,
       CASE
           WHEN status = 'ACTIVE' THEN 'Operational'
           ELSE 'Not Operational'
       END AS branch_status
FROM branches;