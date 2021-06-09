/****** 1)	Список соглашений с указанием даты и номера соглашения, 
наименования клиента и имя сотрудника, подписавшего соглашение 
(вариант с соединением таблиц)  ******/

SELECT CONCAT(TRIM(Contracts.Name),' от ', Contracts.Date) AS 'Контракт', Employees.Name AS 'Менеджер', CONCAT(Form.Form,Clients.Name) AS 'Клиент' 
FROM Contracts,Employees,Clients JOIN Form ON Clients.Form=Form.ID_Form 
WHERE Contracts.Employe=Employees.ID_Emp AND Contracts.Client=Clients.ID_Clients