-- 1. Display all transactions
SELECT *
FROM transactions;


-- 2. Display successful transactions
SELECT
    transaction_reference,
    account_id,
    transaction_type,
    transaction_amount,
    transaction_date
FROM transactions
WHERE transaction_status = 'SUCCESS';


-- 3. Display failed transactions
SELECT
    transaction_reference,
    account_id,
    transaction_type,
    transaction_amount,
    transaction_status
FROM transactions
WHERE transaction_status = 'FAILED';


-- 4. Display pending transactions
SELECT
    transaction_reference,
    account_id,
    transaction_type,
    transaction_amount,
    transaction_status
FROM transactions
WHERE transaction_status = 'PENDING';


-- 5. Count transactions by transaction type
SELECT
    transaction_type,
    COUNT(*) AS transaction_count
FROM transactions
GROUP BY transaction_type
ORDER BY transaction_count DESC;


-- 6. Calculate total transaction amount by transaction type
SELECT
    transaction_type,
    SUM(transaction_amount) AS total_amount
FROM transactions
GROUP BY transaction_type
ORDER BY total_amount DESC;


-- 7. Find high-value transactions
SELECT
    transaction_reference,
    account_id,
    transaction_type,
    transaction_amount
FROM transactions
WHERE transaction_amount > 10000
ORDER BY transaction_amount DESC;


-- 8. Display transactions with customer names
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
    ON a.account_id = t.account_id;


-- 9. Calculate total successful transaction amount
SELECT
    SUM(transaction_amount) AS total_successful_amount
FROM transactions
WHERE transaction_status = 'SUCCESS';


-- 10. Display transaction summary by account
SELECT
    a.account_number,
    COUNT(t.transaction_id) AS transaction_count,
    SUM(t.transaction_amount) AS total_transaction_amount
FROM accounts a
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY a.account_number
ORDER BY total_transaction_amount DESC;