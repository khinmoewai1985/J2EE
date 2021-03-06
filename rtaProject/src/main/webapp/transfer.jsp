<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Transfer</title>
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

              <li class="nav-item active">
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

     <div class="container">         
            <form>
            <h1 class="display-4">Transfer</h1>
            <div class="row jumbotron">

                 <div class="photo col-sm-12 form-group">                
                    <div class="image-preview" id="imagePreview">
                        <img src="" alt="Image Preview" class="image-preview__image">
                    <span class="image-preview__default-text">Image </span>
                    </div> 
                    <input type="file" name="inpFile" id="inpFile" class="file">
                </div>

           <div class="col-sm-6 form-group">
                <label for="name-lic">LIC_NO</label>
                <input type="text" class="form-control" name="lic" id="lic" required>
            </div>
            <div class="col-sm-6 form-group">
                <label for="name-lic">???????????????????????????????????????</label>
                <input type="text" class="form-control" name="lic" id="lic" required>
            </div>

            <div class="col-sm-6 form-group">
                <label for="nrc">NRC_NO</label>
                <input type="text" class="form-control" name="nrc" id="nrc" required>
            </div>
            <div class="col-sm-6 form-group">
                <label for="nrc">?????????????????????????????????????????????</label>
                <input type="text" class="form-control" name="nrc" id="nrc" required>
            </div>

            <div class="col-sm-6 form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" name="name" id="name">
            </div>
            <div class="col-sm-6 form-group">
                <label for="name">????????????</label>
                <input type="text" class="form-control" name="name" id="name">
            </div>
            <div class="col-sm-6 form-group">
                <label for="fname">F_Name</label>
                <input type="address" class="form-control" name="fname" id="fname">
            </div>
            <div class="col-sm-6 form-group">
                <label for="fname">??????????????????</label>
                <input type="address" class="form-control" name="fname" id="fname">
            </div>
            <div class="col-sm-6 form-group">
                <label for="address">Address</label>
                <input type="address" class="form-control" name="address" id="address">
            </div>
            <div class="col-sm-6 form-group">
                <label for="address">??????????????????</label>
                <input type="address" class="form-control" name="address" id="address">
            </div>
            <div class="col-sm-6 form-group">
                <label for="dob">Date of Birth</label>
                <input type="dob" class="form-control" name="dob" id="dob">
            </div>
            <div class="col-sm-6 form-group">
                <label for="dob">????????????????????????????????????</label>
                <input type="dob" class="form-control" name="dob" id="dob">
            </div>
            <div class="col-sm-6 form-group">
                <label for="blood">Blood</label>
              <select name="blood" id="blood" class="form-control">
                <option value="ab">AB</option>
                <option value="a">A</option>
                <option value="b">B</option>
                <option value="o">O</option>
              </select>
            </div>
            <div class="col-sm-6 form-group">
                <label for="blood">??????????????????????????????????????????</label>
              <select name="blood" id="blood" class="form-control">
                <option value="ab">????????????</option>
                <option value="a">??????</option>
                <option value="b">??????</option>
                <option value="o">?????????</option>
              </select>
            </div>
            <div class="col-sm-6 form-group">
                <label for="Gender">Gender</label>
                <select class="form-control custom-select browser-default">
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                </select>
            </div>            
            <div class="col-sm-6 form-group">
                <label for="year">Year</label>
                <input type="text" class="form-control" name="year" id="year">
            </div>
            <div class="col-sm-6 form-group">
                <label for="town">TOWN</label>
                <input type="text" name="town" class="form-control" id="town">
            </div>                          
             <div class="col-sm-6 form-group">
                <label for="to">To</label>
                <input type="text" name="to" class="form-control" id="to">
            </div>
            <div class="col-sm-6 form-group">
                <label for="card">Card_No</label>
                <input type="text" name="card" class="form-control" id="card">
            </div>
            <div class="col-sm-6 form-group">
                <label for="vou">Vouncher_No</label>
                <input type="text" name="vou" class="form-control" id="vou">
            </div>
            <div class="col-sm-6 form-group">
                <label for="date">Date</label>
                <input type="date" name="date" class="form-control" id="date">
            </div>
            <div class="col-sm-6 form-group">
                <label for="vdate">Valid_Date</label>
                <input type="date" name="vdate" class="form-control" id="vdate">
            </div>

            <div class="col-sm-12">
                <input type="checkbox" class="form-check d-inline" id="chb" required><label for="chb" class="form-check-label">&nbsp;I accept all terms and conditions.
                </label>
            </div>
            <div class="col-sm-12 form-group mb-0">
               <button type="submit" class="btn btn-success btn-block" id="save">Save</button>
            </div>
            
        </div>
        </form>
    </div>
           
         </div>     
      </div>   
</div>

<script>
  var form = document.querySelector('.needs-validation');

  form.addEventListener('submit', function(event) {
    if (form.checkValidity() === false) {
        event.preventDefault();
        event.stopPropagation();
    }
    form.classList.add('was-validated');
  });  
</script>

<script> 
    const inpFile = document.getElementById('inpFile');
    const previewContainer = document.getElementById("imagePreview");
    const previewImage = previewContainer.querySelector(".image-preview__image");
    const previewDefaultText = previewContainer.querySelector(".image-preview__default-text");

    inpFile.addEventListener("change", function() {
        const file = this.files[0];

       if (file) {

        const reader = new FileReader();

        previewDefaultText.style.display = "none";
        previewImage.style.display = "block";

        reader.addEventListener("load", function() {
            console.log(this);
            previewImage.setAttribute("src", this.result);

        });
        reader.readAsDataURL(file);
       }
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