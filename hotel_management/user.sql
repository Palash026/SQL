SHOW DATABASES;

CREATE DATABASE hotel_management;

USE hotel_management;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Sample INSERT statements for 10 users with real-sounding names and strong passwords
INSERT INTO users (email, password) VALUES
    ('john.doe@example.com', 'S3cr3tP@ssw0rd1'),
    ('jane.smith@example.com', 'P@ssw0rd2Funny'),
    ('sam.wilson@example.com', '5tr0ngP@ss!23'),
    ('susan.jones@example.com', 'P@ssw0rdXyZ1'),
    ('mike.brown@example.com', '4SecureP@ssw'),
    ('lisa.adams@example.com', 'Th1sIsMyP@ss!'),
    ('david.wright@example.com', 'P@ssw0rd123!'),
    ('emily.parker@example.com', '2Str0ngP@ssw0rd'),
    ('ryan.king@example.com', 'P@ssw0rd$ecur3'),
    ('olivia.green@example.com', 'P@ssw0rd4U!');

SELECT * FROM USERS;

CREATE TABLE userdetail (
    detail_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    mobile_number VARCHAR(15) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO userdetail (user_id, first_name, last_name, mobile_number) VALUES
    (1, 'John', 'Doe', '123-456-7890'),
    (2, 'Jane', 'Smith', '987-654-3210'),
    (3, 'Sam', 'Wilson', '555-123-4567'),
    (4, 'Susan', 'Jones', '444-888-9999'),
    (5, 'Mike', 'Brown', '111-222-3333'),
    (6, 'Lisa', 'Adams', '777-555-4444'),
    (7, 'David', 'Wright', '333-666-9999'),
    (8, 'Emily', 'Parker', '555-111-7777'),
    (9, 'Ryan', 'King', '999-333-6666'),
    (10, 'Olivia', 'Green', '888-777-5555');

SELECT CONCAT(ud.first_name, " ", ud.last_name) AS name, u.email, ud.mobile_number FROM users u INNER JOIN userdetail ud ON u.user_id = ud.user_id;

SELECT CONCAT(ud.first_name, " ", ud.last_name) AS name, u.email, ud.mobile_number FROM users u LEFT JOIN userdetail ud ON u.user_id = ud.user_id;

SELECT CONCAT(ud.first_name, " ", ud.last_name) AS name, u.email, ud.mobile_number FROM users u RIGHT JOIN userdetail ud ON u.user_id = ud.user_id;

INNER JOIN: Retrieves only matching rows from both tables.
LEFT JOIN: Retrieves all rows from the left table and matching rows from the right table. Unmatched rows from the left table have NULL values for right table columns.
RIGHT JOIN: Retrieves all rows from the right table and matching rows from the left table. Unmatched rows from the right table have NULL values for left table columns.
FULL OUTER JOIN: Retrieves all rows from both tables and includes NULL values for unmatched rows.

SELECT * FROM userdetail;

INSERT INTO users (email, password) values ("eren jaegar", "attack on titan");

SELECT * FROM users INNER JOIN userdetail ON users.user_id = userdetail.user_id;

UPDATE USERS SET email = "eren.jaegar@gmail.com" WHERE EMAIL = "eren jaegar";