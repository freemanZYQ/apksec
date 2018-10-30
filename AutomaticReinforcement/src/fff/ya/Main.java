package fff.ya;

import util.*;
import java.io.File;
import java.io.IOException;



import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;


import org.w3c.dom.Document;
import org.w3c.dom.Element;


/*
 * 
  ʹ��Ŀ¼�ṹ��
work/
	main.jar
	tool/
		apktool/
	housing/
		smali/
		lib/
	work/
		out/
	mubiao.apk
	unsign.apk
 * 
 */




public class Main {
	File directory = new File(System.getProperty("user.dir"));
	File housing=new File(directory, "housing");
	File work=new File(directory,"work");
	File tool=new File(directory, "tool");
	
	String directorypath=directory.getAbsolutePath();
	String housingpath=housing.getAbsolutePath();
	String workpath=work.getAbsolutePath();
	String toolpath=tool.getAbsolutePath();
	
	String sourceApk;
	String targetApk;
	String apkout;
	
	
	public static void main(String[] args) {
		
		if(args.length==0)
		{
			log("������Ҫ�����apk��");
			return;
			
		}
		Main mian=new Main();
		mian.run(args[0]);
		


	}
	
	void run(String args)
	{
		//ִ��apktool
		
		sourceApk=directorypath+File.separator+args;
		apkout=workpath+File.separator+"out";
		targetApk=directorypath+File.separator+"unsign.apk";
		
		String command=toolpath+File.separator+"apktool"+File.separator+"apktool.bat d -o " + apkout  +" "+sourceApk;
		log(command);
		
		try {
			Process p = Runtime.getRuntime().exec(command);
			int exit=p.waitFor();
			if(exit!=0)
			{
				log("ִ��apktoolʧ��"+exit+"�����Ѵ���out");
			}
		} catch (IOException | InterruptedException e) {
			
			e.printStackTrace();
		}
		
		
		//��ȡdex��assets
		ZipHelp apk=new ZipHelp(sourceApk);
		apk.extractFileformZip("classes.dex",apkout+File.separator+"assets"+File.separator+"classes.dex");
		
		//smali�滻��������linux�ű�ʵ��
		log("�滻smali");
		FileTool.delAllInPath(apkout+File.separator+"smali");
		try {
			FileTool.copyDir(housingpath+File.separator+"smali", apkout+File.separator+"smali");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		//����AndroidManifest����ʱ���Ŀ�smali�е�Ŀ��application�����ȹ̶�����
		ChangeAM(apkout+File.separator+"AndroidManifest.xml");
		log("AndroidManifest�޸����");
		
		
		
		//���
		command=toolpath+File.separator+"apktool"+File.separator+"apktool.bat b "+apkout+" -o"+targetApk;
		try {
			Process p = Runtime.getRuntime().exec(command);
			int exit=p.waitFor();
			if(exit!=0)
			{
				log("ִ��apktoolʧ��"+exit);
			}
		} catch (IOException | InterruptedException e) {
			
			e.printStackTrace();
		}
		log("������");
		
		//��ǩ��
		
		//����
		clearWork();
		log("�������");
		
		log("SuccessAll");
		
		
	}
	
	
	void clearWork() 
	{
		FileTool.delAllInPath(workpath);
	}
	
	//�ı�AndroidManifest
	void ChangeAM(String AM)
	{
		DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
        dbf.setIgnoringElementContentWhitespace(true);
        DocumentBuilder db;
		try {
			db = dbf.newDocumentBuilder();
			Document xmldoc=db.parse(AM);       
		    Element root = xmldoc.getDocumentElement();
		    Element per =(Element) XmlTool.selectSingleNode("/manifest/application", root);
		    per.setAttribute("android:name", "FFF.ya.Artifical");
		    
		    XmlTool.saveXml(xmldoc, AM);

		} catch (Exception  e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
      
		
	}
	
	
	static void log(String a)
	{
		System.out.println(a);
	}

}
