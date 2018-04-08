BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" text NOT NULL PRIMARY KEY);
INSERT INTO "schema_migrations" VALUES('20180321233012');
INSERT INTO "schema_migrations" VALUES('20180323113123');
INSERT INTO "schema_migrations" VALUES('20180323164407');
INSERT INTO "schema_migrations" VALUES('20180323165253');
INSERT INTO "schema_migrations" VALUES('20180323173245');
INSERT INTO "schema_migrations" VALUES('20180323173938');
INSERT INTO "schema_migrations" VALUES('20180331111039');
INSERT INTO "schema_migrations" VALUES('20180331191118');
INSERT INTO "schema_migrations" VALUES('20180401114614');
INSERT INTO "schema_migrations" VALUES('20180407144531');
CREATE TABLE "ar_internal_metadata" ("key" text NOT NULL PRIMARY KEY, "value" text, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
INSERT INTO "ar_internal_metadata" VALUES('environment','development','2018-03-23 11:32:20.480216','2018-03-23 11:32:20.480216');
CREATE TABLE "products" ("id" SERIAL PRIMARY KEY NOT NULL, "product" text, "description" text, "image_url" text, "price" decimal, "category" text, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
INSERT INTO "products" VALUES(3,'Mec Delphinus -9C Sleeping Bag - WOMEN''S','The Delphinus sleeping-bag uses down and tightly woven Pertex nylon that sheds moisture and prevents the down from working its way out. The down structure ensures that sleepers won''t develop a cold spot over their core as they shift around during the night. Tested with EN standard, the most dependable standard available for temperature ratings for up to -9 degrees.','sleeping-bag-f.jpg',99,'Women','2018-03-28 09:45:19.016613','2018-03-28 22:15:00.057407');
INSERT INTO "products" VALUES(4,'Mec Delphinus -9C Sleeping Bag - MEN''S','The Delphinus sleeping-bag uses down and tightly woven Pertex nylon that sheds moisture and prevents the down from working its way out. The down structure ensures that sleepers won''t develop a cold spot over their core as they shift around during the night. Tested with EN standard, the most dependable standard available for temperature ratings for up to -9 degrees.','sleeping-bag-m.jpg',99,'Men','2018-03-28 09:46:28.844907','2018-03-28 22:15:25.974528');
INSERT INTO "products" VALUES(5,'Wigwam''s Warm Winter Socks - MEN''S','It’s the warmest sock in our catalog, made up of 75% soft merino wool. It’s designed to keep your feet warm and dry on the longest, coldest, treks. With a heavyweight design, all over cushioning and a fortified sole, the Minus 40 is the ideal cold weather boot sock.','wigwam-socks-m.jpg',5.99,'Men','2018-03-28 22:13:03.286620','2018-03-28 22:13:36.226245');
INSERT INTO "products" VALUES(6,'Wigwam''s Warm Winter Socks - WOMEN''S','It’s the warmest sock in our catalog, made up of 75% soft merino wool. It’s designed to keep your feet warm and dry on the longest, coldest, treks. With a heavyweight design, all over cushioning and a fortified sole, the Minus 40 is the ideal cold weather boot sock.','wigwam-socks-f.jpg',5.99,'Women','2018-03-28 22:14:27.103748','2018-03-28 22:14:27.103748');
INSERT INTO "products" VALUES(7,'Stainless King™ Thermos Bottle 1.2L - MEN’S','Thermo vacuum insulation technology for maximum temperature retention, hot or cold. Durable stainless steel interior and exterior. Cool to the touch with hot liquids, sweat-proof with cold. Insulated stainless steel serving cup. ','thermos-m.jpg',12.99,'Men','2018-03-28 22:19:59.825285','2018-03-28 22:19:59.825285');
INSERT INTO "products" VALUES(8,'Stainless King™ Thermos Bottle 1.2L - WOMEN’S','Thermo vacuum insulation technology for maximum temperature retention, hot or cold. Durable stainless steel interior and exterior. Cool to the touch with hot liquids, sweat-proof with cold. Insulated stainless steel serving cup. ','thermos-f.jpg',12.99,'Women','2018-03-28 22:20:36.664438','2018-03-28 22:20:36.664438');
INSERT INTO "products" VALUES(9,'Nivea Hygiene Product Set - MEN''S','Essential Nivea Hygiene Product Set for Men, consisting of: 
- NIVEA MEN® Sensitive Shower Gel 250ml
- NIVEA MEN® Sensitive Moisturiser 75ml
- NIVEA MEN® Sensitive Anti-Perspirant 150ml
- NIVEA MEN® Sensitive Post Shave Balm 30ml e','nivea-men-box.jpg',7.99,'Men','2018-04-06 23:29:25.591289','2018-04-06 23:34:45.082368');
INSERT INTO "products" VALUES(13,'Nivea Hygiene Product Set - WOMEN''S','Essential Nivea Hygiene Product Set for Women, consisting of: NIVEA® Creme Soft Shower Cream 50ml NIVEA® Refreshing Cleansing Wipes 25 wipes NIVEA® Pearl & Beauty Roll On Deodorant 25ml NIVEA® Soft Face / Body / Hands 25ml NIVEA® Lip Essential Care 4.8g','nivea-set-women.jpg',7.99,'Women','2018-04-06 23:34:15.013390','2018-04-06 23:35:57.297307');
INSERT INTO "products" VALUES(14,'Winter Polar Beanie Set - MEN''S','New Winter Men''''''''s 3pc Warm Polar Fleece Beanie Skull Skully Hat Cap with Solid Color Matching Oblong Scarf and Matching Gloves Gift Set','beanie-set-men.jpg',9,'Men','2018-04-06 23:43:46.582149','2018-04-06 23:43:46.582149');
INSERT INTO "products" VALUES(15,'Winter Polar Beanie Set - WOMEN''S','New Winter Women''''''''s 3pc Warm Polar Fleece Beanie Skull Skully Hat Cap with Solid Color Matching Oblong Scarf and Matching Gloves Gift Set','beanie-set-women.jpg',9.99,'Women','2018-04-06 23:44:29.830138','2018-04-06 23:44:29.830138');
INSERT INTO "products" VALUES(16,'Down winter jacket - MEN''s','Men winter men down jackets, overcoat size that ensures warmth and comfortability. ','winter-jacket-men.jpg',29.99,'Men','2018-04-06 23:49:48.251402','2018-04-06 23:49:48.251402');
INSERT INTO "products" VALUES(17,'Down winter jacket - WOMEN''S','Women winter men down jackets, overcoat size that ensures warmth and comfortability. ','winter-jacket-women.jpg',29.99,'Women','2018-04-06 23:50:28.827146','2018-04-06 23:50:28.827146');
CREATE TABLE "users" ("id" SERIAL PRIMARY KEY NOT NULL, "email" text DEFAULT '' NOT NULL, "encrypted_password" text DEFAULT '' NOT NULL, "reset_password_token" text, "reset_password_sent_at" timestamp, "remember_created_at" timestamp, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" timestamp, "last_sign_in_at" timestamp, "current_sign_in_ip" text, "last_sign_in_ip" text, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "admin" boolean DEFAULT 'f');
INSERT INTO "users" VALUES(1,'catherine.lane@ucdconnect.ie','$2a$11$Jovk2yaRLRSSMdA3mFpxQe1WqnJ5qUQW6ODAP/SiGh1J0LhCOmCIu',NULL,NULL,NULL,24,'2018-04-06 20:46:21.051853','2018-04-06 19:27:55.965400','78.152.254.48','193.1.209.156','2018-03-23 17:19:55.405722','2018-04-06 20:46:21.053492','f');
INSERT INTO "users" VALUES(2,'admin@email.ie','$2a$11$Im.ZYeFaWbmspJR.fFy5ZOfDknBYbKwsJJ35rh4FN1CpP8bO.ZuX2',NULL,NULL,NULL,15,'2018-04-06 23:27:50.833661','2018-04-06 14:13:48.213912','37.228.246.54','78.152.254.48','2018-03-23 17:38:15.834933','2018-04-06 23:27:50.834949','t');
INSERT INTO "users" VALUES(3,'ttesan@gmail.com','$2a$11$MX3H88m9m/L.4almYTs2F.q0fEVIq7AtJ4lm21c9e4KZ5a3NcDQkm',NULL,NULL,NULL,1,'2018-03-31 09:42:54.672993','2018-03-31 09:42:54.672993','109.255.35.39','109.255.35.39','2018-03-31 09:42:54.662844','2018-03-31 09:42:54.673652','f');
INSERT INTO "users" VALUES(4,'ttesan@mail.com','$2a$11$k0WvmcUC6N0zA8J7oc4PC.6BwEhILc/eLLJBlMhHAzqVYJP5AQQOi',NULL,NULL,NULL,1,'2018-04-01 09:52:25.711067','2018-04-01 09:52:25.711067','5.149.172.114','5.149.172.114','2018-04-01 09:52:25.701660','2018-04-01 09:52:25.711875','f');
INSERT INTO "users" VALUES(5,'admin@email.com','$2a$11$.uaJGv/P/oqOJqvN8iKO0eO.a9vspQn7lZw2Yyo6qjCttZAX9zlTC',NULL,NULL,NULL,1,'2018-04-01 12:12:16.825744','2018-04-01 12:12:16.825744','5.149.172.114','5.149.172.114','2018-04-01 12:12:16.811808','2018-04-01 12:12:16.826620','f');
INSERT INTO "users" VALUES(6,'ttesan12@gmail.com','$2a$11$j7zWQy6Pp8heo7k8C5xYLetlnOz2B/u/TjZE5ho64.85GRQiN7tUO',NULL,NULL,NULL,11,'2018-04-08 14:21:12.618666','2018-04-08 13:59:22.260531','109.255.35.39','109.255.35.39','2018-04-01 13:39:38.618938','2018-04-08 14:21:12.619881','f');
INSERT INTO "users" VALUES(7,'ruby@email.ie','$2a$11$VSaekyVSVYwRW1yzq51ueutZnuNBLPrE/EYJ231vI1WSCgOgGO7/q',NULL,NULL,NULL,3,'2018-04-02 11:12:16.559869','2018-04-02 11:03:18.927107','78.152.254.48','78.152.254.48','2018-04-02 10:59:53.220181','2018-04-02 11:12:16.560704','f');
INSERT INTO "users" VALUES(8,'daniela.kepper@gmx.at','$2a$11$8OBYnWOH29IFOH5RPrlqiOPx//Cq56sFVSKMxYeSLSfgAXPBcMaby',NULL,NULL,NULL,4,'2018-04-02 13:14:35.144152','2018-04-02 13:11:11.746895','62.46.12.203','62.46.12.203','2018-04-02 12:09:31.186972','2018-04-02 13:14:35.145081','f');
INSERT INTO "users" VALUES(9,'test@email.ie','$2a$11$iEBMVZfHdkFpxrucQyuY0eqV.zvfq.KPGL0xOFBRT6.7wvijM9ZCi','f722b1e905b75526a483d5a2150e76fafa85e777990f176f17071f6d7677ca36','2018-04-04 14:30:58.696606',NULL,1,'2018-04-03 09:34:25.663684','2018-04-03 09:34:25.663684','78.152.254.48','78.152.254.48','2018-04-03 09:34:25.655020','2018-04-04 14:30:58.696976','f');
CREATE TABLE "profiles" ("id" SERIAL PRIMARY KEY NOT NULL, "firstname" text, "lastname" text, "address" text, "user_id" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, CONSTRAINT "fk_rails_e424190865"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
INSERT INTO "profiles" VALUES(1,'Cathy','Lane','Swords',1,'2018-03-23 17:20:11.937863','2018-03-23 17:20:11.937863');
INSERT INTO "profiles" VALUES(2,'John','Doe','Dublin',2,'2018-03-23 17:38:36.449852','2018-03-23 17:38:36.449852');
INSERT INTO "profiles" VALUES(3,'T','W','gas',4,'2018-04-01 09:52:34.868536','2018-04-01 09:52:34.868536');
INSERT INTO "profiles" VALUES(4,'hd','fs','af',5,'2018-04-01 12:12:24.775929','2018-04-01 12:12:24.775929');
INSERT INTO "profiles" VALUES(5,'df','t','ad',6,'2018-04-01 13:39:52.985215','2018-04-01 13:39:52.985215');
INSERT INTO "profiles" VALUES(6,'Ruby','Rails','Dublin',7,'2018-04-02 11:13:38.107361','2018-04-02 11:13:38.107361');
INSERT INTO "profiles" VALUES(7,'Daniela','K','this is my address 9',8,'2018-04-02 12:09:39.198622','2018-04-02 12:09:39.198622');
INSERT INTO "profiles" VALUES(8,'Test','Case','Dublin',9,'2018-04-03 09:35:02.219886','2018-04-03 09:35:02.219886');
CREATE TABLE "carts" ("id" SERIAL PRIMARY KEY NOT NULL, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
CREATE TABLE "order_items" ("id" SERIAL PRIMARY KEY NOT NULL, "product_id" integer, "order_id" integer, "unit_price" float, "quantity" integer, "total_price" float, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
INSERT INTO "order_items" VALUES(8,3,1,99.0,1,99.0,'2018-04-01 12:34:37.472018','2018-04-01 12:34:37.472018');
INSERT INTO "order_items" VALUES(29,3,2,99.0,1,99.0,'2018-04-01 17:17:47.970538','2018-04-01 17:17:47.970538');
INSERT INTO "order_items" VALUES(30,5,3,5.99,1,5.99,'2018-04-02 16:22:15.999019','2018-04-02 16:22:15.999019');
INSERT INTO "order_items" VALUES(44,8,6,12.99,1,12.99,'2018-04-06 23:27:32.411672','2018-04-06 23:27:32.411672');
INSERT INTO "order_items" VALUES(45,8,6,12.99,1,12.99,'2018-04-06 23:27:35.749850','2018-04-06 23:27:35.749850');
INSERT INTO "order_items" VALUES(81,17,7,29.99,1,29.99,'2018-04-07 19:00:27.971062','2018-04-07 19:00:27.971062');
INSERT INTO "order_items" VALUES(82,16,7,29.99,1,29.99,'2018-04-07 19:00:30.459620','2018-04-07 19:00:30.459620');
INSERT INTO "order_items" VALUES(83,17,7,29.99,1,29.99,'2018-04-07 19:07:30.126436','2018-04-07 19:07:30.126436');
INSERT INTO "order_items" VALUES(84,17,7,29.99,1,29.99,'2018-04-07 22:49:57.743812','2018-04-07 22:49:57.743812');
INSERT INTO "order_items" VALUES(86,17,9,29.99,1,29.99,'2018-04-07 22:52:48.777980','2018-04-07 22:52:48.777980');
INSERT INTO "order_items" VALUES(103,17,10,29.99,1,29.99,'2018-04-08 10:53:16.268304','2018-04-08 10:53:16.268304');
INSERT INTO "order_items" VALUES(104,17,11,29.99,1,29.99,'2018-04-08 10:53:56.773535','2018-04-08 10:53:56.773535');
INSERT INTO "order_items" VALUES(105,17,12,29.99,1,29.99,'2018-04-08 10:54:11.078359','2018-04-08 10:54:11.078359');
INSERT INTO "order_items" VALUES(106,17,13,29.99,1,29.99,'2018-04-08 10:54:29.933641','2018-04-08 10:54:29.933641');
INSERT INTO "order_items" VALUES(107,17,14,29.99,1,29.99,'2018-04-08 10:54:44.285936','2018-04-08 10:54:44.285936');
INSERT INTO "order_items" VALUES(108,17,15,29.99,1,29.99,'2018-04-08 10:55:09.141905','2018-04-08 10:55:09.141905');
INSERT INTO "order_items" VALUES(118,17,16,29.99,1,29.99,'2018-04-08 12:14:08.529473','2018-04-08 12:14:08.529473');
INSERT INTO "order_items" VALUES(119,17,17,29.99,1,29.99,'2018-04-08 12:24:49.478159','2018-04-08 12:24:49.478159');
INSERT INTO "order_items" VALUES(120,17,18,29.99,1,29.99,'2018-04-08 12:27:43.756021','2018-04-08 12:27:43.756021');
INSERT INTO "order_items" VALUES(121,17,19,29.99,1,29.99,'2018-04-08 12:28:12.640400','2018-04-08 12:28:12.640400');
INSERT INTO "order_items" VALUES(122,16,19,29.99,1,29.99,'2018-04-08 12:28:15.417782','2018-04-08 12:28:15.417782');
INSERT INTO "order_items" VALUES(123,17,20,29.99,1,29.99,'2018-04-08 12:28:48.769961','2018-04-08 12:28:48.769961');
INSERT INTO "order_items" VALUES(124,17,21,29.99,1,29.99,'2018-04-08 12:35:57.842693','2018-04-08 12:35:57.842693');
INSERT INTO "order_items" VALUES(125,16,21,29.99,1,29.99,'2018-04-08 12:36:41.928662','2018-04-08 12:36:41.928662');
INSERT INTO "order_items" VALUES(126,17,22,29.99,2,59.98,'2018-04-08 12:47:16.390156','2018-04-08 12:47:21.792078');
INSERT INTO "order_items" VALUES(127,17,23,29.99,1,29.99,'2018-04-08 12:53:18.081254','2018-04-08 12:53:18.081254');
INSERT INTO "order_items" VALUES(128,17,24,29.99,1,29.99,'2018-04-08 12:58:37.441530','2018-04-08 12:58:37.441530');
INSERT INTO "order_items" VALUES(129,17,25,29.99,1,29.99,'2018-04-08 13:04:47.676078','2018-04-08 13:04:47.676078');
INSERT INTO "order_items" VALUES(130,17,26,29.99,1,29.99,'2018-04-08 13:20:46.395462','2018-04-08 13:20:46.395462');
INSERT INTO "order_items" VALUES(131,17,27,29.99,1,29.99,'2018-04-08 13:22:51.815687','2018-04-08 13:22:51.815687');
INSERT INTO "order_items" VALUES(132,17,28,29.99,1,29.99,'2018-04-08 13:24:35.567208','2018-04-08 13:24:35.567208');
INSERT INTO "order_items" VALUES(133,17,29,29.99,1,29.99,'2018-04-08 13:29:40.565935','2018-04-08 13:29:40.565935');
INSERT INTO "order_items" VALUES(134,17,30,29.99,1,29.99,'2018-04-08 13:59:29.353264','2018-04-08 13:59:29.353264');
INSERT INTO "order_items" VALUES(135,17,31,29.99,1,29.99,'2018-04-08 14:08:22.665211','2018-04-08 14:08:22.665211');
INSERT INTO "order_items" VALUES(136,17,32,29.99,1,29.99,'2018-04-08 14:15:12.246285','2018-04-08 14:15:12.246285');
INSERT INTO "order_items" VALUES(138,17,33,29.99,1,29.99,'2018-04-08 14:27:10.495250','2018-04-08 14:27:10.495250');
CREATE TABLE "orders" ("id" integer NOT NULL PRIMARY KEY, "details" text DEFAULT NULL, "date" timestamp DEFAULT NULL, "total" float DEFAULT NULL, "status" text DEFAULT NULL, "product_id" integer DEFAULT NULL, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "subtotal" float DEFAULT NULL, "tax" float, "shipping" float);
INSERT INTO "orders" VALUES(1,NULL,NULL,NULL,NULL,NULL,'2018-04-01 12:15:11.237197','2018-04-01 12:34:37.469595',99.0,NULL,NULL);
INSERT INTO "orders" VALUES(2,NULL,NULL,NULL,NULL,NULL,'2018-04-01 13:40:07.300423','2018-04-01 17:17:47.968547',198.0,NULL,NULL);
INSERT INTO "orders" VALUES(3,NULL,NULL,NULL,NULL,NULL,'2018-04-02 16:22:15.996271','2018-04-02 16:22:15.996271',5.99,NULL,NULL);
INSERT INTO "orders" VALUES(4,NULL,NULL,NULL,NULL,NULL,'2018-04-03 09:06:00.386320','2018-04-03 09:07:54.345855',198.0,NULL,NULL);
INSERT INTO "orders" VALUES(5,NULL,NULL,NULL,NULL,NULL,'2018-04-03 09:10:37.689142','2018-04-03 09:10:38.762995',198.0,NULL,NULL);
INSERT INTO "orders" VALUES(6,NULL,NULL,NULL,NULL,NULL,'2018-04-06 23:27:32.409542','2018-04-06 23:27:35.747520',25.98,NULL,NULL);
INSERT INTO "orders" VALUES(7,NULL,NULL,NULL,NULL,NULL,'2018-04-07 22:49:57.741741','2018-04-07 22:49:57.741741',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(8,NULL,NULL,NULL,NULL,NULL,'2018-04-07 22:50:06.635706','2018-04-08 09:11:29.865387',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(9,NULL,NULL,NULL,NULL,NULL,'2018-04-07 22:52:48.775801','2018-04-07 22:52:48.775801',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(10,NULL,NULL,NULL,NULL,NULL,'2018-04-08 10:53:16.266091','2018-04-08 10:53:16.266091',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(11,NULL,NULL,NULL,NULL,NULL,'2018-04-08 10:53:56.771490','2018-04-08 10:53:56.771490',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(13,NULL,NULL,NULL,NULL,NULL,'2018-04-08 10:54:29.931652','2018-04-08 10:54:29.931652',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(14,NULL,NULL,NULL,NULL,NULL,'2018-04-08 10:54:44.284014','2018-04-08 10:54:44.284014',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(15,NULL,NULL,NULL,NULL,NULL,'2018-04-08 10:55:09.139874','2018-04-08 10:55:09.139874',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(16,NULL,NULL,NULL,NULL,NULL,'2018-04-08 11:34:07.424087','2018-04-08 12:14:08.527375',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(17,NULL,NULL,NULL,NULL,NULL,'2018-04-08 12:24:49.474310','2018-04-08 12:24:49.474310',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(18,NULL,NULL,NULL,NULL,NULL,'2018-04-08 12:27:43.753092','2018-04-08 12:27:43.753092',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(19,NULL,NULL,NULL,NULL,NULL,'2018-04-08 12:28:12.638452','2018-04-08 12:28:15.415476',59.98,NULL,NULL);
INSERT INTO "orders" VALUES(20,NULL,NULL,NULL,NULL,NULL,'2018-04-08 12:28:48.767394','2018-04-08 12:28:48.767394',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(21,NULL,NULL,NULL,NULL,NULL,'2018-04-08 12:35:57.840533','2018-04-08 12:36:41.926251',59.98,NULL,NULL);
INSERT INTO "orders" VALUES(22,NULL,NULL,NULL,NULL,NULL,'2018-04-08 12:47:16.386280','2018-04-08 12:47:16.386280',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(23,NULL,NULL,NULL,NULL,NULL,'2018-04-08 12:53:18.078696','2018-04-08 12:53:18.078696',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(24,NULL,NULL,NULL,NULL,NULL,'2018-04-08 12:58:37.439525','2018-04-08 12:58:37.439525',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(25,NULL,NULL,NULL,NULL,NULL,'2018-04-08 13:04:47.674114','2018-04-08 13:04:47.674114',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(26,NULL,NULL,NULL,NULL,NULL,'2018-04-08 13:20:46.393093','2018-04-08 13:20:46.393093',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(27,NULL,NULL,NULL,NULL,NULL,'2018-04-08 13:22:51.813531','2018-04-08 13:22:51.813531',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(28,NULL,NULL,NULL,NULL,NULL,'2018-04-08 13:24:35.565319','2018-04-08 13:24:35.565319',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(29,NULL,NULL,NULL,NULL,NULL,'2018-04-08 13:29:40.564060','2018-04-08 13:29:40.564060',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(30,NULL,NULL,NULL,NULL,NULL,'2018-04-08 13:59:29.351242','2018-04-08 13:59:29.351242',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(31,NULL,NULL,NULL,NULL,NULL,'2018-04-08 14:08:22.663027','2018-04-08 14:08:22.663027',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(32,NULL,NULL,NULL,NULL,NULL,'2018-04-08 14:15:12.244232','2018-04-08 14:15:12.244232',29.99,NULL,NULL);
INSERT INTO "orders" VALUES(33,NULL,NULL,NULL,NULL,NULL,'2018-04-08 14:24:02.982126','2018-04-08 14:27:10.493143',29.99,NULL,NULL);
CREATE TABLE "payment_notifications" ("id" SERIAL PRIMARY KEY NOT NULL, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE INDEX "index_profiles_on_user_id" ON "profiles" ("user_id");
CREATE INDEX "index_orders_on_product_id" ON "orders" ("product_id");
COMMIT;