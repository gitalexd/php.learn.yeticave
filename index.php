<?php
$is_auth = rand(0, 1);

$user_name = 'alex'; // укажите здесь ваше имя

    $link = mysqli_connect('localhost', 'root', 'root', 'sa.yeticave');

if ($link == false) {
    print ('Операция не выполнена' . mysqli_connect_error());
}else{
    print ('Операция выполнена');
}

$sql = 'SELECT * FROM lot';
$result = mysqli_query($link, $sql);
$lots = mysqli_fetch_all($result, MYSQLI_ASSOC);
foreach ($lots as $lot) {

}

$sql = 'SELECT * FROM category';
$result = mysqli_query($link, $sql);
$categories_arr = mysqli_fetch_all($result, MYSQLI_ASSOC);
foreach ($categories_arr as $category) {
    $categories[] = $category['name'];
}

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

print ($layout);

function dt_diff($d2)
{
    // timestamp первой даты

    $ts1 = strtotime(date('Y-m-d H:i:s'));

    // timestamp второй даты

    $ts2 = strtotime($d2);

    // Количество секунд между двумя датами

    $seconds = $ts2 - $ts1;

    // Количество часов нужно округлить в меньшую сторону,
// чтобы узнать точное количество прошедших часов
// 3600 - количество секунд в 1 часе

    $hours = floor($seconds / 3600);

    //  оставшиеся секунды после получения часов,
// используем деление по модулю (получим целочисленный остаток от деления)
    $remain = $seconds % 3600;

    // 60 - количество секунд в 1 минуте

    $minutes = floor($remain / 3600);

    return [$hours, $minutes];
}

?>
