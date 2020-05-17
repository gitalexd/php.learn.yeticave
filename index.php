<?php
$is_auth = rand(0, 1);

$user_name = 'alex'; // укажите здесь ваше имя

$categories = [
    'Доски и лыжи',
    'Крепления',
    'Ботинки',
    'Одежда',
    'Инструменты',
    'Разное'
];

$lots = [
    1 => [
        'name' => '2014 Rossignol District Snowboard',
        'price' => '10999',
        'img_url' => 'img/lot-1.jpg',
        'category' => 'Доски и лыжи'
    ],

    2 => [
        'name' => 'DC Ply Mens 2016/2017 Snowboard',
        'price' => '159999',
        'img_url' => 'img/lot-2.jpg',
        'category' => 'Доски и лыжи'
    ],
    3 => [
        'name' => 'Крепления Union Contact Pro 2015 года размер L/XL',
        'price' => '8000',
        'img_url' => 'img/lot-3.jpg',
        'category' => 'Крепления'
    ],
    4 => [
        'name' => 'Ботинки для сноуборда DC Mutiny Charocal',
        'price' => '10999',
        'img_url' => 'img/lot-4.jpg',
        'category' => 'Ботинки'
    ],
    5 => [
        'name' => 'Куртка для сноуборда DC Mutiny Charocal',
        'price' => '7500',
        'img_url' => 'img/lot-5.jpg',
        'category' => 'Одежда'
    ],
    6 => [
        'name' => 'Маска Oakley Canopy',
        'price' => '5400',
        'img_url' => 'img/lot-6.jpg',
        'category' => 'Разное'
    ],
];

function price($price)
{
    $price = ceil($price);
    if ($price >= 1000) {
        $price = number_format($price, 0, '', ' ');
    }
    return $price . '$';
}

$title = 'Какой-то титул';

function include_template(string $template, array $params)
{
    ob_start();

    extract($params);
    include($template);

    return ob_get_clean();

}

$main = include_template('templates/main.php', [
        'lots' => $lots,
        'categories' => $categories
    ]
);

$layout = include_template('templates/layout.php', [
    'main' => $main,
    'categories' => $categories,
    'user_name' => $user_name,
    'title' => $title
]);

print ($layout)

?>
