-- categorija se nece pobrisati jer u tablci product postoje proizvodi koji pripadaju ovoj kategoriji
-- to je jedna od primjena stranog kljuća forgein key
delete from category
where id = 3;

-- uspjesno ce te izbrisat jer u tablcii product nemamo porizvoda s tom kategorjiom
insert into category(name)
values ("Tablets");

delete from category
where id = 4;

