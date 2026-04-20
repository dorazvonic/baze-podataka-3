-- povezuje tablice product i product_image  npr ako 
-- proizvod s id=3 nema sliku u tablici product_image 
-- prikazat ce ostale informacije iz product bez greške
select *
from product
left join product_image
on product_image.product_id = product.id
where product.id = 3;

-- prikazuje proizvod sa id = 3 i njegove slike samo ako 
-- proizvod ima popunjena polja koja se traze ako nema rez7ultat ce bit prazan
select *
from product
inner join product_image
on product_image.product_id = product.id
where product.id = 3;