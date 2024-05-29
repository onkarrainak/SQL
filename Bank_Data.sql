-- Create the database
CREATE DATABASE BankAccountDB;

-- Switch to the newly created database
USE BankAccountDB;

-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100),
    address VARCHAR(255),
    phone_number VARCHAR(20)
);

-- Create the Accounts table
CREATE TABLE Accounts (
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    balance DECIMAL(15, 2),
    account_type VARCHAR(50),
    date_opened DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the Transactions table
CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    account_id INT,
    transaction_type ENUM('deposit', 'withdrawal', 'transfer'),
    amount DECIMAL(15, 2),
    transaction_date DATETIME,
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

-- Insert sample data into Customers table
INSERT INTO Customers (name, email, address, phone_number) VALUES
('Onkar Rainak', 'onkarrainak@example.com', 'kolhapur, City', '987654321'),
('Omu Raiank', 'omurainak@example.com', 'Kolhapur, Town', '123456789');

-- Insert sample data into Accounts table
INSERT INTO Accounts (customer_id, balance, account_type, date_opened) VALUES
(1, 1000.00, 'Savings', '2024-01-01'),
(2, 500.00, 'Checking', '2024-01-15');

-- Insert sample data into Transactions table
INSERT INTO Transactions (account_id, transaction_type, amount, transaction_date) VALUES
(1, 'deposit', 1000.00, '2024-01-01 10:00:00'),
(1, 'withdrawal', 200.00, '2024-01-05 14:30:00'),
(2, 'deposit', 500.00, '2024-01-15 11:00:00'),
(2, 'transfer', 200.00, '2024-01-20 09:45:00');

