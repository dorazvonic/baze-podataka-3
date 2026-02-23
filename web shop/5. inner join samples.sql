-- prikazuje podatke iz obe tablice u kojima su redci povezani preko stranog ključa category_id
select*
from product
inner join category 
on product.category_id = category.id;

-- prikazuje samo odreena polja iz obe tablice
select product.name, 
product.price, 
product.stock,
category.name
from product
inner join category 
on product.category_id = category.id;

-- koristimo name alisas kako bi smanjili tipkanje
select p.name, 
p.price, 
p.stock,
c.name
from product as p
inner join category as c
on p.category_id = c.id;