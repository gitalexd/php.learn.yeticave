CREATE TABLE `category` (
  `name` VARCHAR(20),
  `code` VARCHAR(20),
  PRIMARY KEY (`code`)
)

CREATE TABLE `lot` (
  `created_at` date,
  `name` VARCHAR (50),
  `description` VARCHAR (50),
  `image` VARCHAR (255),
  `start_price` int,
  `expired_at` date,
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

