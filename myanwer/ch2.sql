-- 2.1
select shohin_mei, torokubi
from shohin
where torokubi >= '2009-04-28';

-- 2.2
条件がnullになるから
① 出力されない
② 出力されない
③ 出力されない

-- 2.3
/*
select shohin_mei, hanbai_tanka, shiire_tanka
from shohin
where hanbai_tanka - shiire_tanka >= 500;
*/

select shohin_mei, hanbai_tanka, shiire_tanka
from shohin
where hanbai_tanka >= shiire_tanka + 500;

select shohin_mei, hanbai_tanka, shiire_tanka
from shohin
where hanbai_tanka - 500 >= shiire_tanka;

-- 2.4
select shohin_mei, shohin_bunrui,
       hanbai_tanka * 0.9 - shiire_tanka as rieki
from shohin
where hanbai_tanka * 0.9 - shiire_tanka > 100
and shohin_bunrui in ('事務用品', 'キッチン用品');
