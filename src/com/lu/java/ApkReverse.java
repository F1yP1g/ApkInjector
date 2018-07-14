package com.lu.java;
/**
 * 反编译apk
 * @author LU
 */
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;

import com.lu.utils.CmdWork;

public class ApkReverse {

	private String apkPath;
	private String apkOutFilePath;
	private String androidManifestPath;
	
	public ApkReverse(){}
	
	
	/**
	 * 初始化反编译输出路径
	 */
	public void initOutPath(){
		String[] tem = this.apkPath.split("\\.");
		String[] tem2 = tem[0].split("\\\\");
		this.apkOutFilePath = "E:\\APPREData\\"+tem2[tem2.length-1]+"\\"+tem2[tem2.length-1]+"RE";
	}
	

	/**
	 * 反编译
	 */
	public void startRe(){
		   // initOutPath();
			BufferedReader br = null;  
			String cmd = "cmd /c apktool apktool d -f "+this.apkPath+" -o "+this.apkOutFilePath;
			CmdWork.reverseCmd(cmd,getApkOutFilePath());
			setAndroidManifestPath(this.apkOutFilePath+"\\AndroidManifest.xml");
	}
	
	public String getAndroidManifestPath() {
		return androidManifestPath;
	}

	public void setAndroidManifestPath(String androidManifestPath) {
		this.androidManifestPath = androidManifestPath;
	}
	
	public String getApkPath() {
		return apkPath;
	}


	public void setApkPath(String apkPath) {
		this.apkPath = apkPath;
	}


	public String getApkOutFilePath() {
		return apkOutFilePath;
	}


	public void setApkOutFilePath(String apkOutFilePath) {
		this.apkOutFilePath = apkOutFilePath;
	}


}
