-- SQL JOIN Questions With Solutions --

-- Write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.--
select s.name as Salesman, c.cust_name, c.city
from salesman s, customer c
where s.city=c.city

-- Write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city 
select o.ord_no, o.purch_amt, c.cust_name, c.city
from orders o 
inner join customer c 
on c.customer_id=o.customer_id
where o.purch_amt between 500 and 2000

-- Write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.
select c.cust_name, c.city, s.name as Salesman, s.commission
from customer c
inner join salesman s
on s.salesman_id=c.salesman_id

-- Write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.
select c.cust_name, c.city, s.name as Salesman, s.commission
from customer c
right join salesman s
on s.salesman_id=c.salesman_id
where s.commission>.12

-- Write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received a 
-- commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission.
select c.cust_name, c.city, s.name as Salesman, s.city, s.commission
from customer c
inner join salesman s
on s.salesman_id=c.salesman_id
where c.city<>s.city and s.commission>.12