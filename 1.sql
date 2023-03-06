-- Вывести количество компаний, которые закрылись
SELECT COUNT(status)
FROM company
WHERE status = 'closed'
