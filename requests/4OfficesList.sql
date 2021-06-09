/****** 4)	Список офисов с указанием числа соглашений, подписанных в этих офисах  ******/
SELECT Offices.Name AS 'Офис', COUNT(Offices.Name) AS 'Количество сделок' 
FROM Contracts, EmpMoving JOIN Offices ON EmpMoving.Office = Offices.ID_Office
WHERE Contracts.Employe=EmpMoving.Employe AND Contracts.Date BETWEEN EmpMoving.b_date AND EmpMoving.e_date 
GROUP BY Offices.Name
ORDER BY 'Количество сделок'  DESC