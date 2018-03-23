drop table donate;


create table donate(
	id 		bigint primary key not null,
	name	character varying(50) not null,
	price	integer not null
);


insert into donate (id, name, price)
values (1, 'Serena van der Woodsen', 30000);

insert into donate (id, name, price)
values (2, 'Blair Waldorf', 10000);

insert into donate (id, name, price)
values (3, 'Daniel Humphrey', 100);

insert into donate (id, name, price)
values (4, 'Nate Archibald', 20000);

insert into donate (id, name, price)
values (5, 'Chuck Bass', 10000);

insert into donate (id, name, price)
values (6, 'Jennifer Humphrey', 2000);

insert into donate (id, name, price)
values (7, 'Lilian Vander Woodsen', 50000);

insert into donate (id, name, price)
values (8, 'Rufus Humphrey', 3000);

insert into donate (id, name, price)
values (9, 'Vanessa Abrams', 50);

insert into donate (id, name, price)
values (10, 'Georgina Sparks', 5000);


SELECT id, name, price FROM donate order by id desc fetch first 6 rows only
