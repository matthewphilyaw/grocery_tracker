create database groceries;

\c groceries

create table inventoryitem (
    id serial,
    name varchar(250),
    barcode integer
);

insert into inventoryitem (name, barcode)
values ('macroni', '12349'),
       ('noodles', '51424');
