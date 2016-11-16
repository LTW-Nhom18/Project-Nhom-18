package minhchung;

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

import com.mysql.jdbc.Statement;

public class giaomc extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	String idmc,namenguoinhap,idnguoinhap,deadline;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
	      
	        
	        idmc = request.getParameter("idmc");
	        idnguoinhap = request.getParameter("nguoinhap");
	        deadline = request.getParameter("ngayhoanthanh");

	        
	        
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

			try {
				connection = DriverManager.getConnection("jdbc:mysql://localhost/qlmc","root",""); 
				//connect to the database
				statement = (Statement) connection.createStatement();
				
				String query = "SELECT * FROM user WHERE ID = '"+idnguoinhap+"'";
				result = statement.executeQuery(query);			
				while (result.next()) {
			        namenguoinhap =result.getNString("NAME");
				}

				
				String create_mc = "INSERT INTO phancong(IDmucmc,NguoiDuocGiao,DuongDan,TrangThai,NgayHoanThanh,NgayNhap,IDnguoiduocgiao,File)"
						  + "VALUES ('"+idmc+"','"+namenguoinhap+"','','chưa hoàn thành','"+deadline+"','','"+idnguoinhap+"',''); ";
			       System.out.println(create_mc);
			//	statement.executeUpdate(create_mc);	
				
			//	 response.sendRedirect("NguoiGiaoMC.jsp");
				
			
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

}
