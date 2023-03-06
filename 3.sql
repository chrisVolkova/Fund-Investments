/* Найти в долларах общую сумму сделок по покупке одних компаний другими. 
Входят только те сделки, которые осуществлялись исключительно за наличные с 2011 по 2013 год включительно */
SELECT SUM(price_amount)
FROM acquisition
WHERE term_code = 'cash'
      AND EXTRACT(YEAR FROM CAST(acquired_at AS date)) BETWEEN 2011 AND 2013
