
-- inner join
SELECT e.*, m.day from employees e
INNER JOIN mishmeret m ON e.mishmeret_id = m.id;