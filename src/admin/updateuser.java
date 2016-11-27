package admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class updateuser
 */
@WebServlet("/updateuser")
public class updateuser extends HttpServlet {
	
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
	        name = request.getParameter("Name");
	        gt = request.getParameter("gt");
	        dt = request.getParameter("Tel");
	        phong = request.getParameter("khoa");
	        chucvu = request.getParameter("chucvu");
	        nsinh =  request.getParameter("Date");
	       
	 
	        idrole = Integer.parseInt(request.getParameter("role"));
	        try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//
			Connection connection = null;
			Statement statement = null;
			PreparedStatement ps;
			ResultSet result= null;
			Boolean flag;
		

			
			try {
				connection = DriverManager.getConnection("jdbc:mysql://localhost/qlmc","root",""); 
				//connect to the database
				statement = (Statement) connection.createStatement();
				if (idrole==1)
				{
					role="Người nhập";
				}
				if (idrole==3)
				{
					role="Người quy định";
				}
				if (idrole==2)
				{
					role="Người giao";
				}
				if (idrole==4)
				{
					role="Người kiểm tra";
				}
				if (idrole==0)
					role="Admin";;
				

				 ps = (com.mysql.jdbc.PreparedStatement) connection.prepareStatement("update user set PASS=?,NAME=?,GTINH=?,TEL=?,KHOA=?,CHUCVU=?,ROLE=?,DATE=?,IDROLE=? where ID =?");
				  ps.setString(1, pass);
				    ps.setString(2,name);
				    ps.setString(3,gt);
				    ps.setString(4,dt);
				    ps.setString(5, phong);
				    ps.setString(6,chucvu);
				    ps.setString(7,role);
				    ps.setString(8,nsinh);
				    ps.setInt(9,idrole);
				    ps.setString(10,user);
				 ps.executeUpdate();
				 
				 response.sendRedirect("Admin.jsp");
			
				 
				 
				
				 
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        
	        
	}

}
