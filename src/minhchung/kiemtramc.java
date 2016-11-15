package minhchung;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import minhchung.loadmc.minhchung;

import com.mysql.jdbc.Statement;


public class kiemtramc extends HttpServlet {
	ArrayList<minhchung> A; 		// Mảng lưu toàn bộ thông tin cây minh chứng
	int[] B;	//Mảng lưu các phần tử đang cần xét
	ArrayList<code> C;	//Mảng lưu code tạo cây
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String link;
		link = request.getParameter("link");
		A= new ArrayList<minhchung>();
		C = new ArrayList<code>();
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
			// System.out.println(link);
		for(int i=0;i<A.size();i++)
		{
			int n=0;
			int t= A.get(i).id;
			for(int j=0;j<A.size();j++)
			{
				if(A.get(j).root==t)
					n++;
			}
			A.get(i).numchild=n; 	//Đếm số con của mỗi mục
		}
		
		
		B = new int[A.size()];
		B[0]=1;	//Đưa gốc vào mảng
	//	out.println("<li id=\"1\">Minh chứng");
		code cmd = new code();
		cmd.id=1;
		cmd.cmd="<li id=\"1\">Minh chứng";
		C.add(cmd);
		 System.out.println("khoi tao C");
		for (int i=0;i>=0;i--)
		{
			System.out.println("i = "+i);
			int m = getchild(i,out);
			if(m==0)
				i=i+2; //Xét phần tử con của phần tử i
			else
			{
				Duyet(B[i]);
				if(m==2)
				{
					if (!link.contentEquals("chinhsua"))
					{
						 System.out.println("m=2");
					int u= getidA(B[i]);
					int r= getidA(A.get(u).root);
					 System.out.println("tim root");
					 System.out.println(A.get(u).mota);
						if (!A.get(u).mota.isEmpty())
						{
							 System.out.println("notempty");
							/*
							out.println("<ul style =\"color:#FF0000\">");
							out.println("<li>Tên: "+A.get(u).name+"</li>");
							out.println("<li>Mô tả: "+A.get(u).mota+" </li>");
							out.println("<li>File: "+A.get(u).loaifile+"</li> <a href=\"loadfile.do?idmc="+B[i]+"\">Xem minh chứng</a>");
							out.println("<li>Người nhập: "+A.get(u).nguoinhap+" </li>");
							out.println("</ul>");
							out.println("</li>");
							*/
							String s= "<ul style =\"color:#FF0000;\">"+
									"<li>Tên: "+A.get(u).name+"</li>"+
									"<li>Mô tả: "+A.get(u).mota+" </li>"+
									"<li>File: "+A.get(u).loaifile+"</li> <a href=\"loadfile.do?idmc="+B[i]+"\">Xem minh chứng</a>"+
									"<li>Người nhập: "+A.get(u).nguoinhap+" </li>"+
									"</ul>"+
									"</li>";
									
									cmd = new code();
									cmd.cmd=s;
									C.add(cmd);
					//		A.get(r).numcheck++;
						//	A.get(u).numcheck++;
							 System.out.println(A.get(u).id+"  "+A.get(u).numcheck);
						}
						else
						{
							 System.out.println("empty");
							/*
							out.println("<ul>");
							out.println("<li>Tên: "+A.get(u).name+"</li>");
							out.println("<li>Mô tả: "+A.get(u).mota+" </li>");
							out.println("<li>File: "+A.get(u).loaifile+"</li> <a href=\"loadfile.do?idmc="+B[i]+"\">Xem minh chứng</a>");
							out.println("<li>Người nhập: "+A.get(u).nguoinhap+" </li>");
							out.println("</ul>");
							out.println("</li>");
							 		*/
							String s= "<ul>"+
							"<li>Tên: "+A.get(u).name+"</li>"+
							"<li>Mô tả: "+A.get(u).mota+" </li>"+
							"<li>File: "+A.get(u).loaifile+"</li> <a href=\"loadfile.do?idmc="+B[i]+"\">Xem minh chứng</a>"+
							"<li>Người nhập: "+A.get(u).nguoinhap+" </li>"+
							"</ul>"+
							"</li>";
							
							cmd = new code();
							cmd.cmd=s;
							C.add(cmd);
							
						A.get(u).numcheck++;
						 System.out.println(A.get(u).id+"  "+A.get(r).numcheck);
						}
					}
					else
					{  
						
						cmd = new code();
						cmd.cmd="</li>";
						C.add(cmd);
					//	out.println("</li>");
					}
				}
				else
				{	
					System.out.println("m=1");
					cmd = new code();
					cmd.cmd="</ul></li>";
					C.add(cmd);
				//	out.println("</ul>");
				//	out.println("</li>");
				}
			}
		}
		System.out.println("hoan thanh");
		
