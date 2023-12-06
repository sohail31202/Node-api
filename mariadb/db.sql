-- Create a new database
CREATE DATABASE IF NOT EXISTS your_db_name;

-- Switch to the new database
USE your_db_name;

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
    ('John Doe'),
    ('Jane Doe'),
    ('Alice Smith');
