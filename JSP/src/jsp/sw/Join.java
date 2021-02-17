/* sql 접속해 대학 이름으로 대학 id 검색, 회원 아이디 생성 및 회원정보 멤버 테이블에 추가 */

package jsp.sw;

import java.sql.*;
import jsp.sw.Connect;
import jsp.sw.Connect_univ;
import jsp.sw.DisConnect;

public class Join {
	public static int add_member(String p, String stu_prof_id, String user_id, String pw) {
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;

        String sql = "insert into ";
        
        if(p.equals("0")) {
        	sql += "student_member (s_user_id, password, stu_id) values ";
        }
        else {
        	sql += "professor_member (p_user_id, password, prof_id) values ";
        }
        
        sql += "('" + user_id + "', '" + pw + "', '" + stu_prof_id + "')";
        
        try {
            Connect ct = new Connect(); // 이 부분 추후 각 대학별 테이블스페이스에 연동하는 것으로 수정
            conn = ct.getConnection();
                  
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            return 1;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
        	 DisConnect.close(conn, st, rs);
        }
	}
	
}
