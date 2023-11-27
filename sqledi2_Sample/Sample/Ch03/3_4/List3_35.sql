-- �񖼂Ŏw��
SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
  FROM Shohin
 ORDER BY hanbai_tanka DESC, shohin_id;

-- ��ԍ��Ŏw��
SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka
  FROM Shohin
 ORDER BY 3 DESC, 1;

 postgres=# select shohin_bunrui, sum(hanbai_tanka * 1.5) as sum1, sum(shiire_tanka * 1.5) as sum2
from shohin
group by shohin_bunrui
HAVING sum1 - sum2 > 0;