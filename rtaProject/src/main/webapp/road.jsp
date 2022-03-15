<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Road Sign</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/activity.css" rel="stylesheet">

  </head>
  <body>
    <!--Navigation-->
    <nav class="navbar navbar-expand-md navbar-light bg-light">
      <div class="container-fluid">
          <a class="navbar-band" href="#"><img src="img/logo.jpg"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" 
          data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link" href="home.jsp">ပင်မစာမျက်နှာ</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="road.jsp">လမ်းညွှန်း</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="activity.jsp">လှုပ်ရှားမှု</a>
              </li>
             </ul>
       </div>
      </div> 
    </nav>

    <!-- Welcome Section -->
    <div class="container-fluid padding">
    <div class="row welcome text-center">
      <div class="col-12">
        <h1 class="display-4">လမ်းညွှန်းများ</h1>        
      </div>
      <hr>
      <div class="col-12">
        <p class="lead">လမ်းညွှန်းများသိရှိခြင်းအားဖြင့်အန္တရာယ်မှကြိုတင်ကာကွယ်နိုင်သည်။</p>
      </div>
    </div>  
    </div>

      <!-- Fixed Background -->
   
      <div class="fixed-wrap">
        <div id="fixed">
          <img src="img/computer.jpg">
      </div>
      </div>   

    <!--Emoji Section -->
    <div class="text-center">
    <button class="sign" data-toggle="collapse" data-target="#emoji">click for road sign </button>
    </div>
    <div id="emoji" class="collapse">
    <div class="container-fluid padding">
    <div class="row text-center">
      <div class="col-sm-6 col-md-3">
        <img class="jpg" src="img/rs1.jpg">
      </div>
      <div class="col-sm-6 col-md-3">
        <img class="jpg" src="img/rs2.jpg">
      </div>
      <div class="col-sm-6 col-md-3">
        <img class="jpg" src="img/rs3.jpg">
      </div>
      <div class="col-sm-6 col-md-3">
        <img class="jpg" src="img/rs4.jpg">
      </div>
          
    </div>  
    </div> 
    </div>
     <hr class="my-4">  
    
    <!-- Cards -->
    <div class="container-fluid padding">
    <div class="row padding">
      
      <div class="col-md-4">
        <div class="card">
          <img class="card-img-top" src="img/r.jpg">
          <div class="card-body">
            <h4 class="card-title">အနီရောင်သင်္ကေတ</h4>
            <p class="card-text">အနီရောင်သင်္ကေတဆိုသည်မှာ တားမြစ်ကန့်သတ်ထားခြင်းဖြစ်ပါသည်။</p>
            <a href="red_road.jsp" class="btn btn-outline-secondary">ပုံများလေ့လာရန်</a>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card">
          <img class="card-img-top" src="img/rs8.jpg">
          <div class="card-body">
            <h4 class="card-title">အဝါရောင်သင်္ကေတ</h4>
            <p class="card-text">အဝါရောင်သင်္ကေတဆိုသည်မှာ သတိပေးထားခြင်းဖြစ်ပါသည်။</p>
            <a href="yellow_road.jsp" class="btn btn-outline-secondary">ပုံများလေ့လာရန်</a>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card">
          <img class="card-img-top" src="img/b.jpg">
          <div class="card-body">
            <h4 class="card-title">အပြာရောင်သင်္ကေတ</h4>
            <p class="card-text">အပြာရောင်သင်္ကေတဆိုသည်မှာ လိုက်နာကျင့်သုံးရန်ဖြစ်ပါသည်။</p>
            <a href="blue_road.jsp" class="btn btn-outline-secondary">ပုံများလေ့လာရန်</a>
          </div>
        </div>
      </div>       
    </div> 
    </div>

    
<!-- Connect -->
<div class="container-fluid padding">
<div class="row text-center padding">
  <div class="col-12">
    <h2>Connect</h2>
   </div>
   <div class="col-12 social padding">
     <a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook"></i></a>
     <a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a>
     <a href="https://google.com/" target="_blank"><i class="fab fa-google-plus-g"></i></a>
     <a href="https://instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a>
     <a href="https://youtube.com/" target="_blank"><i class="fab fa-youtube"></i></a>
   </div>
</div>
</div>

<!--Footer -->
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