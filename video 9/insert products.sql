-- ne zaboravi dodavat zarez nakon zagrada
insert into products
values (1, "Dora" , 12.5), 
       (2, "Mario", 15.5), 
	   (3, "Marijana", 15.0),
       (4, "Ivan", 20.5);


insert into products
values (5, "Lana", null); 

-- ako se ne stavlja vrijednost u sva polja u zagradi se naglasi za koja vrijedi 
insert into products(product_id, product_name)
values (5, "Lana1"); 