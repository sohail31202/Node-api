-- Create a new database
CREATE DATABASE IF NOT EXISTS users;

-- Switch to the new database
USE users;

-- Create a new user
CREATE USER 'myuser'@'%' IDENTIFIED BY 'root';

-- Grant privileges to the user for the database
GRANT ALL PRIVILEGES ON users.* TO 'myuser'@'%';
FLUSH PRIVILEGES;

-- Create a table named 'user'
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Insert dummy data into the 'user' table
INSERT INTO user (name) VALUES
    ('ABC1'),
    ('ABC2'),
    ('ABC'EFG);
