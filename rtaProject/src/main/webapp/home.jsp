<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <link href="css/style.css" rel="stylesheet">
  </head>
  <body>
    <!--Navigation-->
    <nav class="navbar navbar-expand-md navbar-light bg-light">
      <div class="container-fluid">
          <a class="navbar-band" href="home.html"><img src="img/logo.jpg"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" 
          data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link" href="home.jsp">ပင်မစာမျက်နှာ</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="road.jsp">လမ်းညွှန်း</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="activity.jsp">လှုပ်ရှားမှု</a>
              </li>
             </ul>
       </div>
      </div> 
    </nav>
    
	<%
		String str="";
		if((String)request.getSession().getAttribute("login_error")!=null)
			{
				str=(String)request.getSession().getAttribute("login_error");
			}
		if(str.length()>2){
	%>
	<span style="color:red"><%=str %></span>
	
	<% 
		request.getSession().setAttribute("login_error","");
	}
	
		else {
				str="";
	%>
	<span style="color:black"></span>
	
	<%} %>

    <!--Modal Box -->
     <div class="modal" id="demoModal">
     
        <div class="modal-dialog">
          <form class="modal-content" action="controller" method="post">            
             <div class="modal-header border-bottom-0">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
              </button>
             </div>

             <div class="modal-body">
                <div class="form-title text-center">
                  <div class="modal-body-head">
                    <h4>RTAD</h4>
                  </div>
                 </div>
                <div class="d-flex flex-column">
                                      
                    <div class="form-group">
                        <label for="uname">Username</label>
                        <input type="text" name="uname" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="psw">Password</label>
                        <input type="password" name="psw" class="form-control">
                    </div>

                    <div class="form-group">
                        <input type="checkbox"> <small> Remember your password </small>
                    </div>
                     <button type="submit" class="btn btn-outline-primary btn-block" id="login">Login</button>
                  </div>   
             </div> 
           </form>
        </div>
      </div>

    <!--Image Slider-->
    <div class="carousel slide" data-ride="carousel">
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="img/background.png">
          <div class="carousel-caption">
            <h1 class="display-2">ပြည်ထောင်စုသမ္မတမြန်မာနိုင်ငံတော်</h1>
           	<h2>ပို့ဆောင်ရေးနှင့်ဆက်သွယ်ရေးဝန်ကြီးဌာန</h2>
            <h3>ကုန်းလမ်းပို့ဆောင်ရေးညွှန်ကြားမှုဦးစီးဌာန</h3>
           <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#demoModal">Get Started</button>
          </div>
        </div>
      </div>
    </div>

    <!-- Jumbotron-->
    <div class="container-fluid">
    <div class="row jumbotron">
      <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9 col-xl-10">
        <p class="lead">ဦးစီးဌာန၏အဓိကရည်မှန်းချက်တာဝန်မှာ ယာဉ်အန္တရာယ် လမ်းအန္တရာယ် "Road Safety" ဖြစ်ပါသည်။.</p>
      </div>
      <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-2">
        <a href="#"><button type="button" class="btn btn-outline-secondary btn-lg">Road Safety</button></a>
      </div>
    </div>  
    </div>
    <hr class="light">   
    
<!-- Connect -->
<div class="container-fluid padding">
<div class="row text-center padding">
  <div class="col-12">
    <h2>Connect</h2>
   </div>
   <div class="col-12 social padding">
     <a href="https://www.facebook.com/system22.net/" target="_blank"><i class="fab fa-facebook"></i></a>
     <a href="#"><i class="fab fa-twitter"></i></a>
     <a href="#"><i class="fab fa-google-plus-g"></i></a>
     <a href="#"><i class="fab fa-instagram"></i></a>
     <a href="#"><i class="fab fa-youtube"></i></a>

   </div>
</div>
</div>

<!--Footer -->
<footer>
<div class="container-fluid padding">
  <div class="image">
    <img src="img/photo.jpg">
  </div>
<div class="row text-center">  
  <div class="col-md-4">
    <hr class="light">
    <h5>Nay Pyi Taw</h5>
    <p>Ph: 067 405 099</p>
    <p>Ph: 067 510 068</p>
  </div>

  <div class="col-md-4">
    <hr class="light">
    <h5>Yangon</h5>
    <p>Ph: 09 798 295 158</p>
    <p>Ph: 09 781 425 403</p>
  </div>

  <div class="col-md-4">
    <hr class="light">
    <h5>Mandalay</h5>
    <p>Ph: 02 406 6169</p>
  </div>
 </div>
</div>
</footer>   
</body>
</html>