// 발신이메일 계정 인증 클래스
package jsp.sw;

import javax.mail.*;

class MyAuthentication extends Authenticator {
	 
    PasswordAuthentication passwordAuthentication;
 
    MyAuthentication(String userName, String password) {
        passwordAuthentication = new PasswordAuthentication(userName, password);
    }
    public PasswordAuthentication getPasswordAuthentication() {
        return passwordAuthentication;
    }
}
