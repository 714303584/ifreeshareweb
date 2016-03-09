package com.ifreeshare.entity;


public class Document {
	
	private String md5;
	
	private String key;
	
	private String fileName;
	
	private String localPath;

	private String imgPath;
	
	private String author = "admin";
	
	private String docTypeName;
	
	private long size;
	
	private int docType;
	
	private int pages;
	
	private int state;
	
	private String tags;
	
	private String desc = "";
	
	private String password;

	private int downLoad;
	
	private int browse;
	
	private int collect;
	
	
	
	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMd5() {
		return md5;
	}

	public void setMd5(String md5) {
		this.md5 = md5;
	}


	public String getKey() {
		return key;
	}


	public void setKey(String key) {
		this.key = key;
	}


	public String getLocalPath() {
		return localPath;
	}


	public void setLocalPath(String localPath) {
		this.localPath = localPath;
	}


	public String getImgPath() {
		return imgPath;
	}


	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}


	public String getAuthor() {
		return author;
	}


	public void setAuthor(String author) {
		this.author = author;
	}


	public String getDocTypeName() {
		return docTypeName;
	}


	public void setDocTypeName(String docTypeName) {
		this.docTypeName = docTypeName;
	}


	public long getSize() {
		return size;
	}


	public void setSize(long size) {
		this.size = size;
	}


	public int getDocType() {
		return docType;
	}


	public void setDocType(int docType) {
		this.docType = docType;
	}


	public int getPages() {
		return pages;
	}


	public void setPages(int pages) {
		this.pages = pages;
	}


	public String getTags() {
		return tags;
	}


	public void setTags(String tags) {
		this.tags = tags;
	}


	public String getDesc() {
		return desc;
	}


	public void setDesc(String desc) {
		this.desc = desc;
	}

	@Override
	public String toString() {
		return "Document [md5=" + md5 + ", key=" + key + ", localPath="
				+ localPath + ", imgPath=" + imgPath + ", author=" + author
				+ ", docTypeName=" + docTypeName + ", size=" + size
				+ ", docType=" + docType + ", pages=" + pages + ", tags="
				+ tags + ", desc=" + desc + "]";
	}
	

}
