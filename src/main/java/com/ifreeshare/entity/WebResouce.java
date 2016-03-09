package com.ifreeshare.entity;

import java.util.List;

public class WebResouce {
	
	private String key;
	
	private String Md5;
	
	private List<String> thumbnail;
	
	private String bizPath;
	
	private List<String> documents;
	
	private String index;
	
	private double size;

	private int downLoad;
	
	private int browse;
	
	private int collect;
	
	private String description;
	
	private String keywords;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getMd5() {
		return Md5;
	}

	public void setMd5(String md5) {
		Md5 = md5;
	}

	public List<String> getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(List<String> thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getBizPath() {
		return bizPath;
	}

	public void setBizPath(String bizPath) {
		this.bizPath = bizPath;
	}

	public List<String> getDocuments() {
		return documents;
	}

	public void setDocuments(List<String> documents) {
		this.documents = documents;
	}

	public String getIndex() {
		return index;
	}

	public void setIndex(String index) {
		this.index = index;
	}

	public double getSize() {
		return size;
	}

	public void setSize(double size) {
		this.size = size;
	}

	public int getDownLoad() {
		return downLoad;
	}

	public void setDownLoad(int downLoad) {
		this.downLoad = downLoad;
	}

	public int getBrowse() {
		return browse;
	}

	public void setBrowse(int browse) {
		this.browse = browse;
	}

	public int getCollect() {
		return collect;
	}

	public void setCollect(int collect) {
		this.collect = collect;
	}
	
	
	

}
