package jsp.sw;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Join_idMake {
	public static String make_ID(String stu_prof_id, String p, String univ) {
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        
        String sql = "select * from university";
        String univID = "";
        String userID = "";
        
        // university 테이블스페이스의 university 테이블에 접근해 대학 검색 및 아이디 생성
        try {
            Connect_univ ct = new Connect_univ();
            conn = ct.getConnection();
                  
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
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
        
        return userID;
	}
}
