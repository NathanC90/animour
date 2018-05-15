INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,ROLE,STATUS) 
VALUES ('Admin','123','管理員','管理員','0000-000000','admin@animour.com','台北市大安區','Admin',1);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS) 
VALUES ('ViewSonic','123','Alex Wu','Alex','0900-000000','alex@gmail.com','台北市大安區', 1);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS)
VALUES ('BenQ','123','Annie Wu','Annie','0900-000000','annie@gmail.com','台北市中正區', 1);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS) 
VALUES ('Sony','Aa1','Sony Su','Apple','0900-000000','apple@gmail.com','台北市萬華區',0);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS) 
VALUES ('Candy','Aa1','Candy Su','C','0900-000000','candy@gmail.com','台北市萬華區',0);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS) 
VALUES ('Dog','Aa1','Candy Co','D','0900-000000','dog@gmail.com','台北市萬華區',0);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS) 
VALUES ('Egg','Aa1','Egg u','E','0900-000000','egg@gmail.com','台北市萬華區',0);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS) 
VALUES ('Fish','Aa1','Fish Su','F','0900-000000','fish@gmail.com','台北市萬華區',0);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS) 
VALUES ('Google','Aa1','Goo Su','G','0900-000000','google@gmail.com','台北市萬華區',0);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS) 
VALUES ('Hello','Aa1','Hello Word','Hi','0900-000000','hello@gmail.com','台北市萬華區',0);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS) 
VALUES ('IU','Aa1','I u','IEE','0900-000000','i@gmail.com','台北市萬華區',0);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS) 
VALUES ('Jessi','Aa1','J J','JJ','0900-000000','jj@gmail.com','台北市萬華區',0);
INSERT INTO MEMBER(ACCOUNT,PASSWORD,NAME,Nickname,CELL,EMAIL,Address,STATUS) 
VALUES ('Kara','Aa1','Kara ka','kerker','0900-000000','kerker@gmail.com','台北市萬華區',0);

 
 
/*2 Hospital*/
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('AAAAAAAA',  'A8',  '01-000',  '路上','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('aurora_animal',  '極光動物醫院',  '02-27848211',  '台北市大安區建國南路二段31號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('drpet',  '敦品動物醫院',  '02-27070877',  '台北市大安區大安路一段205-1號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('chengyi',  '澄毅動物醫院',  '02-27334341',  '台北市大安區安和路二段171巷13號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('BisousAH',  '磨鼻子動物醫院',  '03-4535740',  '桃園市中壢區延平路20號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('ChampionSAL',  '呈品動物醫院',  '03-2806070',  '桃園市中壢區中豐路359號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('petfamily007',  '圓霖動物醫院-中山',  '03-4653377',  ' 桃園縣中壢市中山東路二段16號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('noahvet',  '諾亞動物醫院',  '03-4264015',  ' 桃園縣中壢市中山路36號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('topvet',  '中壢太樸動物醫院',  '03-4569911',  ' 桃園縣中壢市中北路51號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('long-life-vet',  '恆生動物醫院',  '03-4251893',  ' 桃園縣中壢市中美路一段13號','10000' );  
insert into Hospital ( Englishname, Name , Tel , Address, POSTCODE  ) values ('WellvetAnimalHospitalital',  '台大良一動物醫院',  '02-24263021',  '基隆市信義區義九路2號','10000' );  

/*3 Animal */
INSERT INTO CITY (id, name) VALUES 
(1, '宜蘭縣'),(2, '基隆市'),(3, '台北市'),(4, '新北市'),(5, '桃園市'),(6, '新竹市'),
(7, '新竹縣'),(8, '苗栗縣'),(9, '台中市'),(10, '彰化縣'),(11, '南投縣'),(12, '雲林縣'),
(13, '嘉義市'),(14, '嘉義縣'),(15, '台南市'),(16, '高雄市'),(17, '屏東縣'),(18, '台東縣'),
(19, '花蓮縣'),(20, '澎湖縣'),(21, '金門縣'),(22, '連江縣');
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'BlackDog', '狗', 'BLACK', '2017-01-01', '2018-03-10 12:00:00', '1', '北投區', 1);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'YellowDog', '狗', 'YELLOW', '2017-02-01', '2018-03-10 13:00:00', '1', '左營區', 1);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'WhiteDog', '狗', 'WHITE', '2017-03-01', '2018-03-10 14:00:00', '1', '大安區', 1);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'BrownDog', '狗', 'BROWN', '2018-04-01', '2018-03-10 15:00:00', '3', '東區', 1);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'BlackCat', '貓', 'BLACK', '2017-05-01', '2018-03-10 16:00:00', '8', '左營區', 1);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'BlueCat', '貓', 'BLUE', '2017-06-01', '2018-03-10 17:00:00', '8', '北投區',2 );
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'OrangeCat', '貓', 'ORANGE', '2017-07-01', '2018-03-10 18:00:00', '1', '左營區',2);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'WhiteRabbit', '兔', 'BLACK', '2017-08-01', '2018-03-10 19:00:00', '15', '北投區',2);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'GreyRabbit', '兔', 'BLACK', '2017-09-01', '2018-03-10 20:00:00', '1', '西區',2);
insert into animal(status, name, specie, color, found, upload, city_id, district, member_id) values  ('開放認養', 'YellowBird', '鳥', 'BLACK', '2017-10-01', '2018-03-10 21:00:00', '3', '西區',2);

