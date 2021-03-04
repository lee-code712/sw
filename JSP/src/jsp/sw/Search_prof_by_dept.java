// DB에 연결해 해당 학과에 속한 교수들 정보 반환
package jsp.sw;

import java.util.ArrayList;
import java.sql.*;
import jsp.sw.Connect;
import jsp.sw.DisConnect;

public class Search_prof_by_dept {
	public static ArrayList<Professor> search(String d_name) { // 임시로 사용, 추후 제거
		ArrayList<Professor> profs = new ArrayList<Professor>();

		Connection conn = null;
		Statement st = null;       
		ResultSet rs = null;
		
		// 학과 아이디 검색
		String sql_getDeptID = "select dept_id from department where dept_name like '" + d_name + "'";
		String dept_id = "";
		
		try {
		    Connect ct = new Connect();
		    conn = ct.getConnection();      
		    st = conn.createStatement();
		    rs = st.executeQuery(sql_getDeptID);
		    
		    if (rs.next()) {
		    	dept_id += rs.getString("dept_id");
		    }
		    else {
		    	return null;
		    }
		} catch (SQLException e) {
		    e.printStackTrace();
		} finally {
			 DisConnect.close(conn, st, rs);
		}
		
		// 학과 아이디에 해당하는 교수명 검색
		conn = null;
		st = null;
		rs = null;
		
		String sql_getProfInfo = "select * from professor where dept_id like '" + dept_id + "'";
		
		try {
		    Connect ct = new Connect();
		    conn = ct.getConnection();      
		    st = conn.createStatement();
		    rs = st.executeQuery(sql_getProfInfo);
		    
		    if (rs.next()) {
		    	String prof_id = rs.getString("prof_id");
		    	String name = rs.getString("name");
		    	String major = rs.getString("major");
		    	String email = rs.getString("email");
		    	String office = rs.getString("office");
		    	
		    	Professor p = new Professor(prof_id, name, dept_id);
		    	p.setDeptName(d_name);
		    	
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
			    	major = rs.getString("major");
			    	email = rs.getString("email");
			    	office = rs.getString("office");
			    	
			    	p = new Professor(prof_id, name, dept_id);
			    	p.setDeptName(d_name);
			    	
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
	
	public static ArrayList<Professor> search(String d_name, String univ) {
		ArrayList<Professor> profs = new ArrayList<Professor>();

		Connection conn = null;
		Statement st = null;       
		ResultSet rs = null;
		
		// 학과 아이디 검색
		String sql_getDeptID = "select dept_id from department where dept_name like '" + d_name + "'";
		String dept_id = "";
		
		try {
		    Connect ct = new Connect();
		    conn = ct.getConnection(univ);
		          
		    st = conn.createStatement();
		    rs = st.executeQuery(sql_getDeptID);
		    
		    if (rs.next()) {
		    	dept_id = rs.getString("dept_id");
		    }
		    else {
		    	return null;
		    }
		} catch (SQLException e) {
		    e.printStackTrace();
		} finally {
			 DisConnect.close(conn, st, rs);
		}
		
		// 학과 아이디에 해당하는 교수명 검색
		conn = null;
		st = null;
		rs = null;
		
		String sql_getProfInfo = "select * from professor where dept_id like '" + dept_id + "'";
		
		try {
		    Connect ct = new Connect();
		    conn = ct.getConnection();      
		    st = conn.createStatement();
		    rs = st.executeQuery(sql_getProfInfo);
		    
		    if (rs.next()) {
		    	String prof_id = rs.getString("prof_id");
		    	String name = rs.getString("name");
		    	String major = rs.getString("major");
		    	String email = rs.getString("email");
		    	String office = rs.getString("office");
		    	
		    	Professor p = new Professor(prof_id, name, dept_id);
		    	p.setDeptName(d_name);
		    	
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
			    	major = rs.getString("major");
			    	email = rs.getString("email");
			    	office = rs.getString("office");
			    	
			    	p = new Professor(prof_id, name, dept_id);
			    	p.setDeptName(d_name);
			    	
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
