drop table article;

CREATE TABLE article (
    articleId bigserial primary key,
    postName character varying(30),
    articleSubject character varying(80),
    articleContent text,
    postTime timestamp
);

insert into article (postName,articleSubject,articleContent,postTime) values ('阿泰','好人做到底！　「完整救貓SOP」擺脫半手愛心
','俗話說：「好人做到底，送佛送到西。」在遇到街貓（或狗，以下都以貓為代表）的時候，尤其是看起來弱不禁風、惹人憐惜的街貓、小貓，心中的惻隱之心很容易在此時發酵，讓自己忍不住出手幫忙。

可是，出手之後呢？不少朋友因為缺乏信心與經驗，有時候因為家人、房東、室友的因素而暫時無法安置街貓，常在撈起街貓之後，大多往動物醫院或是自己知道的貓中途（愛媽）的區域一丟了事。好事不是都已經進行一半了嗎？美好的故事都已經開始接近尾聲了，讓事情整個圓滿，不是更美好嗎？

停停停！我們都希望故事有美好的結局，且看故事的開端：『看（遇）到貓』。是的，從遇到貓開始，請有打算幫街貓的朋友務必自己評估清楚以下事：

1. 我是真的有能力幫助他嗎？
所謂的能力，不僅僅只是愛心，你能夠的將生活分出多少精神在撈來的街貓身上？這還包括金錢的負擔。

2. 要幫助就要完全幫到底，不然就請放手！
如果只想著「我將貓咪送到動物醫院就可以」，或者「我將貓咪送到中途手上就可以」，這樣不如不要撈貓。因為，那會是別人幫你收尾。（老實說，憑什麼要幫你收尾？）（編按：動物需要的是當下能立即幫助牠的人，因此作者在後面有提到，救貓後應先送醫，以免等待時間過長而耽誤醫治。事後若要委託中途照顧，需幫忙分擔醫治費用，因為中途不是聖人，時間與金錢資源也有限。）

3. 以上二點請務必再三思考。
如果非常非常確定自己能夠幫到底，那麼就別遲疑了，快撈貓吧！如果無法徹底提供協助，請放手；或者將消息發佈到流浪動物（協會）的網站，也可以。

4. 請勿將貓隨便移往收容所或是你自己知道有愛媽照護的地方。
街貓，尤其是小貓進收容所，等於判死刑；而隨便將貓咪換地點，貓除了會等不到救援而先死，還可能會將傳染病傳播他觸而造成貓感染甚至死亡（原居貓與外來貓相互傳染）。','1999-01-08 04:05:06');

select * from article;
select articleId,postName,articleSubject,articleContent,postTime from article order by articleId
SELECT articleId, postName, articleSubject, articleContent, postTime FROM article ORDER BY postTime DESC FETCH FIRST 3 ROWS ONLY