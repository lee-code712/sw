package jsp.sw;
import java.sql.*;
import jsp.sw.Connect;
import jsp.sw.DisConnect;

public class Login {

	public static int check_login(String p, String id, String pw) {
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        boolean id_check = false;
        boolean pw_check = false;
        
        try {
            Connect ct = new Connect();
            conn = ct.getConnection();
            //일단 student_member에 dwu20180673/pak1234/20180673로 하나 생성해서 테스트 했음! 
            String sql = "select * from student_member";           
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()) {
            	String empid = rs.getString("s_user_id");
            	String emppwd = rs.getString("password");
            	if(id.equals(empid)) {
            		id_check = true;
            		if(pw.equals(emppwd))
            			pw_check = true;
            	}
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	 DisConnect.close(conn, st, rs);
        }
        
        if(id_check == false)
        	return -1; 
        else if(pw_check == false)
        	return -2;
        else 
        	return 1;
	}

}