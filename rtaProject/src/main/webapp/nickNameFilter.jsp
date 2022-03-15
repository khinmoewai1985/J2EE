<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.* "%>
<%@ page import="com.org.example.MySQLAccess" %>

<%

Connection con;

String urname=request.getParameter("urname");
System.out.println("Nick Name "+urname);

try	
{
	
	con=MySQLAccess.InitializeDatabase();
	PreparedStatement pre_readNickName=con.prepareStatement("Select username from password where username=?");
	pre_readNickName.setString(1, urname);
	
	ResultSet rs_readNickName=pre_readNickName.executeQuery();
	
	
	if(rs_readNickName.next())
		
	{
		out.println("ok");
	}
	
	rs_readNickName.close();
	pre_readNickName.close();
	con.close();
	
}	catch (Exception e) {
	
	e.printStackTrace();
}


%>
<!DOCTYPE html>
<html lang="en">
  <head> 
  </head>
  <body>
  </body>
  </html>