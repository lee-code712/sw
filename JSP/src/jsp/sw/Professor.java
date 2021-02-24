package jsp.sw;

public class Professor {
	private String prof_id;
	private String name;
	private String major;
	private String email;
	private String office;
	private String dept_id;
	private String dept_name;
	
	public void setMajor(String major) { this.major = major; }
	public void setEmail(String email) { this.email = email; }
	public void setOffice(String office) { this.office = office; }
	public void setDeptName(String dept_name) { this.dept_name = dept_name; }
	
	public String getProfId() { return prof_id; }
	public String getName() { return name; }
	public String getMajor() { return major; }
	public String getEmail() { return email; }
	public String getOffice() { return office; }
	public String getDeptId() { return dept_id; }
	public String getDeptName() { return dept_name; }
	
	public Professor(String prof_id, String name, String dept_id) {
		this(prof_id, name, "정보 없음", "정보 없음", "정보 없음", dept_id);
	}
	
	public Professor(String prof_id, String name, String major, String email, String office, String dept_id) {
		this.prof_id = prof_id;
		this.name = name;
		this.major = major;
		this.email = email;
		this.office = office;
		this.dept_id = dept_id;
	}
}
