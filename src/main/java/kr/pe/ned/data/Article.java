package kr.pe.ned.data;

import java.util.Date;

public class Article {

	private Long id;
	private String title;
	private String contents;
	private Date createdAt;
	/** 작성자아이디 */
	private Long creator;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Long getCreator() {
		return creator;
	}

	public void setCreator(Long creator) {
		this.creator = creator;
	}

}
