Use testdb;

create table 
Member  
(Id bigserial  primary key,  
 ACCOUNT varchar(20),
 PASSWORD varchar(15),
 Name varchar(20), 
 Nickname varchar(12),
 Cell varchar(12), 
 EMAIL varchar(30) 
 ); 
 
 
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL) 
 VALUES ('ViewSonic','123','Alex Wu','Alex','0900-000000','alex@gmail.com');
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME) 
 VALUES ('Admin','123','管理員');