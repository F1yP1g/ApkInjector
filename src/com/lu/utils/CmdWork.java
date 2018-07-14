package com.lu.utils;
/**
 * 反编译
 * 接收cmd窗口信息
 */
import java.awt.Font;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import javax.swing.ImageIcon;

import com.lu.java.ApkReverse;
import com.lu.java.AppInfo;
import com.lu.java.InjectorUI;


public class CmdWork {
	
	/**
	 * 寻找应用名，图标
	 * @param path apkfilepath
	 * @return
	 */
	public static List<String> aaptCmd(String path){
		List<String> listTem = new ArrayList();
		String cmd = "cmd /c aapt d badging "+path;
		BufferedReader br = null;
		try {
			Process p = Runtime.getRuntime().exec(cmd);
			br = new BufferedReader(new InputStreamReader(p.getInputStream(),"utf8"));  
			String line = null;
			StringBuilder sb = new StringBuilder();  
			InjectorUI.informationTA.append("Searching app name and icon..."+"\n");
			while ((line = br.readLine()) != null) {
				if(line.startsWith("application-label:")){
					listTem.add(getValue(line));
					InjectorUI.informationTA.append("appName:"+getValue(line)+"\n");
				}else if(line.startsWith("application-icon")){
					listTem.add(getValue(line));
				}
			}
			InjectorUI.informationTA.append("appIcon:"+listTem.get(1)+"\n");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			StringWriter sw = new StringWriter();  
	        e.printStackTrace(new PrintWriter(sw, true));
	        InjectorUI.informationTA.append(sw.toString()+"\n");
		}
		finally{
			if (br != null){  
				try {  
					br.close();  
				} catch (Exception e) {  
					e.printStackTrace();  
					StringWriter sw = new StringWriter();  
			        e.printStackTrace(new PrintWriter(sw, true));
			        InjectorUI.informationTA.append(sw.toString()+"\n");
				}
			}
		}
		return listTem;
	}
	/**
	 * 切割字符串
	 * @param s
	 * @return
	 */
	private static String getValue(String s){
		int index = s.indexOf("'")+1;
		return s.substring(index, s.lastIndexOf("'"));
	}
	
	/**
	 * 反编译apk文件
	 * @param cmd
	 * @param out
	 */
	public static void reverseCmd(String cmd, String out){
		BufferedReader br = null;
		try {
			Process p = Runtime.getRuntime().exec(cmd);
			InjectorUI.informationTA.append("Starting reverse...\n");
			br = new BufferedReader(new InputStreamReader(p.getInputStream()));  
			String line = null;
			while ((line = br.readLine()) != null){
				InjectorUI.informationTA.append(line+"\n");
			}
			InjectorUI.informationTA.append("Reverse done,file in:\n"+out+"\n");
		}catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			StringWriter sw = new StringWriter();  
	        e.printStackTrace(new PrintWriter(sw, true));
	        InjectorUI.informationTA.append(sw.toString()+"\n");
		}
		finally  {
			if (br != null){  
             try {  
                 br.close();  
             } catch (Exception e) {  
                 e.printStackTrace();
                 StringWriter sw = new StringWriter();  
     	        e.printStackTrace(new PrintWriter(sw, true));
     	        InjectorUI.informationTA.setText(sw.toString()+"\n");
             	}
			}
		}
	}
	
	/**
	 * 重打包
	 * @param path apkReversepath
	 * @param name appname
	 */
	public static String rePackCmd(String path,String name){
		String apkoutpath = path.substring(0, path.lastIndexOf("\\")+1)+"noSign.apk";
		String cmd = "cmd /c  apktool b "+path+" -o "+apkoutpath;
		BufferedReader br = null;
		try {
			InjectorUI.informationTA.append("Repacking to apk...\n");
			Process p = Runtime.getRuntime().exec(cmd);
			br = new BufferedReader(new InputStreamReader(p.getInputStream()));  
			String line = null;
			while ((line = br.readLine()) != null){
				InjectorUI.informationTA.append(line+"\n");
			}
			InjectorUI.informationTA.append("Repack successfully, file in:\n"+path.substring(0, path.lastIndexOf("\\")+1)+"noSign.apk\n");
		}catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			StringWriter sw = new StringWriter();  
	        e.printStackTrace(new PrintWriter(sw, true));
	        InjectorUI.informationTA.setText(sw.toString()+"\n");
		}
		finally  {
			if (br != null){  
             try {  
                 br.close();  
             } catch (Exception e) {  
                 e.printStackTrace();
                 StringWriter sw = new StringWriter();  
     	         e.printStackTrace(new PrintWriter(sw, true));
     	         InjectorUI.informationTA.setText(sw.toString()+"\n");
             	}
			}
		}
		return apkoutpath;
	}
	
	/**
	 * 重签名
	 * @param apkoutpath
	 * @param name
	 */
	public static void reSign(String apkoutpath, String name ){
		String cmd = 
				"cmd /k start jarsigner -verbose -keystore keylu.keystore -signedjar "+apkoutpath.subSequence(0, apkoutpath.lastIndexOf("\\")+1)+"Sign.apk "+apkoutpath+" keylu.keystore";
		try {
			Runtime.getRuntime().exec(cmd);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
