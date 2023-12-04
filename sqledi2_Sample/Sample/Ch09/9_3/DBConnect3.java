/* List9-7 �X�VSQL���𔭍s���ăe�[�u���̃f�[�^���X�V����Java�v���O���� */
// import java.sql.*;

// public class DBConnect3{
//      public static void main(String[] args) throws Exception {

//           /* 1) PostgreSQLへの接続情報 */
//           Connection con; 
//           Statement st;

//           String url = "jdbc:postgresql://localhost:5432/postgres";
//           String user = "kazuyahashimoto";
//           String password = "test"; 
          

//           /* 2) JDBCドライバの定義 */
//           Class.forName("org.postgresql.Driver");

//           /* 3) PostgreSQLへの接続 */
//           con = DriverManager.getConnection(url, user, password);
//           st = con.createStatement();

//           /* 4) DELETE文の実行 */
//           int delcnt = st.executeUpdate("DELETE FROM Shohin");

//           /* 5) 結果の画像表示 */
//           System.out.print(delcnt + "行削除されました");

//           /* 6) PostgreSQLとの接続を切断 */
//           st.close();
//           con.close();
//      }
// }

// 9-1
// import java.sql.*;

// public class DBConnect3{
//      public static void main(String[] args) throws Exception {

//           /* 1) PostgreSQLへの接続情報 */
//           Connection con; 
//           Statement st;

//           String url = "jdbc:postgresql://localhost:5432/postgres";
//           String user = "kazuyahashimoto";
//           String password = "test"; 
          

//           /* 2) JDBCドライバの定義 */
//           Class.forName("org.postgresql.Driver");

//           /* 3) PostgreSQLへの接続 */
//           con = DriverManager.getConnection(url, user, password);
//           st = con.createStatement();

//           /* 4) DELETE文の実行 */
//           int inscnt = st.executeUpdate("INSERT INTO Shohin VALUES ('0001', 'Tシャツ', '衣服', 1000, 500, '2009-09-20')");
//           // System.out.println(inscnt + "�s�}������܂���");

//           inscnt = st.executeUpdate("INSERT INTO Shohin VALUES ('0002', '穴あけパンチ', '事務用品', 500, 320, '2009-09-11')");
// //     System.out.println(inscnt + "�s�}������܂���");

//     inscnt = st.executeUpdate("INSERT INTO Shohin VALUES ('0003', 'カッターシャツ', '衣服', 4000, 2800, NULL)");
// //     System.out.println(inscnt + "�s�}������܂���");

//     inscnt = st.executeUpdate("INSERT INTO Shohin VALUES ('0004', '包丁', 'キッチン用品', 3000, 2800, '2009-09-20')");
// //     System.out.println(inscnt + "�s�}������܂���");

//     inscnt = st.executeUpdate("INSERT INTO Shohin VALUES ('0005', '圧力鍋', 'キッチン用品', 6800, 5000, '2009-01-15')");    System.out.println(inscnt + "�s�}������܂���");

//     inscnt = st.executeUpdate("INSERT INTO Shohin VALUES ('0006', 'フォーク', 'キッチン用品', 500, NULL, '2009-09-20')");
// //     System.out.println(inscnt + "�s�}������܂���");

//     inscnt = st.executeUpdate("INSERT INTO Shohin VALUES ('0007', 'おろしがね', 'キッチン用品', 880, 790, '2008-04-28')");
// //     System.out.println(inscnt + "�s�}������܂���");

//     inscnt = st.executeUpdate("INSERT INTO Shohin VALUES ('0008', 'ボールペン', '事務用品', 100, NULL, '2009-11-11')");
// //     System.out.println(inscnt + "�s�}������܂���");

//           /* 5) 結果の画像表示 */
//           System.out.print(inscnt + "行削除されました");
//           // System.out.print(delcnt + "行削除されました");
//           /* 6) PostgreSQLとの接続を切断 */
//           st.close();
//           con.close();
//      }
// }

// 9-2
import java.sql.*;

public class DBConnect3{
     public static void main(String[] args) throws Exception {

          /* 1) PostgreSQLへの接続情報 */
          Connection con; 
          Statement st;

          String url = "jdbc:postgresql://localhost:5432/postgres";
          String user = "kazuyahashimoto";
          String password = "test"; 
          
          /* 2) JDBCドライバの定義 */
          Class.forName("org.postgresql.Driver");

          /* 3) PostgreSQLへの接続 */
          con = DriverManager.getConnection(url, user, password);
          st = con.createStatement();

          /* 4) DELETE文の実行 */
          int update = st.executeUpdate("UPDATE Shohin SET shohin_mei = 'Yシャツ' WHERE shohin_id = '0001'");

          /* 5) 結果の画像表示 */
          System.out.print(update);
          st.close();
          con.close();
     }
}