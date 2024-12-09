-- 1
/*
* group byで、shohin_bunruiを指定しているため、shohin_idを指定することは出来ない。
* shohin_meiは文字列型であるため、sumで集約出来ない。
* where句はgroup byの前で指定する必要がある。
*/

-- 2
select shohin_bunrui, sum(hanbai_tanka), sum(shiire_tanka)
from shohin
group by shohin_bunrui
having sum(hanbai_tanka) > sum(shiire_tanka) * 1.5;

-- 3
select * from shohin
order by torokubi desc, hanbai_tanka, shohin_id desc;

-- shohin_idの指定は不要
select * from shohin
order by torokubi desc, hanbai_tanka;
