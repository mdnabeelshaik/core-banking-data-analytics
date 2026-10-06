# Core Banking Data & Analytics

## Project Overview

This project is an Oracle SQL-based Core Banking Data & Analytics project designed to simulate how banking data can be stored, managed, analyzed, and reported in a core banking environment.

The project uses a relational database structure containing branches, customers, accounts, and transactions. SQL queries are used to analyze banking data and generate meaningful business reports.

## Objectives

- Understand how core banking data can be structured in a relational database.
- Practice Oracle SQL using realistic banking scenarios.
- Analyze customer, account, and transaction data.
- Generate reports useful for banking operations and management.
- Apply SQL concepts such as joins, subqueries, aggregation, CASE statements, CTEs, and analytical functions.

## Database Structure

The project follows this basic relationship:

```text
BRANCHES
   |
   +---- CUSTOMERS
             |
             +---- ACCOUNTS
                       |
                       +---- TRANSACTIONS

ACCOUNT_TYPES
```

### Main Tables

- **BRANCHES** – Stores bank branch information.
- **CUSTOMERS** – Stores customer details and KYC status.
- **ACCOUNT_TYPES** – Stores different types of bank accounts.
- **ACCOUNTS** – Stores customer account information and balances.
- **TRANSACTIONS** – Stores deposits, withdrawals, transfers, and other account transactions.

## Key Analysis

The project will include analysis such as:

- Customers by branch
- Active and inactive accounts
- Account balances
- Deposit and withdrawal analysis
- Monthly transaction volume
- Highest transaction customers
- Customer transaction history
- Average account balance
- Branch-wise performance
- Unusual or suspicious transaction patterns

## Technologies Used

- Oracle Database
- Oracle SQL
- Git
- GitHub

## SQL Concepts Practiced

- DDL
- DML
- Constraints
- Primary Keys
- Foreign Keys
- Joins
- GROUP BY
- HAVING
- CASE statements
- Subqueries
- Common Table Expressions (CTEs)
- Aggregate Functions
- Window Functions
- Views
- Reporting Queries

## Project Structure

```text
core-banking-data-analytics/
│
├── database/
│   ├── tables/
│   └── sample_data/
│
├── sql/
│   ├── basic_queries/
│   ├── analytical_queries/
│   └── reports/
│
├── documentation/
│
└── README.md
```

## Purpose

This project is part of my learning journey toward working in **Core Banking, Finacle, and Banking Technology**. It focuses on building a practical understanding of banking data and applying Oracle SQL to real-world banking scenarios.

## Future Enhancements

- Add PL/SQL procedures and functions
- Add transaction-processing business logic
- Add banking reconciliation reports
- Add loan and EMI analysis
- Add more advanced analytical queries
- Integrate the project with a simple application
- Extend the project toward a Finacle-inspired banking system

## Author

**Shaik Nabeel**

Aspiring Core Banking / Finacle Professional