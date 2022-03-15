<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.* "%>
<%@ page import="com.org.example.MySQLAccess" %>
<%@ page import="com.org.example.Staff" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
	String ID=request.getParameter("sid");	
	String အမည်=request.getParameter("name");
	String ရာထူး=request.getParameter("pos");
	String ဌာန=request.getParameter("dep");
	System.out.print(ID);
		
	Connection con;
	try {
		
			con=MySQLAccess.InitializeDatabase();
			String sql="insert into stafflist (ID,အမည်,ရာထူး,ဌာန) values(?,?,?,?)";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setString(1,ID);
			pre.setString(2,အမည်);
			pre.setString(3,ရာထူး);
			pre.setString(4,ဌာန);
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
<title>AddStaffController</title>
</head>
<body>
</body>
</html>