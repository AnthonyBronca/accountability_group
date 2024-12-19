-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;

-- Your code here
DROP TABLE IF EXISTS bouquets;
DROP TABLE IF EXISTS flower_types;

CREATE TABLE bouquets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) UNIQUE NOT NULL,
    price DECIMAL(2,2) NOT NULL
);

INSERT INTO bouquets (name) VALUES ("Get Well Soon");
INSERT INTO bouquets (name) VALUES ("Mother's Day");

INSERT INTO bouquets (price) VALUES ("59.99");
INSERT INTO bouquets (price) VALUES ("39.99");

CREATE TABLE flower_types (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
);

INSERT INTO flower_types (name) VALUES ("Carnation");
INSERT INTO flower_types (name) VALUES ("Baby's Breath");
INSERT INTO flower_types (name) VALUES ("Lily");
INSERT INTO flower_types (name) VALUES ("Solidago");
INSERT INTO flower_types (name) VALUES ("Daisy");

SELECT * FROM bouquets;
SELECT * FROM flower_types;