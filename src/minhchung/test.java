package minhchung;

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
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;
/**
 * Servlet implementation class test
 */

public class test extends HttpServlet {

	ArrayList<minhchung> A;
	int[] B;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		A= new ArrayList<minhchung>();
		
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
		Connection connection = null;
		Statement statement = null;
		ResultSet result= null;
		
	
		
		
		System.out.println("khoi tao");
	

		try{
		
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/qlmc","root","");
			statement = (Statement) connection.createStatement();
			String query = "SELECT * FROM mucmc LEFT JOIN phancong on mucmc.IDmucmc=phancong.IDmucmc;";
			result = statement.executeQuery(query);	
			System.out.println("thanh cong");

			 while (result.next()) {
				 
					minhchung mc = new minhchung();				 
				 mc.root =result.getInt("IDRoot");
				 mc.id = result.getInt("IDmucmc");
				 mc.name = result.getString("TenMucmc");
				 mc.mota = result.getString("Mota");
				 mc.nguoinhap = result.getString("NguoiDuocGiao");
				 mc.loaifile = result.getString("File");
						 
				 A.add(mc);
				
			 }
			 System.out.println(A.size());
			
		 /*	 
		for (minhchung v : A){
		
				 out.println("<p>"+v.id+"</p>");
				 out.println("<p>"+v.nguoinhap+"</p>");
				 out.println("<p>"+v.loaifile+"</p>");
				 out.println("<p>"+v.mark+"</p>");
				 out.println("<br>");
			    }
			
			 
			 
			 for(int i = 0; i < arr.size(); i++) {   
			//	 System.out.println("In");
				    out.println(arr.get(i).name);
				} 
			*/		
		
		B = new int[A.size()];
		B[0]=1;
		out.println("<li id=\"1\">Minh chứng");
//		out.println("<ul>");
		for (int i=0;i>=0;i--)
		{
			int m = getchild(i,out);
			if(m==0)
				i=i+2;
			else
			{
				Duyet(B[i]);
				if(m==2)
				{
					int u= getidA(B[i]);
					out.println("<ul>");
					out.println("<li>Tên: "+A.get(u).name+"</li>");
					out.println("<li>Mô tả: "+A.get(u).mota+" </li>");
					out.println("<li>File: "+A.get(u).loaifile+"</li> <a href=\"loadfile.do?idmc="+B[i]+"\">  Xem</a>");
					out.println("<li>Người nhập: "+A.get(u).nguoinhap+" </li>");
					out.println("</ul>");
					out.println("</li>");
				}
				else
				{
					out.println("</ul>");
					out.println("</li>");
				}
			}
		}
	
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	public int getidA(int u)
	{
		for (int i=0;i<A.size();i++)	
			if(A.get(i).id==u)
				return i;
		return 0;
		
	}
	public int getchild(int u,PrintWriter out)
	{
		int t,flag=0;
		String name;
		for (int i=0;i<A.size();i++)
		{
			if (A.get(i).root==B[u])
				if(!KTdanhdau(i))
				{
					t= A.get(i).id;
					name= A.get(i).name;
					if (flag==0)
					{
						out.println("<ul>");
						out.println("<li id=\""+t+"\">"+name+"");
						
					}						
					else
					{
						out.println("<li id=\""+t+"\">"+name+"");
					}
					B[u+1]=t;
					return 0;
						
				}
				else 
					flag=1;			
		}
		if(flag==1)
			return 1;
		return 2;
	}
	public boolean KTdanhdau(int u)
	{
		if(A.get(u).mark==1)
			return true;
		return false;
	}
	public void Duyet(int u)
	{
		for (int i=0;i<A.size();i++)
		{
			if(A.get(i).id==u)
				A.get(i).mark=1;
		}
	}
	public class minhchung
	{
		int id=0;
		int root=0;
		String name="";
		String mota="";
		String nguoinhap="";
		String loaifile="";
		int mark=0;
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
