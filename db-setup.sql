-- Run once on your Realme (MariaDB)
-- ssh realme -> mysql -u root -p

CREATE DATABASE IF NOT EXISTS expiry_tracker CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER IF NOT EXISTS 'expiry_user'@'%' IDENTIFIED BY 'CHANGE_ME';
GRANT ALL PRIVILEGES ON expiry_tracker.* TO 'expiry_user'@'%';
FLUSH PRIVILEGES;

USE expiry_tracker;

CREATE TABLE IF NOT EXISTS products (
    id          BIGINT       NOT NULL AUTO_INCREMENT,
    name        VARCHAR(255) NOT NULL,
    expiry_date DATE         NOT NULL,
    created_at  DATETIME     NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
