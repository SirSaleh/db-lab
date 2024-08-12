-- depends on /Postgres/0 - structure_define/*

-- Get first three users

SELECT id, first_name FROM user_instance ORDER BY id ASC LIMIT 3; 

-- Get last three users

SELECT id, first_name FROM user_instance ORDER BY id DESC LIMIT 3;

-- GET the cheapest product

SELECT title, price FROM product WHERE price=(SELECT MIN(PRICE) FROM product);

-- GET three cheapest products

SELECT title, price FROM product ORDER BY price LIMIT 3;

-- GET three most expensive products

SELECT title, price FROM product ORDER BY price DESC LIMIT 3;

-- GET the most expensive product

SELECT title, price FROM product WHERE price=(SELECT MAX(PRICE) FROM product); 

-- GET money spent by each user

SELECT
    u.id AS user_id,
    u.first_name || ' ' || u.last_name AS full_name,
    SUM(COALESCE(p.price, 0)) AS total_spent
FROM
    user_instance u
LEFT JOIN 
    order_instance o ON u.id = o.user_id
LEFT JOIN
    product p ON o.product_id = p.id
GROUP BY
    u.id;

-- GET money spent by each user limited to first three products

SELECT
    u.id,
    u.username,
    u.first_name || ' ' || u.last_name AS full_name,
    SUM(COALESCE(p.price, 0)) AS total_count
FROM
    user_instance u
LEFT JOIN
    order_instance o
        ON o.user_id=u.id
LEFT JOIN
    product p
        ON p.id=o.product_id WHERE p.id IN (SELECT id FROM product ORDER BY id LIMIT 3)
GROUP BY u.id ORDER BY id;

-- Get total sale of each product

SELECT
    p.title AS product_name,
    SUM(COALESCE(p.price, 0)) AS total_sale
FROM
    order_instance o
LEFT JOIN
    product p ON o.product_id = p.id
GROUP BY
    p.id;