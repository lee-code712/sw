/* sql에 접속해 student/professor 테이블에 중복되는 학번/교수번호가 존재하는지 확인 */

package jsp.sw;

import java.sql.*;
import jsp.sw.Connect;
import jsp.sw.DisConnect;

public class Join_idCheck {

	public static int check_ID(String id, String p) {
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        String sql = "select * from "; 
        String id_field;
        
        boolean id_check = true;
        
        if(p.equals("0")) {
        	sql += "student_member";
        	id_field = "stu_id";
        }
        else {
        	sql += "professor_member";
        	id_field = "prof_id";
        }
        
        try {
            Connect ct = new Connect();
            conn = ct.getConnection();
                  
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()) {
            	String empid = rs.getString(id_field);
   
            	if(id.equals(empid)) {
            		id_check = false;
            	}
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	 DisConnect.close(conn, st, rs);
        }
        
       if (id_check == true)
    	   return 1;
       else
    	   return 0;
	}

}
