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

/**
 * Servlet implementation class suamucmc
 */
@WebServlet("/suamucmc")
public class suamucmc extends HttpServlet {
	

	String idmc,tenmc,mota,file,nguoitao,nguoinhap,namenguoinhap;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
		
		 idmc = request.getParameter("idmc");
		 tenmc = request.getParameter("namemc");
		 mota = request.getParameter("mota");
		 file = request.getParameter("file");
		 nguoitao = request.getParameter("nguoitao");
		 nguoinhap = request.getParameter("nguoinhap");
		 System.out.println(idmc+" | "+tenmc+" | "+mota);
		 System.out.println(file+" | "+nguoitao+" | "+nguoinhap);
	
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
		
				String query="update mucmc set TenMucmc='"+tenmc+"',Mota='"+mota+"',NguoiTao='"+nguoitao+"' where IDmucmc ='"+idmc+"';  ";
			//	statement.executeUpdate(query);
				System.out.println(query);
		
			if(!nguoinhap.isEmpty())
			{
				query = "SELECT * FROM user WHERE ID = '"+nguoinhap+"'";
				result = statement.executeQuery(query);			
				while (result.next()) {
			        namenguoinhap =result.getNString("NAME");
				}
				
				
				
				if(!file.isEmpty()&&!nguoinhap.isEmpty())
				query="update phancong set File='"+file+"',NguoiDuocGiao='"+namenguoinhap+"',IDnguoiduocgiao='"+nguoinhap+"' where IDmucmc ='"+idmc+"';  ";
				else
					if(!file.isEmpty()&&!nguoinhap.isEmpty())
						query="";
					else
						if(file.isEmpty())
							query="update phancong set NguoiDuocGiao='"+namenguoinhap+"',IDnguoiduocgiao='"+nguoinhap+"' where IDmucmc ='"+idmc+"';  ";
						else
							if (nguoinhap.isEmpty())
								query="update phancong set File='"+file+"' where IDmucmc ='"+idmc+"';  ";
				
			//	statement.executeUpdate(query);
				System.out.println(query);
			//	 response.sendRedirect("ChinhSuaCayMC.jsp");
			}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
