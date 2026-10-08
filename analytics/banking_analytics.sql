-- 1. Customer Account Overview

SELECT
    c.customer_number,
    c.customer_name,
    a.account_number,
    a.account_type,
    a.account_status,
    a.balance
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
ORDER BY c.customer_name;

-- 2. Total Deposits by Customer

SELECT
    c.customer_name,
    SUM(t.transaction_amount) AS total_deposits
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.transaction_type = 'DEPOSIT'
  AND t.transaction_status = 'SUCCESS'
GROUP BY c.customer_name
ORDER BY total_deposits DESC;

-- 3. Total Withdrawals by Customer

SELECT
    c.customer_name,
    SUM(t.transaction_amount) AS total_withdrawals
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.transaction_type = 'WITHDRAWAL'
  AND t.transaction_status = 'SUCCESS'
GROUP BY c.customer_name
ORDER BY total_withdrawals DESC;


-- 4. Customer Transaction Activity

SELECT
    c.customer_name,
    COUNT(t.transaction_id) AS transaction_count,
    SUM(t.transaction_amount) AS total_transaction_amount
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.transaction_status = 'SUCCESS'
GROUP BY c.customer_name
ORDER BY transaction_count DESC;


-- 5. Branch-wise Total Account Balance

SELECT
    b.branch_name,
    b.city,
    COUNT(a.account_id) AS account_count,
    SUM(a.balance) AS total_balance
FROM branches b
JOIN accounts a
    ON b.branch_id = a.branch_id
GROUP BY b.branch_name, b.city
ORDER BY total_balance DESC;

-- 6. Branch-wise Transaction Volume

SELECT
    b.branch_name,
    b.city,
    COUNT(t.transaction_id) AS transaction_count,
    SUM(t.transaction_amount) AS total_transaction_amount
FROM branches b
JOIN accounts a
    ON b.branch_id = a.branch_id
JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.transaction_status = 'SUCCESS'
GROUP BY b.branch_name, b.city
ORDER BY total_transaction_amount DESC;


-- 7. Customers with Failed or Pending Transactions

SELECT
    c.customer_name,
    a.account_number,
    t.transaction_reference,
    t.transaction_type,
    t.transaction_amount,
    t.transaction_status
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.transaction_status IN ('FAILED', 'PENDING')
ORDER BY t.transaction_date;


-- 8. Account Balance and Transaction Summary

SELECT
    a.account_number,
    a.account_type,
    a.balance,
    COUNT(t.transaction_id) AS transaction_count,
    SUM(t.transaction_amount) AS total_transaction_amount
FROM accounts a
LEFT JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY
    a.account_number,
    a.account_type,
    a.balance
ORDER BY a.balance DESC;


-- 9. Top Customers by Transaction Amount

SELECT
    c.customer_name,
    SUM(t.transaction_amount) AS total_transaction_amount
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.transaction_status = 'SUCCESS'
GROUP BY c.customer_name
ORDER BY total_transaction_amount DESC
FETCH FIRST 5 ROWS ONLY;


-- 10. Overall Banking Summary

SELECT
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(DISTINCT a.account_id) AS total_accounts,
    COUNT(t.transaction_id) AS total_transactions,
    SUM(t.transaction_amount) AS total_transaction_amount
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
JOIN transactions t
    ON a.account_id = t.account_id
WHERE t.transaction_status = 'SUCCESS';