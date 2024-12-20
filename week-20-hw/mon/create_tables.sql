-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;

-- Your code here

DROP TABLE IF EXISTS bouquets;
DROP TABLE IF EXISTS flower_types;

CREATE TABLE bouquets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE flower_types (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) UNIQUE
);

CREATE TABLE bouquet_flower (
    bouquet_id INTEGER,
    flower_id INTEGER,
    color VARCHAR(10),
    stem_length VARCHAR(50),
    FOREIGN KEY (bouquet_id) REFERENCES bouquets(id),
    FOREIGN KEY (flower_id) REFERENCES flower_types(id)
);

