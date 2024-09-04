USE biblioteca_bd_ma;
SELECT a.name, COUNT(b.book_id) AS total_books
FROM authors a
JOIN books b ON a.author_id = b.author_id
GROUP BY a.name
HAVING COUNT(b.book_id) > 1;