/*4 article */
INSERT INTO CATEGORY(NAME) VALUES ('寵物');
 
INSERT INTO CATEGORY(NAME) VALUES ('心得');

INSERT INTO CATEGORY(NAME) VALUES ('開箱');

INSERT INTO CATEGORY(NAME) VALUES ('閒聊');

INSERT INTO CATEGORY(NAME) VALUES ('情報');

INSERT INTO CATEGORY(NAME) VALUES ('問題');

 
insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID,images) values ('Tips for Living with a Cat in a Apartment','Cats Can be Good Roommates
Having a cat living inside the home is known to produce a number of positive health benefits for people. Pets – especially cats - are increasingly being allowed in many rental units. Even dogs - especially small ones – are finding their way into apartments in both urban and suburban settings. Indoor living also has quite a few advantages for the cats: they are at much less risk of being hit by cars, getting into fights, getting lost, becoming pregnant or impregnating other cats, catching contagious diseases and becoming infested with external and internal parasites. Cats are among the best-suited of all companion animals to living their lives entirely inside of an apartment or other small dwelling. However, before bringing a cat into a home, rented or otherwise, prospective owners should consider whether or not this arrangement is going to be right for them, and for their cats, over the long haul.','1999-01-08 04:05:06','1999-01-08 04:05:06',3,9,1,'https://i.imgur.com/ONQa0zH.jpg');

insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID,images) values ('Living with Cats in Apartments: How to Make It Work in a Tiny Space','I’m almost living the dream. Well, my dream. My tiny dream. While some people dream about mansions or penthouses, I dream of wee little homes on wheels with snug lofts and crannies. I don’t quite have my wheeled house of dreams yet, but in moving to Japan I got pretty darn close. My apartment is the smallest I’ve ever inhabited, and I LOVE IT. But living with cats in apartments does have its challenges:','2015-01-07 00:00:00','2015-01-07 00:00:00',2,7,2,'https://i.imgur.com/gYOdLju.jpg');

insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID,images) values ('【台中早午餐推薦】嗝Gé寵物餐廳．毛小孩咖啡廳。老宅改建餐廳，寵物親善餐廳，有可愛的法鬥和八哥犬駐店，可以從早午餐吃到下午茶','
話說我個人對寵物並沒有多大的熱情，不過法鬥卻是例外的惹我憐愛，總覺得看起來無辜又可愛，而且胖嘟嘟的外型好像小嬰兒一樣…XD

這天是臨時得到半天空閒，所以就當了跟屁蟲來到這間新開的 《嗝Gé寵物餐廳》…
《嗝Gé寵物餐廳》位於忠勤街上，林森路往復興路的方向，看到忠勤街右轉，大概前方100公尺右手邊就是了…
外觀也是一間老宅，沒有仔細看的話，還真不曉得它是一間餐廳呀！
《嗝Gé寵物餐廳》是一間寵物親善餐廳，如果家裡有小狗狗的話，很歡迎帶到這裡，當然~沒有狗的話也是可以來的啦！
老宅改建餐廳，門口有一個庭院…
因為怕店裡的小狗狗會亂跑的關係，所以有用柵欄圍起來…
我覺得《嗝Gé寵物餐廳》的氛圍和《默默手作輕食》有點像，很巧的是默默也有一隻店長叫碗果
吧檯上放了很多狗狗造型的製品…
主食…以手作麵包和貝果為主！
這裡的座位區不算少，而且以木質傢俱為主，乾乾淨淨的，很素雅…
套餐沙拉 - 木呈盤看起來質感加分…
和風咖哩雞肉飯 - $220元，這邊的咖哩飯不是使用調理包，味道濃郁卻很溫和，不會偏甜也不會偏辣… 
早午餐A．起司漢堡排 - $200元，主餐有3種選擇，我選擇了法式吐司，吃起來口感滿嫩的，不過因為有淡淡的肉桂味，所以~可能要看人吃！
漢堡排肉質很細膩，吃起來還滿滑嫩啾西的，上面的起司拌演著畫龍點睛的作用，並不會過於搶戲…
早午餐B．培根與香腸 - $190元，這份搭配的是貝果，所以視覺上好像又更澎派一些…
香腸和培根熟度都煎的很剛好，也不會過於油膩，香腸吃起來脆脆的，鹹度高了些…
早午餐C．香草雞 - $200元，感覺還滿養生的耶！
調味料很簡單，帶點迷迭香的味道，雞肉口感並不會顯柴…
附餐紅茶 - 喝起來帶有復古味，而且有厚度…
洛林經典鹹派 - $130元
檸檬蛋糕 - $80元
拿鐵咖啡 - $130元，這杯比較普通，感覺表現沒有紅茶來的出色…
★餐點介紹完了，現在來看店狗，他是一隻法國鬥牛犬，名字叫皮皮…！我至少拍了50張，沒有糊的大概只有10張…@@"…(它太好動了啦！XD) 
哈哈…哪裡有食物就往哪邊去，下次來我也要帶狗糧…
太萌了，真的…
★這是另外一隻店狗，八哥犬，他的名字叫皮蛋…^^…(其實另一隻應該改名叫豆腐的！)
他都不看我，我只拍的到他的屁股…所以照片是宅青提供的！甘蝦~
累了，用頭撞門，然後…主人就幫他開門了…主人邊開邊說：「他真好命捏，我就負責幫他開門…！！」XD','2015-04-16 00:00:00','2015-04-16 00:00:00',2,8,5,'https://i.imgur.com/aE4VGkC.jpg');

insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID,images) values ('養貓新手上路（認養貓咪的觀念＆帶貓咪回家要注意的事）','<h2>養貓新手上路（認養貓咪的觀念＆帶貓咪回家要注意的事＆貓咪的日常清潔與運動＆日常生活該怎麼照顧＆關於結紮這檔事＆貓咪生的什麼病？！）&nbsp;</h2><p>&nbsp;認養貓咪的觀念， 認養前，我們的10個約定：&nbsp;</p><ul><li>請給我一點時間，讓我瞭解你對我的要求</li><li>請信任我，這是我幸福的泉源</li><li>請不要忘記，我也是有血有肉的</li><li>在責罵前，請先試著瞭解我</li><li>請偶爾對我說說話，雖然我聽不懂，但我懂你的心</li><li>請不要打我，別忘了，我認真起來是比你還強壯的</li><li>請好好照顧我，當我逐漸變老時</li><li>請記住，你有你的工作、娛樂和朋友，但我就只有你</li><li>請想想，我的生命有10~15年，遺棄我會是對我最大的傷害</li><li>請在我最終離去前陪著我，這是我最後的心願。最後，請記得，我愛你。</li></ul><p>另外請注意：&nbsp;</p><ol><li>如家中已有貓咪者，家中的貓是否已完成疫苗注射？</li><li>隔離籠或小房間已準備妥當？</li><li>貓咪的水盆、飼料、貓砂盆是否已準備？</li><li>外出提籠是否已準備？</li><li>家俱可能會受傷的這件事，是否已準備包容?</li></ol><figure class="image"><img src="https://16608.cdn.cke-cs.com/nZO2k5WiHIWjQYuCvKvS/images/a81ac234bdf90c5213d6d8474387727b6b0b4e291f7eb770_貓床2.jpg" srcset="https://16608.cdn.cke-cs.com/nZO2k5WiHIWjQYuCvKvS/images/a81ac234bdf90c5213d6d8474387727b6b0b4e291f7eb770_貓床2.jpg/w_144 144w, https://16608.cdn.cke-cs.com/nZO2k5WiHIWjQYuCvKvS/images/a81ac234bdf90c5213d6d8474387727b6b0b4e291f7eb770_貓床2.jpg/w_224 224w, https://16608.cdn.cke-cs.com/nZO2k5WiHIWjQYuCvKvS/images/a81ac234bdf90c5213d6d8474387727b6b0b4e291f7eb770_貓床2.jpg/w_304 304w, https://16608.cdn.cke-cs.com/nZO2k5WiHIWjQYuCvKvS/images/a81ac234bdf90c5213d6d8474387727b6b0b4e291f7eb770_貓床2.jpg/w_384 384w, https://16608.cdn.cke-cs.com/nZO2k5WiHIWjQYuCvKvS/images/a81ac234bdf90c5213d6d8474387727b6b0b4e291f7eb770_貓床2.jpg/w_464 464w, https://16608.cdn.cke-cs.com/nZO2k5WiHIWjQYuCvKvS/images/a81ac234bdf90c5213d6d8474387727b6b0b4e291f7eb770_貓床2.jpg/w_544 544w" sizes="100vw" width="544"></figure>','2015-10-10 00:00:00','2015-10-10 00:00:00',2,51,2,'https://i.imgur.com/jp1wO6P.jpg');

insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID,images) values ('養狗知識: 狗狗動作及身體語言','<h3><i>你知道狗狗的很多動作其實是有特別意思的嗎? 以下是一些典型的犬隻肢體語言:&nbsp;</i></h3><ol><li>聞地面：這個動作被認為是當狗狗害怕對方（人或狗）時，想要使對方冷靜的信號。</li><li>一瞬間轉頭，把頭或眼睛轉向別方，有時這只是一瞬間的動作，可能您根本沒注意到這樣的行為。當小朋友跑向狗狗要抱牠時，害怕的狗狗可能就會有這樣的動作。 所以，請特別告誡小朋友，不要接近一隻瞪著你的陌生狗狗，"瞪著你"在狗狗的肢體語言就代表了攻擊性。當然，在沒有大人可隨時監看著的情況下，最好不要讓小朋友任意接近陌生的狗狗。&nbsp;</li><li>舔自己的鼻子：快或慢，都被認為是安撫陌生的對方的信號。而且有趣的是，黑色的狗狗會比其他毛色的狗狗更常使用這個動作。可能是因為黑色的狗狗比較不容易被看清楚臉部表情，而粉紅色的舌頭又特別明顯吧。&nbsp;</li><li>舔其他狗狗或人的臉：這普遍被認為是歡迎你的動作，有可能也是一個安撫的信號。&nbsp;</li><li>打呵欠：這是最普遍的一個正處於壓力下的信號。最常看到的時候就是在動物醫院、服從訓練中狗狗覺得主人要求太多、或被主人教訓時。&nbsp;</li><li>尾巴搖搖、兩腳站起、用前腳抓你：狗狗想要玩遊戲，表示想邀請你和他玩。熱情的狗狗，最希望你陪他一起玩，不管是你丟我撿、你跑我追、搶玩具。&nbsp;</li><li>翻著身子躺在地上，把肚子露出：狗狗認輸臣服的表示，肚子是狗狗最脆弱的地方，遇到老大或是比自己強勢的狗，認輸的一方便會躺在地上把肚子露出來，表示自己沒有敵意，你是老大般地向你釋出誠意。&nbsp;</li><li>尾巴搖動的速度越快：狗狗常常都是開心的，尤其是看到主人回家，幫他準備晚餐；或是聽到熟悉的腳步聲，知道你即將帶他出門散步。&nbsp;</li><li>露出牙齒低吼，或直接對目標狂吠：狗狗生氣，警告不要靠近，通常他們不會這樣對待你，但如果真的生氣了，狗狗會露出牙齒低吼示威。並不是真的要咬你，就像西部電影的牛仔生氣時，愛拔出武器示威一樣。&nbsp;</li><li>尾巴會垂下，屁屁向內弓：「夾著尾巴逃跑，先溜為妙」絕對是從狗狗得來的成語，狗狗感到害怕時，狀況不對先溜為妙。</li></ol>。','2018-05-07 00:00:00','2018-05-07 00:00:00',4,48,2,'https://i.imgur.com/NpK8a0G.jpg');

insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID,images) values ('<p>問這問題是因為過去幾十年來, 從我爸小時候算起, 到現在我都快四十了, 我爸也當阿公了, 但我們家就是從來沒養過任何寵物. 所以自然對這方面的知識與經驗=0&nbsp;</p><p>其實我們家是蠻喜歡狗的, 兒子最近在嚷嚷說想養一隻, 只是一直沒有很認真的想要去做這件事. 能不能借這個版問一下, 請教各位, 先撇開購入幼犬的費用不計.....單純就幼犬抱回家之後, 大概每個月或每年要面臨哪些開銷啊? 能否用黃金獵犬跟威爾斯柯基犬, 這二種大小的狗, 讓我知道一下花費的預算大概會是多少啊? 非常感謝!!</p>','2018-03-07 00:00:00','2018-03-07 00:00:00',5,35,6,'https://i.imgur.com/e9i9jC5.jpg');

insert into comment (content,update_Time,Article_Id,Member_Id) values ('我想~~這問題就像是人家問"養一個小孩要花多少錢"
意思是差不多的

可以貴著養也可以簡單隨便養
健康的花不了太多錢
一天到晚生病的醫藥費比人的還恐怖
有人天天煮新鮮的狗狗吃
有人一包國產飼料隨便餵
有人每周送洗美容
有人從來不洗狗

你只需要衡量狗來了後
家中沒人想照顧嫌牠麻煩時
你是否有把握養牠一輩子','2018-05-18 00:00:00',6,2);

insert into comment (content,update_Time,Article_Id,Member_Id) values ('我自己經驗
養一隻約20kg中型犬
吃大包裝價位2500左右的飼料
加上必要的體外除蟲跟心絲蟲預防藥
一個月抓個2000~2500左右吧
(大概啦,沒精算)

但洗澡是自己洗
也不含零食玩具等

我養的是最好照顧的米克斯
還會偶而皮膚過敏跑跑獸醫院
養品種犬的話最好先研究一下遺傳疾病
有心理準備再養

最重要的是要確定自己跟家人都能對牠不離不棄
因為這是十幾年的承諾
祝福你~','2018-05-19 00:00:00',6,4);

insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID,images) values ('想養刺蝟的人看過來~','<h3>想養刺蝟的人請先考慮以下三點:&nbsp;</h3><ol><li>刺蝟跟鼠類的寵物是不太一樣的，照顧上也會比較麻煩。例如:刺蝟的腸道短，跑輪輪的時候會一邊興奮一邊拉屎~所以天天都要清理便便風火輪。&nbsp;</li><li>刺蝟並不親人!!!通常網路上有名的刺蝟，那種在主人手上睡覺的都是比傳說卡還稀有的等級~一般刺蝟都很膽小，甚至有的飼主花了一年的時間他家刺刺還是鳥都不鳥他==...我們家的算溫和，只要被捧起來之後怎麼跟她玩都不會生氣:D&nbsp;</li><li>刺蝟的大便滿臭的，因為他是肉食性的，據說跟貓屎差不多。雖然我沒養過貓，但真的滿臭的。阿排只要一大便，我就聞得出來，還曾經清晨被便便臭醒過...QQ 如果已經再三考慮，打算進入飼養階段的話，那我再說說刺蝟入手的方式與飼養常見的問題。 入手方式基本上就是去寵物店買or等領養or等人家生的寶寶。 沒錯，刺蝟是可以領養的，而且機率並沒有想像中低。建議加入一些刺蝟fb社團，裡面很多機會:D 我個人是很不希望各位去寵物店購買，因為寵物店的刺蝟大都體弱多病，而且寵物店不只會推薦不適合的飼料，也會亂教你怎麼養!!!刺蝟絕對需要分籠飼養，但很多寵物店都隨便養，墊材跟窩都準備的很爛，也沒有保溫燈。就算你那兩隻感情好不會打架，刺蝟也是獨居動物，請尊重他們的習性。(但是有時候看到魚X魚裡面可憐的小東西，還是很想把他們拯救出來... 飼養常見的問題如下，給新手參考。 飼養前當然要做足功課，我當初因為是自己的第一隻寵物所以很緊張地找了一堆資料。&nbsp;</li></ol><h4>刺蝟需要的基本用品有:&nbsp;</h4><ol><li>大型整理箱(也有人是買圍籬放養。)&nbsp;</li><li>墊材:貓砂or尿布墊(貓砂最好選低粉塵的，推薦玉米砂或紙砂) ps最好不要太香，我當初亂買綠茶砂，第2天我的刺蝟就拉出綠茶砂便便...&nbsp;</li><li>裝水跟食物的碗，重一點比較不會被頂翻，有人是用菸灰缸。&nbsp;</li><li>30公分以上大滾輪。網路上比較好找，寵物店很少有賣。&nbsp;</li><li>保溫燈or暖暖包。刺蝟適宜溫度是25度左右，台灣的天氣絕對需要保暖工具。不過保溫燈之前還滿常有刺友發生電線走火等意外...可以想見箱子裡的小東西有多驚恐!!!所以有些人是堅持用暖暖包+很厚的窩。 刺蝟的飼料挑選: 刺蝟是肉食性的，而且有乳糖不耐症。一般是使用貓飼料無穀雞肉口味搭配各種蟲蟲點心(杜比亞蟑，大麥蟲等等)。&nbsp;</li></ol><h4>刺蝟的習性:&nbsp;</h4><ol><li>夜行性。我覺得夜行性還滿符合我的生活作息的，就晚上睡覺前抱著她打電腦，跟她玩一下，然後聽著她跑滾輪的聲音入睡。&nbsp;</li><li>挫青屎。人家緊張就會挫青屎，很黏很深的綠。牠跟你第一次見面難免會這樣，不是生病不要太緊張。&nbsp;</li><li>舔背，吐泡泡。刺蝟很軟Q，要記味道的時候會把味道舔到背刺上，很萌。&nbsp;</li><li>鑽鑽，他們愛鑽洞。所以衛生紙捲的心可以給他們玩，品客罐洗乾淨也很好玩~阿排小時候還可以在品客罐裡轉身，現在漲大了要出來都只能倒退嚕了。&nbsp;</li><li>翻肚。看個性，我家的極力抗拒，不過我男友就特愛翻她。對了，刺蝟水上飄雖然很可愛，但別嘗試，耳朵很容易進水。&nbsp;</li></ol><p>其實還有很多有趣的可以講，不過先打這樣吧~大家有反映希望在更深入了解的話我再多說。 最後附上一張欺負她的照片XD 還滿多人問關於蟲的問題，所以我再補充一下: 蟲是野生刺蝟的主食，但對於寵物刺蝟我們無法提供多樣的蟲種，只餵蟲是會營養不良的。所以寵物刺蝟的主食還是飼料，蟲算點心與營養補充品，最營養的種類應該是杜比亞蟑。 還有，水族館購買回來的蟲病菌很多，餵之前先用水果餵養一週之後再餵給刺寶吃比較好。 網路上也有神人自行開發麥皮蟲農場，並自製蟲的果凍控制養出來的蟲的養分，有興趣可以google看看⊙ω⊙</p>','2015-03-20 00:00:00','2015-03-20 00:00:00',5,21,1,'https://i.imgur.com/ztunEGL.jpg');

insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID,images) values ('給養鳥新手的建議--基本養鳥常識','<ol><li>養之前一定要先做功課 知道鳥需要什麼，以及評估自己適不適合養鳥，適合養什麼鳥。 (雖然許多人都知道養寵物要做功課，卻忽略做功課的＂方法與途徑＂才是飼養心態、方式是否正確的關鍵。 網路上常見以訛傳訛、不正確飼育示範，甚至資訊根本錯誤的現象。 多問、多看、多聽、多學固然重要，但飼養者本身得能有過濾資訊的能力。 若能多花心思與時間；同時與醫師討論及多閱讀相關書籍，對於飼育才能真正算是做對一門功課。BY.Joyce Lu)&nbsp;</li><li>鳥不能只吃單一穀物 EX:蛋黃粟.瓜子 鳥在野外的飲食非常多元，長期攝取單一的飲食會導致鳥營養失調，甚至生病.死亡。 均衡的飲食非常重要，健康的鳥抵抗力好就更不容易生病，預防勝於治療。&nbsp;</li><li>不管再乖的鳥都會飛走 遇到危險就飛是鳥的天性，身為是飼主必須保護鳥的安全，不能因為平常鳥兒很黏人，就在毫無防範下帶他出門。 記住手養鳥是不能在野外生存的，飛走的下場不是冷死餓死就是死於意外，幸運一點的或許被人撿走，但是沒人知道下一個飼主是否對他好。 所以當鳥出籠時請關好門窗，如果家裡存有飛走的風險請剪羽。 (剪羽不會痛，也不是完全不會飛，只是飛不高) 3.鳥不能只養在站台上 很多人把中大型鳥鍊在鳥架上，那是很殘忍且不人道的行為，請籠子和站台交替使用。&nbsp;</li><li>鳥不能吃人類的食物 油.鹽.糖等人類的調味料會對鳥身體造成很大的負擔，另外鳥不能吃含有巧克力.咖啡因.的食物，乳製品.水果的籽和酪梨鳥也不能吃。</li><li>最好不要只用一個尺寸的棲木 鳥整天都站著，所以適合的棲木對鳥來說很重要，一直都同樣粗系可能造成腳的病變。&nbsp;</li><li>羽毛不是萬能冬天請保溫 有人會覺得鳥長滿羽毛不怕冷，這絕對是錯誤的。 鳥冷的時候羽毛會澎起來，可以依每隻鳥的情形決定要不要開保溫燈了。但是無論如何，冬天絕對不可以放著吹冷風。&nbsp;</li><li>鳥不乖是主人的問題 雖然鳥本身就有個性，但是主人的教養方式也影響很大，就像小孩不乖會覺得是父母沒教好，鳥不乖也要檢討是不是自己的養育方式出了問題。(可能太久沒陪他或是太寵他了) 另外咬人和大叫是鸚鵡的天性，養之前請接受這個事實。&nbsp;</li><li>鳥沒有說人話的義務 常看到有人一直問鳥什麼時候會說話，要鳥說話也必須要主人花心思去教才行，人類小孩也不是一出生就會說話，何況是鳥。 還有鳥不是人類，沒有說人話的義務，如果因為不說話而責怪鳥，請重新審是當初養鳥的理由，如果只是因為希望會說人話，建議還是買個錄音機比較快....&nbsp;</li><li>多花心思與時間觀察 鳥很會隱藏病情，如果有屁股黏大便等生病的症狀，都已經很嚴重了。 所以平實的觀察很重要，每天要注意鳥的狀況，大便是否有異狀，食量是否減少，提早發現趁早處哩，避免悲劇發生。&nbsp;</li><li>飼養空間不能太小及每天放風 再忙每天都還是要讓鳥出來走走，十分二十分也好，籠子也不能太小，至少要能讓鳥在籠內盡情拍翅膀，鸚鵡是高智商動物，最好在籠內放置玩具給鳥打發時間以免造成心理疾病。 活動空間不足或是長時間囚禁不放風可能導致鳥兒出現制式化行為。 ***** 以上是我養鳥多年的心得，有什麼意見或問題歡迎提出來討論</li></ol>','2017-08-07 00:00:00','2015-08-07 00:00:00',2,72,1,'https://i.imgur.com/DY8syeC.jpg');

