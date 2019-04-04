--CREATE FUNCTION CARPIM(@SAYI1 INT,@SAYI2 INT)
--RETURNS INT
--AS	
--BEGIN 
--RETURN @SAYI1*@SAYI2
--END

--SELECT DBO.CARPIM(5,4)

--CREATE FUNCTION FN_ADD_UNITPRICE(@UNITPRÝCE INT)
--RETURNS INT 
--BEGIN
--DECLARE @Deger INT
--SET @DEGER=@UNITPRÝCE+5
--RETURN @DEGER
--END

--SELECT DBO.FN_ADD_UNITPRICE(UnitPrice)  FROM [Order Details]
--SELECT (UnitPrice)  FROM [Order Details]


--CREATE FUNCTION YAZDIR(@SAYI INT)
--RETURNS VARCHAR(20)
--BEGIN 
--DECLARE @SONUC VARCHAR(20)
--SELECT  @SONUC= CASE
--    WHEN @SAYI=1 THEN  'OCAK'
--    WHEN @SAYI=2 THEN 'ÞUBAT'
--	WHEN @SAYI=3 THEN 'MART'
--    WHEN @SAYI=4 THEN  'NÝSAN'
--	WHEN @SAYI=5 THEN 'MAYIS' 
--    WHEN @SAYI=6 THEN  'HAZÝRAN'
--	WHEN @SAYI=7 THEN 'TEMMUZ'
--    WHEN @SAYI=8 THEN  'AÐUSTOS'
--	WHEN @SAYI=9 THEN 'EYLÜL'
--    WHEN @SAYI=10 THEN  'EKÝM'
--	WHEN @SAYI=11 THEN 'KASIM'
--    WHEN @SAYI=12 THEN  'ARALIK'
--	ELSE 'HATALI DEÐER GÝRÝLDÝ'
--	END
--RETURN @SONUC
--END

--SELECT DBO.YAZDIR(12)


--CREATE FUNCTION HESAPLA(@UnitPrice FLOAT,@KDV FLOAT)
--RETURNS FLOAT
--BEGIN
--DECLARE @FIYAT  FLOAT
--SET @FIYAT=@UnitPrice+(@UnitPrice*(@KDV/100))
--RETURN @FIYAT
--END

--SELECT P.ProductName,P.UnitPrice,DBO.HESAPLA(UnitPrice,18) AS [KDV'LÝ FÝYAT]
--FROM Products P 

--CREATE FUNCTION CALISAN(@EMPLOYEEID INT ,@YIL INT )
--RETURNS INT  
--BEGIN 
--RETURN
--(
--SELECT COUNT(ORDERID) FROM Orders
--WHERE EmployeeID=@EMPLOYEEID AND YEAR(OrderDate)=@YIL
--)
--END

--SELECT DBO.CALISAN(2,1996) AS TOPLAM

--CREATE FUNCTION Musteri(@customer nvarchar(10))
--RETURNS TABLE 
--AS
--RETURN 
--(
--SELECT p.ProductName,p.UnitPrice,p.UnitsInStock
--FROM Customers C 
--inner join Orders o on c.CustomerID=o.CustomerID
--inner join [Order Details] od on od.OrderID=o.OrderID
--inner join Products p on p.ProductID=od.ProductID
--where c.CustomerID=@customer
--)
--SELECT * FROM DBO.Musteri('ANTON')


--create function liste(@employe int , @date int)
--returns table
--as
--return
--(
--select e.FirstName+' '+e.LastName as Name ,p.ProductName,od.UnitPrice,p.UnitsInStock
--from Employees e 
--inner join Orders o on o.EmployeeID=e.EmployeeID
--inner join [Order Details] od on od.OrderID=o.OrderID
--inner join Products p on p.ProductID=od.ProductID
--where e.EmployeeID=@employe and YEAR(OrderDate)=@date
--)

--select * from dbo.liste(3,1996)


--create function Listele(@ID INT )
--returns @YeniTablo TABLE(ID int,ProductName nvarchar(50),UnitPrice money)
--as
--begin
--	if @ID < 0
--		insert into @YeniTablo select ProductID,ProductName,UnitPrice from Products
--	else if @ID > 0
--		insert into @YeniTablo select ProductID,ProductName,UnitPrice  from Products
--		where ProductID=@ID
--	else
--		insert into @YeniTablo values (0,'Test Ürünü',10)
--return 
--end

--select * from dbo.Listele(0)





