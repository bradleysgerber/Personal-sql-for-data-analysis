SELECT OrderID,
  CreationDate
FROM Orders
WHERE Month(CreationDate) = 5
  OR Year(CreationDate) = '2015'