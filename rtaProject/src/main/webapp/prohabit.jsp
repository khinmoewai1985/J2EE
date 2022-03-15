<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Prohabit</title>
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">-->
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
              <li class="nav-item active">
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
            <h1 class="display-4">Prohabit</h1>
            <div class=" jumbotron">

            <fieldset>   
            <legend style="font-weight: bold;">PERSONAL INFORMATION:</legend>

            <table cellspacing="0" cellpadding="15" width="100%">  
            <tbody>
                <tr>
                    <td>
                        <label>NRC_No:</label>
                    </td>
                    <td>
                            <input type="text" name="nrc">
                     </td>
                </tr>
                <tr>
                    <td>
                        <label>Name:</label>
                    </td>
                    <td>
                            <input type="text" name="name">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>LIC_NO:</label>
                    </td>
                    <td>
                            <input type="text" name="lic">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>F_Name:</label>
                    </td>
                    <td>
                            <input type="text" name="fname">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Date of Birth:</label>
                    </td>
                    <td>
                            <input type="date" name="dob">
                    </td>
                </tr>

        </tbody>
    </table>
</fieldset>

<fieldset>   
    <legend style="font-weight: bold;">OFFICE INFORMATION:</legend>

<table cellspacing="0" cellpadding="15" width="100%">  
        <tbody>
                <tr>
                    <td>
                        <label>စာထွက်သည့်ရုံး</label>
                    </td>
                    <td>
                            <input type="text" name="office">
                     </td>
                </tr>
                <tr>
                    <td>
                        <label>စာအမှတ်/ရက်စွဲ</label>
                    </td>
                    <td>
                            <input type="text" name="letter">
                     </td>
                </tr>
                <tr>
                    <td>
                        <label>Duration (Days)</label>
                    </td>
                    <td>
                        <input type="text width=10%"name="date">&nbsp;<label>from:</label><input type="date" name="dur">&nbsp; <label>to:</label><input type="date" name="dur1">
                     </td>
                </tr>
                <tr>
                    <td>
                        <label>Decription:</label>
                    </td>
                    <td>
                            <input type="text" name="dec">
                     </td>
                </tr>
                <tr>
                    <td>
                        <label>Source Department:</label>
                    </td>
                    <td>
                            <input type="text" name="source">
                     </td>
                </tr>

        </tbody>
    </table>
</fieldset>

<fieldset>
<table cellspacing="0" cellpadding="15" width="100%">  
    <tr>
        <td>
                <input type="checkbox" class="form-check d-inline" id="chb" required><label for="chb" class="form-check-label">&nbsp;Solved
                </label>            
        </td>
        <td> <label>Solved Date:</label> <input type="date" name="solve"></td>
        <td><button type="submit" class="btn btn-success btn-block" id="save">Save</button></td>
    </tr>
</table>
</fieldset>

    </div>
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