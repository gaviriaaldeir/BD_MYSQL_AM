use biblioteca_bd_ma;
SELECT u.name, COUNT(l.loan_id) AS total_loans
FROM users u
LEFT JOIN loans l ON u.user_id = l.user_id
GROUP BY u.name;
