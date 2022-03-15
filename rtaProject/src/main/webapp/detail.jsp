<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.* "%>
<%@ page import="com.org.example.MySQLAccess" %>
<%@ page import="com.org.example.Staffdetail" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
    
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detail</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <link href="css/staff.css" rel="stylesheet">
     <link href="css/detail.css" rel="stylesheet">
 
   </head>
  <body>

          <div class="card" action="controller" method="post">
          
          <div class="card-header">
            <h2>Personal Profile</h2>           
          </div>
                    
           <div class="col-md-4" wrappers>
          <div class="example">
          
           <input type="text" class="form-control" name="sid" placeholder="Search here...."/>          		
            <button type="submit"><i class="fas fa-search"></i></button>    
         </div>
          </div>
          
          <div class="card-body">        
           <table class="table table-dark table-hover table-bordered-bottom">       
            <thead>
            <tr>
            
              <th scope="col">ID</th>
              <th scope="col">အမည်</th>
             </tr>
             
             <tr> 
              <th scope="col">ရာထူး</th>
              <th scope="col">မှတ်ပုံတင်အမှတ်</th>
              </tr>
              
              <tr>
              <th scope="col">အဘအမည်</th>
              <th scope="col">ဘွဲ့</th>
              </tr>
              
              <tr>
              <th scope="col">သက်ဆိုင်သူအမည်</th>
              <th scope="col">သက်ဆိုင်သူအလုပ်အကိုင်</th>
              </tr>
              
              <tr>
               <th scope="col">သားသမီးအမည်</th>
              <th scope="col">နေရပ်လိပ်စာ</th>       
              </tr>     
              
             
           </thead>
 
          <tbody>
                   
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

</html>