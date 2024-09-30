<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <meta charset="UTF-8">
          <title>Sign Up Here..</title>
        
        <!-- CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="CSS/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style> 
            .banner-background{
                 clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 84%, 70% 97%, 36% 100%, 0 85%, 0 0);
           } 
        </style>
        
    </head>
    <body>
         
      <!-- NAvbar -->
      <%@include file="normal_navbar.jsp" %>
     
      <main class="primary-background p-5 banner-background" style="padding-bottom: 70pxc">
        <div class="container">
          <div class="row">
            <div class="col-md-4 offset-md-4">
               <div class="card">  
                  <div class="card-header primary-background text-white">
                  <span class="fa fa-user-plus fa-2x"></span>
                     <p>Sign Up here...</p>
                  </div>    
                  <div class="card-body">
                     <form action ="user/userReg.jsp" method="post">
                      
                        <div class="form-group">
                             <label class="form-label fw-bold">User Name</label>
                            <input type="text" class="form-control" name="uname" placeholder="Enter User Name" required>
                             
                         </div>
                         
                        <div class="form-group">
                             <label class="form-label fw-bold">Password</label>
                             <input name="password" type="password" class="form-control" placeholder="Password" required>
                             
                         </div>
                         <div class="form-group">
                             <label class="form-label fw-bold">Name</label>
                             <input type="text" class="form-control" name="name" placeholder="Enter Name" required>
                             
                         </div>
                        <div class="form-group">
                             <label class="form-label fw-bold">Email</label>
                             <input name="email" type="email" class="form-control"  placeholder="Enter email" required>
                         </div>
                        
                         <div class="form-group">
                           <label class="form-label fw-bold">DOB</label>
                           <input type="date" class="form-control" name="dob" required>
                         </div> 
                              
                         </div>
                         <div class="form-group">
                           <label class="form-label fw-bold">City</label>
                           <input type="text" class="form-control" name="city" required>
                         </div> <br>                                                                                   
                             <button type="submit" class="btn btn-primary">Sign Up</button>
                     </form>
                       <br>
                  <p class="fw-bold"> Have an Account? Kindly <a href="login.jsp">Login Here</a> </p>
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