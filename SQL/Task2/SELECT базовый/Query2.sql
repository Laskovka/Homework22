SELECT LastName
FROM Employees
INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Orders.EmployeeID
HAVING COUNT(Orders.OrderID) > 10;