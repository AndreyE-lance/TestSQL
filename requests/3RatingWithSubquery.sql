/****** 3)	Рейтинг сотрудников по количеству подписанных соглашений (вариант с подзапросом) ******/
SELECT Employees.Name AS 'Имя', Temp.Amount AS 'Количество соглашений' 
FROM Employees,  (SELECT Employees.ID_Emp, COUNT(Contracts.Employe) AS Amount FROM Contracts RIGHT JOIN Employees ON Contracts.Employe=Employees.ID_Emp GROUP BY Employees.ID_Emp) AS Temp
WHERE Employees.ID_Emp=Temp.ID_Emp
GROUP BY  Employees.Name, Temp.Amount
ORDER BY Temp.Amount DESC