// 패스워드 찾기 관련 클래스
package jsp.sw;

import java.util.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.mail.*;
import javax.mail.internet.*;
import jsp.sw.MyAuthentication;

public class Find_pw {
	
	public static String check(String p, String id, String email) {
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        String sql = "select * from "; 
        String id_field;
        String univ = id.substring(0, 3); // id에서 학교식별자만 추출
        
        boolean id_check = false;
        boolean email_check = false;
        
        if(p.equals("0")) {
        	sql += "student_member sm join student s on (sm.stu_id = s.stu_id)";
        	id_field = "s_user_id";
        }
        else {
        	sql += "professor_member pm join professor p on (pm.stu_id = p.stu_id)";
        	id_field = "p_user_id";
        }

        
        try {
            Connect ct = new Connect();
            conn = ct.getConnection(univ);
            
                    
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            
            while(rs.next()) {
            	String empid = rs.getString(id_field);
            	String empemail = rs.getString("email");
            	if(id.equals(empid)) {
            		id_check = true;
            		if(email.equals(empemail))
            			email_check = true;
            	}
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	 DisConnect.close(conn, st, rs);
        }
        
        if(id_check == false)
        	return "-1"; 
        else if(email_check == false)
        	return "-2";
        else 
        	return email;
	}
	
	public static String find_pw(String p, String id) {
		Connection conn = null;
        Statement st = null;       
        ResultSet rs = null;
        String sql = "select * from "; 
        String id_field;
        String univ = id.substring(0, 3); // id에서 학교식별자만 추출
        String emppwd = null;
        
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
            	if(id.equals(empid)) {
            		emppwd = rs.getString("password");
            		break;
            	}
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	 DisConnect.close(conn, st, rs);
        }
        
        return emppwd;
	}
	
	
	public static void send_pw(String p, String id, String email) {
		String mail_title = "패스워드 찾기";
		String sender = "swddwu@gmail.com";
		String sender_name = "상담-E 관리자";
		
		Session sess = null;
		Message msg = null;
		Properties props = null;
		
		try {
			props = new Properties();
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "465");
	        props.put("mail.smtp.ssl.enable", "true");
	        props.put("mail.smtp.auth", "true");
	        
            Authenticator auth = new MyAuthentication(sender, "ddwusw19");
			sess = Session.getDefaultInstance(props, auth);
			
			msg = new MimeMessage(sess);
			msg.setFrom(new InternetAddress(sender, sender_name, "UTF-8"));
			InternetAddress[] address = {new InternetAddress(email)};
			msg.setRecipients(Message.RecipientType.TO, address);
			msg.setSubject(mail_title);
			
			String mail_body = "상담-E 패스워드 찾기에 대한 메일입니다. 등록하신 패스워드는 [ " + find_pw(p, id) + " ]입니다.";
			msg.setContent(mail_body, "text/html;charset=UTF-8");
			msg.setHeader("Content-Transfer-Encoding", "base64");
			msg.setSentDate(new java.util.Date());
			Transport.send(msg);
			
		} catch (Exception ex) {
			ex.printStackTrace();
        }
	}
	
}
