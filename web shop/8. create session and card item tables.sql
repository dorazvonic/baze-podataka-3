drop table if exists session;
create table session (
uuid varchar(36) primary key
);

drop table if exists card_item;
create table card_item (
    id int primary key auto_increment,
    quantity decimal(10,2),
    product_id int,
    session_uuid varchar(36),
    foreign key (session_uuid)references session(uuid),
    foreign key (product_id) references product(id)
);

insert into session(uuid)
values ('1906cfd0-2662-438e-8803-e089b7c37951');

insert into card_item (quantity,product_id,session_uuid)
values (2, 3, '1906cfd0-2662-438e-8803-e089b7c37951'),
       (2, 3, '1906cfd0-2662-438e-8803-e089b7c37951');