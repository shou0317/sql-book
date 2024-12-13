-- 1
create view ViewRenshu5_1 as
select shohin_mei, hanbai_tanka, torokubi
from shohin
where hanbai_tanka >= 1000 and torokubi = '2009-09-20';

-- 2
/*
shohin_id, shohin_meiがnullにはnot null制約があるため、登録出来ない
*/

-- 3
select shohin_id,
        shohin_mei,
        shohin_bunrui,
        hanbai_tanka,
        (select avg(hanbai_tanka)
          from shohin) as hanbai_tanka_all
from shohin;

-- 4
create view AvgTankaByBunrui as
select shohin_id,
        shohin_mei,
        shohin_bunrui,
        hanbai_tanka,
        (select avg(hanbai_tanka)
          from shohin as s2
          where s1.shohin_bunrui = s2.shohin_bunrui) as avg_hanbai_tanka
from shohin as s1;
