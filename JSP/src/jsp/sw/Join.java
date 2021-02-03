/* sql 접속해 대학 이름으로 대학 id 검색, 회원 아이디 생성 및 회원정보 멤버 테이블에 추가 */

package jsp.sw;

import java.sql.*;
import jsp.sw.Connect;
import jsp.sw.Connect_univ;
import jsp.sw.DisConnect;

public class Join {
	public static String add_member(String p, String univ, String stu_prof_id, String pw) {
		
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        
        String sql_univ = "select * from university";
        String univID = "";
        String userID = "";
        
        // university 테이블스페이스의 university 테이블에 접근해 대학 검색 및 아이디 생성
        try {
            Connect_univ ct = new Connect_univ();
            conn = ct.getConnection();
                  
            st = conn.createStatement();
            rs = st.executeQuery(sql_univ);
            
            while(rs.next()) {
            	String univName = rs.getString("univ_name");
            	
            	if(univ.equals(univName)) { // 입력받은 대학명이 DB에 있는 대학명과 완전히 같이야 함 - 추후 보완?
            		univID = rs.getString("univ_id");
            		userID = univID + stu_prof_id; // 아이디 생성
            		break;
            	}
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	 DisConnect.close(conn, st, rs);
        }

        String sql_insert = "insert into ";
        
        if(p.equals("0")) {
        	sql_insert += "student_member (s_user_id, password, stu_id) values ";
        }
        else {
        	sql_insert += "professor_member (p_user_id, password, prof_id) values ";
        }
        
        sql_insert += "('" + userID + "', '" + pw + "', '" + stu_prof_id + "')";
        
        conn = null;
        st = null;       
        rs = null;
        
        try {
            Connect ct = new Connect(); // 이 부분 추후 각 대학별 테이블스페이스에 연동하는 것으로 수정
            conn = ct.getConnection();
                  
            st = conn.createStatement();
            rs = st.executeQuery(sql_insert);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	 DisConnect.close(conn, st, rs);
        }
        
        return userID;
	}
	
}