insert into article (subject,content,post_Time,UPDATE_TIME,MEMBER_ID,CLICK,CATEGORY_ID,images) values ('你們家的貓咪睡哪種床呢？','<p>最近養了雙喵才知道原來貓咪跟狗狗東西一樣好買， 狗狗可能花在衣服上面可以花上很多錢， 但我發現喵喵不但有抓版，跳台，還有各式各樣碗跟水盆， 還有床可以買，加上我發現我家喵喵竟然會乖乖在自己床睡覺時候， 而且用了三星期觀察，雙喵到時間就會各自回各自床睡覺， 不會亂睡在床底下或者平日休息地方， 甚至上來床上撒嬌之後還是會回到自己的床上去睡覺， 不會打擾任何人，就像那床是他房間一樣！我的慾望就一直上升，想幫他們升級更好的床， 今天在樂天上看到這個<a href=" http://ppt.cc/8py0"> http://ppt.cc/8py0</a><a href=""> </a><a href="http://ppt.cc/mEqr">http://ppt.cc/mEqr</a>&nbsp;</p><p>整個好適合雙喵唷！ 加上他是可以拆開來變成單人床！ 慾望整個大上升～～～～ 但是看到價格之後就默默關掉， 一萬多的床還是拿來給毛孩子吃飯比較實在！ 這是網友請人家木工訂製的&nbsp;</p><p><a href="http://ppt.cc/JdVe">http://ppt.cc/JdVe</a>&nbsp;</p><p>還有小桌子整個很豪華耶！ 但我想價格應該也不太便宜才是啦&gt;"&lt; 還有適合多喵的上下床</p><p>&nbsp;<a href="http://ppt.cc/KejK">http://ppt.cc/KejK</a>&nbsp;</p><p>看了真的是讓我哇哇叫，也太夢幻了！ 重點是喵咪會乖乖去睡耶～～～ 這個是看了有打算購入放在雙喵阿嬤家的&nbsp;</p><p><a href="http://ppt.cc/2TnO">http://ppt.cc/2TnO</a>&nbsp;</p><p>我們每星期都會回台北，但是雙喵都沒地方窩，所以有打算買這個 這個屋頂是可以拆開來的，底部是塑膠可以清洗的， 感覺很適合雙喵阿嬤潔癖個性，也可以很方便清洗， 加上他的屋頂可以掀開蓋起來，很適合愛偷窺的喵麻我:P 但是看來看去很多木床 最後應該是會買lkea的 好像版上也有版友推薦&nbsp;</p><p><a href="http://ppt.cc/UlQI">http://ppt.cc/UlQI</a>&nbsp;</p><p>這個加上被套組是799 比之前版友推薦貴了一百，不過感覺很有質感， 正打算回台北時候去看看看是不是要購入回來～ 目前我們家雙喵是睡在類似這種</p><p>&nbsp;<a href="http://goo.gl/qJNSl">http://goo.gl/qJNSl</a>&nbsp;</p><p>畢竟剛開始帶他們回家很擔心他們不睡所以剛開始購入最便宜的 各位版友喵咪都睡哪裡呢？ 還是喵咪都跟各位睡呢？</p>','2018-04-08 00:00:00','2018-04-08 00:00:00',4,0,6,'https://i.imgur.com/eeAipHv.jpg');


