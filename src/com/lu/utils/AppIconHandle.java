package com.lu.utils;
/**
 * 如果反编译文件夹更改
 * 强行从apk压缩文件获取icon
 */
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import com.lu.java.AppInfo;

public class AppIconHandle {
	
	public static String appIconConfrim(AppInfo app) throws IOException{
		File file = new File(app.getAppIcon());
		if(file.exists()){
			return app.getAppIcon();
		}else{
			String[] list = app.getAppIcon().split("\\\\");
			ZipFile zipFile = new ZipFile(app.getApkFilePath());
            Enumeration<?> enumeration = zipFile.entries();
            ZipEntry zipEntry = null;
            while (enumeration.hasMoreElements()) {
                zipEntry = (ZipEntry) enumeration.nextElement();
                if (zipEntry.getName().contains(list[list.length-1])) {
                    int length = 0;
                    byte b[] = new byte [1024];
                    OutputStream outputStream = new FileOutputStream(
                            new File(app.getApkOutPath()+"icon.png"));
                    System.out.println("Icon changed!");
                    InputStream inputStream = zipFile.getInputStream(zipEntry); 
                    while (-1 != (length = inputStream.read(b))){
                       outputStream.write(b, 0, length);
                    }
                    outputStream.close();
                    break;
                }
            }
            return app.getApkOutPath()+"icon.png";
		}
		
	}
}
