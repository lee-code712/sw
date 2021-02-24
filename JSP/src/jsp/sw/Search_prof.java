// DB에 연결해 해당 교수명을 포함하는 교수
package jsp.sw;

import java.util.ArrayList;
import java.sql.*;
import jsp.sw.Connect;
import jsp.sw.DisConnect;

public class Search_prof {
	public static ArrayList<Professor> search(String p_name) { // 임시로 사용, 추후 제거
		ArrayList<Professor> profs = new ArrayList<Professor>();
		
		String input = p_name;
		input = "'%" + input + "%'";

		Connection conn = null;
		Statement st = null;       
		ResultSet rs = null;
		Statement st_deptName = null;
		ResultSet rs_deptName  = null;
		
		String sql = "select * from professor where name like " + input;
		
		try {
		    Connect ct = new Connect();
		    conn = ct.getConnection();
		          
		    st = conn.createStatement();
		    rs = st.executeQuery(sql);
		    st_deptName = conn.createStatement();
		    
		    if (rs.next()) {
		    	String prof_id = rs.getString("prof_id");
		    	String name = rs.getString("name");
		    	String dept_id = rs.getString("dept_id");
		    	String major = rs.getString("major");
		    	String email = rs.getString("email");
		    	String office = rs.getNString("office");
		    	
		    	Professor p = new Professor(prof_id, name, dept_id);
		    	
		    	String sql_getDeptName = "select dept_name from department where dept_id=" + dept_id;
		    	rs_deptName = st_deptName.executeQuery(sql_getDeptName);
		    	if (rs_deptName.next())
		    		p.setDeptName(rs_deptName.getString("dept_name"));
		    	
		    	if (major != null)
		    		p.setMajor(major);
		    	if (email != null)
		    		p.setEmail(email);
		    	if (office != null)
		    		p.setOffice(office);
		    	
		    	profs.add(p);
		    	
		    	while(rs.next()) {
		    		prof_id = rs.getString("prof_id");
			    	name = rs.getString("name");
			    	dept_id = rs.getString("dept_id");
			    	major = rs.getString("major");
			    	email = rs.getString("email");
			    	office = rs.getNString("office");
			    	
			    	p = new Professor(prof_id, name, dept_id);
			    	
			    	sql_getDeptName = "select dept_name from department where dept_id=" + dept_id;
			    	rs_deptName = st_deptName.executeQuery(sql_getDeptName);
			    	if (rs_deptName.next())
			    		p.setDeptName(rs_deptName.getString("dept_name"));
			    	
			    	if (major != null)
			    		p.setMajor(major);
			    	if (email != null)
			    		p.setEmail(email);
			    	if (office != null)
			    		p.setOffice(office);
			    	
			    	profs.add(p);
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
		
		return profs;
	}
	
	public static ArrayList<Professor> search(String p_name, String univ) {
		ArrayList<Professor> profs = new ArrayList<Professor>();
		
		String input = p_name;
		input = "'%" + input + "%'";

		Connection conn = null;
		Statement st = null;       
		ResultSet rs = null;
		Statement st_deptName = null;
		ResultSet rs_deptName  = null;
		
		String sql = "select * from professor where name like " + input;
		
		try {
		    Connect ct = new Connect();
		    conn = ct.getConnection(univ);
		          
		    st = conn.createStatement();
		    rs = st.executeQuery(sql);
		    st_deptName = conn.createStatement();
		    
		    if (rs.next()) {
		    	String prof_id = rs.getString("prof_id");
		    	String name = rs.getString("name");
		    	String dept_id = rs.getString("dept_id");
		    	String major = rs.getString("major");
		    	String email = rs.getString("email");
		    	String office = rs.getNString("office");
		    	
		    	Professor p = new Professor(prof_id, name, dept_id);
		    	String sql_getDeptName = "select dept_name from department where dept_id=" + dept_id;
		    	rs_deptName = st_deptName.executeQuery(sql_getDeptName);
		    	if (rs_deptName.next())
		    		p.setDeptName(rs_deptName.getString("dept_name"));
		    	
		    	if (major != null)
		    		p.setMajor(major);
		    	if (email != null)
		    		p.setEmail(email);
		    	if (office != null)
		    		p.setOffice(office);
		    	
		    	profs.add(p);
		    	
		    	while(rs.next()) {
		    		prof_id = rs.getString("prof_id");
			    	name = rs.getString("name");
			    	dept_id = rs.getString("dept_id");
			    	major = rs.getString("major");
			    	email = rs.getString("email");
			    	office = rs.getNString("office");
			    	
			    	p = new Professor(prof_id, name, dept_id);
			    	sql_getDeptName = "select dept_name from department where dept_id=" + dept_id;
			    	rs_deptName = st_deptName.executeQuery(sql_getDeptName);
			    	if (rs_deptName.next())
			    		p.setDeptName(rs_deptName.getString("dept_name"));
			    	
			    	if (major != null)
			    		p.setMajor(major);
			    	if (email != null)
			    		p.setEmail(email);
			    	if (office != null)
			    		p.setOffice(office);
			    	
			    	profs.add(p);
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
		
		return profs;
	}
}
