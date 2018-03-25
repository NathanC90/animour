drop table Hosp  ;

create table 
veterinaryHosp  
(No bigserial primary key,
 Id varchar(22),   
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






select * from Hosp;