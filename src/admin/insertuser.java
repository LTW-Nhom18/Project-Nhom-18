package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class insertuser
 */
@WebServlet("/insertuser")
public class insertuser extends HttpServlet {

	String user,pass,role,name,gt,dt,phong,chucvu;
	String nsinh;
	int idrole;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
	      
	        
	        user = request.getParameter("user");
	        pass = request.getParameter("pwd");
	        role = request.getParameter("role");
	        name = request.getParameter("Name");
	        gt = request.getParameter("gt");
	        dt = request.getParameter("Tel");
	        phong = request.getParameter("khoa");
	        chucvu = request.getParameter("chucvu");
	        nsinh =  request.getParameter("Date");
	       
	 
	        
	        try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//
			Connection connection = null;
			Statement statement = null;
			ResultSet result= null;
			Boolean flag;
		

			
			try {
				connection = DriverManager.getConnection("jdbc:mysql://localhost/qlmc","root",""); 
				//connect to the database
				statement = (Statement) connection.createStatement();
				if (request.getParameter("role").contentEquals("Người nhập"))
				{
					idrole = 1;
				}
				if (request.getParameter("role").contentEquals("Người quy định"))
				{
					idrole = 3;
				}
				if (request.getParameter("role").contentEquals("Người giao"))
				{
					idrole = 2;
				}
				if (request.getParameter("role").contentEquals("Người kiểm tra"))
				{
					idrole = 4;
				}
				else
					idrole = 0;
				String create_account = "INSERT INTO user(ID,PASS,NAME,GTINH,TEL,KHOA,CHUCVU,ROLE,DATE,IDROLE)"
						  + "VALUES ('"+user+"','"+pass+"','"+name+"','"+gt+"','"+dt+"','"+phong+"','"+chucvu+"','"+role+"','"+nsinh+"','"+idrole+"'); ";
				statement.executeUpdate(create_account);	
				System.out.print("Thanh cong: "+idrole);
				 response.sendRedirect("Admin.jsp");
				
			/*
				 
				 out.print("<html><body>");
				 out.print("<script> alert('INCORRECT ACCOUNT!!!'); </script>");
				 out.print("</body></html>");
				 response.sendRedirect("login.jsp");
				 */
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	        
	}

}
