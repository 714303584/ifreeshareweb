package com.ifreeshare.util;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.pdfbox.exceptions.COSVisitorException;
import org.apache.pdfbox.pdfparser.PDFParser;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.util.PDFImageWriter;
import org.apache.pdfbox.util.PDFTextStripper;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

/**
 * Hello world!
 *
 */
public class Pdf2ImgUtil 
{
	
	public final  static String  IMG_TYPE_JPG = "jpg";
	public final  static String  IMG_TYPE_PNG = "png";
    public static void main( String[] args ) throws IOException
    {
    		Pdf2ImgUtil app = new Pdf2ImgUtil();
    		app.pdf2img("D:\\cheat.pdf", "D:",IMG_TYPE_PNG);
//    		PDDocument pdDocument = app.pdfInfo("D:\\api.pdf");
    	
//    	System.out.println("111111111111111111111");
    }
    
    
    /**
     * 
     * @param pdfPath pdf文件的路径
     * @param savePath 图片保存的地址
     * @param imgType 图片保存方式
     */
    public void pdf2img(String pdfPath,String savePath,String imgType){
    	String fileName = pdfPath.substring(pdfPath.lastIndexOf("\\")+1, pdfPath.length());
    	fileName = fileName.substring(0,fileName.lastIndexOf("."));
    	InputStream  is = null;
    	PDDocument pdDocument = null; 
    	try {
        	is = new BufferedInputStream(new FileInputStream(pdfPath));
        	PDFParser parser = new PDFParser(is);
        	
        	 PDFTextStripper stripper=new PDFTextStripper("GBK");
//        	 par
        	
        	parser.parse();
        	pdDocument = parser.getPDDocument();
        	List<PDPage> pages = pdDocument.getDocumentCatalog().getAllPages();
        	
        	
        	PDPage page = pages.get(0);
        	for (int i = 0; i < pages.size(); i++) {
//        		String saveFileName = savePath+"\\"+fileName+i+"."+imgType;
        		String saveFileName = savePath+"\\"+fileName;
//        		PDPage page =  pages.get(i);
//        		pdfPage2Img(page,saveFileName,imgType);
        		
        		PDFImageWriter iw = new PDFImageWriter();
            	iw.writeImage(pdDocument, imgType, "", i+1, i+1, saveFileName);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(pdDocument != null){
				try {
					pdDocument.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
    	
    	
    }
    
    /**
     * pdf页转换成图片
     * @param page		
     * @param saveFileName
     * @throws IOException
     */
    public void pdfPage2Img(PDPage page,String saveFileName,String imgType) throws IOException{
    	BufferedImage img_temp  = page.convertToImage();
//    	Iterator<ImageWriter> it = ImageIO.getImageWritersBySuffix(imgType);
//    	ImageWriter writer = (ImageWriter) it.next(); 
//    	ImageOutputStream imageout = ImageIO.createImageOutputStream(new FileOutputStream(saveFileName));
////    	writer.setOutput(imageout);
////    	writer.write(new IIOImage(img_temp, null, null));
    	
    	
    	FileOutputStream out  = new FileOutputStream(saveFileName);    
          JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(out);    
          encoder.encode(img_temp); 
    }
  
    
  
    
    public void createPdf() throws COSVisitorException, IOException{
    	PDDocument document = new PDDocument();
        PDPage blankPage = new PDPage();
        document.addPage(blankPage);
        document.save("D:\\test.pdf");
        document.close();
    }
}
