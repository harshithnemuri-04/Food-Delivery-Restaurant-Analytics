create database food_delivery;
use food_delivery;

select * from food_orders;
SELECT COUNT(*) AS Total_Orders
FROM food_orders;
SELECT SUM(Order_Value) AS Total_Sales
FROM food_orders;

SELECT ROUND(AVG(Order_Value), 2) AS Average_Order_Value
FROM food_orders;

SELECT MAX(Order_Value) AS Highest_Order
FROM food_orders;

SELECT MIN(Order_Value) AS Lowest_Order
FROM food_orders;

SELECT City, COUNT(*) AS Total_Orders
FROM food_orders
GROUP BY City
ORDER BY Total_Orders DESC;

SELECT City, SUM(Order_Value) AS Total_Sales
FROM food_orders
GROUP BY City
ORDER BY Total_Sales DESC;

SELECT Restaurant_Type, COUNT('order_id') AS Total_Orders
FROM food_orders
GROUP BY Restaurant_Type
ORDER BY Total_Orders DESC;

SELECT Restaurant_Type,AVG(Customer_Rating) AS Average_Rating
FROM food_orders
GROUP BY Restaurant_Type
ORDER BY Average_Rating DESC;

SELECT Payment_Method, COUNT(*) AS Total_Orders
FROM food_orders
GROUP BY Payment_Method
ORDER BY Total_Orders DESC;
