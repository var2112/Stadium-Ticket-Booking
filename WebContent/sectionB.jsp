<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/section.css">
<title>Section B</title>
<body style=" background: #fdf298;
    background: -webkit-linear-gradient(to right, #fdf298, #7dbf9b);
    background: linear-gradient(to right, #fdf298, #7dbf9b);
    min-height: 100vh;
    ">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="position:relative; top:0px;" >
        &nbsp&nbsp<img src="img/football.png"> &nbsp&nbsp
        <a class="navbar-brand" href="#">FreeKick</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="home.html">Home</a>
            </li>
            
          </ul>
           
          
        </div>
      </nav>
      
      
      
      <div class="container d-lg-flex">
    <div class="box-1 bg-light user">
        <br>
        <br>
        <div class="box-inner-1 pb-3 mb-3 ">
            <div class="d-flex justify-content-between mb-3 userdetails">
                <p class="fw-bold">Section B Checkout</p>
                <p class="fw-lighter"><span class="fas fa-dollar-sign"></span>Seats: 201-252</p>
            </div>
            <div id="my" class="carousel slide carousel-fade img-details" data-bs-ride="carousel" data-bs-interval="2000">
                <div class="carousel-indicators"> <button type="button" data-bs-target="#my" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button> <button type="button" data-bs-target="#my" data-bs-slide-to="1" aria-label="Slide 2"></button>  </div>
                <div class="carousel-inner">
                    <div class="carousel-item active"> <img src="layoutcar.png"  class="d-block w-100"> </div>
                    <div class="carousel-item"> <img src="section_b.png" class="d-block w-100 h-100"> </div>
                    
                </div> <button class="carousel-control-prev" type="button" data-bs-target="#my" data-bs-slide="prev">
                    <div class="icon"> <span class="fas fa-arrow-left"></span> </div> <span class="visually-hidden">Previous</span>
                </button> <button class="carousel-control-next" type="button" data-bs-target="#my" data-bs-slide="next">
                    <div class="icon"> <span class="fas fa-arrow-right"></span> </div> <span class="visually-hidden">Next</span>
                </button>
            </div>
            <p class="dis info my-3">Our safe payment methods ensure that your data is not saved to our databases immediately -- once you confirm your payments, only then will we save your data. </p>
            <div class="radiobtn"> <input type="radio" name="box" id="one" > <input type="radio" name="box" id="two"> <input type="radio" name="box" id="three"> <label for="one" class="box py-2 first">
                    <div class="d-flex align-items-start"> <span class="circle"></span>
                        <div class="course">
                       <a href="sectionA.jsp">  <div class="d-flex align-items-center justify-content-between mb-2"> <span class="fw-bold"> Section A </span> <span class="fas fa-dollar-sign">Rs</span> </div> <span>5000</span></a> 
                        </div>
                    </div>
                </label> <label for="two" class="box py-2 second">
                    <div class="d-flex"> <span class="circle"></span>
                        <div class="course">
                           <a href="sectionB.jsp">  <div class="d-flex align-items-center justify-content-between mb-2"> <span class="fw-bold"> Section B </span> <span class="fas fa-dollar-sign">Rs</span> </div> <span>8000</span></a>
                        </div>
                    </div>
                </label> <label for="three" class="box py-2 third">
                    <div class="d-flex"> <span class="circle"></span>
                        <div class="course">
                            <a href="sectionC.jsp">  <div class="d-flex align-items-center justify-content-between mb-2"> <span class="fw-bold"> Section C </span> <span class="fas fa-dollar-sign">Rs</span> </div> <span>10000</span></a>
                        </div>
                    </div>
                </label> </div>
        </div>
    </div>
    <div class="box-2">
        <div class="box-inner-2">
            <div>
                <p class="fw-bold">Payment Details</p>
                <p class="dis mb-3">Complete your purchase by providing your payment details</p>
            </div>
            <form action="secB.jsp" method="post">
                <div class="my-3 cardname">
                    <p class="dis fw-bold mb-2">Name</p> <input class="form-control" name="name" type="text">
                </div>
                <div class="mb-3">
                    <p class="dis fw-bold mb-2">Email address</p> <input class="form-control" name="email" type="email" ">
                </div>
                <div>
                    <p class="dis fw-bold mb-2">Card details</p>
                    <div class="d-flex align-items-center justify-content-between card-atm border rounded">
                        <div class="fab fa-cc-visa ps-3"></div> <input type="text" class="form-control" placeholder="Card Details">
                        <div class="d-flex w-50"> <input type="text" class="form-control px-0" placeholder="MM/YY"> <input type="password" maxlength=3 class="form-control px-0" placeholder="CVV"> </div>
                    </div>
                    
                    <div class="address">
                        <p class="dis fw-bold mb-3">Billing address</p> 
                        <div class="d-flex"> <input class="form-control zip" type="text" placeholder="ZIP" name="zip"> <input class="form-control state" type="text" placeholder="State" name="state"> </div>
                        <div class=" my-3">
                            <p class="dis fw-bold mb-2">Seat Number</p>
                            <div class="inputWithcheck"> <input class="form-control" type="text" name="seatNum" > <span class="fas fa-check"></span> </div>
                        </div>
                        <div class="d-flex flex-column dis">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <p>Subtotal</p>
                                <p><span class="fas fa-dollar-sign"></span>8000.00</p>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <p>GST<span>(18%)</span></p>
                                <p><span class="fas fa-dollar-sign"></span>1,440</p>
                            </div>
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <p class="fw-bold">Total</p>
                                <p class="fw-bold"><span class="fas fa-dollar-sign"></span>9,440.00</p>
                            </div>
                            <input type="submit" class="btn btn-primary mt-2" style=" color:black; background: #fdf298;
    background: -webkit-linear-gradient(to right, #fdf298, #7dbf9b);
    background: linear-gradient(to right, #fdf298, #7dbf9b);
    min-height: 10vh;
    " value="Pay Rs. 9,440" >
                            
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
      
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>