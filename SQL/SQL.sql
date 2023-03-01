Задания на написание запросов к БД  Решение              
Отобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречается буква а  "SELECT * FROM users
WHERE level_id=1 AND skill>799000 AND user_name LIKE '%a%'"              
Удалить всех пользователей, у которых skill меньше 100000  "DELETE FROM users
WHERE skill<100000"              
Вывести все данные из таблицы user в порядке убывания по полю skill   "SELECT * FROM users
ORDER BY skill DESC"              
 Добавить в таблицу user нового пользователя по имени Oleg, с уровнем 4 и skill =10  INSERT INTO users VALUES (default, 'Oleg', 4, 10)              
Обновить данные в таблице user -  для пользователей с level_id меньше 2 проставить skill 2000000  "UPDATE users SET skill=2000000
WHERE level_id<2"              
Выбрать user_name всех пользователей уровня admin используя подзапрос  "SELECT user_name FROM users
WHERE level_id IN (SELECT id FROM levels WHERE level_name='admin')"              
Выбрать user_name всех пользователей уровня admin используя join  "SELECT user_name FROM users JOIN levels ON users.level_id=levels.id
WHERE levels.level_name='admin'"