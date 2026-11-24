-- queries.sql
-- De fire spørringene oppgaven krever.

-- 1) Alle bøker + antall sitater per bok
SELECT Books.title, COUNT(Quotes.id) AS number_of_quotes
FROM Books
LEFT JOIN Quotes ON Quotes.book_id = Books.id
GROUP BY Books.id;

-- 2) Alle forfattere + antall sitater per forfatter
SELECT Authors.name, COUNT(Quotes.id) AS number_of_quotes
FROM Authors
LEFT JOIN Quotes ON Quotes.author_id = Authors.id
GROUP BY Authors.id;

-- 3) Alle sitater fra én bestemt bok, med forfatterens navn
SELECT Quotes.quote_text, Authors.name AS author
FROM Quotes
JOIN Books ON Books.id = Quotes.book_id
JOIN Authors ON Authors.id = Quotes.author_id
WHERE Books.title = '1984';

-- 4) Alle sitater fra én bestemt forfatter, med boktittel
SELECT Quotes.quote_text, Books.title AS book
FROM Quotes
JOIN Books ON Books.id = Quotes.book_id
JOIN Authors ON Authors.id = Quotes.author_id
WHERE Authors.name = 'George Orwell';