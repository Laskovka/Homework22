SELECT OrderID, COUNT(Quantity)
FROM OrderDetails
GROUP BY OrderID
HAVING COUNT(Quantity) > 100;