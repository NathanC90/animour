DROP TABLE IF EXISTS animal CASCADE;

create table animal(
	animalId bigserial PRIMARY KEY,
    name varchar(50),
    specie varchar(50) NOT NULL, 
	color varchar(50),
	found date,
	upload timestamp,
	city varchar(50) NOT NULL, 
	district varchar(50),
    hospitlaized boolean default false,
	cardNum varchar(30),
	image bytea,
	memberId bigint
);

select* from animal

insert into animal(name, specie, color, found, upload, city, district)
values 
('BlackDog', 'DOG', 'BLACK', '2017-01-01', '2018-03-10 12:00:00', 'TAIPEI', 'BEITOU'),
('YellowDog', 'DOG', 'YELLOW', '2017-02-01', '2018-03-10 13:00:00', 'KAOHSIUNG', 'ZHOUYING'),
('WhiteDog', 'DOG', 'WHITE', '2017-03-01', '2018-03-10 14:00:00', 'TAIPEI', 'SHINYI'),
('BrownDog', 'DOG', 'BROWN', '2018-04-01', '2018-03-10 15:00:00', 'TAICHUNG', 'EAST'),
('BlackCat', 'CAT', 'BLACK', '2017-05-01', '2018-03-10 16:00:00', 'KAOHSIUNG', 'ZHOUYING'),
('BlueCat', 'CAT', 'BLUE', '2017-06-01', '2018-03-10 17:00:00', 'TAIPEI', 'BEITOU'),
('OrangeCat', 'CAT', 'ORANGE', '2017-07-01', '2018-03-10 18:00:00', 'KAOHSIUNG', 'ZHOUYING'),
('WhiteRabbit', 'RABBIT', 'BLACK', '2017-08-01', '2018-03-10 19:00:00', 'TAIPEI', 'BEITOU'),
('GreyRabbit', 'RABBIT', 'BLACK', '2017-09-01', '2018-03-10 20:00:00', 'TAICHUNG', 'WEST'),
('YellowBird', 'BIRD', 'BLACK', '2017-10-01', '2018-03-10 21:00:00', 'TAINAN', 'BEITOU')

select * from animal order by upload desc fetch first 6 rows only
 
/*select * from shoebrand;
select * from shoe;

show max_connections;
SELECT * FROM pg_stat_activity;
SELECT COUNT(*) from pg_stat_activity;*/

