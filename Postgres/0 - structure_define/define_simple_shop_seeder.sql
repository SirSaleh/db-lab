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
    ('White Widget', 'Classic white widget for any occasion', 69.99),
    ('Silver Widget', 'Elegant silver widget with a metallic finish', 79.99),
    ('Gold Widget', 'Luxurious gold-plated widget', 89.99),
    ('Pink Widget', 'Adorable pink widget for a touch of color', 99.99),
    ('Purple Widget', 'Royal purple widget for a regal look', 109.99),
    ('Orange Widget', 'Vibrant orange widget that energizes', 119.99),
    ('Brown Widget', 'Earthy brown widget for a natural feel', 129.99),
    ('Gray Widget', 'Subtle gray widget that blends in perfectly', 139.99),
    ('Navy Widget', 'Sophisticated navy blue widget', 149.99),
    ('Teal Widget', 'Refreshing teal widget for a cool vibe', 159.99),
    ('Maroon Widget', 'Rich maroon widget that exudes warmth', 169.99),
    ('Cyan Widget', 'Bright cyan widget for a splash of color', 179.99),
    ('Magenta Widget', 'Intense magenta widget for bold statements', 189.99),
    ('Lime Widget', 'Zesty lime green widget for a fresh look', 199.99),
    ('Turquoise Widget', 'Turquoise widget inspired by the sea', 209.99),
    ('Indigo Widget', 'Deep indigo widget with a mystical allure', 219.99),
    ('Beige Widget', 'Soft beige widget for a subtle touch', 229.99),
    ('Olive Widget', 'Earth-toned olive widget', 239.99),
    ('Plum Widget', 'Delicious plum-colored widget', 249.99),
    ('Violet Widget', 'Lovely violet widget for a charming appeal', 259.99),
    ('Tan Widget', 'Warm tan widget for a cozy atmosphere', 269.99),
    ('Peach Widget', 'Gentle peach widget for a delicate touch', 279.99),
    ('Salmon Widget', 'Salmon-colored widget that stands out', 289.99),
    ('Sky Blue Widget', 'Light and airy sky blue widget', 299.99);


