--drop table booksales

--CREATE TABLE booksales(
--country varchar(35),
--genre varchar(15) not null check (genre in ('fiction','non-fiction')),
--year int,
--sales int);

--insert into booksales values 
--('Senegal','fiction',2014,12234),
--('Senegal','fiction',2015,15647),
--('Senegal','non-fiction',2014,64980),
--('Senegal','non-fiction',2015,78901),
--('Paraguay','fiction',2014,87970),
--('Paraguay','fiction',2015,76940),
--('Paraguay','non-fiction',2014,8760),
--('Paraguay','non-fiction',2015,9030)

--select year,SUM(sales) as [Satýþ toplamý]
--from booksales
--group by year;

--select year,SUM(sales) as [Satýþ toplamý]
--from booksales
--group by year with rollup;

--select country, year,genre,SUM(sales) as [Satýþ toplamý]
--from booksales
--group by country,year,genre;

--select country, year,genre,SUM(sales) as [Satýþ toplamý]
--from booksales
--group by country,year,genre with rollup;

--select country, year,genre,SUM(sales) as [Satýþ toplamý]
--from booksales
--group by country,year,genre with rollup

--select country, year,genre,SUM(sales) as [Satýþ toplamý]
--from booksales
--group by country,year,genre with rollup
--order by year desc



--CREATE TABLE employee
--  (
--      id INT PRIMARY KEY,
--      name VARCHAR(50) NOT NULL,
--      gender VARCHAR(50) NOT NULL,
--      salary INT NOT NULL,
--      department VARCHAR(50) NOT NULL
--   )

--INSERT INTO employee
--  VALUES
--  (1, 'David', 'Male', 5000, 'Sales'),
--  (2, 'Jim', 'Female', 6000, 'HR'),
--  (3, 'Kate', 'Female', 7500, 'IT'),
--  (4, 'Will', 'Male', 6500, 'Marketing'),
--  (5, 'Shane', 'Female', 5500, 'Finance'),
--  (6, 'Shed', 'Male', 8000, 'Sales'),
--  (7, 'Vik', 'Male', 7200, 'HR'),
--  (8, 'Vince', 'Female', 6600, 'IT'),
--  (9, 'Jane', 'Female', 5400, 'Marketing'),
--  (10, 'Laura', 'Female', 6300, 'Finance'),
--  (11, 'Mac', 'Male', 5700, 'Sales'),
--  (12, 'Pat', 'Male', 7000, 'HR'),
--  (13, 'Julie', 'Female', 7100, 'IT'),
--  (14, 'Elice', 'Female', 6800,'Marketing'),
--  (15, 'Wayne', 'Male', 5000, 'Finance')

--SELECT department, sum(salary) as Salary_Sum
--  FROM employee
--  GROUP BY department

--SELECT coalesce (department, 'All Departments') AS Department,
--  sum(salary) as Salary_Sum
--  FROM employee
--  GROUP BY ROLLUP (department)

--SELECT
--  coalesce (department, 'All Departments') AS Department,
--  coalesce (gender,'All Genders') AS Gender,
--  sum(salary) as Salary_Sum
--  FROM employee
--  GROUP BY ROLLUP (department, gender)

 --SELECT
 -- coalesce (department, 'All Departments') AS Department,
 -- coalesce (gender,'All Genders') AS Gender,
 -- sum(salary) as Salary_Sum
 -- FROM employee
 -- GROUP BY CUBE  (department, gender);


--Þirket adlarýný ve yapmýþ olduklarý toplam sipariþ tutarýný listele,toplam sip göre desc sýrala

--select  c.CompanyName,SUM(od.Quantity*od.UnitPrice) AS 'ToplamSiparisTutar'
--from Customers c 
--inner join Orders o on c.CustomerID=o.CustomerID
--inner join [Order Details] od on od.OrderID=o.OrderID
--group by c.CompanyName
--order by SUM(od.Quantity) desc









--Þirket adlarýný ve yapmýþ olduklarý toplam sipariþ tutarýný listele,toplam sip göre desc sýrala

--select  c.CompanyName,SUM(od.Quantity*od.UnitPrice) AS 'ToplamSiparisTutar'
--from Customers c 
--inner join Orders o on c.CustomerID=o.CustomerID
--inner join [Order Details] od on od.OrderID=o.OrderID
--group by c.CompanyName
--order by SUM(od.Quantity*od.UnitPrice) desc

--Hangi þirket hangi ürünü ne kadar aldý?

--select distinct c.CompanyName,p.ProductName,sum (od.Quantity)
--from Customers c 
--inner join Orders o on o.CustomerID=c.CustomerID
--inner join [Order Details] od on od.OrderID=o.OrderID
--inner join Products p on p.ProductID=od.ProductID
--group by c.CompanyName,p.ProductName,od.Quantity






