<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminLogin</title>
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
   <%@include file="adminHeader.jsp" %>

      <!-- NAvbar -->
      
     
      <main class="d-flex align-items-center primary-background banner-background" style=" height:70vh">
        <div class="container">
          <div class="row">
            <div class="col-md-4 offset-md-4">
               <div class="card">  
                  <div class="card-header primary-background text-white">
                  <span class="fa fa-user-circle fa-3x"></span>
                     <p>Login Here..</p>
                  </div>    
                  <div class="card-body">
                      <form action="log.jsp" method="POST">
                        <div class="form-group">
                             <label for="exampleInputEmail1">Email address</label>
                             <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                             <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                         </div>
                         <div class="form-group">
                              <label for="exampleInputPassword1">Password</label>
                              <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                         </div>
                         <div class="form-check">
                             <input type="checkbox" class="form-check-input" id="exampleCheck1">
                             <label class="form-check-label" for="exampleCheck1">Check me out</label>
                        </div>
                             <button type="submit" class="btn btn-primary">Sign In</button>
                      </form>
                   <p class="fw-bold text-center"> Not Register Yet? Kindly <a href="register_page.jsp">Register Here</a> </p>
                  </div>  
               </div>
            </div>
          </div>
        
        </div>
      </main>
  
  
  
 <!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script src="JS/myjs.js" type="text/javascript"></script> 
</body>
</html>