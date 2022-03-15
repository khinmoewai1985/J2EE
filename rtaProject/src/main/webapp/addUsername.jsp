<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.* "%>
<%@ page import="com.org.example.MySQLAccess" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AddUsername</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <link href="css/staff.css" rel="stylesheet">
    <link href="css/reg.css" rel="stylesheet">
    
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
           </li>

            <hr style="light">
             <p>StaffList</p>
            <li>
            <a href="#staff_list" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Staff</a>
            <ul class="collapse lisst-unstyled" id="staff_list">
              <li class="nav-item">
                <a href="stafflist.jsp">Stafflist</a>
              </li>
              <li class="nav-item active">
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
              <li class="nav-item active">
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

<form action="addUsernameController.jsp" method="post">
      <div class="container">         
             
            <div class="row jumbotron">                                     
                        
            <div class="col-sm-12 form-group">
                <label for="nick_name">Username</label>
                <input type="text" class="form-control" name="nick_name" id="nick_name">
                 <span id="urname_error"></span>                            
            </div>                         
            
            <div class="col-sm-12 form-group">
                <label for="psw">Password</label>
                <input type="text" class="form-control" name="psw" id="psw">
            </div>

            <div class="col-sm-12 form-group">
                <label for="level">Level</label>
                <input type="text" class="form-control" name="level" id="level">
            </div>
            
            <div class="col-sm-12 form-group mb-0">
                <button class="btn btn-success btn-block">OK</button>
            </div>           
        </div>       
    </div>
</form> 
           
         </div>   
 
      </div>   
</div>

<script type="text/javascript">

	$(document).ready(function(){		
	
	  	$('#nick_name').focusout(function(){ 		  	
	  		
	  		var urname=document.getElementById("nick_name").value;
	  		
	  		alert(urname)
	  		
	  	$.ajax({
	  			
	  			url: "nickNameFilter.jsp",
	  			type: 'POST',
	  			data: {urname: urname},
	  			success: function(data)
	  			{
	  				var ur_name = data.trim();
	  					var error = document.getElementById("urname_error");
	  					if (ur_name=="ok")
	  					
	  					{
	  						document.getElementById("nick_name").value="";
	  						error.textContent = "***Username already exists***";
	  						error.style.color = "red";
	  						
	  					} else {
	  						
	  								error.textContent = "";
	  							}
	  			}
	  			
	  		}); 		
	  		
	  	});	
});
</script>

<script>
  $(document).ready(function(){
    $('#sidebarCollapse').on('click',function(){
    $('#sidebar').toggleClass('active');
    });
  });
</script>
    
</body>
</html>