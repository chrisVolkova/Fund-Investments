-- Отобразить имя, фамилию и название аккаунтов людей, у которых название аккаунтов в твиттере начинаются на "Silver" 
SELECT first_name,
       last_name,
       twitter_username
FROM people
WHERE twitter_username LIKE 'Silver%'
