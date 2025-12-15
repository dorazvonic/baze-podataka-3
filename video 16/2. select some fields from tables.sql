select transactions.id, 
transactions.amount,
transactions.date, 
custumers.first_name, 
customer.last_name, 
transactions.customer_id
from transactions inner join customers
on transactions.customer_id = customer_id;