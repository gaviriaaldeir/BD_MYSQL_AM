USE biblioteca_bd_ma;
SELECT b.title, u.name, l.loan_date, l.return_date
FROM loans l
JOIN books b ON l.book_id = b.book_id
JOIN users u ON l.user_id = u.user_id
WHERE l.return_date > CURDATE();