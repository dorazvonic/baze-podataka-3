-- prikazuje sve kategorije iz tablice category
select *
from category;

-- prikazuje sve proizvode iz tablice product
select *
from product;

-- samo nazivi u tablici
select name
from category;

-- samo određeni stupci
select id, name, stock, price
from product;

-- Filtriranje podatka
-- prikazuje proizvode koji na zalihi ima vise od 5
select id, name, stock, price
from product
where stock > 5;

-- proizvodi koji su jeftiniji od 400$
select id, name, stock, price
from product
where price < 400;

-- dodavanje filtera (and)
select id, name, stock, price
from product
where price < 400
and stock < 5;
