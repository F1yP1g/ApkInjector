package com.lu.java;
/**
 * apk文件信息
 * @author LU
 */
import java.util.ArrayList;
import java.util.List;

public class AppInfo {
	
	private String apkFilePath;
	private String apkReversePath;
	private String apkOutPath;
	private String apkAndroidManifestPath;
	private String apkName;
	private String appName;
	private String appIcon;
	private String appPackage;
	private List<String> permissionList = new ArrayList();
	private List<String> activityList = new ArrayList();
	
	public String getAppName() {
		return appName;
	}
	public void setAppName(String appName) {
		this.appName = appName;
	}
	public String getAppPackage() {
		return appPackage;
	}
	public void setAppPackage(String appPackage) {
		this.appPackage = appPackage;
	}
	public List<String> getPermissionList() {
		return permissionList;
	}
	public void setPermissionList(List<String> permissionList) {
		this.permissionList = permissionList;
	}
	public List<String> getActivityList() {
		return activityList;
	}
	public void setActivityList(List<String> activityList) {
		this.activityList = activityList;
	}

	public String getApkFilePath() {
		return apkFilePath;
	}
	public void setApkFilePath(String apkFilePath) {
		this.apkFilePath = apkFilePath;
	}
	public String getApkName() {
		return apkName;
	}
	public void setApkName(String apkName) {
		this.apkName = apkName;
	}
	public String getApkOutPath() {
		return apkReversePath;
	}
	public void setApkOutPath(String apkOutPath) {
		this.apkReversePath = apkOutPath;
	}
	public String getApkAndroidManifestPath() {
		return apkAndroidManifestPath;
	}
	public void setApkAndroidManifestPath(String apkAndroidManifestPath) {
		this.apkAndroidManifestPath = apkAndroidManifestPath;
	}
	public String getAppIcon() {
		return appIcon;
	}
	public void setAppIcon(String appIcon) {
		this.appIcon = appIcon;
	}
	public String getApkReversePath() {
		return apkReversePath;
	}
	public void setApkReversePath(String apkReversePath) {
		this.apkReversePath = apkReversePath;
	}
	
	
}
