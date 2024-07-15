-- Define Shop Tables

-- Users Table

CREATE TABLE IF NOT EXISTS user_instance (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    password_hash VARCHAR(32)
);

-- Product Table

CREATE TABLE IF NOT EXISTS product (
    id SERIAL,
    title VARCHAR(32) NOT NULL,
    desc_text TEXT NULL,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

