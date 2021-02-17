/* sql에 접속해 student/professor 테이블에 중복되는 학번/교수번호가 존재하는지 확인 */

package jsp.sw;

import java.sql.*;
import jsp.sw.Connect;
import jsp.sw.DisConnect;

public class Join_idCheck {

	public static int check_ID(String stu_prof_id, String p, String univ) {
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        String sql = "select * from "; 
        String id_field;
        
        // 유효한 학번인지 검사
        boolean id_check = false;
        
        if(p.equals("0")) {
        	sql += "student";
        	id_field = "stu_id";
        }
        else {
        	sql += "professor";
        	id_field = "prof_id";
        }
        
        try {
            Connect ct = new Connect();
            conn = ct.getConnection(univ);
                  
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()) {
            	String empid = rs.getString(id_field);
   
            	if(stu_prof_id.equals(empid)) {
            		id_check = true;
            	}
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	 DisConnect.close(conn, st, rs);
        }
       
       
       if (id_check == false) {
           return -1; // 유효하지 않은 학번
       }   
       else { // 유효한 학번인 경우에 한해 중복된 학번인지 검사
    	   conn = null;
           st = null;       
           rs = null;
           
           sql = "select * from ";
           
           boolean usrId_check = true;
    	   if(p.equals("0")) {
        	   sql += "student_member";
           }
           else {
        	   sql += "professor_member";
           }
           
           try {
               Connect ct = new Connect();
               conn = ct.getConnection();
                     
               st = conn.createStatement();
               rs = st.executeQuery(sql);
               
               while(rs.next()) {
            	   String empid = rs.getString(id_field);
      
            	   if(stu_prof_id.equals(empid)) {
            		   usrId_check = false;
            	   }
               }
           } catch (SQLException e) {
               e.printStackTrace();
           } finally {
        	   DisConnect.close(conn, st, rs);
           }
           
           if(usrId_check == false)
        	   return 0; // 중복된 학번
           else
        	   return 1;
       }
	}
	
}
