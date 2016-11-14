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
	String idmc,loaifile,duongdan;
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
			        loaifile = result.getString("File");
			        duongdan =result.getString("DuongDan");       
			 }
			
			 System.out.println(loaifile+" "+duongdan);
				 response.sendRedirect("loadfile.jsp?loai="+loaifile+"&path="+duongdan+"&root="+root);
			 /*
				request.setAttribute("loai",loaifile);
				request.setAttribute("path",duongdan);
	        	RequestDispatcher rd = request.getRequestDispatcher("loadfile.jsp");
	        	rd.forward(request,response);
	        */	
		
		
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
