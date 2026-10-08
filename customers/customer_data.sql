INSERT INTO customers
(customer_number, customer_name, date_of_birth, mobile_number, email,
 gender, city, state, kyc_status, customer_status)
VALUES
('CUST0001', 'Rahul Sharma', DATE '1995-06-15', '9876500001',
 'rahul.sharma@example.com', 'MALE', 'Hyderabad', 'Telangana',
 'VERIFIED', 'ACTIVE');

INSERT INTO customers
(customer_number, customer_name, date_of_birth, mobile_number, email,
 gender, city, state, kyc_status, customer_status)
VALUES
('CUST0002', 'Priya Reddy', DATE '1998-11-22', '9876500002',
 'priya.reddy@example.com', 'FEMALE', 'Hyderabad', 'Telangana',
 'VERIFIED', 'ACTIVE');

INSERT INTO customers
(customer_number, customer_name, date_of_birth, mobile_number, email,
 gender, city, state, kyc_status, customer_status)
VALUES
('CUST0003', 'Arjun Kumar', DATE '1992-03-10', '9876500003',
 'arjun.kumar@example.com', 'MALE', 'Karimnagar', 'Telangana',
 'PENDING', 'ACTIVE');

INSERT INTO customers
(customer_number, customer_name, date_of_birth, mobile_number, email,
 gender, city, state, kyc_status, customer_status)
VALUES
('CUST0004', 'Sana Fatima', DATE '1997-09-05', '9876500004',
 'sana.fatima@example.com', 'FEMALE', 'Warangal', 'Telangana',
 'VERIFIED', 'ACTIVE');

INSERT INTO customers
(customer_number, customer_name, date_of_birth, mobile_number, email,
 gender, city, state, kyc_status, customer_status)
VALUES
('CUST0005', 'Vikram Singh', DATE '1989-12-18', '9876500005',
 'vikram.singh@example.com', 'MALE', 'Nizamabad', 'Telangana',
 'REJECTED', 'BLOCKED');

COMMIT;