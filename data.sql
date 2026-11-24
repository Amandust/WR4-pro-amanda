-- data.sql
-- Fyller tabellene med testdata. Kjøres ÉN gang, etter schema.sql.

-- FORFATTERE (5 stk)
INSERT INTO Authors (id, name, birth_year, country) VALUES
(1, 'Jane Austen', 1775, 'England'),
(2, 'George Orwell', 1903, 'England'),
(3, 'Toni Morrison', 1931, 'USA'),
(4, 'Haruki Murakami', 1949, 'Japan'),
(5, 'Chinua Achebe', 1930, 'Nigeria');

-- BØKER (10 stk)
INSERT INTO Books (id, title, published_year, genre) VALUES
(1, 'Pride and Prejudice', 1813, 'Romance'),
(2, 'Emma', 1815, 'Romance'),
(3, '1984', 1949, 'Dystopia'),
(4, 'Animal Farm', 1945, 'Satire'),
(5, 'Beloved', 1987, 'Historical'),
(6, 'Song of Solomon', 1977, 'Fiction'),
(7, 'Norwegian Wood', 1987, 'Fiction'),
(8, 'Kafka on the Shore', 2002, 'Magical realism'),
(9, 'Things Fall Apart', 1958, 'Historical'),
(10, 'No Longer at Ease', 1960, 'Fiction');

-- SITATER (20 stk) — hvert sitat peker på en bok (book_id) OG en forfatter (author_id)
INSERT INTO Quotes (quote_text, book_id, author_id) VALUES
('A quiet morning can change everything.', 1, 1),
('Pride blinds us to what we already have.', 1, 1),
('She spoke her mind, and the room went still.', 1, 1),
('Matchmaking is a dangerous little hobby.', 2, 1),
('War is just peace that forgot its name.', 3, 2),
('The clock struck thirteen and no one blinked.', 3, 2),
('Freedom begins with a single honest sentence.', 3, 2),
('They watched the screens, and the screens watched back.', 3, 2),
('All animals are tired by the end of the day.', 4, 2),
('The windmill fell, but the speeches did not.', 4, 2),
('Memory is a house you keep rebuilding.', 5, 3),
('Some names are too heavy to say out loud.', 5, 3),
('He flew because staying still would kill him.', 6, 3),
('Rain in Tokyo sounds like someone thinking.', 7, 4),
('She left, and the silence had her shape.', 7, 4),
('Cats know more than they let on.', 8, 4),
('Two moons is one too many to explain.', 8, 4),
('A man is nothing without his village.', 9, 5),
('The old ways cracked, but did not vanish.', 9, 5),
('The city promised everything and kept the receipts.', 10, 5);