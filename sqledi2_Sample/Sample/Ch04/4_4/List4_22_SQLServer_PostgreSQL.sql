--SQL Server�APostgreSQL
BEGIN TRANSACTION;

    --�J�b�^�[�V���c�̔̔��P����1000�~�l����
    UPDATE Shohin
       SET hanbai_tanka = hanbai_tanka + 1000
     WHERE shohin_mei = 'Tシャツ';

    --T�V���c�̔̔��P����1000�~�l�グ
    UPDATE Shohin
       SET hanbai_tanka = hanbai_tanka + 1000
     WHERE shohin_mei = 'Tシャツ';

ROLLBACK;

--4.3
CREATE TABLE ShohinSaeki
(shohin_id CHAR(4) NOT NULL,
  shohin_mei VARCHAR(100) NOT NULL,
  hanbai_tanka INTEGER,
  shiire_tanka INTEGER,
  saeki INTEGER,
PRIMARY KEY (shohin_id));

SELECT shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, (hanbai_tanka - shiire_tanka) AS saeki
FROM Shohin
WHERE shohin_id = '0001' OR shohin_id = '0002' OR shohin_id = '0003';


INSERT INTO ShohinSaeki (shohin_id, shohin_mei, hanbai_tanka, shiire_tanka, saeki) VALUES ();