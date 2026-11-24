-- schema.sql
-- Her oppretter vi de tre tabellene. Kjøres én gang for å bygge databasen.

-- FORFATTERE (forelder-tabell)
CREATE TABLE Authors (
    id INTEGER PRIMARY KEY,     -- unik id som teller seg selv oppover (1, 2, 3...)
    name TEXT NOT NULL,         -- påkrevd: en forfatter MÅ ha navn
    birth_year INTEGER,         -- egen kolonne 1 (fødselsår)
    country TEXT                -- egen kolonne 2 (land)
);

-- BØKER (forelder-tabell)
CREATE TABLE Books (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,        -- påkrevd: en bok MÅ ha tittel
    published_year INTEGER,     -- egen kolonne 1 (utgivelsesår)
    genre TEXT                  -- egen kolonne 2 (sjanger)
);

-- SITATER (barn-tabell — peker på en bok OG en forfatter)
CREATE TABLE Quotes (
    id INTEGER PRIMARY KEY,
    quote_text TEXT NOT NULL,   -- påkrevd: selve sitatet
    book_id INTEGER,            -- hvilken bok sitatet er fra
    author_id INTEGER,          -- hvem som skrev det
    FOREIGN KEY (book_id) REFERENCES Books(id),
    FOREIGN KEY (author_id) REFERENCES Authors(id)
);