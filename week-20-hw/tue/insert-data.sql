INSERT INTO flower_types (types)
VALUES
('Carnation'),
('Lily'),
('Solidago'),
('Daisy'),
('Baby"s Breath');

INSERT INTO bouquets (name, price)
VALUES 
('Get Well Soon', 59.99),
('Mother"s Day',39.99);



INSERT INTO flowers (color, stem_length, flower_type_id, bouquet_id)
VALUES 
('yellow','short', 1, 1),
('white','short', 1, 1),
('white','short', 2, 1),
('yellow','medium', 3, 1),
('yellow','short', 4, 1),
('pink','long', 1, 2),
('purple','long', 1, 2),
(NULL, 'long', 5, 2);
