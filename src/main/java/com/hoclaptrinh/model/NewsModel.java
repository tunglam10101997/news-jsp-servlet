package com.hoclaptrinh.model;

public class NewsModel extends AbstractModel {
	private Long categoryId;
	private String thumbNail;
	private String title;
	private String shortdesCription;
	private String content;
	public Long getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Long categoryId) {
		this.categoryId = categoryId;
	}
	public String getThumbNail() {
		return thumbNail;
	}
	public void setThumbNail(String thumbNail) {
		this.thumbNail = thumbNail;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getShortdesCription() {
		return shortdesCription;
	}
	public void setShortdesCription(String shortdesCription) {
		this.shortdesCription = shortdesCription;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
