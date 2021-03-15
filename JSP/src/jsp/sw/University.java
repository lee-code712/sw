package jsp.sw;

public class University {
	private String univ_name;
	private String univ_id;
	
	public void setUnivName(String univ_name) { this.univ_name = univ_name; }
	public void setUnivID(String univ_id) { this.univ_id = univ_id; }
	
	public String getUnivName() { return univ_name; }
	public String getUnivID() { return univ_id; }
	
	public University(String univ_name) {
		this(univ_name, "정보 없음");
	}
	
	public University(String univ_name, String univ_id) {
		this.univ_name = univ_name;
		this.univ_id = univ_id;
	}
}
