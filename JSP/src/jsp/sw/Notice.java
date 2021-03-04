// 공지사항 변수들
package jsp.sw;

public class Notice {
	private String id;
	private String title;
	private String writer;
	private String date;
	private String views;
	private String contents;
	
	public void setId(String id) { this.id = id; }
	public void setTitle(String title) { this.title = title; }
	public void setWriter(String writer) { this.writer = writer; }
	public void setDate(String date) { this.date = date; }
	public void setViews(String views) { this.views = views; }
	public void setContents(String contents) { this.contents = contents; }
	
	public String getId() { return id; }
	public String getTitle() { return title; }
	public String getWriter() { return writer; }
	public String getDate() { return date; }
	public String getViews() { return views; }
	public String getContents() { return contents; }
}
