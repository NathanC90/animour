drop table veterinaryHosp  ;

create table 
veterinaryHosp  
(hospNo bigserial primary key,
 veterinaryHospId varchar(22),   
 veterinaryHospName varchar(20), 
 veterinaryHospTel varchar(12), 
 veterinaryHospAddr varchar(50)); 

insert into veterinaryHosp  (veterinaryHospId ,   veterinaryHospName , veterinaryHospTel , veterinaryHospAddr  ) 
values ('aaahosp', '測試醫院中文', '09-10100100', 'tepei');

insert into veterinaryHosp  (veterinaryHospId ,   veterinaryHospName , veterinaryHospTel , veterinaryHospAddr  ) 
values ('aaahosp2', '第二家醫院', '09-10100100', 'tepei');

insert into veterinaryHosp  (veterinaryHospId ,   veterinaryHospName , veterinaryHospTel , veterinaryHospAddr  ) 
values ('aaahosp3', '第三家醫院', '09-10100100', 'tepei');

insert into veterinaryHosp  (veterinaryHospId ,   veterinaryHospName , veterinaryHospTel , veterinaryHospAddr  ) 
values ('aaahosp4', '第四家醫院', '09-10100100', 'tepei');

insert into veterinaryHosp  (veterinaryHospId ,   veterinaryHospName , veterinaryHospTel , veterinaryHospAddr  ) 
values ('aaahosp5', '第五家醫院', '09-10100100', 'tepei');

insert into veterinaryHosp  (veterinaryHospId ,   veterinaryHospName , veterinaryHospTel , veterinaryHospAddr  ) 
values ('aaahosp6', '第六家醫院', '09-10100100', 'tepei');

insert into veterinaryHosp  (veterinaryHospId ,   veterinaryHospName , veterinaryHospTel , veterinaryHospAddr  ) 
values ('aaahosp7', '第七家醫院', '09-10100100', 'tepei');

insert into veterinaryHosp  (veterinaryHospId ,   veterinaryHospName , veterinaryHospTel , veterinaryHospAddr  ) 
values ('aaahosp8', '第八家醫院', '09-10100100', 'tepei');

insert into veterinaryHosp  (veterinaryHospId ,   veterinaryHospName , veterinaryHospTel , veterinaryHospAddr  ) 
values ('aaahosp9', '第九家醫院', '09-10100100', 'tepei');

insert into veterinaryHosp  (veterinaryHospId ,   veterinaryHospName , veterinaryHospTel , veterinaryHospAddr  ) 
values ('aaahosp10', '第十家醫院', '09-10100100', 'tepei');






select * from veterinaryHosp;