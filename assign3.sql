-- Question 1: INNER JOIN
-- Retrieve orders along with the customer names who placed them
SELECT orders.order_id, customers.customer_name, orders.order_date
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;

-- Question 2: LEFT JOIN
-- Retrieve all customers and any orders they may have placed
SELECT customers.customer_id, customers.customer_name, orders.order_id
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

-- Question 3: RIGHT JOIN
-- Retrieve all orders and the customer details if available
SELECT orders.order_id, orders.order_date, customers.customer_name
FROM orders
RIGHT JOIN customers
ON orders.customer_id = customers.customer_id;

-- Question 4: Demonstrating relationships between employees and departments
-- Retrieve all employees with their department names
SELECT employees.employee_id, employees.employee_name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;
