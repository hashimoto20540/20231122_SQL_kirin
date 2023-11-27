SELECT shohin_mei, shohin_bunrui, torokubi
  FROM Shohin
 WHERE shohin_bunrui = '�����p�i'
   AND ( torokubi = '2009-09-11'
      OR torokubi = '2009-09-20');


--メモ
select shohin_mei, shohin_bunrui
from Shohin
where hanbai_tanka * 0.9 - shiire_tanka > 100;