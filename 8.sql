/* Вывести все поля таблицы fund с созданными категориями: 
Для фондов, которые инвестируют в 100 и более компаний, категория high_activity. 
Для фондов, которые инвестируют в 20 и более компаний до 100, категория middle_activity. 
Если количество инвестируемых компаний фонда не достигает 20, категория low_activity */

SELECT *,
       CASE
           WHEN invested_companies >= 100 THEN 'high_activity'
           WHEN 100 > invested_companies AND invested_companies >= 20 THEN 'middle_activity'
           WHEN invested_companies < 20 THEN 'low_activity'
       END
FROM fund f
