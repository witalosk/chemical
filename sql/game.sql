BEGIN TRANSACTION;
CREATE TABLE "user" (
	`userId`	INTEGER,
	`mailAddress`	TEXT,
	`password`	TEXT,
	`nickName`	TEXT,
	`coin`	INTEGER DEFAULT 0,
	`level`	INTEGER DEFAULT 1,
	`exp`	INTEGER DEFAULT 0,
	`loginTimes`	INTEGER DEFAULT 0,
	`lastLogin`	TEXT,
	PRIMARY KEY(`userId`)
);
INSERT INTO `user` VALUES (1,'test@test.jp','test','テスト',0,1,0,0,'0000-00-00');
INSERT INTO `user` VALUES (4,'shun_september@live.jp','$2y$10$/ixDy7GWZvGst3beI8ucgu0qZHGX695o5.lZ/3IIAk5eLuBIy/SM2','shun',13500,1,0,64,'20180322');
INSERT INTO `user` VALUES (5,'a','$2y$10$6mNLms2ziI.D9BxuRWJhG.cr.bm7BNQXLoDhSHD/hbYQ3o2TdlyfK','a',400,1,0,2,'20170109');
INSERT INTO `user` VALUES (6,'flexiblewing.7010@gmail.com','$2y$10$w0R85zP1YCFhRKvCCvD6muNusDAbPprgLJkahNNIccXorw.gFgqN2','おーみや',10150,1,0,10,'20171020');
INSERT INTO `user` VALUES (7,'s1511451@u.tsukuba.ac.jp','$2y$10$5lYPq8UfJAz.w5OlORyqb.KHU6f/Su5tiEZ7UedXQzVi81rMxtOPW','tubo',0,1,0,3,'20161205');
INSERT INTO `user` VALUES (8,'b','$2y$10$DxJJE2RfqoHAOOiwU5HQAeRCdyvxGU6CWhzVsKmFAzYiUpqZ5iska','b',200,1,0,1,'20161118');
INSERT INTO `user` VALUES (9,'aaa','$2y$10$uLOD2bNarAuqRX4L3e.jduBTThdTYLmkxo1GDB5tvxC8A0Y4/ARR6','a',150,1,0,2,'20161206');
INSERT INTO `user` VALUES (10,'mast','$2y$10$S7eMFUhE.N8qNu4xiV3PtOuKSRsekn/eFEdBvuVFF2CN6Bo1BDe9.','mast',5750,1,0,3,'20170102');
INSERT INTO `user` VALUES (11,'shapps@live.jp','$2y$10$520FGBUSDW0Chpa4vYnB8.v05uBvpdWt1JoJ7aLHz0OX5HgDRHlJG','ういた',2300,1,0,4,'20161209');
INSERT INTO `user` VALUES (12,'k.nao0626@gmail.com','$2y$10$aSl2Fyh0oufzlkGJrZaMaO9uW4AaDHDUXvqkE6gxSD7jbS2K2Ck82','よいオバケ',3200,1,0,3,'20170704');
INSERT INTO `user` VALUES (13,'ness12@live.jp','$2y$10$Ok1T9zlomGj86iHSIUqbPOI31N.AIkxdTZLQlX17wq6rW/Mmw.tfy','Naoboe',0,1,0,2,'20161215');
INSERT INTO `user` VALUES (14,'qqq','$2y$10$aSoFRzwRSXRrd/opOASlDeNIFzWlr4E0ViIagef35bj53nK4lEFOG','qqq',0,1,0,1,'20170101');
INSERT INTO `user` VALUES (15,'kellogg-frog.abec@ymobile.ne.jp','$2y$10$Cranjtd3FigxVovEModdpe2y86C6d3gQk4YnKAIkwJsh3t7iXXVke','abetamu',950,1,0,1,'20170107');
INSERT INTO `user` VALUES (16,'aho','$2y$10$BCAWParUC9maCgnhsuYvCuPflVWMiyt1lUUN7BDm0rQrHb7J7jMOK','aho',600,1,0,2,'20170118');
INSERT INTO `user` VALUES (17,'wisteria@coins.tsukuba.ac.jp','$2y$10$31O5dJVgO.O0bvLeTTey4uwKSfQorNIdXg4pi8E1CvSnGIA5DAEby','wisteria',950,1,0,1,'20170118');
INSERT INTO `user` VALUES (18,'takumi.funasaka@gmail.com','$2y$10$3VGCHpmbf1tjadL6BIFgIOJvbSRT5Ako/KqOr1CofsuZBoyUFYEUW','funa',200,1,0,1,'20170220');
INSERT INTO `user` VALUES (19,'kikaomot@kdt.biglobe.ne.jp','$2y$10$XMRTWrY.28UfiVcAhLszPOIRtR9Q3Z9dfWnvKGH/wptLOzD9pFcU.','tom',100,1,0,1,'20170221');
INSERT INTO `user` VALUES (20,'pg.990908-s77@ezweb.ne.jp','$2y$10$/RCGF7OtbkZFuvJohWUxNOvXJAW84LMcYfU8/moT0oDR1VVJ4Wo9i','Kogawa',1550,1,0,1,'20170524');
INSERT INTO `user` VALUES (21,'tubo2haru','$2y$10$PQF/0JIiMb73gRElwLsjYepjMqWf1qieHwRqOEIpe0ZlaP/q7vQcW','つぼ',2450,1,0,2,'20180320');
CREATE TABLE `read` (
	`readId`	INTEGER,
	`userId`	INTEGER,
	`mesId`	INTEGER,
	PRIMARY KEY(`readId`)
);
CREATE TABLE `message` (
	`mesId`	INTEGER,
	`userId`	INTEGER,
	`mesDate`	TEXT,
	`mesText`	TEXT,
	PRIMARY KEY(`mesId`)
);
INSERT INTO `message` VALUES (1,4,'2016/12/04 15:54','ケイ素を手に入れた！');
INSERT INTO `message` VALUES (2,4,'2016/12/04 15:59','水を手に入れた！');
INSERT INTO `message` VALUES (3,4,'2016/12/04 16:00','塩化ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (4,4,'2016/12/05 01:06','塩化ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (5,4,'2016/12/05 01:27','[★3]プラチナを手に入れた！');
INSERT INTO `message` VALUES (6,4,'2016/12/05 01:31','[★3]プラチナを手に入れた！');
INSERT INTO `message` VALUES (7,4,'2016/12/05 01:31','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (8,4,'2016/12/05 01:31','[★2]二酸化硫黄を手に入れた！');
INSERT INTO `message` VALUES (9,4,'2016/12/05 01:34','[★2]二酸化硫黄を手に入れた！');
INSERT INTO `message` VALUES (10,4,'2016/12/05 01:34','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (11,4,'2016/12/05 04:09','[★2]塩化マンガン(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (12,4,'2016/12/05 04:09','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (13,4,'2016/12/05 04:09','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (14,4,'2016/12/05 04:18','[★2]塩化マンガン(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (15,4,'2016/12/05 04:18','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (16,4,'2016/12/05 04:18','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (17,4,'2016/12/05 04:18','[★2]塩化マンガン(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (18,4,'2016/12/05 04:18','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (19,4,'2016/12/05 04:18','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (20,4,'2016/12/05 04:36','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (21,4,'2016/12/05 04:37','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (22,4,'2016/12/05 04:37','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (23,4,'2016/12/05 04:39','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (24,4,'2016/12/05 04:39','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (25,4,'2016/12/05 04:56','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (26,4,'2016/12/05 04:56','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (27,4,'2016/12/05 05:09','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (28,4,'2016/12/05 05:12','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (29,4,'2016/12/05 05:12','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (30,4,'2016/12/05 05:14','[★3]プラチナを手に入れた！');
INSERT INTO `message` VALUES (31,4,'2016/12/05 05:15','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (32,4,'2016/12/05 05:15','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (33,4,'2016/12/05 05:15','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (34,4,'2016/12/05 05:15','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (35,4,'2016/12/05 05:18','[★1]カリウムを手に入れた！');
INSERT INTO `message` VALUES (36,4,'2016/12/05 05:18','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (37,4,'2016/12/05 05:18','[★2]一酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (38,4,'2016/12/05 05:18','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (39,4,'2016/12/05 05:21','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (40,4,'2016/12/05 05:21','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (41,4,'2016/12/05 05:22','[★2]塩化マンガン(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (42,4,'2016/12/05 05:22','[★2]アンモニアを手に入れた！');
INSERT INTO `message` VALUES (43,4,'2016/12/05 09:23','[★2]酸化マンガン(Ⅳ)を手に入れた！');
INSERT INTO `message` VALUES (44,4,'2016/12/05 10:13','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (45,4,'2016/12/05 10:13','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (46,7,'2016/12/05 10:34','[★2]二酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (47,9,'2016/12/05 11:21','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (48,7,'2016/12/05 11:26','[★2]硝酸を手に入れた！');
INSERT INTO `message` VALUES (49,7,'2016/12/05 11:27','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (50,7,'2016/12/05 11:27','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (51,7,'2016/12/05 11:28','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (52,7,'2016/12/05 11:28','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (53,7,'2016/12/05 11:28','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (54,7,'2016/12/05 11:28','[★1]カリウムを手に入れた！');
INSERT INTO `message` VALUES (55,6,'2016/12/05 12:04','[ログインボーナス]700コインゲット!');
INSERT INTO `message` VALUES (56,6,'2016/12/05 12:06','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (57,6,'2016/12/05 12:08','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (58,6,'2016/12/05 12:08','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (59,6,'2016/12/05 12:09','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (60,6,'2016/12/05 12:09','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (61,6,'2016/12/05 12:09','[★3]鉄を手に入れた！');
INSERT INTO `message` VALUES (62,6,'2016/12/05 12:10','[★2]炭酸カルシウムを手に入れた！');
INSERT INTO `message` VALUES (63,6,'2016/12/05 12:10','[★3]銅を手に入れた！');
INSERT INTO `message` VALUES (64,6,'2016/12/05 12:10','[★2]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (65,6,'2016/12/05 12:10','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (66,4,'2016/12/05 12:21','[★2]臭素を手に入れた！');
INSERT INTO `message` VALUES (67,4,'2016/12/05 12:23','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (68,4,'2016/12/05 12:24','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (69,4,'2016/12/05 12:26','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (70,4,'2016/12/05 12:26','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (71,4,'2016/12/05 12:28','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (72,4,'2016/12/05 12:28','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (73,4,'2016/12/05 12:32','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (74,4,'2016/12/05 12:32','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (75,4,'2016/12/05 12:33','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (76,4,'2016/12/05 12:33','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (77,4,'2016/12/05 12:35','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (78,4,'2016/12/05 12:35','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (79,4,'2016/12/05 12:37','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (80,4,'2016/12/05 12:40','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (81,4,'2016/12/05 12:40','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (82,4,'2016/12/05 12:44','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (83,4,'2016/12/05 13:38','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (84,4,'2016/12/05 14:38','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (85,4,'2016/12/05 14:38','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (86,4,'2016/12/05 14:44','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (87,9,'2016/12/05 16:01','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (88,4,'2016/12/05 18:37','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (89,4,'2016/12/05 18:37','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (90,4,'2016/12/05 18:38','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (91,9,'2016/12/05 18:40','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (92,9,'2016/12/05 18:40','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (93,9,'2016/12/05 18:40','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (94,4,'2016/12/05 18:44','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (95,4,'2016/12/05 18:45','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (96,4,'2016/12/05 18:45','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (97,9,'2016/12/05 18:49','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (98,9,'2016/12/05 18:51','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (99,9,'2016/12/05 18:51','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (100,9,'2016/12/05 18:51','[★2]ヨウ素を手に入れた！');
INSERT INTO `message` VALUES (101,9,'2016/12/05 18:52','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (102,9,'2016/12/05 18:52','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (103,9,'2016/12/05 18:53','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (104,4,'2016/12/05 19:47','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (105,4,'2016/12/05 19:47','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (106,4,'2016/12/05 19:47','[★2]塩化カルシウムを手に入れた！');
INSERT INTO `message` VALUES (107,4,'2016/12/05 19:47','[★2]二酸化硫黄を手に入れた！');
INSERT INTO `message` VALUES (108,4,'2016/12/05 19:48','[★4]銀を手に入れた！');
INSERT INTO `message` VALUES (109,4,'2016/12/05 19:57','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (110,4,'2016/12/05 19:57','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (111,4,'2016/12/05 19:57','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (112,4,'2016/12/05 19:57','[★2]ヨウ素を手に入れた！');
INSERT INTO `message` VALUES (113,4,'2016/12/05 19:59','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (114,4,'2016/12/05 20:00','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (115,4,'2016/12/05 20:00','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (116,4,'2016/12/05 20:00','[★2]硝酸を手に入れた！');
INSERT INTO `message` VALUES (117,4,'2016/12/05 20:01','[★2]二酸化硫黄を手に入れた！');
INSERT INTO `message` VALUES (118,4,'2016/12/05 20:02','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (119,4,'2016/12/05 20:02','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (120,4,'2016/12/05 20:02','[★2]塩化アンモニウムを手に入れた！');
INSERT INTO `message` VALUES (121,4,'2016/12/05 20:02','[★2]硫酸を手に入れた！');
INSERT INTO `message` VALUES (122,4,'2016/12/05 20:03','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (123,4,'2016/12/05 20:03','[★4]酸化マンガン(Ⅳ)を手に入れた！');
INSERT INTO `message` VALUES (124,4,'2016/12/05 20:03','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (125,4,'2016/12/05 20:03','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (126,4,'2016/12/05 20:04','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (127,4,'2016/12/05 20:04','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (128,4,'2016/12/05 20:04','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (129,4,'2016/12/05 20:11','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (130,4,'2016/12/05 20:11','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (131,4,'2016/12/05 20:12','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (132,4,'2016/12/05 20:12','[★2]二酸化硫黄を手に入れた！');
INSERT INTO `message` VALUES (133,4,'2016/12/05 20:12','[★2]ヨウ素を手に入れた！');
INSERT INTO `message` VALUES (134,4,'2016/12/05 20:13','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (135,4,'2016/12/05 20:13','[★2]塩化アンモニウムを手に入れた！');
INSERT INTO `message` VALUES (136,4,'2016/12/05 20:13','[★2]水酸化カルシウムを手に入れた！');
INSERT INTO `message` VALUES (137,4,'2016/12/05 20:13','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (138,4,'2016/12/05 20:13','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (139,4,'2016/12/05 20:13','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (140,4,'2016/12/05 20:26','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (141,4,'2016/12/05 20:26','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (142,4,'2016/12/05 20:26','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (143,4,'2016/12/05 22:50','[★2]硫酸銅(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (144,4,'2016/12/05 22:50','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (145,4,'2016/12/05 23:39','[★2]過酸化水素水を手に入れた！');
INSERT INTO `message` VALUES (146,4,'2016/12/06 00:14','[★4]塩化マンガン(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (147,4,'2016/12/06 07:09','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (148,4,'2016/12/06 07:09','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (149,4,'2016/12/06 08:20','[ログインボーナス]400コインゲット!');
INSERT INTO `message` VALUES (150,9,'2016/12/06 09:33','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (151,9,'2016/12/06 10:17','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (152,9,'2016/12/06 10:26','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (153,9,'2016/12/06 10:26','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (154,4,'2016/12/06 10:49','[★2]塩化ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (155,4,'2016/12/06 11:05','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (156,4,'2016/12/06 11:05','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (157,4,'2016/12/06 11:08','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (158,10,'2016/12/06 11:20','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (159,10,'2016/12/06 11:21','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (160,10,'2016/12/06 11:21','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (161,10,'2016/12/06 11:21','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (162,10,'2016/12/06 11:22','[★2]硝酸を手に入れた！');
INSERT INTO `message` VALUES (163,10,'2016/12/06 11:22','[★4]硫酸水素ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (164,10,'2016/12/06 11:22','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (165,10,'2016/12/06 11:22','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (166,4,'2016/12/06 13:10','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (167,4,'2016/12/06 13:10','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (168,4,'2016/12/06 13:27','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (169,4,'2016/12/06 13:27','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (170,4,'2016/12/06 13:34','[★2]二酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (171,10,'2016/12/06 14:10','[★2]ヨウ素を手に入れた！');
INSERT INTO `message` VALUES (172,10,'2016/12/06 14:10','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (173,4,'2016/12/06 15:09','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (174,4,'2016/12/06 15:09','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (175,4,'2016/12/06 15:09','[★4]酸化マンガン(Ⅳ)を手に入れた！');
INSERT INTO `message` VALUES (176,4,'2016/12/06 15:10','[★2]臭素を手に入れた！');
INSERT INTO `message` VALUES (177,4,'2016/12/06 15:10','[★2]二酸化硫黄を手に入れた！');
INSERT INTO `message` VALUES (178,4,'2016/12/06 15:11','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (179,4,'2016/12/06 15:11','[★2]過酸化水素水を手に入れた！');
INSERT INTO `message` VALUES (180,4,'2016/12/06 15:23','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (181,4,'2016/12/06 15:27','[★2]二酸化ケイ素を手に入れた！');
INSERT INTO `message` VALUES (182,4,'2016/12/06 15:47','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (183,4,'2016/12/06 15:48','[★2]炭酸カルシウムを手に入れた！');
INSERT INTO `message` VALUES (184,4,'2016/12/06 15:48','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (185,4,'2016/12/06 16:04','[★2]塩化水素を手に入れた！');
INSERT INTO `message` VALUES (186,4,'2016/12/06 16:11','[★4]塩化マンガン(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (187,4,'2016/12/06 16:17','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (188,4,'2016/12/06 16:17','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (189,4,'2016/12/06 16:21','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (190,4,'2016/12/06 16:23','[★2]鉄を手に入れた！');
INSERT INTO `message` VALUES (191,4,'2016/12/06 16:23','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (192,4,'2016/12/06 16:29','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (193,4,'2016/12/06 16:57','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (194,4,'2016/12/06 16:57','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (195,4,'2016/12/06 16:57','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (196,4,'2016/12/06 16:57','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (197,4,'2016/12/06 16:57','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (198,4,'2016/12/06 16:58','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (199,4,'2016/12/06 16:58','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (200,4,'2016/12/06 16:58','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (201,4,'2016/12/06 16:59','[★1]カリウムを手に入れた！');
INSERT INTO `message` VALUES (202,4,'2016/12/06 16:59','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (203,4,'2016/12/06 16:59','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (204,4,'2016/12/06 17:00','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (205,4,'2016/12/06 17:00','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (206,4,'2016/12/06 17:00','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (207,4,'2016/12/06 17:00','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (208,4,'2016/12/06 17:00','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (209,4,'2016/12/06 17:00','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (210,4,'2016/12/06 17:00','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (211,4,'2016/12/06 17:00','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (212,4,'2016/12/06 17:00','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (213,4,'2016/12/06 17:01','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (214,4,'2016/12/06 17:01','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (215,4,'2016/12/06 17:01','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (216,6,'2016/12/06 18:22','[ログインボーナス]100コインゲット!');
INSERT INTO `message` VALUES (217,6,'2016/12/06 18:23','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (218,4,'2016/12/06 18:27','[★2]過酸化水素水を手に入れた！');
INSERT INTO `message` VALUES (219,4,'2016/12/06 18:27','[★2]アンモニアを手に入れた！');
INSERT INTO `message` VALUES (220,6,'2016/12/06 18:29','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (221,6,'2016/12/06 18:29','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (222,6,'2016/12/06 18:29','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (223,6,'2016/12/06 18:29','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (224,6,'2016/12/06 18:30','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (225,6,'2016/12/06 18:30','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (226,6,'2016/12/06 18:30','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (227,6,'2016/12/06 18:30','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (228,6,'2016/12/06 18:30','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (229,6,'2016/12/06 18:30','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (230,10,'2016/12/06 18:57','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (231,11,'2016/12/06 19:26','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (232,11,'2016/12/06 19:27','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (233,11,'2016/12/06 19:27','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (234,11,'2016/12/06 19:27','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (235,11,'2016/12/06 19:28','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (236,6,'2016/12/06 21:29','[★2]硫酸銅(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (237,6,'2016/12/06 21:29','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (238,6,'2016/12/06 21:29','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (239,6,'2016/12/06 21:29','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (240,6,'2016/12/06 21:29','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (241,6,'2016/12/06 21:30','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (242,6,'2016/12/06 21:30','[★2]二酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (243,6,'2016/12/06 21:30','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (244,6,'2016/12/06 21:30','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (245,6,'2016/12/06 21:31','[★4]銅を手に入れた！');
INSERT INTO `message` VALUES (246,6,'2016/12/06 21:31','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (247,6,'2016/12/06 21:31','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (248,6,'2016/12/06 21:31','[★4]銀を手に入れた！');
INSERT INTO `message` VALUES (249,6,'2016/12/06 21:31','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (250,6,'2016/12/06 21:32','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (251,6,'2016/12/06 21:32','[★4]硫酸水素ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (252,6,'2016/12/06 21:32','[★4]硫酸水素ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (253,6,'2016/12/06 21:32','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (254,6,'2016/12/06 21:33','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (255,6,'2016/12/06 21:34','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (256,6,'2016/12/06 21:34','[★2]水酸化カルシウムを手に入れた！');
INSERT INTO `message` VALUES (257,6,'2016/12/06 21:34','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (258,6,'2016/12/06 21:34','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (259,6,'2016/12/06 21:34','[★2]塩化アンモニウムを手に入れた！');
INSERT INTO `message` VALUES (260,11,'2016/12/06 21:34','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (261,6,'2016/12/06 21:34','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (262,11,'2016/12/06 21:34','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (263,6,'2016/12/06 21:34','[★2]亜鉛を手に入れた！');
INSERT INTO `message` VALUES (264,6,'2016/12/06 21:34','[★2]水酸化カルシウムを手に入れた！');
INSERT INTO `message` VALUES (265,6,'2016/12/06 21:35','[★4]銀を手に入れた！');
INSERT INTO `message` VALUES (266,6,'2016/12/06 21:35','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (267,6,'2016/12/06 21:35','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (268,6,'2016/12/06 21:35','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (269,6,'2016/12/06 21:36','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (270,11,'2016/12/06 21:36','[★3]クロムを手に入れた！');
INSERT INTO `message` VALUES (271,11,'2016/12/06 21:36','[★2]鉄を手に入れた！');
INSERT INTO `message` VALUES (272,11,'2016/12/06 21:37','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (273,6,'2016/12/06 21:37','[★2]硫酸銅(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (274,6,'2016/12/06 21:37','[★2]一酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (275,6,'2016/12/06 21:37','[★2]炭酸カルシウムを手に入れた！');
INSERT INTO `message` VALUES (276,6,'2016/12/06 21:38','[★2]亜鉛を手に入れた！');
INSERT INTO `message` VALUES (277,6,'2016/12/06 21:38','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (278,11,'2016/12/06 22:03','[★5]プラチナを手に入れた！');
INSERT INTO `message` VALUES (279,11,'2016/12/06 22:10','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (280,11,'2016/12/06 22:11','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (281,11,'2016/12/06 22:12','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (282,11,'2016/12/06 22:12','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (283,11,'2016/12/06 22:18','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (284,11,'2016/12/06 22:52','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (285,11,'2016/12/06 22:52','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (286,11,'2016/12/06 22:52','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (287,11,'2016/12/07 12:02','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (288,4,'2016/12/07 12:22','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (289,4,'2016/12/07 12:22','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (290,4,'2016/12/07 12:22','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (291,4,'2016/12/07 12:23','[★2]水酸化カルシウムを手に入れた！');
INSERT INTO `message` VALUES (292,4,'2016/12/07 12:23','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (293,4,'2016/12/07 12:23','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (294,4,'2016/12/07 12:23','[★2]硫酸を手に入れた！');
INSERT INTO `message` VALUES (295,4,'2016/12/07 12:25','[★2]アンモニアを手に入れた！');
INSERT INTO `message` VALUES (296,4,'2016/12/07 12:26','[★2]塩化水素を手に入れた！');
INSERT INTO `message` VALUES (297,4,'2016/12/07 12:27','[★2]塩化アンモニウムを手に入れた！');
INSERT INTO `message` VALUES (298,4,'2016/12/07 12:39','[ログインボーナス]500コインゲット!');
INSERT INTO `message` VALUES (299,11,'2016/12/08 10:16','[ログインボーナス]400コインゲット!');
INSERT INTO `message` VALUES (300,11,'2016/12/08 10:17','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (301,11,'2016/12/08 10:17','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (302,11,'2016/12/08 10:17','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (303,11,'2016/12/08 10:18','[★2]硫酸を手に入れた！');
INSERT INTO `message` VALUES (304,11,'2016/12/08 10:19','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (305,11,'2016/12/08 10:19','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (306,11,'2016/12/08 10:20','[★2]アンモニアを手に入れた！');
INSERT INTO `message` VALUES (307,4,'2016/12/08 13:44','[ログインボーナス]600コインゲット!');
INSERT INTO `message` VALUES (308,10,'2016/12/08 13:52','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (309,10,'2016/12/08 13:52','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (310,10,'2016/12/08 13:54','[★2]二酸化硫黄を手に入れた！');
INSERT INTO `message` VALUES (311,10,'2016/12/08 13:54','[★2]塩化カルシウムを手に入れた！');
INSERT INTO `message` VALUES (312,10,'2016/12/08 13:55','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (313,10,'2016/12/08 13:55','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (314,10,'2016/12/08 13:55','[★4]塩化マンガン(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (315,10,'2016/12/08 13:55','[★4]銅を手に入れた！');
INSERT INTO `message` VALUES (316,10,'2016/12/08 13:56','[★2]塩化ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (317,10,'2016/12/08 13:56','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (318,10,'2016/12/08 13:56','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (319,10,'2016/12/08 13:56','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (320,10,'2016/12/08 13:56','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (321,10,'2016/12/08 13:57','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (322,10,'2016/12/08 13:57','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (323,10,'2016/12/08 13:57','[★4]銀を手に入れた！');
INSERT INTO `message` VALUES (324,10,'2016/12/08 13:57','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (325,10,'2016/12/08 13:58','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (326,10,'2016/12/08 14:02','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (327,10,'2016/12/08 14:03','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (328,10,'2016/12/08 14:03','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (329,10,'2016/12/08 14:03','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (330,10,'2016/12/08 14:03','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (331,10,'2016/12/08 14:03','[★2]ヨウ素を手に入れた！');
INSERT INTO `message` VALUES (332,10,'2016/12/08 14:04','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (333,10,'2016/12/08 14:04','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (334,10,'2016/12/08 14:04','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (335,10,'2016/12/08 14:04','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (336,10,'2016/12/08 14:04','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (337,10,'2016/12/08 14:04','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (338,10,'2016/12/08 14:04','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (339,10,'2016/12/08 14:04','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (340,10,'2016/12/08 14:05','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (341,10,'2016/12/08 14:06','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (342,10,'2016/12/08 14:07','[★2]塩化ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (343,10,'2016/12/08 14:07','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (344,10,'2016/12/08 14:07','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (345,10,'2016/12/08 14:08','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (346,10,'2016/12/08 14:08','[★2]塩化ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (347,10,'2016/12/08 14:08','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (348,10,'2016/12/08 14:09','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (349,10,'2016/12/08 14:11','[★2]二酸化ケイ素を手に入れた！');
INSERT INTO `message` VALUES (350,10,'2016/12/08 14:11','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (351,10,'2016/12/08 14:14','[★2]硫酸を手に入れた！');
INSERT INTO `message` VALUES (352,10,'2016/12/08 14:14','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (353,10,'2016/12/08 14:16','[★2]二酸化硫黄を手に入れた！');
INSERT INTO `message` VALUES (354,10,'2016/12/08 14:16','[★2]二酸化硫黄を手に入れた！');
INSERT INTO `message` VALUES (355,10,'2016/12/08 14:16','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (356,10,'2016/12/08 14:16','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (357,10,'2016/12/08 14:17','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (358,10,'2016/12/08 14:17','[★3]クロムを手に入れた！');
INSERT INTO `message` VALUES (359,10,'2016/12/08 14:17','[★2]ヨウ素を手に入れた！');
INSERT INTO `message` VALUES (360,10,'2016/12/08 14:17','[★4]銅を手に入れた！');
INSERT INTO `message` VALUES (361,10,'2016/12/08 14:17','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (362,10,'2016/12/08 14:17','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (363,10,'2016/12/08 14:18','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (364,10,'2016/12/08 14:18','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (365,10,'2016/12/08 14:18','[★2]臭素を手に入れた！');
INSERT INTO `message` VALUES (366,10,'2016/12/08 14:18','[★1]カリウムを手に入れた！');
INSERT INTO `message` VALUES (367,10,'2016/12/08 14:21','[★4]銀を手に入れた！');
INSERT INTO `message` VALUES (368,10,'2016/12/08 14:27','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (369,10,'2016/12/08 14:27','[★4]銅を手に入れた！');
INSERT INTO `message` VALUES (370,10,'2016/12/08 14:27','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (371,10,'2016/12/08 14:31','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (372,10,'2016/12/08 14:36','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (373,10,'2016/12/08 14:36','[★2]硫化水素を手に入れた！');
INSERT INTO `message` VALUES (374,10,'2016/12/08 14:39','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (375,10,'2016/12/08 14:39','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (376,10,'2016/12/08 14:39','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (377,10,'2016/12/08 14:39','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (378,10,'2016/12/08 14:39','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (379,10,'2016/12/08 14:39','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (380,10,'2016/12/08 14:39','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (381,10,'2016/12/08 14:46','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (382,10,'2016/12/08 14:47','[★2]硫酸銅(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (383,10,'2016/12/08 14:47','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (384,10,'2016/12/08 14:47','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (385,10,'2016/12/08 14:47','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (386,10,'2016/12/08 14:47','[★2]ヨウ素を手に入れた！');
INSERT INTO `message` VALUES (387,10,'2016/12/08 14:47','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (388,10,'2016/12/08 14:48','[★4]硫酸水素ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (389,10,'2016/12/08 14:48','[★1]カリウムを手に入れた！');
INSERT INTO `message` VALUES (390,10,'2016/12/08 14:48','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (391,10,'2016/12/08 14:48','[★2]アンモニアを手に入れた！');
INSERT INTO `message` VALUES (392,10,'2016/12/08 14:48','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (393,10,'2016/12/08 14:49','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (394,10,'2016/12/08 14:49','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (395,10,'2016/12/08 14:49','[★2]臭素を手に入れた！');
INSERT INTO `message` VALUES (396,4,'2016/12/09 10:37','[ログインボーナス]700コインゲット!');
INSERT INTO `message` VALUES (397,11,'2016/12/09 22:08','[ログインボーナス]500コインゲット!');
INSERT INTO `message` VALUES (398,11,'2016/12/09 22:09','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (399,6,'2016/12/09 22:11','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (400,6,'2016/12/09 22:11','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (401,6,'2016/12/09 22:11','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (402,6,'2016/12/09 22:11','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (403,6,'2016/12/09 22:11','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (404,6,'2016/12/09 22:11','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (405,6,'2016/12/09 22:11','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (406,6,'2016/12/09 22:11','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (407,6,'2016/12/09 22:11','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (408,6,'2016/12/09 22:11','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (409,6,'2016/12/09 22:13','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (410,12,'2016/12/09 22:14','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (411,6,'2016/12/09 22:15','[★2]過酸化水素水を手に入れた！');
INSERT INTO `message` VALUES (412,6,'2016/12/09 22:15','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (413,12,'2016/12/09 22:15','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (414,6,'2016/12/09 22:15','[★2]塩化ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (415,6,'2016/12/09 22:15','[★2]硝酸を手に入れた！');
INSERT INTO `message` VALUES (416,12,'2016/12/09 22:15','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (417,6,'2016/12/09 22:15','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (418,12,'2016/12/09 22:15','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (419,6,'2016/12/09 22:15','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (420,12,'2016/12/09 22:15','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (421,12,'2016/12/09 22:18','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (422,12,'2016/12/09 22:18','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (423,12,'2016/12/09 22:18','[★2]塩化水素を手に入れた！');
INSERT INTO `message` VALUES (424,12,'2016/12/09 22:19','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (425,12,'2016/12/09 22:19','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (426,12,'2016/12/09 22:19','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (427,12,'2016/12/09 22:20','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (428,12,'2016/12/09 22:20','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (429,12,'2016/12/09 22:21','[★2]臭素を手に入れた！');
INSERT INTO `message` VALUES (430,12,'2016/12/09 22:21','[★3]クロムを手に入れた！');
INSERT INTO `message` VALUES (431,12,'2016/12/09 22:21','[★2]炭酸カルシウムを手に入れた！');
INSERT INTO `message` VALUES (432,4,'2016/12/09 22:21','[★4]銀を手に入れた！');
INSERT INTO `message` VALUES (433,12,'2016/12/09 22:22','[★4]銅を手に入れた！');
INSERT INTO `message` VALUES (434,12,'2016/12/09 22:22','[★2]塩化カルシウムを手に入れた！');
INSERT INTO `message` VALUES (435,4,'2016/12/09 22:22','[★3]クロムを手に入れた！');
INSERT INTO `message` VALUES (436,6,'2016/12/09 22:22','[★2]亜鉛を手に入れた！');
INSERT INTO `message` VALUES (437,12,'2016/12/09 22:22','[★2]硫化水素を手に入れた！');
INSERT INTO `message` VALUES (438,4,'2016/12/09 22:22','[★4]酸化マンガン(Ⅳ)を手に入れた！');
INSERT INTO `message` VALUES (439,6,'2016/12/09 22:22','[★4]銅を手に入れた！');
INSERT INTO `message` VALUES (440,12,'2016/12/09 22:22','[★2]硫化水素を手に入れた！');
INSERT INTO `message` VALUES (441,4,'2016/12/09 22:22','[★4]酸化マンガン(Ⅳ)を手に入れた！');
INSERT INTO `message` VALUES (442,6,'2016/12/09 22:22','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (443,12,'2016/12/09 22:22','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (444,4,'2016/12/09 22:22','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (445,12,'2016/12/09 22:23','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (446,6,'2016/12/09 22:23','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (447,12,'2016/12/09 22:23','[★2]ヨウ素を手に入れた！');
INSERT INTO `message` VALUES (448,4,'2016/12/09 22:23','[★2]二酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (449,6,'2016/12/09 22:23','[★4]銀を手に入れた！');
INSERT INTO `message` VALUES (450,4,'2016/12/09 22:23','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (451,12,'2016/12/09 22:23','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (452,12,'2016/12/09 22:23','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (453,12,'2016/12/09 22:23','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (454,12,'2016/12/09 22:23','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (455,6,'2016/12/09 22:23','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (456,12,'2016/12/09 22:23','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (457,12,'2016/12/09 22:23','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (458,4,'2016/12/09 22:23','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (459,12,'2016/12/09 22:23','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (460,6,'2016/12/09 22:24','[★2]塩化アンモニウムを手に入れた！');
INSERT INTO `message` VALUES (461,12,'2016/12/09 22:24','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (462,12,'2016/12/09 22:24','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (463,6,'2016/12/09 22:24','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (464,12,'2016/12/09 22:24','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (465,6,'2016/12/09 22:24','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (466,12,'2016/12/09 22:24','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (467,6,'2016/12/09 22:24','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (468,12,'2016/12/09 22:24','[★2]硫化水素を手に入れた！');
INSERT INTO `message` VALUES (469,6,'2016/12/09 22:24','[★2]過酸化水素水を手に入れた！');
INSERT INTO `message` VALUES (470,12,'2016/12/09 22:25','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (471,12,'2016/12/09 22:25','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (472,12,'2016/12/09 22:25','[★5]金を手に入れた！');
INSERT INTO `message` VALUES (473,4,'2016/12/09 22:25','[★2]二酸化ケイ素を手に入れた！');
INSERT INTO `message` VALUES (474,12,'2016/12/09 22:25','[★2]硫酸を手に入れた！');
INSERT INTO `message` VALUES (475,6,'2016/12/09 22:25','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (476,12,'2016/12/09 22:26','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (477,6,'2016/12/09 22:26','[★2]硫化水素を手に入れた！');
INSERT INTO `message` VALUES (478,12,'2016/12/09 22:26','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (479,6,'2016/12/09 22:26','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (480,12,'2016/12/09 22:26','[★2]二酸化ケイ素を手に入れた！');
INSERT INTO `message` VALUES (481,6,'2016/12/09 22:26','[★2]二酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (482,12,'2016/12/09 22:26','[★2]ヨウ素を手に入れた！');
INSERT INTO `message` VALUES (483,12,'2016/12/09 22:26','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (484,12,'2016/12/09 22:26','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (485,12,'2016/12/09 22:26','[★1]カリウムを手に入れた！');
INSERT INTO `message` VALUES (486,12,'2016/12/09 22:27','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (487,12,'2016/12/09 22:27','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (488,12,'2016/12/09 22:27','[★2]アンモニアを手に入れた！');
INSERT INTO `message` VALUES (489,12,'2016/12/09 22:27','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (490,12,'2016/12/09 22:27','[★2]亜鉛を手に入れた！');
INSERT INTO `message` VALUES (491,12,'2016/12/09 22:28','[★2]硫酸銅(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (492,12,'2016/12/09 22:28','[★2]硫酸を手に入れた！');
INSERT INTO `message` VALUES (493,4,'2016/12/12 01:00','[ログインボーナス]100コインゲット!');
INSERT INTO `message` VALUES (494,4,'2016/12/12 01:01','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (495,4,'2016/12/12 01:01','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (496,4,'2016/12/12 01:01','[★1]カリウムを手に入れた！');
INSERT INTO `message` VALUES (497,4,'2016/12/12 01:01','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (498,4,'2016/12/12 01:02','[★4]銅を手に入れた！');
INSERT INTO `message` VALUES (499,4,'2016/12/12 12:27','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (500,4,'2016/12/13 12:21','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (501,4,'2016/12/14 02:28','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (502,12,'2016/12/14 09:28','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (503,13,'2016/12/14 09:29','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (504,13,'2016/12/14 09:30','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (505,13,'2016/12/14 09:30','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (506,13,'2016/12/14 09:30','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (507,13,'2016/12/14 09:30','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (508,13,'2016/12/14 09:31','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (509,13,'2016/12/14 09:31','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (510,13,'2016/12/14 09:31','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (511,13,'2016/12/14 09:31','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (512,13,'2016/12/14 09:32','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (513,13,'2016/12/14 09:32','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (514,13,'2016/12/14 09:32','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (515,13,'2016/12/14 09:32','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (516,13,'2016/12/14 09:33','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (517,13,'2016/12/14 09:33','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (518,13,'2016/12/14 09:33','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (519,13,'2016/12/14 09:33','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (520,13,'2016/12/14 09:34','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (521,13,'2016/12/14 09:34','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (522,13,'2016/12/14 09:34','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (523,13,'2016/12/14 09:34','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (524,13,'2016/12/14 09:35','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (525,13,'2016/12/14 09:35','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (526,13,'2016/12/14 09:35','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (527,13,'2016/12/14 09:35','[★1]カリウムを手に入れた！');
INSERT INTO `message` VALUES (528,13,'2016/12/14 09:36','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (529,13,'2016/12/14 09:36','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (530,13,'2016/12/14 09:36','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (531,13,'2016/12/14 09:36','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (532,13,'2016/12/14 09:37','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (533,13,'2016/12/14 09:37','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (534,13,'2016/12/14 09:37','[★1]カリウムを手に入れた！');
INSERT INTO `message` VALUES (535,13,'2016/12/14 09:37','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (536,13,'2016/12/14 09:38','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (537,13,'2016/12/14 09:38','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (538,13,'2016/12/14 09:39','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (539,13,'2016/12/14 09:39','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (540,13,'2016/12/14 09:39','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (541,13,'2016/12/14 09:39','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (542,13,'2016/12/14 09:40','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (543,13,'2016/12/14 09:40','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (544,13,'2016/12/14 09:40','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (545,13,'2016/12/14 09:40','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (546,13,'2016/12/14 09:40','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (547,13,'2016/12/14 09:40','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (548,13,'2016/12/14 09:40','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (549,13,'2016/12/14 09:41','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (550,13,'2016/12/14 09:42','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (551,13,'2016/12/14 09:42','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (552,13,'2016/12/14 09:42','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (553,13,'2016/12/14 09:43','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (554,13,'2016/12/14 09:43','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (555,13,'2016/12/14 09:43','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (556,13,'2016/12/14 09:43','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (557,13,'2016/12/14 09:43','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (558,13,'2016/12/14 09:43','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (559,13,'2016/12/14 09:44','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (560,13,'2016/12/14 09:44','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (561,13,'2016/12/14 09:44','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (562,13,'2016/12/14 09:46','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (563,13,'2016/12/14 09:46','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (564,13,'2016/12/14 09:47','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (565,13,'2016/12/14 09:47','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (566,13,'2016/12/14 09:47','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (567,13,'2016/12/14 09:48','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (568,13,'2016/12/14 09:48','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (569,13,'2016/12/14 09:49','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (570,13,'2016/12/14 09:49','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (571,13,'2016/12/14 09:49','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (572,13,'2016/12/14 09:49','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (573,13,'2016/12/14 09:49','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (574,13,'2016/12/14 09:49','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (575,13,'2016/12/14 09:50','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (576,13,'2016/12/14 09:50','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (577,13,'2016/12/14 09:50','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (578,13,'2016/12/14 09:50','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (579,13,'2016/12/14 09:51','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (580,13,'2016/12/14 09:51','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (581,13,'2016/12/14 09:51','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (582,13,'2016/12/14 09:51','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (583,13,'2016/12/14 09:51','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (584,13,'2016/12/14 09:52','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (585,13,'2016/12/14 09:52','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (586,13,'2016/12/14 09:55','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (587,13,'2016/12/14 09:55','[★2]硫化水素を手に入れた！');
INSERT INTO `message` VALUES (588,13,'2016/12/14 09:55','[★2]亜鉛を手に入れた！');
INSERT INTO `message` VALUES (589,13,'2016/12/14 09:55','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (590,13,'2016/12/14 09:55','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (591,13,'2016/12/14 09:55','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (592,13,'2016/12/14 10:55','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (593,13,'2016/12/14 10:55','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (594,13,'2016/12/14 10:55','[★2]硫化水素を手に入れた！');
INSERT INTO `message` VALUES (595,13,'2016/12/14 10:56','[★4]硫酸水素ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (596,13,'2016/12/14 10:56','[★2]亜鉛を手に入れた！');
INSERT INTO `message` VALUES (597,13,'2016/12/14 10:57','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (598,13,'2016/12/14 10:57','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (599,13,'2016/12/14 10:57','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (600,13,'2016/12/14 10:58','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (601,13,'2016/12/14 10:58','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (602,13,'2016/12/15 14:11','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (603,13,'2016/12/15 14:11','[★3]クロムを手に入れた！');
INSERT INTO `message` VALUES (604,13,'2016/12/15 14:12','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (605,4,'2016/12/19 01:24','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (606,4,'2016/12/21 12:02','[ログインボーナス]400コインゲット!');
INSERT INTO `message` VALUES (607,14,'2017/01/01 02:27','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (608,14,'2017/01/01 02:28','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (609,14,'2017/01/01 02:28','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (610,14,'2017/01/01 02:28','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (611,14,'2017/01/01 02:29','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (612,14,'2017/01/01 02:29','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (613,14,'2017/01/01 02:29','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (614,14,'2017/01/01 02:30','[★1]カリウムを手に入れた！');
INSERT INTO `message` VALUES (615,14,'2017/01/01 02:31','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (616,14,'2017/01/01 02:32','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (617,14,'2017/01/01 02:32','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (618,14,'2017/01/01 02:33','[★4]酸化マンガン(Ⅳ)を手に入れた！');
INSERT INTO `message` VALUES (619,14,'2017/01/01 02:35','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (620,14,'2017/01/01 02:37','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (621,14,'2017/01/01 02:37','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (622,10,'2017/01/02 13:49','[ログインボーナス]400コインゲット!');
INSERT INTO `message` VALUES (623,10,'2017/01/02 13:49','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (624,10,'2017/01/02 13:49','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (625,10,'2017/01/02 13:49','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (626,10,'2017/01/02 13:49','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (627,10,'2017/01/02 13:50','[★3]クロムを手に入れた！');
INSERT INTO `message` VALUES (628,10,'2017/01/02 22:35','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (629,10,'2017/01/02 22:36','[★3]硫酸鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (630,10,'2017/01/02 22:37','[★2]硫酸を手に入れた！');
INSERT INTO `message` VALUES (631,10,'2017/01/02 22:37','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (632,10,'2017/01/02 22:37','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (633,4,'2017/01/04 17:00','[ログインボーナス]500コインゲット!');
INSERT INTO `message` VALUES (634,4,'2017/01/05 16:35','[ログインボーナス]600コインゲット!');
INSERT INTO `message` VALUES (635,4,'2017/01/05 16:41','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (636,4,'2017/01/05 16:41','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (637,4,'2017/01/05 16:43','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (638,4,'2017/01/06 22:56','[ログインボーナス]700コインゲット!');
INSERT INTO `message` VALUES (639,4,'2017/01/07 09:50','[ログインボーナス]100コインゲット!');
INSERT INTO `message` VALUES (640,15,'2017/01/07 12:38','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (641,15,'2017/01/07 12:39','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (642,15,'2017/01/07 12:39','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (643,15,'2017/01/07 12:40','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (644,15,'2017/01/07 12:40','[★2]鉄を手に入れた！');
INSERT INTO `message` VALUES (645,15,'2017/01/07 12:40','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (646,15,'2017/01/07 12:40','[★2]硫化水素を手に入れた！');
INSERT INTO `message` VALUES (647,15,'2017/01/07 12:40','[★2]硝酸を手に入れた！');
INSERT INTO `message` VALUES (648,4,'2017/01/09 00:50','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (649,5,'2017/01/09 00:51','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (650,4,'2017/01/09 00:55','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (651,4,'2017/01/09 00:55','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (652,4,'2017/01/09 00:59','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (653,4,'2017/01/09 01:00','[★2]塩化カルシウムを手に入れた！');
INSERT INTO `message` VALUES (654,4,'2017/01/09 01:00','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (655,6,'2017/01/09 14:43','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (656,6,'2017/01/09 14:43','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (657,16,'2017/01/10 13:22','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (658,16,'2017/01/10 21:16','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (659,16,'2017/01/10 21:16','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (660,16,'2017/01/10 21:17','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (661,16,'2017/01/10 21:17','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (662,16,'2017/01/10 21:17','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (663,16,'2017/01/10 21:17','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (664,16,'2017/01/10 21:18','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (665,16,'2017/01/10 21:18','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (666,16,'2017/01/10 21:18','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (667,16,'2017/01/10 21:18','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (668,16,'2017/01/10 21:18','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (669,16,'2017/01/10 21:18','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (670,16,'2017/01/10 21:19','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (671,16,'2017/01/10 21:19','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (672,16,'2017/01/10 21:19','[★1]リンを手に入れた！');
INSERT INTO `message` VALUES (673,16,'2017/01/10 21:19','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (674,16,'2017/01/10 21:19','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (675,16,'2017/01/10 21:19','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (676,16,'2017/01/10 21:20','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (677,16,'2017/01/10 21:20','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (678,16,'2017/01/10 21:20','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (679,16,'2017/01/10 21:20','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (680,16,'2017/01/10 21:21','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (681,16,'2017/01/10 21:37','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (682,16,'2017/01/10 21:37','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (683,16,'2017/01/10 21:51','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (684,4,'2017/01/12 14:06','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (685,4,'2017/01/12 14:08','[★2]アンモニアを手に入れた！');
INSERT INTO `message` VALUES (686,4,'2017/01/12 14:09','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (687,4,'2017/01/12 14:09','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (688,4,'2017/01/14 16:03','[ログインボーナス]400コインゲット!');
INSERT INTO `message` VALUES (689,4,'2017/01/14 16:04','[★2]塩化アンモニウムを手に入れた！');
INSERT INTO `message` VALUES (690,4,'2017/01/14 16:09','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (691,4,'2017/01/14 16:09','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (692,4,'2017/01/14 16:11','[★2]塩化水素を手に入れた！');
INSERT INTO `message` VALUES (693,4,'2017/01/14 16:11','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (694,4,'2017/01/14 16:11','[★2]硫酸を手に入れた！');
INSERT INTO `message` VALUES (695,4,'2017/01/14 16:11','[★2]臭素を手に入れた！');
INSERT INTO `message` VALUES (696,4,'2017/01/14 16:11','[★3]クロムを手に入れた！');
INSERT INTO `message` VALUES (697,4,'2017/01/14 16:11','[★2]硫酸銅(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (698,4,'2017/01/14 16:11','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (699,4,'2017/01/14 16:11','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (700,4,'2017/01/14 16:12','[★2]ヨウ素を手に入れた！');
INSERT INTO `message` VALUES (701,4,'2017/01/14 16:12','[★2]一酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (702,4,'2017/01/14 16:12','[★2]過酸化水素水を手に入れた！');
INSERT INTO `message` VALUES (703,4,'2017/01/14 16:12','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (704,4,'2017/01/14 16:12','[★4]銅を手に入れた！');
INSERT INTO `message` VALUES (705,4,'2017/01/14 16:12','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (706,4,'2017/01/14 16:13','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (707,4,'2017/01/15 14:18','[ログインボーナス]500コインゲット!');
INSERT INTO `message` VALUES (708,4,'2017/01/15 14:18','[★2]硫酸銅(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (709,4,'2017/01/15 14:18','[★1]ホウ素を手に入れた！');
INSERT INTO `message` VALUES (710,4,'2017/01/17 16:52','[ログインボーナス]600コインゲット!');
INSERT INTO `message` VALUES (711,4,'2017/01/17 16:52','[★2]塩化水素を手に入れた！');
INSERT INTO `message` VALUES (712,4,'2017/01/17 16:52','[★5]水銀を手に入れた！');
INSERT INTO `message` VALUES (713,4,'2017/01/17 16:53','[★2]塩化水素を手に入れた！');
INSERT INTO `message` VALUES (714,16,'2017/01/18 16:28','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (715,17,'2017/01/18 16:29','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (716,16,'2017/01/18 16:30','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (717,16,'2017/01/18 16:30','[★2]アンモニアを手に入れた！');
INSERT INTO `message` VALUES (718,17,'2017/01/18 16:30','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (719,16,'2017/01/18 16:32','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (720,16,'2017/01/18 16:32','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (721,17,'2017/01/18 16:32','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (722,17,'2017/01/18 16:32','[★4]酸化マンガン(Ⅳ)を手に入れた！');
INSERT INTO `message` VALUES (723,17,'2017/01/18 16:32','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (724,17,'2017/01/18 16:33','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (725,17,'2017/01/18 16:33','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (726,17,'2017/01/18 16:33','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (727,16,'2017/01/18 16:33','[★2]アンモニアを手に入れた！');
INSERT INTO `message` VALUES (728,17,'2017/01/18 16:33','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (729,17,'2017/01/18 16:34','[★2]炭酸カルシウムを手に入れた！');
INSERT INTO `message` VALUES (730,16,'2017/01/18 16:34','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (731,16,'2017/01/18 16:35','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (732,17,'2017/01/18 16:35','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (733,16,'2017/01/18 16:35','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (734,17,'2017/01/18 16:35','[★1]アルゴンを手に入れた！');
INSERT INTO `message` VALUES (735,17,'2017/01/18 16:35','[★1]硫黄を手に入れた！');
INSERT INTO `message` VALUES (736,17,'2017/01/18 16:35','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (737,16,'2017/01/18 16:35','[★4]塩化マンガン(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (738,17,'2017/01/18 16:35','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (739,16,'2017/01/18 16:36','[★2]水酸化カルシウムを手に入れた！');
INSERT INTO `message` VALUES (740,16,'2017/01/18 16:38','[★4]塩化マンガン(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (741,16,'2017/01/18 16:38','[★2]水酸化カルシウムを手に入れた！');
INSERT INTO `message` VALUES (742,17,'2017/01/18 16:38','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (743,17,'2017/01/18 16:38','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (744,4,'2017/01/18 23:45','[ログインボーナス]700コインゲット!');
INSERT INTO `message` VALUES (745,4,'2017/01/20 01:17','[ログインボーナス]100コインゲット!');
INSERT INTO `message` VALUES (746,4,'2017/01/21 19:05','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (747,4,'2017/01/21 19:06','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (748,4,'2017/01/21 19:06','[★2]硝酸を手に入れた！');
INSERT INTO `message` VALUES (749,4,'2017/01/21 19:06','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (750,4,'2017/01/21 19:07','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (751,4,'2017/01/21 19:08','[★2]二酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (752,4,'2017/01/21 19:11','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (753,4,'2017/01/21 19:11','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (754,4,'2017/01/24 19:03','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (755,4,'2017/01/29 01:02','[ログインボーナス]400コインゲット!');
INSERT INTO `message` VALUES (756,18,'2017/02/20 20:23','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (757,18,'2017/02/20 20:24','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (758,18,'2017/02/20 20:25','[★2]亜鉛を手に入れた！');
INSERT INTO `message` VALUES (759,18,'2017/02/20 20:25','[★2]二酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (760,18,'2017/02/20 20:25','[★2]塩化水素を手に入れた！');
INSERT INTO `message` VALUES (761,18,'2017/02/20 20:25','[★4]銅を手に入れた！');
INSERT INTO `message` VALUES (762,19,'2017/02/21 23:56','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (763,19,'2017/02/21 23:57','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (764,19,'2017/02/21 23:57','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (765,4,'2017/03/15 21:01','[ログインボーナス]500コインゲット!');
INSERT INTO `message` VALUES (766,4,'2017/04/18 12:04','[ログインボーナス]600コインゲット!');
INSERT INTO `message` VALUES (767,4,'2017/04/18 12:06','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (768,4,'2017/04/19 18:02','[ログインボーナス]700コインゲット!');
INSERT INTO `message` VALUES (769,4,'2017/05/05 00:36','[ログインボーナス]100コインゲット!');
INSERT INTO `message` VALUES (770,4,'2017/05/05 00:37','[★2]塩化水素を手に入れた！');
INSERT INTO `message` VALUES (771,4,'2017/05/05 21:44','[★2]亜鉛を手に入れた！');
INSERT INTO `message` VALUES (772,4,'2017/05/08 00:58','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (773,4,'2017/05/08 01:00','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (774,4,'2017/05/16 22:41','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (775,4,'2017/05/16 22:46','[★2]硫酸を手に入れた！');
INSERT INTO `message` VALUES (776,20,'2017/05/24 20:05','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (777,20,'2017/05/24 20:08','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (778,20,'2017/05/24 20:08','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (779,20,'2017/05/24 20:09','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (780,20,'2017/05/24 20:09','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (781,20,'2017/05/24 20:10','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (782,20,'2017/05/24 20:10','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (783,20,'2017/05/24 20:10','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (784,20,'2017/05/24 20:10','[★4]銀を手に入れた！');
INSERT INTO `message` VALUES (785,20,'2017/05/24 20:10','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (786,20,'2017/05/24 20:11','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (787,20,'2017/05/24 20:11','[★2]二酸化硫黄を手に入れた！');
INSERT INTO `message` VALUES (788,20,'2017/05/24 20:11','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (789,20,'2017/05/24 20:11','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (790,20,'2017/05/24 20:11','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (791,20,'2017/05/24 20:11','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (792,20,'2017/05/24 20:11','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (793,20,'2017/05/24 20:12','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (794,20,'2017/05/24 20:12','[★4]硫酸水素ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (795,20,'2017/05/24 20:15','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (796,20,'2017/05/24 20:16','[★2]ヨウ素を手に入れた！');
INSERT INTO `message` VALUES (797,20,'2017/05/24 20:16','[★1]塩素を手に入れた！');
INSERT INTO `message` VALUES (798,20,'2017/05/24 20:16','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (799,20,'2017/05/24 20:16','[★4]硫酸水素ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (800,20,'2017/05/24 20:17','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (801,20,'2017/05/24 20:17','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (802,20,'2017/05/24 20:17','[★3]硫化鉄(Ⅱ)を手に入れた！');
INSERT INTO `message` VALUES (803,20,'2017/05/24 20:17','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (804,4,'2017/06/11 10:54','[ログインボーナス]400コインゲット!');
INSERT INTO `message` VALUES (805,4,'2017/06/11 10:56','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (806,4,'2017/06/11 10:57','[★2]二酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (807,4,'2017/06/14 00:30','[ログインボーナス]500コインゲット!');
INSERT INTO `message` VALUES (808,4,'2017/06/17 00:22','[ログインボーナス]600コインゲット!');
INSERT INTO `message` VALUES (809,4,'2017/06/17 00:25','[★2]炭酸カルシウムを手に入れた！');
INSERT INTO `message` VALUES (810,4,'2017/06/17 00:25','[★2]亜鉛を手に入れた！');
INSERT INTO `message` VALUES (811,4,'2017/06/17 00:26','[★2]硫化水素を手に入れた！');
INSERT INTO `message` VALUES (812,12,'2017/07/04 07:55','[ログインボーナス]400コインゲット!');
INSERT INTO `message` VALUES (813,12,'2017/07/04 07:56','[★2]アンモニアを手に入れた！');
INSERT INTO `message` VALUES (814,12,'2017/07/04 07:56','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (815,12,'2017/07/04 07:56','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (816,12,'2017/07/04 07:57','[★2]塩化カルシウムを手に入れた！');
INSERT INTO `message` VALUES (817,12,'2017/07/04 07:57','[★2]二酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (818,4,'2017/07/20 22:49','[ログインボーナス]700コインゲット!');
INSERT INTO `message` VALUES (819,4,'2017/09/17 06:58','[ログインボーナス]100コインゲット!');
INSERT INTO `message` VALUES (820,4,'2017/10/17 01:51','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (821,4,'2017/10/17 01:52','[★1]リチウムを手に入れた！');
INSERT INTO `message` VALUES (822,4,'2017/10/18 04:16','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (823,4,'2017/10/20 20:02','[ログインボーナス]400コインゲット!');
INSERT INTO `message` VALUES (824,6,'2017/10/20 20:08','[ログインボーナス]400コインゲット!');
INSERT INTO `message` VALUES (825,4,'2017/11/17 19:28','[ログインボーナス]500コインゲット!');
INSERT INTO `message` VALUES (826,4,'2017/11/17 19:55','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (827,4,'2017/11/21 01:03','[ログインボーナス]600コインゲット!');
INSERT INTO `message` VALUES (828,4,'2017/11/21 01:05','[★2]炭酸カルシウムを手に入れた！');
INSERT INTO `message` VALUES (829,4,'2017/12/18 05:24','[ログインボーナス]700コインゲット!');
INSERT INTO `message` VALUES (830,4,'2017/12/18 05:24','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (831,4,'2018/03/01 01:11','[ログインボーナス]100コインゲット!');
INSERT INTO `message` VALUES (832,4,'2018/03/01 01:12','[★2]塩化ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (833,4,'2018/03/01 01:13','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (834,4,'2018/03/01 01:13','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (835,4,'2018/03/01 01:35','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (836,4,'2018/03/01 01:47','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (837,4,'2018/03/01 01:48','[★2]硝酸を手に入れた！');
INSERT INTO `message` VALUES (838,4,'2018/03/01 01:48','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (839,4,'2018/03/01 01:48','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (840,4,'2018/03/01 01:51','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (841,4,'2018/03/01 01:51','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (842,4,'2018/03/01 01:58','[★1]炭素を手に入れた！');
INSERT INTO `message` VALUES (843,21,'2018/03/19 18:59','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (844,21,'2018/03/19 19:00','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (845,21,'2018/03/19 19:57','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (846,21,'2018/03/19 19:58','[★5]水銀を手に入れた！');
INSERT INTO `message` VALUES (847,21,'2018/03/20 06:45','[ログインボーナス]300コインゲット!');
INSERT INTO `message` VALUES (848,21,'2018/03/20 06:46','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (849,21,'2018/03/20 06:46','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (850,21,'2018/03/20 06:46','[★4]銀を手に入れた！');
INSERT INTO `message` VALUES (851,21,'2018/03/20 06:46','[★1]カルシウムを手に入れた！');
INSERT INTO `message` VALUES (852,21,'2018/03/20 06:46','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (853,21,'2018/03/20 06:46','[★1]ケイ素を手に入れた！');
INSERT INTO `message` VALUES (854,21,'2018/03/20 06:47','[★1]ナトリウムを手に入れた！');
INSERT INTO `message` VALUES (855,21,'2018/03/20 06:47','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (856,21,'2018/03/20 06:47','[★2]臭素を手に入れた！');
INSERT INTO `message` VALUES (857,21,'2018/03/20 06:47','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (858,21,'2018/03/20 06:47','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (859,21,'2018/03/20 06:47','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (860,21,'2018/03/20 06:47','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (861,21,'2018/03/20 06:47','[DEBUG]1000コインゲット!');
INSERT INTO `message` VALUES (862,21,'2018/03/20 06:48','[★3]マンガンを手に入れた！');
INSERT INTO `message` VALUES (863,21,'2018/03/20 06:49','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (864,21,'2018/03/20 06:49','[★1]窒素を手に入れた！');
INSERT INTO `message` VALUES (865,21,'2018/03/20 06:49','[★2]一酸化炭素を手に入れた！');
INSERT INTO `message` VALUES (866,21,'2018/03/20 06:49','[★1]ネオンを手に入れた！');
INSERT INTO `message` VALUES (867,21,'2018/03/20 06:49','[★3]硫化亜鉛を手に入れた！');
INSERT INTO `message` VALUES (868,21,'2018/03/20 06:50','[★1]フッ素を手に入れた！');
INSERT INTO `message` VALUES (869,21,'2018/03/20 06:50','[★3]鉛を手に入れた！');
INSERT INTO `message` VALUES (870,21,'2018/03/20 06:53','[★4]銅を手に入れた！');
INSERT INTO `message` VALUES (871,21,'2018/03/20 07:38','[★1]ベリリウムを手に入れた！');
INSERT INTO `message` VALUES (872,21,'2018/03/20 07:39','[★1]アルミニウムを手に入れた！');
INSERT INTO `message` VALUES (873,21,'2018/03/20 07:39','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (874,21,'2018/03/20 07:39','[★1]マグネシウムを手に入れた！');
INSERT INTO `message` VALUES (875,21,'2018/03/20 07:39','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (876,21,'2018/03/20 07:39','[★1]ヘリウムを手に入れた！');
INSERT INTO `message` VALUES (877,21,'2018/03/20 07:51','[★1]水素を手に入れた！');
INSERT INTO `message` VALUES (878,21,'2018/03/20 07:51','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (879,4,'2018/03/22 02:45','[ログインボーナス]200コインゲット!');
INSERT INTO `message` VALUES (880,4,'2018/03/22 03:08','[★2]塩化アンモニウムを手に入れた！');
INSERT INTO `message` VALUES (881,4,'2018/03/22 03:10','[★2]亜鉛を手に入れた！');
INSERT INTO `message` VALUES (882,4,'2018/03/22 03:11','[★1]水を手に入れた！');
INSERT INTO `message` VALUES (883,4,'2018/03/22 03:11','[★1]酸素を手に入れた！');
INSERT INTO `message` VALUES (884,4,'2018/03/22 03:15','[★3]硫化亜鉛を手に入れた！');
CREATE TABLE `item` (
	`itemId`	INTEGER,
	`itemName`	TEXT,
	`itemReality`	INTEGER,
	`itemPrice`	INTEGER,
	`itemMolWeight`	INTEGER,
	`itemColor`	TEXT,
	`itemIcon`	TEXT,
	`itemPicture`	TEXT,
	`itemText`	TEXT,
	PRIMARY KEY(`itemId`)
);
INSERT INTO `item` VALUES (1,'水素',1,100,2,'無色','img/item/icon1.png','img/item/1.png','周期表の左上にかかれているおなじみ水素ちゃん！無色無臭の気体で水に溶けにくく、還元作用を示すよ。実は宇宙で最も多い元素なんだよ！');
INSERT INTO `item` VALUES (2,'ヘリウム',1,100,4,'無色','img/item/icon2.png','img/item/2.png','希ガスの単体だよ！密度が小さく不燃性なところから、飛行船や飛行船の使われているよ。リニアモーターカーの超電導磁石の冷却材にも使われているんだって！');
INSERT INTO `item` VALUES (3,'リチウム',1,100,7,'赤(炎色反応)','img/item/icon3.png','img/item/3.png','アルカリ金属の単体の軽金属だよ！柔らかくてカッターで切れるけど、すぐに参加して断面は金属光沢を失うよ。空気中の酸素や水蒸気とすぐ反応しちゃうから、石油中に保存しよう！他にも融点が低い、強い還元作用を示す、常温で水と激しく反応し水素発生、水酸化物は強い塩基性などの性質があるよ。単体はその酸化物や水酸化物から融解塩電解でつくるんだ！');
INSERT INTO `item` VALUES (4,'ベリリウム',1,100,9,'銀白色','img/item/icon4.png','img/item/4.png','ベリリウムは2族の元素だけど、アルカリ度類金属ではないんだ。常温の水とは反応しないし、炎色反応ももたないよ。');
INSERT INTO `item` VALUES (5,'ホウ素',1,100,11,'黒色','img/item/icon5.png','img/item/5.png','ホウ素は黒色の光沢をもち、ダイヤモンドに近い硬さをもつよ！ホウ酸は弱い殺菌作用をもち医薬品に利用され、ホウ素を含むガラス製品は耐熱性に優れているんだ。');
INSERT INTO `item` VALUES (6,'炭素',1,100,12,'黒(ダイヤモンドは透明)','img/item/icon6.png','img/item/6.png','ダイヤモンド、黒鉛、フラーレン、カーボンナノチューブなどの同素体をもつよ。それぞれ正四面体に配列し非常にかたい結晶、正六角形に結合してつくられた平面が層状に重なる、60個の原子がサッカーボール型に結合した分子、幾重かの筒からなる多層ナノチューブ、の形をしているよ。ダイヤモンドとフラーレンは電気を通さず、黒鉛とカーボンナノチューブは電気を通すけど、カーボンナノチューブは半導体のものもあるんだって。');
INSERT INTO `item` VALUES (7,'窒素',1,100,28,'無色','img/item/icon7.png','img/item/7.png','無色無臭の気体で体積で空気の78%を占めるよ！常温では化学的に安定なんだって。工業的には液体空気の分流で得られるよ。');
INSERT INTO `item` VALUES (8,'酸素',1,100,32,'無色','img/item/icon8.png','img/item/8.png','空気中に体積で約21%含まれているよ。植物の光合成で生成、工業的には液体空気の分流で得られるよ。液体酸素は淡青色で磁性をもつよ。同位体にオゾンがあるんだ！');
INSERT INTO `item` VALUES (9,'フッ素',1,100,38,'淡黄色','img/item/icon9.png','img/item/9.png','ハロゲンの単体だよ！淡黄色の気体で、フライパンのテフロン加工なんかに使われてるんだ。ハロゲンの中では酸化作用が最も強いんだよ。フッ化水素の水溶液は弱酸性だから、間違えないようにしよう！フッ化銀は水に溶けるよ。');
INSERT INTO `item` VALUES (10,'ネオン',1,100,20,'無色','img/item/icon10.png','img/item/10.png','気ガスの単体だよ！放電管などに使われてるみたい。ネオンサインが思い浮かぶよね！');
INSERT INTO `item` VALUES (11,'ナトリウム',1,100,23,'黄(炎色反応)','img/item/icon11.png','img/item/11.png','アルカリ金属の単体の軽金属だよ！柔らかくてカッターで切れるけど、すぐに参加して断面は金属光沢を失うよ。空気中の酸素や水蒸気とすぐ反応しちゃうから、石油中に保存しよう！他にも融点が低い、強い還元作用を示す、常温で水と激しく反応し水素発生、水酸化物は強い塩基性などの性質があるよ。単体はその酸化物や水酸化物から融解塩電解でつくるんだ！');
INSERT INTO `item` VALUES (12,'マグネシウム',1,100,24,'銀白色','img/item/icon12.png','img/item/12.png','マグネシウムは熱水と穏やかに反応するよ！でも常温の水とは反応しないから気を付けて！空気中では明るい光を発して燃焼して、二酸化炭素中でも激しく反応して炭素を生じるんだ。
');
INSERT INTO `item` VALUES (13,'アルミニウム',1,100,27,'銀白色','img/item/icon13.png','img/item/13.png','アルミニウムはやわらかくて、展性・延性に富んでいるよ！酸とも塩基とも反応する両性元素なんだ。でも濃硝酸とは不動態をつくるから反応しないんだ。アルミニウムはボーキサイト(アルミニウムの単体)を融解塩電解して得られるよ！');
INSERT INTO `item` VALUES (14,'ケイ素',1,100,28,'暗灰色','img/item/icon14.png','img/item/14.png','ケイ素は単体として天然に存在しないんだけど、岩石の成分元素として地殻中に多く含まれているよ。ケイ砂にコークスを混合して電気炉で強熱すると得られるんだって。イレブンナインと呼ばれる高純度のケイ素は、半導体材料として電子部品や太陽電池などに使われているよ。');
INSERT INTO `item` VALUES (15,'リン',1,100,31,'淡黄色(黄リン)、暗赤色(赤リン)','img/item/icon15.png','img/item/15.png','黄リンと赤リンの同素体を持つよ。黄リンは空気をなくして約250℃に熱するとなるんだって。どちらも燃焼して十酸化四リンになるよ！黄リンは空気中で自然発火しやすいから、水中に保存しよう。赤リンはマッチ箱の発火剤に使われてるよ。');
INSERT INTO `item` VALUES (16,'硫黄',1,100,32,'黄色(ゴム状硫黄は褐色、高純度で黄色)','img/item/icon16.png','img/item/16.png','硫黄の単体は火山の加工付近に産出するよ。斜方硫黄、単斜硫黄、ゴム状硫黄の同位体をもつんだ。常温で放置すると安定な斜方硫黄に変化するよ。硫化水素の水溶液はおなじみ硫酸で、強酸性だよ。');
INSERT INTO `item` VALUES (17,'塩素',1,100,71,'黄緑色','img/item/icon17.png','img/item/17.png','ハロゲンの単体だよ！黄緑色の気体で、水道水の殺菌剤なんかに使われてるんだ。ハロゲンの中では酸化作用がフッ素の次に強いんだよ。塩化水素の水溶液はおなじみ塩酸で、これは強酸性だから間違えないようにしよう！塩化銀は白色沈殿だけど、アンモニア水には溶けちゃう～～');
INSERT INTO `item` VALUES (18,'アルゴン',1,100,40,'無色','img/item/icon18.png','img/item/18.png','希ガスの単体だよ！電球の中に封入されているんだ。空気中では窒素、酸素に続いて三番目に多いんだって。');
INSERT INTO `item` VALUES (19,'カリウム',1,100,39,'無色(イオン)、赤紫(炎色反応)','img/item/icon19.png','img/item/19.png','アルカリ金属の単体の軽金属だよ！柔らかくてカッターで切れるけど、すぐに参加して断面は金属光沢を失うよ。空気中の酸素や水蒸気とすぐ反応しちゃうから、石油中に保存しよう！他にも融点が低い、強い還元作用を示す、常温で水と激しく反応し水素発生、水酸化物は強い塩基性などの性質があるよ。単体はその酸化物や水酸化物から融解塩電解でつくるんだ！');
INSERT INTO `item` VALUES (20,'カルシウム',1,100,40,'無色(イオン)、橙赤(炎色反応)','img/item/icon20.png','img/item/20.png','カルシウムは塩化カルシウムの融解塩電解で得られるよ！常温で水と反応しちゃうんだ。炎色反応では橙赤色を示すよ。');
INSERT INTO `item` VALUES (21,'クロム',3,500,52,'銀白色','img/item/icon21.png','img/item/21.png','クロムは耐食性、耐摩耗性に優れていて、メッキや合金に利用されているよ。アルミニウムなどと同じように濃硝酸と反応させると不動態をつくるよ。NIとの合金はニクロムと呼ばれて電熱線に利用されているよ。');
INSERT INTO `item` VALUES (22,'マンガン',3,500,55,'銀白色','img/item/icon22.png','img/item/22.png','マンガンは銀白色の金属で、鉄よりも固いけどもろい特徴をもってるよ。空気中では表面が酸化されちゃうんだ。マンガン鋼は橋や船の建造に、MnとCuの合金である黄銅ｊは海水にも侵されにくくスクリューに使われているよ。');
INSERT INTO `item` VALUES (23,'鉄',2,300,56,'銀白色','img/item/icon23.png','img/item/23.png','赤鉄鉱や磁鉄鉱をコークス、石灰石とともに溶鉱炉にいれ、熱風で酸化物を還元すると硬いがもろい銑鉄が得られ、それを転炉にて高温の酸素を使って不純物を除くと硬くて強い鋼になる。イオンは二価と三価のものがあり、錯イオンになるとそれぞれ異なる色になるから確認しておこう！');
INSERT INTO `item` VALUES (24,'銅',4,700,64,'青緑(炎色反応)','img/item/icon24.png','img/item/24.png','銅は赤みを帯びた金属で、黄銅鉱から取り出されるよ。電機や熱を導きやすく、展性・延性に富むことから加工しやすいんだ！イオン化傾向が水素よりも小さいから塩酸や希硫酸には溶けないんだ。合金には黄銅、青銅、白銅があって、それぞれZn,Sn,Niとの合金なんだよ！');
INSERT INTO `item` VALUES (25,'亜鉛',2,300,65,'銀白色','img/item/icon25.png','img/item/25.png','亜鉛は青みを帯びた銀白色の金属で両性元素でもあるんだ。酸化亜鉛や水酸化亜鉛は水に溶けにくいけど酸とも塩基とも反応することからそれぞれ両性酸化物、両性水酸化物と呼ばれるよ。鋼に亜鉛をメッキしたものはトタンと呼ばれているんだ。');
INSERT INTO `item` VALUES (26,'臭素',2,300,160,'赤褐色','img/item/icon26.png','img/item/26.png','ハロゲンの単体だよ！赤褐色の液体で、配線基板なんかに使われてるんだ。ハロゲンの中では酸化作用が塩素の次、三番目に強いんだ。臭化水素の水溶液は強酸性だから間違えないようにしよう！臭化銀は淡黄色沈殿だけど、アンモニア水には少し溶けるよ');
INSERT INTO `item` VALUES (27,'銀',4,700,108,'銀白色','img/item/icon27.png','img/item/27.png','銀は金属の中で最も電気伝導性・熱伝導性に優れていて、金に次ぐ展性・延性も示すよ！イオン化傾向が水素より小さいから塩酸や希硫酸には溶けないけど、酸化作用の強い希硝酸、濃硝酸、熱濃硫酸とは反応するよ！');
INSERT INTO `item` VALUES (28,'ヨウ素',2,300,254,'黒紫色','img/item/icon28.png','img/item/28.png','ハロゲンの単体だよ！黒紫色の固体で、でんぷんの検出につかうヨウ素液なんかに使われてるんだ。ハロゲンの中では酸化作用がフ一番弱いんだよ。ヨウ化水素の水溶液は強酸性だから間違えないようにしよう！ヨウ化銀は黄色沈殿だけど、アンモニア水には溶けないよ。');
INSERT INTO `item` VALUES (29,'プラチナ',5,1000,195,'銀白色','img/item/icon29.png','img/item/29.png','プラチナは銀白色で、比較的柔らかくて加工しやすい金属だよ。装飾品や電気分解の電極なんかに使われてるんだ。');
INSERT INTO `item` VALUES (30,'金',5,1000,197,'金色','img/item/icon30.png','img/item/30.png','金は反応性が極めて低くて、単体としても産出するよ！地殻中に広く分布していて海水中にもわずかに含まれてるんだ。腐食せず電気を導きやすいことからで、電子機器のメッキにも使われてるよ。塩酸や硝酸には溶けないけど、王水には溶けちゃうんだ。');
INSERT INTO `item` VALUES (31,'水銀',5,200,201,'銀白色','img/item/icon31.png','img/item/31.png','水銀は唯一常温で液体として存在する金属なんだ。熱膨張がほぼ一定なことを利用して、温度計に使われるよ。');
INSERT INTO `item` VALUES (32,'鉛',3,500,207,'青白色','img/item/icon32.png','img/item/32.png','鉛は青白色で柔らかくて重い金属なんだ。鉛蓄電池の負極や放射線遮蔽剤に使われているよ。鉛は沈殿によって色が異なるから確認しておこう！硫化鉛(Ⅱ)は黒色沈殿、クロム酸鉛(Ⅱ)は黄色沈殿だよ。');
INSERT INTO `item` VALUES (33,'塩化水素',2,300,36.5,'無色','img/item/icon33.png','img/item/33.png','強い刺激臭をもつ無色の気体。水に溶けやすく、水溶液は塩酸って呼ばれてるよ！工業的には水素と塩素を直接反応させて得られるんだ。
');
INSERT INTO `item` VALUES (34,'硫酸',2,300,98,'無色','img/item/icon34.png','img/item/34.png','工業的には二酸化硫黄を原料に接触法で生成されるよ。肥料の原料や鉛蓄電池の電解質水溶液なんかに使われてるんだって！濃硫酸は粘性があり密度の大きい、不揮発性、脱水作用、酸化作用などの性質をもってるよ。希硫酸は強い酸性で水素よりもイオン化傾向の大きい金属と反応して水素を発生するんだ。希硫酸をつくるときは水に濃硫酸を加えてね！逆にすると水が沸騰して危ないよ～');
INSERT INTO `item` VALUES (35,'硫化水素',2,300,34,'無色','img/item/icon35.png','img/item/35.png','無色、フラン臭の有毒な気体で還元作用を持ってるよ！いろんな金属イオンと反応して硫化物の沈殿をつくるよ！水溶液は硫化水素水って呼ばれて、弱酸性を示すよ。');
INSERT INTO `item` VALUES (36,'二酸化硫黄',2,300,96,'無色','img/item/icon36.png','img/item/36.png','無色刺激臭の有毒な気体で、水によく溶けて酸性を示すよ！還元作用をもつけど、強力な還元剤との反応では酸化剤として働くこともあるんだ。工業的には硫黄の燃焼などによって得られるよ。');
INSERT INTO `item` VALUES (37,'アンモニア',2,300,17,'無色','img/item/icon37.png','img/item/37.png','刺激臭をもつ空気よりも軽い気体だよ！水に溶けやすく、水溶液は弱い塩基性を示すよ。工業的にはハーバーボッシュ法で作られるよ。検出方法には塩化水素と反応させて塩化アンモニウムの白煙を生じさせる方法があるよ。');
INSERT INTO `item` VALUES (38,'硝酸',2,300,111,'無色','img/item/icon38.png','img/item/38.png','無色揮発性の液体で、強い酸性と酸化作用を示すよ！光で分解しやすいから、褐色ビンに保存するようにしよう。アルミニウムや鉄、ニッケルと反応させると、表面に緻密な酸化被膜をつくりそれ以上反応しなくなるんだ。この状態を不動体っていうんだって！');
INSERT INTO `item` VALUES (39,'一酸化炭素',2,300,28,'無色','img/item/icon39.png','img/item/39.png','無色無臭の気体で炭素の不完全燃焼によって発生するよ。水に溶けない、燃焼する、還元性あり、液化しにくい、石灰水と反応しない、などの性質をもつよ。血中のヘモグロビンと結びつきやすく、酸素の運搬を妨げるから有毒なんだって。');
INSERT INTO `item` VALUES (40,'二酸化炭素',2,300,44,'無色','img/item/icon40.png','img/item/40.png','無色無臭の気体で炭素の不完全燃焼や生物の呼吸によって発生するよ。水に少し溶けて弱酸性、燃焼しない、還元性なし、加圧するよ容易に液化、石灰水と反応して白色沈殿をつくる、などの性質をもつよ。');
INSERT INTO `item` VALUES (41,'二酸化ケイ素',2,300,60,'白色(水晶は無色透明)','img/item/icon41.png','img/item/41.png','二酸化ケイ素は推奨、石英、ケイ砂として産出する共有結晶で融点が高く硬いのが特徴だよ。光ファイバーや胃カメラに使われてるんだって。');
INSERT INTO `item` VALUES (42,'硫化亜鉛',3,500,97,'白色','img/item/icon42.png','img/item/42.png','硫化亜鉛は亜鉛イオンを含む水溶液に中性・塩基性下で硫化水素を反応させると白色沈殿として生じるほか、硫黄と亜鉛を直接反応させることでも得られるよ。硫化亜鉛は蛍光塗料にも使われているんだって。');
INSERT INTO `item` VALUES (43,'過酸化水素水',2,300,34,'無色','img/item/icon43.png','img/item/43.png','過酸化水素水は酸化剤にも還元剤にも利用されるよ。オキシドールは過酸化水素水の水溶液のことなんだ。酸素の発生や酸化還元滴定の分野で使われるよ。');
INSERT INTO `item` VALUES (44,'硫酸水素ナトリウム',4,700,120,'白色','img/item/icon44.png','img/item/44.png','硫酸水素ナトリウムは塩化ナトリウムに硫酸を加熱しながら反応させることで得られるよ。');
INSERT INTO `item` VALUES (45,'酸化マンガン(Ⅳ)',4,700,87,'黒色','img/item/icon45.png','img/item/45.png','酸化マンガン(Ⅳ)は酸化作用をもつよ。マンガン乾電池の正極や触媒に使われているんだ。二酸化マンガンとも呼ぶよ！
');
INSERT INTO `item` VALUES (46,'塩化マンガン(Ⅱ)',4,700,90.5,'うすい桃色(4水和物)','img/item/icon46.png','img/item/46.png','塩化マンガン(Ⅱ)はマンガンと塩酸などの反応から得られるよ。酸化マンガン(Ⅳ)と塩酸を反応させて塩素を生成するときに生じる副生物でもあるんだ。');
INSERT INTO `item` VALUES (47,'硫化鉄(Ⅱ)',3,500,88,'黒色','img/item/icon47.png','img/item/47.png','硫化鉄(Ⅱ)は鉄と硫黄の反応で生成されるよ。希塩酸や希硫酸と反応させると硫化水素を生じるよ。
');
INSERT INTO `item` VALUES (48,'硫酸鉄(Ⅱ)',3,500,152,'青緑','img/item/icon48.png','img/item/48.png','硫酸鉄(Ⅱ)は鉄に希硫酸を反応させることで得られるよ。');
INSERT INTO `item` VALUES (49,'塩化アンモニウム',2,300,53.5,'無色の結晶','img/item/icon49.png','img/item/49.png','塩化水素にアンモニア水を近づけると塩化アンモニウムの白煙の生じるよ！工業的にはアンモニアソーダ法の副産物として得られるんだ。');
INSERT INTO `item` VALUES (50,'塩化カルシウム',2,300,111,'白色','img/item/icon50.png','img/item/50.png','カルシウムと塩酸を反応させることでできるよ！また工業的製法のアンモニアソーダ法でも作ることができるんだ！乾燥剤や凍結防止剤に使われているよ。');
INSERT INTO `item` VALUES (51,'硫酸銅(Ⅱ)',2,300,160,'青色(水溶液)','img/item/icon51.png','img/item/51.png','硫酸銅(Ⅱ)は硫酸と胴の反応によって生成するよ。水溶液は青色で、水酸化ナトリウム水溶液で青白沈殿を生じ、アンモニア水過剰で溶解し、錯イオン(テトラアンミン銅(Ⅱ)イオン)を含む深青色の水溶液になるよ。');
INSERT INTO `item` VALUES (52,'水',1,100,18,'無色','img/item/icon52.png','img/item/52.png','生活に必要な水！H<sub>2</sub>Oで表されることはみんな知ってるよね！固体は氷、気体は水蒸気と呼ばれるんだ。');
INSERT INTO `item` VALUES (53,'水酸化カルシウム',2,200,74,'白色','img/item/icon53.png','img/item/53.png','消石灰とも呼ばれるよ！壁の上塗りなんかに使われる漆喰に使われてるんだ！これは漆喰のなかの水酸化カルシウムが空気中の二酸化炭素と反応して炭酸カルシウムに変化する性質を利用しているよ！水酸化カルシウムの水溶液は石灰石と呼ばれて、強い塩基性を示すよ！');
INSERT INTO `item` VALUES (54,'塩化ナトリウム',2,100,58.5,'白色','img/item/icon54.png','img/item/54.png','岩塩として産出するほか、海水に2.8%含まれてるよ！NaClは食塩ともよばれるよね！');
INSERT INTO `item` VALUES (55,'炭酸カルシウム',2,200,100,'白色','img/item/icon55.png','img/item/55.png','石灰石や大理石として産出するよ！セメントや歯磨き粉に使われてるんだ。生石灰(酸化カルシウム)と二酸化炭素を反応させると生じる物質なんだけど、逆にこの炭酸カルシウムを熱分解すると生石灰が生成されるよ！');
CREATE TABLE "haveI" (
	`haveIId`	INTEGER,
	`userId`	INTEGER,
	`hi1`	INTEGER DEFAULT 0,
	`hi2`	INTEGER DEFAULT 0,
	`hi3`	INTEGER DEFAULT 0,
	`hi4`	INTEGER DEFAULT 0,
	`hi5`	INTEGER DEFAULT 0,
	`hi6`	INTEGER DEFAULT 0,
	`hi7`	INTEGER DEFAULT 0,
	`hi8`	INTEGER DEFAULT 0,
	`hi9`	INTEGER DEFAULT 0,
	`hi10`	INTEGER DEFAULT 0,
	`hi11`	INTEGER DEFAULT 0,
	`hi12`	INTEGER DEFAULT 0,
	`hi13`	INTEGER DEFAULT 0,
	`hi14`	INTEGER DEFAULT 0,
	`hi15`	INTEGER DEFAULT 0,
	`hi16`	INTEGER DEFAULT 0,
	`hi17`	INTEGER DEFAULT 0,
	`hi18`	INTEGER DEFAULT 0,
	`hi19`	INTEGER DEFAULT 0,
	`hi20`	INTEGER DEFAULT 0,
	`hi21`	INTEGER DEFAULT 0,
	`hi22`	INTEGER DEFAULT 0,
	`hi23`	INTEGER DEFAULT 0,
	`hi24`	INTEGER DEFAULT 0,
	`hi25`	INTEGER DEFAULT 0,
	`hi26`	INTEGER DEFAULT 0,
	`hi27`	INTEGER DEFAULT 0,
	`hi28`	INTEGER DEFAULT 0,
	`hi29`	INTEGER DEFAULT 0,
	`hi30`	INTEGER DEFAULT 0,
	`hi31`	INTEGER DEFAULT 0,
	`hi32`	INTEGER DEFAULT 0,
	`hi33`	INTEGER DEFAULT 0,
	`hi34`	INTEGER DEFAULT 0,
	`hi35`	INTEGER DEFAULT 0,
	`hi36`	INTEGER DEFAULT 0,
	`hi37`	INTEGER DEFAULT 0,
	`hi38`	INTEGER DEFAULT 0,
	`hi39`	INTEGER DEFAULT 0,
	`hi40`	INTEGER DEFAULT 0,
	`hi41`	INTEGER DEFAULT 0,
	`hi42`	INTEGER DEFAULT 0,
	`hi43`	INTEGER DEFAULT 0,
	`hi44`	INTEGER DEFAULT 0,
	`hi45`	INTEGER DEFAULT 0,
	`hi46`	INTEGER DEFAULT 0,
	`hi47`	INTEGER DEFAULT 0,
	`hi48`	INTEGER DEFAULT 0,
	`hi49`	INTEGER DEFAULT 0,
	`hi50`	INTEGER DEFAULT 0,
	`hi51`	INTEGER DEFAULT 0,
	`hi52`	INTEGER DEFAULT 0,
	`hi53`	INTEGER DEFAULT 0,
	`hi54`	INTEGER DEFAULT 0,
	`hi55`	INTEGER DEFAULT 0,
	PRIMARY KEY(`haveIId`)
);
INSERT INTO `haveI` VALUES (1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (4,4,2,2,3,2,4,2,2,4,1,1,4,3,3,4,1,2,3,1,2,3,2,3,1,3,3,3,2,2,1,1,1,2,3,4,1,6,1,3,2,3,2,4,1,0,1,2,2,2,3,2,2,5,2,2,2);
INSERT INTO `haveI` VALUES (5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (6,6,5,2,2,0,1,4,1,1,1,2,0,2,0,1,2,1,3,2,0,0,0,2,1,3,4,0,3,0,0,0,0,1,0,0,1,0,0,1,1,2,0,4,2,2,0,0,3,3,2,0,2,2,2,2,2);
INSERT INTO `haveI` VALUES (7,7,3,0,0,1,1,0,0,0,0,0,1,1,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (8,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (9,9,1,0,0,0,1,0,1,2,0,0,0,2,1,0,0,0,0,2,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (10,10,1,2,2,5,1,0,1,3,2,0,2,3,0,3,1,1,3,2,2,4,2,3,0,3,0,2,2,4,0,0,0,1,0,1,1,3,1,1,0,0,1,3,0,2,0,1,0,6,0,1,1,0,0,3,0);
INSERT INTO `haveI` VALUES (11,11,1,1,1,0,0,0,0,2,1,1,0,1,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (12,12,0,0,0,1,2,1,2,2,0,0,0,0,1,1,1,1,1,1,1,0,1,1,0,1,1,1,0,2,0,1,0,1,1,2,3,0,2,0,0,1,1,2,0,0,0,0,2,0,0,2,1,0,0,0,1);
INSERT INTO `haveI` VALUES (13,13,1,1,1,0,2,1,1,1,1,1,1,1,1,1,1,0,1,1,0,1,1,1,0,0,1,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,2,0,0,0);
INSERT INTO `haveI` VALUES (14,14,1,0,0,1,1,0,0,1,0,0,0,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (15,15,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (16,16,1,1,2,2,0,0,1,2,1,1,1,0,0,2,1,1,3,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,2,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,2,0,0);
INSERT INTO `haveI` VALUES (17,17,0,1,0,2,0,0,1,1,0,0,0,1,0,1,0,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,1);
INSERT INTO `haveI` VALUES (18,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (19,19,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (20,20,2,0,1,0,0,1,0,0,0,0,2,2,0,0,0,0,2,0,0,1,0,1,0,0,0,0,1,1,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,2,0,0,3,0,0,0,0,0,0,0,0);
INSERT INTO `haveI` VALUES (21,21,2,2,0,1,0,0,1,1,1,2,1,2,1,1,0,0,0,0,0,1,0,1,0,1,0,1,1,0,0,0,1,3,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0);
CREATE TABLE `haveE` (
	`haveEId`	INTEGER,
	`environId`	INTEGER,
	`userId`	INTEGER,
	`heDura`	INTEGER,
	PRIMARY KEY(`haveEId`)
);
CREATE TABLE `experiment` (
	`exId`	INTEGER,
	`exB1`	INTEGER DEFAULT 0,
	`exB2`	INTEGER DEFAULT 0,
	`exB3`	INTEGER DEFAULT 0,
	`exB4`	INTEGER DEFAULT 0,
	`exA1`	INTEGER DEFAULT 0,
	`exA2`	INTEGER DEFAULT 0,
	`exA3`	INTEGER DEFAULT 0,
	`exA4`	INTEGER DEFAULT 0,
	`exEnviron`	INTEGER DEFAULT 1,
	`exCost`	INTEGER,
	`exWaitTime`	INTEGER,
	`exFormura`	TEXT,
	PRIMARY KEY(`exId`)
);
INSERT INTO `experiment` VALUES (1,25,34,0,0,42,1,0,0,3,100,30,'Zn+H<sub>2</sub>SO<sub>4</sub>→ZnSO<sub>4</sub>+H<sub>2</sub>');
INSERT INTO `experiment` VALUES (2,45,33,0,0,52,17,46,0,4,200,NULL,NULL);
INSERT INTO `experiment` VALUES (3,43,0,0,0,52,8,0,0,3,100,30,'2H<sub>2</sub>O<sub>2</sub>→2H<sub>2</sub>O+O<sub>2</sub>');
INSERT INTO `experiment` VALUES (4,54,34,0,0,44,35,0,0,4,200,40,'NaCl+H<sub>2</sub>SO<sub>4</sub>→NaHSO<sub>4</sub>+HCl');
INSERT INTO `experiment` VALUES (5,47,34,0,0,48,35,0,0,4,200,40,'FeS+H<sub>2</sub>SO<sub>4</sub>→FeSO<sub>4</sub>+H<sub>2</sub>S');
INSERT INTO `experiment` VALUES (6,49,53,0,0,50,52,37,0,5,200,40,'2NH<sub>4</sub>Cl+Ca(OH)<sub>2</sub>→CaCl<sub>2</sub>+2H<sub>2</sub>O+SO<sub>2</sub>');
INSERT INTO `experiment` VALUES (7,24,34,0,0,51,52,36,0,4,200,40,'Cu+2H<sub>2</sub>S0<sub>4</sub>→CuSO<sub>4</sub>+2H<sub>2</sub>O+SO<sub>4</sub>');
INSERT INTO `experiment` VALUES (8,55,33,0,0,50,52,40,0,4,200,40,'CaCO<sub>3</sub>+2HCl→CaCl<sub>2</sub>+H<sub>2</sub>+CO<sub>2</sub>');
INSERT INTO `experiment` VALUES (9,1,8,0,0,52,0,0,0,1,100,10,'2H<sub>2</sub>+O<sub>2</sub>→2H<sub>2</sub>O');
INSERT INTO `experiment` VALUES (10,52,0,0,0,1,8,0,0,6,500,50,'2H<sub>2</sub>O→2H<sub>2</sub>+O<sub>2</sub>');
INSERT INTO `experiment` VALUES (11,45,43,0,0,0,0,52,8,3,200,40,'2H<sub>2</sub>O<sub>2</sub>→2H<sub>2</sub>O+O<sub>2</sub><br>(酸化マンガン(IV)は触媒)');
INSERT INTO `experiment` VALUES (12,8,6,0,0,0,0,0,40,3,200,40,'C+O<sub>2</sub>→CO<sub>2</sub>');
INSERT INTO `experiment` VALUES (13,36,35,0,0,0,0,52,16,1,100,30,'2H<sub>2</sub>S＋SO<sub>2</sub>→3S＋2H<sub>2</sub>O');
INSERT INTO `experiment` VALUES (14,43,36,0,0,0,0,0,34,1,100,20,'H<sub>2</sub>O<sub>2</sub>＋SO<sub>2</sub>→H<sub>2</sub>SO<sub>4</sub>');
INSERT INTO `experiment` VALUES (15,52,20,0,0,0,0,1,53,3,200,20,'Ca + 2H<sub>2</sub>O → Ca(OH)<sub>2</sub> + H<sub>2</sub>');
INSERT INTO `experiment` VALUES (16,53,40,0,0,0,0,52,55,1,NULL,40,'Ca(OH)<sub>2</sub> + CO<sub>2</sub> → CaCO<sub>3</sub> + H<sub>2</sub>O');
INSERT INTO `experiment` VALUES (17,17,1,0,0,0,0,0,33,7,NULL,10,'H<sub>2</sub> + Cl<sub>2</sub> → 2HCl');
INSERT INTO `experiment` VALUES (18,37,33,0,0,0,0,0,49,1,NULL,20,'HCl + NH<sub>3</sub> → NH<sub>4</sub>Cl');
INSERT INTO `experiment` VALUES (19,7,1,0,0,0,0,0,37,2,NULL,50,'N<sub>2</sub> + 3H<sub>2</sub> → 2NH<sub>3</sub><br>(ハーバー・ボッシュ法)');
INSERT INTO `experiment` VALUES (20,23,16,0,0,0,0,0,47,1,NULL,40,'Fe + S → FeS');
INSERT INTO `experiment` VALUES (21,47,0,0,0,0,0,23,16,1,NULL,40,'FeS → Fe + S');
CREATE TABLE `environment` (
	`environId`	INTEGER,
	`environName`	TEXT,
	`environDura`	INTEGER,
	`environPrice`	INTEGER,
	`environLevel`	INTEGER,
	PRIMARY KEY(`environId`)
);
INSERT INTO `environment` VALUES (1,'基本の実験(実験室)','',10,1);
INSERT INTO `environment` VALUES (2,'工業的製法','',20,2);
INSERT INTO `environment` VALUES (3,'水上置換','',10,1);
INSERT INTO `environment` VALUES (4,'下方置換','',10,1);
INSERT INTO `environment` VALUES (5,'上方置換','',10,1);
INSERT INTO `environment` VALUES (6,'電気分解',NULL,100,3);
INSERT INTO `environment` VALUES (7,'強い紫外線',NULL,1000,4);
CREATE TABLE `collection` (
	`colId`	INTEGER,
	`userId`	INTEGER,
	`c1`	INTEGER DEFAULT 0,
	`c2`	INTEGER DEFAULT 0, c3 INTEGER DEFAULT 0, c4 INTEGER DEFAULT 0, c5 INTEGER DEFAULT 0, c6 INTEGER DEFAULT 0, c7 INTEGER DEFAULT 0, c8 INTEGER DEFAULT 0, c9 INTEGER DEFAULT 0, c10 INTEGER DEFAULT 0, c11 INTEGER DEFAULT 0, c12 INTEGER DEFAULT 0, c13 INTEGER DEFAULT 0, c14 INTEGER DEFAULT 0, c15 INTEGER DEFAULT 0, c16 INTEGER DEFAULT 0, c17 INTEGER DEFAULT 0, c18 INTEGER DEFAULT 0, c19 INTEGER DEFAULT 0, c20 INTEGER DEFAULT 0, c21 INTEGER DEFAULT 0, c22 INTEGER DEFAULT 0, c23 INTEGER DEFAULT 0, c24 INTEGER DEFAULT 0, c25 INTEGER DEFAULT 0, c26 INTEGER DEFAULT 0, c27 INTEGER DEFAULT 0, c28 INTEGER DEFAULT 0, c29 INTEGER DEFAULT 0, c30 INTEGER DEFAULT 0, c31 INTEGER DEFAULT 0, c32 INTEGER DEFAULT 0, c33 INTEGER DEFAULT 0, c34 INTEGER DEFAULT 0, c35 INTEGER DEFAULT 0, c36 INTEGER DEFAULT 0, c37 INTEGER DEFAULT 0, c38 INTEGER DEFAULT 0, c39 INTEGER DEFAULT 0, c40 INTEGER DEFAULT 0, c41 INTEGER DEFAULT 0, c42 INTEGER DEFAULT 0, c43 INTEGER DEFAULT 0, c44 INTEGER DEFAULT 0, c45 INTEGER DEFAULT 0, c46 INTEGER DEFAULT 0, c47 INTEGER DEFAULT 0, c48 INTEGER DEFAULT 0, c49 INTEGER DEFAULT 0, c50 INTEGER DEFAULT 0, c51 INTEGER DEFAULT 0, c52 INTEGER DEFAULT 0, c53 INTEGER DEFAULT 0, c54 INTEGER DEFAULT 0, c55 INTEGER DEFAULT 0,
	PRIMARY KEY(`colId`)
);
INSERT INTO `collection` VALUES (1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `collection` VALUES (2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `collection` VALUES (3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `collection` VALUES (4,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1);
INSERT INTO `collection` VALUES (5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `collection` VALUES (6,6,1,1,1,0,1,1,1,1,1,1,0,1,0,1,1,1,1,1,0,0,0,1,1,1,1,0,1,0,0,0,0,1,0,0,1,0,0,1,1,1,0,1,1,1,0,0,1,1,1,0,1,1,1,1,1);
INSERT INTO `collection` VALUES (7,7,0,0,0,1,1,0,0,0,0,0,1,1,0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `collection` VALUES (8,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `collection` VALUES (9,9,1,0,0,0,1,0,1,1,0,0,0,1,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0);
INSERT INTO `collection` VALUES (10,10,1,1,1,1,1,0,1,1,1,0,1,1,0,1,1,1,1,1,1,1,1,1,0,1,0,1,1,1,0,0,0,1,0,1,1,1,1,1,0,0,1,1,0,1,0,1,1,1,0,1,1,1,0,1,0);
INSERT INTO `collection` VALUES (11,11,1,1,1,0,0,0,1,1,1,1,0,1,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0);
INSERT INTO `collection` VALUES (12,12,1,0,0,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,0,1,1,0,1,1,1,0,1,0,1,0,1,1,1,1,0,1,0,0,1,1,1,0,0,0,0,1,0,0,1,1,1,0,0,1);
INSERT INTO `collection` VALUES (13,13,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0);
INSERT INTO `collection` VALUES (14,14,1,0,0,1,1,0,0,1,0,0,0,0,1,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,1,0,0,0);
INSERT INTO `collection` VALUES (15,15,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `collection` VALUES (16,16,1,1,1,1,0,0,1,1,1,1,1,0,0,1,1,1,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,1,1,0,0);
INSERT INTO `collection` VALUES (17,17,0,1,0,1,0,0,1,1,0,0,0,1,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,1);
INSERT INTO `collection` VALUES (18,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `collection` VALUES (19,19,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `collection` VALUES (20,20,1,0,1,0,0,1,0,0,0,0,1,1,0,0,0,0,1,0,0,1,0,1,0,0,0,0,1,1,0,0,0,1,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0);
INSERT INTO `collection` VALUES (21,21,1,1,0,1,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,1,0,1,0,1,0,1,1,0,0,0,1,1,0,0,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0);
COMMIT;
