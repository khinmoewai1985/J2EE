<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.* "%>
<%@ page import="com.org.example.MySQLAccess" %>
<%@ page import="com.org.example.Password" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
	String username=request.getParameter("nick_name");
	String password=request.getParameter("psw");
	String level=request.getParameter("level");
	System.out.print(username);
		
	Connection con;
	try {
		
			con=MySQLAccess.InitializeDatabase();
			String sql="insert into password (username,password,level) values(?,?,?)";
			PreparedStatement pre=con.prepareStatement(sql);
			pre.setString(1,username);
			pre.setString(2,password);
			pre.setString(3,level);			
			pre.executeUpdate();
			pre.close();
			con.close();
			
	}catch (SQLException e){
		e.printStackTrace();
	}	
response.sendRedirect("role.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddStaffController</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
 <%
 
  Connection conn=MySQLAccess.InitializeDatabase();
	
	try {
					
					
					PreparedStatement pre=conn.prepareStatement("Select * from password");
					ResultSet rs=pre.executeQuery();
					
  %>   
   <div class="wrapper">

      <nav id="sidebar">
        <div class="sidebar-header text-center">
          <h3>RTAD</h3>
        </div>

        <ul class="lisst-unstyled components">

          <p>Licence Main Menu</p>
          <li class="active">
            <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Entry</a>
            <ul class="collapse lisst-unstyled" id="homeSubmenu">

              <li class="nav-item">
                <a href="new.jsp">New Registration</a>
              </li>
              <li class="nav-item">
                <a href="renew.jsp">Renew</a>
              </li>
              <li class="nav-item">
            <a href="duplicate.jsp">Duplicate</a>
          </li>
          <li class="nav-item">
            <a href="transfer.jsp">Transfer</a>
          </li>
          <li class="nav-item">
            <a href="other changes.jsp">Other Changes</a>
          </li>          
          </ul>            
          </li>
          
           <li>
            <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Prohabit</a>
            <ul class="collapse lisst-unstyled" id="pageSubmenu">
              <li class="nav-item">
                <a href="#">Licence Prohabit</a>
              </li>
              <li class="nav-item">
                <a href="prohabit.jsp">NRC Prohabit</a>
            </li>              
            </ul>

          
             <hr style="light">
             <p>StaffList</p>
            <li>
            <a href="#staff_list" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Staff</a>
            <ul class="collapse lisst-unstyled" id="staff_list">
              <li class="nav-item">
                <a href="stafflist.jsp">Stafflist</a>
              </li>
              <li class="nav-item">
                <a href="addStaff.jsp">AddStaff</a>
              </li>                           
            </ul>
            </li>
            
            <li>
            <a href="#role" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Role</a>
            <ul class="collapse lisst-unstyled" id="role">
            
              <li class="nav-item">
                <a href="role.jsp">Role</a>
              </li>
              <li class="nav-item">
                <a href="addUsername.jsp">AddUsername</a>
            </li>                                                
            </ul>            
           </li> 
            
      	</ul>         
	</nav> 


      <div id="content">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">
            <button type="button" id="sidebarCollapse" class="btn btn-info">
                <i class="fas fa-align-left"></i>
                <span>Toggle Sidebar</span>
            </button>          
          </div>          
        </nav>
<br><br>

          <div class="card">
          <div class="card-header">
            <h2>Role Level</h2>           
          </div>
          
          <div class="card-body">        
           <table class="table table-dark table-hover table-bordered-bottom">       
            <thead>
            <tr>
              <th scope="col">No</th>
              <th scope="col">Username</th>
              <th scope="col">Password</th>
              <th scope="col">Level</th>
            </tr> 
            </thead>
          <tbody>
                       
<% while(rs.next())
{ %>
	 		<tr>
 				<td><%= rs.getString("no") %></td>
              	<td><%= rs.getString("username") %></td>
              	<td><%= rs.getString("password") %></td>
              	<td><%= rs.getString("level") %></td>       	
              	              	
             </tr>
<% } %>
          </tbody>
        </table>
          </div>
          
        </div>
      </div>           
         </div>     
     </div>   
<script>
  $(document).ready(function(){
    $('#sidebarCollapse').on('click',function(){
    $('#sidebar').toggleClass('active');
    });
  });
</script>
    
</body>
<%
conn.close();
	}catch ( SQLException e){
		e.printStackTrace();
	}
	
%>

</html>