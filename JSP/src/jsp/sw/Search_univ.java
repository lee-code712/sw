package jsp.sw;

import java.util.ArrayList;
import java.sql.*;
import jsp.sw.Connect;
import jsp.sw.DisConnect;

public class Search_univ {
	public static ArrayList<University> search(String u_name) {
		ArrayList<University> univs = new ArrayList<University>();
		
		String input = u_name;
		input = "'%" + input + "%'";

		Connection conn = null;
		Statement st = null;       
		ResultSet rs = null;
		
		String sql = "select * from university where univ_name like " + input;
		
		try {
		    Connect_univ ct = new Connect_univ();
		    conn = ct.getConnection();
		          
		    st = conn.createStatement();
		    rs = st.executeQuery(sql);
		    
		    if(rs.next()) {
		    	String univ_name = rs.getString("univ_name");
		    	String univ_id = rs.getString("univ_id");
		    	
		    	University u = new University(univ_name, univ_id);
		    	univs.add(u);
		    	
		    	while(rs.next()) {
		    		univ_name = rs.getString("univ_name");
			    	univ_id = rs.getString("univ_id");
			    	
			    	u = new University(univ_name, univ_id);
			    	univs.add(u);
			    }
		    }
		    else {
		    	return null;
		    }
		} catch (SQLException e) {
		    e.printStackTrace();
		} finally {
			DisConnect.close(conn, st, rs);
		}
		
		return univs;
	}
}
