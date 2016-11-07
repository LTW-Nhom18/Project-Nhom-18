package search;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class search1
 */
@WebServlet("/search1")
public class search1 extends HttpServlet {
	
	String key,text,link;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
	      
	        
	        key = request.getParameter("key");
	        text = request.getParameter("content");
	       link = request.getParameter("link");
	        
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
		     ArrayList a1 = null;
		     ArrayList a2 = new ArrayList();
		

			
			try {
				connection = DriverManager.getConnection("jdbc:mysql://localhost/qlmc","root",""); 
				//connect to the database
				statement = (Statement) connection.createStatement();
				
			
				String query ="SELECT * FROM mucmc inner join phancong on mucmc.IDmucmc=phancong.IDmucmc where "+key+" like '%"+text+"%';";
				result = statement.executeQuery(query);		
				 System.out.println("query " + query);
				 while (result.next()) {
					 a1 = new ArrayList();
		                a1.add(result.getString("IDmucmc"));
		                a1.add(result.getString("TenMucmc"));
		                a1.add(result.getString("TrangThai"));
		                a2.add(a1);
		            }
				 request.setAttribute("list", a2);
				System.out.print("Thanh cong: " +link);
		            RequestDispatcher view = request.getRequestDispatcher(link);
		            view.forward(request, response);
				
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
