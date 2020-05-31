CREATE TABLE `category` (
    `id` int NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20),
  `code` VARCHAR(20),
  PRIMARY KEY (`id`)
)

CREATE TABLE `lot` (
    `id` int NOT NULL AUTO_INCREMENT,
  `created_at` date,
  `name` VARCHAR (50),
  `description` VARCHAR (50),
  `img_url` VARCHAR (255),
  `price` int,
  `expire_data` date,
  `rate_step` int,
  PRIMARY KEY (`id`)
)

CREATE TABLE `rate` (
`id` int NOT NULL AUTO_INCREMENT,
`placing_at` VARCHAR(30),
`proposition_sum` int,
  PRIMARY KEY (`id`)
)

CREATE TABLE `user` (
`id` int NOT NULL AUTO_INCREMENT,
`date_of_registration` date,
`email` VARCHAR(50),
`name` VARCHAR(50),
`password` VARCHAR(50),
`contacts` VARCHAR(50),
  PRIMARY KEY (`id`)
)

