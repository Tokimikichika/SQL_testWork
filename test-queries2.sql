SELECT c1.name AS category_name, COUNT(c2.id) AS child_count
FROM Categories c1
LEFT JOIN Categories c2 ON c2.parent_id = c1.id
WHERE c1.parent_id IS NULL
GROUP BY c1.name;