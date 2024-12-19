-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;

-- Your code here
DROP TABLE IF EXISTS bouquets;
DROP TABLE IF EXISTS flowers;
DROP TABLE IF EXISTS flower_types;

CREATE TABLE bouquets(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL UNIQUE,
    price NUMERIC(2,2) NOT NULL 
    
);

CREATE TABLE flowers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    color VARCHAR(15),
    stem_length VARCHAR(10) NOT NULL,
    flower_type_id INTEGER,
    bouquet_id INTEGER,
    FOREIGN KEY (flower_type_id) REFERENCES flower_types (id),
    FOREIGN KEY (bouquet_id) REFERENCES bouquets (id)
);

CREATE TABLE flower_types (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    types VARCHAR(50) NOT NULL UNIQUE
);