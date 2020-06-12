CREATE TABLE `basics` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(450) NULL,
  PRIMARY KEY (`id`));



CREATE TABLE `tweets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tweet` varchar(500) DEFAULT NULL,
  `basic_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;