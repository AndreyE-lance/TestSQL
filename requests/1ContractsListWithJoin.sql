/****** 1)	������ ���������� � ��������� ���� � ������ ����������, 
������������ ������� � ��� ����������, ������������ ���������� 
(������� � ����������� ������)  ******/

SELECT CONCAT(TRIM(Contracts.Name),' �� ', Contracts.Date) AS '��������', Employees.Name AS '��������', CONCAT(Form.Form,Clients.Name) AS '������' 
FROM Contracts,Employees,Clients JOIN Form ON Clients.Form=Form.ID_Form 
WHERE Contracts.Employe=Employees.ID_Emp AND Contracts.Client=Clients.ID_Clients