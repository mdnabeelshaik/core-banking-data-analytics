# Core Banking Data Analytics

## 📌 Project Overview

This project is a banking data analytics system built using **Oracle SQL**.

The project simulates a basic core banking environment containing branches, customers, accounts, and banking transactions. SQL queries are used to retrieve, analyze, and summarize banking data to answer common business questions.

The project was designed to strengthen practical SQL skills while applying them to a **core banking domain**.

---

## 🎯 Project Objectives

- Understand how banking data is structured across multiple tables
- Build relationships between branches, customers, accounts, and transactions
- Practice SQL queries on realistic banking data
- Analyze deposits, withdrawals, transactions, balances, and customer activity
- Use joins and aggregate functions for banking analytics
- Answer business questions using SQL

---

## 🛠️ Technologies Used

- **Oracle Database**
- **Oracle SQL**
- **SQL Developer**
- **Git & GitHub**

---

## 🏦 Database Structure

The project contains five main modules:

```text
Branches
   │
   ├── Customers
   │      │
   │      └── Accounts
   │              │
   │              └── Transactions
   │
   └── Accounts
```

### Main Tables

| Table | Purpose |
|---|---|
| `branches` | Stores bank branch information |
| `customers` | Stores customer information and KYC status |
| `accounts` | Stores customer account information and balances |
| `transactions` | Stores banking transaction records |

---

## 📂 Project Structure

```text
core-banking-data-analytics/
│
├── branches/
│   ├── branch_table.sql
│   ├── branch_data.sql
│   └── branch_queries.sql
│
├── customers/
│   ├── customer_table.sql
│   ├── customer_data.sql
│   └── customer_queries.sql
│
├── accounts/
│   ├── account_table.sql
│   ├── account_data.sql
│   └── account_queries.sql
│
├── transactions/
│   ├── transaction_table.sql
│   ├── transaction_data.sql
│   └── transaction_queries.sql
│
├── analytics/
│   └── banking_analytics.sql
│
└── README.md
```

---

## 🔗 Table Relationships

The project uses primary keys and foreign keys to establish relationships between tables.

```text
branches
   │
   │ branch_id
   ↓
accounts
   │
   │ account_id
   ↓
transactions

customers
   │
   │ customer_id
   ↓
accounts
```

### Relationships

- One customer can have one or more accounts.
- One branch can have multiple accounts.
- One account can have multiple transactions.
- Transactions are connected to accounts through `account_id`.

---

## 📊 Banking Analytics

The project contains cross-table analytics for questions such as:

1. Which account belongs to each customer?
2. How much did each customer successfully deposit?
3. How much did each customer successfully withdraw?
4. Which customers have the highest transaction activity?
5. Which branches hold the highest total account balance?
6. Which branches process the highest transaction volume?
7. Which customers have failed or pending transactions?
8. What is the transaction activity for each account?
9. Which customers have the highest successful transaction amount?
10. What is the overall banking activity?

---

## 🧠 SQL Concepts Used

This project demonstrates practical use of:

- `CREATE TABLE`
- `INSERT`
- `SELECT`
- `WHERE`
- `JOIN`
- `INNER JOIN`
- `LEFT JOIN`
- `GROUP BY`
- `ORDER BY`
- `SUM()`
- `COUNT()`
- `AVG()`
- `CASE`
- `IN`
- `DISTINCT`
- `FETCH FIRST`
- Primary Keys
- Foreign Keys
- Unique Constraints
- Check Constraints
- Default Values
- Identity Columns
- `COMMIT`

---

## 💼 Example Business Query

### Business Question

**How much money did each customer successfully withdraw?**

```sql
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
```

### Business Logic

```text
Customer
   ↓
Account
   ↓
Transaction
   ↓
Filter successful withdrawals
   ↓
SUM transaction amount
   ↓
Group by customer
```

This demonstrates how SQL can be used to convert a banking business question into an analytical result.

---

## ▶️ How to Run the Project

### 1. Install Oracle Database

Use an Oracle Database environment such as Oracle Database XE.

### 2. Open Oracle SQL Developer

Connect to your Oracle database.

### 3. Execute the SQL files in this order

```text
1. branches/branch_table.sql
2. branches/branch_data.sql
3. branches/branch_queries.sql

4. customers/customer_table.sql
5. customers/customer_data.sql
6. customers/customer_queries.sql

7. accounts/account_table.sql
8. accounts/account_data.sql
9. accounts/account_queries.sql

10. transactions/transaction_table.sql
11. transactions/transaction_data.sql
12. transactions/transaction_queries.sql

13. analytics/banking_analytics.sql
```

The table creation order is important because foreign keys depend on previously created tables.

---

## 📌 Project Scope

This is a **learning and portfolio project** designed to demonstrate Oracle SQL and banking-domain data analysis.

It is not a production banking system and does not implement actual banking transaction processing or real Finacle functionality.

---

## 🚀 Future Enhancements

Possible future improvements include:

- Advanced SQL analytics
- Common Table Expressions (CTEs)
- Window functions
- Banking reconciliation analysis
- More complex transaction analysis
- PL/SQL-based banking logic in a separate project
- Additional reporting queries
- Data quality checks
- Performance optimization

---

## 👨‍💻 Author

**Shaik Nabeel**

Oracle SQL | Core Banking Domain | FinTech

---

## ⭐ Key Learning Outcome

This project helped develop practical understanding of how relational database tables can represent banking entities and how SQL can be used to connect, filter, aggregate, and analyze banking data.