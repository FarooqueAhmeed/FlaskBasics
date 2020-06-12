
use flasky;

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(255) NOT NULL,
  `author_birthday` date DEFAULT NULL,
  `author_nationality` varchar(255) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ----------------------------
-- Table structure for publisher
-- ----------------------------
DROP TABLE IF EXISTS `publisher`;
CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ----------------------------
-- Records of publisher
-- ----------------------------
BEGIN;
INSERT INTO `publisher` VALUES (1, 'Goldner Inc', '7760 Homewood Park');
INSERT INTO `publisher` VALUES (2, 'Jacobs Inc', '7322 Tony Point');
INSERT INTO `publisher` VALUES (3, 'Stark-DuBuque', '883 Mitchell Road');
INSERT INTO `publisher` VALUES (4, 'Bradtke, Balistreri and Strosin', '8 Ruskin Trail');
INSERT INTO `publisher` VALUES (5, 'Abbott-Reichel', '2656 Parkside Lane');
INSERT INTO `publisher` VALUES (6, 'Marvin, Pacocha and Dooley', '65261 Randy Circle');
INSERT INTO `publisher` VALUES (7, 'Heidenreich, Grant and Rodriguez', '90 Raven Alley');
INSERT INTO `publisher` VALUES (8, 'Runolfsson and Sons', '7 Lunder Parkway');
INSERT INTO `publisher` VALUES (9, 'Feil and Sons', '34 High Crossing Drive');
INSERT INTO `publisher` VALUES (10, 'Koch-Lockman', '39 Meadow Vale Hill');
INSERT INTO `publisher` VALUES (11, 'Block Group', '38005 Clarendon Lane');
INSERT INTO `publisher` VALUES (12, 'Orn-Toy', '8722 Farwell Road');
INSERT INTO `publisher` VALUES (13, 'Witting-Schaefer', '84 Westport Center');
INSERT INTO `publisher` VALUES (14, 'Stanton-Dach', '5 Westerfield Pass');
INSERT INTO `publisher` VALUES (15, 'Schuster, Will and Effertz', '4 Annamark Terrace');
INSERT INTO `publisher` VALUES (16, 'Legros, Hahn and D\'Amore', '116 Transport Park');
INSERT INTO `publisher` VALUES (17, 'Pagac-Hahn', '94960 Harbort Road');
INSERT INTO `publisher` VALUES (18, 'Hessel, Kris and Ruecker', '35 Autumn Leaf Plaza');
INSERT INTO `publisher` VALUES (19, 'Zieme-Huels', '94 Miller Park');
INSERT INTO `publisher` VALUES (20, 'Cummerata, Carroll and Kuhic', '380 Derek Point');
INSERT INTO `publisher` VALUES (21, 'Rogahn, Moore and Toy', '91 Columbus Plaza');
INSERT INTO `publisher` VALUES (22, 'Kovacek-Trantow', '4 Thackeray Center');
INSERT INTO `publisher` VALUES (23, 'Hansen Group', '024 Anzinger Place');
INSERT INTO `publisher` VALUES (24, 'Bergnaum, Rolfson and Mueller', '28273 Norway Maple Road');
INSERT INTO `publisher` VALUES (25, 'Windler-Prohaska', '977 Vernon Plaza');
INSERT INTO `publisher` VALUES (26, 'Kohler, Barrows and Armstrong', '2573 Dayton Street');
INSERT INTO `publisher` VALUES (27, 'Boyer Inc', '2760 Arrowood Center');
INSERT INTO `publisher` VALUES (28, 'Rau-Ratke', '66 Clemons Junction');
INSERT INTO `publisher` VALUES (29, 'Price and Sons', '7130 Park Meadow Road');
INSERT INTO `publisher` VALUES (30, 'Volkman, Yost and Hamill', '2 Thackeray Plaza');
INSERT INTO `publisher` VALUES (31, 'Schumm, Rath and Hintz', '6806 Algoma Street');
INSERT INTO `publisher` VALUES (32, 'Barrows LLC', '8 Northridge Street');
INSERT INTO `publisher` VALUES (33, 'Kessler and Sons', '10341 Graceland Drive');
INSERT INTO `publisher` VALUES (34, 'Vandervort Group', '08 Pawling Drive');
INSERT INTO `publisher` VALUES (35, 'Hyatt, Klein and Hagenes', '92 Donald Alley');
INSERT INTO `publisher` VALUES (36, 'Windler Group', '43042 Myrtle Place');
INSERT INTO `publisher` VALUES (37, 'Bahringer, Rice and Gerlach', '3 Rockefeller Terrace');
INSERT INTO `publisher` VALUES (38, 'Thompson-Brown', '48843 Independence Way');
INSERT INTO `publisher` VALUES (39, 'Wunsch, Adams and Christiansen', '7887 Cherokee Trail');
INSERT INTO `publisher` VALUES (40, 'Tillman-Reynolds', '31 Ryan Avenue');
INSERT INTO `publisher` VALUES (41, 'Thiel-Rippin', '509 Wayridge Street');
INSERT INTO `publisher` VALUES (42, 'Nienow Inc', '54156 Barby Pass');
INSERT INTO `publisher` VALUES (43, 'Ritchie Inc', '3 Valley Edge Road');
INSERT INTO `publisher` VALUES (44, 'Abshire Group', '97201 Roth Avenue');
INSERT INTO `publisher` VALUES (45, 'Kuphal-Franecki', '1993 Granby Park');
INSERT INTO `publisher` VALUES (46, 'Von Group', '0 Union Lane');
INSERT INTO `publisher` VALUES (47, 'Balistreri-Braun', '760 American Ash Terrace');
INSERT INTO `publisher` VALUES (48, 'Robel-Smitham', '402 Erie Court');
INSERT INTO `publisher` VALUES (49, 'Homenick-Bechtelar', '4 Hudson Lane');
INSERT INTO `publisher` VALUES (50, 'Hagenes, Luettgen and Becker', '0 Clove Center');
INSERT INTO `publisher` VALUES (51, 'Funk Group', '70261 Eagan Crossing');
INSERT INTO `publisher` VALUES (52, 'Jones-Hayes', '6826 Kensington Trail');
INSERT INTO `publisher` VALUES (53, 'Blick, Carroll and Hahn', '08 Ilene Place');
INSERT INTO `publisher` VALUES (54, 'Adams Group', '451 Mitchell Parkway');
INSERT INTO `publisher` VALUES (55, 'O\'Connell-Flatley', '99501 Dovetail Center');
INSERT INTO `publisher` VALUES (56, 'O\'Connell Group', '64 Dayton Pass');
INSERT INTO `publisher` VALUES (57, 'Conn LLC', '15 Shelley Trail');
INSERT INTO `publisher` VALUES (58, 'Greenfelder, Olson and Sporer', '137 Springs Plaza');
INSERT INTO `publisher` VALUES (59, 'Lockman and Sons', '72496 Atwood Avenue');
INSERT INTO `publisher` VALUES (60, 'Greenholt-Walsh', '6 Evergreen Pass');
COMMIT;

