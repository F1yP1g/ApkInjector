package com.lu.java;
/**
 * 解析AndroidManifest.xml
 * 包名、权限、活动
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.lu.utils.*;

public class XMLAnalyze {
	
	
	/**
	 * 获取包名
	 * @param doc
	 * @return
	 */
	public String findPackage(Document doc){
		InjectorUI.informationTA.append("find package info...\n");
		Node node = doc.getFirstChild();
		NamedNodeMap attrs  =node.getAttributes();
		for(int i = 0; i < attrs.getLength(); i++){
			if(attrs.item(i).getNodeName() == "package"){
				return attrs.item(i).getNodeValue();
			}
		}
		return null;
	}
	
	/**
	 * 获取启动activity
	 * @param doc
	 * @return
	 */
	public String findLaucherActivity(Document doc){
		InjectorUI.informationTA.append("searching laucher activity...\n");
		Node activity = null;
		String sTem = "";
		NodeList categoryList = doc.getElementsByTagName("category");
		for(int i = 0; i < categoryList.getLength(); i++){
				Node category = categoryList.item(i);
				NamedNodeMap attrs  =category.getAttributes();
				for(int j = 0; j < attrs.getLength(); j++){
					if(attrs.item(j).getNodeName() == "android:name"){
						if(attrs.item(j).getNodeValue().equals("android.intent.category.LAUNCHER")){
							activity = category.getParentNode().getParentNode();
							break;
						}
					}
				}		
		}
		if(activity != null){
			NamedNodeMap attrs  =activity.getAttributes();
			for(int j = 0; j < attrs.getLength(); j++){
				if(attrs.item(j).getNodeName() == "android:name"){
					sTem = attrs.item(j).getNodeValue();
				}
			}
		}
		return sTem;
	}
	
	/**
	 * AndroidManifest处理入口
	 * @param app
	 * @return
	 */
	public AppInfo xmlHandle(AppInfo app){
		List<String> uses_permissionList = new ArrayList();
		List<String> activityList = new ArrayList();
		InjectorUI.informationTA.append("Analyzing AndroidManifest.xml...\n");
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		try {
			// 创建DocumentBuilder对象
			DocumentBuilder db = dbf.newDocumentBuilder();
			//加载xml文件
			Document document = db.parse(app.getApkAndroidManifestPath());
			InjectorUI.informationTA.append("searching uses-permission list...\n");
			NodeList permissionList = document.getElementsByTagName("uses-permission");
			NodeList activityAll = document.getElementsByTagName("activity");
			//获取权限列表
			for (int i = 0; i < permissionList.getLength(); i++) {
				Node permission = permissionList.item(i);
				uses_permissionList.add((permission.getAttributes()).item(0).getNodeValue());
			}
			
			//获取activity列表
			app.setAppPackage(findPackage(document));
			InjectorUI.informationTA.append("searching activity list...\n");
			for(int i = 0; i < activityAll.getLength(); i++){
				Node activity = activityAll.item(i);
				NamedNodeMap attrs  =activity.getAttributes();
				for(int j = 0; j < attrs.getLength(); j++){
					if(attrs.item(j).getNodeName() == "android:name"){
						String sTem = attrs.item(j).getNodeValue();
						if(sTem.startsWith(".")){
							sTem = app.getAppPackage()+sTem;
						}
						activityList.add(sTem);
					}
				}
			}
			
			String s = findLaucherActivity(document);
			if(s.startsWith(".")){
				s = app.getAppPackage()+s;
			}
			//移动入口类至首位
			activityList.remove(s);
			activityList.add(0, s);
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			StringWriter sw = new StringWriter();  
	        e.printStackTrace(new PrintWriter(sw, true));
	        InjectorUI.informationTA.setText(sw.toString()+"\n");
		} catch (SAXException e) {
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
		app.setActivityList(activityList);
		app.setPermissionList(uses_permissionList);
		return app;
	}
	
	/**
	 * 寻找应用名、图标
	 * @param path
	 * @return
	 */
	public List<String> findIconAndName(String path){
		return CmdWork.aaptCmd(path);
	}
	
	/**
	 * xml权限添加
	 * @param app
	 */
	public void xmlPermissionAdd(AppInfo app){
		List<String> permissionNeeded = new ArrayList();
		String s1,s2,s3,s4,s5,s6,s7,s8;
		s1 = "android.permission.READ_CONTACTS";
		s2 = "android.permission.INTERNET";
		s3 = "android.permission.READ_PHONE_STATE";
		s4 = "android.permission.RECEIVE_SMS";
		s5 = "android.permission.ACCESS_FINE_LOCATION";
		s6 = "android.permission.ACCESS_COARSE_LOCATION";
		s7 = "android.permission.READ_CALL_LOG";
		s8 = "android.permission.READ_SMS";
		if(!app.getPermissionList().contains(s1)){
			permissionNeeded.add("    <uses-permission android:name=\""+s1+"\"/>");
		}
		if(!app.getPermissionList().contains(s2)){
			permissionNeeded.add("    <uses-permission android:name=\""+s2+"\"/>");
		}
		if(!app.getPermissionList().contains(s3)){
			permissionNeeded.add("    <uses-permission android:name=\""+s3+"\"/>");
		}
		if(!app.getPermissionList().contains(s4)){
			permissionNeeded.add("    <uses-permission android:name=\""+s4+"\"/>");
		}
		if(!app.getPermissionList().contains(s5)){
			permissionNeeded.add("    <uses-permission android:name=\""+s5+"\"/>");
		}
		if(!app.getPermissionList().contains(s6)){
			permissionNeeded.add("    <uses-permission android:name=\""+s6+"\"/>");
		}
		if(!app.getPermissionList().contains(s7)){
			permissionNeeded.add("    <uses-permission android:name=\""+s7+"\"/>");
		}
		if(!app.getPermissionList().contains(s8)){
			permissionNeeded.add("    <uses-permission android:name=\""+s8+"\"/>");
		}
		if(!permissionNeeded.isEmpty()){
			InjectorUI.informationTA.append("Adding permissions in AndroidManifest.xml...\n");
			FileWork.fileChange(permissionNeeded, app.getApkOutPath(),app.getActivityList().get(0));
		}
	}
	

}
