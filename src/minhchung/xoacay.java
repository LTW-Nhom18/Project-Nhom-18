package minhchung;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import minhchung.kiemtramc.minhchung;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class xoacay
 */
@WebServlet("/xoacay")
public class xoacay extends HttpServlet {
	ArrayList<minhchung> A;
	int[] B;
	int[] C;
	int dem;
	String idmc;
	int id;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String link;
		link = request.getParameter("link");
		A= new ArrayList<minhchung>();
		idmc= request.getParameter("idmc");
		id= Integer.parseInt(idmc);

		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
		Connection connection = null;
		Statement statement = null;
		ResultSet result= null;
		
		if(id==1)
		{
			response.sendRedirect("ChinhSuaCayMC.jsp");
			return;
		}
		
		dem=1;

	

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

						 
				 A.add(mc);
				
			 }
			 System.out.println(link);
		
		C = new int[A.size()+1];
		B = new int[A.size()];
		B[0]=id;
		C[0]=id;
		for (int i=0;i>=0;i--)
		{
			int m = getchild(i,out);
			if(m==0)
				i=i+2;
			else
			{
				Duyet(B[i]);
			
			}
		}
		/*
		System.out.println("mang C: ");
		for (int i=0;i<C.length;i++)
		{
			System.out.print(C[i]);
		}	
		*/
		for (int i=0;i<C.length;i++)
		{
			if(C[i]==0)
			{
				response.sendRedirect("ChinhSuaCayMC.jsp");
				return;
			}
			else
			{
				String delete ="DELETE FROM mucmc WHERE IDmucmc='"+C[i]+"';";
				statement.executeUpdate(delete);
				String delete1 ="DELETE FROM phancong WHERE IDmucmc='"+C[i]+"';";
				statement.executeUpdate(delete1);
				System.out.print("Thanh cong: ");
				

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
		for (int i=0;i<A.size();i++)
		{
			if (A.get(i).root==B[u])
				if(!KTdanhdau(i))
				{
					t= A.get(i).id;
					
					B[u+1]=t;
					C[dem]=t;
					dem++;
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
		int mark=0;
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
