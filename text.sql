admin_name = admin
asmin password = admin123



CREATE DATABASE doc_finder;

-- Creating the admins table
CREATE TABLE admins (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    admin_name VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);


-- Creating the doctors table
CREATE TABLE doctors (
    d_id INT AUTO_INCREMENT PRIMARY KEY,
    d_name VARCHAR(100) NOT NULL,
    d_phone VARCHAR(15) NOT NULL,
    d_email VARCHAR(100) UNIQUE NOT NULL,
    d_password VARCHAR(255) NOT NULL,
    qualification VARCHAR(100) NOT NULL,
    specilty VARCHAR(100) NOT NULL,
    d_reg VARCHAR(50) NOT NULL
);

CREATE TABLE feedback (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    contact_number VARCHAR(20),
    feedback_text TEXT NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    u_name VARCHAR(50) NOT NULL,
    u_phone VARCHAR(20) NOT NULL,
    u_email VARCHAR(100) NOT NULL UNIQUE,
    u_password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

provinc chenge distric 

