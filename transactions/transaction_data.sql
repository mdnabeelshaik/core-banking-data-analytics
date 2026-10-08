-- Transaction 1
INSERT INTO transactions
(transaction_reference, account_id, transaction_type, transaction_amount,
 transaction_date, transaction_status, description)
VALUES
('TXN100001', 1, 'DEPOSIT', 10000.00,
 TIMESTAMP '2025-01-10 10:15:00', 'SUCCESS', 'Cash deposit');

-- Transaction 2
INSERT INTO transactions
(transaction_reference, account_id, transaction_type, transaction_amount,
 transaction_date, transaction_status, description)
VALUES
('TXN100002', 1, 'WITHDRAWAL', 5000.00,
 TIMESTAMP '2025-01-12 14:30:00', 'SUCCESS', 'ATM withdrawal');

-- Transaction 3
INSERT INTO transactions
(transaction_reference, account_id, transaction_type, transaction_amount,
 transaction_date, transaction_status, description)
VALUES
('TXN100003', 2, 'DEPOSIT', 20000.00,
 TIMESTAMP '2025-01-15 09:45:00', 'SUCCESS', 'Salary credit');

-- Transaction 4
INSERT INTO transactions
(transaction_reference, account_id, transaction_type, transaction_amount,
 transaction_date, transaction_status, description)
VALUES
('TXN100004', 3, 'WITHDRAWAL', 3000.00,
 TIMESTAMP '2025-01-18 16:20:00', 'SUCCESS', 'ATM withdrawal');

-- Transaction 5
INSERT INTO transactions
(transaction_reference, account_id, transaction_type, transaction_amount,
 transaction_date, transaction_status, description)
VALUES
('TXN100005', 4, 'TRANSFER', 15000.00,
 TIMESTAMP '2025-01-20 11:10:00', 'SUCCESS', 'Fund transfer');

-- Transaction 6
INSERT INTO transactions
(transaction_reference, account_id, transaction_type, transaction_amount,
 transaction_date, transaction_status, description)
VALUES
('TXN100006', 5, 'DEPOSIT', 5000.00,
 TIMESTAMP '2025-01-22 13:00:00', 'PENDING', 'Cash deposit pending');

-- Transaction 7
INSERT INTO transactions
(transaction_reference, account_id, transaction_type, transaction_amount,
 transaction_date, transaction_status, description)
VALUES
('TXN100007', 2, 'INTEREST', 750.00,
 TIMESTAMP '2025-01-31 23:59:00', 'SUCCESS', 'Monthly interest');

-- Transaction 8
INSERT INTO transactions
(transaction_reference, account_id, transaction_type, transaction_amount,
 transaction_date, transaction_status, description)
VALUES
('TXN100008', 3, 'TRANSFER', 8000.00,
 TIMESTAMP '2025-02-05 12:25:00', 'FAILED', 'Transfer failed');

COMMIT;