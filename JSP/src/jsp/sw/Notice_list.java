// 공지사항 db내용 저장
package jsp.sw;

import java.util.ArrayList;
import java.sql.*;
import jsp.sw.Connect;
import jsp.sw.DisConnect;

public class Notice_list {
	
	public static ArrayList<Notice> getList() {
		ArrayList<Notice> notices = new ArrayList<Notice>();
		
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        String sql = "select * from notice"; 
        
        try {
            Connect ct = new Connect();
            conn = ct.getConnection("admin");
            
            
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()) {
            	String id = rs.getString("notice_id");
            	String title = rs.getString("title");
            	String writer = rs.getString("writer");
            	String date = rs.getString("w_date");
            	String views = rs.getString("views");
            	String contents = rs.getString("contents");
            	
            	Notice no = new Notice();
            	
            	no.setId(id);
            	no.setTitle(title);
            	no.setWriter(writer);
            	no.setDate(date);
            	no.setViews(views);
            	no.setContents(contents);
            	
            	notices.add(no);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	 DisConnect.close(conn, st, rs);
        }
        
        return notices;
	}
	
	public static void add_view(String v) {
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        String sql = "update notice set views=views+1 where notice_id=\'" + v + "\'";
        
        try {
            Connect ct = new Connect();
            conn = ct.getConnection("admin");
             
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	 DisConnect.close(conn, st, rs);
        }
	}

}