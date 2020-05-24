

INSERT INTO `category` (`name`, `code`) VALUES
('Ботинки', 'boots'),
('Доски и лыжи', 'boards'),
('Инструменты', 'tools'),
('Крепления', 'attachment'),
('Одежда', 'clothing'),
('Разное', 'other')

INSERT INTO `lot` (`created_at`, `name`, `description`, `image`, `start_price`, `expired_at`, `rate_step`) VALUES
('2020-05-21', '2014 Rossignol District Snowboard', 'Лучший сноуборд в районе', 'img/lot-1.jpg', 10999, '2020-05-22', 10000),
('2020-05-21', 'DC Ply Mens 2016/2017 Snowboard', 'Лучший сноуборд в городе', 'img/lot-2.jpg', 159999, '2020-05-22', 10000),
('2020-05-21', 'Крепления Union Contact Pro 2015 года размер L/XL', 'Лучший сноуборд в городе', 'img/lot-3.jpg', 8000, '2020-05-22', 10000)

INSERT INTO `rate` (`placing_at`, `proposition_sum`) VALUES
('2020-05-22', 12000),
('2020-05-22', 13000)

INSERT INTO `user` (`date_of_registration`, `email`, `name`, `password`, `contacts`) VALUES
('2020-01-01', '123', 'Missi', 'missi1', '89789789786'),
('2020-01-01', 'missi@mail.ru', 'Missi', 'missi1', '89789789786')
