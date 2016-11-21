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

@WebServlet("/search2")
public class search2 extends HttpServlet {
	
	String namemc,mota,nguoitao,nguoinhap;
	String[] s;
	int i;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
	      
		 System.out.println("thanh cong 1");
		 s=new String[5];
		 s[0]="";
		 i=0;
	        namemc = request.getParameter("tenmc");
	        mota = request.getParameter("mota");
	       nguoitao = request.getParameter("nguoitao");
	       nguoinhap = request.getParameter("nguoinhap");
	       if(!namemc.isEmpty())
	       {
	    	   s[i]=" TenMucmc like '%"+namemc+"%'";
	    	   i++;
	       }
	       if(!mota.isEmpty())
	       {
	    	   s[i]=" Mota like '%"+mota+"%'";
	    	   i++;
	       }
	       if(!nguoitao.isEmpty())
	       {
	    	   s[i]=" NguoiTao like '%"+nguoitao+"%'";
	    	   i++;
	       }
	       if(!nguoinhap.isEmpty())
	       {
	    	   s[i]=" NguoiDuocGiao like '%"+nguoinhap+"%'";
	    	   i++;
	       }
	       System.out.println(i);
	       System.out.println(s[0]);
	    
	    //   System.out.println(namemc+"  "+mota+"   "+nguoitao+"  "+nguoinhap);
	      
	        try {
				Class.forName("com.mysql.jdbc.Driver");
				 System.out.println("thanh cong 3");
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
		
		     System.out.println("thanh cong 4");
			
			try {
				 System.out.println("thanh cong 5");
				connection = DriverManager.getConnection("jdbc:mysql://localhost/qlmc","root",""); 
				//connect to the database
				statement = (Statement) connection.createStatement();
				String query ="SELECT * FROM mucmc inner join phancong on mucmc.IDmucmc=phancong.IDmucmc where";
				 System.out.println("thanh cong 6");
				 String query2="";
				 System.out.println("thanh cong 7");
				if(i==0)
				 query2 = " TenMucmc = '###';";
				else
					if(i==1)
						query2 = query2+s[0];
					else
						for (int j=0;j<i;j++)
						{
							if(j!=i-1)
							query2 = query2 +s[j] +" and ";
							else
								query2 = query2 +s[j] +";";
						}
			query = query +query2;
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
	
		            RequestDispatcher view = request.getRequestDispatcher("Timkiem2.jsp");
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
