package com.ifreeshare.tools;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import javax.imageio.ImageIO;

import com.ifreeshare.entity.Document;
import com.ifreeshare.util.FileAccess;
import com.ifreeshare.util.ThumbnailTools;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ImageFactory {
	

	ThreadPoolExecutor pdfToSwfWorkerPool = null;
	
	private static ImageFactory imageFactory = null;
	
	private int corePoolSize;
	private int maximumPoolSize;
	private int keepAliveTime;
	private   TimeUnit unit;
	private int queueSize;
	BlockingQueue<Runnable> workQueue = null;
	BlockingQueue<Document>	 docQueue = null;
	
	List<String> imgTypes = new ArrayList<String>();
	List<String> docTypes = new ArrayList<String>();
	

	public static ImageFactory instant(){
		if(imageFactory == null){
			imageFactory = new ImageFactory(3, 10, 2,
					TimeUnit.DAYS, 100);
		}
		return imageFactory;
	}
	
	
	public ImageFactory(int corePoolSize, int maximumPoolSize, int keepAliveTime,
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
					
					System.out.println(fileName);
					File resourceFile = new File(doc.getLocalPath());
					Image resourceImage = ImageIO.read(resourceFile);
					int height = resourceImage.getHeight(null);
					int wight = resourceImage.getWidth(null);
					int ratio = wight / 200;
					
					
					BufferedImage bImage = new BufferedImage(200, height / ratio, BufferedImage.TYPE_INT_RGB);
					bImage.getGraphics().drawImage(resourceImage, 0 , 0 , 200, height / ratio, null);
					
					FileOutputStream out= new FileOutputStream("E:\\gaoqingpic\\thumbnail\\"+doc.getMd5()+".jpg");
			        JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);
			        encoder.encode(bImage);
					out.flush();
//					ThumbnailTools.getThumbnail(doc.getLocalPath(), , 200, 200);
					
					System.out.println(doc.toString()+" \n thumbnail:"+"E:\\gaoqingpic\\thumbnail\\"+doc.getMd5()+".jpg");
					out.close();
					
				} catch (InterruptedException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				} finally{
					
					
				}
				
			}
		}
		
	}
	
	
	public static  void getThumbnail(){
		
	}
	
	

}
