package com.ifreeshare.tools;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import com.ifreeshare.entity.Document;
import com.ifreeshare.util.FileAccess;

public class ImageFactory {
	

	ThreadPoolExecutor pdfToSwfWorkerPool = null;
	
	private int corePoolSize;
	private int maximumPoolSize;
	private int keepAliveTime;
	private   TimeUnit unit;
	private int queueSize;
	BlockingQueue<Runnable> workQueue = null;
	BlockingQueue<Document>	 docQueue = null;
	
	List<String> imgTypes = new ArrayList<String>();
	List<String> docTypes = new ArrayList<String>();
	
	
	private void init(){
		pdfToSwfWorkerPool = new ThreadPoolExecutor(corePoolSize, maximumPoolSize, keepAliveTime, unit, workQueue);
		for (int i = 0; i < corePoolSize; i++) {
			pdfToSwfWorkerPool.execute(new ImagesWorker());
		}
		imgTypes.add("jpg");
		imgTypes.add("png");
		
		docTypes.add("txt");
		docTypes.add("doc");
		docTypes.add("ppt");
		docTypes.add("pdf");
		
	}
	
	public void addDocument(Document document){
		docQueue.add(document);
	}
	public class ImagesWorker  implements Runnable {
		@Override
		public void run() {
			while (true) {
				try {
					Document doc = docQueue.take(); 
					String fileName =  doc.getFileName();
					String fileSuffix = FileAccess.getFileType(fileName);
					
					String fileType = fileSuffix.toLowerCase();
					if(imgTypes.contains(fileType)){
						
					}else if(docTypes.contains(fileType)){
						
					}else{
						//loss
					}
					
				} catch (InterruptedException e) {
					e.printStackTrace();
				} finally{
					
				}
				
			}
		}
		
	}

}
