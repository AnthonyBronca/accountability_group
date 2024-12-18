-- * First bouquet is named 'Get Well Soon'. It has a price of $59.99 and the
--   following flowers (color, stem length, variety):
--   * 'yellow', 'short',  'Carnation'
--   * 'white',  'short',  'Carnation'
--   * 'white',  'short',  'Lily'
--   * 'yellow', 'medium', 'Solidago'
--   * 'yellow', 'short',  'Daisy'
-- * Second bouquet is named 'Mother''s Day'. It has a price of $39.99 and the
--   following flowers (color, stem length, variety):
--   * 'pink',             'long', 'Carnation'
--   * 'purple',           'long', 'Carnation'
--   * no color specified, 'long', 'Baby''s Breath'

INSERT INTO flower_types (name)
VALUES
('Carnation'),
('Lily'),
('Solidago'),
('Daisy'),
('Baby''s Breath');

INSERT INTO bouquets (name, price)
VALUES
('Get Well Soon', 59.99),
('Mother''s Day', 39.99);

INSERT INTO flowers (color, stem_length, flower_type_id, bouquet_id)
VALUES
('yellow', 'short', 1, 1),
('white', 'short', 1, 1),
('white', 'short', 2, 1),
('yellow', 'medium', 3, 1),
('yellow', 'short', 4, 1),
('pink', 'long', 1, 2),
('purple', 'long', 1, 2),
(NULL, 'long', 5, 2);

SELECT * FROM bouquets WHERE price between 30.45 and 40.36; 
SELECT * FROM bouquets WHERE price > 50.00;
SELECT * FROM bouquets WHERE price between 30.00 and 60.00;
