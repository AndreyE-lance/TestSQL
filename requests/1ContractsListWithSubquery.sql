/****** 1)	������ ���������� � ��������� ���� � ������ ����������, 
������������ ������� � ��� ����������, ������������ ���������� 
(������� � �����������)  ******/

SELECT CONCAT(TRIM(Contracts.Name),' �� ', Contracts.Date) AS '��������', Employees.Name AS '��������', 
       CONCAT((SELECT Form.Form FROM Form WHERE Form.ID_Form=Clients.Form),Clients.Name) AS '������' 
FROM Contracts,Employees,Clients 
WHERE Contracts.Employe=Employees.ID_Emp AND Contracts.Client=Clients.ID_Clients