insert into comment (content,update_Time,Article_Id,Member_Id) values ('nice!','2018-04-01 00:00:00',1,1);


insert into comment (content,update_Time,Article_Id,Member_Id) values ('nice!','2018-04-01 00:00:00',1,1);
/*5 donate */
insert into donate (id, name, price, email)
values (1, 'Serena van der Woodsen', 30000, 'serena1203@gmail.com');

insert into donate (id, name, price, email)
values (2, 'Blair Waldorf', 10000, 'bw1104@gmail.com');

insert into donate (id, name, price, email)
values (3, 'Daniel Humphrey', 100, 'danielh0517@gmail.com');

insert into donate (id, name, price, email)
values (4, 'Nate Archibald', 20000, 'nathaniel0304@gmail.com');

insert into donate (id, name, price, email)
values (5, 'Chuck Bass', 10000, 'chuckbass1108@gmail.com');

insert into donate (id, name, price, email)
values (6, 'Jennifer Humphrey', 2000, 'jenny5438@gmail.com');

insert into donate (id, name, price, email)
values (7, 'Lilian Vander Woodsen', 50000, 'lilvw@gmail.com');

insert into donate (id, name, price, email)
values (8, 'Rufus Humphrey', 3000, 'rufusrock@gmail.com');

insert into donate (id, name, price, email)
values (9, 'Vanessa Abrams', 50, 'vanessa1220@gmail.com');

