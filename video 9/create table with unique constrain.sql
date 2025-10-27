create table products(
product_id int,
product_name varchar(25) unique,
price decimal(5,2)
);


alter table products
add constraint unique(product_name);	