DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS users;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    user_id INT, 
    account_holder VARCHAR(100),
    balance DECIMAL(15,2)
);

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO users (user_id, name) VALUES 
(1, 'Abdulrahman Mohammed'),
(2, 'Mamdouh Aldhafeeri'),
(3, 'Saud Elabdullah');

INSERT INTO accounts (account_id, user_id, account_holder, balance) VALUES
(1, 1, 'Abdulrahman', 500),
(2, 2, 'Mamdouh', 300),
(3, 3, 'Saud', 700);

