/****** 2)	������ ���, � ������� ���� ��������� ����� ������ ����������  ******/
SELECT Contracts.Date AS '����', COUNT(Contracts.Date) AS '���������� ������' 
FROM Contracts 
GROUP BY Contracts.Date 
HAVING COUNT(Contracts.Date)>1