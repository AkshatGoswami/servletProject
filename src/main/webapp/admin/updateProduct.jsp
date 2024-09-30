<%@page import="com.net.product.productDAO.ProductDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
</head>
<body>
	<%@ include file="adminHeader.jsp" %>
	<%
	String Str = request.getParameter("pid");
	 int id=0;
	try {
	     id = Integer.parseInt(Str);
	} catch (NumberFormatException e) {
   		System.out.println("Invalid input: " + Str);
	}
	System.out.println(id);
    ResultSet rs = ProductDAO.ViewProduct(id);
    
     rs.next();
     int pid = rs.getInt(1);
    String cname = rs.getString(2);
    String name = rs.getString(3);
    String price = rs.getString(4);
    String quantity =rs.getString(5);
    String type =rs.getString(6);
  	 out.println(pid);
    %>
  
    <div class="container">

   <h1 class="text-center">Products</h1>
  
    <div class="container w-75 bg-warning pb-3">  
    
     
   <form action ="proupdate.jsp" method="post">   
     <input type="hidden" name="pid" value="<%=pid%>">
   <div class="mb-3">
     <label class="form-label">Company Name</label>
     <input type="text" class="form-control" name="cname" value=<%= cname %>>
   </div> 
   <div class="mb-3">
     <label class="form-label">Name</label>
     <input type="text" class="form-control" name="name" value=<%= name %>>
   </div> 
   <div class="mb-3">
     <label class="form-label">Price</label>
     <input type="number" class="form-control" name="price" value=<%= price %>>
   </div>
   <div class="mb-3">
     <label class="form-label">Quantity</label>
     <input type="number" class="form-control" name="quantity" value=<%= quantity %>>
   </div>
   <div class="mb-3">
     <label class="form-label">Type</label>
     <input type="text" class="form-control" name="type" value=<%= type %>>
   </div>    
	<button class="button" >Update </button>
</form>
</div>
   </div>
   
   
</body>
</html>