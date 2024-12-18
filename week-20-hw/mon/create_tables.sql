-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;

DROP TABLE IF EXISTS flowers;
DROP TABLE IF EXISTS bouquets;
DROP TABLE IF EXISTS flower_types;

CREATE TABLE flower_types (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE bouquets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(40),
    price NUMERIC(5, 2) NOT NULL
);

CREATE TABLE flowers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    color VARCHAR(20),
    stem_length VARCHAR(10),
    flower_type_id INTEGER NOT NULL,
    bouquet_id INTEGER NOT NULL,
    FOREIGN KEY (flower_type_id) REFERENCES flower_types(id) ON DELETE CASCADE,
    FOREIGN KEY (bouquet_id) REFERENCES bouquets(id) ON DELETE CASCADE
);
