


select c.CustomerID,sum(od.UnitPrice*Quantity)  as m from Customers c
inner join Orders o
on c.CustomerID=o.CustomerID
inner join [Order Details] od
on
o.OrderId=od.OrderID
group by c.CustomerID
having sum(od.UnitPrice*Quantity) <1500




