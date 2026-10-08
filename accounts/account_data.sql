-- Account 1
INSERT INTO accounts
(account_number, customer_id, branch_id, account_type, account_status, opening_date, balance)
VALUES
('ACC100001', 1, 1, 'SAVINGS', 'ACTIVE', DATE '2024-01-15', 25000.00);


-- Account 2
INSERT INTO accounts
(account_number, customer_id, branch_id, account_type, account_status, opening_date, balance)
VALUES
('ACC100002', 2, 2, 'SALARY', 'ACTIVE', DATE '2024-03-20', 45000.00);


-- Account 3
INSERT INTO accounts
(account_number, customer_id, branch_id, account_type, account_status, opening_date, balance)
VALUES
('ACC100003', 3, 3, 'SAVINGS', 'ACTIVE', DATE '2024-05-10', 18500.00);


-- Account 4
INSERT INTO accounts
(account_number, customer_id, branch_id, account_type, account_status, opening_date, balance)
VALUES
('ACC100004', 4, 4, 'CURRENT', 'ACTIVE', DATE '2024-07-05', 75000.00);


-- Account 5
INSERT INTO accounts
(account_number, customer_id, branch_id, account_type, account_status, opening_date, balance)
VALUES
('ACC100005', 5, 5, 'SAVINGS', 'BLOCKED', DATE '2024-09-12', 5000.00);

COMMIT;