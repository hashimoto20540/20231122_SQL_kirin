--SQL Server�ADB2�APostgreSQL�AMySQL
SELECT shohin_bunrui, shohin_mei, hanbai_tanka
  FROM Shohin AS S1
 WHERE hanbai_tanka > (SELECT AVG(hanbai_tanka)
                         FROM Shohin AS S2
                        WHERE S1.shohin_bunrui = S2.shohin_bunrui
                        GROUP BY shohin_bunrui);


CREATE VIEW Shohin0001 (shohin_mei, hanbai_tanka, torokubi)
AS
SELECT shohin_mei, hanbai_tanka >= 1000, torokubi
  FROM Shohin
  WHERE torokubi = '2009-09-20';








SELECT shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, AvgTankaByBunrui
  FROM Shohin AS S1
 WHERE hanbai_tanka > (SELECT AVG(hanbai_tanka)
                         FROM Shohin AS S2
                        WHERE S1.shohin_bunrui = S2.shohin_bunrui
                        GROUP BY shohin_bunrui);










--5.4
CREATE VIEW AvgTankaByBunrui
AS
SELECT shohin_id,
      shohin_mei,
      shohin_bunrui,
      hanbai_tanka,
      (SELECT AVG(hanbai_tanka)
        FROM Shohin S2
        WHERE S1.shohin_bunrui = S2.shohin_bunrui
        GROUP BY S2.shohin_bunrui) AS avg_hanbai_tanka
FROM Shohin S1;