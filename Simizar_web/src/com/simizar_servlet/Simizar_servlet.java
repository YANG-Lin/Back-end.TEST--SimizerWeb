package com.simizar_servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import com.simizar_servlet.*;
import com.simizar.dao.DB;




/**
 * Servlet implementation class Simizar_servlet
 */
@WebServlet("/Simizar_servlet")
public class Simizar_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest req,HttpServletResponse res)throws ServletException, IOException 
	{
        
		
		System.out.println("dfdfd");
		String type=req.getParameter("type");
		
		
		if(type.endsWith("useAdd"))
		{
			try {
				useAdd(req, res);
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}
		
		
	}
	
	
	public void useAdd(HttpServletRequest req,HttpServletResponse res) throws Exception, IOException
	{
		String id=String.valueOf(new Date().getTime());
		String Client_id=req.getParameter("client_id");
		String User_name=req.getParameter("user_name");
		String Application_type=req.getParameter("application_type");
		String User_data=req.getParameter("user_data");
		String Simizer_data=req.getParameter("simizer_data");
		
		
		
		StringBuilder sqlbuilder=new StringBuilder("INSERT INTO `users` (client_id,user_name,application_type,user_data,simizer_data)");
		sqlbuilder.append(" values(?,?,?,?,?)");
		
		
		
		Object[] params={id,Client_id,User_name,Application_type,User_data,Simizer_data};
		DB mydb=new DB();
		mydb.doPstm(sqlbuilder.toString(), params);
		mydb.closed();
		req.setAttribute("message", "sucess");
	    //res.getWriter().print("<script type='text/javascript'>alert('添加失败，工号已经存在！');</script>");
		//req.getRequestDispatcher("index.jsp").forward(req, res);  
	
		PrintWriter out = res.getWriter();
		out.print("<script>alert('success');</script>");
		//res.sendRedirect("index.jsp");
	}
}
	
