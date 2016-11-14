package minhchung;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;


public class loadfile extends HttpServlet {
	String idmc,loaifile="",duongdan="";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
		 String root = getServletContext().getRealPath("/");
		 idmc = request.getParameter("idmc");
		 System.out.println(idmc);
		 Connection connection = null;
			Statement statement = null;
			ResultSet result= null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/qlmc","root",""); 
			//connect to the database
			statement = (Statement) connection.createStatement();
			String query = "SELECT * FROM phancong WHERE IDmucmc ='"+idmc+"'; ";
			result = statement.executeQuery(query);		
			System.out.print("Thanh cong");
	
			 HttpSession session = request.getSession();
		
			   
			 while (result.next()) {
				 if(!result.getString("File").isEmpty())
				 {
			        loaifile = result.getString("File");
			        duongdan =result.getString("DuongDan");  
				 }
			        System.out.println(loaifile+" "+duongdan);
			 }
			
			 System.out.println(loaifile+" "+duongdan);
		//		 response.sendRedirect("loadfile.jsp?loai="+loaifile+"&path="+duongdan+"&root="+root);
			 /*
				request.setAttribute("loai",loaifile);
				request.setAttribute("path",duongdan);
	        	RequestDispatcher rd = request.getRequestDispatcher("loadfile.jsp");
	        	rd.forward(request,response);
	        */	
			
			out.println("<html><body>");
			 if(duongdan==null || duongdan=="")
			 {
				 out.println("<h2>Chưa nhập minh chứng!</h2>");
				 out.println("</body></html>");
				 return;
			 }
			if(loaifile.contentEquals("Image"))
			{
			//	out.println("<image src="<%=request.getContextPath() %>/${a}" />");
				String s= "<image src=\""+request.getContextPath()+"/"+duongdan+"\" />";
				out.println(s);
				System.out.println(s);
				
			}
			else
				if(loaifile.contentEquals("Video"))
				{
					String src ="src=\""+request.getContextPath()+"/"+duongdan+"\"";
					String s= "<video class =\"video-js vjs-default-skin\" controls preload=\"none\" width=\"640\" height=\"264\""+src+" type='video/mp4'></video>";
					out.println(s);
					System.out.println(s);
					
				}
				else
				{
					 String filename = duongdan;
	     		  	filename= filename.substring(10);
	     		  
						  String filepath = root+"\\minhchung\\";   
							System.out.print("path "+filepath+filename);
						  response.setContentType("APPLICATION/OCTET-STREAM");   
						  response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
						  
						  java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
						            
						  int i;   
						  while ((i=fileInputStream.read()) != -1) {  
						    out.write(i);   
						  }   
						  fileInputStream.close(); 
				
				}
			out.println("</body></html>");
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
