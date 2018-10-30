package util;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;


public class ZipHelp {
	
	ZipFile zf;
	public ZipHelp(String name) {
		
		try {
			zf = new ZipFile(name);
		} catch (IOException e) {
			e.printStackTrace();
		} 
	}

	//��ȡzip�е��ļ������ļ�������ֱ�ӷ���
	public void extractFileformZip(String nameInzip,String target)
	{
	        log(nameInzip+" in "+ zf.getName() +" to "+target  );
	    	ZipEntry ls= zf.getEntry(nameInzip);
	     	File ou=new File(target);

			if(ou.exists())
			{
				return;
			}
		
			if(!ou.getParentFile().exists())
			{
				ou.getParentFile().mkdirs();
			}
			
		
		try {
			ou.createNewFile();
			InputStream is =zf.getInputStream(ls);
			FileOutputStream fos=new FileOutputStream(ou);
			
			
            byte[] buffer = new byte[1024];
            int byteCount=0;
            while((byteCount=is.read(buffer))!=-1) {//ѭ������������ȡ buffer�ֽ�
                fos.write(buffer, 0, byteCount);//����ȡ��������д�뵽�����
            }
            fos.flush();//ˢ�»�����
            is.close();
            fos.close();
			
		} catch (IOException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
		
		
		
		
	}
	
	void log(String a)
	{
		System.out.println(a);
	}
	
	
}
