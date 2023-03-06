/* Для каждой из категорий, назначенных в предыдущем запросе (№8), посчитать среднее количество инвестиционных раундов, 
округленное до ближайшего целого числа, в которых фонд принимал участие. Итоговую таблицу сортирует по возрастанию среднего */

SELECT CASE
           WHEN invested_companies>=100 THEN 'high_activity'
           WHEN invested_companies>=20 THEN 'middle_activity'
           ELSE 'low_activity'
       END AS activity,
       ROUND(AVG(investment_rounds)) AS avg_round
FROM fund
GROUP BY activity
ORDER BY avg_round
