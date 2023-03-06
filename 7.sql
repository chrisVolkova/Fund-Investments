/* Данные сортирует по убыванию суммы. Выводит таблицу, в которую входит дата проведения инвестиционного раунда, а также минимальное и 
максимальное значения суммы инвестиций, привлечённых в эту дату. В итоговую таблицу входят только те записи, в которых минимальное 
значение суммы инвестиций не равно нулю и не равно максимальному значению */

WITH
f AS (SELECT CAST(funded_at AS date) AS date,
      raised_amount
FROM funding_round
ORDER BY CAST(funded_at AS date))

SELECT f.date,
       MAX(f.raised_amount),
       MIN(f.raised_amount)
FROM f
GROUP BY f.date
HAVING MAX(f.raised_amount) <> MIN(f.raised_amount) AND MIN(f.raised_amount) <> 0
