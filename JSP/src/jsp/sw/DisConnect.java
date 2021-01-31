package jsp.sw;
import java.sql.*;

public class DisConnect {
	
	 public static void close(Connection conn, Statement st, ResultSet rs) {
		 try {
             if(rs != null) rs.close();
             if(st != null) st.close();
             if(conn != null) conn.close();
         } catch (SQLException e) {
             e.printStackTrace();
         }
	 }
	 
}