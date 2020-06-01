<section class="promo">
    <h2 class="promo__title">Нужен стафф для катки?</h2>
    <p class="promo__text">На нашем интернет-аукционе ты найдёшь самое эксклюзивное сноубордическое и горнолыжное снаряжение.</p>
    <ul class="promo__list">

        <? foreach ($categories as $products) {?>
            <li class="promo__item promo__item--boards">
                <a class="promo__link" href="pages/all-lots.html"><?=$products?></a>
            </li>
        <? }?>
        <!--заполните этот список из массива категорий-->

    </ul>
</section>
<section class="lots">
    <div class="lots__header">
        <h2>Открытые лоты</h2>
    </div>
    <ul class="lots__list">

        <? foreach ($lots as $lot) {?>
            <li class="lots__item lot">
                <div class="lot__image">
                    <img src="<?=$lot['img_url']?>" width="350" height="260" alt="">
                </div>
                <div class="lot__info">
                    <span class="lot__category"><?=$lot['category']?></span>
                    <h3 class="lot__title"><a class="text-link" href="lot.php?lot_id=<?=$lot['id']?>"><?=$lot['name']?></a></h3>
                    <div class="lot__state">
                        <div class="lot__rate">
                            <span class="lot__amount"><?=$lot['count']?></span>
                            <span class="lot__cost"><?=price($lot['price'])?><b class="rub">р</b></span>
                        </div>
                    <?
                    $diff = dt_diff($lot['expire_data']);
                    $hours = $diff[0];
                    $minutes = $diff[1];

                        ?>
                        <div class="lot__timer timer <? if ($hours<=5) echo 'timer--finishing';?>">
                           <?= $hours . ':' . $minutes?>
                        </div>
                    </div>
                </div>
            </li>
        <? }?>
        <!--заполните этот список из массива с товарами-->

    </ul>
</section>
