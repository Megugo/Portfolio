/*https://sql-ex.ru*/
/*1 Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd */
SELECT model,speed,hd
FROM PC
WHERE price < 500
/*2 Найдите производителей принтеров. Вывести: maker*/
SELECT DISTINCT maker
FROM Product
WHERE type = 'Printer'
/*3 Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.*/
SELECT model,ram,screen
FROM Laptop
WHERE price > 1000
/*4 Найдите все записи таблицы Printer для цветных принтеров.*/
SELECT *
FROM Printer
WHERE color = 'y'
/*5 Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.*/
SELECT model,speed,hd
FROM PC
WHERE (CD ='12x' or CD = '24x') and price < 600
/*6 Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт,
 найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.*/
SELECT DISTINCT Product.maker, Laptop.speed
FROM Product INNER JOIN
Laptop ON Product.model = Laptop.model
WHERE Laptop.hd >= 10 AND type = 'Laptop'
/*7 Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).*/
SELECT DISTINCT Product.model, price
FROM Product INNER JOIN
PC ON Product.model = PC.model
WHERE maker = 'B'
UNION
SELECT DISTINCT Product.model, price
FROM Product INNER JOIN
Laptop ON Product.model = Laptop.model
WHERE maker = 'B'
UNION
SELECT DISTINCT Product.model, price
FROM Product INNER JOIN
Printer ON Product.model = Printer.model
WHERE maker = 'B'
/*8 Найдите производителя, выпускающего ПК, но не ПК-блокноты.*/
SELECT DISTINCT Maker
FROM Product
WHERE type = 'PC'
EXCEPT
SELECT DISTINCT Maker
FROM Product
WHERE type = 'Laptop'
/*9 Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker*/
SELECT DISTINCT Maker
FROM PC INNER JOIN 
Product ON PC.model = Product.model
WHERE speed >= 450
/*10 Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price*/
SELECT model, MAX(price) as price
FROM Printer
WHERE price IN (SELECT MAX(price) as price FROM Printer)
GROUP BY model
/*11 Найдите среднюю скорость ПК.*/
SELECT AVG(speed) as Avg_speed
FROM PC
/*12 Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.*/
SELECT  AVG(speed) as Avg_speed
FROM Laptop
WHERE price > 1000
/*13 Найдите среднюю скорость ПК, выпущенных производителем A.*/
SELECT AVG(speed) as Avg_speed
FROM PC INNER JOIN
Product ON PC.model = Product.model
WHERE maker = 'A'
/*14 Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.*/
SELECT Ships.class,name,country
FROM Ships INNER JOIN
Classes ON Classes.class = Ships.class
WHERE numGuns >= 10
/*15 Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD*/
SELECT hd
FROM PC
GROUP BY hd HAVING COUNT(code) >=2
/*16 Найдите пары моделей PC, имеющих одинаковые скорость и RAM.
 В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i),
 Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.*/

/*17 Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
Вывести: type, model, speed*/
SELECT type, Product.model, Laptop.speed
FROM Product,PC,Laptop
WHERE Laptop.speed < ALL (SELECT speed FROM PC) and type = 'Laptop'
GROUP BY type,Product.model,Laptop.speed
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/
/**/