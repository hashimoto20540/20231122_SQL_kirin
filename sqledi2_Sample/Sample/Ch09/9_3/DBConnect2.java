/* List9-6 Shohin�e�[�u������ushohin_id�v�Ɓushohin_mei�v��2���S�s�I������Java�v���O���� */
import java.sql.*;

public class DBConnect2{
     public static void main(String[] args) throws Exception {

          /* 1) PostgreSQLへの接続方法 */
          Connection con; 
          Statement st;
          ResultSet rs;

          String url = "jdbc:postgresql://localhost:5432/postgres";
          String user = "kazuyahashimoto";
          String password = "test"; 

          /* 2) JDBCドライバの定義 */
          Class.forName("org.postgresql.Driver"); 

          /* 3) PostgreSQLへの接続 */
          con = DriverManager.getConnection(url, user, password); 
          st = con.createStatement(); 

          /* 4) SELECT文の実行 */
          rs = st.executeQuery("SELECT shohin_id, shohin_mei FROM shohin"); 

          /* 5) 結果の画面表示 */
          while(rs.next()) { 
               System.out.print(rs.getString("shohin_id") + ", ");
               System.out.println(rs.getString("shohin_mei"));
          } 

          /* 6) PostgreSQLとの接続を切断 */
          rs.close(); 
          st.close();
          con.close(); 
     }
}