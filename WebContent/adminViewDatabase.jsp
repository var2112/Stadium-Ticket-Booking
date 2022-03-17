<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/fontAwesome.css">
        <link rel="stylesheet" href="css/hero-slider.css">
        <link rel="stylesheet" href="css/owl-carousel.css">
        <link rel="stylesheet" href="css/datepicker.css">
        <link rel="stylesheet" href="css/tooplate-style.css">
        <!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
<title>Database</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" >
  <img src="img/football.png"> &nbsp&nbsp
  <a class="navbar-brand" href="#">FreeKick</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item ">
        <a class="nav-link" href="home.html">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="booking.html">Bookings</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contactUs.html">Contact Us</a>
      </li>
      </ul>
      <ul class="navbar-nav ml-auto">
      <li class="nav-item ">
      <a class="nav-link" href="admin.jsp">Admin</a>
      </li>
      </ul>
      
      
     
    
    
   
  </div>
</nav>

<form action="adminViewDatabase.jsp" method="post">
<center>
<div class="jumbotron jumbotron-fluid ">
  <div class="container">
    <h1 class="display-4">Ticket Sale Statistics</h1>
    <p class="lead">This is a concept of statistics of ticket that were sold.</p>
  </div>
 <label>Enter Section : </label><input type="text" name="section"> <input type="submit" value="View">
  
</div>
</center>
</form>


<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Zip Code</th>
      <th scope="col">State</th>
      <th scope="col">Seat Number</th>
      <th scope="col">Time</th>
    </tr>
  </thead>
  <tbody>
  
  <% 
  

  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/StadiumBooking?characterEncoding=latin1", "root", "root");
  
  		String section = request.getParameter("section");
  		
		  
		  if("A".equals(section)){
			  Statement st = con.createStatement();
	            ResultSet rs = st.executeQuery("select * from SectionA");
	            
	            while(rs.next()){

	                out.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) 
	                + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td> </tr>");
	            }

	            out.println("</tbody></table>");
	        

	           

	        }else if("B".equals(section)) {
	        	Statement st = con.createStatement();
	            ResultSet rs = st.executeQuery("select * from SectionB");
	            
	            while(rs.next()){

	                out.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) 
	                + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td> </tr>");
	            }

	            out.println("</tbody></table>");
	           
	        	
	        	
	        }else if("C".equals(section)){
	        	Statement st = con.createStatement();
	            ResultSet rs = st.executeQuery("select * from SectionC");
	            
	            while(rs.next()){

	                out.println("<tr><td>" + rs.getString(1) + "</td><td>" + rs.getString(2) 
	                + "</td><td>" + rs.getString(3) + "</td><td>" + rs.getString(4) + "</td><td>" + rs.getString(5) + "</td><td>" + rs.getString(6) + "</td> </tr>");
	            }

	            out.println("</tbody></table>");
	         
	        	
	        }
			  
		  
  %>
 <div style="position: relative; top: 300px; background-color: rgb(93,140,82);">
  <footer class="page-footer font-small background-color:#4285f4; darken-3">

    <!-- Footer Elements -->
    <div class="container">
  
      <!-- Grid row-->
      <div class="row">
  
        <!-- Grid column -->
        <div class="col-md-12 py-5">
          <div class="mb-5 flex-center">
  
            <!-- Facebook -->
            <a class="fb-ic">
              <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
            </a>
            <!-- Twitter -->
            <a class="tw-ic">
              <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
            </a>
            <!-- Google +-->
            <a class="gplus-ic">
              <i class="fab fa-google-plus-g fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
            </a>
            <!--Linkedin -->
            <a class="li-ic">
              <i class="fab fa-linkedin-in fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
            </a>
            <!--Instagram-->
            <a class="ins-ic" href="https://www.instagram.com/rheaa.menon/">
              <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
            </a>
            <!--Pinterest-->
            <a class="pin-ic">
              <i class="fab fa-pinterest fa-lg white-text fa-2x"> </i>
            </a>
          </div>
        </div>
        <!-- Grid column -->
  
      </div>
      <!-- Grid row-->
  
    </div>
    <!-- Footer Elements -->
  
    <!-- Copyright -->
    <div class="footer-copyright text-center py-3" style="background-color: rgb(38,64,32); color:white;">©Copyright Group 3:
      
    </div>
    
  
  </footer>
</div>
    
 
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>

