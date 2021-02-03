package jsp.sw;
import java.sql.*;

public class Connect {
	
	public Connection getConnection() {
        Connection conn = null;
         
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            String url ="jdbc:oracle:thin:@localhost:1521:xe";
            String user ="yrg";
            String password ="yrg";
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