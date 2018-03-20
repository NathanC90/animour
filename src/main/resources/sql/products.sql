DROP TABLE PRODUCTS

create table PRODUCTS
(
  ID        bigSerial PRIMARY KEY,
  NAME        VARCHAR(255) not null,
  PRICE       double precision not null,
  QUANTITY    bigint not null,
  MAKE         Timestamp without time zone not null,
  EXPIRE       integer,
  PHOTO       bytea
) ;

insert into products (NAME, PRICE, QUANTITY, MAKE, EXPIRE)
values ('0% 零穀 5 種魚–全齡犬 晶亮護毛配方 2.5 磅', 391, 100, '2018-3-15 12:00:00', 365);
insert into products (NAME, PRICE, QUANTITY, MAKE, EXPIRE)
values ('法國皇家XJ31 超小型幼犬 1.5 公斤', 429, 88, '2018-3-15 12:00:00',365);
insert into products (NAME, PRICE, QUANTITY, MAKE, EXPIRE)
values ('法國皇家PRIJ27 小型室內幼犬 1.5 公斤', 462, 76, '2018-3-15 12:00:00',365);
insert into products (NAME, PRICE, QUANTITY, MAKE, EXPIRE)
values ('法國皇家PRIA21 小型室內成犬 1.5 公斤', 462, 75, '2018-3-15 12:00:00',365);
insert into products (NAME, PRICE, QUANTITY, MAKE, EXPIRE)
values ('烘焙客全犬無穀類雞肉 (小顆粒) 1 公斤', 553, 36, '2018-3-15 12:00:00',365);
insert into products (NAME, PRICE, QUANTITY, MAKE, EXPIRE)
values ('法國皇家PRP30 貴賓成犬 1.5 公斤', 481, 62, '2018-3-15 12:00:00',365);
insert into products (NAME, PRICE, QUANTITY, MAKE, EXPIRE)
values ('柏萊富特調全齡犬配方(羊肉+糙米+雞肉) 5 磅', 672, 67, '2018-3-15 12:00:00',365);
insert into products (NAME, PRICE, QUANTITY, MAKE, EXPIRE)
values ('愛肯拿農場享宴-挑嘴無穀犬 放養雞肉火雞肉 1.2 公斤', 675, 53, '2018-3-15 12:00:00',365);
insert into products (NAME, PRICE, QUANTITY, MAKE, EXPIRE)
values ('Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅', 833, 92, '2018-3-15 12:00:00',365);
insert into products (NAME, PRICE, QUANTITY,MAKE, EXPIRE)
values ('優格0% 零穀 羊肉＋鮭魚–全齡犬 敏感配方 15 磅', 1488, 83, '2018-3-15 12:00:00',365);


