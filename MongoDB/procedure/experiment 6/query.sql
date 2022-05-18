create schema store;
use store;
drop table products;

create table products(pname long,price int,barcode long,quantity int); 
call insert_procedure("productname",2500,"barcode",5);

select * from products;