-- ----------------------------
-- Table structure for library
-- ----------------------------
DROP TABLE IF EXISTS `library`;
CREATE TABLE `library` (
  `lib_id` int(11) NOT NULL,
  `lib_name` varchar(255) NOT NULL,
  `lib_address` varchar(255) NOT NULL,
  `lib_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lib_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader` (
  `reader_id` int(11) NOT NULL,
  `reader_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `reader_phone` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `reader_lib_id` int(11) NOT NULL,
  PRIMARY KEY (`reader_id`),
  KEY `register_at` (`reader_lib_id`),
  CONSTRAINT `register_at` FOREIGN KEY (`reader_lib_id`) REFERENCES `library` (`lib_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ----------------------------
-- Table structure for editor
-- ----------------------------
DROP TABLE IF EXISTS `editor`;
CREATE TABLE `editor` (
  `editor_id` int(11) NOT NULL,
  `editor_name` varchar(32) NOT NULL,
  `editor_title` varchar(32) DEFAULT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`editor_id`),
  KEY `work_for` (`p_id`),
  CONSTRAINT `work_for` FOREIGN KEY (`p_id`) REFERENCES `publisher` (`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `book_isbn` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `book_price` decimal(10,2) DEFAULT NULL,
  `book_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pub_date` date DEFAULT NULL,
  `title_review_id` int(11) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_isbn`),
  KEY `pub_by` (`p_id`),
  KEY `title_review` (`title_review_id`),
  KEY `edit_by` (`e_id`),
  KEY `write_by` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
create TABLE `review` (
  `review_id` int(11) NOT NULL,
  `comment_by` int(11) NOT NULL,
  `review_date` date NOT NULL,
  `review_content` varchar(512) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `comment` (`comment_by`),
  KEY `review_on` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

alter  table book add CONSTRAINT `edit_by` FOREIGN KEY (`e_id`) REFERENCES `editor` (`editor_id`);
alter  table book add CONSTRAINT `pub_by` FOREIGN KEY (`p_id`) REFERENCES `publisher` (`publisher_id`);
alter  table book add CONSTRAINT `title_review` FOREIGN KEY (`title_review_id`) REFERENCES `review` (`review_id`) ON DELETE SET NULL;
alter  table book add CONSTRAINT `write_by` FOREIGN KEY (`a_id`) REFERENCES `author` (`author_id`) ON DELETE CASCADE;


alter  table review add CONSTRAINT `comment` FOREIGN KEY (`comment_by`) REFERENCES `reader` (`reader_id`);
alter  table review add CONSTRAINT `review_on` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_isbn`) ON DELETE RESTRICT ON UPDATE RESTRICT;
  



-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_isbn` int(11) NOT NULL,
  `lib_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`collection_id`),
  KEY `fk_collection` (`book_isbn`),
  KEY `fk_collection_1` (`lib_id`),
  CONSTRAINT `fk_collection` FOREIGN KEY (`book_isbn`) REFERENCES `book` (`book_isbn`),
  CONSTRAINT `fk_collection_1` FOREIGN KEY (`lib_id`) REFERENCES `library` (`lib_id`)
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `staff_title` varchar(255) DEFAULT NULL,
  `l_id` int(11) NOT NULL,
  `staff_phone` char(32) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `hired_by` (`l_id`),
  CONSTRAINT `hired_by` FOREIGN KEY (`l_id`) REFERENCES `library` (`lib_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- ----------------------------
-- Records of author
-- ----------------------------

INSERT INTO `author` VALUES (1, 'Johnathan Lilly', '1970-10-21', 'China', 'jlilly0@blogger.com');
INSERT INTO `author` VALUES (2, 'Thomasa Fairman', '1951-10-31', 'United States', 'tfairman1@parallels.com');
INSERT INTO `author` VALUES (3, 'Iggie Barrett', '1988-08-18', 'Poland', 'ibarrett2@goo.ne.jp');
INSERT INTO `author` VALUES (4, 'Melany Overall', '1986-03-18', 'Iran', 'moverall3@bandcamp.com');
INSERT INTO `author` VALUES (5, 'Anica Rigbye', '1989-07-28', 'China', 'arigbye4@loc.gov');
INSERT INTO `author` VALUES (6, 'Kristoffer Lattie', '1989-12-06', 'China', 'klattie5@plala.or.jp');
INSERT INTO `author` VALUES (7, 'Heywood Wiltshaw', '1973-12-14', 'Azerbaijan', 'hwiltshaw6@slashdot.org');
INSERT INTO `author` VALUES (8, 'Marie Gawkes', '1978-01-10', 'Montenegro', 'mgawkes7@tripadvisor.com');
INSERT INTO `author` VALUES (9, 'Katerine Greenmon', '1961-10-06', 'Mexico', 'kgreenmon8@wunderground.com');
INSERT INTO `author` VALUES (10, 'Abagail McGauhy', '1948-10-11', 'Poland', 'amcgauhy9@foxnews.com');
INSERT INTO `author` VALUES (11, 'Chad Tennewell', '1984-11-07', 'France', 'ctennewella@360.cn');
INSERT INTO `author` VALUES (12, 'Clarance Dignon', '1973-01-13', 'Australia', 'cdignonb@ihg.com');
COMMIT;




-- ----------------------------
-- Records of editor
-- ----------------------------
BEGIN;
INSERT INTO `editor` VALUES (1, 'Zora Collison', 'Ms', 2);
INSERT INTO `editor` VALUES (2, 'Kari Andryushin', 'Ms', 5);
INSERT INTO `editor` VALUES (3, 'Dolorita Klosser', 'Ms', 5);
INSERT INTO `editor` VALUES (4, 'Selby Grzelczyk', 'Mrs', 9);
INSERT INTO `editor` VALUES (5, 'Gian Cranidge', 'Dr', 10);
INSERT INTO `editor` VALUES (6, 'Jillana Shepton', 'Dr', 5);
INSERT INTO `editor` VALUES (7, 'Nolan Sapwell', 'Honorable', 6);
INSERT INTO `editor` VALUES (8, 'Sophronia Faustian', 'Honorable', 10);
INSERT INTO `editor` VALUES (9, 'Tyrone Bransby', 'Dr', 7);
INSERT INTO `editor` VALUES (10, 'Cthrine Staples', 'Rev', 7);
INSERT INTO `editor` VALUES (11, 'Currie Magee', 'Rev', 8);
INSERT INTO `editor` VALUES (12, 'Carlos Machel', 'Ms', 4);
INSERT INTO `editor` VALUES (13, 'Nikos Camell', 'Ms', 7);
INSERT INTO `editor` VALUES (14, 'Kaylil Treasure', 'Mrs', 4);
INSERT INTO `editor` VALUES (15, 'Jehu Lantry', 'Rev', 7);
INSERT INTO `editor` VALUES (16, 'Kaela De Francisci', 'Ms', 6);
INSERT INTO `editor` VALUES (17, 'Sawyere Sobey', 'Rev', 9);
INSERT INTO `editor` VALUES (18, 'Cordula Crayke', 'Honorable', 9);
INSERT INTO `editor` VALUES (19, 'Susanna Oakenfull', 'Honorable', 6);
INSERT INTO `editor` VALUES (20, 'Deny Harte', 'Ms', 9);
COMMIT;



-- ----------------------------
-- Records of book
-- ----------------------------
BEGIN;
INSERT INTO `book` VALUES (1, 7, 12, 33.12, 'The Hunger Games (The Hunger Games, #1)', '2015-05-04', NULL, 1);
INSERT INTO `book` VALUES (2, 3, 3, 33.64, 'Harry Potter and the Sorcerer\'s Stone (Harry Potter, #1)', '2016-09-18', NULL, 2);
INSERT INTO `book` VALUES (3, 8, 1, 82.27, 'Twilight (Twilight, #1)', '2015-04-12', NULL, 5);
INSERT INTO `book` VALUES (4, 5, 1, 20.66, 'To Kill a Mockingbird', '2017-10-04', NULL, 4);
INSERT INTO `book` VALUES (5, 9, 2, 26.60, 'The Great Gatsby', '2016-05-09', NULL, 7);
INSERT INTO `book` VALUES (6, 2, 8, 95.66, 'The Fault in Our Stars', '2015-05-22', NULL, NULL);
INSERT INTO `book` VALUES (7, 3, 8, 63.45, 'The Hobbit', '2014-06-25', NULL, 9);
INSERT INTO `book` VALUES (8, 6, 8, 65.50, 'The Catcher in the Rye', '2017-08-03', NULL, NULL);
INSERT INTO `book` VALUES (9, 9, 8, 88.04, 'Angels & Demons  (Robert Langdon, #1)', '2017-12-15', NULL, NULL);
INSERT INTO `book` VALUES (10, 6, 2, 37.29, 'Pride and Prejudice', '2018-03-14', NULL, NULL);
INSERT INTO `book` VALUES (11, 6, 6, 89.70, 'The Kite Runner', '2018-03-08', NULL, NULL);
INSERT INTO `book` VALUES (12, 2, 2, 36.52, 'Divergent (Divergent, #1)', '2014-12-30', NULL, NULL);
INSERT INTO `book` VALUES (13, 1, 4, 96.45, '1984', '2017-09-25', NULL, NULL);
INSERT INTO `book` VALUES (14, 3, 9, 87.10, 'Animal Farm', '2018-03-29', NULL, NULL);
INSERT INTO `book` VALUES (15, 3, 8, 22.10, 'The Diary of a Young Girl', '2014-06-29', NULL, NULL);
INSERT INTO `book` VALUES (16, 3, 9, 44.41, 'The Girl with the Dragon Tattoo (Millennium, #1)', '2015-08-18', NULL, NULL);
INSERT INTO `book` VALUES (17, 1, 6, 56.21, 'Catching Fire (The Hunger Games, #2)', '2014-10-30', NULL, NULL);
INSERT INTO `book` VALUES (18, 6, 4, 21.29, 'Harry Potter and the Prisoner of Azkaban (Harry Potter, #3)', '2017-04-08', NULL, NULL);
INSERT INTO `book` VALUES (19, 9, 2, 23.62, 'The Fellowship of the Ring (The Lord of the Rings, #1)', '2016-09-16', NULL, NULL);
INSERT INTO `book` VALUES (20, 10, 6, 33.85, 'Mockingjay (The Hunger Games, #3)', '2017-07-28', NULL, NULL);
INSERT INTO `book` VALUES (21, 6, 7, 36.23, 'Harry Potter and the Order of the Phoenix (Harry Potter, #5)', '2017-01-08', NULL, NULL);
INSERT INTO `book` VALUES (22, 4, 4, 72.03, 'The Lovely Bones', '2018-02-05', NULL, NULL);
INSERT INTO `book` VALUES (23, 7, 4, 71.36, 'Harry Potter and the Chamber of Secrets (Harry Potter, #2)', '2018-02-19', NULL, NULL);
INSERT INTO `book` VALUES (24, 10, 8, 20.62, 'Harry Potter and the Goblet of Fire (Harry Potter, #4)', '2014-08-14', NULL, NULL);
INSERT INTO `book` VALUES (25, 3, 9, 48.93, 'Harry Potter and the Deathly Hallows (Harry Potter, #7)', '2015-12-01', NULL, NULL);
INSERT INTO `book` VALUES (26, 10, 5, 78.91, 'The Da Vinci Code (Robert Langdon, #2)', '2015-02-20', NULL, NULL);
INSERT INTO `book` VALUES (27, 4, 5, 29.36, 'Harry Potter and the Half-Blood Prince (Harry Potter, #6)', '2015-10-30', NULL, NULL);
INSERT INTO `book` VALUES (28, 2, 1, 25.99, 'Lord of the Flies', '2015-03-02', NULL, NULL);
INSERT INTO `book` VALUES (29, 10, 6, 88.82, 'Romeo and Juliet', '2015-06-14', NULL, NULL);
INSERT INTO `book` VALUES (30, 7, 7, 45.34, 'Gone Girl', '2014-06-15', NULL, NULL);
INSERT INTO `book` VALUES (31, 2, 2, 43.54, 'The Help', '2017-11-22', NULL, NULL);
INSERT INTO `book` VALUES (32, 7, 2, 79.64, 'Of Mice and Men', '2018-03-29', NULL, NULL);
INSERT INTO `book` VALUES (33, 9, 8, 65.35, 'Memoirs of a Geisha', '2017-12-25', NULL, NULL);
INSERT INTO `book` VALUES (34, 1, 1, 55.84, 'Fifty Shades of Grey (Fifty Shades, #1)', '2017-05-04', NULL, NULL);
INSERT INTO `book` VALUES (35, 1, 8, 96.55, 'The Alchemist', '2015-12-06', NULL, NULL);
INSERT INTO `book` VALUES (36, 10, 8, 59.02, 'The Giver (The Giver, #1)', '2016-02-04', NULL, NULL);
INSERT INTO `book` VALUES (37, 1, 1, 46.84, 'The Lion, the Witch, and the Wardrobe (Chronicles of Narnia, #1)', '2016-09-26', NULL, NULL);
INSERT INTO `book` VALUES (38, 2, 8, 72.36, 'The Time Traveler\'s Wife', '2014-11-30', NULL, NULL);
INSERT INTO `book` VALUES (39, 5, 8, 22.69, 'A Game of Thrones (A Song of Ice and Fire, #1)', '2017-01-08', NULL, NULL);
INSERT INTO `book` VALUES (40, 5, 3, 80.07, 'Eat, Pray, Love', '2017-06-29', NULL, NULL);
INSERT INTO `book` VALUES (41, 7, 8, 81.99, 'The Lightning Thief (Percy Jackson and the Olympians, #1)', '2015-06-26', NULL, NULL);
INSERT INTO `book` VALUES (42, 2, 5, 47.99, 'Little Women (Little Women, #1)', '2015-12-07', NULL, NULL);
INSERT INTO `book` VALUES (43, 7, 10, 87.04, 'Jane Eyre', '2015-05-06', NULL, NULL);
INSERT INTO `book` VALUES (44, 2, 5, 38.68, 'The Notebook (The Notebook, #1)', '2015-06-05', NULL, NULL);
INSERT INTO `book` VALUES (45, 9, 10, 95.95, 'Life of Pi', '2016-01-05', NULL, NULL);
INSERT INTO `book` VALUES (46, 7, 2, 37.16, 'Water for Elephants', '2015-10-05', NULL, NULL);
INSERT INTO `book` VALUES (47, 1, 4, 88.88, 'The Book Thief', '2016-11-27', NULL, NULL);
INSERT INTO `book` VALUES (48, 9, 4, 85.68, 'Fahrenheit 451', '2015-02-10', NULL, NULL);
INSERT INTO `book` VALUES (49, 3, 3, 87.01, 'New Moon (Twilight, #2)', '2014-11-04', NULL, NULL);
INSERT INTO `book` VALUES (50, 9, 4, 67.62, 'Where the Sidewalk Ends', '2014-06-16', NULL, NULL);
INSERT INTO `book` VALUES (51, 6, 8, 28.81, 'City of Bones (The Mortal Instruments, #1)', '2015-12-08', NULL, NULL);
INSERT INTO `book` VALUES (52, 5, 9, 54.96, 'Eclipse (Twilight, #3)', '2015-07-06', NULL, NULL);
INSERT INTO `book` VALUES (53, 4, 10, 49.66, 'Eragon (The Inheritance Cycle, #1)', '2017-04-06', NULL, NULL);
INSERT INTO `book` VALUES (54, 9, 3, 36.77, 'The Hitchhiker\'s Guide to the Galaxy (Hitchhiker\'s Guide to the Galaxy, #1)', '2014-05-13', NULL, NULL);
INSERT INTO `book` VALUES (55, 4, 8, 80.08, 'Brave New World', '2016-10-03', NULL, NULL);
INSERT INTO `book` VALUES (56, 6, 8, 91.31, 'Breaking Dawn (Twilight, #4)', '2014-08-25', NULL, NULL);
INSERT INTO `book` VALUES (57, 6, 6, 29.13, 'The Secret Life of Bees', '2016-07-31', NULL, NULL);
INSERT INTO `book` VALUES (58, 8, 9, 20.27, 'The Adventures of Huckleberry Finn', '2015-05-18', NULL, NULL);
INSERT INTO `book` VALUES (59, 2, 8, 27.89, 'Charlotte\'s Web', '2016-08-15', NULL, NULL);
INSERT INTO `book` VALUES (60, 5, 1, 96.72, 'The Curious Incident of the Dog in the Night-Time', '2014-07-31', NULL, NULL);
INSERT INTO `book` VALUES (61, 6, 5, 41.86, 'The Girl on the Train1', '2015-08-23', NULL, NULL);
INSERT INTO `book` VALUES (62, 10, 7, 52.90, 'The Golden Compass (His Dark Materials, #1)', '2016-06-30', NULL, NULL);
INSERT INTO `book` VALUES (63, 5, 10, 91.57, 'Wuthering Heights', '2015-06-17', NULL, NULL);
INSERT INTO `book` VALUES (64, 6, 7, 50.69, 'My Sister\'s Keeper', '2015-01-23', NULL, NULL);
INSERT INTO `book` VALUES (65, 9, 8, 98.58, 'Slaughterhouse-Five', '2016-09-29', NULL, NULL);
INSERT INTO `book` VALUES (66, 1, 5, 63.39, 'Gone with the Wind', '2017-10-21', NULL, NULL);
INSERT INTO `book` VALUES (67, 3, 9, 46.78, 'A Thousand Splendid Suns', '2014-09-02', NULL, NULL);
INSERT INTO `book` VALUES (68, 6, 10, 35.00, 'The Perks of Being a Wallflower', '2016-01-02', NULL, NULL);
INSERT INTO `book` VALUES (69, 4, 8, 60.97, 'Insurgent (Divergent, #2)', '2016-02-03', NULL, NULL);
INSERT INTO `book` VALUES (70, 4, 9, 86.94, 'Ender\'s Game (Ender\'s Saga, #1)', '2014-08-23', NULL, NULL);
INSERT INTO `book` VALUES (71, 6, 7, 37.09, 'Frankenstein', '2016-04-07', NULL, NULL);
INSERT INTO `book` VALUES (72, 6, 1, 69.00, 'The Shining (The Shining #1)', '2018-01-29', NULL, NULL);
INSERT INTO `book` VALUES (73, 7, 1, 34.17, 'The Host (The Host, #1)', '2015-04-02', NULL, NULL);
INSERT INTO `book` VALUES (74, 9, 7, 41.68, 'Looking for Alaska', '2016-06-11', NULL, NULL);
INSERT INTO `book` VALUES (75, 2, 9, 57.85, 'Bridget Jones\'s Diary (Bridget Jones, #1)', '2016-06-03', NULL, NULL);
INSERT INTO `book` VALUES (76, 7, 7, 62.35, 'Sense and Sensibility', '2016-08-22', NULL, NULL);
INSERT INTO `book` VALUES (77, 8, 5, 68.20, 'Holes (Holes, #1)', '2016-05-23', NULL, NULL);
INSERT INTO `book` VALUES (78, 4, 1, 26.33, 'The Devil Wears Prada (The Devil Wears Prada, #1)', '2015-01-25', NULL, NULL);
INSERT INTO `book` VALUES (79, 10, 10, 82.42, 'The Odyssey', '2014-11-01', NULL, NULL);
INSERT INTO `book` VALUES (80, 8, 1, 59.32, 'The Little Prince', '2014-06-02', NULL, NULL);
INSERT INTO `book` VALUES (81, 4, 8, 26.64, 'The Glass Castle', '2014-04-01', NULL, NULL);
INSERT INTO `book` VALUES (82, 1, 1, 25.17, 'Into the Wild', '2017-07-05', NULL, NULL);
INSERT INTO `book` VALUES (83, 7, 2, 79.27, 'A Tale of Two Cities', '2015-08-23', NULL, NULL);
INSERT INTO `book` VALUES (84, 3, 6, 88.34, 'Jurassic Park (Jurassic Park, #1)', '2017-10-15', NULL, NULL);
INSERT INTO `book` VALUES (85, 3, 2, 44.58, 'The Giving Tree', '2016-09-30', NULL, NULL);
INSERT INTO `book` VALUES (86, 2, 3, 23.07, 'A Time to Kill', '2016-12-09', NULL, NULL);
INSERT INTO `book` VALUES (87, 6, 1, 34.34, 'Night (The Night Trilogy #1)', '2017-12-31', NULL, NULL);
INSERT INTO `book` VALUES (88, 4, 8, 64.48, 'Paper Towns', '2017-11-21', NULL, NULL);
INSERT INTO `book` VALUES (89, 10, 5, 22.52, 'The Princess Bride ', '2017-06-26', NULL, NULL);
INSERT INTO `book` VALUES (90, 1, 5, 84.11, 'The Outsiders', '2017-12-05', NULL, NULL);
COMMIT;


-- ----------------------------
-- Records of library
-- ----------------------------
BEGIN;
INSERT INTO `library` VALUES (1, 'Beahan Group Library', '99 Bartelt Lane', 'shabbergham0@recross.org');
INSERT INTO `library` VALUES (2, 'Thiel, Hayes and Hettinger Library', '7375 Debra Center', 'jdenty1@tripadvisor.com');
INSERT INTO `library` VALUES (3, 'Goyette Inc Library', '46548 Kennedy Court', 'wcromleholme2@wikipedia.org');
INSERT INTO `library` VALUES (4, 'Tromp and Sons Library', '378 Corry Court', 'ppauel3@hatena.ne.jp');
INSERT INTO `library` VALUES (5, 'Kunze Group Library', '104 Waywood Point', 'ccreane4@seesaa.net');
INSERT INTO `library` VALUES (6, 'Cummerata and Sons Library', '31583 Arizona Point', 'fpatterfield5@amazon.de');
INSERT INTO `library` VALUES (7, 'Walter Inc Library', '3 Bashford Trail', 'knapoleone6@storify.com');
INSERT INTO `library` VALUES (8, 'Skiles, Schoen and Wiza Library', '80930 Superior Plaza', 'hbadger7@ask.com');
INSERT INTO `library` VALUES (9, 'Mayer Inc Library', '99966 Nelson Avenue', 'enorthcote8@example.com');
INSERT INTO `library` VALUES (10, 'Hand-Kozey Library', '9483 Hanover Alley', 'amallabar9@auda.org.au');
COMMIT;



-- ----------------------------
-- Records of collection
-- ----------------------------
BEGIN;
INSERT INTO `collection` VALUES (3, 83, 6, 20);
INSERT INTO `collection` VALUES (4, 69, 6, 78);
INSERT INTO `collection` VALUES (5, 31, 8, 19);
INSERT INTO `collection` VALUES (6, 24, 6, 90);
INSERT INTO `collection` VALUES (7, 18, 5, 41);
INSERT INTO `collection` VALUES (8, 32, 3, 58);
INSERT INTO `collection` VALUES (9, 6, 3, 96);
INSERT INTO `collection` VALUES (10, 66, 2, 14);
INSERT INTO `collection` VALUES (11, 26, 10, 8);
INSERT INTO `collection` VALUES (12, 50, 8, 18);
INSERT INTO `collection` VALUES (13, 32, 4, 7);
INSERT INTO `collection` VALUES (14, 42, 7, 63);
INSERT INTO `collection` VALUES (15, 8, 9, 21);
INSERT INTO `collection` VALUES (16, 77, 7, 46);
INSERT INTO `collection` VALUES (17, 45, 9, 65);
INSERT INTO `collection` VALUES (18, 1, 5, 48);
INSERT INTO `collection` VALUES (19, 60, 10, 35);
INSERT INTO `collection` VALUES (20, 50, 5, 8);
INSERT INTO `collection` VALUES (21, 14, 5, 83);
INSERT INTO `collection` VALUES (22, 1, 6, 60);
INSERT INTO `collection` VALUES (24, 43, 8, 21);
INSERT INTO `collection` VALUES (25, 21, 10, 88);
INSERT INTO `collection` VALUES (27, 16, 8, 15);
INSERT INTO `collection` VALUES (28, 28, 3, 82);
INSERT INTO `collection` VALUES (29, 51, 5, 84);
INSERT INTO `collection` VALUES (30, 68, 10, 45);
INSERT INTO `collection` VALUES (31, 32, 6, 38);
INSERT INTO `collection` VALUES (33, 15, 2, 99);
INSERT INTO `collection` VALUES (34, 31, 10, 22);
INSERT INTO `collection` VALUES (35, 22, 7, 35);
INSERT INTO `collection` VALUES (37, 36, 4, 31);
INSERT INTO `collection` VALUES (38, 73, 7, 77);
INSERT INTO `collection` VALUES (39, 14, 4, 34);
INSERT INTO `collection` VALUES (40, 3, 2, 54);
INSERT INTO `collection` VALUES (41, 88, 4, 96);
INSERT INTO `collection` VALUES (42, 88, 4, 9);
INSERT INTO `collection` VALUES (43, 19, 9, 97);
INSERT INTO `collection` VALUES (44, 18, 9, 17);
INSERT INTO `collection` VALUES (45, 29, 10, 67);
INSERT INTO `collection` VALUES (47, 19, 4, 87);
INSERT INTO `collection` VALUES (48, 47, 2, 6);
INSERT INTO `collection` VALUES (49, 19, 2, 17);
INSERT INTO `collection` VALUES (50, 79, 2, 66);
INSERT INTO `collection` VALUES (51, 54, 2, 12);
INSERT INTO `collection` VALUES (52, 30, 5, 87);
INSERT INTO `collection` VALUES (53, 82, 9, 76);
INSERT INTO `collection` VALUES (54, 54, 10, 99);
INSERT INTO `collection` VALUES (55, 89, 6, 59);
INSERT INTO `collection` VALUES (56, 4, 10, 1);
INSERT INTO `collection` VALUES (58, 31, 9, 81);
INSERT INTO `collection` VALUES (59, 81, 5, 39);
INSERT INTO `collection` VALUES (60, 52, 5, 19);
INSERT INTO `collection` VALUES (61, 50, 10, 37);
INSERT INTO `collection` VALUES (62, 3, 7, 63);
INSERT INTO `collection` VALUES (63, 48, 6, 81);
INSERT INTO `collection` VALUES (64, 36, 5, 91);
INSERT INTO `collection` VALUES (65, 47, 7, 86);
INSERT INTO `collection` VALUES (66, 90, 7, 20);
INSERT INTO `collection` VALUES (69, 73, 10, 3);
INSERT INTO `collection` VALUES (70, 14, 2, 59);
INSERT INTO `collection` VALUES (71, 51, 4, 24);
INSERT INTO `collection` VALUES (72, 40, 10, 37);
INSERT INTO `collection` VALUES (73, 44, 6, 17);
INSERT INTO `collection` VALUES (74, 78, 2, 89);
INSERT INTO `collection` VALUES (75, 48, 8, 80);
INSERT INTO `collection` VALUES (76, 82, 4, 93);
INSERT INTO `collection` VALUES (77, 55, 5, 56);
INSERT INTO `collection` VALUES (78, 33, 6, 66);
INSERT INTO `collection` VALUES (79, 16, 5, 35);
INSERT INTO `collection` VALUES (81, 49, 3, 64);
INSERT INTO `collection` VALUES (82, 60, 10, 14);
INSERT INTO `collection` VALUES (83, 90, 6, 91);
INSERT INTO `collection` VALUES (84, 80, 7, 48);
INSERT INTO `collection` VALUES (85, 43, 3, 57);
INSERT INTO `collection` VALUES (86, 69, 10, 46);
INSERT INTO `collection` VALUES (87, 8, 9, 23);
INSERT INTO `collection` VALUES (88, 44, 5, 32);
INSERT INTO `collection` VALUES (89, 43, 4, 30);
INSERT INTO `collection` VALUES (90, 53, 3, 75);
INSERT INTO `collection` VALUES (91, 87, 2, 94);
INSERT INTO `collection` VALUES (92, 3, 5, 5);
INSERT INTO `collection` VALUES (93, 40, 5, 9);
INSERT INTO `collection` VALUES (94, 3, 5, 63);
INSERT INTO `collection` VALUES (96, 58, 2, 57);
INSERT INTO `collection` VALUES (98, 36, 9, 59);
INSERT INTO `collection` VALUES (99, 5, 8, 42);
INSERT INTO `collection` VALUES (100, 87, 3, 23);
INSERT INTO `collection` VALUES (101, 3, 9, 27);
INSERT INTO `collection` VALUES (102, 68, 7, 53);
INSERT INTO `collection` VALUES (103, 2, 2, 66);
INSERT INTO `collection` VALUES (104, 49, 4, 72);
INSERT INTO `collection` VALUES (105, 81, 9, 47);
INSERT INTO `collection` VALUES (106, 16, 8, 77);
INSERT INTO `collection` VALUES (108, 68, 8, 28);
INSERT INTO `collection` VALUES (109, 32, 2, 1);
INSERT INTO `collection` VALUES (110, 78, 8, 7);
INSERT INTO `collection` VALUES (111, 30, 5, 51);
INSERT INTO `collection` VALUES (112, 16, 8, 38);
INSERT INTO `collection` VALUES (114, 6, 2, 51);
INSERT INTO `collection` VALUES (115, 46, 4, 65);
INSERT INTO `collection` VALUES (116, 60, 7, 69);
INSERT INTO `collection` VALUES (117, 89, 10, 10);
INSERT INTO `collection` VALUES (118, 52, 4, 95);
INSERT INTO `collection` VALUES (119, 52, 6, 76);
INSERT INTO `collection` VALUES (120, 9, 7, 64);
INSERT INTO `collection` VALUES (121, 64, 10, 57);
INSERT INTO `collection` VALUES (122, 83, 3, 58);
INSERT INTO `collection` VALUES (123, 84, 6, 89);
INSERT INTO `collection` VALUES (124, 15, 4, 30);
INSERT INTO `collection` VALUES (125, 15, 2, 82);
INSERT INTO `collection` VALUES (126, 87, 2, 74);
INSERT INTO `collection` VALUES (127, 50, 7, 37);
INSERT INTO `collection` VALUES (128, 67, 6, 83);
INSERT INTO `collection` VALUES (129, 54, 10, 33);
INSERT INTO `collection` VALUES (130, 29, 4, 70);
INSERT INTO `collection` VALUES (131, 57, 2, 25);
INSERT INTO `collection` VALUES (132, 13, 5, 99);
INSERT INTO `collection` VALUES (133, 32, 6, 35);
INSERT INTO `collection` VALUES (134, 84, 2, 76);
INSERT INTO `collection` VALUES (135, 37, 2, 23);
INSERT INTO `collection` VALUES (136, 71, 7, 22);
INSERT INTO `collection` VALUES (137, 66, 3, 11);
INSERT INTO `collection` VALUES (138, 32, 10, 3);
INSERT INTO `collection` VALUES (139, 13, 7, 27);
INSERT INTO `collection` VALUES (140, 60, 9, 79);
INSERT INTO `collection` VALUES (142, 90, 7, 63);
INSERT INTO `collection` VALUES (143, 47, 10, 55);
INSERT INTO `collection` VALUES (144, 49, 10, 1);
INSERT INTO `collection` VALUES (145, 78, 7, 61);
INSERT INTO `collection` VALUES (146, 83, 5, 29);
INSERT INTO `collection` VALUES (147, 56, 7, 60);
INSERT INTO `collection` VALUES (148, 12, 2, 32);
INSERT INTO `collection` VALUES (149, 6, 7, 30);
INSERT INTO `collection` VALUES (150, 27, 2, 27);
INSERT INTO `collection` VALUES (151, 34, 3, 57);
INSERT INTO `collection` VALUES (152, 76, 2, 32);
INSERT INTO `collection` VALUES (153, 23, 10, 7);
INSERT INTO `collection` VALUES (155, 33, 3, 43);
INSERT INTO `collection` VALUES (156, 13, 6, 87);
INSERT INTO `collection` VALUES (157, 14, 9, 90);
INSERT INTO `collection` VALUES (158, 80, 6, 69);
INSERT INTO `collection` VALUES (160, 45, 3, 94);
INSERT INTO `collection` VALUES (161, 77, 7, 78);
INSERT INTO `collection` VALUES (162, 53, 6, 72);
INSERT INTO `collection` VALUES (163, 78, 5, 99);
INSERT INTO `collection` VALUES (164, 85, 6, 1);
INSERT INTO `collection` VALUES (165, 66, 2, 83);
INSERT INTO `collection` VALUES (166, 72, 10, 99);
INSERT INTO `collection` VALUES (167, 6, 2, 93);
INSERT INTO `collection` VALUES (168, 60, 8, 19);
INSERT INTO `collection` VALUES (170, 18, 10, 99);
INSERT INTO `collection` VALUES (171, 26, 4, 54);
INSERT INTO `collection` VALUES (173, 52, 9, 64);
INSERT INTO `collection` VALUES (175, 8, 10, 34);
INSERT INTO `collection` VALUES (176, 25, 5, 98);
INSERT INTO `collection` VALUES (177, 89, 3, 11);
INSERT INTO `collection` VALUES (178, 11, 7, 69);
INSERT INTO `collection` VALUES (179, 37, 4, 5);
INSERT INTO `collection` VALUES (180, 20, 7, 22);
INSERT INTO `collection` VALUES (181, 7, 10, 99);
INSERT INTO `collection` VALUES (182, 23, 10, 92);
INSERT INTO `collection` VALUES (183, 26, 7, 55);
INSERT INTO `collection` VALUES (184, 4, 10, 34);
INSERT INTO `collection` VALUES (185, 14, 8, 17);
INSERT INTO `collection` VALUES (186, 39, 7, 2);
INSERT INTO `collection` VALUES (187, 13, 10, 39);
INSERT INTO `collection` VALUES (188, 79, 4, 54);
INSERT INTO `collection` VALUES (191, 64, 9, 5);
INSERT INTO `collection` VALUES (193, 63, 2, 27);
INSERT INTO `collection` VALUES (194, 72, 3, 49);
INSERT INTO `collection` VALUES (195, 33, 8, 96);
INSERT INTO `collection` VALUES (196, 15, 4, 82);
INSERT INTO `collection` VALUES (197, 3, 3, 42);
INSERT INTO `collection` VALUES (198, 70, 5, 17);
INSERT INTO `collection` VALUES (199, 9, 7, 32);
INSERT INTO `collection` VALUES (200, 77, 3, 42);
INSERT INTO `collection` VALUES (201, 22, 3, 94);
INSERT INTO `collection` VALUES (202, 30, 8, 39);
INSERT INTO `collection` VALUES (203, 39, 7, 91);
INSERT INTO `collection` VALUES (205, 10, 6, 36);
INSERT INTO `collection` VALUES (206, 31, 2, 90);
INSERT INTO `collection` VALUES (207, 9, 8, 74);
INSERT INTO `collection` VALUES (208, 13, 5, 62);
INSERT INTO `collection` VALUES (209, 62, 6, 13);
INSERT INTO `collection` VALUES (210, 6, 10, 91);
INSERT INTO `collection` VALUES (211, 11, 3, 96);
INSERT INTO `collection` VALUES (212, 75, 10, 6);
INSERT INTO `collection` VALUES (213, 42, 9, 34);
INSERT INTO `collection` VALUES (214, 52, 4, 20);
INSERT INTO `collection` VALUES (215, 55, 2, 13);
INSERT INTO `collection` VALUES (216, 65, 3, 82);
INSERT INTO `collection` VALUES (217, 42, 6, 70);
INSERT INTO `collection` VALUES (218, 66, 4, 47);
INSERT INTO `collection` VALUES (221, 26, 7, 90);
INSERT INTO `collection` VALUES (223, 64, 10, 13);
INSERT INTO `collection` VALUES (224, 61, 2, 76);
INSERT INTO `collection` VALUES (225, 63, 3, 49);
INSERT INTO `collection` VALUES (226, 52, 9, 2);
INSERT INTO `collection` VALUES (227, 75, 9, 49);
INSERT INTO `collection` VALUES (228, 8, 3, 78);
INSERT INTO `collection` VALUES (229, 43, 10, 90);
INSERT INTO `collection` VALUES (230, 18, 7, 96);
INSERT INTO `collection` VALUES (231, 64, 5, 65);
INSERT INTO `collection` VALUES (232, 85, 8, 98);
INSERT INTO `collection` VALUES (233, 33, 5, 69);
INSERT INTO `collection` VALUES (235, 46, 4, 38);
INSERT INTO `collection` VALUES (236, 26, 5, 95);
INSERT INTO `collection` VALUES (237, 47, 10, 51);
INSERT INTO `collection` VALUES (238, 30, 9, 63);
INSERT INTO `collection` VALUES (239, 10, 8, 24);
INSERT INTO `collection` VALUES (240, 68, 4, 67);
INSERT INTO `collection` VALUES (241, 36, 2, 41);
INSERT INTO `collection` VALUES (242, 12, 10, 71);
INSERT INTO `collection` VALUES (243, 43, 3, 89);
INSERT INTO `collection` VALUES (244, 13, 3, 86);
INSERT INTO `collection` VALUES (245, 28, 2, 53);
INSERT INTO `collection` VALUES (246, 64, 2, 7);
INSERT INTO `collection` VALUES (247, 1, 9, 54);
INSERT INTO `collection` VALUES (248, 69, 4, 70);
INSERT INTO `collection` VALUES (250, 17, 10, 6);
INSERT INTO `collection` VALUES (251, 69, 6, 81);
INSERT INTO `collection` VALUES (253, 43, 6, 30);
INSERT INTO `collection` VALUES (254, 90, 2, 4);
INSERT INTO `collection` VALUES (255, 16, 9, 95);
INSERT INTO `collection` VALUES (257, 81, 7, 98);
INSERT INTO `collection` VALUES (258, 50, 5, 38);
INSERT INTO `collection` VALUES (259, 13, 8, 3);
INSERT INTO `collection` VALUES (260, 78, 9, 31);
INSERT INTO `collection` VALUES (262, 34, 2, 5);
INSERT INTO `collection` VALUES (263, 81, 3, 30);
INSERT INTO `collection` VALUES (264, 76, 6, 56);
INSERT INTO `collection` VALUES (265, 26, 2, 91);
INSERT INTO `collection` VALUES (266, 29, 6, 16);
INSERT INTO `collection` VALUES (267, 12, 5, 75);
INSERT INTO `collection` VALUES (268, 27, 4, 43);
INSERT INTO `collection` VALUES (269, 4, 5, 31);
INSERT INTO `collection` VALUES (271, 53, 10, 9);
INSERT INTO `collection` VALUES (272, 28, 10, 91);
INSERT INTO `collection` VALUES (273, 49, 2, 78);
INSERT INTO `collection` VALUES (274, 5, 5, 61);
INSERT INTO `collection` VALUES (275, 23, 10, 76);
INSERT INTO `collection` VALUES (276, 49, 6, 39);
INSERT INTO `collection` VALUES (277, 70, 9, 90);
INSERT INTO `collection` VALUES (278, 62, 2, 4);
INSERT INTO `collection` VALUES (279, 43, 7, 47);
INSERT INTO `collection` VALUES (280, 88, 3, 91);
INSERT INTO `collection` VALUES (282, 67, 6, 65);
INSERT INTO `collection` VALUES (283, 39, 8, 67);
INSERT INTO `collection` VALUES (285, 58, 10, 32);
INSERT INTO `collection` VALUES (286, 40, 4, 2);
INSERT INTO `collection` VALUES (288, 80, 6, 79);
INSERT INTO `collection` VALUES (289, 90, 6, 95);
INSERT INTO `collection` VALUES (290, 67, 9, 58);
INSERT INTO `collection` VALUES (292, 16, 9, 52);
INSERT INTO `collection` VALUES (293, 15, 5, 59);
INSERT INTO `collection` VALUES (294, 39, 8, 5);
INSERT INTO `collection` VALUES (295, 33, 10, 80);
INSERT INTO `collection` VALUES (296, 84, 6, 30);
INSERT INTO `collection` VALUES (297, 40, 5, 74);
INSERT INTO `collection` VALUES (298, 64, 8, 57);
INSERT INTO `collection` VALUES (300, 61, 2, 35);
INSERT INTO `collection` VALUES (301, 59, 10, 67);
INSERT INTO `collection` VALUES (302, 16, 2, 12);
INSERT INTO `collection` VALUES (303, 1, 1, 9);
INSERT INTO `collection` VALUES (305, 3, 1, 39);
INSERT INTO `collection` VALUES (306, 4, 1, 54);
INSERT INTO `collection` VALUES (307, 5, 1, 49);
INSERT INTO `collection` VALUES (308, 6, 1, 46);
INSERT INTO `collection` VALUES (309, 7, 1, 93);
INSERT INTO `collection` VALUES (310, 8, 1, 83);
INSERT INTO `collection` VALUES (311, 9, 1, 22);
INSERT INTO `collection` VALUES (312, 10, 1, 58);
INSERT INTO `collection` VALUES (313, 11, 1, 93);
INSERT INTO `collection` VALUES (314, 12, 1, 74);
INSERT INTO `collection` VALUES (315, 13, 1, 39);
INSERT INTO `collection` VALUES (316, 14, 1, 27);
INSERT INTO `collection` VALUES (317, 15, 1, 14);
INSERT INTO `collection` VALUES (318, 16, 1, 18);
INSERT INTO `collection` VALUES (319, 17, 1, 91);
INSERT INTO `collection` VALUES (320, 18, 1, 27);
INSERT INTO `collection` VALUES (321, 19, 1, 74);
INSERT INTO `collection` VALUES (322, 20, 1, 43);
INSERT INTO `collection` VALUES (323, 21, 1, 75);
INSERT INTO `collection` VALUES (324, 22, 1, 81);
INSERT INTO `collection` VALUES (325, 23, 1, 31);
INSERT INTO `collection` VALUES (326, 24, 1, 23);
INSERT INTO `collection` VALUES (327, 25, 1, 74);
INSERT INTO `collection` VALUES (328, 26, 1, 84);
INSERT INTO `collection` VALUES (329, 27, 1, 72);
INSERT INTO `collection` VALUES (330, 28, 1, 94);
INSERT INTO `collection` VALUES (331, 29, 1, 10);
INSERT INTO `collection` VALUES (332, 30, 1, 61);
INSERT INTO `collection` VALUES (333, 31, 1, 34);
INSERT INTO `collection` VALUES (334, 32, 1, 75);
INSERT INTO `collection` VALUES (335, 33, 1, 83);
INSERT INTO `collection` VALUES (336, 34, 1, 100);
INSERT INTO `collection` VALUES (337, 35, 1, 73);
INSERT INTO `collection` VALUES (338, 36, 1, 75);
INSERT INTO `collection` VALUES (339, 37, 1, 76);
INSERT INTO `collection` VALUES (340, 38, 1, 21);
INSERT INTO `collection` VALUES (341, 39, 1, 43);
INSERT INTO `collection` VALUES (342, 40, 1, 68);
INSERT INTO `collection` VALUES (343, 41, 1, 86);
INSERT INTO `collection` VALUES (344, 42, 1, 58);
INSERT INTO `collection` VALUES (345, 43, 1, 24);
INSERT INTO `collection` VALUES (346, 44, 1, 93);
INSERT INTO `collection` VALUES (347, 45, 1, 85);
INSERT INTO `collection` VALUES (348, 46, 1, 39);
INSERT INTO `collection` VALUES (349, 47, 1, 35);
INSERT INTO `collection` VALUES (350, 48, 1, 5);
INSERT INTO `collection` VALUES (351, 49, 1, 26);
INSERT INTO `collection` VALUES (352, 50, 1, 56);
INSERT INTO `collection` VALUES (353, 51, 1, 13);
INSERT INTO `collection` VALUES (354, 52, 1, 99);
INSERT INTO `collection` VALUES (355, 53, 1, 19);
INSERT INTO `collection` VALUES (356, 54, 1, 57);
INSERT INTO `collection` VALUES (357, 55, 1, 39);
INSERT INTO `collection` VALUES (358, 56, 1, 25);
INSERT INTO `collection` VALUES (359, 57, 1, 19);
INSERT INTO `collection` VALUES (360, 58, 1, 35);
INSERT INTO `collection` VALUES (361, 59, 1, 73);
INSERT INTO `collection` VALUES (362, 60, 1, 10);
INSERT INTO `collection` VALUES (363, 61, 1, 82);
INSERT INTO `collection` VALUES (364, 62, 1, 73);
INSERT INTO `collection` VALUES (365, 63, 1, 76);
INSERT INTO `collection` VALUES (366, 64, 1, 50);
INSERT INTO `collection` VALUES (367, 65, 1, 77);
INSERT INTO `collection` VALUES (368, 66, 1, 10);
INSERT INTO `collection` VALUES (369, 67, 1, 97);
INSERT INTO `collection` VALUES (370, 68, 1, 93);
INSERT INTO `collection` VALUES (371, 69, 1, 49);
INSERT INTO `collection` VALUES (372, 70, 1, 85);
INSERT INTO `collection` VALUES (373, 71, 1, 37);
INSERT INTO `collection` VALUES (374, 72, 1, 6);
INSERT INTO `collection` VALUES (375, 73, 1, 79);
INSERT INTO `collection` VALUES (376, 74, 1, 82);
INSERT INTO `collection` VALUES (377, 75, 1, 68);
INSERT INTO `collection` VALUES (378, 76, 1, 30);
INSERT INTO `collection` VALUES (379, 77, 1, 58);
INSERT INTO `collection` VALUES (380, 78, 1, 45);
INSERT INTO `collection` VALUES (381, 79, 1, 34);
INSERT INTO `collection` VALUES (382, 80, 1, 64);
INSERT INTO `collection` VALUES (383, 81, 1, 33);
INSERT INTO `collection` VALUES (384, 82, 1, 22);
INSERT INTO `collection` VALUES (385, 83, 1, 79);
INSERT INTO `collection` VALUES (386, 84, 1, 5);
INSERT INTO `collection` VALUES (387, 85, 1, 65);
INSERT INTO `collection` VALUES (388, 86, 1, 76);
INSERT INTO `collection` VALUES (389, 87, 1, 35);
INSERT INTO `collection` VALUES (390, 88, 1, 27);
INSERT INTO `collection` VALUES (391, 89, 1, 17);
INSERT INTO `collection` VALUES (392, 90, 1, 23);
INSERT INTO `collection` VALUES (395, 2, 1, 43);
COMMIT;









-- ----------------------------
-- Records of reader
-- ----------------------------
BEGIN;
INSERT INTO `reader` VALUES (1, 'Carissa Adamolli', '8616583494', 6);
INSERT INTO `reader` VALUES (2, 'Jacklyn Borer', '5922167609', 4);
INSERT INTO `reader` VALUES (3, 'Egon Wilding', '7339983421', 6);
INSERT INTO `reader` VALUES (4, 'Guillemette Crooks', '9787941947', 4);
INSERT INTO `reader` VALUES (5, 'Dolph Juniper', '8914261070', 1);
INSERT INTO `reader` VALUES (6, 'Lilith Leate', '9853851032', 4);
INSERT INTO `reader` VALUES (7, 'Blinni Skillern', '5401759898', 1);
INSERT INTO `reader` VALUES (8, 'Octavia Gurley', '3123208379', 9);
INSERT INTO `reader` VALUES (9, 'Garald Nutman', '2326610482', 5);
INSERT INTO `reader` VALUES (10, 'Meyer Denial', '4933985290', 9);
COMMIT;


-- ----------------------------
-- Records of review
-- ----------------------------
BEGIN;
INSERT INTO `review` VALUES (1, 2, '2018-05-21', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim', 54);
INSERT INTO `review` VALUES (2, 9, '2019-01-05', 'sed accumsan felis ut at dolor quis odio consequat varius integer ac', 4);
INSERT INTO `review` VALUES (3, 4, '2018-04-23', 'vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 61);
INSERT INTO `review` VALUES (4, 1, '2018-12-21', 'feugiat non pretium quis lectus suspendisse potenti in eleifend quam a', 16);
INSERT INTO `review` VALUES (5, 6, '2018-06-20', 'vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque', 9);
INSERT INTO `review` VALUES (6, 2, '2018-06-24', 'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', 67);
INSERT INTO `review` VALUES (7, 8, '2018-04-11', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut', 55);
INSERT INTO `review` VALUES (8, 8, '2019-03-12', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis', 42);
INSERT INTO `review` VALUES (9, 8, '2018-10-03', 'imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', 58);
INSERT INTO `review` VALUES (10, 2, '2019-01-22', 'vivamus in felis eu sapien cursus vestibulum proin eu mi nulla', 53);
INSERT INTO `review` VALUES (11, 4, '2018-08-01', 'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', 46);
INSERT INTO `review` VALUES (12, 1, '2018-06-20', 'velit id pretium iaculis diam erat fermentum justo nec condimentum neque', 27);
INSERT INTO `review` VALUES (13, 8, '2019-01-08', 'pede justo eu massa donec dapibus duis at velit eu est', 57);
INSERT INTO `review` VALUES (14, 2, '2018-05-04', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin', 65);
INSERT INTO `review` VALUES (15, 9, '2019-01-14', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor', 26);
INSERT INTO `review` VALUES (16, 10, '2018-06-23', 'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis', 1);
INSERT INTO `review` VALUES (17, 8, '2018-11-15', 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla', 84);
INSERT INTO `review` VALUES (18, 1, '2019-02-12', 'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', 78);
INSERT INTO `review` VALUES (19, 9, '2018-06-06', 'non mauris morbi non lectus aliquam sit amet diam in magna', 86);
INSERT INTO `review` VALUES (20, 8, '2019-01-10', 'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus', 3);
INSERT INTO `review` VALUES (21, 9, '2019-03-06', 'sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus', 4);
INSERT INTO `review` VALUES (22, 1, '2018-08-31', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis', 27);
INSERT INTO `review` VALUES (23, 10, '2018-04-29', 'sapien non mi integer ac neque duis bibendum morbi non quam nec dui', 16);
INSERT INTO `review` VALUES (24, 5, '2019-01-30', 'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in', 63);
INSERT INTO `review` VALUES (25, 1, '2018-10-28', 'orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', 64);
INSERT INTO `review` VALUES (26, 9, '2019-03-09', 'curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor', 55);
INSERT INTO `review` VALUES (27, 10, '2019-02-01', 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante', 62);
INSERT INTO `review` VALUES (28, 9, '2019-01-04', 'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 3);
INSERT INTO `review` VALUES (29, 10, '2018-11-17', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', 10);
INSERT INTO `review` VALUES (30, 9, '2018-11-25', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', 56);
INSERT INTO `review` VALUES (31, 9, '2018-06-26', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', 44);
INSERT INTO `review` VALUES (32, 5, '2018-04-11', 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci', 83);
INSERT INTO `review` VALUES (33, 8, '2018-09-21', 'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', 47);
INSERT INTO `review` VALUES (34, 3, '2018-06-26', 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque', 50);
INSERT INTO `review` VALUES (35, 3, '2018-12-07', 'non velit donec diam neque vestibulum eget vulputate ut ultrices vel', 50);
INSERT INTO `review` VALUES (36, 10, '2018-08-28', 'nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', 78);
INSERT INTO `review` VALUES (37, 2, '2018-07-16', 'rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', 52);
INSERT INTO `review` VALUES (38, 6, '2019-01-14', 'leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', 25);
INSERT INTO `review` VALUES (39, 6, '2018-10-18', 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis', 81);
INSERT INTO `review` VALUES (40, 3, '2019-01-30', 'sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', 66);
INSERT INTO `review` VALUES (41, 9, '2018-12-02', 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', 34);
INSERT INTO `review` VALUES (42, 9, '2018-06-26', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum', 20);
INSERT INTO `review` VALUES (43, 1, '2018-05-27', 'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula', 90);
INSERT INTO `review` VALUES (44, 7, '2018-05-30', 'ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 46);
INSERT INTO `review` VALUES (45, 1, '2018-06-15', 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', 29);
INSERT INTO `review` VALUES (46, 10, '2019-03-23', 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus', 36);
INSERT INTO `review` VALUES (47, 7, '2019-02-14', 'ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', 61);
INSERT INTO `review` VALUES (48, 6, '2018-07-22', 'mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non', 46);
INSERT INTO `review` VALUES (49, 4, '2019-02-07', 'potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue', 29);
INSERT INTO `review` VALUES (50, 4, '2018-12-04', 'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh', 89);
INSERT INTO `review` VALUES (51, 9, '2018-07-02', 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam', 50);
INSERT INTO `review` VALUES (52, 8, '2018-04-24', 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum', 80);
INSERT INTO `review` VALUES (53, 3, '2019-02-09', 'at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at', 34);
INSERT INTO `review` VALUES (54, 2, '2018-11-26', 'in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc', 39);
INSERT INTO `review` VALUES (55, 7, '2018-05-18', 'lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum', 62);
INSERT INTO `review` VALUES (56, 6, '2018-12-10', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique', 11);
INSERT INTO `review` VALUES (57, 5, '2018-09-22', 'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et', 77);
INSERT INTO `review` VALUES (58, 7, '2019-03-05', 'mi integer ac neque duis bibendum morbi non quam nec dui luctus', 19);
INSERT INTO `review` VALUES (59, 10, '2018-06-26', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla', 61);
INSERT INTO `review` VALUES (60, 9, '2018-10-06', 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit', 6);
INSERT INTO `review` VALUES (61, 9, '2018-07-16', 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi', 19);
INSERT INTO `review` VALUES (62, 10, '2018-11-05', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper', 20);
INSERT INTO `review` VALUES (63, 5, '2018-09-01', 'nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam', 86);
INSERT INTO `review` VALUES (64, 10, '2018-07-12', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris', 56);
INSERT INTO `review` VALUES (65, 1, '2018-10-09', 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', 67);
INSERT INTO `review` VALUES (66, 9, '2018-10-06', 'pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', 63);
INSERT INTO `review` VALUES (67, 10, '2018-06-11', 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices', 32);
INSERT INTO `review` VALUES (68, 5, '2019-03-07', 'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum', 41);
INSERT INTO `review` VALUES (69, 6, '2018-10-10', 'lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', 45);
INSERT INTO `review` VALUES (70, 10, '2018-11-23', 'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 65);
INSERT INTO `review` VALUES (71, 8, '2019-01-19', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', 20);
INSERT INTO `review` VALUES (72, 6, '2018-09-22', 'consequat lectus in est risus auctor sed tristique in tempus sit amet', 33);
INSERT INTO `review` VALUES (73, 5, '2018-06-21', 'libero nam dui proin leo odio porttitor id consequat in consequat ut nulla', 13);
INSERT INTO `review` VALUES (74, 6, '2018-04-18', 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus', 3);
INSERT INTO `review` VALUES (75, 7, '2018-12-19', 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus', 48);
INSERT INTO `review` VALUES (76, 2, '2018-08-04', 'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa', 48);
INSERT INTO `review` VALUES (77, 6, '2018-10-14', 'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue', 88);
INSERT INTO `review` VALUES (78, 7, '2018-10-31', 'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum', 86);
INSERT INTO `review` VALUES (79, 2, '2018-10-27', 'diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere', 28);
INSERT INTO `review` VALUES (80, 1, '2018-09-25', 'in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt', 11);
INSERT INTO `review` VALUES (81, 1, '2018-09-27', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit', 41);
INSERT INTO `review` VALUES (82, 10, '2018-05-15', 'donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', 67);
INSERT INTO `review` VALUES (83, 4, '2019-01-27', 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in', 5);
INSERT INTO `review` VALUES (84, 5, '2019-01-17', 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci', 31);
INSERT INTO `review` VALUES (85, 2, '2018-10-10', 'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', 68);
INSERT INTO `review` VALUES (86, 8, '2019-02-27', 'nullam orci pede venenatis non sodales sed tincidunt eu felis', 85);
INSERT INTO `review` VALUES (87, 1, '2018-09-22', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue', 54);
INSERT INTO `review` VALUES (88, 3, '2018-05-21', 'in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes', 12);
INSERT INTO `review` VALUES (89, 3, '2019-03-07', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante', 64);
INSERT INTO `review` VALUES (90, 8, '2018-11-27', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est', 71);
INSERT INTO `review` VALUES (91, 6, '2019-02-17', 'amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 58);
INSERT INTO `review` VALUES (92, 1, '2018-04-18', 'tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', 13);
INSERT INTO `review` VALUES (93, 7, '2018-05-17', 'ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse', 37);
INSERT INTO `review` VALUES (94, 2, '2019-03-28', 'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', 50);
INSERT INTO `review` VALUES (95, 6, '2018-06-23', 'eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien', 11);
INSERT INTO `review` VALUES (96, 8, '2018-06-05', 'turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi', 60);
INSERT INTO `review` VALUES (97, 3, '2018-07-16', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros', 25);
INSERT INTO `review` VALUES (98, 4, '2019-01-18', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', 25);
INSERT INTO `review` VALUES (99, 10, '2018-10-28', 'suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper', 64);
INSERT INTO `review` VALUES (100, 3, '2018-10-20', 'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum', 31);
INSERT INTO `review` VALUES (101, 4, '2018-12-17', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 87);
INSERT INTO `review` VALUES (102, 6, '2019-01-19', 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', 32);
INSERT INTO `review` VALUES (103, 4, '2018-09-22', 'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', 34);
INSERT INTO `review` VALUES (104, 2, '2019-03-22', 'nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio', 51);
INSERT INTO `review` VALUES (105, 5, '2018-10-28', 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit', 57);
INSERT INTO `review` VALUES (106, 1, '2018-04-28', 'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', 55);
INSERT INTO `review` VALUES (107, 7, '2018-10-28', 'nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium', 83);
INSERT INTO `review` VALUES (108, 5, '2018-11-27', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh', 41);
INSERT INTO `review` VALUES (109, 2, '2018-11-12', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi', 78);
INSERT INTO `review` VALUES (110, 1, '2018-07-16', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', 66);
INSERT INTO `review` VALUES (111, 10, '2019-03-17', 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien', 68);
INSERT INTO `review` VALUES (112, 8, '2018-07-12', 'integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent', 51);
INSERT INTO `review` VALUES (113, 9, '2018-10-06', 'amet diam in magna bibendum imperdiet nullam orci pede venenatis', 49);
INSERT INTO `review` VALUES (114, 10, '2018-05-29', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio', 41);
INSERT INTO `review` VALUES (115, 1, '2019-01-20', 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas', 80);
INSERT INTO `review` VALUES (116, 7, '2019-03-20', 'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend', 43);
INSERT INTO `review` VALUES (118, 1, '2018-05-19', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', 46);
INSERT INTO `review` VALUES (119, 1, '2018-08-22', 'imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', 24);
INSERT INTO `review` VALUES (120, 6, '2018-11-01', 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac', 61);
INSERT INTO `review` VALUES (121, 10, '2018-10-13', 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit', 31);
INSERT INTO `review` VALUES (122, 2, '2018-08-05', 'in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam', 40);
INSERT INTO `review` VALUES (123, 10, '2019-03-21', 'dui maecenas tristique est et tempus semper est quam pharetra magna ac', 59);
INSERT INTO `review` VALUES (124, 8, '2018-07-15', 'orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a', 23);
INSERT INTO `review` VALUES (125, 10, '2018-06-13', 'nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum', 73);
INSERT INTO `review` VALUES (126, 3, '2018-06-21', 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc', 69);
INSERT INTO `review` VALUES (127, 7, '2018-10-16', 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', 67);
INSERT INTO `review` VALUES (128, 10, '2018-11-03', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est', 12);
INSERT INTO `review` VALUES (129, 6, '2018-11-30', 'varius nulla facilisi cras non velit nec nisi vulputate nonummy', 81);
INSERT INTO `review` VALUES (130, 8, '2018-07-05', 'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', 5);
INSERT INTO `review` VALUES (131, 4, '2019-01-29', 'vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam', 5);
INSERT INTO `review` VALUES (132, 6, '2018-12-07', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit', 73);
INSERT INTO `review` VALUES (133, 8, '2018-07-20', 'nulla suspendisse potenti cras in purus eu magna vulputate luctus', 52);
INSERT INTO `review` VALUES (134, 5, '2019-01-11', 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', 60);
INSERT INTO `review` VALUES (135, 7, '2018-10-26', 'gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut', 81);
INSERT INTO `review` VALUES (136, 1, '2018-12-14', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum', 7);
INSERT INTO `review` VALUES (137, 2, '2018-07-22', 'porttitor pede justo eu massa donec dapibus duis at velit eu est', 36);
INSERT INTO `review` VALUES (138, 6, '2019-01-31', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque', 32);
INSERT INTO `review` VALUES (139, 1, '2018-09-05', 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 47);
INSERT INTO `review` VALUES (140, 7, '2019-01-10', 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat', 31);
INSERT INTO `review` VALUES (141, 8, '2018-08-05', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in', 40);
INSERT INTO `review` VALUES (142, 6, '2018-05-31', 'sem praesent id massa id nisl venenatis lacinia aenean sit', 34);
INSERT INTO `review` VALUES (143, 5, '2018-10-31', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', 3);
INSERT INTO `review` VALUES (144, 7, '2018-04-12', 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id', 77);
INSERT INTO `review` VALUES (145, 8, '2018-09-06', 'lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh', 86);
INSERT INTO `review` VALUES (146, 9, '2018-10-04', 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc', 32);
INSERT INTO `review` VALUES (147, 2, '2018-06-23', 'et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque', 16);
INSERT INTO `review` VALUES (148, 10, '2018-10-18', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent', 64);
INSERT INTO `review` VALUES (149, 7, '2018-12-17', 'enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum', 55);
INSERT INTO `review` VALUES (150, 7, '2018-06-11', 'suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue', 6);
INSERT INTO `review` VALUES (151, 6, '2019-03-02', 'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', 4);
INSERT INTO `review` VALUES (152, 9, '2018-07-24', 'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at', 28);
INSERT INTO `review` VALUES (153, 2, '2018-06-22', 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', 76);
INSERT INTO `review` VALUES (154, 8, '2018-05-20', 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue', 79);
INSERT INTO `review` VALUES (155, 9, '2018-06-13', 'hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', 46);
INSERT INTO `review` VALUES (156, 2, '2019-01-08', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque', 13);
INSERT INTO `review` VALUES (157, 1, '2018-07-31', 'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec', 49);
INSERT INTO `review` VALUES (158, 6, '2018-12-20', 'curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu', 70);
INSERT INTO `review` VALUES (159, 4, '2019-01-23', 'amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu', 50);
INSERT INTO `review` VALUES (160, 10, '2018-06-05', 'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis', 5);
INSERT INTO `review` VALUES (161, 5, '2018-04-26', 'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero', 51);
INSERT INTO `review` VALUES (162, 5, '2018-04-18', 'rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus', 66);
INSERT INTO `review` VALUES (163, 1, '2018-06-18', 'quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', 77);
INSERT INTO `review` VALUES (164, 2, '2018-11-23', 'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', 16);
INSERT INTO `review` VALUES (165, 3, '2018-07-20', 'purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', 29);
INSERT INTO `review` VALUES (166, 2, '2019-02-19', 'donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper', 1);
INSERT INTO `review` VALUES (167, 6, '2018-08-25', 'eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla', 58);
INSERT INTO `review` VALUES (168, 6, '2018-09-24', 'nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac', 57);
INSERT INTO `review` VALUES (170, 3, '2018-05-08', 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', 37);
INSERT INTO `review` VALUES (171, 3, '2018-09-16', 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi', 88);
INSERT INTO `review` VALUES (172, 8, '2018-12-17', 'in felis donec semper sapien a libero nam dui proin', 29);
INSERT INTO `review` VALUES (173, 9, '2019-02-19', 'tellus nulla ut erat id mauris vulputate elementum nullam varius nulla', 62);
INSERT INTO `review` VALUES (174, 7, '2019-01-28', 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', 53);
INSERT INTO `review` VALUES (175, 4, '2018-05-26', 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum', 43);
INSERT INTO `review` VALUES (176, 1, '2018-06-20', 'enim in tempor turpis nec euismod scelerisque quam turpis adipiscing', 32);
INSERT INTO `review` VALUES (177, 4, '2018-11-26', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', 31);
INSERT INTO `review` VALUES (178, 3, '2018-09-28', 'nulla integer pede justo lacinia eget tincidunt eget tempus vel', 8);
INSERT INTO `review` VALUES (179, 6, '2019-01-03', 'sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo', 75);
INSERT INTO `review` VALUES (180, 9, '2019-01-28', 'donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu', 41);
INSERT INTO `review` VALUES (181, 1, '2018-09-28', 'mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus', 3);
INSERT INTO `review` VALUES (182, 8, '2018-10-12', 'quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id', 84);
INSERT INTO `review` VALUES (183, 1, '2018-11-13', 'nisi at nibh in hac habitasse platea dictumst aliquam augue quam', 86);
INSERT INTO `review` VALUES (184, 9, '2018-10-18', 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', 38);
INSERT INTO `review` VALUES (185, 2, '2019-03-06', 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum', 32);
INSERT INTO `review` VALUES (186, 7, '2018-10-14', 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', 6);
INSERT INTO `review` VALUES (187, 2, '2018-10-08', 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui', 57);
INSERT INTO `review` VALUES (188, 5, '2018-08-29', 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia', 7);
INSERT INTO `review` VALUES (189, 9, '2018-08-06', 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt', 41);
INSERT INTO `review` VALUES (190, 6, '2019-01-03', 'ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in', 50);
INSERT INTO `review` VALUES (191, 9, '2018-08-11', 'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', 32);
INSERT INTO `review` VALUES (192, 10, '2018-05-27', 'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', 10);
INSERT INTO `review` VALUES (193, 1, '2018-09-08', 'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', 68);
INSERT INTO `review` VALUES (194, 2, '2019-03-09', 'volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas', 60);
INSERT INTO `review` VALUES (195, 5, '2018-04-30', 'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus', 86);
INSERT INTO `review` VALUES (196, 1, '2018-06-24', 'mi pede malesuada in imperdiet et commodo vulputate justo in blandit', 73);
INSERT INTO `review` VALUES (197, 1, '2018-04-21', 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper', 5);
INSERT INTO `review` VALUES (198, 10, '2018-04-15', 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est', 3);
INSERT INTO `review` VALUES (199, 9, '2018-12-22', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', 85);
INSERT INTO `review` VALUES (200, 4, '2018-05-14', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed', 19);
INSERT INTO `review` VALUES (201, 2, '2019-03-10', 'purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in', 26);
INSERT INTO `review` VALUES (202, 9, '2018-04-09', 'sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum', 6);
INSERT INTO `review` VALUES (203, 1, '2018-10-30', 'ipsum integer a nibh in quis justo maecenas rhoncus aliquam', 39);
INSERT INTO `review` VALUES (204, 4, '2018-08-02', 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', 73);
INSERT INTO `review` VALUES (205, 9, '2019-03-17', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan', 60);
INSERT INTO `review` VALUES (206, 1, '2018-10-28', 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo', 5);
INSERT INTO `review` VALUES (207, 3, '2019-01-23', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', 41);
INSERT INTO `review` VALUES (208, 3, '2019-02-23', 'nulla nunc purus phasellus in felis donec semper sapien a libero nam', 4);
INSERT INTO `review` VALUES (209, 10, '2018-10-14', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo', 88);
INSERT INTO `review` VALUES (210, 10, '2019-03-14', 'consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam', 70);
INSERT INTO `review` VALUES (211, 6, '2019-03-10', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta', 52);
INSERT INTO `review` VALUES (212, 9, '2019-03-27', 'enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit', 13);
INSERT INTO `review` VALUES (213, 8, '2018-10-29', 'augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus', 29);
INSERT INTO `review` VALUES (214, 7, '2018-09-28', 'ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', 56);
INSERT INTO `review` VALUES (215, 10, '2018-10-05', 'consequat lectus in est risus auctor sed tristique in tempus sit', 42);
INSERT INTO `review` VALUES (216, 7, '2018-10-13', 'eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper', 37);
INSERT INTO `review` VALUES (217, 6, '2018-06-27', 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl', 29);
INSERT INTO `review` VALUES (218, 9, '2018-11-21', 'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', 72);
INSERT INTO `review` VALUES (219, 2, '2018-10-14', 'mi nulla ac enim in tempor turpis nec euismod scelerisque', 8);
INSERT INTO `review` VALUES (220, 1, '2018-08-08', 'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque', 65);
INSERT INTO `review` VALUES (221, 7, '2018-11-16', 'at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna', 51);
INSERT INTO `review` VALUES (222, 9, '2018-11-28', 'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan', 28);
INSERT INTO `review` VALUES (223, 6, '2018-10-31', 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna', 36);
INSERT INTO `review` VALUES (224, 2, '2018-09-22', 'massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in', 30);
INSERT INTO `review` VALUES (225, 5, '2019-03-22', 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', 89);
INSERT INTO `review` VALUES (226, 3, '2019-03-14', 'commodo placerat praesent blandit nam nulla integer pede justo lacinia', 30);
INSERT INTO `review` VALUES (227, 6, '2018-05-16', 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit', 39);
INSERT INTO `review` VALUES (228, 7, '2018-07-30', 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', 55);
INSERT INTO `review` VALUES (229, 5, '2018-06-16', 'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', 25);
INSERT INTO `review` VALUES (230, 2, '2018-05-08', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat', 57);
INSERT INTO `review` VALUES (231, 7, '2018-11-15', 'vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis', 57);
INSERT INTO `review` VALUES (232, 9, '2018-04-21', 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', 75);
INSERT INTO `review` VALUES (233, 4, '2018-07-27', 'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', 82);
INSERT INTO `review` VALUES (234, 7, '2019-03-29', 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', 38);
INSERT INTO `review` VALUES (235, 3, '2019-03-11', 'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', 59);
INSERT INTO `review` VALUES (236, 7, '2018-08-10', 'massa donec dapibus duis at velit eu est congue elementum in', 14);
INSERT INTO `review` VALUES (237, 4, '2018-09-27', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium', 80);
INSERT INTO `review` VALUES (238, 5, '2018-07-11', 'in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum', 31);
INSERT INTO `review` VALUES (239, 3, '2018-07-15', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus', 50);
INSERT INTO `review` VALUES (240, 3, '2019-01-18', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 80);
INSERT INTO `review` VALUES (241, 8, '2018-08-29', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur', 33);
INSERT INTO `review` VALUES (242, 3, '2018-07-03', 'vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis', 65);
INSERT INTO `review` VALUES (243, 10, '2018-10-09', 'posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros', 1);
INSERT INTO `review` VALUES (244, 9, '2018-11-29', 'etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut', 51);
INSERT INTO `review` VALUES (245, 4, '2018-06-18', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed', 35);
INSERT INTO `review` VALUES (246, 6, '2018-06-22', 'ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus', 57);
INSERT INTO `review` VALUES (247, 2, '2018-06-27', 'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam', 56);
INSERT INTO `review` VALUES (248, 1, '2018-11-22', 'mi nulla ac enim in tempor turpis nec euismod scelerisque', 65);
INSERT INTO `review` VALUES (249, 1, '2018-05-15', 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla', 7);
INSERT INTO `review` VALUES (250, 2, '2019-01-06', 'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis', 87);
INSERT INTO `review` VALUES (251, 8, '2018-04-29', 'lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', 89);
INSERT INTO `review` VALUES (252, 1, '2019-03-26', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', 77);
INSERT INTO `review` VALUES (253, 8, '2019-02-22', 'tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat', 77);
INSERT INTO `review` VALUES (254, 2, '2018-12-08', 'aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', 49);
INSERT INTO `review` VALUES (255, 8, '2018-06-28', 'purus aliquet at feugiat non pretium quis lectus suspendisse potenti', 7);
INSERT INTO `review` VALUES (256, 7, '2018-08-13', 'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', 80);
INSERT INTO `review` VALUES (257, 5, '2018-10-28', 'eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget', 23);
INSERT INTO `review` VALUES (258, 5, '2018-10-20', 'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam', 84);
INSERT INTO `review` VALUES (259, 6, '2018-04-30', 'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in', 32);
INSERT INTO `review` VALUES (260, 9, '2018-08-21', 'donec dapibus duis at velit eu est congue elementum in hac habitasse', 50);
INSERT INTO `review` VALUES (261, 7, '2018-12-27', 'eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin', 83);
INSERT INTO `review` VALUES (262, 6, '2018-06-25', 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie', 52);
INSERT INTO `review` VALUES (263, 9, '2018-08-20', 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer', 11);
INSERT INTO `review` VALUES (264, 3, '2018-12-27', 'felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat', 14);
INSERT INTO `review` VALUES (265, 10, '2018-08-20', 'vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo', 59);
INSERT INTO `review` VALUES (266, 7, '2018-12-24', 'tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', 59);
INSERT INTO `review` VALUES (267, 2, '2019-01-12', 'adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci', 90);
INSERT INTO `review` VALUES (268, 3, '2018-11-10', 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante', 32);
INSERT INTO `review` VALUES (269, 3, '2019-02-11', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget', 4);
INSERT INTO `review` VALUES (270, 6, '2018-07-10', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', 18);
INSERT INTO `review` VALUES (271, 3, '2018-11-27', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 17);
INSERT INTO `review` VALUES (272, 2, '2018-10-14', 'in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', 75);
INSERT INTO `review` VALUES (273, 2, '2019-03-27', 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis', 90);
INSERT INTO `review` VALUES (274, 2, '2018-12-17', 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis', 69);
INSERT INTO `review` VALUES (275, 8, '2019-03-11', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem', 90);
INSERT INTO `review` VALUES (276, 2, '2018-04-27', 'eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis', 75);
INSERT INTO `review` VALUES (277, 6, '2018-05-01', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 65);
INSERT INTO `review` VALUES (278, 3, '2018-11-06', 'curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam', 33);
INSERT INTO `review` VALUES (279, 3, '2018-07-09', 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', 29);
INSERT INTO `review` VALUES (280, 6, '2018-11-16', 'magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 86);
INSERT INTO `review` VALUES (281, 6, '2018-05-27', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit', 64);
INSERT INTO `review` VALUES (282, 1, '2018-08-01', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus', 47);
INSERT INTO `review` VALUES (283, 6, '2018-12-01', 'donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', 65);
INSERT INTO `review` VALUES (284, 5, '2018-06-28', 'mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in', 33);
INSERT INTO `review` VALUES (285, 2, '2018-06-04', 'ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt', 76);
INSERT INTO `review` VALUES (286, 2, '2018-06-17', 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', 43);
INSERT INTO `review` VALUES (287, 4, '2018-11-17', 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia', 4);
INSERT INTO `review` VALUES (288, 3, '2019-01-29', 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', 69);
INSERT INTO `review` VALUES (289, 2, '2018-10-15', 'lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat', 1);
INSERT INTO `review` VALUES (290, 10, '2018-07-30', 'arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede', 76);
INSERT INTO `review` VALUES (291, 10, '2018-04-13', 'nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed', 23);
INSERT INTO `review` VALUES (292, 6, '2018-07-03', 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', 78);
INSERT INTO `review` VALUES (293, 5, '2019-02-26', 'tortor sollicitudin mi sit amet lobortis sapien sapien non mi', 82);
INSERT INTO `review` VALUES (294, 4, '2018-05-16', 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec', 38);
INSERT INTO `review` VALUES (295, 5, '2019-02-10', 'vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum', 71);
INSERT INTO `review` VALUES (296, 4, '2018-11-14', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet', 58);
INSERT INTO `review` VALUES (297, 5, '2018-06-13', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras', 54);
INSERT INTO `review` VALUES (298, 6, '2018-09-17', 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci', 13);
INSERT INTO `review` VALUES (299, 7, '2018-06-02', 'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius', 31);
COMMIT;



-- ----------------------------
-- Records of staff
-- ----------------------------
BEGIN;
INSERT INTO `staff` VALUES (1, 'Mackenzie Powell', 'Tax Accountant', 9, '9876901233');
INSERT INTO `staff` VALUES (2, 'Ruprecht Wyard', 'VP Quality Control', 2, '3813337422');
INSERT INTO `staff` VALUES (3, 'Vincenz Moquin', 'Help Desk Technician', 8, '1735418040');
INSERT INTO `staff` VALUES (4, 'Sigismond Tilston', 'Statistician I', 10, '4611764168');
INSERT INTO `staff` VALUES (5, 'Beltran Jeynes', 'VP Marketing', 10, '7455516970');
INSERT INTO `staff` VALUES (6, 'Yule Duckworth', 'Help Desk Operator', 10, '4617998241');
INSERT INTO `staff` VALUES (7, 'Etheline Yakubowicz', 'Automation Specialist II', 10, '6783817411');
INSERT INTO `staff` VALUES (8, 'Rolando Elderfield', 'Tax Accountant', 6, '2198198834');
INSERT INTO `staff` VALUES (9, 'Netta Lorente', 'Senior Editor', 6, '6395338250');
INSERT INTO `staff` VALUES (10, 'Harman Gallanders', 'Legal Assistant', 6, '7231111489');
INSERT INTO `staff` VALUES (11, 'Stevy Darby', 'VP Product Management', 6, '1009507876');
INSERT INTO `staff` VALUES (12, 'Tiffie Rugiero', 'VP Product Management', 7, '1706428068');
INSERT INTO `staff` VALUES (13, 'Francklin Scullion', 'Structural Analysis Engineer', 3, '2203707813');
INSERT INTO `staff` VALUES (14, 'Deedee Callister', 'Analyst Programmer', 2, '4106695615');
INSERT INTO `staff` VALUES (15, 'Mortie Huggill', 'Environmental Specialist', 10, '2549666359');
INSERT INTO `staff` VALUES (16, 'Clayson Archbould', 'Environmental Tech', 9, '8853666981');
INSERT INTO `staff` VALUES (17, 'Ava Alenichev', 'Budget/Accounting Analyst I', 5, '7783047885');
INSERT INTO `staff` VALUES (18, 'Lexi Simonsson', 'VP Sales', 8, '5922933244');
INSERT INTO `staff` VALUES (19, 'Carole Bowen', 'Payment Adjustment Coordinator', 6, '4052429808');
INSERT INTO `staff` VALUES (20, 'Karlik Greensitt', 'Design Engineer', 9, '9926659889');
COMMIT;

-- ----------------------------
-- View structure for allreviews
-- ----------------------------
DROP VIEW IF EXISTS `allreviews`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `allreviews` AS select `reader`.`reader_name` AS `reader_name`,`review`.`review_date` AS `review_date`,`review`.`review_content` AS `review_content` from (`reader` join `review`) where (`reader`.`reader_id` = `review`.`comment_by`);

-- ----------------------------
-- View structure for bookpubdetails
-- ----------------------------
DROP VIEW IF EXISTS `bookpubdetails`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bookpubdetails` AS select `book`.`book_name` AS `book_name`,`publisher`.`p_name` AS `p_name`,`editor`.`editor_name` AS `editor_name` from ((`book` join `publisher`) join `editor`) where ((`book`.`p_id` = `publisher`.`publisher_id`) and (`book`.`e_id` = `editor`.`editor_id`));

-- ----------------------------
-- View structure for collectionofbook
-- ----------------------------
DROP VIEW IF EXISTS `collectionofbook`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `collectionofbook` AS select `book`.`book_name` AS `book_name`,`library`.`lib_name` AS `lib_name`,`library`.`lib_address` AS `lib_address`,`collection`.`amount` AS `amount` from ((`book` join `library`) join `collection`) where ((`book`.`book_isbn` = `collection`.`book_isbn`) and (`library`.`lib_id` = `collection`.`lib_id`)) order by `book`.`book_isbn`;

-- ----------------------------
-- View structure for detailofbook
-- ----------------------------
DROP VIEW IF EXISTS `detailofbook`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `detailofbook` AS select `book`.`book_name` AS `book_name`,`author`.`author_name` AS `author_name`,`publisher`.`p_name` AS `p_name` from ((`book` join `author`) join `publisher`) where ((`book`.`a_id` = `author`.`author_id`) and (`book`.`p_id` = `publisher`.`publisher_id`)) order by `book`.`book_isbn`;

-- ----------------------------
-- View structure for librarydetails
-- ----------------------------
DROP VIEW IF EXISTS `librarydetails`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `librarydetails` AS select `library`.`lib_name` AS `lib_name`,`library`.`lib_address` AS `lib_address`,`staff`.`staff_name` AS `staff_name`,`staff`.`staff_title` AS `staff_title`,`staff`.`staff_phone` AS `staff_phone` from (`library` join `staff`) where (`staff`.`l_id` = `library`.`lib_id`);

SET FOREIGN_KEY_CHECKS = 1;

