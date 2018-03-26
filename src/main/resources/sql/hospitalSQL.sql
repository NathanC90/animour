drop table Hosp;

create table 
Hosp  
(No bigserial,
 Id varchar(22)  primary key,   
 Name varchar(20), 
 Tel varchar(12), 
 Addr varchar(50)); 


insert into Hosp  (Id ,   Name , Tel , Addr  ) 
values ('aaahosp', '測試醫院中文', '09-10100100', 'tepei');

insert into Hosp  (Id ,   Name , Tel , Addr  ) 
values ('aaahosp2', '第二家醫院', '09-10100100', 'tepei');

insert into Hosp  (Id ,   Name , Tel , Addr  ) 
values ('aaahosp3', '第三家醫院', '09-10100100', 'tepei');

insert into Hosp  (Id ,   Name , Tel , Addr  ) 
values ('aaahosp4', '第四家醫院', '09-10100100', 'tepei');

insert into Hosp  (Id ,   Name , Tel , Addr  ) 
values ('aaahosp5', '第五家醫院', '09-10100100', 'tepei');

insert into Hosp  (Id ,   Name , Tel , Addr  ) 
values ('aaahosp6', '第六家醫院', '09-10100100', 'tepei');

insert into Hosp  (Id ,   Name , Tel , Addr  ) 
values ('aaahosp7', '第七家醫院', '09-10100100', 'tepei');

insert into Hosp  (Id ,   Name , Tel , Addr  ) 
values ('aaahosp8', '第八家醫院', '09-10100100', 'tepei');

insert into Hosp  (Id ,   Name , Tel , Addr  ) 
values ('aaahosp9', '第九家醫院', '09-10100100', 'tepei');

insert into Hosp  (Id ,   Name , Tel , Addr  ) 
values ('aaahosp10', '第十家醫院', '09-10100100', 'tepei');

/*insert into Hosp (Id ,   Name , Tel , Addr  ) values ('aurora_animal',  'aurora-animal',  '02-27848211',  'Daan');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('drpet',  'drpet',  '02-27070877',  'Daan');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('chengyi',  'chengyi',  '02-27334341',  'Daan');  
*/

insert into Hosp (Id ,   Name , Tel , Addr  ) values ('AAAAAAAA',  'A8',  '01-000',  '路上');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('aurora_animal',  '極光動物醫院',  '02-27848211',  '台北市大安區建國南路二段31號');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('drpet',  '敦品動物醫院',  '02-27070877',  '台北市大安區大安路一段205-1號');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('chengyi',  '澄毅動物醫院',  '02-27334341',  '台北市大安區安和路二段171巷13號');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('BisousAH',  '磨鼻子動物醫院',  '03-4535740',  '桃園市中壢區延平路20號');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('ChampionSAL',  '呈品動物醫院',  '03-2806070',  '桃園市中壢區中豐路359號');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('petfamily007',  '圓霖動物醫院-中山',  '03-4653377',  ' 桃園縣中壢市中山東路二段16號');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('noahvet',  '諾亞動物醫院',  '03-4264015',  ' 桃園縣中壢市中山路36號');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('topvet',  '中壢太樸動物醫院',  '03-4569911',  ' 桃園縣中壢市中北路51號');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('long-life-vet',  '恆生動物醫院',  '03-4251893',  ' 桃園縣中壢市中美路一段13號');  
insert into Hosp (Id ,   Name , Tel , Addr  ) values ('WellvetAnimalHospital',  '台大良一動物醫院',  '02-24263021',  '基隆市信義區義九路2號');  





select * from Hosp;