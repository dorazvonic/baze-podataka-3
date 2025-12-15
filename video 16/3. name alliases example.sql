select t.id, t.amount, t.date, c.first_name, c.last_name, t.customer_id
from transactions as t inner join customers c
on t.customer_id = c.id;

select c.first_name, c.last_name
from customers c;