CREATE DATABASE sanastours_db;
USE sanastours_db;

CREATE TABLE User (
    user_id INT AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL,
    account_status VARCHAR(20) DEFAULT 'ACTIVE',
    CONSTRAINT PRIMARY KEY (user_id)
);

CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT,
    user_id INT NOT NULL UNIQUE,      
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    address VARCHAR(150),
    country VARCHAR(50),
    CONSTRAINT PRIMARY KEY (customer_id),
	CONSTRAINT fk_customer_user FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE CASCADE
);



