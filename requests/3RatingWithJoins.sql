/****** 3)	Рейтинг сотрудников по количеству подписанных соглашений (вариант с внешним соединением) ******/
SELECT Employees.Name AS 'Имя', COUNT(Contracts.Employe) AS 'Количество соглашений' 
FROM Employees LEFT JOIN Contracts ON Employees.ID_Emp=Contracts.Employe 
GROUP BY Employees.Name 
ORDER BY COUNT(Contracts.Employe) DESC