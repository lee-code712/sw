// 로그인 관련 클래스
package jsp.sw;

import java.sql.*;
import jsp.sw.Connect;
import jsp.sw.DisConnect;

public class Login {

	public static String check_login(String p, String id, String pw) {
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        String sql = "select * from "; 
        String id_field;
        String univ = id.substring(0, 3); // id에서 학교식별자만 추출
        
        boolean id_check = false;
        boolean pw_check = false;
        
        if(p.equals("0")) {
        	sql += "student_member";
        	id_field = "s_user_id";
        }
        else {
        	sql += "professor_member";
        	id_field = "p_user_id";
        }
        
        try {
            Connect ct = new Connect();
            conn = ct.getConnection(univ);
            
                    
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()) {
            	String empid = rs.getString(id_field);
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
        	return "-1"; 
        else if(pw_check == false)
        	return "-2";
        else 
        	return univ;
	}

}