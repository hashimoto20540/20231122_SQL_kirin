--���i���ނ��Ƃɔ̔��P�������v�������ʂ��s��ϊ�����
SELECT SUM(CASE WHEN shohin_bunrui = '衣類' THEN hanbai_tanka ELSE 0 END) AS sum_tanka_ihuku,
       SUM(CASE WHEN shohin_bunrui = 'キッチン用品' THEN hanbai_tanka ELSE 0 END) AS sum_tanka_kitchen,
       SUM(CASE WHEN shohin_bunrui = '事務用品' THEN hanbai_tanka ELSE 0 END) AS sum_tanka_jimu
  FROM Shohin;



--6.2
SELECT SUM(CASE WHEN hanbai_tanka <= 1000 THEN 1 ELSE 0 END) AS low_price, 
       SUM(CASE WHEN hanbai_tanka BETWEEN 1001 AND 3000 THEN 1 ELSE 0 END) AS mid_price,
       SUM(CASE WHEN hanbai_tanka > 3000 THEN 1 ELSE 0 END) AS high_price
  FROM Shohin;