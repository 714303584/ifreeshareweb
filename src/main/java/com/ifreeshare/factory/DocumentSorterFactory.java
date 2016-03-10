package com.ifreeshare.factory;

import java.awt.Image;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import com.ifreeshare.entity.Document;
import com.ifreeshare.tools.ImageFactory;
import com.ifreeshare.tools.PdfToSwfFactory;
import com.ifreeshare.util.ConfigUtil;
import com.ifreeshare.util.FileAccess;
import com.ifreeshare.util.MD5Util;

public class DocumentSorterFactory {
	
	ThreadPoolExecutor docSorterWorkerPool = null;
	
	private static DocumentSorterFactory documentSorterFactory = null;
	private int corePoolSize;
	private int maximumPoolSize;
	private int keepAliveTime;
	private   TimeUnit unit;
	private int queueSize;
	BlockingQueue<Runnable> workQueue = null;
	BlockingQueue<Document>	 docQueue = null;
	
	List<String> imgTypes = new ArrayList<String>();
	List<String> docTypes = new ArrayList<String>();
	
	
	public static DocumentSorterFactory instant(){
		if(documentSorterFactory == null){
			documentSorterFactory = new DocumentSorterFactory(3, 10, 2,
					TimeUnit.DAYS, 100);
		}
		return documentSorterFactory;
	}
	

	public DocumentSorterFactory(int corePoolSize, int maximumPoolSize, int keepAliveTime,
			TimeUnit unit, int queueSize) {
		super();
		this.corePoolSize = corePoolSize;
		this.maximumPoolSize = maximumPoolSize;
		this.keepAliveTime = keepAliveTime;
		this.unit = unit;
		this.queueSize = queueSize;
		init();
	}

	
	
	private void init(){
		workQueue = new ArrayBlockingQueue<Runnable>(this.maximumPoolSize);
		docQueue = new LinkedBlockingQueue<Document>();
		docSorterWorkerPool = new ThreadPoolExecutor(corePoolSize, maximumPoolSize, keepAliveTime, unit, workQueue);
		for (int i = 0; i < corePoolSize; i++) {
			docSorterWorkerPool.execute(new DocumentSorter());
		}
		imgTypes.add("jpg");
		imgTypes.add("png");
		
		docTypes.add("txt");
		docTypes.add("doc");
		docTypes.add("ppt");
		docTypes.add("pdf");
		docTypes.add("docx");
		
	}
	
	public void  add(Document doc) throws Exception{
		if(docQueue.size() > queueSize){
			throw new Exception(" The queue is full");
		}else{
			docQueue.add(doc);
		}
	}
	
	
	public class DocumentSorter  implements Runnable {
		@Override
		public void run() {
			while (true) {
				try {
					Document doc = docQueue.take(); 
					String fileName =  doc.getFileName();
					String fileSuffix = FileAccess.getFileType(fileName);
					String localpath = doc.getLocalPath();
					String md5 = MD5Util.getFileMD5(localpath);
					String fileType = fileSuffix.toLowerCase();
					File file = new File(localpath);
					String loadPath = ConfigUtil.getConfig(ConfigUtil.UPLOAD_PATH);
					String newName =loadPath+md5+"."+fileType;
					file.renameTo(new File(newName));
					doc.setLocalPath(newName);
					doc.setMd5(md5);
					
					if(imgTypes.contains(fileType)){
						ImageFactory.instant().addDocument(doc);
					}else if(docTypes.contains(fileType)){
						PdfToSwfFactory.instant().add(doc);
					}else{
						//loss
					}
					
				} catch (Exception e) {
					e.printStackTrace();
				} finally{
					
				}
				
			}
		}
		
	}

}
