<%@page import="com.net.product.productBean.ProductBean"%>
<%@page import="com.net.product.productDAO.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% 
	int pid =Integer.parseInt(request.getParameter("pid"));
	//System.out.println("pid:"+obj.getName());
	int status = ProductDAO.DeleteMed( pid);
	
	System.out.println("status:"+status);
	if(status == 1){	
		out.print("<script> alert('Medicine Deleted Sucessfully....'); "
		+" window.open('viewProduct.jsp','_self')</script>");
	}
	else if(status==0){
		out.print("<script> alert('FAiled to Delete Medicine ....'); "
		+" window.open('viewProduct.jsp','_self')</script>");	}
	%>
</body>
</html>