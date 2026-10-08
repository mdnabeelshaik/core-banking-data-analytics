INSERT INTO branches
(branch_code, branch_name, city, state, ifsc_code, branch_type, opening_date, status)
VALUES
('HYD001', 'Hyderabad Main Branch', 'Hyderabad', 'Telangana',
 'BANK0001001', 'HEAD OFFICE', DATE '2015-04-10', 'ACTIVE');

INSERT INTO branches
(branch_code, branch_name, city, state, ifsc_code, branch_type, opening_date, status)
VALUES
('HYD002', 'Madhapur Branch', 'Hyderabad', 'Telangana',
 'BANK0001002', 'URBAN', DATE '2017-08-15', 'ACTIVE');

INSERT INTO branches
(branch_code, branch_name, city, state, ifsc_code, branch_type, opening_date, status)
VALUES
('KRM001', 'Karimnagar Main Branch', 'Karimnagar', 'Telangana',
 'BANK0001003', 'REGULAR', DATE '2016-02-20', 'ACTIVE');

INSERT INTO branches
(branch_code, branch_name, city, state, ifsc_code, branch_type, opening_date, status)
VALUES
('WGL001', 'Warangal Branch', 'Warangal', 'Telangana',
 'BANK0001004', 'URBAN', DATE '2018-06-05', 'ACTIVE');

INSERT INTO branches
(branch_code, branch_name, city, state, ifsc_code, branch_type, opening_date, status)
VALUES
('NZB001', 'Nizamabad Branch', 'Nizamabad', 'Telangana',
 'BANK0001005', 'REGULAR', DATE '2019-01-12', 'ACTIVE');

COMMIT;