			//Đếm số minh chứng đã hoàn thành cho từng mục minh chứng
		for(int k=0;k<A.size();k++)
		{
			for(int i=0;i<A.size();i++)
			{
				System.out.println("dem so minh chung da hoan thanh");
			
				int t= A.get(i).id;
				
				for(int j=0;j<A.size();j++)
				{
					System.out.println("so sanh: "+A.get(j).id+"  "+t+"  "+A.get(j).root);
					if(A.get(j).root==t)
						if(A.get(j).numchild==A.get(j).numcheck)
						{
							if(A.get(j).duyet!=1)
							{
							A.get(i).numcheck++;
							
							}
							A.get(j).duyet=1;
							System.out.println(A.get(j).id+"  "+A.get(i).id+"  "+A.get(i).numcheck+"  "+A.get(i).duyet);
						}
				}
				
			//	System.out.println(t+"  "+A.get(i).numcheck);
			}	
		}
			// kiểm tra các nhánh có đủ minh chứng và chuyển sang màu đỏ
			for (int i=0;i<A.size();i++)
			{
				System.out.println("kiem tra cac nhanh co du mc ko");
				if(A.get(i).numcheck==A.get(i).numchild)
				{
					int t = A.get(i).id;
				//	int r= getidA(A.get(i).root);
					String name = A.get(i).name;
					for (int j=0;j<C.size();j++)
					{
						if (C.get(j).id==t)
						{
						//	A.get(r).numcheck++;
							System.out.println("nhanh bi đoi: "+C.get(j).id);
							if (C.get(j).loai==1)
								C.get(j).cmd="<ul><li style=\"color:#FF0000\" id=\""+t+"\">"+name+"";
							else
								C.get(j).cmd="<li style=\"color:#FF0000\" id=\""+t+"\">"+name+"";
							
						}
							
					}
				}
			}
			
		
		System.out.println("In code");
		for (int j=0;j<C.size();j++){			
			out.println(C.get(j).cmd);
		    }
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	
	}
	//Lấy vị trí của id u trong mảng A
	public int getidA(int u)
	{
		for (int i=0;i<A.size();i++)	
			if(A.get(i).id==u)
				return i;
		return 0;
		
	}
	public int getchild(int u,PrintWriter out)
	{
		int t,flag=0; //flag=1 -> có từ 2 con trở lên
		String name;
		for (int i=0;i<A.size();i++)
		{
			if (A.get(i).root==B[u])	//Tìm con của mục đang xét
				if(!KTdanhdau(i))		//Kt xem mục đó duyet xong chưa
				{
					t= A.get(i).id;
					name= A.get(i).name;
					if (flag==0)
					{
					//	out.println("<ul>");
					//	out.println("<li id=\""+t+"\">"+name+"");
						code cmd= new code();
						cmd.id=t;
						cmd.cmd ="<ul><li id=\""+t+"\">"+name+"";
						cmd.loai=1;
						C.add(cmd);
					}						
					else
					{
						//out.println("<li id=\""+t+"\">"+name+"");
						code cmd= new code();
						cmd.id=t;
						cmd.cmd ="<li id=\""+t+"\">"+name+"";
						cmd.loai=2;
						C.add(cmd);
					}
					B[u+1]=t;
					return 0;
						
				}
				else 
					flag=1;			
		}
		if(flag==1)
			return 1; //thư muc cha đã duyet xong các con
		return 2; //nhánh trong cùng
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
		int numchild=0;
		int numcheck=0;
		int duyet=0;
	}
	public class code
	{
		int id;
		String cmd;
		int loai=0;
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
