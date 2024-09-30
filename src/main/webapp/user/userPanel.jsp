<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Panel</title>
<%@include file="../component/allcss.jsp"%>

 <!-- CSS -->
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
     <link href="CSS2/mystyle.css" rel="stylesheet" type="text/css"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <style> 
         .banner-background{
               clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 62% 86%, 36% 100%, 0 100%, 0 0);               
         }
         .primary-background{
	                 background-color:#039BE5;
	     } 
     </style>
</head>
<body>
	<%@include file="userNavbar.jsp"%>
	
	<!-- Banner -->

<div class="container-fluid p-0 m-0">
   <div class="jumbotron primary-background text-white banner-background">
     <h3 class="display-3">Welcome To VehicleAccesories Store</h3>
      <p>Vehicle Accessories Portal  is an E-commerce Website which deals with the Vehicles Accessories such as Steering 
      Wheel, Alloy Wheels and much more.
     </p>
   

   <br>
   </div>
</div>

<br>

<!-- //cards -->
   <div class="container">
     <div class="row">
        <div class="col-md-4">
             <div class="card">
            <img class="card-img-top" src="../images/img2.jpg" style="height:300px;width:355px;" alt="SteeringWheel">
                 <div class="card-body">
                      <h5 class="card-title">Steering Wheel</h5>
                       <h6>RS. 2000</h6>
                      <p class="card-text">Black Leather Steering Wheel for Car</p>
                      <a href="#" class="btn btn-primary">Buy Now</a>
                      <a href="#" class="btn btn-primary">Add To Cart</a>
                 </div>
               </div>
        </div>
        
      <div class="col-md-4">
          <div class="card">
           <img class="card-img-top" src="../images/img1.jpg" style="height:300px; width: 355px;" alt="SteerringWheel"> 
             <div class="card-body">
                 <h5 class="card-title">Steering Wheel</h5>
                 <h6>RS. 2000</h6>    
                 <p class="card-text">Shiny Glossy Steering Wheel for Car</p>
                 <a href="#" class="btn btn-primary">Buy Now</a>
                 <a href="#" class="btn btn-primary">Add To Cart</a>
              </div>
             </div>
       </div>
        <br>
      <div class="col-md-4">
          <div class="card">
        <img class="card-img-top" src="../images/img3.jpg" style="height:300px; width: 355px;" alt="Card image cap">
              <div class="card-body">
                  <h5 class="card-title">Steering Wheel</h5>
                   <h6>RS. 2000</h6>
                  <p class="card-text">Army Leather Steering Wheel for Car</p>
                  <a href="#" class="btn btn-primary">Buy Now</a>
                  <a href="#" class="btn btn-primary">Add to cart</a>
              </div>
          </div>
      </div>
    </div>
     
    <div class="row">
        <div class="col-md-4">
           <div class="card">
             <img class="card-img-top" src="../images/img2.1.jpg" style="height:300px; width: 355px;" alt="Card image cap">  
              <div class="card-body">
                 <h5 class="card-title">Alloy Wheel</h5>
                 <h6>RS. 40,000</h6>
                 <p class="card-text">Alloy Wheel for Car Size 22 inch</p>
                 <a href="#" class="btn btn-primary">Buy Now</a>
                 <a href="#" class="btn btn-primary">Add To Cart</a>
              </div>
             </div>
          </div>
        
        <div class="col-md-4">
            <div class="card">
            <img class="card-img-top" src="../images/img2.2.jpg" style="height:300px; width: 355px;" alt="Card image cap">  
                <div class="card-body">
                    <h5 class="card-title">Alloy Wheel</h5>
                    <h6>RS. 40,000</h6>
                     <p class="card-text">Alloy Wheel for Car Size 22 inch</p>
                     <a href="#" class="btn btn-primary">Buy Now</a>
                     <a href="#" class="btn btn-primary">Add To Card</a>
                </div>
         </div>
    </div>
        
       <div class="col-md-4">
           <div class="card">
           <img class="card-img-top" src="../images/img2.3.jpg" style="height:300px; width: 355px;" alt="Card image cap">  
              <div class="card-body">
                  <h5 class="card-title">Alloy Wheel</h5>
                  <h6>RS. 40,000</h6>
                  <p class="card-text">Alloy Wheel for Car Size 22 inch</p>
                  <a href="#" class="btn btn-primary">Buy Now</a>
                  <a href="#" class="btn btn-primary">Add To Cart</a>
              </div>
            </div>
       </div>
    </div>
  </div>
<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script src="JS/myjs.js" type="text/javascript"></script> 
</body>
</html>