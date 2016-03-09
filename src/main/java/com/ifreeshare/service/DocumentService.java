package com.ifreeshare.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.ifreeshare.entity.Document;

public class DocumentService {
	
	static Map<String , Document> docs = new HashMap<String ,Document>();
	
	public static void add(Document doc){
		String key = doc.getMd5();
		docs.put(key, doc);
		
	}
	
	public Document get(String key){
		return docs.get(key);
	}
	
	
	public List<Document> list(String startRow,Map<String,String> filter,int size){
		Collection<Document> docInfos =  docs.values();
//		Document[] docArray = docInfos.toArray();
		List<Document> result = new ArrayList<Document>();
		for (Document document : docInfos) {
			result.add(document);
			if(result.size() == size){
				break;
			}
		}
		return result;
	}
	
}
