-- greska ne moze biti null
insert into transactions
values (null, 3.4)

-- greska id ne moze bit isti
insert into transactions
values (1, 3.4),
	   (1, 4.5);


-- uspjesno se izvrsiti obe naredbe
insert into transactions
values (1,5.3);

insert into transactions
values (2,5.3),
       (3,5.3);

