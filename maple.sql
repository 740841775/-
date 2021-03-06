-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.42 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 正在导出表  maple_movies.cinema 的数据：~18 rows (大约)
/*!40000 ALTER TABLE `cinema` DISABLE KEYS */;
REPLACE INTO `cinema` (`cid`, `c_name`, `c_img`, `c_adr`, `c_hall`, `c_status`) VALUES
	(1, '丽都影城', 'https://p1.meituan.net/deal/b5525bfcaef132ed5b7934233774fafd69257.jpg@292w_292h_1e_1c', '南部县东风路原北山购物广场3楼（近炮台路）', '', 1),
	(2, '艺美国际影城', 'https://p0.meituan.net/deal/974df8591c86eb19e433b49ac0a1d874640047.jpg@292w_292h_1e_1c', '营山县三星美庐5F', '', 1),
	(3, '西充东门桥电影院', 'https://p1.meituan.net/deal/__49773248__4862483.jpg@292w_292h_1e_1c', '西充县晋城大道二段德惠购物中心三层', '', 1),
	(4, '保利万和国际影城(太平寺店)', 'https://p0.meituan.net/poi/f878583f11679212427b70631b76c997131072.jpg@292w_292h_1e_1c', '阆中市太平寺街19号（重庆家福火锅对面）', '', 1),
	(5, '南部太平洋电影城', 'https://p1.meituan.net/deal/2afa1baeb6b253ec8e59385e3e66416f274990.jpg@292w_292h_1e_1c', '南部县桂博大道圣桦时代广场3F', '', 1),
	(6, '福德国际影城', 'https://p0.meituan.net/deal/224185ff98bbc847031632f283523e41206200.jpg@292w_292h_1e_1c', '阆中市七里大道196号（汇洋购物广场河西路口）', '', 1),
	(7, '太平洋电影院线(金城影城)', 'https://p0.meituan.net/deal/75d46d2e3e2c2ed2d8b18a378dd0684e533714.png@292w_292h_1e_1c', '仪陇县金城镇奎星街33号（万和超市）旁', '', 1),
	(8, '横店电影城(青年城店)', 'https://p1.meituan.net/deal/201208/22/1_0822151022.jpg@292w_292h_1e_1c', '顺庆区胜利路南侧泰合·青年城三楼横店电影城', '', 1),
	(9, '保利万和影城(西充店)', 'https://p0.meituan.net/poi/4932c47039ffb87e63542b567ce0660969632.jpg@292w_292h_1e_1c', '西充县晋城镇安汉城B3栋1楼（纪信广场旁）', '', 1),
	(10, '星美影商城(王府井店)', 'https://p1.meituan.net/deal/201208/22/1_0822151022.jpg@292w_292h_1e_1c', '高坪区江东大道中段王府井购物中心5楼', '', 1),
	(11, '仪陇华夏国际影城(新政店)', 'https://p0.meituan.net/deal/2ec7cea0120585b1b17639a717778bb5322263.jpg@292w_292h_1e_1c', '仪陇县琳琅大道81号（德龙广场2楼）', '', 1),
	(12, '太平洋电影城(大都会店)', 'https://p1.meituan.net/poi/a3d7595a2077256cb9d6c61137964a6e92160.jpg@292w_292h_1e_1c', '顺庆区五星花园大都会5楼', '', 1),
	(13, '保利万和时光影城(营山店)', 'https://p1.meituan.net/deal/201208/22/1_0822151022.jpg@292w_292h_1e_1c', '营山县西干道泰和新天地商业街3-6号', '', 1),
	(14, '保利万和国际影城(嘉陵店)', 'https://p1.meituan.net/deal/201208/22/1_0822151022.jpg@292w_292h_1e_1c', '嘉陵区耀目路三段二号（区政府对面光彩市场）', '', 1),
	(15, '大地影院(南充盛世天城店)', 'https://p1.meituan.net/deal/201208/22/1_0822151022.jpg@292w_292h_1e_1c', '嘉陵区嘉南路三段盛世天城3楼', '', 1),
	(16, '星美影商城(新世纪店)', 'https://p1.meituan.net/deal/__31483216__7365181.jpg@292w_292h_1e_1c', '南部县新华路新世纪广场购物中心5楼', '', 1),
	(17, '南充金球影城', 'https://p0.meituan.net/deal/8ba79e2582fb21332d80db3bde71c29b342397.jpg@292w_292h_1e_1c', '顺庆区文化路164号得益时代广场4楼（近家乐福）', '', 1),
	(18, '恒大影城(南充店)', 'https://p1.meituan.net/deal/fdf565c662c8a22dac112d05637d4ce4110792.jpg@292w_292h_1e_1c', '顺庆区府荆南路三段26号恒大绿洲24号楼三、四、五层（恒大绿洲）', '', 1);
/*!40000 ALTER TABLE `cinema` ENABLE KEYS */;