insert into donate (id, name, price, email)
values (10, 'Georgina Sparks', 5000, 'georgina1027@gmail.com');



insert into RESERVATIONTIME (front_Time,back_Time)values
('09:00:00','10:00:00'),
('10:00:00','11:00:00'),
('11:00:00','12:00:00'),
('13:30:00','14:30:00'),
('14:30:00','15:30:00'),
('15:30:00','16:30:00');

/*6 reservation*/
--insert into reservation (reservation_Date,FRONT_TIME,content,designer,total_Time,price,payment,member_id)values
--('2000-10-12','10:00:00','洗澡','阿明',1,300,'paid',2),
--('2000-10-12','11:00:00','洗澡','阿喵',1,200,'paid',2),
--('2000-10-13','12:00:00','洗澡','阿明',1,250,'paid',3),
--('2000-10-14','13:00:00','剪髮','彌明',1,200,'paid',4),
--('2000-10-15','14:00:00','剪髮','阿中',1,300,'paid',2),
--('2000-10-16','15:00:00','造型','小明',1,100,'paid',4),
--('2000-10-17','16:00:00','造型','阿中',1,150,'paid',3),
--('2000-10-18','17:00:00','造型','阿中',1,100,'paid',2);
insert into reservation (reservation_Date,FRONT_TIME,content,designer,total_Time,price,payment)values
('2000-10-12','10:00:00','洗澡','阿明',1,300,'paid'),
('2000-10-12','11:00:00','洗澡','阿喵',1,200,'paid'),
('2000-10-13','12:00:00','洗澡','阿明',1,250,'paid'),
('2000-10-14','13:00:00','剪髮','彌明',1,200,'paid'),
('2000-10-15','14:00:00','剪髮','阿中',1,300,'paid'),
('2000-10-16','15:00:00','造型','小明',1,100,'paid'),
('2000-10-17','16:00:00','造型','阿中',1,150,'paid'),
('2000-10-18','17:00:00','造型','阿中',1,100,'paid');











/*UPDATE hotel SET  owner='lunlun', type='small', checkIn='1991-10-03', total=4,species='poodel2',dog_Name='hichu' WHERE Id = 1*/

/*7 news*/
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
 
 
/*8 product*/
insert into classify (name) values('寵物伺料');
insert into classify (name) values('寵物用品');
insert into classify (name) values('寵物玩具');
insert into classify (name) values('其它');

insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('0% 零穀 5 種魚–全齡犬 晶亮護毛配方 2.5 磅', 391, 100, '2018-3-15 12:00:00', 365, '2018-4-8', 'bbbbbbbbbbbbbbbbbbbbbbbbb', 1);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家XJ31 超小型幼犬 1.5 公斤', 429, 88, '2018-3-15 12:00:00',180, '2018-3-5', 'ccccccccccccccccccc', 1);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家PRIJ27 小型室內幼犬 1.5 公斤', 462, 76, '2018-3-15 12:00:00',365, '2018-3-3', 'dddddddddddddddddddd', 1);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家PRIA21 小型室內成犬 1.5 公斤', 462, 75, '2018-3-15 12:00:00',150, '2018-3-9', 'eeeeeeeeeeeeeeeee', 1);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('烘焙客全犬無穀類雞肉 (小顆粒) 1 公斤', 553, 36, '2018-3-15 12:00:00',365, '2018-2-10', 'fffffffffffffffff', 1);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家PRP30 貴賓成犬 1.5 公斤', 481, 62, '2018-3-15 12:00:00',100, '2018-2-15', 'gggggggggggggggg', 1);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('柏萊富特調全齡犬配方(羊肉+糙米+雞肉) 5 磅', 672, 67, '2018-3-15 12:00:00',90, '2018-3-22', 'hhhhhhhhhhhhhh', 1);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('愛肯拿農場享宴-挑嘴無穀犬 放養雞肉火雞肉 1.2 公斤', 675, 53, '2018-3-15 12:00:00',180, '2018-4-2', 'iiiiiiiiiiiiii', 1);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅', 833, 92, '2018-3-15 12:00:00',150, '2018-2-14', 'jjjjjjjjjj', 1);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('優格0% 零穀 羊肉＋鮭魚–全齡犬 敏感配方 15 磅', 1488, 83, '2018-3-15 12:00:00',360, '2018-2-25', 'kkkkkkkkkkkk', 1);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('0% 零穀 5 種魚–全齡犬 晶亮護毛配方 2.5 磅', 391, 100, '2018-3-15 12:00:00', 365, '2018-4-8', 'bbbbbbbbbbbbbbbbbbbbbbbbb', 2);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家XJ31 超小型幼犬 1.5 公斤', 429, 88, '2018-3-15 12:00:00',180, '2018-3-5', 'ccccccccccccccccccc', 2);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家PRIJ27 小型室內幼犬 1.5 公斤', 462, 76, '2018-3-15 12:00:00',365, '2018-3-3', 'dddddddddddddddddddd', 2);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家PRIA21 小型室內成犬 1.5 公斤', 462, 75, '2018-3-15 12:00:00',150, '2018-3-9', 'eeeeeeeeeeeeeeeee', 2);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('烘焙客全犬無穀類雞肉 (小顆粒) 1 公斤', 553, 36, '2018-3-15 12:00:00',365, '2018-2-10', 'fffffffffffffffff', 3);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('法國皇家PRP30 貴賓成犬 1.5 公斤', 481, 62, '2018-3-15 12:00:00',100, '2018-2-15', 'gggggggggggggggg', 3);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('柏萊富特調全齡犬配方(羊肉+糙米+雞肉) 5 磅', 672, 67, '2018-3-15 12:00:00',90, '2018-3-22', 'hhhhhhhhhhhhhh', 3);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('愛肯拿農場享宴-挑嘴無穀犬 放養雞肉火雞肉 1.2 公斤', 675, 53, '2018-3-15 12:00:00',180, '2018-4-2', 'iiiiiiiiiiiiii', 3);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('Natural Balance低敏無穀地瓜鹿肉全犬 4.5 磅', 833, 92, '2018-3-15 12:00:00',150, '2018-2-14', 'jjjjjjjjjj', 4);
insert into product (NAME, PRICE, STOCK, MAKE_DATE, EXPIRE, SHELVES_DATE, DESCRIPTION, classify_id)
values ('優格0% 零穀 羊肉＋鮭魚–全齡犬 敏感配方 15 磅', 1488, 83, '2018-3-15 12:00:00',360, '2018-2-25', 'kkkkkkkkkkkk', 4);

/*9 orders*/
insert into orders (orderdate, totalamount, member_id) values('2018-5-10 12:38:10', 1280, 2);
insert into orders (orderdate, totalamount, member_id) values('2018-5-15 16:25:35', 2280, 2);
insert into orders (orderdate, totalamount, member_id) values('2018-5-13 03:31:09', 3650, 3);

/*10 ordersItem*/
insert into ordersitem (name, price, quantity, orders_id)
values('0% 零穀 5 種魚–全齡犬 晶亮護毛配方 2.5 磅', 600, 1, 1);
insert into ordersitem (name, price, quantity, orders_id) 
values('法國皇家XJ31 超小型幼犬 1.5 公斤', 680, 1, 1);
insert into ordersitem (name, price, quantity, orders_id)
values('優格0% 零穀 羊肉＋鮭魚–全齡犬 敏感配方 15 磅', 1100, 2, 2);
insert into ordersitem (name, price, quantity, orders_id) 
values('烘焙客全犬無穀類雞肉 (小顆粒) 1 公斤', 1180, 3, 2);
insert into ordersitem (name, price, quantity, orders_id)
values('法國皇家PRIJ27 小型室內幼犬 1.5 公斤', 580, 2, 3);
insert into ordersitem (name, price, quantity, orders_id) 
values('法國皇家PRIA21 小型室內成犬 1.5 公斤', 400, 1, 3);
insert into ordersitem (name, price, quantity, orders_id) 
values('柏萊富特調全齡犬配方(羊肉+糙米+雞肉) 5 磅', 1045, 2, 3);

/*11 designer*/
insert into designer (designer)values
('飛影'),
('琦玉'),
('陳浩南');



insert into SERVICECONTENT (CONTENT,time,price,designer_id)
values ('造型',1,200,1);
insert into SERVICECONTENT (CONTENT,time,price,designer_id)
values ('洗澡',1,300,1);
insert into SERVICECONTENT (CONTENT,time,price,designer_id)
values ('剪毛',1,400,1);
insert into SERVICECONTENT (CONTENT,time,price,designer_id)
values ('造型',1,200,2);
insert into SERVICECONTENT (CONTENT,time,price,designer_id)
values ('洗澡',1,300,2);
insert into SERVICECONTENT (CONTENT,time,price,designer_id)
values ('剪毛',1,400,2);
insert into SERVICECONTENT (CONTENT,time,price,designer_id)
values ('造型',1,200,3);
insert into SERVICECONTENT (CONTENT,time,price,designer_id)
values ('洗澡',1,300,3);
insert into SERVICECONTENT (CONTENT,time,price,designer_id)
values ('剪毛',1,400,3);










