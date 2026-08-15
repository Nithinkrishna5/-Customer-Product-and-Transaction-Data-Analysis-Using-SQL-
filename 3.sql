use n;
SELECT * FROM n.employees;
select eomplyees.employee_name as Employee, eemployees.employee_name as Manager from employees left join employees on employees.manager_id=eemployees.employee_id;
SELECT e1.employee_name as Employee , e2.employee_name as Manager 
FROM employees e1
left JOIN employees e2
ON e1.manager_id = e2.employee_id;
select customers.customer_name , orders.* from customers right join orders  on customers.customer_id=orders.customer_id;
select c.customer_name , o.* from customers c left join orders o on c.customer_id=o.customer_id;
select customers.customer_name , orders.* from customers inner join orders  on customers.customer_id=orders.customer_id;
select customers.customer_name , orders.* from customers join orders  on customers.customer_id=orders.customer_id;
select p.product_name,c.category_name from products p right join categories c on p.category_id=c.category_id;
select category_name,product_name,price from products  cross join  categories on products.category_id=categories.category_id;
select category_name,product_name,price from products  right join  categories on products.category_id=categories.category_id;
select c.customer_name,o.product_name from customers c left join orders o on c.customer_id=o.order_id;
select c.customer_name,o.order_date from customers c left join orders o on c.customer_id=o.customer_id;
select p.product_name,o.order_date from products p inner join orders o on p.product_name=o.product_name;
select p.product_name,c.category_name,cc.customer_name,o.order_date from products p join categories c on p.category_id=c.category_id join orders o on p.product_name=o.product_name join customers cc on cc.customer_id=o.customer_id;
select c.customer_name, sum(p.price * o.quantity) as total_spent from customers c 
join orders o on c.customer_id=o.customer_id 
join products p on o.product_name=p.product_name
group by c.customer_name order by total_spent asc;

SELECT * FROM customers c LEFT JOIN orders o on c.customer_id = o.customer_id;
select * from customers c right join orders o on c.customer_id=o.customer_id union  select * from customers c left join orders o on c.customer_id=o.customer_id;
select c.customer_name,o.product_name,o.order_id,o.quantity from customers c join orders o on c.customer_id=o.customer_id where c.customer_name='Alice Smith';
