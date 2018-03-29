drop table article;

CREATE TABLE article (
    id bigserial primary key,
    postName character varying(30),
    subject character varying(80),
    content text,
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


insert into article (postName,articleSubject,articleContent,postTime) values ('小傑','養貓心得：如何找到最適合自己的貓咪!!','常常很多人看到身旁的朋友或是在路上看到路人帶著可愛的貓咪，就會想要自己也養一隻，但是每隻貓咪的性情和個性都是不同的，要怎麼樣才能找到合適自己的貓咪呢？合適的貓咪能順利地培養彼此的感情喔。

一、什麼樣的貓咪適合你

1、決定飼養類型

決定飼養純種貓或混種貓，純種貓的優點是漂亮，但是有先天上的健康問題，這是後天照顧上會非常辛苦的，而混種貓的外表雖然都是不一的，但是他們都很健康，個性也會比較好。

飼養貓咪前好好想清楚，可是要負責他的一輩子！
2、決定領養年齡

從幼貓開始飼養雖然可以比較好培養感情，但是要照顧的細節很多，需要花很多的精力在上頭，若家裡有小孩或嬰兒就不建議飼養，成貓的好處就是牠可以照顧好自己，不用多費心。

3、養公貓或母貓

公貓或母貓會有不同的行為，若不想幫貓咪進行絕育，就必須先考慮到貓咪的發情期，為了貓咪的健康著想會建議絕育，而絕育後的母貓和公貓性格差異也就不大了，無須擔心。
二、去尋找適合你的貓咪

1、先和幾隻貓熟

在飼養之前，可以去認識你即將飼養的貓咪，了解多一點的貓咪，也就能找到最適合自己的貓，觀察貓咪的性格，看是喜歡友善的還是比較獨立的，這樣才不會在飼養後處的不融洽。

2、辦好領養手續

從收容所領養的貓咪和其他地方不一樣，需要填寫一些文件，且可能需要繳一筆費用才能將貓咪帶回家，通常會先詢問你的家庭環境的情況，貓咪的名字可以沿用原本的或另外取。

3、帶貓咪看獸醫

這是非常的重要的步驟，必須要先確保貓咪的健康，才能把牠帶回家，並且要帶牠去注射疫苗，若無絕育則必須要有絕育手術的計畫，一定要定期帶貓咪去注射疫苗，貓咪才能健康。
三、養貓需要準備些什麼

1、避免被貓抓傷

一定要小心自己不要被流浪貓抓傷或咬傷，流浪貓身上帶有許多病毒，可能會有狂犬病毒，因此貓咪被抓傷或咬傷後，用流水沖洗傷口至少20分鐘，上藥後24小時內前往就醫。

2、準備生活用品

在飼養貓咪之前，要先準備好貓咪的生活用品，像是牠的食具、貓砂盆、貓砂、貓糧、貓窩等等器具，這些都是最基本的配備，不能沒有，而貓糧要針對貓的年齡及身材來選用。

3、幫貓驅蟲免疫

若貓咪已經滿三個月，那就需要進行驅蟲和免疫的疫苗，需到評價較高的寵物醫院注射，才能避免不必要的麻煩，驅蟲和疫苗不能同時進行，可以在驅蟲後一周再帶貓咪到醫院注射。

4、絕育的重要性

絕育最大的好處就是可以延長貓咪的壽命2到3年，且可以杜絕很多疾病，更重要的是可以杜絕很多流浪貓的產生，因此，主人不能輕易忽略絕育的重要性，必須考慮清楚才行。','2016-03-17 04:05:06');



insert into article (postName,articleSubject,articleContent,postTime) values ('MINDY NORTON','Be Prepared (The Pet Version)','The great things about a dog park are the fenced areas where you can play off-leash with your pet.  Be a responsible owner by making sure your dog is up-to-date on all shots, and clean up after your pet.  Another responsible thing for every owner to do is to be prepared for unexpected emergencies!**************

Today is National Animal Disaster Preparedness Day, a time to remind every pet owner to be ready for an emergency. Whether it’s flooding, or a tornado or hurricane, or an earthquake or fire, an unexpected disaster can put you and your best friend at risk. You might ensure that both of you survive if you plan ahead.

Start by putting together a survival kit in case you have to evacuate. A friend of mine calls it a “bug-out bag”. He has been through at least two hurricanes and a tornado, so he believes in being ready. He stocks the bag with necessities like a three-day supply of pet food, bottled water and a bowl for his pet to drink from, a harness with ID tags and leash, a blanket and a toy. If his pet needs medication, he keeps a supply in the bag. When he runs low, he pulls the meds from the bug-out bag and replaces it with a refill, to keep it fresh. He stores the bug-out bag in a pet carrier so he really can grab-and-go in an emergency.

Other great items to keep handy are your pet’s medical records, which may be necessary if you must board your furry friend. Go ahead and have your pet microchipped, because ID tags can be lost. Planning now can make the difference when disaster hits.

If you’re already prepared to take care of your pet in a disaster, you might want to spend some quality time hanging out with pet people and their four-legged friends. In Tuscaloosa today, you can head over to the Will May Dog Park for the fourth annual “Bark in the Park” which starts at ten AM.

The dog park covers about three acres inside Sokol Park, and is a great place for people and pets to get out and socialize and enjoy being together any time. Today there will be competitions for best trick and best costume, even owner-dog look-alike contests, plus face-painting and games for the kids.

Don’t have a dog? No problem, all are welcome. There will be food and drink available and interesting booths to visit, and there is no fee to attend.

So stop by Bark in the Park this morning, then spend the afternoon putting together a bug-out bag for your best friend, to make sure you both stay safe and happy when you’re speaking of pets.

__>^..^<__','2017-03-13 04:05:06');


select * from article;
select articleId,postName,articleSubject,articleContent,postTime from article order by articleId
SELECT articleId, postName, articleSubject, articleContent, postTime FROM article ORDER BY postTime DESC FETCH FIRST 3 ROWS ONLY