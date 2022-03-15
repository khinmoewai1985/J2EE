package com.org.example;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		List<Staff> stafflist=new ArrayList<Staff>();
		String uname=request.getParameter("uname");
		String psw=request.getParameter("psw");
				
		boolean login=login(uname,psw);
				
		if(login==true) {
			
			stafflist=getData();
			request.getSession().setAttribute("Stafflist", stafflist);		
			response.sendRedirect("new.jsp");		
			
		}	
		else {
			request.getSession().setAttribute("login_error", "Invalid Username and Password!");
			response.sendRedirect("home.jsp");
		}
			
	}	
	
	
	public List<Staff> getData() {
		
		Connection con;
		Staff staff;
		List<Staff> staff_list=new ArrayList<Staff>();		
		
		try {
			
			con=MySQLAccess.InitializeDatabase();
			PreparedStatement pre=con.prepareStatement("Select * from stafflist");
			ResultSet rs=pre.executeQuery();
			
			while(rs.next()) {
			staff= new Staff();	
				
				staff.setစဉ်(rs.getString("စဉ်"));
				staff.setID(rs.getString("ID"));
				staff.setအမည်(rs.getString("အမည်"));
				staff.setရာထူး(rs.getString("ရာထူး"));
				staff.setဌာန(rs.getString("ဌာန"));
				staff_list.add(staff);					
			}
				rs.close();
				pre.close();
				con.close();
				
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return staff_list;	
		
	}
	
	public boolean login(String uname,String psw) {
		
		Connection con;
		boolean flag=false;
		
		try {
			
			con=MySQLAccess.InitializeDatabase();
			PreparedStatement pre=con.prepareStatement("Select * from password where username=? and password=?");
			pre.setString(1, uname);
			pre.setString(2, psw);
			ResultSet rs=pre.executeQuery();
			
			if(rs.next())
				flag=true;	
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return flag;
		
	}	
	
}


