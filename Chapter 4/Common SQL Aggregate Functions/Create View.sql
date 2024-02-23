ALTER VIEW V_CustomerOrderSummary as
SELECT State,
  ROUND(AVG(TotalDue), 2) as Avg_Due,
  ROUND(MIN(TotalDue), 2) as Min_Due,
  ROUND(MAX(TotalDue), 2) as Max_Due,
  ROUND(SUM(TotalDue), 2) as Total_Sales
FROM Customer C
  JOIN Orders O ON O.CustomerID = C.CustomerID
GROUP BY State
ORDER BY Total_Sales DESC