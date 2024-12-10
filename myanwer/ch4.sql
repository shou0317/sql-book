-- 1
/*
Aさんのtransactionは実行途中であるため、独立性により、
transaction内で処理をする前のshohinテーブルの内容が抽出される。
*/

-- 2
/*
shohin_idに主キー制約に違反するため、一貫性により、取り消される
*/

-- 3
insert into shohinsaeki
select shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, hanbai_tanka - shiire_tanka
from shohin;

--4
begin transaction;
  update shohinsaeki
  set hanbai_tanka = 3000
  where shohin_id = '0003';
  update shohinsaeki
  set saeki = hanbai_tanka - shiire_tanka
  where shohin_id = '0003';
commit;
