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
