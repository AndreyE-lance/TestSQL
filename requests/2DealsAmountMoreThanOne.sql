/****** 2)	Список дат, в которые было подписано более одного соглашения  ******/
SELECT Contracts.Date AS 'Дата', COUNT(Contracts.Date) AS 'Количество сделок' 
FROM Contracts 
GROUP BY Contracts.Date 
HAVING COUNT(Contracts.Date)>1