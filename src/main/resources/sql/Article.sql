drop table article;
drop table member;

 INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,NICK,CELL,EMAIL) 
 VALUES ('ViewSonic','123','Alex Wu','Alex','0900-000000','alex@gmail.com');
insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK) values ('aaaaa','aaaaaaaaaaaaaa','1999-01-08 04:05:06','1999-01-08 04:05:06',1,0);

select * from member;
select * from article;

delete from article where id=1;
delete from member where  id=1;
