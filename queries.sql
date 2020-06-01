

INSERT INTO `category` (`id`, `name`, `code`) VALUES
(1, 'Ботинки', 'boots'),
(2, 'Доски и лыжи', 'boards'),
(3, 'Инструменты', 'tools'),
(4, 'Крепления', 'attachment'),
(5, 'Одежда', 'clothing'),
(6, 'Разное', 'other')

INSERT INTO `lot` (`id`, `created_at`, `name`, `description`, `img_url`, `price`, `expire_data`, `rate_step`) VALUES
(1, '2020-05-21', '2014 Rossignol District Snowboard', 'Лучший сноуборд в районе', 'img/lot-1.jpg', 10999, '2020-05-22', 10000),
(2, '2020-05-21', 'DC Ply Mens 2016/2017 Snowboard', 'Лучший сноуборд в городе', 'img/lot-2.jpg', 159999, '2020-05-22', 10000),
(3, '2020-05-21', 'Крепления Union Contact Pro 2015 года размер L/XL', 'Лучший сноуборд в городе', 'img/lot-3.jpg', 8000, '2020-05-22', 10000),
(4, '2020-05-21', 'Ботинки для сноуборда DC Mutiny Charocal', 'Супер ботинки', 'img/lot-4.jpg', 10099, '2020-05-22', 11000 ),
(5, '2020-05-21', 'Куртка для сноуборда DC Mutiny Charocal', 'Супер куртка', 'img/lot-5.jpg', 7500, '2020-05-23', 8000 ),
(6, '2020-05-21', 'Маска Oakley Canopy', 'Супер маска', 'img/lot-6.jpg', 5400, '2020-05-24', 6000 )

INSERT INTO `rate` (`id`, `placing_at`, `proposition_sum`) VALUES
(1, '2020-05-22', 12000),
(2, '2020-05-22', 13000)

INSERT INTO `user` (`id`, `date_of_registration`, `email`, `name`, `password`, `contacts`) VALUES
(1, '2020-01-01', '123', 'Missi', 'missi1', '89789789786'),
(2, '2020-01-01', 'missi@mail.ru', 'Missi', 'missi1', '89789789786')
