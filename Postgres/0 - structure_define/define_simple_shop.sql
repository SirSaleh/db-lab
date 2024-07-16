-- Define Shop Tables

-- Users Table

CREATE TABLE IF NOT EXISTS user_instance (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    password_hash VARCHAR(64)
);

-- Product Table

CREATE TABLE IF NOT EXISTS product (
    id SERIAL PRIMARY KEY,
    title VARCHAR(32) NOT NULL,
    desc_text TEXT NULL,
    price DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Order Table

CREATE TABLE IF NOT EXISTS order_instance (
    id Serial PRIMARY KEY,
    customer_note  Text,

    user_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user_instance(id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product(id)
);
