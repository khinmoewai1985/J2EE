<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.* "%>
<%@ page import="com.org.example.MySQLAccess" %>
<%@ page import="com.org.example.Staff" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
	String staff_id=request.getParameter("sid");
	Connection con;
	try {
		
			con=MySQLAccess.InitializeDatabase();
			PreparedStatement pre=con.prepareStatement("Delete from stafflist where ID=?");
			pre.setString(1,staff_id);
			pre.executeUpdate();
			pre.close();
			con.close();
	}catch (SQLException e){
		e.printStackTrace();
	}
	
	Connection conn;
	Staff staff;
	List<Staff> staff_list=new ArrayList<Staff>();		
	
	try {
		
		conn=MySQLAccess.InitializeDatabase();
		PreparedStatement pre=conn.prepareStatement("Select * from stafflist");
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
			conn.close();
	}catch (SQLException e)	{
		e.printStackTrace();
	}
request.getSession().setAttribute("Stafflist", staff_list);	
response.sendRedirect("stafflist.jsp");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>
</head>
<body>
Delete Page
</body>
</html>