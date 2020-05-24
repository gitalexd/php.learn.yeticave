CREATE TABLE `category` (
  `name` VARCHAR(20),
  `code` VARCHAR(20),
  PRIMARY KEY (`code`)
)

CREATE TABLE `lot` (
  `created_at` date,
  `name` VARCHAR (50),
  `description` VARCHAR (50),
  `img_url` VARCHAR (255),
  `price` int,
  `expire_data` date,
  `rate_step` int,
  PRIMARY KEY (`name`)
)

CREATE TABLE `rate` (
`placing_at` VARCHAR(30),
`proposition_sum` int,
  PRIMARY KEY (`proposition_sum`)
)

CREATE TABLE `user` (
`date_of_registration` date,
`email` VARCHAR(50),
`name` VARCHAR(50),
`password` VARCHAR(50),
`contacts` VARCHAR(50),
  PRIMARY KEY (`email`)
)

