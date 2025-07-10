-- inner join
SELECT e.*, m.day from employees e
INNER JOIN mishmeret m ON e.mishmeret_id = m.id;

-- left join (=left outer join, in sqlite)
SELECT e.*, m.day from employees e
LEFT JOIN mishmeret m ON e.mishmeret_id = m.id;

-- left outer join real (we write it ourselves since not exist in sqlite)
SELECT e.*, m.day from employees e
LEFT JOIN mishmeret m ON e.mishmeret_id = m.id
WHERE e.mishmeret_id IS NULL;

-- full join
SELECT e.*, m.* from employees e
FULL JOIN mishmeret m ON e.mishmeret_id = m.id;

-- cross join (all combinations)
SELECT e.id, e.name, m.id as mishmeret_id, m.day as mishmeret_day from employees e
CROSS JOIN mishmeret m;

-- bonus --> create dice table and show all possibilities for 2 dice
CREATE TABLE dice (value INTEGER);
INSERT INTO dice (value) VALUES (1), (2), (3), (4), (5), (6);
SELECT d1.value AS die1, d2.value AS die2
FROM dice d1
CROSS JOIN dice d2;
