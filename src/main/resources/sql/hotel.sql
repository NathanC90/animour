create table hotel(
Id   bigserial primary key,
  owner   varchar(50),
 type varchar(30),
checkIn date,
total   int,
specie   varchar(30),
dog_Name   varchar(60)
)

select *from hotel

drop table hotel

INSERT INTO hotel ( owner, type, checkIn, total,specie,dog_Name) VALUES 
('lun', 'small', '2018-03-03', 2,'poodle','lili'),
('lun2', 'small', '2020-07-03', 3,'poodle','cucu'),
('lun3', 'small', '2020-07-03', 2,'poodle','阿狗'),
('lun4', 'big', '2020-07-03', 4,'poodle','阿狗'),
('lun5', 'big', '2021-07-03', 5,'poodle','阿狗'),
('lun6', 'big', '2021-07-03', 5,'poodle','小會');

UPDATE hotel SET  owner='lunlun', type='small', checkIn='1991-10-03', total=4,species='poodel2',dog_Name='hichu' WHERE Id = 1

Delete from hotel WHERE Id = 1

SELECT Id, owner, type, checkIn, total,species,dog_Name from hotel where Id=2
