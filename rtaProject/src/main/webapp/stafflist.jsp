<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.* "%>
<%@ page import="com.org.example.MySQLAccess" %>
<%@ page import="com.org.example.Staff" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Staff</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <link href="css/staff.css" rel="stylesheet">
   </head>
  <body>  
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
    


<%
List<Staff> staff_list=new ArrayList<Staff>();
staff_list=(ArrayList<Staff>)request.getSession().getAttribute("Stafflist");
%>

      <div class="jumbotron">
      
        <div class="card" action="controller" method="post">
        
          <div class="card-header">
            <h2>ဝန်ထမ်းစာရင်း</h2>           
          </div>
          
          <div class="card-body">        
           <table class="table table-dark table-hover table-bordered-bottom">       
            <thead>
            <tr>
              <th scope="col">စဉ်</th>
              <th scope="col">ID</th>
              <th scope="col">အမည်</th>
              <th scope="col">ရာထူး</th>
              <th scope="col">ဌာန</th>
              <th class="text-right">လုပ်ပိုင်ခွင့်</th>
            </tr> 
            </thead>
          <tbody>
 
 <% for(Staff rs:staff_list)
 { %>	
 			<tr>
 				<td><%= rs.getစဉ်() %></td>
 				<td><%= rs.getID() %></td>
 				<td><%= rs.getအမည်() %></td>
 				<td><%= rs.getရာထူး() %></td>
 				<td><%= rs.getဌာန() %></td>
 				
  				<td class="actions">  					
  					<form action="detail.jsp">
  					  	<input type="hidden" name="sid" value="<%= rs.getID() %>">				
  						<button type="submit" class="btn btn-link">Detail</button>
   					</form>
   					
   					<form action="edit.jsp">
   						<input type="hidden" name="no" value="<%= rs.getစဉ်() %>">
   						<input type="hidden" name="sid" value="<%= rs.getID() %>">
   						<input type="hidden" name="name" value="<%= rs.getအမည်() %>">
   						<input type="hidden" name="pos" value="<%= rs.getရာထူး() %>">
   						<input type="hidden" name="dep" value="<%= rs.getဌာန() %>">
  						<button type="submit" class="btn btn-link">Edit</button>
   					</form>
   					
   					<form action="delete.jsp">
   						<input type="hidden" name="sid" value="<%= rs.getID() %>">
  						<button type="submit" class="btn btn-link">Delete</button>
   					</form>
   				</td>
   			</tr>
   	<%} %>
   	
          </tbody>
        </table>
        </div>          
        </div>
       
      </div>           
         </div>     
      </div>   
</div>    
</body>
</html>