/****** 3)	������� ����������� �� ���������� ����������� ���������� (������� � ������� �����������) ******/
SELECT Employees.Name AS '���', COUNT(Contracts.Employe) AS '���������� ����������' 
FROM Employees LEFT JOIN Contracts ON Employees.ID_Emp=Contracts.Employe 
GROUP BY Employees.Name 
ORDER BY COUNT(Contracts.Employe) DESC