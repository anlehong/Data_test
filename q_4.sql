
-- Câu a: Số lượng đơn order duy nhất và số lượng đơn order theo tháng
SELECT 
    DATE_FORMAT(Date_Order, '%Y-%m') AS Order_Month, 
    COUNT(DISTINCT Client_ID) AS Unique_Client_Orders, 
    COUNT(Order_ID) AS Total_Orders
FROM 
    ORDERS
GROUP BY 
    Order_Month
ORDER BY 
    Order_Month;

-- Câu b: List khách hàng có hơn 10 order trong năm nay
SELECT 
    Client_ID, 
    COUNT(Order_ID) AS Total_Orders
FROM 
    ORDERS
WHERE 
    YEAR(Date_Order) = YEAR(CURDATE())  
GROUP BY 
    Client_ID
HAVING 
    Total_Orders > 10;

-- Câu c
-- Câu d: Số lượng hàng hóa và số đơn hàng đã được giao vào tháng 9 năm 2019
SELECT 
    SUM(o.Good_Amount) AS Total_Good_Amount,
    COUNT(od.Order_ID) AS Total_Orders_Delivered
FROM 
    ORDERS o
JOIN 
    ORDER_DELIVERY od ON o.Order_ID = od.Order_ID
WHERE 
    MONTH(od.Date_Delivery) = 9 AND YEAR(od.Date_Delivery) = 2019;

-- Câu e

