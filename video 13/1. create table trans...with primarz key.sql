drop table if exists transaction;

-- primarni ključ (primary key) postavlja dva pravila za polje id:
-- -polje treba biti jedinstveno
-- -ne moze biti prazno, tj. null

create table transactions(
id int primary key,
amount decimal (5,2)
);