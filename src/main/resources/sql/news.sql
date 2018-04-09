﻿
drop table news;
create table news(
seqno bigserial primary key,
subject varchar(200),
content text,
publishTime DATE,
publishTimeEnd DATE,
createUser varchar(50),
createTime Timestamp,
updateUser varchar(50),
updateTime Timestamp,
isDel char(5),
isOn char(5)
);


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題1', '活動內文1',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');

INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題2', '活動內文2',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題3', '活動內文3',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題4', '活動內文4',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題5', '活動內文5',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題6', '活動內文6',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題7', '活動內文7',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題8', '活動內文8',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題9', '活動內文9',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');


INSERT INTO news (subject, content, publish_Time, publish_Time_End, create_User, create_Time )
 values ('活動標題10', '活動內文10',  '2018-01-01', '2018-06-01', 'admin', '2018-01-01 08:00:00');
 
INSERT INTO news (subject, content, publishTime, publishTimeEnd, createUser, createTime ) values (?, ?,  ?, ?, ?, ?)";
UPDATE news SET subject=? , content=? , updateUser=?, updateTime=? where seqno=?;
SELECT seqno, subject, content, updatetime FROM news WHERE seqno = ?";
SELECT seqno, subject, content, updateTime FROM news ORDER BY seqno desc fetch first 6 rows only";
DELETE FROM news WHERE seqno=?;