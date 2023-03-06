-- Для каждой страны отобразить общую сумму привлечённых инвестиций, которые получили компании, зарегистрированные в этой стране.
SELECT SUM(funding_total),
       country_code
FROM company
GROUP BY country_code
ORDER BY SUM(funding_total) DESC
