package minhchung;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import minhchung.giaomc.minhchung;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class taocay
 */
@WebServlet("/taocay")
public class taocay extends HttpServlet {
	
	String idmc="",tenmc="",nguoigiao="";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
		 HttpSession session = request.getSession();
		 idmc = request.getParameter("idmc");
		 tenmc = request.getParameter("tenmc");
		 System.out.println("ten minh chung: "+request.getParameter("tenmc"));
		 nguoigiao = (String) session.getAttribute("ten");
		// out.print(idmc);
		 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
			Date date = new Date();
			String d= dateFormat.format(date);
		if(idmc.contentEquals("undefined"))
		{
			 response.sendRedirect("ChinhSuaCayMC.jsp");
			 return;
		}
		
			
			
			
		  try {
				Class.forName("com.mysql.jdbc.Driver");
				  System.out.println("thanh cong 2");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			//
			Connection connection = null;
			Statement statement = null;
			ResultSet result= null;
			try {
				  System.out.println("thanh cong 3");
				//Tim minh chung con
				connection = DriverManager.getConnection("jdbc:mysql://localhost/qlmc","root","");
				statement = (Statement) connection.createStatement();
		
				
			
				
				int max=0;
				String query ="select IDmucmc from mucmc order by IDmucmc desc limit 1;";
				result = statement.executeQuery(query);
				 while (result.next()) {
					 max=result.getInt("IDmucmc");
				 }
				 max= max+1;
				 System.out.println("muc minh chung max: "+max);
				 String create_mc = "INSERT INTO mucmc(IDmucmc,TenMucmc,Mota,NguoiTao,NgayTao,IDRoot,id)"
						  + "VALUES ('"+max+"','"+tenmc+"','mô tả','"+nguoigiao+"','"+d+"','"+idmc+"','"+max+"'); ";
				statement.executeUpdate(create_mc);	
				System.out.println("thanh cong 4");
			
				 response.sendRedirect("ChinhSuaCayMC.jsp");
				
			
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
