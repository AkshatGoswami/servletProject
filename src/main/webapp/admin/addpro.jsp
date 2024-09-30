<%@page import="com.net.product.productDAO.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddProduct</title>
</head>
<body>
   <jsp:useBean id = "obj" class="com.net.product.productBean.ProductBean"></jsp:useBean>
	<jsp:setProperty property="*" name="obj"/>
	
	<%
	 int status = ProductDAO.AddProduct(obj);
	 if(status == 1){
	
		out.print("<script> alert('Product added sucessfully ....'); "
		+" window.open('viewProduct.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('Failed to add Product ....'); "
		+" window.open('viewProduct.jsp','_self')</script>");	}
	%>

</body>
</html>