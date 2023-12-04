--Oracle�ADB2�ASQL Server�APostgreSQL
SELECT '合計' AS shohin_bunrui, SUM(hanbai_tanka)
  FROM Shohin
UNION ALL
SELECT shohin_bunrui, SUM(hanbai_tanka)
  FROM Shohin
 GROUP BY shohin_bunrui;



 SELECT 'ああああ' AS shohin_bunrui, SUM(hanbai_tanka)
  FROM Shohin;
UNION ALL
SELECT shohin_bunrui, SUM(hanbai_tanka)
  FROM Shohin
 GROUP BY shohin_bunrui;