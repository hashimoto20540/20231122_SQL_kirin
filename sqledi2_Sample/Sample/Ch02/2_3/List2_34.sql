SELECT shohin_mei, shiire_tanka, shohin_bunrui
  FROM Shohin
 WHERE shohin_bunrui = 'キッチン用具'
    OR hanbai_tanka >= 3000;