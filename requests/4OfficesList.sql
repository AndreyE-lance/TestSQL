/****** 4)	������ ������ � ��������� ����� ����������, ����������� � ���� ������  ******/
SELECT Offices.Name AS '����', COUNT(Offices.Name) AS '���������� ������' 
FROM Contracts, EmpMoving JOIN Offices ON EmpMoving.Office = Offices.ID_Office
WHERE Contracts.Employe=EmpMoving.Employe AND Contracts.Date BETWEEN EmpMoving.b_date AND EmpMoving.e_date 
GROUP BY Offices.Name
ORDER BY '���������� ������'  DESC