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

select * from veterinaryHosp;