-- 正在导出表  maple_movies.movies 的数据：~37 rows (大约)
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
REPLACE INTO `movies` (`mid`, `m_name`, `m_ename`, `m_poster`, `m_actor`, `m_info`, `m_score`, `m_people`, `m_hot`, `m_date`, `m_time`, `m_type`, `m_area`, `m_ticket`, `m_play`, `m_status`) VALUES
	(1, '地球最后的夜晚', 'Long Day\'s Journey Into Night', 'https://p0.meituan.net/movie/147d6b456b1b62a0507288c5f7369772929342.jpg@160w_220h_1e_1c', '汤唯，黄觉，张艾嘉，李鸿其', '罗紘武（黄觉 饰）因父亲离世再次回到贵州。12年前，好友白猫（李鸿其 饰）被杀，罗紘武在追查凶手左宏元（陈永忠 饰）的过程中，被凶手的情人万绮雯（汤唯 饰）所利用。从此以后，这个神秘的女人构成了他所有的记忆、欲望、信念和梦魇，一段追寻之旅让他发现了被隐藏多年的秘密……', '', '226410', '226410人想看', '2018-12-31', '140分钟', '剧情,爱情,悬疑', '中国大陆 ', '1', '2', 1),
	(2, '狗十三', 'Einstein & Einstein', 'https://p0.meituan.net/movie/feb4cd6eb054232b4851a97bbc2a66d51198036.jpg@464w_644h_1e_1c', '张雪迎，果靖霖，智一桐，周珍', '13岁的少女李玩（张雪迎 饰），由于父母离异，与爷爷（智一桐 饰）奶奶（周珍 饰）生活在一起。正处于青春期的她渴望了解、陪伴和爱。在“要听话”的中国式教育里，李玩也完成了属于她的“成人礼”。电影中，父亲（果靖霖 饰）希望通过一条宠物小狗完成与女儿的和解与沟通，李玩为狗取名“爱因斯坦”，暗潮涌动的青春因“爱因斯坦”意外走失，开启了它汹涌又无奈的成长之路。', '8.2', '', '8.2', '2018-12-07', '121分钟', '剧情', '中国大陆', '4639', '1', 1),
	(3, '毒液：致命守护者', 'Venom', 'https://p0.meituan.net/movie/363e3a7e614d29b2847ff4e62afcd3f42168651.jpg@464w_644h_1e_1c', '汤姆·哈迪，米歇尔·威廉姆斯', '记者埃迪·布洛克（汤姆·哈迪 饰）在调查生命基金会的最新科学实验过程中，受到不明外星物质共生体的入侵与控制，历经挣扎成为亦正亦邪的超级英雄——毒液。他将以毒攻毒，破解生命基金会的惊天阴谋，拯救世界。', '9.2', NULL, '9.2', '2018-11-09', '107分钟', '动作,惊悚,科幻', '美国 ', '188600', '1', 1),
	(4, '海王', 'Aquaman', 'https://p0.meituan.net/movie/c106904da68edd848afd4a320976d051346321.jpg@464w_644h_1e_1c', '杰森·莫玛，艾梅柏·希尔德，妮可·基德曼，帕特里克·威尔森', '海王（杰森·莫玛 饰）是美国DC漫画旗下超级英雄，本名亚瑟·库瑞，是海底之国亚特兰蒂斯的皇后和美国海边一个灯塔看守人的私生子，拥有半人类、半亚特兰蒂斯人的血统，从小就展现出了远超常人的各项体能，以及能在水下自由活动与呼吸，并和海洋生物沟通等异于他人的能力，在前任亚特兰蒂斯国王死后，王位空缺，其母派人找到他，加冕其为亚特兰蒂斯国王、掌管七海，并被赋予了亚特兰蒂斯王权的象征，能操控大海力量，掀起风浪的三叉戟，后与超人、蝙蝠侠等人创立正义联盟，成为正义联盟七大创始人之一。', '9.4', NULL, '9.4', '2018-12-07', '143分钟', '动作,冒险,奇幻', '美国 ', '149100', '1', 1),
	(5, '龙猫', 'となりのトトロ', 'https://p0.meituan.net/movie/c304c687e287c7c2f9e22cf78257872d277201.jpg@464w_644h_1e_1c', '秦岚，糸井重里，岛本须美，千叶繁', '小月（日高法子 配音）的母亲（岛本须美 配音）生病住院了，父亲（糸井重里 配音）带着她与四岁的妹妹小梅（坂本千夏 配音）到乡间居住。她们对那里的环境都感到十分新奇，也发现了很多有趣的事情。她们遇到了很多小精灵，她们来到属于她们的环境中，看到了她们世界中很多的奇怪事物，更与一只大大胖胖的龙猫（高木均 配音）成为了朋友。龙猫与小精灵们利用他们的神奇力量，为小月与妹妹带来了很多神奇的景观，令她们大开眼界。妹妹小梅常常挂念生病中的母亲，嚷着要姐姐带着她去看母亲，但小月拒绝了。小梅竟然自己前往，不料途中迷路了，小月只好寻找她的龙猫及小精灵朋友们的帮助。', '9.2', NULL, '9.2', '2018-12-14', '86分钟', '动画,冒险,奇幻,家庭', '日本', '12100', '1', 1),
	(6, '无名之辈', 'A Cool Fish', 'https://p0.meituan.net/movie/3e7696319c840d4890e947b926259d532809641.jpg@464w_644h_1e_1c', '陈建斌，任素汐，潘斌，章宇', '在一座山间小城中，一对低配劫匪、一个落魄的泼皮保安、一个身体残疾却性格彪悍的残毒舌女以及一系列生活在社会不同轨迹上的小人物，在一个貌似平常的日子里，因为一把丢失的老枪和一桩当天发生在城中的乌龙劫案，从而被阴差阳错地拧到一起，发生的一幕幕令人啼笑皆非的荒诞喜剧。', '9.1', NULL, '9.1', '2018-11-16', '108分钟', '剧情,喜剧,犯罪', '中国大陆', '79000', '1', 1),
	(7, '憨豆特工3', 'Johnny English Strikes Again', 'https://p0.meituan.net/movie/677dce9488e154c11afa8fb2fef0725a831453.png@160w_220h_1e_1c', '罗温·艾金森，本·米勒，欧嘉·柯瑞兰寇，杰克·莱西', '一起网络攻击事件使得英国所有卧底的特务间谍身分曝光，而憨豆特工（罗温·艾金森 饰）则是唯一没有被掀底的特务，于是他就成为英国特务组织的最后一线希望，就此展开这场全新的搞笑动作冒险旅程。他奉命在退休之后重出江湖，立马投入全新任务，希望能揪出主使这起网络攻击事件的骇客。这名骨董级的特派员不但能力有限，而且完全没有进入网络世代，只会用老派落伍的方法进行调查，但是他仍然必须克服先进科技带来的各种挑战，成功完成任务。', '8.6', NULL, '8.6', '2018-11-23', '88分钟', '喜剧,动作,冒险', '法国,美国,英国', '17200', '1', 1),
	(8, '蜘蛛侠：平行宇宙', 'Spider-Man: Into the Spider-Verse', 'https://p1.meituan.net/movie/bb84bede1711265dab1136f7a3dddc782801232.jpg@160w_220h_1e_1c', '彼得·拉姆齐，彭昱畅，沙梅克·摩尔，杰克·M·约翰森', '蜘蛛侠不止一个！漫威首部超英动画巨制《蜘蛛侠：平行宇宙》将经典漫画与CGI技术完美呈现，讲述了普通高中生迈尔斯·莫拉斯如何师从蜘蛛侠彼得·帕克，成长为新一代超级英雄的故事。影片中迈尔斯和从其它平行宇宙中穿越而来的彼得、女蜘蛛侠格温、暗影蜘蛛侠、潘妮·帕克和蜘猪侠集结成团，六位蜘蛛侠首次同框大银幕，对抗蜘蛛侠宇宙最强反派。', '9.1', NULL, '9.1', '2018-12-21', '116分钟', '动画,动作,科幻', '美国', '6346', '1', 1),
	(9, '生活万岁', 'Hello LIfe', 'https://p1.meituan.net/movie/f18a1a371e38920840b315f51e846e271016796.jpg@160w_220h_1e_1c', '李安甫，胡兆翠，康昕', '这是一部由程工、任长箴共同执导的现实题材电影，该电影讲述了15名普通中国人最真实的生活状态，这并无交集的十四段故事谱写着同一个世界角落的生活，它或许艰辛，或许无奈，或许也带着些许苦涩，但每个人都在默默坚持着、爱着这样的生活。', '9.0', NULL, '9.0', '2018-11-27', '94分钟', '纪录片', '中国大陆', '458', '1,3', 1),
	(10, '白蛇：缘起', 'White Snake', 'https://p0.meituan.net/movie/b02bba876e20516d730df453aa3f63994297202.jpg@160w_220h_1e_1c', '杨天翔，张喆，张遥函', '晚唐年间，国师发动民众大量捕蛇。前去刺杀国师的白蛇意外失忆，被捕蛇村少年救下。为帮助少女找回记忆，两人踏上一段冒险旅程，冒险的过程让两人感情迅速升温，但少女蛇妖的身份也逐渐显露，另一边国师与蛇族之间不可避免的大战也即将打响，两人的爱情将要接受巨大考验。', NULL, '31504', '31504人想看', '2018-12-22', '95分钟', '爱情,动画,奇幻', '中国大陆', NULL, '2', 1),
	(11, '日不落酒店', 'Overall Planning', 'https://p1.meituan.net/movie/3c134749f4ce57fb1057a4d9f1e9f2d91798983.jpg@160w_220h_1e_1c', '黄才伦，张慧雯，高叶', '故事发生在一家复古英式酒店，经理石月（黄才伦饰演），从工作到生活，过得像数学公式，无瑕疵且没毛病，年复一年如出一撤。无聊日子终于被一个意外假期所颠覆，妻子（张慧雯饰演）怀孕、乌龙旅途、神秘房客……匪夷所思的离奇事件不断上演，无趣严谨的生活被打破，通关打怪般的解决危机，新生活会不会就在眼前……', NULL, '6504', '6504人想看', '2019-02-05', '100分钟', '喜剧,奇幻', '中国大陆', NULL, '2', 1),
	(12, '命运之夜 天之杯 第一章', 'Fate/stay night [Heaven’s Feel]i.presage flo', 'https://p0.meituan.net/movie/9ef2613395eed698322cdc46ca3f34072433474.jpg@160w_220h_1e_1c', '杉山纪彰，下屋则子，植田佳奈，门胁舞以', '圣杯是传说中可实现持有者一切愿望的宝物，7位Master和7位Servant为了得到圣杯而相互厮杀的仪式被称为圣杯战争。第五次圣杯战争中最关键的人物——间桐樱，父亲时臣为不浪费她的魔术回路将她过继给间桐家。她被间桐脏砚植入了数百的刻印虫，忍受着从肉体到精神上的巨大痛苦。 对间桐樱所隐瞒的状况一无所知的卫宫士郎和间桐樱终于确定了恋爱的关系，然而间桐樱却依然要忍受体内的腐蚀以及间桐慎二残忍的虐待；另一方面，间桐樱的姐姐远坂凛却展现着她在方方面面超越樱的优秀，甚至对卫宫士郎的态度也逐渐暧昧，在这基础之上，间桐樱的自卑与痛苦终于变成了仇恨，孕育在魔力源之中的恶魔瞬间控制了她的内心。', NULL, '7549', '7549人想看', '2019-01-11', '119分钟', '剧情,动画,悬疑', '日本', NULL, '2', 1),
	(13, '来电狂响', 'Kill Mobile', 'https://p1.meituan.net/movie/a596474c1c29118d908d1eff0fd4293f1017066.jpg@160w_220h_1e_1c', '佟大为，马丽，霍思燕，乔杉', '七位好友在聚会中玩了一个游戏，将手机交出，分享所有来电、短信、微信、甚至广告弹窗，掀开了一场啼笑皆非的情感风暴。', NULL, '45263', '45263人想看', '2018-12-29', '103分钟', '喜剧,剧情', '中国大陆', NULL, '2', 1),
	(14, '流浪地球', 'The Wandering Earth', 'https://p1.meituan.net/movie/c3ab4b8f3a0bc3f4d7bf0bf42f1faf9b8119156.jpg@160w_220h_1e_1c', '吴京，屈楚萧，李光洁，吴孟达', '太阳即将毁灭，人类在地球表面建造出巨大的推进器，寻找新家园。然而宇宙之路危机四伏，为了拯救地球，为了人类能在漫长的2500年后抵达新的家园，流浪地球时代的年轻人挺身而出，展开争分夺秒的生死之战。', NULL, '80126', '80126人想看', '2019-02-05', NULL, '科幻', '中国大陆', NULL, '2', 1),
	(15, '大黄蜂', 'BUMBLEBEE', 'https://p1.meituan.net/movie/426f1f3f1b145f763b75a60c7c39c44a535093.jpg@160w_220h_1e_1c', '海莉·斯坦菲尔德，约翰·塞纳，小豪尔赫·兰登伯格，杰森·德鲁克', '故事回到1987年，疲于奔命的大黄蜂在一个加州海岸小镇的废弃场找到避难所，一位女孩查莉（海莉·斯坦菲尔德 饰）即将届满18岁，对未来毫无头绪，却无意间发现了伤痕累累、濒临死亡的大黄蜂，查莉救活了他，但她很快就发现他并不只是一台普通的黄色福斯金龟车。', NULL, '92600', '92600人想看', '2019-01-04', '114分钟', '动作,冒险,科幻', '美国', NULL, '2,3', 1),
	(16, '疯狂的外星人', 'Crazy Alien', 'https://p0.meituan.net/movie/6a21e35ad7106c60967954b165c09b92915222.jpg@160w_220h_1e_1c', '黄渤，沈腾，马修·莫里森，汤姆·派福瑞', '耿浩（黄渤 饰）与一心想发大财的好兄弟大飞（沈腾 饰），经营着各自惨淡的“事业”，然而“天外来客”的意外降临，打破了二人平静又拮据的生活。神秘的西方力量也派出“哼哈二将”在全球搜查外星人行踪。啼笑皆非的跨物种对决，别开生面的“星战”，在中国某海边城市激情上演。', NULL, '177029', '177029人想看', '2019-02-05', NULL, '剧情,喜剧,科幻', '中国大陆,美国', NULL, '2', 1),
	(17, '网络谜踪', 'Searching', 'https://p0.meituan.net/movie/da4eb7b46debc0ee54ec7b5ff371198c944440.jpg@160w_220h_1e_1c', '约翰·赵，米切尔·拉，黛博拉·梅辛，约瑟夫·李', '工程师大卫·金（约翰·赵 饰）一直引以为傲的16岁乖女玛戈特（米切尔·拉 饰）突然失踪。前来调查此案的警探怀疑女儿离家出走。不满这一结论的父亲为了寻找真相，独自展开调查。他打开了女儿的笔记本电脑，用社交软件开始寻找破案线索。大卫必须在女儿消失之前，沿着她在虚拟世界的足迹找到她……', '8.6', NULL, '8.6', '2018-12-14', '103分钟', '剧情,悬疑,犯罪', '美国,俄罗斯', '2762', '1', 1),
	(18, '印度合伙人', 'Pad Man', 'https://p0.meituan.net/movie/2205b5298f91edc2b072f1dbc8d4e46e5518392.jpg@160w_220h_1e_1c', '阿克谢·库玛尔，拉迪卡·艾普特，索娜姆·卡普尔', '原译名《护垫侠》，影片主人公原型是印度企业家Arunachalam Muruganantham，他发明了低成本的卫生护垫制造机，为偏远地区的贫穷家庭带去了有成本效益的女性卫生保障，给印度众多没有受过教育的女性提供了就业机会。故事讲述了印度传统风俗中，女性月事期间会被禁足，而当时卫生护垫的消费颇高不是普通家庭可以承受，为了爱妻可以获得人权自由，主人公（ 阿克谢·库玛尔 饰）顶着“变态”的舆论开始了制造卫生护垫的创业，最终成为印度当地家喻户晓的知名企业家。但是在他事业爱情双丰收时，却不忘初心回到曾经嫌弃和抛弃他的妻子身边，回到了他故乡的小村庄。', '9.3', NULL, '9.3', '2018-12-14', '134分钟', '剧情,喜剧,爱情', '印度', '5870', '1', 1),
	(19, '武林怪兽', 'Kung Fu Monster', 'https://p0.meituan.net/movie/9b3c1b3a7729058950d08be30e9fffe0611181.jpg@160w_220h_1e_1c', '古天乐，陈学冬，郭碧婷，包贝尔', '明朝万历年间，东厂督主孙玉鹤（方中信 饰）奉命前往仙霞山捉拿宫中逃走的怪兽；与此同时，义军少侠甄剑（陈学冬 饰）和师妹熊娇娇（周冬雨 饰）、侠女冷冰冰（郭碧婷 饰）合谋聚集了一帮绿林好汉在花田驿准备劫取一笔价值不菲的官银。未曾想，官银不翼而飞，却迎来了朝廷钦犯封四海（古天乐 饰）、江湖浪子武柏（包贝尔 饰）……更大的危机在于，怪兽就在附近窥视着这一切……', '7.5', NULL, '7.5', '2018-12-21', '104分钟', '喜剧,动作,武侠', '中国大陆,中国香港', '4104', '1,3', 1),
	(20, '绿毛怪格林奇', 'The Grinch', 'https://p0.meituan.net/movie/3e073bbe2abbdad57f6768270acbb6d85873182.jpg@160w_220h_1e_1c', '本尼迪克特·康伯巴奇，卡梅伦·丝蕾，拉什达·琼斯', '在遥远的松饼山上，有一个胡谷镇，镇民们最爱的圣诞节眼看就要到了，镇上张灯结彩，喜气洋洋。然而，在胡谷镇以北的一个垃圾山上，住着一个人人都害怕的“怪物”——格林奇（本尼迪克特·康伯巴奇 配音）。他决定要报复镇民，在圣诞节那天，他带上他的狗麦克斯，乔装成圣诞老人和驯鹿的样子，悄悄地潜入胡谷镇……', '8.7', NULL, '8.7', '2018-12-14', '90分钟', '喜剧,动画,家庭', '美国 ', '2366', '1', 1),
	(21, '叶问外传：张天志', 'MASTER Z:THE IP MAN LEGACY', 'https://p1.meituan.net/movie/4eb3bb083ccedc99fe2dd5febffe1ded1418012.jpg@160w_220h_1e_1c', '张晋，戴夫·巴蒂斯塔，柳岩，杨紫琼', '作为《叶问》系列影片，电影《叶问外传：张天志》延续了《叶问3》的故事，讲述了同为咏春传人的张天志在比武惜败叶问后，决意放下功夫、远离江湖纷争，但面对接踵而至的连番挑衅，面对家国大义遭受的恶意侵犯，决定重拾咏春惩戒毒贩、“以武之道”捍卫民族道义尊严的故事。张晋联合杨紫琼、托尼·贾、戴夫·巴蒂斯塔、郑嘉颖等中外最强功夫打星阵容，为观众呈现咏春、泰拳、西洋拳、洪拳、少林等中外功夫的“硬杠”对抗。影片突破银幕上常见的英雄形象，不仅让观众看到一名“失意英雄”的重新崛起，更能在一场场精心设计的打戏中体会高手间的彼此试探、挚友间的切磋较量、正义中的胜负抗衡……作为2018年圣诞元旦档唯一一部武打动作片，《叶问外传：张天志》势必为观众奉上2018最硬的一场功夫盛宴。', '9.2', NULL, '9.2', '2018-12-21', '107分钟', '动作', '中国大陆,中国香港', '2725', '1', 1),
	(22, '新喜剧之王', 'The New King of Comedy', 'https://p0.meituan.net/movie/ec30a55b1b20e7b8621bfb7682b530f9568248.jpg@160w_220h_1e_1c', '王宝强', '周星驰2019春节档新作，回归小人物喜剧，重新聚焦在平凡生活中不甘平凡的人。“七大武器之首”折凳再现江湖，原汁原味走心加接地气，纯搞笑风格的周星驰式喜剧，势必在2019年的大年初一为观众带来新一轮的笑声和感动。', NULL, '40640', '40640人想看', '2019-02-05', NULL, '剧情,喜剧', '中国香港', NULL, '2', 1),
	(23, '“大”人物', 'THE BIG SHOT', 'https://p0.meituan.net/movie/f86fec6352dc47ef077b8454a64ff174898801.jpg@464w_644h_1e_1c', '王千源，包贝尔，王迅，王砚辉', '无力维权的修车工遭遇非法强拆后，选择跳楼自杀；随着小刑警孙大圣（王千源 饰）调查的深入，发现这场看似简单的民事纠纷背后其实另有隐情；随着嫌疑目标的锁定，赵泰（包贝尔 饰）和崔京民（王迅 饰）为代表的反派集团被盯上后，公然藐视法律挑衅警察。面对反派集团金钱诱惑、顶头上司的警告劝阻、家人性命遭受威胁，这场力量悬殊的正邪较量将会如何收场……', NULL, '7894', '7894人想看', '2019-01-11', '107分钟', '动作,犯罪', '中国大陆', '73', '2,3', 1),
	(24, '印度暴徒', 'Thugs Of Hindostan', 'https://p0.meituan.net/movie/84f5bb5f7fb0191298d0e3e734b0fde64754356.jpg@464w_644h_1e_1c', '阿米尔·汗，阿米特巴·巴强，法缇玛·萨那·纱卡', '故事的背景是在1795年东印度公司殖民统治印度期间，殖民统治者想要抓住反抗组织”阿扎德“的领袖（阿米特巴·巴强 饰）于是找来了混混弗朗基（阿米尔·汗 饰）充当间谍，但弗朗基在潜伏过程中却有了另外的想法，一段充满了意料之外的动作冒险故事由此展开.....', NULL, '16405', '16405人想看', '2018-12-28', '121分钟', '动作,冒险,喜剧', '印度', '145', '2', 1),
	(25, '阿丽塔：战斗天使', 'Alita: Battle Angel', 'https://p1.meituan.net/movie/a670fb16ae2faa06723c13f62e620662416415.jpg@160w_220h_1e_1c', '詹妮弗·康纳利，艾莎·冈萨雷斯，罗莎·萨拉查', '阿丽塔（罗莎·萨拉扎尔 饰）醒来发现既不记得自己是谁，也不认识这个未来世界。善良的医生依德（克里斯托夫·沃尔兹 饰）收留了阿丽塔，因为他意识到在这被遗弃的机器人外壳下，潜藏着一个有着非凡的心灵。当阿丽塔逐步适应她的新生活和钢铁城的街头险恶时，依德想试图让她远离她那神秘的过往，但她的街头朋友雨果（基恩·约翰逊 饰）则试图帮她唤起回忆。城市腐败统治者对阿丽塔展开了追捕，她却因此发现了有关过去的线索——她具有独特而强大的战斗能力。若她能够逃离他们的控制，她就能成为拯救她的朋友，家人和她所爱世界的关键。', NULL, '10256', '10256人想看', '2018-12-23', ' 144分钟', '动作,冒险,科幻', '美国', NULL, '2,3', 1),
	(26, '熊出没·原始时代', 'Boonie Bears: Blast into the Past', 'https://p1.meituan.net/movie/0ca4644c25ff01b7779a06e1ce4f1b011824360.jpg@160w_220h_1e_1c', '孟雨田，刘思奇，刘沛', '熊大熊二光头强意外穿越回恢宏的石器时代，与猛犸象、剑齿虎、史前大鸟等一众奇特生物、以及原始人类开启一段眼界大开的奇幻之旅！原始时代瑰丽非常，却又危机四伏。熊强三人组磕磕绊绊，笑料百出。一只可爱狼女一路相伴，背后竟是人族与狼族的对立。面对原始人类的不断质疑、凶猛狼族的步步紧逼、自然危机的全面爆发，熊强究竟何去何从？他们又能否回归现代？一场关于守护与成长、爱与勇气的冒险，已经拉开序幕……', NULL, '9447', '9447人想看', '2019-02-05', '90分钟', '喜剧,动画,冒险', '中国大陆', NULL, '2', 1),
	(27, '飞驰人生', 'Pegasus', 'https://p0.meituan.net/movie/e5f0a55327d5be1caa9f110abcca23865841112.jpg@464w_644h_1e_1c', '沈腾，黄景瑜，尹正', '曾经在赛车界叱咤风云、如今却只能经营炒饭大排档的赛车手张驰（沈腾 饰）决定重返车坛挑战年轻一代的天才。然而没钱没车没队友，甚至驾照都得重新考，这场笑料百出不断被打脸的复出之路，还有更多哭笑不得的窘境在等待着这位过气车神……', NULL, '197984', '197984人想看', '2019-02-05', NULL, '喜剧', '中国大陆', NULL, '2', 1),
	(28, '小猪佩奇过大年', 'Peppa Pig', 'https://p0.meituan.net/movie/79e41225b99b054f6eb8b871f14441a72782157.jpg@464w_644h_1e_1c', '朱亚文，刘芸', '阿里影业与英国Entertainment One合拍，讲述汤圆、饺子和爸爸妈妈生活在一个温暖的家庭里。除夕这天，爷爷奶奶姥姥姥爷与他们相聚。大家体验了传统习俗，经历了很多意想不到的事情。他们和佩奇乔治一样，每经历一件事情，就会让他们更加热爱彼此，热爱家人，热爱生活。', NULL, '14862', '14862人想看', '2019-02-05', NULL, '喜剧,动画,家庭', '中国大陆,英国', NULL, '2', 1),
	(29, '功夫营救', 'Kung Fu Rescue', 'https://p1.meituan.net/movie/bafc2ba849a8e7bc394604c9edf365623655662.jpg@464w_644h_1e_1c', '潘元甲，黄一飞，巩汉林', '元东（潘元甲 饰）为了救自己的师兄，得知光哥（文东俊 饰）豹哥（任毅 饰）是因为祖传金手而战，为了化解两人的恩怨元东决定与得到金手者决战，元东在积极的备战中刻苦训练，感动光哥豹哥两人决定把自己所学功夫传给元东，最终击败日本拳手。', NULL, '632', '632人想看', '2019-01-04', ' 95分钟', '喜剧,爱情,动作', '中国大陆', NULL, '2', 1),
	(30, '汝海风云', 'The Business Storm of Ruhai', 'https://p1.meituan.net/movie/245d7b614dbbd057d8e720205d34b5194566654.jpg@464w_644h_1e_1c', '刘牧，爱戴', '企业家龙鸣乡在寻访汝瓷烧制工艺的过程中被买通的人手困在深山而音信全无，情急之下龙鸣乡妻子不得不求助旧友聂宏斌，却不想早已侨居海外的聂宏斌毅然回国却深陷利益泥潭，随着调查的逐渐深入，不仅发现昔日的至交好友或成为幕后的黑手，连自己的生命也受到威胁。曾经为了义气能“共苦”的患难兄弟，如今反目成仇痛下杀招而不能“同甘”，龙鸣乡是否丧身深山，聂宏斌会否被金钱腐蚀，阴谋背后究竟是什么利益牵扯？最毒兄弟的纠葛将观众也带入利益与义气的漩涡，迷局已然设下……', NULL, '1376', '1376人想看', '2019-01-11', '91分钟', '动作,犯罪', '中国大陆', NULL, '2', 1),
	(31, '德鲁大叔', 'Uncle Drew', 'https://p0.meituan.net/movie/3459a69d9c5a58a75ca1eaae34178efc3836248.jpg@464w_644h_1e_1c', '尼克·克罗尔，沙奎尔·奥尼尔，', '达克斯（里尔·莱尔·哈瓦瑞 饰）为了一圆自己的篮球梦，参加在洛克公园举办的街头篮球锦标赛。在他输给对手穆奇后，自己的运势不断地走下坡路，直到达克斯遇见了前街头霸主——德鲁大叔（凯里·欧文 饰），希望获得他的助力，而德鲁大叔提出建立自己的球队。 为此，两人共同出发去寻找德鲁大叔的老队员们（沙奎尔·奥尼尔、克里斯·韦伯、雷吉·米勒、内特·罗宾逊），之后一场场精彩绝伦的比赛不断上演，也发生了一系列趣味横生的故事。', NULL, '14326', '14326人想看', '2019-01-11', '104分钟', '喜剧,运动', '美国', '4247', '1,3', 1),
	(32, '密室逃生', 'Escape Room', 'https://p1.meituan.net/movie/4ddc3633e95e20034db9dcf53f1fb8b51620154.jpg@464w_644h_1e_1c', '泰勒·莱伯恩，洛根·米勒', '六位身份各异的陌生人，为赢取高额奖金，在神秘盒子的指引下受邀参与世界顶级密室逃脱游戏。谁知密室内布局精良机关重重，陷阱遍布杀机暗藏。是刺激游戏，还是博命赌局？谁在背后操控这一切？谁能够成功破解谜局，逃出生天？', NULL, '3328', '3328人想看', '2019-01-18', NULL, '悬疑,惊悚,犯罪', '美国', NULL, '1,3', 1),
	(33, '很高兴遇见·你', 'Only Love Can Do This to Me', 'https://p1.meituan.net/movie/49604845d5d03524f3018cbeee84ccc711103423.jpg@464w_644h_1e_1c', '凌正辉，庞璐佳', '物理学博士陈丁（凌正辉 饰）怎么也想不通，谈了五年的初恋女友，为何突然提出分手，决定赶去千里之外挽回。他偶然结识了古灵精怪的华裔少女小维（庞璐佳 饰）。一辆车，两个人，朝夕相处的五天，帅气背包客约翰逊的闯入更让旅途变得惊心动魄。陈丁和小维从互相看不惯到慢慢了解，人生心结也因对方逐渐解开。就在此时，陈丁见到了女友。。。', NULL, '2240', '2240人想看', '2019-01-11', '92分钟', '爱情,青春', '中国大陆', NULL, '1，3', 1),
	(34, '廉政风云', 'Integrity', 'https://p0.meituan.net/movie/ccfb0d68b2a7033a8ba5b9593570b519331512.jpg@464w_644h_1e_1c', '张家辉，刘青云，袁咏仪', '廉政公署一宗经历多年调查的严重非法内销行贿案件，竟因首被告理达贸易集团负责人陈超群弃保潜逃，以及唯一重要证人兼举报者，理达的前任财务总监许植尧（张家辉 饰）缺席出庭作证，导致法庭勒令延审一星期！为了7天后案件顺利重审，ICAC展开全面行动。负责此案的队长陈敬慈（刘青云 饰）和负责寻找证人的江雪儿（林嘉欣 饰）原是廉政公署一对恩爱夫妻，如今已分居多时，为了案件不得不联手合作。在抓捕陈超群和寻找许植尧的过程中两人都意外发现他们背后隐藏的另一重身份。一个谜团的解开是另一个谜团的开启，背后的阴谋远远超出所有人的想象，烟幕笼罩下光明之路在何方？', NULL, '29188', '29188人想看', '2019-02-05', NULL, '悬疑,犯罪', '中国香港,中国大陆', NULL, '1', 1),
	(35, '营救汪星人', 'Year of the dog', 'https://p1.meituan.net/movie/de6f3201c82febfae5758292a8d9837110040205.jpg@464w_644h_1e_1c', '拉布拉多，博美，哈士奇', '退役警犬训练员，与其训练多年的立功无数的功勋犬拉布拉多——大雄，任职星级宠物俱乐部店长，收养了十多只流浪犬，一夜之间街坊邻居的爱犬全部失踪。成斌与大雄踏上了营救之路，并展开了惊心动魄的生死营救。营救途中意外卷入犯罪团伙的案件中，成斌与大雄及流浪狗联合与犯罪团伙作斗争，勇获全胜，为国家安定繁荣贡献了一份力量。最后，一百多只汪星人重获自由的故事。', NULL, '68202', '68202人想看', '2019-03-08', '105分钟', '喜剧,动作,悬疑', '中国大陆 ', '210', '1,3', 1),
	(36, '好好回家', 'Home of the Road', 'https://p1.meituan.net/movie/057268f001cfa5f18588bfcb464390071019362.jpg@464w_644h_1e_1c', '王东林，韩斯斯斯', '影片根据十堰的真人真事改编，全剧以写实的手法，讲述了失联儿童李春雷（刘子畅 饰）在“失家—寻家—回家”过程中发生的一系列的成长故事和得到好心人帮助的暖心经历。该片以独特的视角关注失联儿童这个特殊群体，以孩童的纯真眼光观察思考当下的社会生活，以寻家之路为线索，表现失联儿童在社会的关爱下砥砺成长，养成善良、感恩、坚强、勇敢的良好品行。同时也引发了家长对简单粗暴的家庭教育的认真反思。激励青少年在成长过程中养成积极向上，感恩等良好思想品德。', NULL, '786', '786人想看', '2019-01-05', '87分钟', '剧情', '中国大陆', NULL, '1', 1),
	(37, '沉默的雪', 'Silence Snow', 'https://p0.meituan.net/movie/80b2b3b00255ee867c5b91ce3c69815b888099.jpg@464w_644h_1e_1c', '任宇，陈绿', '一次意气争斗，一场猝不及防的死亡，逃亡路上，是兄弟的临终嘱托和身份之谜。神秘的鄂温克族，一个低调沉默的男人，扑朔迷离的身份，一次现代与传统的艰难融合，一段恩怨情仇纠缠的痛苦时光，人性和情感的激烈对撞中，善恶真假结局如何……', NULL, '553', '553人想看', '2019-01-08', '106分钟', '悬疑,犯罪', '中国大陆', NULL, '1，2', 1);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;

