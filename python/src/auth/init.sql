CREATE USER IF NOT EXISTS 'auth_user'@'localhost' IDENTIFIED BY 'insecurepwd';
CREATE DATABASE IF NOT EXISTS auth;
GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';
FLUSH PRIVILEGES;
USE auth;
CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL);
INSERT INTO user (email, password) VALUES ('admin@localhost.com', 'adminpwd');