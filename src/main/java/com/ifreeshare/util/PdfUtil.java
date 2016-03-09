package com.ifreeshare.util;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.List;

import org.apache.fontbox.encoding.Encoding;
import org.apache.pdfbox.exceptions.COSVisitorException;
import org.apache.pdfbox.pdfparser.PDFParser;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.edit.PDPageContentStream;
import org.apache.pdfbox.pdmodel.font.PDSimpleFont;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.apache.pdfbox.util.PDFImageWriter;

public class PdfUtil {

	public static PDDocument getPDDocument(String filePath) throws IOException {
		InputStream is = new BufferedInputStream(new FileInputStream(filePath));
		PDFParser parser = new PDFParser(is);
		parser.parse();
		PDDocument pdDocument = parser.getPDDocument();
		System.out.println("pageNum:" + pdDocument.getNumberOfPages());
		return pdDocument;
	}
	
	
	
	public static List<PDPage> getPages(String filePath) throws IOException{
		return  getPDDocument(filePath).getDocumentCatalog().getAllPages();
	}
	
	public static List<PDPage> getPages(PDDocument doc) throws IOException{
		return doc.getDocumentCatalog().getAllPages();
	}
	
	  /**
     * pdf页转换成图片
     * @param page		
     * @param saveFileName
     * @throws IOException
     * 
     * 此段代码缓冲区刷新有问题
     * Iterator<ImageWriter> it = ImageIO.getImageWritersBySuffix(imgType);
     * ImageWriter writer = (ImageWriter) it.next(); 
     * writer.setOutput(imageout);
     * writer.write(new IIOImage(img_temp, null, null));
     * ImageOutputStream imageout = ImageIO.createImageOutputStream(new FileOutputStream(saveFileName));
     */
    public static void pdfPage2Img(PDDocument pdDocument,String passwd, int start, int end, String saveFileName,String imgType) throws IOException{
    	PDFImageWriter iw = new PDFImageWriter();
    	iw.writeImage(pdDocument, imgType, passwd, start,end, saveFileName); 
    }
    
  
    
	public static void createPDFFromText(PDDocument doc, Reader text)
			throws IOException {
		int fontSize = 10;
		PDSimpleFont font = PDType1Font.HELVETICA;
		
		try {
			int margin = 40;
			float height = font.getFontDescriptor().getFontBoundingBox()
					.getHeight() / 1000.0F;
			height = height * fontSize * 1.05F;
			BufferedReader data = new BufferedReader(text);
			String nextLine = null;
			PDPage page = new PDPage();
			PDPageContentStream contentStream = null;
			float y = -1.0F;
			float maxStringLength = page.getMediaBox().getWidth() - 80.0F;

			boolean textIsEmpty = true;

			while ((nextLine = data.readLine()) != null) {
				textIsEmpty = false;

				String[] lineWords = nextLine.trim().split(" ");
				int lineIndex = 0;
				while (lineIndex < lineWords.length) {
					StringBuffer nextLineToDraw = new StringBuffer();
					float lengthIfUsingNextWord = 0.0F;
					do {
						nextLineToDraw.append(lineWords[lineIndex]);
						nextLineToDraw.append(" ");
						lineIndex++;
						if (lineIndex < lineWords.length) {
							String lineWithNextWord = nextLineToDraw.toString()
									+ lineWords[lineIndex];
							System.out.println(lineWithNextWord);
							lengthIfUsingNextWord = font
									.getStringWidth(lineWithNextWord)
									/ 1000.0F
									* fontSize;
						}
					}

					while ((lineIndex < lineWords.length)
							&& (lengthIfUsingNextWord < maxStringLength));

					if (y < 40.0F) {
						page = new PDPage();
						doc.addPage(page);
						if (contentStream != null) {
							contentStream.endText();
							contentStream.close();
						}
						contentStream = new PDPageContentStream(doc, page);
						contentStream.setFont(font, fontSize);
						contentStream.beginText();
						y = page.getMediaBox().getHeight() - 40.0F + height;
						contentStream.moveTextPositionByAmount(40.0F, y);
					}

					if (contentStream == null) {
						throw new IOException(
								"Error:Expected non-null content stream.");
					}
					contentStream.moveTextPositionByAmount(0.0F, -height);
					y -= height;
					contentStream.drawString(nextLineToDraw.toString());
				}

			}

			if (textIsEmpty) {
				doc.addPage(page);
			}

			if (contentStream != null) {
				contentStream.endText();
				contentStream.close();
			}
		} catch (IOException io) {
			if (doc != null) {
				doc.close();
			}
			throw io;
		}
	}
    
    
    
	 public static void ConvertToSwf(String pdfPath, String swfPath, int page) throws IOException
     {
//             string exe = HttpContext.Current.Server.MapPath(EL_Config.Tools.Pdf2Swf.Url);
             Runtime  r = Runtime.getRuntime();
//             swfPath  = "Z:\\nginx-1.9.4\\html\\swf\\"+swfPath;

             StringBuilder sb = new StringBuilder();
             sb.append("D:\\Program Files (x86)\\SWFTools\\pdf2swf.exe");
             sb.append(" -o \"" + swfPath + "\"");//output
//             sb.append(" -I");
             sb.append(" -z ");
             sb.append(" -G -f -T 9 -t -s storeallcharacters ");//flash version|\
//             sb.append(" -s disablelinks");//禁止PDF里面的链接
             sb.append(" -p " + "1" + "-" + page);//page range
//             sb.append(" -j 100");//Set quality of embedded jpeg pictures to quality. 0 is worst (small), 100 is best (big). (default:85)
             sb.append(" \"" + pdfPath + "\"");//input

             
             Process p = r.exec(sb.toString());
             BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
             String line = null;
             while ((line = br.readLine()) != null) {
                 System.out.println(line);               
             }
     }
    
	 
	 
	 
	 public static void main(String[] args) throws FileNotFoundException, IOException, COSVisitorException {
		
		 Runtime  r = Runtime.getRuntime();
//       swfPath  = "Z:\\nginx-1.9.4\\html\\swf\\"+swfPath;

       StringBuilder sb = new StringBuilder();
       sb.append("D:\\Program Files (x86)\\OpenOffice 4\\program\\soffice.exe ");
       sb.append("-headless -accept=\"socket,host=127.0.0.1,port=8100;urp;\" -nofirststartwizard");

       
       Process p = r.exec(sb.toString());
	}
	
	
	

}
