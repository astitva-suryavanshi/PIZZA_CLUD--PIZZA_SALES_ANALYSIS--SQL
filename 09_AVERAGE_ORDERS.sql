-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT AVG (quantity) FROM
(SELECT orders.order_date,SUM(orders_details.quantity) as quantity
FROM orders JOIN orders_details
ON orders.order_id = orders_details.order_id
GROUP BY orders.order_date) as order_quantity;