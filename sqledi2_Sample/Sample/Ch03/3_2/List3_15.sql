SELECT shiire_tanka, COUNT(*)
  FROM Shohin
 WHERE shohin_bunrui = '衣類'
 GROUP BY shiire_tanka;