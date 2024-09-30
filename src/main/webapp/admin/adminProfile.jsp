<%@page import="com.net.admin.adminDAO.AdminDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Panel</title>

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
	<%@include file="adminHeader.jsp"%>
	
	<%
    String aname = (String)session.getAttribute("adminname");
    //String aname = "Akshat";
	System.out.println(aname);
    ResultSet rs = AdminDAO.ViewAdmin(aname);
    
     rs.next();
     String email = rs.getString(1);
    String name = rs.getString(2);
    String password = rs.getString(3);
    String uname =rs.getString(4);
    int aid =rs.getInt(5);
  	 out.println(aid);
    %>
  
    <div class="container">

   <h1 class="text-center">Admin Profile</h1>
  
    <div class="container w-75 bg-warning pb-3">  
    
     
   <form action ="adminupdate.jsp" method="post">   
     <input type="hidden" name="aid" value="<%=aid%>">
   <div class="mb-3">
     <label class="form-label">Name</label>
     <input type="text" class="form-control" name="name" value=<%= name %>>
   </div> 
   <div class="mb-3">
     <label class="form-label">Email</label>
     <input type="text" class="form-control" name="email" value=<%= email %>>
   </div>
   <div class="mb-3">
     <label class="form-label">Password</label>
     <input type="text" class="form-control" name="password" value=<%= password %>>
   </div>
   <div class="mb-3">
     <label class="form-label">Uname</label>
     <input type="text" class="form-control" name="address" value=<%= uname %>>
   </div>    
	<button class="button" >Update </button>
</form>
</div>
   </div>
   
   
   <!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<script src="JS/myjs.js" type="text/javascript"></script> 
   
</body>
</html>