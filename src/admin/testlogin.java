package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class login
 */

public class testlogin extends HttpServlet {
	
	String user;
    String pass;
    String role;
    String name;
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
	      
	        
	        user = request.getParameter("UserName");
	        pass = request.getParameter("Password");
	        
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
				String query = "SELECT * FROM user WHERE ID = '"+user+"' AND PASS = '"+pass+"' ";
				result = statement.executeQuery(query);		
				System.out.print("Thanh cong");
		
				 HttpSession session = request.getSession();
			
				   
				 while (result.next()) {
				        role = result.getString("IDROLE");
				        name =result.getString("NAME");
				      session.setAttribute("ten", name);
				 
				        if(role.contentEquals("0"))
				        {
				        	 response.sendRedirect("Admin.jsp");
				        	 return;
				        }
				        if(role.contentEquals("1"))
				        {
				        	response.sendRedirect("NguoiNhapMC.jsp");
				        	 return;
				        }
				        if(role.contentEquals("2"))
				        {
				        	response.sendRedirect("NguoiGiaoMC.jsp");
				        	 return;
				        }
				        if(role.contentEquals("3"))
				        {
				        	response.sendRedirect("NguoiQuyDinhMC.jsp");
				        	 return;
				        }
				        if(role.contentEquals("4"))
				        {
				        	response.sendRedirect("NguoiKiemTra.jsp");
				        	 return;
				        }
				        
				      
				       
				      }
				 
				 out.print("<html><body>");
				 out.print("<script> alert('INCORRECT ACCOUNT!!!'); </script>");
				 out.print("</body></html>");
				 response.sendRedirect("login.jsp");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	        
	        
	        
	     
	}

}
