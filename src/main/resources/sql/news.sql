
drop table news;
create table news(
seqno bigserial primary key,
subject varchar(200),
event_Date DATE,
address varchar(200),
content text,
publish_Time DATE,
publish_Time_End DATE,
create_User varchar(50),
create_Time Timestamp,
update_User varchar(50),
update_Time Timestamp,
isDel char(5),
isOn char(5)
);


INSERT INTO news (subject, event_Date, address, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題1','2018-06-01', '台北市大安區復興南路一段390號', '活動內文1',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

INSERT INTO news (subject, event_Date, address, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題2','2018-06-01', '台北市大安區復興南路一段390號', '活動內文2',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

 INSERT INTO news (subject, event_Date, address, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題3','2018-06-01', '台北市大安區復興南路一段390號', '活動內文3',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

 INSERT INTO news (subject, event_Date, address, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題4','2018-06-01', '台北市大安區復興南路一段390號', '活動內文4',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

 INSERT INTO news (subject, event_Date, address, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題5','2018-06-01', '台北市大安區復興南路一段390號', '活動內文5',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

 INSERT INTO news (subject, event_Date, address, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題6','2018-06-01', '台北市大安區復興南路一段390號', '活動內文6',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

 INSERT INTO news (subject, event_Date, address, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題7','2018-06-01', '台北市大安區復興南路一段390號', '活動內文7',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

 INSERT INTO news (subject, event_Date, address, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題8','2018-06-01', '台北市大安區復興南路一段390號', '活動內文8',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

 INSERT INTO news (subject, event_Date, address, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題9','2018-06-01', '台北市大安區復興南路一段390號', '活動內文9',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

 INSERT INTO news (subject, event_Date, address, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題10','2018-06-01', '台北市大安區復興南路一段390號', '活動內文10',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

INSERT INTO news (subject, event_Date, address, content, publish_Time, publish_Time_End, create_User, create_Time ) values (?, ?, ?, ?, ?, ?, ?, ?)";
UPDATE news SET subject=? , content=? , update_User=?, update_Time=? where seqno=?;
SELECT seqno, subject, content, update_Time FROM news WHERE seqno = ?";
SELECT seqno, subject, content, update_Time FROM news ORDER BY seqno desc fetch first 6 rows only";
DELETE FROM news WHERE seqno=?;