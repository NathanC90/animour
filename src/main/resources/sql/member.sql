Use testdb;

create table 
Member  
(Id bigserial  primary key,  
 ACCOUNT varchar(20),
 PASSWORD varchar(15),
 Name varchar(20), 
 Nick varchar(12),
 Cell varchar(12), 
 EMAIL varchar(30) 
 ); 
 
 
 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,NICK,CELL,EMAIL) 
 VALUES ('ViewSonic','123','Alex Wu','Alex','0900-000000','alex@gmail.com');
 