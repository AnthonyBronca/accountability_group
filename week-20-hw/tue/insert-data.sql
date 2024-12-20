
INSERT INTO flower_types (name) 
VALUES ('Carnation');

INSERT INTO flower_types (name) 
VALUES ('Baby''s Breath');

INSERT INTO flower_types (name) 
VALUES ('Lily');

INSERT INTO flower_types (name) 
VALUES ('Solidago');

INSERT INTO flower_types (name) 
VALUES ('Daisy');

INSERT INTO bouquets (name,price) 
VALUES ('Get Well Soon',59.99);

INSERT INTO bouquets (name, price) 
VALUES ('Mother''s Day',39.99);

INSERT INTO bouquet_flower (bouquet_id,flower_id,color,stem_length) 
VALUES (1, 1, 'yellow','short');

INSERT INTO bouquet_flower (bouquet_id,flower_id,color,stem_length) 
VALUES (1, 1, 'white','short');

INSERT INTO bouquet_flower (bouquet_id,flower_id,color,stem_length) 
VALUES (1, 3, 'white','short');

INSERT INTO bouquet_flower (bouquet_id,flower_id,color,stem_length) 
VALUES (1, 4, 'yellow','medium');

INSERT INTO bouquet_flower (bouquet_id,flower_id,color,stem_length) 
VALUES (1, 5, 'yellow','short');

INSERT INTO bouquet_flower (bouquet_id,flower_id,color,stem_length) 
VALUES (2, 1, 'pink','long');

INSERT INTO bouquet_flower (bouquet_id,flower_id,color,stem_length) 
VALUES (2, 1, 'purple','long');

INSERT INTO bouquet_flower (bouquet_id,flower_id,stem_length) 
VALUES (2, 2, 'long');