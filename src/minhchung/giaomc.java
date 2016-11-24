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

import minhchung.loadmc.minhchung;

import com.mysql.jdbc.Statement;

public class giaomc extends HttpServlet {

	ArrayList<minhchung> A;
	int[] B;	//Lưu các phần tử đang duyệt
	int[] C;	//Lưu các minh chứng con sẽ giao
	int[] D;	//Lưu các minh chứng đã được giao
	int dem;	//biến đếm cho C
	int dem2;	//biến đếm cho D
	String idmc,namenguoinhap,idnguoinhap,deadline;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.setProperty("file.encoding","UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		 PrintWriter out = response.getWriter();
	
			A= new ArrayList<minhchung>();
	      
	        idmc = request.getParameter("idmc");
	        idnguoinhap = request.getParameter("nguoinhap");
	        deadline = request.getParameter("ngayhoanthanh");
	        int id = Integer.parseInt(idmc);
	        System.out.println("idmc: "+idmc);
	        
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
		
				String query = "SELECT * FROM mucmc LEFT JOIN phancong on mucmc.IDmucmc=phancong.IDmucmc;";
				result = statement.executeQuery(query);	
				System.out.println("thanh cong 4");

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
		
			dem=0;dem2=0;
			B = new int[A.size()]; 	//Lưu các phần tử đang duyệt
			C= new int[A.size()];	//Lưu các minh chứng con sẽ giao
			D= new int[A.size()];	//Lưu các minh chứng đã được giao
			
			 result= null;
			query = "SELECT * FROM phancong";
			result = statement.executeQuery(query);	

			 while (result.next()) {
				 			 
				 D[dem2] =result.getInt("IDmucmc");
				 dem2++;
				
			 }
			B[0]=id;	//Xét gốc là minh chứng được giao
			System.out.println("id: "+id);
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
						if (KTphancong(B[i]))
						{
							System.out.println(A.get(u).mota);
							C[dem]=B[i];
							dem++;
						}						
						
					}
					
				}
				
			}
				
			
				result= null;
				query = "SELECT * FROM user WHERE ID = '"+idnguoinhap+"'";
				result = statement.executeQuery(query);			
				while (result.next()) {
			        namenguoinhap =result.getNString("NAME");
				}

				for (int i=0;i<C.length;i++)
				{
					if(C[i]!=0)
					{
				String create_mc = "INSERT INTO phancong(IDmucmc,NguoiDuocGiao,DuongDan,TrangThai,NgayHoanThanh,NgayNhap,IDnguoiduocgiao,File)"
						  + "VALUES ('"+C[i]+"','"+namenguoinhap+"','','chưa hoàn thành','"+deadline+"',NULL,'"+idnguoinhap+"',''); ";
				statement.executeUpdate(create_mc);	
				System.out.println(create_mc);
					}
				}
			//	
				
				 response.sendRedirect("NguoiGiaoMC.jsp");
				
			
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	public boolean KTphancong(int u)
	{
		for (int i=0;i<D.length;i++)
		{
			if (D[i]==u)
				return false;
		}
		return true;
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
					//	out.println("<ul>");
					//	out.println("<li id=\""+t+"\" value=\""+name+"\">"+name+"");
						
					}						
					else
					{
					//	out.println("<li id=\""+t+"\" value=\""+name+"\">"+name+"");
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
}