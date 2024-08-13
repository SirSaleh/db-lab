-- Create Users

INSERT INTO user_instance (first_name, last_name, username, password_hash) 
    VALUES
    ('David', 'Jefferson', 'david.jefferson', MD5('David_is_Capperfiled')),
    ('Mansoor', 'Terello', 'mansoor.terello', MD5('TechTechTech')),
    ('Daivd', 'Angelo', 'daivd.angelo', MD5('Machintosh')),
    ('Nelson', 'Davari', 'nelson.davari', MD5('Tech')),
    ('Tim', 'Besti', 'tim.besti', MD5('Tech')),
    ('Moolan', 'Techno', 'moolan.techno', MD5('Tolstoy')),
    ('Dorothy', 'Wright', 'dorothy.wright', MD5('wrightBrothers')),
    ('Kimberly', 'Lopez', 'kimberly.lopez', MD5('latinPop')),
    ('Donna', 'Hill', 'donna.hill', MD5('hillTop')),
    ('Carol', 'Scott', 'carol.scott', MD5('scotty')),
    ('Michelle', 'Adams', 'michelle.adams', MD5('michelle2021')),
    ('Emily', 'Baker', 'emily.baker', MD5('bakeCake')),
    ('Helen', 'Gonzalez', 'helen.gonzalez', MD5('gonzalesSpeed')),
    ('Deborah', 'Nelson', 'deborah.nelson', MD5('nelsonMandela')),
    ('Laura', 'Carter', 'laura.carter', MD5('cartRider')),
    ('Elizabeth', 'Mitchell', 'elizabeth.mitchell', MD5('lostIsland')),
    ('Maria', 'Perez', 'maria.perez', MD5('perezHilton')),
    ('Susan', 'Roberts', 'susan.roberts', MD5('robertDeNiro')),
    ('Lisa', 'Turner', 'lisa.turner', MD5('turnAround')),
    ('Nancy', 'Phillips', 'nancy.phillips', MD5('phillipTheGreat')),
    ('Karen', 'Campbell', 'karen.campbell', MD5('campingLife')),
    ('Betty', 'Parker', 'betty.parker', MD5('spiderman')),
    ('Margaret', 'Evans', 'margaret.evans', MD5('evansFamily')),
    ('Sandra', 'Edwards', 'sandra.edwards', MD5('edwardScissorhands')),
    ('Ashley', 'Collins', 'ashley.collins', MD5('collinFirth')),
    ('Dorothy', 'Stewart', 'dorothy.stewart', MD5('stewartLittle')),
    ('Kimberly', 'Sanchez', 'kimberly.sanchez', MD5('dirtyDancing')),
    ('Donna', 'Morris', 'donna.morris', MD5('morrisMinor'));

-- CREATE PRODUCTS

INSERT INTO product (title, desc_text, price)
VALUES
('Blue Widget', 'A high-quality blue widget for your needs', 19.99),
('Red Widget', 'A stylish red widget that stands out', 29.99),
('Green Widget', 'An eco-friendly green widget', 39.99),
('Yellow Widget', 'Bright yellow widget for sunny days', 49.99),
('Black Widget', 'Sleek and modern black widget', 59.99),
('White Widget', 'A clean and simple white widget', 69.99),
('Purple Widget', 'A vibrant purple widget for unique tastes', 79.99),
('Orange Widget', 'An energetic orange widget', 89.99),
('Pink Widget', 'A charming pink widget', 99.99),
('Brown Widget', 'A robust brown widget for tough jobs', 109.99),
('Gray Widget', 'A neutral gray widget for any occasion', 119.99),
('Cyan Widget', 'A refreshing cyan widget', 129.99),
('Magenta Widget', 'A bold magenta widget', 139.99),
('Silver Widget', 'A shiny silver widget', 149.99),
('Gold Widget', 'A luxurious gold widget', 159.99),
('Lime Widget', 'A zesty lime widget', 169.99),
('Teal Widget', 'A sophisticated teal widget', 179.99),
('Navy Widget', 'A professional navy widget', 189.99),
('Olive Widget', 'An olive widget with a classic look', 199.99),
('Beige Widget', 'A versatile beige widget', 209.99),
('Turquoise Widget', 'A calming turquoise widget', 219.99),
('Maroon Widget', 'A rich maroon widget', 229.99),
('Peach Widget', 'A soft peach widget', 239.99),
('Tan Widget', 'A neutral tan widget', 249.99),
('Sky Blue Widget', 'A sky blue widget for a serene look', 259.99),
('Indigo Widget', 'A deep indigo widget', 269.99),
('Salmon Widget', 'A stylish salmon widget', 279.99),
('Plum Widget', 'A plush plum widget', 289.99),
('Mint Widget', 'A cool mint widget', 299.99);


-- Seed Data for order_instance Table
INSERT INTO order_instance (customer_note, user_id, product_id)
SELECT 'Please deliver between 10am-12pm', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Gift wrap this item', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Need this urgently', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Include a thank you note', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Leave at the front door', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Call upon arrival', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Deliver to the neighbor if not home', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Leave in the mailbox', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Ring the bell twice', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Leave in the backyard', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Hand it to the security guard', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Do not leave unattended', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Contact me if no one answers', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Leave under the doormat', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p
UNION ALL
SELECT 'Leave in the garage', u.id, p.id
FROM (SELECT id FROM user_instance ORDER BY RANDOM() LIMIT 1) u,
     (SELECT id FROM product ORDER BY RANDOM() LIMIT 1) p;
