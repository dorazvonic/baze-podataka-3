drop table if exists product_image;
create table product_image (
id int primary key auto_increment,
name varchar(400) not null unique,
product_id int,
is_cover boolean,
foreign key (product_id) references product(id) on delete cascade
);

-- seed product images from product id = 2
insert into product_image (name, product_id, is_cover)
values
	("image1.jpg", 2, true),
    ("image2.jpg", 2, false),
    ("image3.jpg", 2, false);

-- brise proizvod sa id = 2 i u isto vrijeme iz tablice product_image brise sve slike za taj proizvod ako ih ima
-- ako
delete from product
where id = 2;

-- rjesenje za brisanje proizvoda ako nema delete cascade na stranom ključu
-- pobrisati sve slike za taj proizvod pa nakoon toga pobrisati i proizvod
delete product_image
where product_id = 2;
delete from product
where id = 2;

-- prikazuje podatke iz obe tablice cak i da nema podataka(slika) u drugoj tablici
select p.name, p.price, pi.name
from product p 
left join product_image pi
on pi.product_id = p.id;

-- prikazuje samo one proizvode koji imaju sliku u p.image
select p.name, p.price, pi.name
from product p 
join product_image pi
on pi.product_id = p.id;