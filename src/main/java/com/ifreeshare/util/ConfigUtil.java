package com.ifreeshare.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import com.ifreeshare.config.Configurations;

public class ConfigUtil {

	public static final String THUMBNAIL_SAVE_PATH = "thumbnail.save.path";

	public static final String SWF_SAVE_PATH = "swf.save.path";
	
	public static final String UPLOAD_PATH = "covert.save.path";
	
	

	public static final String CONFIG_NAME = "ifreeshare.properties";
	
	public static String webRoot = "";

	public static Properties properties = null;

	static {
		try {
			ClassLoader loader = Configurations.class.getClassLoader();
			InputStream in = loader.getResourceAsStream(CONFIG_NAME);
			properties = new Properties();
			properties.load(in);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static String getThumbnailSavePath() {
		return getConfig(THUMBNAIL_SAVE_PATH, webRoot+"//md5//thumbnail//");
	}
	
	public static void setWebRootPath(String path){
		webRoot = path;
	}

	public static String getConfig(String key, String defaultValue) {
		return properties.getProperty(key, defaultValue);
	}
	
	public static String getConfig(String key) {
		return properties.getProperty(key);
	}

	

	public static String getSwfSavePath() {
		return getConfig(THUMBNAIL_SAVE_PATH, webRoot+"//md5//SWF//");
	}
	
	public static String getWorkPath(){
		return System.getProperty("user.dir");
	}
	
	public static void main(String[] args) {
		System.out.println();
		
	}

}
