-- 1. Display all accounts
SELECT *
FROM accounts;


-- 2. Display active accounts
SELECT account_number, account_type, balance, account_status
FROM accounts
WHERE account_status = 'ACTIVE';


-- 3. Display accounts with customer names
SELECT
    a.account_number,
    c.customer_name,
    a.account_type,
    a.balance
FROM accounts a
JOIN customers c
    ON a.customer_id = c.customer_id;


-- 4. Display accounts with branch information
SELECT
    a.account_number,
    b.branch_name,
    b.city,
    a.account_type,
    a.balance
FROM accounts a
JOIN branches b
    ON a.branch_id = b.branch_id;


-- 5. Display complete account information
SELECT
    a.account_number,
    c.customer_name,
    b.branch_name,
    b.city,
    a.account_type,
    a.account_status,
    a.balance
FROM accounts a
JOIN customers c
    ON a.customer_id = c.customer_id
JOIN branches b
    ON a.branch_id = b.branch_id;


-- 6. Find accounts with balance greater than 20,000
SELECT account_number, account_type, balance
FROM accounts
WHERE balance > 20000
ORDER BY balance DESC;


-- 7. Calculate total balance
SELECT SUM(balance) AS total_balance
FROM accounts;


-- 8. Calculate average account balance
SELECT ROUND(AVG(balance), 2) AS average_balance
FROM accounts;


-- 9. Count accounts by account type
SELECT account_type, COUNT(*) AS account_count
FROM accounts
GROUP BY account_type
ORDER BY account_count DESC;


-- 10. Calculate total balance by account type
SELECT
    account_type,
    COUNT(*) AS account_count,
    SUM(balance) AS total_balance
FROM accounts
GROUP BY account_type
ORDER BY total_balance DESC;