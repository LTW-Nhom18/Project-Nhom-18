package minhchung;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;



import org.apache.commons.io.FilenameUtils;

import com.mysql.jdbc.Statement;


public class createMC extends HttpServlet {

	  String mota,loaifile,file,idmc,nguoinhap;
	  String file_name="";
	  	String location="";
	  	String ms="";
	  	String link="";
	
	  	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
		
	        
		  nguoinhap = request.getParameter("nguoinhap");
	        mota = request.getParameter("mota");
	        idmc = request.getParameter("idmc");
	        loaifile = request.getParameter("loaifile");
	        System.out.println(nguoinhap+" "+mota+" "+idmc+" "+loaifile);
	        
	        String root = getServletContext().getRealPath("/");
	   //     root.replace('\'','/');
	   //     System.out.println(root);
			Connection connection = null;
			Statement statement = null;
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			String d= dateFormat.format(date);
			
			
			try {
				List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
				System.out.println("items");
				for (FileItem item : items) {
					if (item.isFormField()) {
		               
		            	 String fieldName = item.getFieldName();
		                 String fieldValue = item.getString();
		                 if(item.getFieldName().equals("nguoinhap"))
		                 {
		                	 nguoinhap=item.getString();
		                //	 nguoinhap = new String(oldString.getBytes("UTF-8"), "UTF-8");
		                 }
		                 if(item.getFieldName().equals("mota"))
		                 {
		                	 mota=item.getString();
		                 }
		                 if(item.getFieldName().equals("loaifile"))
		                 {
		                	 loaifile=item.getString();
		                 }
		                 if(item.getFieldName().equals("idmc"))
		                 {
		                	 idmc=item.getString();
		                 }
		             
		             	System.out.println(nguoinhap+" "+mota+" "+idmc+" "+loaifile);
		            
		            } else {
		            	
		           
	                String fileName = FilenameUtils.getName(item.getName());
	                long sizeInBytes = item.getSize();
	                System.out.println(fileName);
	                if(item.getFieldName().equals("fx"))
	                 {
	                	 file_name=fileName;
	                 }
	                /*
	                if(sizeInBytes>maxSize)
	                {
	                	out.print("File vượt quá giới hạn quy định");
	                }
	                */
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost/qlmc","root",""); 
				 location=root+"minhchung/";
				 link="minhchung/"+file_name;
					System.out.println(link);
				//connect to the database
				statement = (Statement) connection.createStatement();
		
				String query = "update phancong set NgayNhap='"+d+"', TrangThai='Hoàn thành', File='"+loaifile+"', DuongDan='"+link+"' where IDmucmc ='"+idmc+"'; ";
				statement.executeUpdate(query);	
				System.out.println(query);
				query="update mucmc set Mota='"+mota+"' where IDmucmc ='"+idmc+"';  ";
				statement.executeUpdate(query);
				System.out.print(query);
				
				File savedFile = new File(location+file_name);
				item.write(savedFile);
				
				 response.sendRedirect("NguoiNhapMC.jsp");
				
		            }
				}
			} catch ( Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	}

}