-- 正在导出表  maple_movies.picture 的数据：~20 rows (大约)
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
REPLACE INTO `picture` (`tid`, `t_img`, `t_status`) VALUES
	(1, 'https://p1.meituan.net/movie/85b84bac8092f5fd667bd9c703565ed41973881.jpg@230w_129h_1e_1c', 1),
	(2, 'https://p1.meituan.net/movie/13cfb1ea642371f435ad45580413f24d1497926.jpg@230w_129h_1e_1c', 1),
	(3, 'https://p1.meituan.net/movie/3613fbb916bff52e1df8c037460bc50e936134.jpg@230w_129h_1e_1c', 1),
	(4, 'https://p1.meituan.net/movie/fdc4e695d8f858ca40c6a9b2140b6945795774.jpg@230w_129h_1e_1c', 1),
	(5, 'https://p0.meituan.net/movie/dd8ff72b0712327c8bf6b38dd47d7518935696.jpg@230w_129h_1e_1c', 1),
	(6, 'https://p0.meituan.net/movie/f0479e62a5ba76ff915ea9fb3df82a871434243.jpg@230w_129h_1e_1c', 1),
	(7, 'https://p0.meituan.net/movie/e4b6908b5c270f7b76552aacafa5dc951011158.jpg', 1),
	(8, 'https://p0.meituan.net/movie/e54d7404e1d7789b2eed7a35cd78ee4e1003312.jpg', 1),
	(9, 'https://p1.meituan.net/movie/a904b5f036ce7633dcb40e76fdef92d6159001.jpg@230w_129h_1e_1c', 1),
	(10, 'https://p0.meituan.net/movie/1b5129845f5b1bd6857e20ebb926e71f1068131.jpg@230w_129h_1e_1c', 1),
	(11, 'https://p0.meituan.net/movie/2d8d2bb176e793f0e5c5710bc5fbf003929127.jpg@230w_129h_1e_1c', 1),
	(12, 'https://p1.meituan.net/movie/a6b9c3bad0c771025d73bbb22b8d060b983785.jpg@230w_129h_1e_1c', 1),
	(13, 'https://p1.meituan.net/movie/7f1bffa640ee1a0e6979a95141258d5971632.jpg@230w_129h_1e_1c', 1),
	(14, 'https://p0.meituan.net/movie/6863688e1c4d6921de85cff34cb2817b286789.png@230w_129h_1e_1c', 1),
	(15, 'https://p1.meituan.net/movie/fbea07d7a6de88b593a89ce929fbc1752465914.jpg@230w_129h_1e_1c', 1),
	(16, 'https://p0.meituan.net/movie/2f38ddd3e7d228bd6e5bd4f119fbb075107134.jpg@230w_129h_1e_1c', 1),
	(17, 'https://p1.meituan.net/movie/e18c306a87058f5b88c159e604150a5a911360.jpg@230w_129h_1e_1c', 1),
	(18, 'https://p1.meituan.net/movie/63bba73f958b5e2cbc1cf7c835991710903168.jpg@230w_129h_1e_1c', 1),
	(19, 'https://p0.meituan.net/movie/8b13f64f3b2e481bc6e0c18f22ac5674667533.jpg', 1),
	(20, 'https://p0.meituan.net/movie/2f779aeb207a1a77be8e43bb855e5a481302172.jpg', 1);
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;

