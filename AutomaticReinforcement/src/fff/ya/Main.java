package fff.ya;

import util.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;




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
	sign.apk
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
		
		//smali�滻
		log("ֲ���");
		FileTool.delAllInPath(apkout+File.separator+"smali");
		try {
			FileTool.copyDir(housingpath+File.separator+"smali", apkout+File.separator+"smali");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		//����AndroidManifest��ʱ���Ŀ�smali�е�Ŀ��application�����ȹ̶�����
		ChangeAM(apkout+File.separator+"AndroidManifest.xml");
		
		//���
		
		//ǩ��
		
		log("SuccessAll");
		
		
	}
	
	
	//�ı�AndroidManifest
	void ChangeAM(String AM)
	{
		
		
		
	}
	
	
	static void log(String a)
	{
		System.out.println(a);
	}

}
