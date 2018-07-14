package com.lu.java;
/**
 * UI界面绘制
 * @author LU
 */
import java.awt.Color;
import java.awt.Font;
import java.awt.TextArea;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.List;

import javax.swing.BorderFactory;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import com.lu.utils.*;

public class InjectorUI extends JFrame {

	private JLabel titleLabel = new JLabel("Android恶意代码静态注入器");
	private JLabel pathTip = new JLabel("选择APK:");
	private JTextField appPathTF = new JTextField(30);
	private JButton scanFileBt = new JButton("浏览文件");
	private JButton startBt = new JButton("开始注入");
	public static TextArea informationTA = new TextArea();
	public static JLabel jlicon = new JLabel();
	public static ImageIcon icon;
	public static JLabel apkNameJL = new JLabel();
	public static JLabel apkLaucherJL = new JLabel();
	public static JLabel apkPackageJL = new JLabel();
	
	private JPanel jpTitle = new JPanel();
	private JPanel jpBody = new JPanel();
	private JPanel jpTip = new JPanel();
	private JPanel jpappInfo = new JPanel();
	
	private AppInfo app = new AppInfo();
	private ApkReverse appRe = new ApkReverse();
	private XMLAnalyze xmlAnalyze = new XMLAnalyze();
	public InjectorUI(){

		super("Android恶意代码静态注入器");
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.setBounds(300, 200, 1000, 650);
		titleLabel.setSize(100, 50);
		titleLabel.setFont(new java.awt.Font("Dialog", 1, 25));
		jpTitle.setBounds(-1,-1,1000,50);
		jpTitle.add(titleLabel);
		jpTitle.setBorder(BorderFactory.createLineBorder(Color.gray));
		
		jpappInfo.add(jlicon);
		jpappInfo.add(apkNameJL);
		jpappInfo.add(apkPackageJL);
		jpappInfo.add(apkLaucherJL);
		jpappInfo.setLayout(null);
		jpappInfo.setBounds(0,50,400,400);
		jpappInfo.setBorder(BorderFactory.createLineBorder(Color.gray));
		
		pathTip.setBounds(45, 10, 80, 30);
		appPathTF.setBounds(105, 10, 250, 30);
		scanFileBt.setBounds(160, 50, 100, 40);
		startBt.setBounds(160, 100, 100, 40);
		jpBody.setLayout(null);
		jpBody.add(pathTip);
		jpBody.add(appPathTF);
		jpBody.add(scanFileBt);
		jpBody.add(startBt);
		jpBody.setBounds(0, 450, 400, 150);
		jpBody.setBorder(BorderFactory.createLineBorder(Color.gray));
		
		jpTip.setLayout(null);
		informationTA.setFont(new Font("黑体",1,15));
		informationTA.setForeground(Color.DARK_GRAY);
		informationTA.setBounds(0, 0, 580, 550);
		jpTip.add(informationTA);
		jpTip.setBounds(400,50,600,550);
		jpTip.setBorder(BorderFactory.createLineBorder(Color.gray));
		
		this.add(jpTitle);
		this.add(jpBody);
		this.add(jpTip);
		this.add(jpappInfo);
		this.setLayout(null);
		this.setVisible(true);
		
		scanFileBt.addActionListener(new ActionListener(){

			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				List<String> list = FileWork.openFileWindows();
				if(list.isEmpty()){
				}else{
				app.setApkFilePath(list.get(0));
				app.setApkName(list.get(1));
				appRe.setApkPath(app.getApkFilePath());
				appPathTF.setText(app.getApkFilePath());
				}
			}
		});
		
		startBt.addActionListener(new ActionListener(){

			public void actionPerformed(ActionEvent arg0) {
				// TODO Auto-generated method stub
				informationTA.setText("");
				appRe.initOutPath();
				appRe.startRe();
				app.setApkAndroidManifestPath(appRe.getAndroidManifestPath());
				app.setApkFilePath(appRe.getApkPath());
				
				
				app.setApkOutPath(appRe.getApkOutFilePath());
				List<String> list = xmlAnalyze.findIconAndName(app.getApkFilePath());
				app.setAppName(list.get(0));
				app.setAppIcon(app.getApkOutPath()+"\\"+list.get(1).replace("/", "\\"));
				try {
					app.setAppIcon(AppIconHandle.appIconConfrim(app));
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					StringWriter sw = new StringWriter();  
			        e.printStackTrace(new PrintWriter(sw, true));
			        informationTA.setText(sw.toString()+"\n");
				}
				app = xmlAnalyze.xmlHandle(app);
				
				setappInfoJPanel(app);

				xmlAnalyze.xmlPermissionAdd(app);
				FileWork.fileChange(app.getActivityList().get(0), app.getApkOutPath());
				app.setApkOutPath(CmdWork.rePackCmd(app.getApkOutPath(), app.getAppName()));
				CmdWork.reSign(app.getApkOutPath(), app.getAppName());
				
			}
		});
	}

	public void setappInfoJPanel (AppInfo app){
		icon = new ImageIcon(app.getAppIcon());
		jlicon.setIcon(icon);
		jlicon.setBounds(0,10,icon.getIconWidth(), icon.getIconHeight());
		apkNameJL.setText("应用名称："+app.getAppName());
		apkNameJL.setBounds(0, 15+icon.getIconHeight(), 400, 20);
		apkNameJL.setFont(new Font("Dialog", 1, 17));
		apkPackageJL.setText("包名："+app.getAppPackage());
		apkPackageJL.setBounds(0, 40+icon.getIconHeight(), 400, 20);
		apkPackageJL.setFont(new Font("Dialog", 1, 17));
		apkLaucherJL.setText("入口点："+app.getActivityList().get(0));
		apkLaucherJL.setBounds(0, 65+icon.getIconHeight(), 400, 20);
		apkLaucherJL.setFont(new Font("Dialog", 1, 17));
	}
	
	public AppInfo getappInfo(){
		return this.app;
	}
	
	public static void main(String[] args){
		new InjectorUI();
	}
}
