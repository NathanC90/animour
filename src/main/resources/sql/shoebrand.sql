DROP TABLE IF EXISTS shoebrand CASCADE;
DROP TABLE IF EXISTS shoe CASCADE;

create table shoebrand(
	id bigserial PRIMARY KEY,
    name varchar(50),
    style varchar(50),
    headq varchar(50),
    empnum integer,
    found date
);

create table shoe(
	id bigserial,
    name varchar(50),
    color varchar(50),
    price integer,
    launch date,
    brand_id integer REFERENCES shoebrand (id)
);


insert into shoebrand(name, style, headq, empnum, found)
values 
('Adidas', 'sport', 'GERMANY', 55000, '1949-08-18'),
('Nike', 'sport', 'USA', 74400, '1964-01-25'),
('Under Armour', 'sport', 'USA', 11000, '1996-01-01'),
('Puma', 'sport', 'GERMANY', 11300, '1948-01-01'),
('LiNing', 'sport', 'CHINA', 2100, '1989-01-01');


insert into shoe(name, color, price, launch, brand_id)
values 
('yeezyboost350', 'bluetint', 8600, '2017-12-16', 1),
('jordan3', 'cement', 6300, '2018-02-10', 2),
('ultraboost', 'triplewhite', 5990, '2017-08-31', 1),
('curry2', 'usa', 4500, '2016-08-01', 3),
('pg2', 'playstation', 5500, '2018-02-01', 2),
('curry3', 'white', 5200, '2017-10-01', 3),
('wade6', 'black', 4500, '2017-09-30', 5),
('ignitelimitless', 'black', 3900, '2017-11-01', 4),
('blaze', 'black', 3200, '2017-12-01', 4),
('wadeteam5', 'grey', 3600, '2017-04-01', 5);

/*select * from shoebrand;
select * from shoe;

show max_connections;
SELECT * FROM pg_stat_activity;
SELECT COUNT(*) from pg_stat_activity;*/