-- 正在导出表  maple_movies.preview 的数据：~25 rows (大约)
/*!40000 ALTER TABLE `preview` DISABLE KEYS */;
REPLACE INTO `preview` (`pid`, `p_name`, `p_pic`, `p_title`, `p_url`, `p_status`) VALUES
	(1, '命运之夜 天之杯 第一章', 'https://p1.meituan.net/movie/0862fcf531e3b10e28f9ccd442300dc8329489.jpg@480w_270h_1e_1c', '《命运之夜——天之杯：恶兆之花》定档预告片', 'http://preview.ewang.com/movie/videos/854x480b6ab444ef3b44dac84aa651af26ff402.mp4', 1),
	(2, '来电狂响', 'https://p0.meituan.net/movie/3f8fe3d00910df4101a6a5afa957b5d7239880.jpg@230w_129h_1e_1c', '《来电狂响》预售开启，袁娅维献唱同名主题曲魔性洗脑引爆贺岁！', 'http://preview.ewang.com/movie/videos/854x480c7177c0cd2554c40a1ed4a649f64ff21.mp4', 1),
	(3, '大黄蜂', 'https://p1.meituan.net/movie/df2dd0cd307115af86c0211c81513fb017485.jpg@230w_129h_1e_1c', '《大黄蜂》“叱咤蜂云”版预告片', 'http://preview.ewang.com/movie/videos/854x48012065460cf534000b19ab761e9881eaf.mp4', 1),
	(5, '熊出没·原始时代', 'https://p1.meituan.net/movie/d7d17e440b4e3471e0f6cd592e524d6d23733.jpg@230w_129h_1e_1c', '《熊出没·原始时代》发首款预告与全新海报  揭秘壮阔史前世界', 'http://preview.ewang.com/movie/videos/854x480d5ca2058193c4ade802e8605658b83f4.mp4', 1),
	(6, '地球最后的夜晚', 'https://p0.meituan.net/movie/8a431c675a2e08ed1addd49b5c66325e15497.jpg@230w_129h_1e_1c', '《地球最后的夜晚》定档预告片', 'http://preview.ewang.com/movie/videos/854x480d7715f6bdb5f478a826f12b2afa66cf6.mp4', 1),
	(7, '流浪地球', 'https://p0.meituan.net/movie/eb444551af23a8be2dc5112dcbb40b26357058.jpg@230w_129h_1e_1c', '《流浪地球》“行星发动机”版预告片', 'http://preview.ewang.com/movie/videos/854x4800b3185cccb344ea883468dfc14907b3a.mp4', 1),
	(8, '白蛇：缘起', 'https://p1.meituan.net/movie/f78d89185c5e52dd488d878c17a8b74c20966.jpg@230w_129h_1e_1c', '《白蛇：缘起》燃情版预告片 巅峰对决一触即发', 'http://preview.ewang.com/movie/videos/854x4804710d244b09b4a9fb98327557252c1ff.mp4', 1),
	(12, '飞驰人生', 'https://p1.meituan.net/movie/fd659892bc6ecbd6d530c2b28ace8c441498780.png@230w_129h_1e_1c', '《飞驰人生》“2019赚钱的秘诀”预告，沈腾报班学致富却被坑了', 'http://preview.ewang.com/movie/videos/854x48021a2f2e73cab4686b2994d46e5750086.mp4', 1),
	(14, '汝海风云', 'https://p0.meituan.net/movie/3c0cdee0e3dd90a8b294f88a1bb9f24a21712.jpg@230w_129h_1e_1c', '《汝海风云》预告片', 'http://preview.ewang.com/movie/videos/556x320b2a7ccfc51de47c1b8ec3df773fab151.mp4', 1),
	(15, '功夫营救', 'https://p0.meituan.net/movie/df446e181f1cc71f849c2fbb21e567e022989.jpg@230w_129h_1e_1c', '《功夫营救》爆燃版预告片', 'http://preview.ewang.com/movie/videos/854x480014b8be928d7428ba940d907ef0d927e.mp4', 1),
	(16, '小猪佩奇过大年', 'https://p0.meituan.net/movie/2f059c0b3de360430efc14dca8e34d9d27056.jpg@230w_129h_1e_1c', '《小猪佩奇过大年》孩子最爱看 电影深度路透', 'http://preview.ewang.com/movie/videos/854x4800cfe4829eb424101bd343dd530aaa83c.mp4', 1),
	(17, '德鲁大叔', 'https://p1.meituan.net/movie/7f41c7a79c79200d4cf93791cd1dc6d337936.jpg@230w_129h_1e_1c', '《德鲁大叔》先导版预告片', 'http://preview.ewang.com/movie/videos/854x4802f23173382b04cc0b10e756bcb39591f.mp4', 1),
	(18, '密室逃生', 'https://p0.meituan.net/movie/d047cfa42fd458a333fdd11fe9cff8a827226.jpg@230w_129h_1e_1c', '《密室逃生》发布“危机四伏”版预告，处处杀机让人无处可逃', 'http://preview.ewang.com/movie/videos/854x48079924272c84441fd863c906cd722da86.mp4', 1),
	(19, '很高兴遇见·你', 'https://p1.meituan.net/movie/6bc00887f5d9535b2ba81e5b2a2b5f0831188.jpg@230w_129h_1e_1c', '《很高兴遇见·你》“请表白”第三话：我一见钟情的人已经结婚了', 'http://preview.ewang.com/movie/videos/854x480b0bffc642bbb4ec8b2e65d3f05f15189.mp4', 1),
	(20, '廉政风云', 'https://p1.meituan.net/movie/6ffea64fec1aed8a44365cb3b5f1832f287936.png@230w_129h_1e_1c', '《廉政风云》引爆惊天贪腐大案，金牌出击打大老虎！', 'http://preview.ewang.com/movie/videos/854x4803bf80c4e48924eca9cb39d064b4ac975.mp4', 1),
	(22, '营救汪星人', 'https://p0.meituan.net/movie/21b133bd08021d74c020b3904d5a49e120467.jpg@230w_129h_1e_1c', '《营救汪星人》预告片', 'http://preview.ewang.com/movie/videos/854x48061a7362df5f9431887a10a6b0f9d2f67.mp4', 1),
	(23, '好好回家', 'https://p0.meituan.net/movie/34a8516c43889aa1afd0b667b5b4ce9c8932228.jpg@230w_129h_1e_1c', '《好好回家》预告片1', 'http://preview.ewang.com/movie/videos/854x4802fad9e5820fb43bcb0e815691dfa1de2.mp4', 1),
	(25, '温暖之城之红日亭', 'https://p1.meituan.net/movie/e6fc16c68c24204e550bf23e993afa7d17578.jpg@230w_129h_1e_1c', '《温暖之城之红日亭》温暖版预告片', 'http://preview.ewang.com/movie/videos/854x480abf409e72afe4645935fffe214180105.mp4', 1),
	(26, '沉默的雪', 'https://p1.meituan.net/movie/30fb432911ec1d3e91df2c7adbf8f9f51698588.jpg@230w_129h_1e_1c', '《沉默的雪》入世版预告片', 'http://preview.ewang.com/movie/videos/854x480c32b6698df0c43e6a2b22a262cb95227.mp4', 1),
	(27, '我想吃掉你的胰脏', 'https://p0.meituan.net/movie/64b3c71b9108e2e17fe1af61cbb4130715016.jpg@230w_129h_1e_1c', '《我想吃掉你的胰脏》告白篇预告 ', 'http://preview.ewang.com/movie/videos/854x480dc3b13c03bd347f5b57db53085ca564b.mp4', 1),
	(28, '一条狗的回家路', 'https://p1.meituan.net/movie/a2132bb9acbad67a7e81147c4721844e968272.jpg@230w_129h_1e_1c', '《一条狗的回家路》“即刻启程”版预告 贝拉冒险回家诠释“一眼万年”', 'http://preview.ewang.com/movie/videos/854x480ea7df06c7bd24661b7f2f63f44d768e3.mp4', 1),
	(29, '神探蒲松龄', 'https://p1.meituan.net/movie/6d628e867ce9ac1ccdba3de020465dd5417065.jpg@230w_129h_1e_1c', '《神探蒲松龄》发布“钟情你”特辑  钟楚曦红裙造型大气惊艳', 'http://preview.ewang.com/movie/videos/854x480dcb37ba40c6b45519a79484f2e698d32.mp4', 1),
	(30, '命运之夜——天之杯：恶兆之花', 'https://p0.meituan.net/movie/b8be98660fe016cb6f19d85cbe2ccecf937806.jpg@230w_129h_1e_1c', '《命运之夜——天之杯：恶兆之花》角色版预告片', 'http://preview.ewang.com/movie/videos/854x4807fc2fd84be724fe8a2fc5bac514f290a.mp4', 1),
	(31, '杨门女将之女将初征', 'https://p0.meituan.net/movie/516996c2120a4d4d5821b63dc7d75cac48721.jpg@230w_129h_1e_1c', '《杨门女将之女将初征》《杨门女将之女将初征》终极预告片', 'http://preview.ewang.com/movie/videos/854x4804748cfc43d384324937c2931680572f7.mp4', 1),
	(32, '疯狂的契约', 'https://p1.meituan.net/movie/f9593c5ad6c4f43b8c2a223ce1c0d5cb532734.jpg@230w_129h_1e_1c', '《疯狂的契约》定档预告片', 'http://preview.ewang.com/movie/videos/854x48054c27c77e5f34f8c8cf230b8d1787da6.mp4', 1);
/*!40000 ALTER TABLE `preview` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
