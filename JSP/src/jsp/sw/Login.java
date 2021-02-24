// 로그인 관련 클래스
package jsp.sw;

import java.sql.*;
import jsp.sw.Connect_univ;
import jsp.sw.Connect;
import jsp.sw.DisConnect;

public class Login {

	public static String check_login(String p, String id, String pw) {
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        String sql = "select * from "; 
        String id_field;
         
        boolean id_check = false;
        boolean pw_check = false;
        
        String univ = "";
        int i = 0;
        char c = id.charAt(i);
        while(c >= 'a' && c <= 'z') {
        	univ += c;
        	i++;
        	if(i >= id.length())
        		break;
        	c = id.charAt(i);
        }
        
        if(check_univ(univ) && id.length() > univ.length()) {
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
        }
        
        if(id_check == false)
        	return "-1"; 
        else if(pw_check == false)
        	return "-2";
        else 
        	return univ;
	}
	
	public static boolean check_univ(String u) {
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        String sql = "select * from university"; 
        
        boolean univ_check = false;
        
        try {
            Connect_univ ct = new Connect_univ();
            conn = ct.getConnection();
            
                    
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()) {
            	String empuniv = rs.getString("univ_id");
            	if(u.equals(empuniv)) {
            		univ_check = true;
            	}
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	 DisConnect.close(conn, st, rs);
        }
        
        return univ_check;
	}

}