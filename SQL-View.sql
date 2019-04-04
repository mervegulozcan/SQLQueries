--create view VW_GetCustomersOrders(CustomerID,TotalOrder)
--as
--select c.CustomerID,count(o.OrderID)
--from Customers c
--inner join Orders o on o.CustomerID=c.CustomerID
--group by c.CustomerID

--select * from VW_GetCustomersOrders

--CREATE VIEW UrunKat
--WITH SCHEMABINDING,ENCRYPTION
--AS
--    SELECT p.ProductName,c.CategoryName 
--    FROM dbo.Products p
--    INNER JOIN dbo.Categories c
--    ON p.CategoryID = c.CategoryID
--    WHERE c.CategoryName>'C'

--	select * from UrunKat

--	CREATE VIEW UrunKat2
--WITH SCHEMABINDING
--AS
--    SELECT p.ProductName,c.CategoryName 
--    FROM dbo.Products p
--    INNER JOIN dbo.Categories c
--    ON p.CategoryID = c.CategoryID
--    WHERE c.CategoryName>'C'

--	CREATE VIEW UrunKat3
--WITH ENCRYPTION
--AS
--    SELECT p.ProductName,c.CategoryName 
--    FROM dbo.Products p
--    INNER JOIN dbo.Categories c
--    ON p.CategoryID = c.CategoryID
--    WHERE c.CategoryName>'C'
	
	--select * from UrunKat
	--select * from UrunKat2
	--select * from UrunKat3

--create view VW_GRCUSTOMERS
--as
--select CustomerID,CompanyName,[Address],City,Country from Customers
--where Country='Germany'

--insert into VW_GRCUSTOMERS values 
--('CNRMt','Bahçeþehir','Beþiktaþ','Ýzmir','Türkiye')

--select * from VW_GRCUSTOMERS


--create view VW_ShipperSpeedyExpress
--as
--select o.OrderID,o.OrderDate,o.CustomerID,e.FirstName
--from Employees e
--inner join Orders o on o.EmployeeID=e.EmployeeID
--inner join Shippers s on s.ShipperID=o.ShipVia
--where s.CompanyName='Speedy Express' and e.FirstName='Nancy'  and (o.CustomerID='DUMON' or o.CustomerID='ALFKI')

--select * from VW_ShipperSpeedyExpress

--create view VW_Ortalama
--as
--select o.Quantity*o.UnitPrice*(1-o.Discount) as Ortalama ,OrderID
--from [Order Details] o 
--where  o.Quantity*o.UnitPrice*(1-o.Discount) > (select AVG(o.Quantity*o.UnitPrice*(1-o.Discount))from [Order Details] o)

--select * from VW_Ortalama order by OrderID






--CREATE FUNCTION FN_Factorial(@Sayi INT)
--RETURNS INT
--BEGIN 
--	declare @Sonuc INT
--	set @Sonuc=1
--WHILE @Sayi > 0
--	begin
--		SET @Sonuc=@Sonuc*@Sayi
--		set @Sayi=@Sayi-1
--	end
--RETURN @Sonuc
--END

--select dbo.FN_Factorial(6)

--CREATE FUNCTION FN_GOSTER(@PROID INT)
--RETURNS NVARCHAR (100)
--BEGIN 
--return
--(
--select ProductName
--from Products 
--where ProductID=@PROID
--)
--END

--select dbo.FN_GOSTER(20)






