package com.ifreeshare.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Pdf2Swf {
	
	
	
	 public static void ConvertToSwf(String pdfPath, String swfPath, int page) throws IOException
     {
//             string exe = HttpContext.Current.Server.MapPath(EL_Config.Tools.Pdf2Swf.Url);
             Runtime  r = Runtime.getRuntime();
//             swfPath  = "Z:\\nginx-1.9.4\\html\\swf\\"+swfPath;

             StringBuilder sb = new StringBuilder();
             sb.append("D:\\Program Files (x86)\\SWFTools\\pdf2swf.exe");
             sb.append(" -o \"" + swfPath + "\"");//output
             sb.append(" -f -T 9 -t -s storeallcharacters");
//             sb.append(" -s flashversion=9");//flash version
//             sb.append(" -s disablelinks");//禁止PDF里面的链接
//             sb.append(" -p " + "1" + "-" + page);//page range
//             sb.append(" -j 100");//Set quality of embedded jpeg pictures to quality. 0 is worst (small), 100 is best (big). (default:85)
             sb.append(" \"" + pdfPath + "\"");//input

//             System.Diagnostics.Process proc = new System.Diagnostics.Process();
//             proc.StartInfo.FileName = exe;
//             proc.StartInfo.Arguments = sb.ToString();
//             proc.StartInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
//             proc.Start();
//             proc.WaitForExit();
//             proc.Close();
             
             Process p = r.exec(sb.toString());
             BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
             String line = null;
             while ((line = br.readLine()) != null) {
                 System.out.println(line);               
             }
     }
	 
	 public static void main(String[] args) throws IOException {
		
//		 Pdf2Swf.ConvertToSwf("D:\\cheat.pdf", "D:\\cheat.swf", 0);
		 
		 Runtime  r = Runtime.getRuntime();
			r.exec("D:\\Program Files (x86)\\OpenOffice 4\\program\\office.exe -headless -accept=\"socket,host=127.0.0.1,port=8100;urp;\" -nofirststartwizard");
		
	}

}
