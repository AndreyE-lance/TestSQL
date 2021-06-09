/****** 1)	Список соглашений с указанием даты и номера соглашения, 
наименования клиента и имя сотрудника, подписавшего соглашение 
(вариант с подзапросом)  ******/

SELECT CONCAT(TRIM(Contracts.Name),' от ', Contracts.Date) AS 'Контракт', Employees.Name AS 'Менеджер', 
       CONCAT((SELECT Form.Form FROM Form WHERE Form.ID_Form=Clients.Form),Clients.Name) AS 'Клиент' 
FROM Contracts,Employees,Clients 
WHERE Contracts.Employe=Employees.ID_Emp AND Contracts.Client=Clients.ID_Clients