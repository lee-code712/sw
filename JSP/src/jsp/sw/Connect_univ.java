/* university 테이블스페이스 접속 */

package jsp.sw;
import java.sql.*;

public class Connect_univ {
	
	public Connection getConnection() {
        Connection conn = null;
         
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String url ="jdbc:oracle:thin:@localhost:1521:xe";
            String user ="UNIV_M"; // 각자 변경
            String password ="UNIV_M"; // 각자 변경
            conn = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            System.out.println("driver load 실패!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("DB 연결 실패!");
            e.printStackTrace();
        }
         
        return conn;
    }

}