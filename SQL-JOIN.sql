--select c.CompanyName, p.ProductName ,
--count(o.OrderID) AS [Sipari� Miktar�],
--sum(od.Quantity) as [Toplam Sipari�],
--min (od.Quantity) as[Min Sipari�],
--max (od.Quantity) as[Max Sipari�],
--avg(od.Quantity) as [Ortalama]
--from Customers c
--inner join Orders o on c.CustomerID=o.CustomerID
--inner join [Order Details] od on o.OrderID=od.OrderID
--inner join Products p on od.ProductID=p.ProductID
--group by c.CompanyName,p.ProductName
--order by c.CompanyName


--select c.CompanyName, p.ProductName ,count(od.Quantity) AS [Sipari� Miktar�],sum(od.Quantity) as [Toplam Sipari�]
--from Customers c
--inner join Orders o on c.CustomerID=o.CustomerID
--inner join [Order Details] od on o.OrderID=od.OrderID
--inner join Products p on od.ProductID=p.ProductID




